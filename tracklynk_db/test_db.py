#!/usr/bin/env python3
"""
TrackLynk Database Validation Test Suite
Verifies schema, data integrity, relationships and business rules.

Usage:
    python3 test_db.py --host localhost --port 5432 --user admin --password admin --db tracklynk_demo

Exit codes:
    0 = all tests passed
    1 = one or more tests failed
"""

import argparse
import sys
from datetime import datetime

try:
    import psycopg2
    import psycopg2.extras
except ImportError:
    print("ERROR: psycopg2 not installed. Run: pip install psycopg2-binary")
    sys.exit(1)


# ── Test runner ───────────────────────────────────────────────────────────────

class TestRunner:
    def __init__(self, conn):
        self.conn    = conn
        self.cur     = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
        self.passed  = 0
        self.failed  = 0
        self.errors  = []

    def query(self, sql, params=None):
        self.cur.execute(sql, params)
        return self.cur.fetchall()

    def scalar(self, sql, params=None):
        self.cur.execute(sql, params)
        row = self.cur.fetchone()
        return row[0] if row else None

    def check(self, name: str, condition: bool, expected, actual, critical=False):
        status = "PASS" if condition else "FAIL"
        icon   = "✓" if condition else "✗"
        if condition:
            self.passed += 1
            print(f"  {icon} {name}")
        else:
            self.failed += 1
            msg = f"  {icon} {name}"
            msg += f"\n      Expected: {expected}"
            msg += f"\n      Actual:   {actual}"
            print(msg)
            self.errors.append({"test": name, "expected": str(expected), "actual": str(actual)})
            if critical:
                print("\n  CRITICAL TEST FAILED — stopping test suite")
                self.summary()
                sys.exit(1)

    def section(self, title: str):
        print(f"\n{'─'*60}")
        print(f"  {title}")
        print(f"{'─'*60}")

    def summary(self):
        total = self.passed + self.failed
        print(f"\n{'='*60}")
        print(f"  Results: {self.passed}/{total} tests passed")
        if self.failed > 0:
            print(f"  Failed:  {self.failed} tests")
            for e in self.errors:
                print(f"    • {e['test']}")
                print(f"      Expected: {e['expected']}")
                print(f"      Actual:   {e['actual']}")
        else:
            print("  All tests passed ✓")
        print(f"{'='*60}")
        return self.failed == 0


# ── Tests ─────────────────────────────────────────────────────────────────────

def test_schema(t: TestRunner):
    """Verify all 18 tables exist with correct columns."""
    t.section("1. SCHEMA — Table existence")

    expected_tables = [
        "zone", "permit", "worker", "flagged_job",
        "permit_condition", "gas_test_reading",
        "permit_entrant", "permit_entry_exit_log",
        "muster_event", "muster_point",
        "signal", "action",
        "asset", "asset_reading",
        "reconciliation_run", "reconciliation_source",
        "data_source", "query_cache",
    ]

    existing = [r[0] for r in t.query("""
        SELECT table_name FROM information_schema.tables
        WHERE table_schema = 'public' ORDER BY table_name
    """)]

    for tbl in expected_tables:
        t.check(
            f"Table exists: {tbl}",
            tbl in existing,
            "exists", "missing" if tbl not in existing else "exists",
            critical=True
        )

    t.section("1b. SCHEMA — Critical columns")

    col_checks = [
        ("zone",                "geo_polygon"),
        ("permit",              "flagged_job_id"),
        ("permit",              "extension_requested"),
        ("flagged_job",         "workers_on_site"),
        ("flagged_job",         "evidence"),
        ("worker",              "last_coordinates"),
        ("worker",              "last_seen"),
        ("muster_event",        "measured_completion_label"),
        ("muster_event",        "projection_confidence"),
        ("muster_point",        "covers_zones"),
        ("muster_point",        "geo_point"),
        ("signal",              "confidence_score"),
        ("signal",              "escalation_triggered"),
        ("asset",               "rul_value"),
        ("asset",               "health_score"),
        ("asset_reading",       "series"),
        ("reconciliation_run",  "audit_logged"),
        ("reconciliation_source","delta"),
        ("query_cache",         "is_known_component"),
        ("query_cache",         "question_hash"),
        ("query_cache",         "ai_message"),
    ]

    for tbl, col in col_checks:
        count = t.scalar("""
            SELECT COUNT(*) FROM information_schema.columns
            WHERE table_schema='public' AND table_name=%s AND column_name=%s
        """, (tbl, col))
        t.check(f"Column exists: {tbl}.{col}", count == 1, 1, count)


