"""
Transformer utilities — shape raw DB rows into component data shapes.
All output uses camelCase to match React component prop expectations.
"""

from datetime import datetime, timezone


def _iso(dt) -> str:
    if dt is None:
        return datetime.now(timezone.utc).isoformat()
    if hasattr(dt, 'isoformat'):
        return dt.isoformat()
    return str(dt)


def _seconds_to_label(seconds: int) -> str:
    m = (seconds or 0) // 60
    s = (seconds or 0) % 60
    return f"{m:02d}:{s:02d}"



def _rows_to_dict(raw, key: str) -> dict:
    """
    Converts a list of asyncpg Records (from execute_sql) into
    a dict with the given key, so transformers can handle both
    direct DB query results (dict) and SQL executor results (list).
    """
    if isinstance(raw, list):
        rows = []
        for r in raw:
            rows.append(dict(r) if hasattr(r, 'keys') else r)
        return {key: rows}
    return raw if isinstance(raw, dict) else {}

# ── FlaggedJobsTable ──────────────────────────────────────────────────────────

def transform_flagged_jobs(raw) -> dict:
    raw = _rows_to_dict(raw, "flagged_jobs")

    # Handle generic SQL result shape {columns, rows}
    if isinstance(raw, dict) and "columns" in raw and "rows" in raw:
        cols = raw["columns"]
        jobs = []
        for row in raw["rows"]:
            r = dict(zip(cols, row))
            jobs.append({
                "id":           r.get("id", ""),
                "rank":         r.get("rank", 0),
                "permitId":     r.get("permit_id", r.get("id", "")),
                "permitType":   r.get("permit_type", ""),
                "title":        r.get("title", ""),
                "zoneId":       r.get("zone_id", ""),
                "zoneName":     r.get("zone_name", ""),
                "location":     r.get("location_description", ""),
                "bucket":       r.get("risk_bucket", ""),
                "severity":     r.get("severity", ""),
                "workersOnSite": int(r.get("workers_on_site", 0) or 0),
                "reason":       r.get("reason", ""),
                "detectedAt":   str(r.get("detected_at", "")),
                "evidence":     {},
            })
        return {
            "asOf":        _iso(None),
            "freshness":   "under 1 minute ago",
            "flaggedJobs": jobs,
        }

    jobs = []
    for row in raw.get("flagged_jobs", []):
        evidence = row.get("evidence", {})
        if isinstance(evidence, str):
            import json as _json
            try:
                evidence = _json.loads(evidence)
            except Exception:
                evidence = {}
        jobs.append({
            "id":           row.get("id", ""),
            "rank":         (row.get("rank") or 0),
            "permitId":     row.get("permit_id", ""),
            "permitType":   row.get("permit_type", ""),
            "title":        row.get("title", ""),
            "zoneId":       row.get("zone_id", ""),
            "zoneName":     row.get("zone_name", ""),
            "location":     row.get("location_description", ""),
            "bucket":       row.get("risk_bucket", ""),
            "severity":     row.get("severity", ""),
            "workersOnSite": (row.get("workers_on_site") or 0),
            "reason":       row.get("reason", ""),
            "detectedAt":   _iso(row.get("detected_at")),
            "evidence":     evidence,
        })
    return {
        "asOf":        raw.get("as_of", _iso(None)),
        "freshness":   raw.get("freshness", ""),
        "flaggedJobs": jobs,
    }


# ── MusterBoard ───────────────────────────────────────────────────────────────

