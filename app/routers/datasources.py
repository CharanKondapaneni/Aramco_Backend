"""
Data Sources router.
GET /api/datasources — connected data sources
"""

from fastapi import APIRouter, Depends
import asyncpg

from app.core.headers import PersonaContext, get_persona_context
from app.db.connection import get_pool
from app.db import queries
from app.models.response import TrackLynkResponse
from app.utils.response_builder import build_response

router = APIRouter()


@router.get("/datasources", response_model=TrackLynkResponse, summary="Connected Data Sources")
async def get_datasources(
    ctx: PersonaContext = Depends(get_persona_context),
    pool: asyncpg.Pool   = Depends(get_pool),
):
    sources = await queries.get_data_sources(pool, ctx)

    return build_response(
        ctx=ctx,
        raw_data={"sources": sources},
        freshness="live",
    )