def test_row_counts(t: TestRunner):
    """Verify expected row counts for all tables."""
    t.section("2. ROW COUNTS")

    expected_counts = {
        "zone":                  (1,   50),    # at least 1, at most 50
        "permit":                (1,   None),  # at least 1
        "worker":                (2412, 2412), # exactly 2412
        "flagged_job":           (1,   None),  # at least 1
        "permit_condition":      (1,   None),
        "gas_test_reading":      (1,   None),
        "permit_entrant":        (1,   None),
        "muster_event":          (1,   None),
        "muster_point":          (1,   None),
        "signal":                (1,   None),
        "action":                (1,   None),
        "asset":                 (1,   None),
        "asset_reading":         (1,   None),
        "reconciliation_run":    (1,   None),
        "reconciliation_source": (1,   None),
        "data_source":           (1,   None),
        "query_cache":           (50,  None),  # at least 50 cached questions
    }

    for tbl, (min_count, max_count) in expected_counts.items():
        actual = t.scalar(f"SELECT COUNT(*) FROM {tbl}")
        if max_count:
            condition = min_count <= actual <= max_count
            expected_str = f"between {min_count} and {max_count}"
        else:
            condition = actual >= min_count
            expected_str = f">= {min_count}"
        t.check(f"Row count: {tbl}", condition, expected_str, actual)


def test_permit_status_values(t: TestRunner):
    """Verify permit status and type values are valid."""
    t.section("3. PERMIT DATA INTEGRITY")

    # Valid status values
    invalid_status = t.scalar("""
        SELECT COUNT(*) FROM permit
        WHERE status NOT IN ('valid', 'expired', 'breached', 'pending_verification')
    """)
    t.check("All permit statuses are valid", invalid_status == 0, 0, invalid_status)

    # Valid permit types
    invalid_types = t.scalar("""
        SELECT COUNT(*) FROM permit
        WHERE permit_type NOT IN ('hot-work', 'confined-space', 'general', 'work-at-height')
    """)
    t.check("All permit types are valid", invalid_types == 0, 0, invalid_types)

    # Valid risk buckets
    invalid_buckets = t.scalar("""
        SELECT COUNT(*) FROM permit
        WHERE risk_bucket NOT IN ('safety', 'health', 'equipment', 'compliance')
    """)
    t.check("All permit risk buckets are valid", invalid_buckets == 0, 0, invalid_buckets)

    # Expired permits exist (HW-4471, HW-4468)
    expired_count = t.scalar("SELECT COUNT(*) FROM permit WHERE status = 'expired'")
    t.check("Expired permits exist", expired_count >= 1, ">= 1", expired_count)

    # At least one confined-space permit exists
    cs_count = t.scalar("SELECT COUNT(*) FROM permit WHERE permit_type = 'confined-space'")
    t.check("Confined-space permits exist", cs_count >= 1, ">= 1", cs_count)

    # Permits have valid_from and valid_to
    missing_dates = t.scalar("""
        SELECT COUNT(*) FROM permit
        WHERE valid_from IS NULL OR valid_to IS NULL
    """)
    t.check("All permits have valid_from and valid_to", missing_dates == 0, 0, missing_dates)

    # valid_to > valid_from
    bad_dates = t.scalar("""
        SELECT COUNT(*) FROM permit WHERE valid_to <= valid_from
    """)
    t.check("All permit valid_to > valid_from", bad_dates == 0, 0, bad_dates)