def transform_muster(raw) -> dict:
    raw = _rows_to_dict(raw, 'muster_event') if isinstance(raw, list) else raw
    event  = raw.get("event", {})
    points = raw.get("points", [])

    zones = []
    for p in points:
        geo = p.get("geo_point") or []
        if isinstance(geo, str):
            import json as _j
            try:
                geo = _j.loads(geo)
            except Exception:
                geo = []
        zones.append({
            "id":          p["id"],
            "name":        p["name"],
            "accounted":   p.get("accounted_count", 0),
            "expected":    p.get("expected_count", 0),
            "capacity":    p.get("capacity", 0),
            "coversZones": p.get("covers_zones", []),
        })

    total     = event.get("total_expected", 0) or 0
    accounted = event.get("total_accounted", 0) or 0

    unaccounted_groups = []
    for z in zones:
        diff = z["expected"] - z["accounted"]
        if diff > 0:
            unaccounted_groups.append({
                "id":             z["id"],
                "count":          diff,
                "label":          f"Near {z['name']}",
                "lastKnown":      z["name"],
                "priority":       "high" if diff > 5 else "medium",
                "detail":         f"{diff} personnel not yet confirmed at {z['name']}",
                "lastKnownPoint": [0, 0],
            })

    return {
        "asOf":           _iso(event.get("as_of")),
        "freshness":      "live",
        "state":          event.get("state", "standby"),
        "stateLabel":     event.get("state_label", ""),
        "elapsedSeconds": event.get("elapsed_seconds", 0),
        "accounted":      accounted,
        "total":          total,
        "unaccounted":    total - accounted,
        "control": {
            "status":           event.get("state", "standby"),
            "mustered":         accounted,
            "mustering":        0,
            "notStarted":       0,
            "gateMovementsIn":  0,
            "gateMovementsOut": 0,
            "lockdownNote":     None,
            "durationLabel":    _seconds_to_label(event.get("elapsed_seconds", 0)),
        },
        "zones": zones,
        "unaccountedGroups": unaccounted_groups,
        "wardens": [],
        "projection": {
            "fullAccountingMinutes": event.get("projection_full_accounting_minutes", 0),
            "basis":                 event.get("projection_basis", ""),
            "confidence":            event.get("projection_confidence", 0),
        },
        "measuredCompletion": {
            "label":      event.get("measured_completion_label", ""),
            "seconds":    0,
            "target":     "",
            "basis":      "",
            "priorDrill": "",
            "note":       "",
        },
    }


# ── PermitDetailCard ──────────────────────────────────────────────────────────

def transform_permits(raw) -> dict:
    if isinstance(raw, list): raw = {}

    permit     = raw.get("permit", {})
    conditions = raw.get("conditions", [])
    gas_tests  = raw.get("gas_tests", [])
    entrants   = raw.get("entrants", [])
    log        = raw.get("entry_exit_log", [])

    latest_gas = gas_tests[-1] if gas_tests else {}

    # Transform conditions to camelCase
    conds = []
    for c in conditions:
        sources = c.get("sources", [])
        if isinstance(sources, str):
            import json as _j
            try:
                sources = _j.loads(sources)
            except Exception:
                sources = []
        conds.append({
            "id":       c["id"],
            "label":    c["label"],
            "state":    c["state"],
            "detail":   c["detail"],
            "sources":  sources,
            "freshness": c.get("freshness", ""),
        })

    # Transform entrants to camelCase
    ents = [{
        "id":        e["id"],
        "label":     e["label"],
        "company":   e["company"],
        "enteredAt": _iso(e.get("entered_at")),
        "inside":    e.get("is_inside", False),
    } for e in entrants]

    # Transform log to camelCase
    entry_log = [{
        "time":  _iso(l.get("event_time")),
        "actor": l.get("actor", ""),
        "event": l.get("event_description", ""),
    } for l in log]

    return {
        "asOf":      _iso(permit.get("valid_from")),
        "freshness": raw.get("freshness", ""),
        "featured":  permit.get("id"),
        "confinedSpace": {
            "id":        permit["id"],
            "type":      permit["permit_type"],
            "title":     permit["title"],
            "zoneId":    permit["zone_id"],
            "zoneName":  raw.get("zone_name", ""),
            "location":  permit.get("location_description", ""),
            "status":    permit["status"],
            "bucket":    permit["risk_bucket"],
            "validFrom": _iso(permit.get("valid_from")),
            "validTo":   _iso(permit.get("valid_to")),
            "issuer":    permit["issuer"],
            "workOrder": permit.get("work_order_id", ""),
            "conditions": conds,
            "occupancy": {
                "inside": sum(1 for e in entrants if e.get("is_inside")),
                "max":    raw.get("occupancy_max", 4),
            },
            "gasTest": {
                "lastTestMinutesAgo": raw.get("last_test_minutes_ago", 0),
                "intervalMinutes":    latest_gas.get("interval_minutes", 15),
                "dueInMinutes":       raw.get("due_in_minutes", 0),
                "lastReading":        latest_gas.get("result", ""),
                "readings": [{"time": _iso(g.get("reading_time")), "result": g["result"]} for g in gas_tests],
            },
            "standby": {
                "role":        (raw.get("standby") or {}).get("role", "Standby attendant"),
                "state":       (raw.get("standby") or {}).get("state", "unconfirmed"),
                "confirmedBy": (raw.get("standby") or {}).get("confirmedBy")
                               or (raw.get("standby") or {}).get("confirmed_by")
                               or [],
            },
            "entrants":    ents,
            "entryExitLog": entry_log,
        },
        "relatedPermits": [{
            "id":          r.get("id", ""),
            "type":        r.get("permit_type", ""),
            "zoneName":    r.get("zone_name", ""),
            "status":      r.get("status", ""),
            "validTo":     _iso(r.get("valid_to")),
            "bucket":      r.get("risk_bucket", ""),
            "flaggedJobId": r.get("flagged_job_id"),
        } for r in raw.get("related_permits", [])],
    }


