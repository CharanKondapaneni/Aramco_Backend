"""
Database query functions using asyncpg directly.
Each function acquires its own connection from the pool.
This allows true parallel execution via asyncio.gather.

Connection: postgresql://admin:admin@localhost:5432/tracklynk_demo
"""

from datetime import datetime, timezone
import asyncpg
from app.core.headers import PersonaContext


# ── Helpers ───────────────────────────────────────────────────────────────────

import json as _json

def _parse_jsonb(val):
    """
    asyncpg returns JSONB as native Python objects (list/dict).
    In some edge cases it may return a string — handle both.
    """
    if val is None:
        return None
    if isinstance(val, str):
        try:
            return _json.loads(val)
        except Exception:
            return None
    # Already a Python object (list or dict) — return as is
    return val

def _iso(val) -> str | None:
    if val is None:
        return None
    if hasattr(val, "isoformat"):
        return val.isoformat()
    return str(val)


def _records_to_dicts(records: list[asyncpg.Record]) -> list[dict]:
    return [dict(r) for r in records]


def _record_to_dict(record: asyncpg.Record | None) -> dict | None:
    return dict(record) if record else None


# ── Persona Signal Filter Map ─────────────────────────────────────────────────
# Maps persona_id to the signal ID prefix they should see.
# No DB changes needed — filtered purely in the backend by signal ID prefix.

PERSONA_SIGNAL_PREFIX = {
    "hse-gm":           "SIG-ARAMCO-HSE-",
    "shift-supervisor":  "SIG-ARAMCO-SUP-",
    "permit-issuer":     "SIG-ARAMCO-ISS-",
    "complex-manager":   "SIG-ARAMCO-CM-",
}

# ── Persona KPI Definitions ───────────────────────────────────────────────────
# Maps persona_id to which KPI IDs they see and how to compute them.

PERSONA_KPI_IDS = {
    "hse-gm":          ["active_permits", "high_risk_permits", "people_on_site",
                        "jobs_without_permit", "trcr", "near_misses",
                        "overdue_actions", "muster_time"],
    "shift-supervisor": ["my_people", "my_permits", "my_flagged", "conditions_due",
                        "assigned", "muster_point", "awaiting_verification",
                        "consecutive_shift"],
    "permit-issuer":    ["open_permits", "issued_today", "expiring", "lapsed_occupied",
                        "scope_breach", "awaiting_verification",
                        "late_close_rate", "high_risk_open"],
    "complex-manager":  ["site_population", "open_exposures", "trcr", "turnaround",
                        "muster_time", "surge", "overdue_actions", "audit_ready"],
}


# ── Signals ───────────────────────────────────────────────────────────────────

async def get_signals(pool: asyncpg.Pool, ctx: PersonaContext) -> list:
    """
    Returns signals filtered by persona.
    Each persona sees only their relevant signals based on signal ID prefix.
    No DB schema changes needed — filtered in backend.
    """
    prefix = PERSONA_SIGNAL_PREFIX.get(ctx.persona_id, "SIG-ARAMCO-HSE-")

    async with pool.acquire() as conn:
        rows = await conn.fetch("""
            SELECT
                id, signal_type, title, description,
                impact, severity, risk_bucket,
                recommended_action, sources,
                detected_at, trend, confidence_score
            FROM signal
            WHERE id LIKE $1
            ORDER BY confidence_score DESC
        """, f"{prefix}%")

        signals = []
        for r in rows:
            signals.append({
                "id":                 r["id"],
                "signal_type":        r["signal_type"],
                "title":              r["title"],
                "description":        r["description"],
                "impact":             r["impact"],
                "severity":           r["severity"],
                "risk_bucket":        r["risk_bucket"],
                "recommended_action": r["recommended_action"],
                "sources":            r["sources"] or [],
                "detected_at":        _iso(r["detected_at"]),
                "trend":              r["trend"],
                "confidence":         r["confidence_score"],
                "action":             r["recommended_action"],
                "chipText":           r["recommended_action"],
            })
        return signals


# ── KPIs ──────────────────────────────────────────────────────────────────────