def test_flagged_jobs(t: TestRunner):
    """Verify flagged job data and relationships."""
    t.section("4. FLAGGED JOB DATA INTEGRITY")

    # Flagged jobs have valid severity
    invalid_severity = t.scalar("""
        SELECT COUNT(*) FROM flagged_job
        WHERE severity NOT IN ('critical', 'warning', 'info')
    """)
    t.check("All flagged job severities valid", invalid_severity == 0, 0, invalid_severity)

    # Flagged jobs are ranked sequentially starting at 1
    min_rank = t.scalar("SELECT MIN(rank) FROM flagged_job")
    t.check("Flagged jobs start at rank 1", min_rank == 1, 1, min_rank)

    # All flagged jobs reference valid permits
    orphan_permits = t.scalar("""
        SELECT COUNT(*) FROM flagged_job fj
        LEFT JOIN permit p ON p.id = fj.permit_id
        WHERE p.id IS NULL AND fj.permit_id IS NOT NULL
    """)
    t.check("All flagged jobs reference valid permits", orphan_permits == 0, 0, orphan_permits)

    # All flagged jobs reference valid zones
    orphan_zones = t.scalar("""
        SELECT COUNT(*) FROM flagged_job fj
        LEFT JOIN zone z ON z.id = fj.zone_id
        WHERE z.id IS NULL
    """)
    t.check("All flagged jobs reference valid zones", orphan_zones == 0, 0, orphan_zones)

    # Flagged jobs have workers_on_site >= 0
    negative_workers = t.scalar("""
        SELECT COUNT(*) FROM flagged_job WHERE workers_on_site < 0
    """)
    t.check("No negative workers_on_site", negative_workers == 0, 0, negative_workers)

    # Flagged jobs linked to expired or breached permits
    valid_violations = t.scalar("""
        SELECT COUNT(*) FROM flagged_job fj
        JOIN permit p ON p.id = fj.permit_id
        WHERE p.status IN ('expired', 'breached')
    """)
    t.check("Flagged jobs linked to expired/breached permits", valid_violations >= 1, ">= 1", valid_violations)

    # Evidence JSON is not null
    null_evidence = t.scalar("SELECT COUNT(*) FROM flagged_job WHERE evidence IS NULL")
    t.check("All flagged jobs have evidence JSON", null_evidence == 0, 0, null_evidence)


def test_workers(t: TestRunner):
    """Verify worker data."""
    t.section("5. WORKER DATA INTEGRITY")

    # Exactly 2412 workers
    total = t.scalar("SELECT COUNT(*) FROM worker")
    t.check("Exactly 2412 workers", total == 2412, 2412, total)

    # All workers have coordinates
    no_coords = t.scalar("SELECT COUNT(*) FROM worker WHERE last_coordinates IS NULL")
    t.check("All workers have coordinates", no_coords == 0, 0, no_coords)

    # All workers have valid roles
    invalid_roles = t.scalar("""
        SELECT COUNT(*) FROM worker
        WHERE role NOT IN ('staff', 'contractor')
    """)
    t.check("All worker roles valid", invalid_roles == 0, 0, invalid_roles)

    # All workers belong to valid zones
    orphan_zones = t.scalar("""
        SELECT COUNT(*) FROM worker w
        LEFT JOIN zone z ON z.id = w.zone_id
        WHERE z.id IS NULL AND w.zone_id IS NOT NULL
    """)
    t.check("All workers reference valid zones", orphan_zones == 0, 0, orphan_zones)

    # Contractors exist
    contractors = t.scalar("SELECT COUNT(*) FROM worker WHERE role = 'contractor'")
    t.check("Contractors exist on site", contractors >= 1, ">= 1", contractors)

    # Staff exist
    staff = t.scalar("SELECT COUNT(*) FROM worker WHERE role = 'staff'")
    t.check("Staff exist on site", staff >= 1, ">= 1", staff)


