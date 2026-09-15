"""
Ask TrackLynk router.
GET  /api/ask/init  — page load
POST /api/ask       — three-track question handling

Track 1 — Cache hit:
  exact question seen before → run pre-built fn or cached SQL → fresh data → answer

Track 2a — Cache miss + known component:
  Claude reads ontology → identifies known component → NO SQL generated
  → pre-built query fn fetches full data → transform → answer → cache metadata

Track 2b — Cache miss + unknown/dynamic component:
  Claude reads ontology → generates SQL → execute → generic Table/Chart → answer → cache
"""

import asyncio
import json
import asyncpg
from fastapi import APIRouter, Depends, HTTPException

from app.core.headers import PersonaContext, get_persona_context
from app.db.connection import get_pool
from app.db import queries, cache
from app.models.ask import AskRequest
from app.models.response import TrackLynkResponse
from app.services import llm_service
from app.utils.sql_executor import execute_sql, build_generic_table, is_safe_sql
from app.utils.transformers import transform
from app.utils.response_builder import build_response

router = APIRouter()


COMPONENT_QUERY_MAP = {
    "FlaggedJobsTable":             "get_flagged_jobs",
    "PermitDetailCard":             "get_permits",
    "MusterBoard":                  "get_muster",
    "PrioritizedActionCards":       "get_actions",
    "AssetHealthCard":              "get_assets",
    "HeadcountReconciliationPanel": "get_reconciliation",
    "SiteMapPanel":                 "get_site_geo",
}

# Maps component name to ordered list of {type, variant} dicts
# Order matches manifest inlineComponents order
# variant matches the prop passed to the React component
COMPONENT_VIZ_TYPES = {
    "FlaggedJobsTable":             [{"type": "SiteMapPanel",  "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": None}],
    "PermitDetailCard":             [{"type": "IndoorViewer",  "variant": None},      {"type": "PermitDetailCard", "variant": None}],
    "MusterBoard":                  [{"type": "MusterBoard",   "variant": None},      {"type": "MusterLocationMap","variant": None}],
    "PrioritizedActionCards":       [{"type": "PrioritizedActionCards", "variant": None}],
    "AssetHealthCard":              [{"type": "AssetHealthCard",        "variant": None}],
    "HeadcountReconciliationPanel": [{"type": "HeadcountReconciliationPanel", "variant": None}],
    "SiteMapPanel":                 [{"type": "SiteMapPanel",  "variant": "site"}],
}

# Maps viz_type to which query function provides its data
# When a component needs multiple visualizations, each viz type
# may need data from a different query function
VIZ_TYPE_QUERY = {
    "SiteMapPanel":                 "get_site_geo",
    "IndoorViewer":                 "get_indoor_geo",
    "MusterLocationMap":            "get_muster",
    # All others use the primary component query function
}

GREETING_QUESTION = "__greeting__"


# ── Page Init ─────────────────────────────────────────────────────────────────

