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
    visualization_list: list[dict] | None = None,
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
    Called by every router endpoint.

    Args:
        visualization_list:   Pre-built list of {"type": ..., "data": ...} dicts.
                              Use this when returning multiple visualizations.
                              Takes priority over visualization_type/data.
        visualization_type:   Single component type (used when only one viz).
        visualization_data:   Data for the single component.
        extra_visualizations: Additional visualization items beyond the primary.
    """

    visualizations = []

    # Pre-built list takes priority
    if visualization_list:
        for v in visualization_list:
            visualizations.append(
                VisualizationItem(
                    type=v["type"],
                    variant=v.get("variant"),
                    data=v.get("data"),
                )
            )
    elif visualization_type and visualization_data is not None:
        visualizations.append(
            VisualizationItem(
                type=visualization_type,
                variant=map_variant,
                data=visualization_data,
            )
        )

    # Append any additional visualizations
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