def test_muster(t: TestRunner):
    """Verify muster data."""
    t.section("6. MUSTER DATA INTEGRITY")

    # Muster event exists
    events = t.scalar("SELECT COUNT(*) FROM muster_event")
    t.check("Muster event exists", events >= 1, ">= 1", events)

    # Muster state is valid
    invalid_state = t.scalar("""
        SELECT COUNT(*) FROM muster_event
        WHERE state NOT IN ('drill', 'emergency', 'complete', 'standby')
    """)
    t.check("Muster state is valid", invalid_state == 0, 0, invalid_state)

    # total_accounted <= total_expected
    bad_counts = t.scalar("""
        SELECT COUNT(*) FROM muster_event
        WHERE total_accounted > total_expected
    """)
    t.check("Muster accounted <= expected", bad_counts == 0, 0, bad_counts)

    # Muster points exist
    points = t.scalar("SELECT COUNT(*) FROM muster_point")
    t.check("Muster points exist", points >= 1, ">= 1", points)

    # Muster points have covers_zones
    no_zones = t.scalar("SELECT COUNT(*) FROM muster_point WHERE covers_zones IS NULL")
    t.check("All muster points have covers_zones", no_zones == 0, 0, no_zones)

    # measured_completion_label exists
    no_label = t.scalar("""
        SELECT COUNT(*) FROM muster_event
        WHERE measured_completion_label IS NULL OR measured_completion_label = ''
    """)
    t.check("Muster has measured completion label", no_label == 0, 0, no_label)


def test_signals(t: TestRunner):
    """Verify signals for all personas."""
    t.section("7. SIGNALS DATA INTEGRITY")

    # Signals exist for each persona prefix
    persona_prefixes = {
        "hse-gm":          "SIG-ARAMCO-HSE-",
        "shift-supervisor": "SIG-ARAMCO-SUP-",
        "permit-issuer":    "SIG-ARAMCO-ISS-",
        "complex-manager":  "SIG-ARAMCO-CM-",
    }

    for persona, prefix in persona_prefixes.items():
        count = t.scalar(
            "SELECT COUNT(*) FROM signal WHERE id LIKE %s",
            (f"{prefix}%",)
        )
        t.check(f"Signals exist for {persona}", count >= 1, ">= 1", count)

    # All signals have valid severity
    invalid_sev = t.scalar("""
        SELECT COUNT(*) FROM signal
        WHERE severity NOT IN ('critical', 'warning', 'info')
    """)
    t.check("All signal severities valid", invalid_sev == 0, 0, invalid_sev)

    # All signals have confidence scores
    no_confidence = t.scalar("""
        SELECT COUNT(*) FROM signal
        WHERE confidence_score IS NULL
    """)
    t.check("All signals have confidence scores", no_confidence == 0, 0, no_confidence)

    # Confidence scores in range 0-100
    bad_confidence = t.scalar("""
        SELECT COUNT(*) FROM signal
        WHERE confidence_score < 0 OR confidence_score > 100
    """)
    t.check("All confidence scores in 0-100 range", bad_confidence == 0, 0, bad_confidence)


def test_actions(t: TestRunner):
    """Verify action data."""
    t.section("8. ACTION DATA INTEGRITY")

    # Actions exist
    count = t.scalar("SELECT COUNT(*) FROM action")
    t.check("Actions exist", count >= 1, ">= 1", count)

    # Actions have valid priority
    invalid_priority = t.scalar("""
        SELECT COUNT(*) FROM action
        WHERE priority NOT IN ('highest', 'high', 'medium', 'low')
    """)
    t.check("All action priorities valid", invalid_priority == 0, 0, invalid_priority)

    # Actions have valid status
    invalid_status = t.scalar("""
        SELECT COUNT(*) FROM action
        WHERE status NOT IN ('pending_confirmation', 'confirmed', 'done')
    """)
    t.check("All action statuses valid", invalid_status == 0, 0, invalid_status)

    # Actions are ranked sequentially starting at 1
    min_rank = t.scalar("SELECT MIN(rank) FROM action")
    t.check("Actions start at rank 1", min_rank == 1, 1, min_rank)

    # No duplicate ranks
    dup_ranks = t.scalar("""
        SELECT COUNT(*) FROM (
            SELECT rank, COUNT(*) as cnt FROM action
            GROUP BY rank HAVING COUNT(*) > 1
        ) dups
    """)
    t.check("No duplicate action ranks", dup_ranks == 0, 0, dup_ranks)


