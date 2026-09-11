"""
Live Site Picture router.
GET /api/site/operational — zones + flagged jobs
GET /api/site/geo         — site GeoJSON (semi-static)
GET /api/site/workers     — worker positions GeoJSON (live)
"""

import asyncpg
from fastapi import APIRouter, Depends

from app.core.headers import PersonaContext, get_persona_context
from app.db.connection import get_pool
from app.db import queries
from app.models.response import TrackLynkResponse
from app.utils.transformers import transform_flagged_jobs
from app.utils.response_builder import build_response

router = APIRouter()


@router.get("/site/operational", response_model=TrackLynkResponse, summary="Operational Site Data")
async def get_site_operational(
    ctx:  PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Returns zones and flagged jobs for the Live Site Picture page.
    Feeds FlaggedJobsTable and HsePageHeader.
    """
    raw      = await queries.get_site_data(pool, ctx)
    viz_data = transform_flagged_jobs({
        "as_of":        raw.get("as_of", ""),
        "freshness":    raw.get("freshness", ""),
        "flagged_jobs": raw.get("flaggedJobs", []),
    })

    return build_response(
        ctx=ctx,
        visualization_type="Table",
        visualization_data=viz_data,
        raw_data={"zones": raw.get("zones", [])},
        data_sources_used=["Permit-to-work system", "Location and tag data (vendor-agnostic)"],
        freshness="under 1 minute ago",
    )


@router.get("/site/geo", response_model=TrackLynkResponse, summary="Site GeoJSON")
async def get_site_geo(
    ctx:  PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Returns site GeoJSON FeatureCollection — zone polygons, flagged markers.
    """
    raw = await queries.get_site_geo(pool, ctx)

    return build_response(
        ctx=ctx,
        visualization_type="Map",
        visualization_data=raw,
        map_variant="site",
        data_sources_used=["Location and tag data (vendor-agnostic)"],
        freshness="static",
    )


@router.get("/site/workers", response_model=TrackLynkResponse, summary="Worker Positions")
async def get_worker_positions(
    ctx:  PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    """
    Returns live worker positions as GeoJSON FeatureCollection.
    2,412 points. Poll every 10-30s in production.
    """
    raw = await queries.get_worker_positions(pool, ctx)

    # get_worker_positions already returns a complete GeoJSON FeatureCollection
    # with features built — pass it directly, no transformer needed
    geo = {
        "as_of":    raw.get("as_of", ""),
        "type":     "FeatureCollection",
        "features": raw.get("workers", []),
    }

    return build_response(
        ctx=ctx,
        visualization_type="Map",
        visualization_data=geo,
        map_variant="site",
        data_sources_used=["Location and tag data (vendor-agnostic)", "Gate access-control"],
        freshness="live",
    )