async def get_kpis(pool: asyncpg.Pool, ctx: PersonaContext) -> list:
    """
    Compute KPIs from live DB tables — persona-aware.
    Each persona sees different KPIs relevant to their role.
    No DB schema changes — filtered and computed in backend.
    """
    persona = ctx.persona_id

    async with pool.acquire() as conn:

        # ── Shared computations used across personas ───────────────────────
        active_permits = await conn.fetchval(
            "SELECT COUNT(*) FROM permit WHERE status = 'valid'"
        ) or 0

        high_risk = await conn.fetchval(
            "SELECT COUNT(*) FROM permit WHERE status = 'valid' AND risk_bucket IN ('safety', 'health')"
        ) or 0

        people = await conn.fetchval(
            "SELECT COUNT(*) FROM worker"
        ) or 0

        flagged = await conn.fetchval(
            "SELECT COUNT(*) FROM flagged_job"
        ) or 0

        overdue = await conn.fetchval(
            "SELECT COUNT(*) FROM action WHERE status != 'done'"
        ) or 0

        muster_label = await conn.fetchval(
            "SELECT measured_completion_label FROM muster_event ORDER BY as_of DESC LIMIT 1"
        ) or "N/A"

        muster_accounted = await conn.fetchval(
            "SELECT total_accounted FROM muster_event ORDER BY as_of DESC LIMIT 1"
        ) or 0

        muster_expected = await conn.fetchval(
            "SELECT total_expected FROM muster_event ORDER BY as_of DESC LIMIT 1"
        ) or 0

        safety_count = await conn.fetchval("""
            SELECT COUNT(*) FROM signal
            WHERE risk_bucket = 'safety'
            AND detected_at >= NOW() - INTERVAL '200 days'
        """) or 0

        near_misses = await conn.fetchval("""
            SELECT COUNT(*) FROM signal
            WHERE signal_type = 'near_miss'
            AND detected_at >= date_trunc('month', NOW())
        """) or 0

        worker_hours = people * 8
        trcr_rate = round((safety_count / worker_hours) * 200000, 2) if worker_hours else 0.0

        # ── Permit-issuer specific ─────────────────────────────────────────
        expiring_soon = await conn.fetchval("""
            SELECT COUNT(*) FROM permit
            WHERE status = 'valid'
            AND valid_to <= NOW() + INTERVAL '1 hour'
        """) or 0

        lapsed_occupied = await conn.fetchval("""
            SELECT COUNT(*) FROM flagged_job fj
            JOIN permit p ON p.id = fj.permit_id
            WHERE p.status = 'expired'
            AND fj.workers_on_site > 0
        """) or 0

        scope_breach = await conn.fetchval("""
            SELECT COUNT(*) FROM flagged_job fj
            JOIN permit p ON p.id = fj.permit_id
            WHERE p.status != 'expired'
            AND fj.severity = 'critical'
        """) or 0

        awaiting_verification = await conn.fetchval(
            "SELECT COUNT(*) FROM permit WHERE status = 'pending_verification'"
        ) or 0

        issued_today = await conn.fetchval("""
            SELECT COUNT(*) FROM permit
            WHERE valid_from >= date_trunc('day', NOW())
        """) or 0

        # ── Shift-supervisor specific (Units Z2 + Z3) ──────────────────────
        my_zones = ['Z2', 'Z3']
        my_people = await conn.fetchval(
            "SELECT COUNT(*) FROM worker WHERE zone_id = ANY($1::text[])", my_zones
        ) or 0

        my_permits = await conn.fetchval(
            "SELECT COUNT(*) FROM permit WHERE zone_id = ANY($1::text[]) AND status = 'valid'", my_zones
        ) or 0

        my_flagged = await conn.fetchval(
            "SELECT COUNT(*) FROM flagged_job WHERE zone_id = ANY($1::text[])", my_zones
        ) or 0

        conditions_due = await conn.fetchval("""
            SELECT COUNT(*) FROM gas_test_reading gtr
            JOIN permit p ON p.id = gtr.permit_id
            WHERE p.zone_id = ANY($1::text[])
            AND p.status = 'valid'
            AND gtr.reading_time <= NOW() - (gtr.interval_minutes - 5 || ' minutes')::INTERVAL
        """, my_zones) or 0

        assigned_actions = await conn.fetchval(
            "SELECT COUNT(*) FROM action WHERE status != 'done' AND owner ILIKE '%supervisor%'"
        ) or 0

        # ── Complex-manager specific ───────────────────────────────────────
        open_exposures = await conn.fetchval("""
            SELECT COUNT(*) FROM flagged_job
            WHERE severity = 'critical'
        """) or 0

        # ── Build KPI list per persona ─────────────────────────────────────

        if persona == "hse-gm":
            return [
                { "id": "active_permits",    "label": "Active Permits Today",                        "value": str(active_permits),    "trend": "Turnaround day",                           "direction": "up",     "positive": False, "freshness": "2 minutes ago",        "chipText": "Show me every job in a hazard zone without a valid permit." },
                { "id": "high_risk_permits", "label": "High-Risk Permits",                           "value": str(high_risk),         "trend": "Hot work, confined space, work at height",  "direction": "up",     "positive": False, "freshness": "2 minutes ago",        "chipText": "What is the riskiest job on site right now?" },
                { "id": "people_on_site",    "label": "People On Site Now",                          "value": f"{people:,}",          "trend": "Reconciled from 3 sources",                 "direction": "up",     "positive": True,  "freshness": "12 minutes ago",       "chipText": "Can I trust these numbers?" },
                { "id": "jobs_without_permit","label": "Jobs in a Hazard Zone Without a Valid Permit","value": str(flagged),          "trend": "Flagged now",                               "direction": "watch",  "positive": False, "freshness": "under 1 minute ago",   "chipText": "Show me every job in a hazard zone without a valid permit." },
                { "id": "trcr",              "label": "Total Recordable Case Rate",                  "value": str(trcr_rate),         "trend": "Per 200,000 work hours",                    "direction": "stable", "positive": True,  "freshness": "2 days ago",           "chipText": None },
                { "id": "near_misses",       "label": "Near-Misses Reported This Month",             "value": str(near_misses),       "trend": "Reporting rising — severity falling",        "direction": "up",     "positive": True,  "freshness": "2 days ago",           "chipText": None },
                { "id": "overdue_actions",   "label": "Overdue Safety Actions",                      "value": str(overdue),           "trend": "Past due and still open",                   "direction": "watch",  "positive": False, "freshness": "yesterday, 17:00",     "chipText": "What should I act on before the night shift?" },
                { "id": "muster_time",       "label": "Muster Completion Time, Last Drill",          "value": muster_label,           "trend": "First instrumented drill",                  "direction": "watch",  "positive": True,  "freshness": "today's drill",       "chipText": "How long did the last muster actually take?" },
            ]

        elif persona == "shift-supervisor":
            return [
                { "id": "my_people",            "label": "People On My Units",                    "value": str(my_people),           "trend": "Units 2 and 3",                    "direction": "up",    "positive": True,  "freshness": "under 1 minute ago", "chipText": "Who are the people on my units right now?" },
                { "id": "my_permits",           "label": "Open Permits On My Units",              "value": str(my_permits),          "trend": "Active right now",                 "direction": "up",    "positive": False, "freshness": "2 minutes ago",      "chipText": "Show me all open permits on my units." },
                { "id": "my_flagged",           "label": "My Jobs Outside Permit Conditions",     "value": str(my_flagged),          "trend": "Needs immediate attention",        "direction": "watch", "positive": False, "freshness": "under 1 minute ago", "chipText": "Show me the flagged jobs on my units." },
                { "id": "conditions_due",       "label": "Permit Conditions Due Within 15 Min",   "value": str(conditions_due),      "trend": "Gas tests and checks",             "direction": "watch", "positive": False, "freshness": "live",               "chipText": "Which permit conditions are due right now?" },
                { "id": "assigned",             "label": "Actions Assigned To Me",                "value": str(assigned_actions),    "trend": "From the HSE GM",                  "direction": "watch", "positive": False, "freshness": "5 minutes ago",      "chipText": "What actions have been assigned to me?" },
                { "id": "muster_point",         "label": "My Muster Point",                       "value": f"{muster_accounted} / {muster_expected}", "trend": "Accounted / Expected", "direction": "stable", "positive": True, "freshness": "live",          "chipText": "Show me the muster status for my units." },
                { "id": "awaiting_verification","label": "Permits Awaiting Verification",         "value": str(awaiting_verification),"trend": "Pending sign-off",               "direction": "watch", "positive": False, "freshness": "2 minutes ago",      "chipText": "Which permits are awaiting my verification?" },
                { "id": "consecutive_shift",    "label": "Crew On A Second Consecutive Shift",    "value": "2",                      "trend": "Fatigue risk",                     "direction": "watch", "positive": False, "freshness": "start of shift",     "chipText": "Who is on their second consecutive shift?" },
            ]

        elif persona == "permit-issuer":
            late_close_rate = round((lapsed_occupied / active_permits * 100), 0) if active_permits else 0
            return [
                { "id": "open_permits",         "label": "Open Permits Today",                    "value": str(active_permits),      "trend": "Turnaround day",                   "direction": "up",    "positive": False, "freshness": "2 minutes ago",      "chipText": "Show me all open permits right now." },
                { "id": "issued_today",         "label": "Issued Since 05:00",                    "value": str(issued_today),        "trend": "This shift",                       "direction": "up",    "positive": True,  "freshness": "2 minutes ago",      "chipText": "Show me permits issued since 05:00." },
                { "id": "expiring",             "label": "Expiring Within The Hour",              "value": str(expiring_soon),       "trend": "Need extension or stop-work",      "direction": "watch", "positive": False, "freshness": "live",               "chipText": "Which permits are expiring within the hour?" },
                { "id": "lapsed_occupied",      "label": "Lapsed With Workers On Location",       "value": str(lapsed_occupied),     "trend": "Critical — stop work required",    "direction": "watch", "positive": False, "freshness": "under 1 minute ago", "chipText": "Show me lapsed permits with workers still on location." },
                { "id": "scope_breach",         "label": "Permits Used Outside Their Scope",      "value": str(scope_breach),        "trend": "Zone or activity breach",          "direction": "watch", "positive": False, "freshness": "under 1 minute ago", "chipText": "Show me permits being used outside their authorized scope." },
                { "id": "awaiting_verification","label": "Awaiting Verification",                 "value": str(awaiting_verification),"trend": "Pending sign-off",               "direction": "watch", "positive": False, "freshness": "2 minutes ago",      "chipText": "Which permits are awaiting my verification?" },
                { "id": "late_close_rate",      "label": "Late Close Or Extend Rate",             "value": f"{int(late_close_rate)}%","trend": "This turnaround vs last",        "direction": "watch", "positive": False, "freshness": "2 days ago",         "chipText": None },
                { "id": "high_risk_open",       "label": "High-Risk Permits Open",               "value": str(high_risk),           "trend": "Hot work and confined space",      "direction": "up",    "positive": False, "freshness": "2 minutes ago",      "chipText": "Show me all high-risk permits currently open." },
            ]

        elif persona == "complex-manager":
            return [
                { "id": "site_population",  "label": "Reconciled Site Population",        "value": f"{people:,}",       "trend": "Reconciled headcount",              "direction": "up",    "positive": True,  "freshness": "12 minutes ago",     "chipText": "Can I trust the site population figure?" },
                { "id": "open_exposures",   "label": "Open High-Consequence Exposures",   "value": str(open_exposures), "trend": "Critical flagged jobs",             "direction": "watch", "positive": False, "freshness": "under 1 minute ago", "chipText": "Show me the open high-consequence exposures." },
                { "id": "trcr",             "label": "Site Recordable Case Rate",         "value": str(trcr_rate),      "trend": "Per 200,000 work hours",            "direction": "stable","positive": True,  "freshness": "2 days ago",         "chipText": None },
                { "id": "turnaround",       "label": "Turnaround Progress",               "value": "Day 11 / 24",       "trend": "On schedule",                       "direction": "stable","positive": True,  "freshness": "daily",              "chipText": "What is the current turnaround schedule status?" },
                { "id": "muster_time",      "label": "Muster Completion, Last Drill",     "value": muster_label,        "trend": "First instrumented drill",          "direction": "watch", "positive": True,  "freshness": "today's drill",     "chipText": "How did the last muster drill perform?" },
                { "id": "surge",            "label": "Projected Contractor Peak",         "value": "3,000",             "trend": "Arriving over next 48 hours",       "direction": "up",    "positive": False, "freshness": "daily forecast",     "chipText": "Tell me about the contractor surge." },
                { "id": "overdue_actions",  "label": "Overdue Safety Actions",            "value": str(overdue),        "trend": "Past due and still open",           "direction": "watch", "positive": False, "freshness": "yesterday, 17:00",   "chipText": "What safety actions are overdue?" },
                { "id": "audit_ready",      "label": "Figures With A Logged Evidence Trail","value": "100%",            "trend": "All reconciled figures auditable",  "direction": "stable","positive": True,  "freshness": "live",               "chipText": None },
            ]

        else:
            # Default to hse-gm KPIs for unknown personas
            return [
                { "id": "active_permits", "label": "Active Permits Today", "value": str(active_permits), "trend": "", "direction": "up", "positive": False, "freshness": "2 minutes ago", "chipText": None },
            ]


