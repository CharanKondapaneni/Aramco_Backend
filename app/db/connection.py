"""
Database connection pool using asyncpg directly.
No SQLAlchemy — raw asyncpg for simplicity, speed and true parallel execution.
Pool is created once on startup and shared across all requests.
Each query acquires its own connection from the pool — safe for asyncio.gather.
"""

import asyncpg
from app.core.config import settings

# Global connection pool — initialized on app startup
_pool: asyncpg.Pool | None = None


async def init_pool():
    """Create the connection pool. Called once on app startup."""
    global _pool
    _pool = await asyncpg.create_pool(
        dsn=settings.DATABASE_URL,
        min_size=5,
        max_size=20,
    )


async def close_pool():
    """Close the connection pool. Called on app shutdown."""
    global _pool
    if _pool:
        await _pool.close()
        _pool = None


async def get_pool() -> asyncpg.Pool:
    """Returns the connection pool. Raises if not initialized."""
    if _pool is None:
        raise RuntimeError("Database pool not initialized. Call init_pool() on startup.")
    return _pool