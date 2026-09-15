-- ============================================================
-- V1__initial_schema_and_seed__rollback.sql
-- Drops all tables in reverse dependency order
-- ============================================================

DROP TABLE IF EXISTS public.query_cache CASCADE;
DROP TABLE IF EXISTS public.reconciliation_source CASCADE;
DROP TABLE IF EXISTS public.reconciliation_run CASCADE;
DROP TABLE IF EXISTS public.asset_reading CASCADE;
DROP TABLE IF EXISTS public.gas_test_reading CASCADE;
DROP TABLE IF EXISTS public.permit_entry_exit_log CASCADE;
DROP TABLE IF EXISTS public.permit_entrant CASCADE;
DROP TABLE IF EXISTS public.permit_condition CASCADE;
DROP TABLE IF EXISTS public.signal CASCADE;
DROP TABLE IF EXISTS public.action CASCADE;
DROP TABLE IF EXISTS public.asset CASCADE;
DROP TABLE IF EXISTS public.worker CASCADE;
DROP TABLE IF EXISTS public.muster_point CASCADE;
DROP TABLE IF EXISTS public.muster_event CASCADE;
DROP TABLE IF EXISTS public.flagged_job CASCADE;
DROP TABLE IF EXISTS public.permit CASCADE;
DROP TABLE IF EXISTS public.zone CASCADE;
DROP TABLE IF EXISTS public.data_source CASCADE;