def test_assets(t: TestRunner):
    """Verify asset data."""
    t.section("9. ASSET DATA INTEGRITY")

    # Assets exist
    count = t.scalar("SELECT COUNT(*) FROM asset")
    t.check("Assets exist", count >= 1, ">= 1", count)

    # Valid health bands
    invalid_band = t.scalar("""
        SELECT COUNT(*) FROM asset
        WHERE health_band NOT IN ('healthy', 'watch', 'degraded', 'critical')
    """)
    t.check("All health bands valid", invalid_band == 0, 0, invalid_band)

    # Health scores in range
    bad_score = t.scalar("""
        SELECT COUNT(*) FROM asset
        WHERE health_score < 0 OR health_score > 100
    """)
    t.check("Health scores in 0-100 range", bad_score == 0, 0, bad_score)

    # Valid alarm states
    invalid_alarm = t.scalar("""
        SELECT COUNT(*) FROM asset
        WHERE alarm_state NOT IN ('normal', 'attention', 'alarm')
    """)
    t.check("All alarm states valid", invalid_alarm == 0, 0, invalid_alarm)

    # Asset readings exist
    readings = t.scalar("SELECT COUNT(*) FROM asset_reading")
    t.check("Asset readings exist", readings >= 1, ">= 1", readings)

    # All readings reference valid assets
    orphan = t.scalar("""
        SELECT COUNT(*) FROM asset_reading ar
        LEFT JOIN asset a ON a.id = ar.asset_id
        WHERE a.id IS NULL
    """)
    t.check("All readings reference valid assets", orphan == 0, 0, orphan)

    # Assets reference valid zones
    orphan_zones = t.scalar("""
        SELECT COUNT(*) FROM asset a
        LEFT JOIN zone z ON z.id = a.zone_id
        WHERE z.id IS NULL AND a.zone_id IS NOT NULL
    """)
    t.check("All assets reference valid zones", orphan_zones == 0, 0, orphan_zones)


def test_reconciliation(t: TestRunner):
    """Verify reconciliation data."""
    t.section("10. RECONCILIATION DATA INTEGRITY")

    # Run exists
    runs = t.scalar("SELECT COUNT(*) FROM reconciliation_run")
    t.check("Reconciliation runs exist", runs >= 1, ">= 1", runs)

    # Sources exist
    sources = t.scalar("SELECT COUNT(*) FROM reconciliation_source")
    t.check("Reconciliation sources exist", sources >= 1, ">= 1", sources)

    # All sources reference valid runs
    orphan = t.scalar("""
        SELECT COUNT(*) FROM reconciliation_source rs
        LEFT JOIN reconciliation_run rr ON rr.id = rs.reconciliation_id
        WHERE rr.id IS NULL
    """)
    t.check("All sources reference valid runs", orphan == 0, 0, orphan)

    # Resolved count is positive
    bad_resolved = t.scalar("""
        SELECT COUNT(*) FROM reconciliation_run WHERE resolved_count <= 0
    """)
    t.check("All resolved counts positive", bad_resolved == 0, 0, bad_resolved)

    # At least one source has a non-zero delta (discrepancy exists)
    has_delta = t.scalar("""
        SELECT COUNT(*) FROM reconciliation_source WHERE delta != 0
    """)
    t.check("Discrepancies exist in sources", has_delta >= 1, ">= 1", has_delta)