# ── HeadcountReconciliationPanel ──────────────────────────────────────────────

def transform_reconciliation(raw) -> dict:
    if isinstance(raw, list): raw = {}

    run     = raw.get("run", {})
    sources = raw.get("sources", [])

    # Transform sources to camelCase
    srcs = [{
        "id":          s.get("id", ""),
        "sourceName":  s.get("source_name", ""),
        "recordCount": s.get("record_count", 0),
        "delta":       s.get("delta", 0),
        "reliability": s.get("reliability", ""),
        "note":        s.get("note", ""),
    } for s in sources]

    return {
        "asOf":          _iso(run.get("as_of")),
        "freshness":     raw.get("freshness", ""),
        "resolvedCount": run.get("resolved_count", 0),
        "resolvedLabel": raw.get("resolved_label", ""),
        "method":        run.get("method", ""),
        "auditLogged":   run.get("audit_logged", False),
        "auditNote":     raw.get("audit_note", "Reconciliation logged for audit."),
        "sources":       srcs,
        "exceptions":    raw.get("exceptions", {"total": 0, "groups": []}),
        "trustedFigures": raw.get("trusted_figures", [
            {"label": "People on site", "value": str(run.get("resolved_count", 0)), "source": "Gate access-control + location tags", "freshness": "live", "reconciled": True},
            {"label": "Open permits", "value": "—", "source": "Permit-to-work system", "freshness": "under 1 minute ago", "reconciled": False},
        ]),
    }


# ── PrioritizedActionCards ────────────────────────────────────────────────────

def transform_actions(raw) -> dict:
    raw = _rows_to_dict(raw, 'actions') if isinstance(raw, list) else raw

    actions = []
    for row in raw.get("actions", []):
        actions.append({
            "id":           row.get("id", ""),
            "rank":         (row.get("rank") or 0),
            "title":        row.get("title", ""),
            "riskBucket":   row.get("risk_bucket", ""),
            "priority":     row.get("priority", ""),
            "rationale":    row.get("rationale", ""),
            "owner":        row.get("owner", ""),
            "ownerNote":    row.get("owner_note"),
            "dueBy":        row.get("due_by", ""),
            "evidence":     row.get("evidence", []),
            "sources":      row.get("sources", []),
            "draftTask":    row.get("draft_task"),
            "targetSystem": row.get("target_system"),
            "status":       row.get("status", ""),
            "buttons":      ["Confirm", "Edit First"],
        })
    return {
        "asOf":      raw.get("as_of", _iso(None)),
        "freshness": raw.get("freshness", ""),
        "horizon":   raw.get("horizon", "Before the night shift"),
        "actions":   actions,
    }


