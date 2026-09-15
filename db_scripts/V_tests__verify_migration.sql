-- ============================================================
-- V_tests__verify_migration.sql
-- Run after V1 + V2 to verify data integrity
-- ============================================================

-- Test 1: All tables exist
DO $$
DECLARE
    missing TEXT := '';
    t TEXT;
BEGIN
    FOREACH t IN ARRAY ARRAY[
        'zone','permit','flagged_job','worker','muster_event','muster_point',
        'signal','action','asset','asset_reading','permit_condition',
        'permit_entrant','permit_entry_exit_log','gas_test_reading',
        'reconciliation_run','reconciliation_source','data_source','query_cache'
    ]
    LOOP
        IF NOT EXISTS (
            SELECT 1 FROM information_schema.tables
            WHERE table_schema = 'public' AND table_name = t
        ) THEN
            missing := missing || t || ' ';
        END IF;
    END LOOP;
    IF missing != '' THEN
        RAISE EXCEPTION 'FAIL: Missing tables: %', missing;
    END IF;
    RAISE NOTICE 'PASS: All 18 tables exist';
END $$;

-- Test 2: Zone data
DO $$
DECLARE ct INT;
BEGIN
    SELECT COUNT(*) INTO ct FROM public.zone;
    IF ct < 11 THEN
        RAISE EXCEPTION 'FAIL: zone table has only % rows (expected >=11)', ct;
    END IF;
    RAISE NOTICE 'PASS: zone has % rows', ct;
END $$;

-- Test 3: Zone geo_polygon is real coordinates (not pixel coordinates)
DO $$
DECLARE val NUMERIC;
BEGIN
    SELECT (geo_polygon->'coordinates'->0->0->0)::numeric INTO val
    FROM public.zone WHERE id = 'Z1';
    IF val IS NULL OR val < 40 THEN
        RAISE EXCEPTION 'FAIL: Z1 geo_polygon appears to use pixel coords (value: %)', val;
    END IF;
    RAISE NOTICE 'PASS: Z1 geo_polygon uses real lon/lat (first coord: %)', val;
END $$;

-- Test 4: Flagged jobs have evidence
DO $$
DECLARE ct INT;
BEGIN
    SELECT COUNT(*) INTO ct FROM public.flagged_job WHERE evidence IS NOT NULL;
    IF ct < 3 THEN
        RAISE EXCEPTION 'FAIL: Only % flagged jobs have evidence (expected 3)', ct;
    END IF;
    RAISE NOTICE 'PASS: % flagged jobs have evidence', ct;
END $$;

-- Test 5: Signals per persona
DO $$
DECLARE ct INT;
BEGIN
    SELECT COUNT(*) INTO ct FROM public.signal WHERE id LIKE 'SIG-ARAMCO-HSE-%';
    IF ct < 3 THEN
        RAISE EXCEPTION 'FAIL: Only % HSE signals found (expected >=3)', ct;
    END IF;
    RAISE NOTICE 'PASS: % HSE signals found', ct;
    
    SELECT COUNT(*) INTO ct FROM public.signal WHERE id LIKE 'SIG-ARAMCO-SUP-%';
    IF ct < 3 THEN
        RAISE EXCEPTION 'FAIL: Only % SUP signals found (expected >=3)', ct;
    END IF;
    RAISE NOTICE 'PASS: % SUP signals found', ct;
END $$;

-- Test 6: Permits exist
DO $$
DECLARE ct INT;
BEGIN
    SELECT COUNT(*) INTO ct FROM public.permit WHERE status = 'valid';
    IF ct < 100 THEN
        RAISE EXCEPTION 'FAIL: Only % valid permits (expected >=100)', ct;
    END IF;
    RAISE NOTICE 'PASS: % valid permits', ct;
END $$;

-- Test 7: Muster points have real geo_point
DO $$
DECLARE val NUMERIC;
BEGIN
    SELECT (geo_point->0)::numeric INTO val FROM public.muster_point WHERE id = 'M1';
    IF val IS NULL OR val < 40 THEN
        RAISE EXCEPTION 'FAIL: M1 geo_point appears to be [0,0] (value: %)', val;
    END IF;
    RAISE NOTICE 'PASS: M1 geo_point has real coordinates (lon: %)', val;
END $$;

-- Test 8: Data sources have icon and category
DO $$
DECLARE ct INT;
BEGIN
    SELECT COUNT(*) INTO ct FROM public.data_source WHERE icon IS NOT NULL;
    IF ct < 8 THEN
        RAISE EXCEPTION 'FAIL: Only % data sources have icon (expected 8)', ct;
    END IF;
    RAISE NOTICE 'PASS: % data sources have icon field', ct;
END $$;

-- Test 9: covers_zones is proper JSONB array
DO $$
DECLARE val TEXT;
BEGIN
    SELECT jsonb_typeof(covers_zones) INTO val FROM public.muster_point WHERE id = 'M1';
    IF val != 'array' THEN
        RAISE EXCEPTION 'FAIL: M1 covers_zones is not an array (type: %)', val;
    END IF;
    RAISE NOTICE 'PASS: muster_point.covers_zones is proper JSONB array';
END $$;

-- Test 10: Query cache has greeting entries
DO $$
DECLARE ct INT;
BEGIN
    SELECT COUNT(*) INTO ct FROM public.query_cache WHERE question = '__greeting__';
    IF ct < 4 THEN
        RAISE EXCEPTION 'FAIL: Only % greeting cache entries (expected 4)', ct;
    END IF;
    RAISE NOTICE 'PASS: % greeting cache entries found', ct;
END $$;

-- Summary
DO $$
BEGIN
    RAISE NOTICE '====================================';
    RAISE NOTICE 'All migration tests passed!';
    RAISE NOTICE '====================================';
END $$;