def test_query_cache(t: TestRunner):
    """Verify query cache integrity."""
    t.section("11. QUERY CACHE INTEGRITY")

    # Minimum entries exist
    total = t.scalar("SELECT COUNT(*) FROM query_cache")
    t.check("At least 50 cache entries", total >= 50, ">= 50", total)

    # Entries for all 4 personas
    for persona in ["hse-gm", "shift-supervisor", "permit-issuer", "complex-manager"]:
        count = t.scalar(
            "SELECT COUNT(*) FROM query_cache WHERE persona_id = %s",
            (persona,)
        )
        t.check(f"Cache entries for {persona}", count >= 1, ">= 1", count)

    # Greeting entry exists for hse-gm
    greeting = t.scalar("""
        SELECT COUNT(*) FROM query_cache
        WHERE question = '__greeting__' AND persona_id = 'hse-gm'
    """)
    t.check("Greeting cache entry exists for hse-gm", greeting >= 1, ">= 1", greeting)

    # Known component entries have query_fn
    missing_fn = t.scalar("""
        SELECT COUNT(*) FROM query_cache
        WHERE is_known_component = TRUE AND (query_fn IS NULL OR query_fn = '')
    """)
    t.check("Known components have query_fn", missing_fn == 0, 0, missing_fn)

    # All entries have unique question_hash
    dup_hashes = t.scalar("""
        SELECT COUNT(*) FROM (
            SELECT question_hash, COUNT(*) as cnt
            FROM query_cache GROUP BY question_hash HAVING COUNT(*) > 1
        ) dups
    """)
    t.check("All question hashes unique", dup_hashes == 0, 0, dup_hashes)

    # suggested_chips is valid JSONB array
    bad_chips = t.scalar("""
        SELECT COUNT(*) FROM query_cache
        WHERE suggested_chips IS NOT NULL
        AND jsonb_typeof(suggested_chips) != 'array'
    """)
    t.check("All suggested_chips are JSON arrays", bad_chips == 0, 0, bad_chips)


def test_business_rules(t: TestRunner):
    """Verify core business rules are met."""
    t.section("12. BUSINESS RULES")

    # Workers in hazard zones with expired permits = flagged jobs
    workers_in_expired = t.scalar("""
        SELECT SUM(fj.workers_on_site)
        FROM flagged_job fj
        JOIN permit p ON p.id = fj.permit_id
        WHERE p.status = 'expired'
    """)
    t.check(
        "Workers on site in expired permit zones",
        workers_in_expired is not None and workers_in_expired > 0,
        "> 0", workers_in_expired
    )

    # Confined space permit has conditions
    cs_conditions = t.scalar("""
        SELECT COUNT(*) FROM permit_condition pc
        JOIN permit p ON p.id = pc.permit_id
        WHERE p.permit_type = 'confined-space'
    """)
    t.check("Confined space permits have conditions", cs_conditions >= 1, ">= 1", cs_conditions)

    # Confined space permit has entrants
    cs_entrants = t.scalar("""
        SELECT COUNT(*) FROM permit_entrant pe
        JOIN permit p ON p.id = pe.permit_id
        WHERE p.permit_type = 'confined-space'
    """)
    t.check("Confined space permits have entrants", cs_entrants >= 1, ">= 1", cs_entrants)

    # Confined space permit has gas test readings
    cs_gas = t.scalar("""
        SELECT COUNT(*) FROM gas_test_reading gtr
        JOIN permit p ON p.id = gtr.permit_id
        WHERE p.permit_type = 'confined-space'
    """)
    t.check("Confined space permits have gas test readings", cs_gas >= 1, ">= 1", cs_gas)

    # At least one critical flagged job exists
    critical = t.scalar("""
        SELECT COUNT(*) FROM flagged_job WHERE severity = 'critical'
    """)
    t.check("At least one critical flagged job", critical >= 1, ">= 1", critical)

    # Workers distributed across multiple zones
    zones_with_workers = t.scalar("""
        SELECT COUNT(DISTINCT zone_id) FROM worker WHERE zone_id IS NOT NULL
    """)
    t.check("Workers in multiple zones", zones_with_workers >= 2, ">= 2", zones_with_workers)

    # Reconciliation resolved count is close to worker count
    reconciled = t.scalar("SELECT resolved_count FROM reconciliation_run ORDER BY as_of DESC LIMIT 1")
    workers    = t.scalar("SELECT COUNT(*) FROM worker")
    if reconciled and workers:
        diff = abs(reconciled - workers)
        t.check(
            "Reconciled count close to worker count (within 10%)",
            diff <= workers * 0.1,
            f"within 10% of {workers}",
            f"{reconciled} (diff: {diff})"
        )

    # Data sources exist and at least one is connected
    connected = t.scalar("SELECT COUNT(*) FROM data_source WHERE status = 'connected'")
    t.check("At least one connected data source", connected >= 1, ">= 1", connected)

    # Flagged job ranks are unique
    dup_ranks = t.scalar("""
        SELECT COUNT(*) FROM (
            SELECT rank, COUNT(*) cnt FROM flagged_job
            GROUP BY rank HAVING COUNT(*) > 1
        ) dups
    """)
    t.check("Flagged job ranks are unique", dup_ranks == 0, 0, dup_ranks)