@router.get(
    "/ask/init",
    response_model=TrackLynkResponse,
    summary="Page Init — Signals, KPIs and Greeting"
)
async def ask_init(
    ctx:  PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Fires once on Ask TrackLynk page load.
    Fetches signals + KPIs in parallel, LLM generates greeting.
    Greeting cached in query_cache as first conversation turn.
    """
    # Fetch signals and KPIs from DB in parallel
    signals, kpis = await asyncio.gather(
        queries.get_signals(pool, ctx),
        queries.get_kpis(pool, ctx),
    )

    # Read greeting from cache — no LLM call on init
    greeting_hash   = cache.make_question_hash(GREETING_QUESTION, ctx)
    cached_greeting = await cache.get_cached_query(pool, greeting_hash)
    ai_message      = cached_greeting.get("ai_message") if cached_greeting else None
    suggested_chips = (cached_greeting.get("suggested_chips") or []) if cached_greeting else []

    return build_response(
        ctx=ctx,
        raw_data={"signals": signals, "kpis": kpis},
        ai_message=ai_message,
        suggested_chips=suggested_chips,
        capability="Proactive Intelligence",
        confidence=93,
        data_sources_used=[
            "Permit-to-work system",
            "Gate access-control",
            "Location and tag data (vendor-agnostic)",
        ],
        freshness="under 1 minute ago",
    )


# ── Conversational Ask ────────────────────────────────────────────────────────

@router.post(
    "/ask",
    response_model=TrackLynkResponse,
    summary="Conversational Ask"
)
async def ask(
    request: AskRequest,
    ctx:     PersonaContext = Depends(get_persona_context),
    pool:    asyncpg.Pool   = Depends(get_pool),
):
    """
    Payload:
    {
      "question": "string",
      "conversation_history": [
        { "role": "ai",   "text": "..." },
        { "role": "user", "text": "..." }
      ]
    }
    """
    question      = request.question
    history       = [t.model_dump() for t in request.conversation_history]
    question_hash = cache.make_question_hash(question, ctx)

    # ── Track 1: Cache Hit ────────────────────────────────────────────────────
    cached = await cache.get_cached_query(pool, question_hash)

    if cached:
        component          = cached["component"]
        sql_query          = cached["sql_query"]
        viz_type           = cached["viz_type"]
        is_known_component = cached["is_known_component"]
        query_fn_name      = cached["query_fn"]
        cached_chips       = cached["suggested_chips"]
        capability         = cached["capability"]

        # Always fetch LIVE data — never cache the data itself
        is_known = bool(is_known_component) if is_known_component is not None else False
        has_fn   = bool(query_fn_name) if query_fn_name else False

        if is_known and has_fn:
            query_fn = getattr(queries, query_fn_name, None)
            raw_data = await query_fn(pool, ctx) if query_fn else {}
            # Build multiple visualizations — each spec has type + variant
            viz_specs = json.loads(viz_type) if viz_type and viz_type.startswith("[") else ([{"type": viz_type, "variant": None}] if viz_type else [])
            viz_list  = []
            for spec in viz_specs:
                # spec can be a dict {"type":..,"variant":..} or a plain string
                if isinstance(spec, dict):
                    vt      = spec["type"]
                    variant = spec.get("variant")
                else:
                    vt      = spec
                    variant = None
                secondary_fn_name = VIZ_TYPE_QUERY.get(vt)
                if secondary_fn_name and secondary_fn_name != query_fn_name:
                    secondary_fn = getattr(queries, secondary_fn_name, None)
                    vt_data = await secondary_fn(pool, ctx) if secondary_fn else {}
                else:
                    vt_data = raw_data
                viz_list.append({"type": vt, "variant": variant, "data": transform(vt, vt_data, variant=variant)})
            viz_data = viz_list if viz_list else None
        elif sql_query and is_safe_sql(sql_query):
            # Run SQL for AI context only
            rows     = await execute_sql(pool, sql_query)
            raw_data = rows

            # For visualization, always use the pre-built query function
            # to ensure complete data shape — fall back to component query map
            viz_specs = json.loads(viz_type) if viz_type and viz_type.startswith("[") else ([{"type": viz_type, "variant": None}] if viz_type else [])
            viz_data  = []
            for spec in viz_specs:
                vt      = spec["type"] if isinstance(spec, dict) else spec
                variant = spec.get("variant") if isinstance(spec, dict) else None
                # Look up the right query function for this viz type
                fn_name = VIZ_TYPE_QUERY.get(vt) or COMPONENT_QUERY_MAP.get(component)
                if fn_name:
                    fn      = getattr(queries, fn_name, None)
                    vt_data = await fn(pool, ctx) if fn else {}
                elif vt == "SiteMapPanel":
                    geo_fn  = getattr(queries, "get_site_geo", None)
                    vt_data = await geo_fn(pool, ctx) if geo_fn else {}
                else:
                    vt_data = {}
                viz_data.append({"type": vt, "variant": variant, "data": transform(vt, vt_data, variant=variant)})
            viz_data = viz_data if viz_data else None
        else:
            raw_data = {}
            viz_data = None

        # Use cached ai_message if available — only call LLM if not pre-seeded
        ai_message = cached.get("ai_message")
        if not ai_message:
            ai_message, _ = await llm_service.generate_answer(
                question=question,
                data=raw_data,
                component=component,
                persona=ctx.persona_id,
                conversation_history=history,
            )

        return build_response(
            ctx=ctx,
            visualization_list=viz_data if isinstance(viz_data, list) else None,
            ai_message=ai_message,
            suggested_chips=cached_chips,
            capability=capability,
            confidence=95,
            data_sources_used=["Live database query"],
            freshness="under 1 minute ago",
        )

    # ── Cache Miss: Claude reads ontology + resolves component ────────────────
    try:
        decision = await llm_service.resolve_component(
            question=question,
            conversation_history=history,
            client_id=ctx.client_id,
        )
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Component resolution failed: {str(e)}")

    component          = decision.get("component")
    is_known_component = decision.get("is_known_component", False)
    generated_sql      = decision.get("sql")  # only populated for Track 2b

    # ── Track 2a: Known Component — NO SQL generated ──────────────────────────
    if is_known_component and component in COMPONENT_QUERY_MAP:

        query_fn_name = COMPONENT_QUERY_MAP[component]
        viz_specs     = COMPONENT_VIZ_TYPES.get(component, [{"type": component, "variant": None}])
        viz_type_str  = json.dumps(viz_specs)
        query_fn      = getattr(queries, query_fn_name, None)
        raw_data      = await query_fn(pool, ctx) if query_fn else {}
        viz_list = []
        for spec in viz_specs:
            if isinstance(spec, dict):
                vt      = spec["type"]
                variant = spec.get("variant")
            else:
                vt      = spec
                variant = None
            secondary_fn_name = VIZ_TYPE_QUERY.get(vt)
            if secondary_fn_name and secondary_fn_name != query_fn_name:
                secondary_fn = getattr(queries, secondary_fn_name, None)
                vt_data = await secondary_fn(pool, ctx) if secondary_fn else {}
            else:
                vt_data = raw_data
            viz_list.append({"type": vt, "variant": variant, "data": transform(vt, vt_data, variant=variant)})
        viz_data = viz_list

        ai_message, suggested_chips = await llm_service.generate_answer(
            question=question,
            data=raw_data,
            component=component,
            persona=ctx.persona_id,
            conversation_history=history,
        )

        # Cache metadata — store viz_types as JSON array string
        await cache.write_cached_query(
            pool=pool,
            question_hash=question_hash,
            question=question,
            ctx=ctx,
            component=component,
            sql_query=None,
            viz_type=viz_type_str,
            is_known_component=True,
            query_fn=query_fn_name,
            suggested_chips=suggested_chips,
            capability="Anomaly Detection",
            ai_message=ai_message,
        )

        return build_response(
            ctx=ctx,
            visualization_list=viz_data,
            ai_message=ai_message,
            suggested_chips=suggested_chips,
            capability="Anomaly Detection",
            confidence=90,
            data_sources_used=["Permit-to-work system", "Location and tag data"],
            freshness="under 1 minute ago",
        )

    # ── Track 2b: Unknown Component — Claude generated SQL ────────────────────
    elif generated_sql and is_safe_sql(generated_sql):

        try:
            rows = await execute_sql(pool, generated_sql)
        except Exception as e:
            raise HTTPException(
                status_code=500,
                detail=f"SQL execution failed: {str(e)}"
            )

        viz_type = "Chart" if component == "Chart" else "Table"
        viz_data = (
            {"rows": rows}
            if viz_type == "Chart"
            else build_generic_table(rows)
        )

        ai_message, suggested_chips = await llm_service.generate_answer(
            question=question,
            data=rows,
            component=component,
            persona=ctx.persona_id,
            conversation_history=history,
        )

        # Cache metadata + SQL
        await cache.write_cached_query(
            pool=pool,
            question_hash=question_hash,
            question=question,
            ctx=ctx,
            component=component,
            sql_query=generated_sql,  # SQL cached for reuse
            viz_type=viz_type,
            is_known_component=False,
            query_fn=None,
            suggested_chips=suggested_chips,
            capability="Converged Conversation",
            ai_message=ai_message,
        )

        return build_response(
            ctx=ctx,
            visualization_type=viz_type,
            visualization_data=viz_data,
            ai_message=ai_message,
            suggested_chips=suggested_chips,
            capability="Converged Conversation",
            confidence=75,
            data_sources_used=["Live database query"],
            freshness="under 1 minute ago",
        )

    # ── Conversational — No Visual ────────────────────────────────────────────
    else:
        ai_message, suggested_chips = await llm_service.generate_answer(
            question=question,
            data={},
            component=None,
            persona=ctx.persona_id,
            conversation_history=history,
        )

        return build_response(
            ctx=ctx,
            ai_message=ai_message,
            suggested_chips=suggested_chips,
            capability="Converged Conversation",
            confidence=70,
            data_sources_used=[],
            freshness=None,
        )