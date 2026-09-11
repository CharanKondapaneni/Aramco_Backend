"""
Application configuration — reads from environment variables.
All sensitive values (API keys, DB credentials) must be set in .env
Never hardcode secrets in this file.
"""

from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    # ── App ───────────────────────────────────────────────────────────────────
    APP_ENV: str  = "development"
    DEBUG:   bool = True

    # ── Database ──────────────────────────────────────────────────────────────
    DATABASE_URL: str = "postgresql://admin:admin@localhost:5432/tracklynk_demo"

    # ── Cache ─────────────────────────────────────────────────────────────────
    REDIS_URL:                str = "redis://localhost:6379"
    CACHE_TTL_FLAGGED_JOBS:   int = 30
    CACHE_TTL_MUSTER:         int = 5
    CACHE_TTL_PERMITS:        int = 60
    CACHE_TTL_ASSETS:         int = 300
    CACHE_TTL_SIGNALS:        int = 300
    CACHE_TTL_KPIS:           int = 30
    CACHE_TTL_DATASOURCES:    int = 3600
    CACHE_TTL_SITE_GEO:       int = 3600
    CACHE_TTL_WORKERS:        int = 10

    # ── LLM ───────────────────────────────────────────────────────────────────
    # Supported providers: anthropic | openai
    LLM_PROVIDER:      str = "anthropic"
    LLM_MODEL:         str = "claude-sonnet-4-6"

    # Add your Anthropic API key here in .env
    # Never commit the actual key to version control
    ANTHROPIC_API_KEY: str = ""

    # Add your OpenAI API key here in .env (if using OpenAI)
    OPENAI_API_KEY:    str = ""

    # ── CORS ──────────────────────────────────────────────────────────────────
    ALLOWED_ORIGINS: list[str] = [
        "http://localhost:5173",
        "http://localhost:3000",
    ]

    class Config:
        env_file = ".env"


settings = Settings()