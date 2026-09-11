"""
Transformer utilities — shape raw DB rows into component data shapes.
One function per visualization type.
All functions receive raw DB result and return a dict matching the component model.
"""

from datetime import datetime, timezone


# ── Table ─────────────────────────────────────────────────────────────────────

def transform_flagged_jobs(raw: dict) -> dict:
    """
    Transforms raw flagged_job + zone DB rows
    into FlaggedJobsTable component data.
    """
    jobs = []
    for row in raw.get("flagged_jobs", []):
        jobs.append({
            "id":              row["id"],
            "rank":            row["rank"],
            "permit_id":       row["permit_id"],
            "permit_type":     row["permit_type"],
            "title":           row["title"],
            "zone_id":         row["zone_id"],
            "zone_name":       row.get("zone_name", ""),
            "location":        row.get("location_description", ""),
            "bucket":          row["risk_bucket"],
            "severity":        row["severity"],
            "workers_on_site": row["workers_on_site"],
            "reason":          row["reason"],
            "detected_at":     row["detected_at"].isoformat() if hasattr(row["detected_at"], "isoformat") else row["detected_at"],
            "evidence":        row.get("evidence", {}),
        })
    return {
        "as_of":        raw.get("as_of", datetime.now(timezone.utc).isoformat()),
        "freshness":    raw.get("freshness", ""),
        "flagged_jobs": jobs,
    }


# ── StatusBoard ───────────────────────────────────────────────────────────────

def transform_muster(raw: dict) -> dict:
    """
    Transforms raw muster_event + muster_point DB rows
    into MusterBoard component data.
    """
    event  = raw.get("event", {})
    points = raw.get("points", [])

    zones = []
    for p in points:
        zones.append({
            "id":           p["id"],
            "name":         p["name"],
            "accounted":    p.get("accounted_count", 0),
            "expected":     p.get("expected_count", 0),
            "capacity":     p.get("capacity", 0),
            "covers_zones": p.get("covers_zones", []),
        })

    return {
        "as_of":            event.get("as_of", datetime.now(timezone.utc).isoformat()),
        "freshness":        "live",
        "state":            event.get("state", "standby"),
        "state_label":      event.get("state_label", ""),
        "elapsed_seconds":  event.get("elapsed_seconds", 0),
        "accounted":        event.get("total_accounted", 0),
        "total":            event.get("total_expected", 0),
        "unaccounted":      event.get("total_expected", 0) - event.get("total_accounted", 0),
        "control": {
            "status":             event.get("state", "standby"),
            "mustered":           event.get("total_accounted", 0),
            "mustering":          0,
            "not_started":        0,
            "gate_movements_in":  0,
            "gate_movements_out": 0,
            "lockdown_note":      None,
            "duration_label":     _seconds_to_label(event.get("elapsed_seconds", 0)),
        },
        "zones": zones,
        "unaccounted_groups": raw.get("unaccounted_groups", []),
        "projection": {
            "full_accounting_minutes": event.get("projection_full_accounting_minutes", 0),
            "basis":                   event.get("projection_basis", ""),
            "confidence":              event.get("projection_confidence", 0),
        },
        "measured_completion": {
            "label":      event.get("measured_completion_label", ""),
            "seconds":    0,
            "target":     "",
            "basis":      "",
            "prior_drill": "",
            "note":       "",
        },
    }


# ── DetailPanel ───────────────────────────────────────────────────────────────

def transform_permits(raw: dict) -> dict:
    """
    Transforms raw permit + child table DB rows
    into PermitDetailCard component data.
    """
    permit     = raw.get("permit", {})
    conditions = raw.get("conditions", [])
    gas_tests  = raw.get("gas_tests", [])
    entrants   = raw.get("entrants", [])
    log        = raw.get("entry_exit_log", [])

    latest_gas = gas_tests[-1] if gas_tests else {}

    return {
        "as_of":    permit.get("valid_from", datetime.now(timezone.utc).isoformat()),
        "freshness": raw.get("freshness", ""),
        "confined_space": {
            "id":                   permit["id"],
            "permit_type":          permit["permit_type"],
            "title":                permit["title"],
            "zone_id":              permit["zone_id"],
            "zone_name":            raw.get("zone_name", ""),
            "location_description": permit.get("location_description", ""),
            "status":               permit["status"],
            "risk_bucket":          permit["risk_bucket"],
            "valid_from":           permit["valid_from"],
            "valid_to":             permit["valid_to"],
            "issuer":               permit["issuer"],
            "work_order_id":        permit.get("work_order_id", ""),
            "conditions":           conditions,
            "occupancy": {
                "inside": sum(1 for e in entrants if e.get("is_inside")),
                "max":    raw.get("occupancy_max", 4),
            },
            "gas_test": {
                "last_test_minutes_ago": raw.get("last_test_minutes_ago", 0),
                "interval_minutes":      latest_gas.get("interval_minutes", 15),
                "due_in_minutes":        raw.get("due_in_minutes", 0),
                "last_reading":          latest_gas.get("result", ""),
                "readings":              [{"time": g["reading_time"], "result": g["result"]} for g in gas_tests],
            },
            "standby":        raw.get("standby", {}),
            "entrants":       entrants,
            "entry_exit_log": log,
        },
        "related_permits": raw.get("related_permits", []),
    }


# ── ReconciliationPanel ───────────────────────────────────────────────────────

def transform_reconciliation(raw: dict) -> dict:
    """
    Transforms raw reconciliation_run + reconciliation_source DB rows
    into HeadcountReconciliationPanel component data.
    """
    run     = raw.get("run", {})
    sources = raw.get("sources", [])

    return {
        "as_of":          run.get("as_of", datetime.now(timezone.utc).isoformat()),
        "freshness":      raw.get("freshness", ""),
        "resolved_count": run.get("resolved_count", 0),
        "resolved_label": raw.get("resolved_label", ""),
        "method":         run.get("method", ""),
        "audit_logged":   run.get("audit_logged", False),
        "sources":        sources,
        "exceptions":     raw.get("exceptions", []),
        "trusted_figures": raw.get("trusted_figures", []),
    }


