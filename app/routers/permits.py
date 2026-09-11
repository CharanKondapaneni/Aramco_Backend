"""
Permit and Job Detail router.
GET /api/permits          — permit detail + conditions + gas test + entrants + log
GET /api/indoor-geo       — indoor floor plan GeoJSON
GET /api/reconciliation   — headcount reconciliation (scope param)
"""

from fastapi import APIRouter, Depends, Query
import asyncpg

from app.core.headers import PersonaContext, get_persona_context
from app.db.connection import get_pool
from app.db import queries
from app.models.response import TrackLynkResponse
from app.services import cache_service
from app.utils.transformers import transform_permits, transform_reconciliation
from app.utils.response_builder import build_response

router = APIRouter()


@router.get("/permits", response_model=TrackLynkResponse, summary="Permit Detail")
async def get_permits(
    ctx: PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Returns full permit detail for the Permit and Job Detail page.
    Feeds PermitDetailCard and IndoorViewer (condition states colour floor plan markers).
    """
    cached = await cache_service.get("confined_space", ctx.persona_id, ctx.client_id)
    if not cached:
        raw = await queries.get_permits(pool, ctx)
        await cache_service.set("confined_space", ctx.persona_id, ctx.client_id, raw)
    else:
        raw = cached

    viz_data = transform_permits(raw)

    return build_response(
        ctx=ctx,
        visualization_type="DetailPanel",
        visualization_data=viz_data,
        data_sources_used=["Permit-to-work system", "Location and tag data (vendor-agnostic)", "CCTV and access logs"],
        freshness=raw.get("freshness", ""),
    )


@router.get("/indoor-geo", response_model=TrackLynkResponse, summary="Indoor GeoJSON")
async def get_indoor_geo(
    ctx: PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Returns indoor floor plan GeoJSON for IndoorViewer.
    Semi-static facility geometry — cache aggressively.
    """
    cached = await cache_service.get("indoor_geo", ctx.persona_id, ctx.client_id)
    if not cached:
        raw = await queries.get_indoor_geo(pool, ctx)
        await cache_service.set("indoor_geo", ctx.persona_id, ctx.client_id, raw)
    else:
        raw = cached

    return build_response(
        ctx=ctx,
        visualization_type="IndoorMap",
        visualization_data=raw,
        data_sources_used=["Facility GIS"],
        freshness="static",
    )


@router.get("/reconciliation", response_model=TrackLynkResponse, summary="Headcount Reconciliation")
async def get_reconciliation(
    scope: str           = Query(default="all", description="Filter scope: all | permit"),
    ctx:   PersonaContext  = Depends(get_persona_context),
    pool:  asyncpg.Pool    = Depends(get_pool),
):
    """
    Returns headcount reconciliation data.
    scope=permit filters trustedFigures to permit-related rows only.
    Feeds HeadcountReconciliationPanel and EvidenceTrustPanel.
    """
    cache_key = f"reconciliation_{scope}"
    cached = await cache_service.get(cache_key, ctx.persona_id, ctx.client_id)
    if not cached:
        raw = await queries.get_reconciliation(pool, ctx, scope=scope)
        await cache_service.set(cache_key, ctx.persona_id, ctx.client_id, raw)
    else:
        raw = cached

    viz_data = transform_reconciliation(raw)

    return build_response(
        ctx=ctx,
        visualization_type="ReconciliationPanel",
        visualization_data=viz_data,
        data_sources_used=["Gate access-control", "Permit-to-work system", "Contractor timesheets"],
        freshness=raw.get("freshness", ""),
    )