def test_zone_integrity(t: TestRunner):
    """Verify zone data integrity."""
    t.section("13. ZONE DATA INTEGRITY")

    # Zones exist
    count = t.scalar("SELECT COUNT(*) FROM zone")
    t.check("Zones exist", count >= 1, ">= 1", count)

    # Valid hazard levels
    invalid = t.scalar("""
        SELECT COUNT(*) FROM zone
        WHERE hazard_level NOT IN ('high', 'medium', 'low')
        AND hazard_level IS NOT NULL
    """)
    t.check("All hazard levels valid", invalid == 0, 0, invalid)

    # High hazard zones exist
    high = t.scalar("SELECT COUNT(*) FROM zone WHERE hazard_level = 'high'")
    t.check("High hazard zones exist", high >= 1, ">= 1", high)

    # All permits reference valid zones
    orphan = t.scalar("""
        SELECT COUNT(*) FROM permit p
        LEFT JOIN zone z ON z.id = p.zone_id
        WHERE z.id IS NULL AND p.zone_id IS NOT NULL
    """)
    t.check("All permits reference valid zones", orphan == 0, 0, orphan)


# ── Main ───────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="TrackLynk DB Validation Tests")
    parser.add_argument("--host",     default="localhost",      help="DB host")
    parser.add_argument("--port",     default=5432, type=int,   help="DB port")
    parser.add_argument("--user",     default="admin",          help="DB username")
    parser.add_argument("--password", default="admin",          help="DB password")
    parser.add_argument("--db",       default="tracklynk_demo", help="DB name")
    args = parser.parse_args()

    print(f"\n{'='*60}")
    print(f"  TrackLynk Database Validation Suite")
    print(f"  {args.host}:{args.port}/{args.db}")
    print(f"  {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"{'='*60}")

    try:
        conn = psycopg2.connect(
            host=args.host, port=args.port,
            user=args.user, password=args.password,
            dbname=args.db
        )
    except Exception as e:
        print(f"\nERROR: Could not connect: {e}")
        sys.exit(1)

    t = TestRunner(conn)

    # Run all test suites
    test_schema(t)
    test_row_counts(t)
    test_zone_integrity(t)
    test_permit_status_values(t)
    test_flagged_jobs(t)
    test_workers(t)
    test_muster(t)
    test_signals(t)
    test_actions(t)
    test_assets(t)
    test_reconciliation(t)
    test_query_cache(t)
    test_business_rules(t)

    conn.close()
    passed = t.summary()
    sys.exit(0 if passed else 1)


if __name__ == "__main__":
    main()
