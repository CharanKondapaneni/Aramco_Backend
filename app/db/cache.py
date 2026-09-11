"""
Query cache — stores question metadata only. NO data stored.
Data is always fetched live from the DB on every request.

Stores:
- question hash + text
- component + viz_type + is_known_component + query_fn
- sql_query (to execute against live DB on cache hit)
- suggested_chips (question-dependent, not data-dependent)
- ai_message (for conversation history reconstruction)
- capability label
"""

import hashlib
import json
import asyncpg
from app.core.headers import PersonaContext


def make_question_hash(question: str, ctx: PersonaContext) -> str:
    """
    Unique hash for question + persona + client.
    Same question from different personas = different cache entries.
    """
    normalized = question.lower().strip()
    raw = f"{normalized}:{ctx.persona_id}:{ctx.client_id}"
    return hashlib.md5(raw.encode()).hexdigest()


async def get_cached_query(
    pool:          asyncpg.Pool,
    question_hash: str,
) -> dict | None:
    """
    Looks up a question hash in query_cache.
    Returns metadata dict if found, None if miss.
    Increments hit_count on every hit.
    """
    async with pool.acquire() as conn:
        row = await conn.fetchrow("""
            SELECT
                component,
                sql_query,
                viz_type,
                is_known_component,
                query_fn,
                suggested_chips,
                capability,
                ai_message,
                hit_count
            FROM query_cache
            WHERE question_hash = $1
        """, question_hash)

        if not row:
            return None

        await conn.execute("""
            UPDATE query_cache
            SET hit_count = hit_count + 1
            WHERE question_hash = $1
        """, question_hash)

        # asyncpg returns JSONB as Python objects directly
        # Boolean is returned as Python bool
        # Parse suggested_chips if it comes back as string
        chips = row["suggested_chips"]
        if isinstance(chips, str):
            import json as _json
            chips = _json.loads(chips)
        elif chips is None:
            chips = []

        return {
            "component":          row["component"],
            "sql_query":          row["sql_query"],
            "viz_type":           row["viz_type"],
            "is_known_component": bool(row["is_known_component"]),
            "query_fn":           row["query_fn"],
            "suggested_chips":    chips,
            "capability":         row["capability"] or "Converged Conversation",
            "ai_message":         row["ai_message"],
        }


async def write_cached_query(
    pool:               asyncpg.Pool,
    question_hash:      str,
    question:           str,
    ctx:                PersonaContext,
    component:          str | None,
    sql_query:          str | None,
    viz_type:           str | None,
    is_known_component: bool,
    query_fn:           str | None,
    suggested_chips:    list[str],
    capability:         str,
    ai_message:         str | None = None,
) -> None:
    """
    Writes question metadata to query_cache.
    ON CONFLICT updates the existing entry.
    """
    async with pool.acquire() as conn:
        await conn.execute("""
            INSERT INTO query_cache (
                question_hash,
                question,
                persona_id,
                client_id,
                component,
                sql_query,
                viz_type,
                is_known_component,
                query_fn,
                suggested_chips,
                capability,
                ai_message,
                cached_at,
                hit_count
            ) VALUES (
                $1, $2, $3, $4, $5, $6, $7, $8, $9,
                $10::jsonb, $11, $12, NOW(), 0
            )
            ON CONFLICT (question_hash) DO UPDATE SET
                component          = EXCLUDED.component,
                sql_query          = EXCLUDED.sql_query,
                viz_type           = EXCLUDED.viz_type,
                is_known_component = EXCLUDED.is_known_component,
                query_fn           = EXCLUDED.query_fn,
                suggested_chips    = EXCLUDED.suggested_chips,
                capability         = EXCLUDED.capability,
                ai_message         = EXCLUDED.ai_message,
                cached_at          = NOW(),
                hit_count          = 0
        """,
            question_hash,
            question,
            ctx.persona_id,
            ctx.client_id,
            component,
            sql_query,
            viz_type,
            is_known_component,
            query_fn,
            json.dumps(suggested_chips),
            capability,
            ai_message,
        )