# ── Flagged Jobs ──────────────────────────────────────────────────────────────

async def get_flagged_jobs(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    async with pool.acquire() as conn:
        rows = await conn.fetch("""
            SELECT
                fj.id, fj.rank, fj.permit_id, fj.permit_type,
                fj.title, fj.zone_id, z.name AS zone_name,
                fj.location_description, fj.risk_bucket,
                fj.severity, fj.workers_on_site,
                fj.reason, fj.detected_at, fj.evidence
            FROM flagged_job fj
            LEFT JOIN zone z ON z.id = fj.zone_id
            ORDER BY fj.rank ASC
        """)

        jobs = []
        for r in rows:
            jobs.append({
                "id":                   r["id"],
                "rank":                 r["rank"],
                "permit_id":            r["permit_id"],
                "permit_type":          r["permit_type"],
                "title":                r["title"],
                "zone_id":              r["zone_id"],
                "zone_name":            r["zone_name"] or "",
                "location_description": r["location_description"] or "",
                "risk_bucket":          r["risk_bucket"],
                "severity":             r["severity"],
                "workers_on_site":      r["workers_on_site"],
                "reason":               r["reason"],
                "detected_at":          _iso(r["detected_at"]),
                "evidence":             r["evidence"] or {},
            })

        return {
            "as_of":        datetime.now(timezone.utc).isoformat(),
            "freshness":    "under 1 minute ago",
            "flagged_jobs": jobs,
        }


# ── Site Data ─────────────────────────────────────────────────────────────────

async def get_site_data(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    async with pool.acquire() as conn:
        zone_rows = await conn.fetch("""
            SELECT id, name, short_name, hazard_level, zone_type,
                   plan_x, plan_y, plan_w, plan_h,
                   occupancy_capacity, geo_polygon
            FROM zone ORDER BY name
        """)

        zones = []
        for r in zone_rows:
            permits     = await conn.fetchval(
                "SELECT COUNT(*) FROM permit WHERE zone_id = $1 AND status = 'valid'", r["id"]
            ) or 0
            high_risk   = await conn.fetchval(
                "SELECT COUNT(*) FROM permit WHERE zone_id = $1 AND status = 'valid' AND risk_bucket IN ('safety','health')", r["id"]
            ) or 0
            workers     = await conn.fetchval(
                "SELECT COUNT(*) FROM worker WHERE zone_id = $1", r["id"]
            ) or 0

            zones.append({
                "id":               r["id"],
                "name":             r["name"],
                "short_name":       r["short_name"],
                "hazard_level":     r["hazard_level"],
                "permits":          permits,
                "high_risk_permits": high_risk,
                "people":           workers,
                "geo_polygon":      r["geo_polygon"],
            })

        fj_rows = await conn.fetch("""
            SELECT fj.id, fj.rank, fj.permit_id, fj.permit_type,
                   fj.title, fj.zone_id, z.name AS zone_name,
                   fj.location_description, fj.risk_bucket,
                   fj.severity, fj.workers_on_site,
                   fj.reason, fj.detected_at, fj.evidence
            FROM flagged_job fj
            LEFT JOIN zone z ON z.id = fj.zone_id
            ORDER BY fj.rank
        """)

        flagged_jobs = []
        for r in fj_rows:
            flagged_jobs.append({
                "id":                   r["id"],
                "rank":                 r["rank"],
                "permit_id":            r["permit_id"],
                "permit_type":          r["permit_type"],
                "title":                r["title"],
                "zone_id":              r["zone_id"],
                "zone_name":            r["zone_name"] or "",
                "location_description": r["location_description"] or "",
                "risk_bucket":          r["risk_bucket"],
                "severity":             r["severity"],
                "workers_on_site":      r["workers_on_site"],
                "reason":               r["reason"],
                "detected_at":          _iso(r["detected_at"]),
                "evidence":             r["evidence"] or {},
            })

        return {
            "as_of":        datetime.now(timezone.utc).isoformat(),
            "freshness":    "under 1 minute ago",
            "zones":        zones,
            "flaggedJobs":  flagged_jobs,
        }


# ── Site Geo ──────────────────────────────────────────────────────────────────

async def get_site_geo(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    async with pool.acquire() as conn:
        features = []

        zone_rows = await conn.fetch(
            "SELECT id, name, hazard_level, geo_polygon FROM zone WHERE geo_polygon IS NOT NULL"
        )
        for r in zone_rows:
            features.append({
                "type": "Feature",
                "properties": {
                    "kind":   "zone",
                    "id":     r["id"],
                    "name":   r["name"],
                    "hazard": r["hazard_level"],
                },
                "geometry": _parse_jsonb(r["geo_polygon"]),
            })

        fj_rows = await conn.fetch(
            "SELECT id, rank, title, severity, plan_x, plan_y FROM flagged_job ORDER BY rank"
        )
        for r in fj_rows:
            if r["plan_x"] and r["plan_y"]:
                features.append({
                    "type": "Feature",
                    "properties": {
                        "kind":     "flagged",
                        "id":       r["id"],
                        "rank":     r["rank"],
                        "title":    r["title"],
                        "severity": r["severity"],
                    },
                    "geometry": {
                        "type":        "Point",
                        "coordinates": [float(r["plan_x"]), float(r["plan_y"])],
                    },
                })

        return {"type": "FeatureCollection", "features": features}


# ── Worker Positions ──────────────────────────────────────────────────────────

async def get_worker_positions(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    async with pool.acquire() as conn:
        rows = await conn.fetch("""
            SELECT id, tag_number, zone_id, role,
                   location_source, last_coordinates, last_seen
            FROM worker WHERE last_coordinates IS NOT NULL
        """)

        features = []
        for r in rows:
            coords_raw = _parse_jsonb(r["last_coordinates"])
            if coords_raw is not None:
                # DB stores as [lat, lng] array
                if isinstance(coords_raw, list) and len(coords_raw) >= 2:
                    lat, lng = coords_raw[0], coords_raw[1]
                elif isinstance(coords_raw, dict):
                    lng = coords_raw.get("lng", coords_raw.get("x", 0))
                    lat = coords_raw.get("lat", coords_raw.get("y", 0))
                else:
                    lng, lat = 0, 0

                features.append({
                    "type": "Feature",
                    "properties": {
                        "id":              r["id"],
                        "tag_number":      r["tag_number"],
                        "zone_id":         r["zone_id"],
                        "role":            r["role"],
                        "location_source": r["location_source"],
                        "last_seen":       _iso(r["last_seen"]),
                    },
                    "geometry": {
                        "type":        "Point",
                        "coordinates": [lng, lat],
                    },
                })

        return {
            "as_of":    datetime.now(timezone.utc).isoformat(),
            "workers":  features,
        }


# ── Permits ───────────────────────────────────────────────────────────────────

async def get_permits(pool: asyncpg.Pool, ctx: PersonaContext, scope: str = "all") -> dict:
    async with pool.acquire() as conn:
        permit = await conn.fetchrow("""
            SELECT p.*, z.name AS zone_name
            FROM permit p
            LEFT JOIN zone z ON z.id = p.zone_id
            WHERE p.permit_type = 'confined-space'
            ORDER BY p.valid_from DESC LIMIT 1
        """)
        if not permit:
            return {}

        pid = permit["id"]

        conditions = await conn.fetch("""
            SELECT id, label, state, detail, sources
            FROM permit_condition WHERE permit_id = $1 ORDER BY id
        """, pid)

        gas_tests = await conn.fetch("""
            SELECT reading_time, result, interval_minutes
            FROM gas_test_reading WHERE permit_id = $1 ORDER BY reading_time DESC
        """, pid)

        entrants = await conn.fetch("""
            SELECT id, label, company, entered_at, is_inside
            FROM permit_entrant WHERE permit_id = $1 ORDER BY entered_at
        """, pid)

        log = await conn.fetch("""
            SELECT event_time, actor, event_description, note
            FROM permit_entry_exit_log WHERE permit_id = $1 ORDER BY event_time
        """, pid)

        related = await conn.fetch("""
            SELECT p.id, p.permit_type, z.name AS zone_name,
                   p.status, p.valid_to, p.risk_bucket, p.flagged_job_id
            FROM permit p
            LEFT JOIN zone z ON z.id = p.zone_id
            WHERE p.id != $1 ORDER BY p.valid_from DESC LIMIT 5
        """, pid)

        latest_gas    = dict(gas_tests[0]) if gas_tests else {}
        interval_mins = latest_gas.get("interval_minutes", 15)

        return {
            "permit": dict(permit),
            "zone_name": permit["zone_name"] or "",
            "conditions": [
                {
                    "id":      r["id"],
                    "label":   r["label"],
                    "state":   r["state"],
                    "detail":  r["detail"],
                    "sources": r["sources"] or [],
                }
                for r in conditions
            ],
            "gas_tests": [
                {
                    "reading_time":     _iso(r["reading_time"]),
                    "result":           r["result"],
                    "interval_minutes": r["interval_minutes"],
                }
                for r in gas_tests
            ],
            "entrants": [
                {
                    "id":         r["id"],
                    "label":      r["label"],
                    "company":    r["company"],
                    "entered_at": _iso(r["entered_at"]),
                    "is_inside":  r["is_inside"],
                }
                for r in entrants
            ],
            "entry_exit_log": [
                {
                    "event_time":        _iso(r["event_time"]),
                    "actor":             r["actor"],
                    "event_description": r["event_description"],
                    "note":              r["note"],
                }
                for r in log
            ],
            "related_permits": [
                {
                    "id":             r["id"],
                    "permit_type":    r["permit_type"],
                    "zone_name":      r["zone_name"] or "",
                    "status":         r["status"],
                    "valid_to":       _iso(r["valid_to"]),
                    "risk_bucket":    r["risk_bucket"],
                    "flagged_job_id": r["flagged_job_id"],
                }
                for r in related
            ],
            "freshness":           "under 1 minute ago",
            "occupancy_max":       4,
            "last_test_minutes_ago": 14,
            "due_in_minutes":      max(0, interval_mins - 14),
            "standby": {"role": "Standby person", "state": "unconfirmed", "confirmed_by": []},
        }


# ── Indoor Geo ────────────────────────────────────────────────────────────────

async def get_indoor_geo(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    async with pool.acquire() as conn:
        permit_id = await conn.fetchval("""
            SELECT id FROM permit
            WHERE permit_type = 'confined-space'
            ORDER BY valid_from DESC LIMIT 1
        """)

        features = []
        if permit_id:
            rows = await conn.fetch("""
                SELECT id, label, state FROM permit_condition WHERE permit_id = $1
            """, permit_id)
            for r in rows:
                features.append({
                    "type": "Feature",
                    "properties": {
                        "kind":  "fixture",
                        "name":  r["label"],
                        "state": r["state"],
                    },
                    "geometry": None,
                })

        return {"type": "FeatureCollection", "features": features}


# ── Reconciliation ────────────────────────────────────────────────────────────

async def get_reconciliation(pool: asyncpg.Pool, ctx: PersonaContext, scope: str = "all") -> dict:
    async with pool.acquire() as conn:
        run = await conn.fetchrow("""
            SELECT id, as_of, resolved_count, method, audit_logged
            FROM reconciliation_run ORDER BY as_of DESC LIMIT 1
        """)
        if not run:
            return {}

        sources = await conn.fetch("""
            SELECT id, source_name, record_count, delta, reliability, note
            FROM reconciliation_source
            WHERE reconciliation_id = $1 ORDER BY source_name
        """, run["id"])

        result_sources  = []
        trusted_figures = []
        exceptions      = []

        for r in sources:
            s = {
                "id":           str(r["id"]),
                "source_name":  r["source_name"],
                "record_count": r["record_count"],
                "delta":        r["delta"],
                "reliability":  r["reliability"],
                "note":         r["note"],
            }
            result_sources.append(s)

            figure = {
                "label":      r["source_name"],
                "value":      str(r["record_count"]),
                "source":     r["source_name"],
                "freshness":  "latest",
                "reconciled": r["delta"] == 0,
            }
            if scope == "permit":
                if "permit" in r["source_name"].lower():
                    trusted_figures.append(figure)
            else:
                trusted_figures.append(figure)

            if r["delta"] and r["delta"] != 0:
                exceptions.append({
                    "id":         str(r["id"]),
                    "count":      abs(r["delta"]),
                    "label":      f"Unmatched in {r['source_name']}",
                    "priority":   "high" if abs(r["delta"]) > 10 else "medium",
                    "last_known": "Unknown",
                })

        return {
            "run": {
                "id":             str(run["id"]),
                "as_of":          _iso(run["as_of"]),
                "resolved_count": run["resolved_count"],
                "method":         run["method"],
                "audit_logged":   run["audit_logged"],
            },
            "sources":         result_sources,
            "exceptions":      exceptions,
            "trusted_figures": trusted_figures,
            "freshness":       "12 minutes ago",
            "resolved_label":  f"{run['resolved_count']} reconciled",
        }


# ── Muster ────────────────────────────────────────────────────────────────────

async def get_muster(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    async with pool.acquire() as conn:
        event = await conn.fetchrow("""
            SELECT id, as_of, alarm_started_at, state, state_label,
                   elapsed_seconds, total_accounted, total_expected,
                   projection_full_accounting_minutes, projection_basis,
                   projection_confidence, measured_completion_label
            FROM muster_event ORDER BY as_of DESC LIMIT 1
        """)
        if not event:
            return {}

        points = await conn.fetch("""
            SELECT id, name, covers_zones, capacity,
                   accounted_count, expected_count, radius_m, geo_point
            FROM muster_point ORDER BY name
        """)

        zones              = []
        unaccounted_groups = []

        for r in points:
            zones.append({
                "id":              r["id"],
                "name":            r["name"],
                "covers_zones":    r["covers_zones"] or [],
                "capacity":        r["capacity"],
                "accounted_count": r["accounted_count"],
                "expected_count":  r["expected_count"],
            })

            if r["accounted_count"] < r["expected_count"]:
                diff = r["expected_count"] - r["accounted_count"]
                geo_raw = _parse_jsonb(r["geo_point"]) or {}
                # geo_point can be list [lng, lat] or dict {lng, lat}
                if isinstance(geo_raw, list) and len(geo_raw) >= 2:
                    last_known_point = [geo_raw[0], geo_raw[1]]
                elif isinstance(geo_raw, dict):
                    last_known_point = [
                        geo_raw.get("lng", geo_raw.get("x", 0)),
                        geo_raw.get("lat", geo_raw.get("y", 0)),
                    ]
                else:
                    last_known_point = [0, 0]

                unaccounted_groups.append({
                    "id":               r["id"],
                    "count":            diff,
                    "label":            f"Near {r['name']}",
                    "last_known":       r["name"],
                    "priority":         "high" if diff > 5 else "medium",
                    "detail":           f"{diff} personnel not yet confirmed at {r['name']}",
                    "last_known_point": last_known_point,
                })

        total_accounted = event["total_accounted"] or 0
        total_expected  = event["total_expected"]  or 0

        return {
            "event": {
                "as_of":                              _iso(event["as_of"]),
                "alarm_started_at":                   _iso(event["alarm_started_at"]),
                "state":                              event["state"],
                "state_label":                        event["state_label"],
                "elapsed_seconds":                    event["elapsed_seconds"] or 0,
                "total_accounted":                    total_accounted,
                "total_expected":                     total_expected,
                "projection_full_accounting_minutes": event["projection_full_accounting_minutes"] or 0,
                "projection_basis":                   event["projection_basis"] or "",
                "projection_confidence":              event["projection_confidence"] or 0,
                "measured_completion_label":          event["measured_completion_label"] or "",
            },
            "points":             zones,
            "unaccounted_groups": unaccounted_groups,
        }


# ── Actions ───────────────────────────────────────────────────────────────────

async def get_actions(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    async with pool.acquire() as conn:
        rows = await conn.fetch("""
            SELECT id, rank, title, risk_bucket, priority,
                   rationale, owner, owner_note, due_by,
                   evidence, sources, draft_task, target_system, status
            FROM action WHERE status != 'done' ORDER BY rank ASC
        """)

        actions = []
        for r in rows:
            actions.append({
                "id":            r["id"],
                "rank":          r["rank"],
                "title":         r["title"],
                "risk_bucket":   r["risk_bucket"],
                "priority":      r["priority"],
                "rationale":     r["rationale"],
                "owner":         r["owner"],
                "owner_note":    r["owner_note"],
                "due_by":        r["due_by"],
                "evidence":      r["evidence"] or [],
                "sources":       r["sources"] or [],
                "draft_task":    r["draft_task"],
                "target_system": r["target_system"],
                "status":        r["status"],
                "buttons":       ["Confirm", "Edit First"],
            })

        return {
            "as_of":    datetime.now(timezone.utc).isoformat(),
            "freshness": "2 minutes ago",
            "horizon":   "Before the night shift",
            "actions":   actions,
        }


# ── Assets ────────────────────────────────────────────────────────────────────

async def get_assets(pool: asyncpg.Pool, ctx: PersonaContext,
                     asset_id: str = None, fleet: bool = False) -> dict:
    async with pool.acquire() as conn:
        if asset_id:
            asset_rows = await conn.fetch("""
                SELECT a.*, z.name AS zone_name
                FROM asset a LEFT JOIN zone z ON z.id = a.zone_id
                WHERE a.id = $1 OR a.tag = $1
            """, asset_id)
        else:
            asset_rows = await conn.fetch("""
                SELECT a.*, z.name AS zone_name
                FROM asset a LEFT JOIN zone z ON z.id = a.zone_id
                ORDER BY a.criticality DESC, a.health_score ASC
            """)

        assets = []
        for r in asset_rows:
            readings_rows = await conn.fetch("""
                SELECT reading_type_id, label, current_value, unit,
                       state, threshold_description, series, source_system
                FROM asset_reading WHERE asset_id = $1
            """, r["id"])

            linked = await conn.fetchval(
                "SELECT COUNT(*) FROM permit WHERE zone_id = $1 AND status = 'valid'", r["zone_id"]
            ) or 0
            high_risk_linked = await conn.fetchval(
                "SELECT COUNT(*) FROM permit WHERE zone_id = $1 AND status = 'valid' AND risk_bucket IN ('safety','health')", r["zone_id"]
            ) or 0

            assets.append({
                "id":                       r["id"],
                "tag":                      r["tag"],
                "name":                     r["name"],
                "zone_id":                  r["zone_id"],
                "zone_name":                r["zone_name"] or "",
                "asset_type":               r["asset_type"],
                "criticality":              r["criticality"],
                "health_score":             r["health_score"],
                "health_band":              r["health_band"],
                "alarm_state":              r["alarm_state"],
                "alarm_label":              r["alarm_label"],
                "trend":                    r["trend"],
                "trend_note":               r["trend_note"],
                "remaining_useful_life": {
                    "value":      float(r["rul_value"]) if r["rul_value"] else 0,
                    "unit":       r["rul_unit"] or "days",
                    "confidence": r["rul_confidence"] or 0,
                    "basis":      r["rul_basis"] or "",
                },
                "next_service": {
                    "due":    str(r["next_service_due"]) if r["next_service_due"] else "",
                    "type":   r["next_service_type"] or "",
                    "window": r["next_service_window"] or "",
                },
                "hse_implication":          r["hse_implication"] or "",
                "linked_permits":           linked,
                "linked_high_risk_permits": high_risk_linked,
                "readings": [
                    {
                        "reading_type_id":       rd["reading_type_id"],
                        "label":                 rd["label"],
                        "current_value":         rd["current_value"],
                        "unit":                  rd["unit"],
                        "state":                 rd["state"],
                        "threshold_description": rd["threshold_description"],
                        "series":                rd["series"] or [],
                        "source_system":         rd["source_system"],
                    }
                    for rd in readings_rows
                ],
            })

        return {
            "as_of":    datetime.now(timezone.utc).isoformat(),
            "freshness": "5 minutes ago",
            "fleet":     fleet,
            "assets":    assets,
        }


# ── Data Sources ──────────────────────────────────────────────────────────────

async def get_data_sources(pool: asyncpg.Pool, ctx: PersonaContext) -> list:
    async with pool.acquire() as conn:
        rows = await conn.fetch("""
            SELECT id, name, status, description,
                   last_sync_at, record_count, is_vendor_agnostic
            FROM data_source ORDER BY name
        """)
        return [
            {
                "id":                r["id"],
                "name":              r["name"],
                "status":            r["status"],
                "description":       r["description"],
                "last_sync_at":      _iso(r["last_sync_at"]),
                "record_count":      r["record_count"],
                "is_vendor_agnostic": r["is_vendor_agnostic"],
            }
            for r in rows
        ]


# ── Greeting Context ──────────────────────────────────────────────────────────

async def get_greeting_context(pool: asyncpg.Pool, ctx: PersonaContext) -> dict:
    signals = await get_signals(pool, ctx)
    kpis    = await get_kpis(pool, ctx)
    return {"signals": signals, "kpis": kpis}