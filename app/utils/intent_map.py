"""
Intent lookup table — maps resolved question intent to:
  - which DB tables to query
  - which visualization type to render
  - which data sources to report
  - capability label and confidence

This is the mock KAG layer for Phase 1.
When the real KAG ontology is ready, this module is replaced
by a KAG traversal call. Everything downstream stays the same.
"""

from dataclasses import dataclass, field


@dataclass
class Intent:
    key:                str
    tables:             list[str]
    query_fn:           str           # name of function in db/queries.py
    visualization_type: str           # component type for frontend
    map_variant:        str | None    # "flagged" | "muster" | "site" | None
    capability:         str
    confidence:         int
    data_sources:       list[str]
    suggested_chips:    list[str] = field(default_factory=list)
    extra_viz:          list[dict] = field(default_factory=list)


# ── Intent registry ───────────────────────────────────────────────────────────
# Maps intent_key → Intent definition
# intent_key corresponds to chatFlows.json flow keys (without the persona prefix)

INTENT_REGISTRY: dict[str, Intent] = {

    "flagged_jobs": Intent(
        key="flagged_jobs",
        tables=["flagged_job", "zone"],
        query_fn="get_flagged_jobs",
        visualization_type="Table",
        map_variant="flagged",
        capability="Anomaly Detection",
        confidence=96,
        data_sources=["Permit-to-work system", "Location and tag data (vendor-agnostic)"],
        suggested_chips=["Open the evidence for job 1", "Notify the permit issuer", "Show these on the site map"],
        extra_viz=[{"type": "Map", "variant": "flagged"}],
    ),

    "confined_space": Intent(
        key="confined_space",
        tables=["permit", "permit_condition", "gas_test_reading", "permit_entrant", "permit_entry_exit_log"],
        query_fn="get_permits",
        visualization_type="DetailPanel",
        map_variant=None,
        capability="Anomaly Detection",
        confidence=94,
        data_sources=["Permit-to-work system", "Location and tag data (vendor-agnostic)", "CCTV and access logs"],
        suggested_chips=["Who is the standby person?", "Show the entry/exit log", "Can I trust these numbers?"],
        extra_viz=[{"type": "IndoorMap", "variant": None}],
    ),

    "trust": Intent(
        key="trust",
        tables=["reconciliation_run", "reconciliation_source"],
        query_fn="get_reconciliation",
        visualization_type="ReconciliationPanel",
        map_variant=None,
        capability="Converged Conversation",
        confidence=91,
        data_sources=["Gate access-control", "Permit-to-work system", "Contractor timesheets"],
        suggested_chips=["Show me the 28 unmatched people", "Which source is most reliable?", "Export this reconciliation"],
        extra_viz=[{"type": "ReconciliationPanel", "variant": "evidence"}],
    ),

    "actions": Intent(
        key="actions",
        tables=["action"],
        query_fn="get_actions",
        visualization_type="ActionCards",
        map_variant=None,
        capability="Automated Action",
        confidence=88,
        data_sources=["Permit-to-work system", "Location and tag data (vendor-agnostic)", "Maintenance system"],
        suggested_chips=["Confirm action 1", "Edit action 1 first", "Hand off to the night shift supervisor"],
    ),

    "muster": Intent(
        key="muster",
        tables=["muster_event", "muster_point"],
        query_fn="get_muster",
        visualization_type="StatusBoard",
        map_variant="muster",
        capability="Proactive Intelligence",
        confidence=90,
        data_sources=["Gate access-control", "Location and tag data (vendor-agnostic)"],
        suggested_chips=["Show the 2 with no signal", "Message the zone wardens", "What does the incident log say?"],
        extra_viz=[{"type": "Map", "variant": "muster"}],
    ),

    "asset_health": Intent(
        key="asset_health",
        tables=["asset", "asset_reading"],
        query_fn="get_assets",
        visualization_type="Cards",
        map_variant=None,
        capability="Predictive Intelligence",
        confidence=71,
        data_sources=["Condition monitoring (vendor-agnostic)", "Permit-to-work system"],
        suggested_chips=["Which permits are inside the exclusion radius?", "What should I act on before the night shift?"],
    ),

    "site_map": Intent(
        key="site_map",
        tables=["zone", "worker"],
        query_fn="get_site_geo",
        visualization_type="Map",
        map_variant="site",
        capability="Proactive Intelligence",
        confidence=95,
        data_sources=["Location and tag data (vendor-agnostic)", "Gate access-control"],
        suggested_chips=["Show me the flagged jobs", "Walk me through the confined-space entry"],
    ),

    "reconciliation_detail": Intent(
        key="reconciliation_detail",
        tables=["reconciliation_run", "reconciliation_source"],
        query_fn="get_reconciliation",
        visualization_type="ReconciliationPanel",
        map_variant=None,
        capability="Converged Conversation",
        confidence=91,
        data_sources=["Gate access-control", "Permit-to-work system", "Contractor timesheets"],
        suggested_chips=["Which source is most reliable?", "Export this reconciliation"],
    ),

    "greeting": Intent(
        key="greeting",
        tables=["signal", "permit", "flagged_job", "worker", "muster_event"],
        query_fn="get_greeting_context",
        visualization_type="KpiTiles",
        map_variant=None,
        capability="Proactive Intelligence",
        confidence=93,
        data_sources=["Permit-to-work system", "Gate access-control", "Location and tag data (vendor-agnostic)"],
        suggested_chips=["Show the three flagged jobs", "Show the Unit 3 confined-space entry", "Why do the headcounts disagree?"],
    ),

    "__default__": Intent(
        key="__default__",
        tables=[],
        query_fn="get_default",
        visualization_type="",
        map_variant=None,
        capability="Converged Conversation",
        confidence=70,
        data_sources=[],
        suggested_chips=["Show me the flagged jobs", "What should I act on?", "Show the muster status"],
    ),
}


# ── Keyword matching ──────────────────────────────────────────────────────────
# Simple keyword → intent mapping for Phase 1
# KAG replaces this in Phase 2

KEYWORD_MAP: dict[str, str] = {
    "flagged":          "flagged_jobs",
    "hazard zone":      "flagged_jobs",
    "without a permit": "flagged_jobs",
    "permit":           "confined_space",
    "confined":         "confined_space",
    "confined-space":   "confined_space",
    "unit 3":           "confined_space",
    "trust":            "trust",
    "headcount":        "trust",
    "numbers":          "trust",
    "disagree":         "trust",
    "act on":           "actions",
    "night shift":      "actions",
    "action":           "actions",
    "muster":           "muster",
    "unaccounted":      "muster",
    "drill":            "muster",
    "compressor":       "asset_health",
    "asset":            "asset_health",
    "equipment":        "asset_health",
    "health":           "asset_health",
    "site map":         "site_map",
    "show on map":      "site_map",
    "where":            "site_map",
    "28":               "reconciliation_detail",
    "unmatched":        "reconciliation_detail",
}


def resolve_intent(question: str) -> Intent:
    """
    Resolves a user question to an Intent.
    Phase 1: keyword matching.
    Phase 2: replace with KAG traversal.
    """
    q_lower = question.lower()
    for keyword, intent_key in KEYWORD_MAP.items():
        if keyword in q_lower:
            return INTENT_REGISTRY.get(intent_key, INTENT_REGISTRY["__default__"])
    return INTENT_REGISTRY["__default__"]
