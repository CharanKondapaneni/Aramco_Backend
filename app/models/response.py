"""
Standard response envelope — every single API returns this structure.
The frontend always receives the same shape regardless of which endpoint
was called or which persona is active.
"""

from pydantic import BaseModel
from typing import Any


class MetaBlock(BaseModel):
    as_of:      str | None = None
    freshness:  str | None = None
    persona_id: str | None = None
    client_id:  str | None = None
    market_id:  str | None = None


class VisualizationItem(BaseModel):
    """One renderable component — type tells the frontend which component to mount."""
    type: str   # Map | IndoorMap | Table | Chart | KpiTiles | Cards |
                # DetailPanel | StatusBoard | ReconciliationPanel |
                # ActionCards | Timeline | JourneyMap | Diagram | Report
    variant: str | None = None   # e.g. "flagged" | "muster" | "site" for Map
    data: dict[str, Any]


class TrackLynkResponse(BaseModel):
    """
    The single response envelope for every TrackLynk API endpoint.

    - visualization: components to render on screen (from cache/DB query)
    - data:          raw structured data (KPIs, GeoJSON, page-load data)
    - report:        generated document or briefing
    All three can be populated simultaneously.
    """
    meta:               MetaBlock

    # AI fields — populated by POST /ask only
    ai_message:         str | None = None
    suggested_chips:    list[str] = []
    capability:         str | None = None
    confidence:         int | None = None
    data_sources_used:  list[str] = []

    # Response payload — one or more can be populated
    visualization:      list[VisualizationItem] | None = None
    data:               dict[str, Any] | None = None
    report:             dict[str, Any] | None = None
