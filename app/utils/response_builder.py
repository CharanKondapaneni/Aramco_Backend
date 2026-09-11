"""
Response builder utility — every API endpoint calls build_response().
Ensures every response follows the standard TrackLynk envelope.
"""

from datetime import datetime, timezone
from app.models.response import TrackLynkResponse, MetaBlock, VisualizationItem
from app.core.headers import PersonaContext


def build_response(
    ctx:                PersonaContext,
    visualization_type: str | None = None,
    visualization_data: dict | None = None,
    map_variant:        str | None = None,
    raw_data:           dict | None = None,
    report_data:        dict | None = None,
    ai_message:         str | None = None,
    suggested_chips:    list[str] = [],
    capability:         str | None = None,
    confidence:         int | None = None,
    data_sources_used:  list[str] = [],
    as_of:              str | None = None,
    freshness:          str | None = None,
    extra_visualizations: list[dict] | None = None,
) -> TrackLynkResponse:
    """
    Builds the standard response envelope.
    Called by every router endpoint — never construct TrackLynkResponse directly.

    Args:
        ctx:                  Persona context from headers
        visualization_type:   Primary component type e.g. "Table", "StatusBoard"
        visualization_data:   Data for the primary component
        map_variant:          Map variant if a Map is included e.g. "flagged"
        raw_data:             Raw data payload (page-load endpoints)
        report_data:          Report payload
        ai_message:           LLM generated message (POST /ask only)
        suggested_chips:      Next question suggestions (POST /ask only)
        capability:           AI capability label
        confidence:           Confidence score 0-100
        data_sources_used:    List of data source names
        as_of:                Timestamp of the data
        freshness:            Human-readable freshness label
        extra_visualizations: Additional visualization items beyond the primary
    """

    # Build visualization list
    visualizations = []

    if visualization_type and visualization_data is not None:
        visualizations.append(
            VisualizationItem(
                type=visualization_type,
                variant=map_variant,
                data=visualization_data,
            )
        )

    # Append any additional visualizations (e.g. Map + Table together)
    if extra_visualizations:
        for v in extra_visualizations:
            visualizations.append(
                VisualizationItem(
                    type=v["type"],
                    variant=v.get("variant"),
                    data=v["data"],
                )
            )

    return TrackLynkResponse(
        meta=MetaBlock(
            as_of=as_of or datetime.now(timezone.utc).isoformat(),
            freshness=freshness,
            persona_id=ctx.persona_id,
            client_id=ctx.client_id,
            market_id=ctx.market_id,
        ),
        ai_message=ai_message,
        suggested_chips=suggested_chips,
        capability=capability,
        confidence=confidence,
        data_sources_used=data_sources_used,
        visualization=visualizations if visualizations else None,
        data=raw_data,
        report=report_data,
    )
