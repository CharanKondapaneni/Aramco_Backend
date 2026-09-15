-- ============================================================
-- V2__seed_data__rollback.sql
-- Truncates all data in reverse dependency order
-- ============================================================

TRUNCATE public.query_cache CASCADE;
TRUNCATE public.reconciliation_source CASCADE;
TRUNCATE public.reconciliation_run CASCADE;
TRUNCATE public.asset_reading CASCADE;
TRUNCATE public.gas_test_reading CASCADE;
TRUNCATE public.permit_entry_exit_log CASCADE;
TRUNCATE public.permit_entrant CASCADE;
TRUNCATE public.permit_condition CASCADE;
TRUNCATE public.signal CASCADE;
TRUNCATE public.action CASCADE;
TRUNCATE public.asset CASCADE;
TRUNCATE public.worker CASCADE;
TRUNCATE public.muster_point CASCADE;
TRUNCATE public.muster_event CASCADE;
TRUNCATE public.flagged_job CASCADE;
TRUNCATE public.permit CASCADE;
TRUNCATE public.zone CASCADE;
TRUNCATE public.data_source CASCADE;
