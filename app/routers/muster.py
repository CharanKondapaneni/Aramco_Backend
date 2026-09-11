"""
Muster Status router.
GET /api/muster — live muster data
"""

from fastapi import APIRouter, Depends
import asyncpg

from app.core.headers import PersonaContext, get_persona_context
from app.db.connection import get_pool
from app.db import queries
from app.models.response import TrackLynkResponse
from app.services import cache_service
from app.utils.transformers import transform_muster
from app.utils.response_builder import build_response

router = APIRouter()


@router.get("/muster", response_model=TrackLynkResponse, summary="Live Muster Data")
async def get_muster(
    ctx: PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Returns live muster status.
    Pure DB read — no AI involved.
    Feeds MusterBoard (zones, control, unaccounted groups, projection)
    and MusterLocationMap (lastKnownPoint[] for map pins).
    Poll every 5-10s during active muster.
    """
    cached = await cache_service.get("muster", ctx.persona_id, ctx.client_id)
    if not cached:
        raw = await queries.get_muster(pool, ctx)
        await cache_service.set("muster", ctx.persona_id, ctx.client_id, raw)
    else:
        raw = cached

    viz_data = transform_muster(raw)

    return build_response(
        ctx=ctx,
        visualization_type="StatusBoard",
        visualization_data=viz_data,
        data_sources_used=["Gate access-control", "Location and tag data (vendor-agnostic)"],
        freshness="live",
    )