# ── ActionCards ───────────────────────────────────────────────────────────────

def transform_actions(raw: dict) -> dict:
    """
    Transforms raw action table rows
    into PrioritizedActionCards component data.
    """
    actions = []
    for row in raw.get("actions", []):
        actions.append({
            "id":            row["id"],
            "rank":          row["rank"],
            "title":         row["title"],
            "risk_bucket":   row["risk_bucket"],
            "priority":      row["priority"],
            "rationale":     row["rationale"],
            "owner":         row["owner"],
            "owner_note":    row.get("owner_note"),
            "due_by":        row["due_by"],
            "evidence":      row.get("evidence", []),
            "sources":       row.get("sources", []),
            "draft_task":    row.get("draft_task"),
            "target_system": row.get("target_system"),
            "status":        row["status"],
            "buttons":       ["Confirm", "Edit First"],
        })
    return {
        "as_of":    raw.get("as_of", datetime.now(timezone.utc).isoformat()),
        "freshness": raw.get("freshness", ""),
        "horizon":   raw.get("horizon", "Before the night shift"),
        "actions":   actions,
    }


# ── Cards ─────────────────────────────────────────────────────────────────────

def transform_assets(raw: dict) -> dict:
    """
    Transforms raw asset + asset_reading DB rows
    into AssetHealthCard component data.
    """
    assets = []
    for a in raw.get("assets", []):
        assets.append({
            "id":                       a["id"],
            "tag":                      a["tag"],
            "name":                     a["name"],
            "zone_id":                  a["zone_id"],
            "zone_name":                a.get("zone_name", ""),
            "asset_type":               a["asset_type"],
            "criticality":              a["criticality"],
            "health_score":             a["health_score"],
            "health_band":              a["health_band"],
            "alarm_state":              a["alarm_state"],
            "alarm_label":              a.get("alarm_label", ""),
            "trend":                    a["trend"],
            "trend_note":               a.get("trend_note", ""),
            "remaining_useful_life": {
                "value":      a.get("rul_value", 0),
                "unit":       a.get("rul_unit", "days"),
                "confidence": a.get("rul_confidence", 0),
                "basis":      a.get("rul_basis", ""),
            },
            "next_service": {
                "due":    a.get("next_service_due", ""),
                "type":   a.get("next_service_type", ""),
                "window": a.get("next_service_window", ""),
            },
            "hse_implication":          a.get("hse_implication", ""),
            "linked_permits":           a.get("linked_permits", 0),
            "linked_high_risk_permits": a.get("linked_high_risk_permits", 0),
            "readings":                 a.get("readings", []),
        })
    return {
        "as_of":    raw.get("as_of", datetime.now(timezone.utc).isoformat()),
        "freshness": raw.get("freshness", ""),
        "featured":  raw.get("featured"),
        "fleet":     raw.get("fleet", False),
        "assets":    assets,
    }


# ── KPI Tiles ─────────────────────────────────────────────────────────────────

def transform_kpis(raw: dict) -> dict:
    """
    Transforms computed KPI aggregates into KpiTiles component data.
    KPIs are computed from permit, flagged_job, worker, muster_event tables.
    """
    return {
        "as_of":  raw.get("as_of", datetime.now(timezone.utc).isoformat()),
        "kpis":   raw.get("kpis", []),
    }


# ── Map ───────────────────────────────────────────────────────────────────────

def transform_site_map(raw: dict) -> dict:
    """
    Transforms raw site geo data into SiteMapPanel component data.
    GeoJSON is passed through directly.
    """
    return {
        "variant":    raw.get("variant", "site"),
        "last_known": raw.get("last_known", []),
        "geo_json":   raw.get("geo_json", {}),
    }


def transform_worker_positions(raw: dict) -> dict:
    """
    Transforms worker rows into GeoJSON FeatureCollection.
    """
    features = []
    for w in raw.get("workers", []):
        coords = w.get("last_coordinates", {})
        if coords:
            features.append({
                "type": "Feature",
                "properties": {
                    "id":              w["id"],
                    "role":            w["role"],
                    "zone_id":         w["zone_id"],
                    "location_source": w["location_source"],
                },
                "geometry": {
                    "type":        "Point",
                    "coordinates": [coords.get("lng", 0), coords.get("lat", 0)],
                },
            })
    return {
        "as_of": raw.get("as_of", datetime.now(timezone.utc).isoformat()),
        "type":  "FeatureCollection",
        "features": features,
    }


# ── Helpers ───────────────────────────────────────────────────────────────────

def _seconds_to_label(seconds: int) -> str:
    m = seconds // 60
    s = seconds % 60
    return f"{m:02d}:{s:02d}"


# ── Transformer registry ──────────────────────────────────────────────────────

TRANSFORMERS = {
    "Table":               transform_flagged_jobs,
    "StatusBoard":         transform_muster,
    "DetailPanel":         transform_permits,
    "ReconciliationPanel": transform_reconciliation,
    "ActionCards":         transform_actions,
    "Cards":               transform_assets,
    "KpiTiles":            transform_kpis,
    "Map":                 transform_site_map,
}


def transform(viz_type: str, raw: dict) -> dict:
    """
    Main entry point — looks up the right transformer by viz_type.
    Called by the response builder.
    """
    fn = TRANSFORMERS.get(viz_type)
    if not fn:
        return raw   # pass through if no transformer registered
    return fn(raw)
