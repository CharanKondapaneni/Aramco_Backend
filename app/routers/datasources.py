"""
Data Sources router.
GET /api/datasources — connected data sources (static)
"""

from fastapi import APIRouter, Depends
import asyncpg

from app.core.headers import PersonaContext, get_persona_context
from app.db.connection import get_pool
from app.db import queries
from app.models.response import TrackLynkResponse
from app.services import cache_service
from app.utils.response_builder import build_response

router = APIRouter()


@router.get("/datasources", response_model=TrackLynkResponse, summary="Connected Data Sources")
async def get_datasources(
    ctx: PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Returns the connected data sources for the Data Sources page.
    Static — no AI, no DB computation.
    Loaded once on page visit.
    """
    cached = await cache_service.get("datasources", ctx.persona_id, ctx.client_id)
    if not cached:
        sources = await queries.get_data_sources(pool, ctx)
        raw = {"sources": sources}
        await cache_service.set("datasources", ctx.persona_id, ctx.client_id, raw)
    else:
        raw = cached

    return build_response(
        ctx=ctx,
        raw_data=raw,
        freshness="static",
    )