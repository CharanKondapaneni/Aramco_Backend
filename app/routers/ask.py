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

COMPONENT_VIZ_TYPE = {
    "FlaggedJobsTable":             "Table",
    "PermitDetailCard":             "DetailPanel",
    "MusterBoard":                  "StatusBoard",
    "PrioritizedActionCards":       "ActionCards",
    "AssetHealthCard":              "Cards",
    "HeadcountReconciliationPanel": "ReconciliationPanel",
    "SiteMapPanel":                 "Map",
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
    signals, kpis = await asyncio.gather(
        queries.get_signals(pool, ctx),
        queries.get_kpis(pool, ctx),
    )

    ai_message, suggested_chips = await llm_service.generate_greeting(
        signals=signals,
        kpis=kpis,
        persona=ctx.persona_id,
        client_id=ctx.client_id,
    )

    # Cache greeting as first conversation turn
    greeting_hash = cache.make_question_hash(GREETING_QUESTION, ctx)
    await cache.write_cached_query(
        pool=pool,
        question_hash=greeting_hash,
        question=GREETING_QUESTION,
        ctx=ctx,
        component=None,
        sql_query=None,
        viz_type=None,
        is_known_component=False,
        query_fn=None,
        suggested_chips=suggested_chips,
        capability="Proactive Intelligence",
        ai_message=ai_message,
    )

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
        # Explicitly cast is_known_component to bool in case asyncpg returns
        # it as a different type
        is_known = bool(is_known_component) if is_known_component is not None else False
        has_fn   = bool(query_fn_name) if query_fn_name else False

        if is_known and has_fn:
            query_fn = getattr(queries, query_fn_name, None)
            raw_data = await query_fn(pool, ctx) if query_fn else {}
            viz_data = transform(viz_type, raw_data) if viz_type else None
        elif sql_query and is_safe_sql(sql_query):
            rows     = await execute_sql(pool, sql_query)
            raw_data = rows
            viz_data = build_generic_table(rows) if viz_type == "Table" else {"rows": rows}
        else:
            raw_data = {}
            viz_data = None

        # LLM generates fresh ai_message from live data + conversation history
        # Chips served from cache — no LLM call needed for chips
        ai_message, _ = await llm_service.generate_answer(
            question=question,
            data=raw_data,
            component=component,
            persona=ctx.persona_id,
            conversation_history=history,
        )

        return build_response(
            ctx=ctx,
            visualization_type=viz_type,
            visualization_data=viz_data,
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
        viz_type      = COMPONENT_VIZ_TYPE.get(component, "Table")
        query_fn      = getattr(queries, query_fn_name, None)
        raw_data      = await query_fn(pool, ctx) if query_fn else {}
        viz_data      = transform(viz_type, raw_data)

        ai_message, suggested_chips = await llm_service.generate_answer(
            question=question,
            data=raw_data,
            component=component,
            persona=ctx.persona_id,
            conversation_history=history,
        )

        # Cache metadata — no SQL, no data
        await cache.write_cached_query(
            pool=pool,
            question_hash=question_hash,
            question=question,
            ctx=ctx,
            component=component,
            sql_query=None,          # no SQL for known components
            viz_type=viz_type,
            is_known_component=True,
            query_fn=query_fn_name,
            suggested_chips=suggested_chips,
            capability="Anomaly Detection",
            ai_message=ai_message,
        )

        return build_response(
            ctx=ctx,
            visualization_type=viz_type,
            visualization_data=viz_data,
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