# ── AssetHealthCard ───────────────────────────────────────────────────────────

def transform_assets(raw) -> dict:
    raw = _rows_to_dict(raw, 'assets') if isinstance(raw, list) else raw

    assets = []
    for a in raw.get("assets", []):
        assets.append({
            "id":          a["id"],
            "tag":         a["tag"],
            "name":        a["name"],
            "zoneId":      a["zone_id"],
            "zoneName":    a.get("zone_name", ""),
            "assetType":   a["asset_type"],
            "criticality": a["criticality"],
            "healthScore": a["health_score"],
            "healthBand":  a["health_band"],
            "alarmState":  a["alarm_state"],
            "alarmLabel":  a.get("alarm_label", ""),
            "trend":       a["trend"],
            "trendNote":   a.get("trend_note", ""),
            "remainingUsefulLife": {
                "value":      a.get("rul_value", 0),
                "unit":       a.get("rul_unit", "days"),
                "confidence": a.get("rul_confidence", 0),
                "basis":      a.get("rul_basis", ""),
            },
            "nextService": {
                "due":    str(a.get("next_service_due", "")),
                "type":   a.get("next_service_type", ""),
                "window": a.get("next_service_window", ""),
            },
            "hseImplication":        a.get("hse_implication", ""),
            "linkedPermits":         a.get("linked_permits", 0),
            "linkedHighRiskPermits": a.get("linked_high_risk_permits", 0),
            "readings":              a.get("readings", []),
        })
    return {
        "asOf":      raw.get("as_of", _iso(None)),
        "freshness": raw.get("freshness", ""),
        "featured":  raw.get("featured"),
        "fleet":     raw.get("fleet", False),
        "assets":    assets,
    }


# ── KpiTiles ──────────────────────────────────────────────────────────────────

def transform_kpis(raw: dict) -> dict:
    return {
        "asOf": raw.get("as_of", _iso(None)),
        "kpis": raw.get("kpis", []),
    }


# ── SiteMapPanel ──────────────────────────────────────────────────────────────

def transform_site_map(raw, variant: str = "site") -> dict:
    if isinstance(raw, list): return {}

    if raw.get("type") == "FeatureCollection":
        return raw  # Return GeoJSON directly — SiteMapPanel reads .features
    return raw.get("geo_json", {})


# ── Transformer registry ──────────────────────────────────────────────────────

TRANSFORMERS = {
    "FlaggedJobsTable":             transform_flagged_jobs,
    "MusterBoard":                  transform_muster,
    "MusterLocationMap":            transform_muster,
    "PermitDetailCard":             transform_permits,
    "HeadcountReconciliationPanel": transform_reconciliation,
    "PrioritizedActionCards":       transform_actions,
    "AssetHealthCard":              transform_assets,
    "SiteMapPanel":                 transform_site_map,
    "IndoorViewer":                 transform_site_map,
    # Legacy
    "Table":               transform_flagged_jobs,
    "StatusBoard":         transform_muster,
    "DetailPanel":         transform_permits,
    "ReconciliationPanel": transform_reconciliation,
    "ActionCards":         transform_actions,
    "Cards":               transform_assets,
    "KpiTiles":            transform_kpis,
    "Map":                 transform_site_map,
}


def transform(viz_type: str, raw: dict, variant: str = None) -> dict:
    fn = TRANSFORMERS.get(viz_type)
    if not fn:
        return raw
    if viz_type in ("SiteMapPanel", "Map", "IndoorViewer"):
        return transform_site_map(raw, variant=variant or "site")
    return fn(raw)