"""
Cache service — checks query cache before hitting the DB.
Phase 1: in-memory dict cache.
Phase 2: replace with Redis.
"""

import hashlib
import json
import time
from app.core.config import settings

# Phase 1 — in-memory cache
_cache: dict[str, dict] = {}


def _make_key(intent_key: str, persona_id: str, client_id: str, filters: dict = {}) -> str:
    raw = f"{intent_key}:{persona_id}:{client_id}:{json.dumps(filters, sort_keys=True)}"
    return hashlib.md5(raw.encode()).hexdigest()


def _get_ttl(intent_key: str) -> int:
    ttl_map = {
        "flagged_jobs":           settings.CACHE_TTL_FLAGGED_JOBS,
        "muster":                 settings.CACHE_TTL_MUSTER,
        "confined_space":         settings.CACHE_TTL_PERMITS,
        "asset_health":           settings.CACHE_TTL_ASSETS,
        "greeting":               settings.CACHE_TTL_SIGNALS,
        "site_map":               settings.CACHE_TTL_SITE_GEO,
        "worker_positions":       settings.CACHE_TTL_WORKERS,
        "datasources":            settings.CACHE_TTL_DATASOURCES,
    }
    return ttl_map.get(intent_key, 60)


async def get(intent_key: str, persona_id: str, client_id: str, filters: dict = {}) -> dict | None:
    """Return cached data if exists and not expired."""
    key = _make_key(intent_key, persona_id, client_id, filters)
    entry = _cache.get(key)
    if not entry:
        return None
    if time.time() > entry["expires_at"]:
        del _cache[key]
        return None
    return entry["data"]


async def set(intent_key: str, persona_id: str, client_id: str, data: dict, filters: dict = {}) -> None:
    """Cache data with appropriate TTL for the intent."""
    key     = _make_key(intent_key, persona_id, client_id, filters)
    ttl     = _get_ttl(intent_key)
    _cache[key] = {
        "data":       data,
        "cached_at":  time.time(),
        "expires_at": time.time() + ttl,
    }


async def invalidate(intent_key: str, persona_id: str, client_id: str) -> None:
    """Invalidate cache entry for a given intent + persona."""
    key = _make_key(intent_key, persona_id, client_id)
    _cache.pop(key, None)
