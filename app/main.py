"""
TrackLynk AI — FastAPI Backend
Entry point. Registers all routers, manages DB pool lifecycle.
"""

from contextlib import asynccontextmanager
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.routers import ask, site, permits, muster, datasources
from app.core.config import settings
from app.db.connection import init_pool, close_pool


@asynccontextmanager
async def lifespan(app: FastAPI):
    """Manage startup and shutdown — init and close the DB pool."""
    await init_pool()
    yield
    await close_pool()


app = FastAPI(
    title="TrackLynk AI API",
    description="Backend API for TrackLynk AI — powers all pages and chat across all personas and clients.",
    version="1.0.0",
    docs_url="/swagger",
    redoc_url="/redoc",
    lifespan=lifespan,
)

# ── CORS ──────────────────────────────────────────────────────────────────────
app.add_middleware(
    CORSMiddleware,
    allow_origins=settings.ALLOWED_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ── Routers ───────────────────────────────────────────────────────────────────
app.include_router(ask.router,         prefix="/api", tags=["Ask TrackLynk"])
app.include_router(site.router,        prefix="/api", tags=["Live Site Picture"])
app.include_router(permits.router,     prefix="/api", tags=["Permit and Job Detail"])
app.include_router(muster.router,      prefix="/api", tags=["Muster Status"])
app.include_router(datasources.router, prefix="/api", tags=["Data Sources"])


@app.get("/health", tags=["Health"])
async def health():
    return {"status": "ok", "service": "tracklynk-api"}