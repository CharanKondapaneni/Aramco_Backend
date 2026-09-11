-- ============================================================
-- TrackLynk Database Schema
-- Generated: 2026-09-10T22:09:56.871539
-- ============================================================

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Drop existing tables (reverse FK order)
DROP TABLE IF EXISTS query_cache CASCADE;
DROP TABLE IF EXISTS data_source CASCADE;
DROP TABLE IF EXISTS reconciliation_source CASCADE;
DROP TABLE IF EXISTS reconciliation_run CASCADE;
DROP TABLE IF EXISTS asset_reading CASCADE;
DROP TABLE IF EXISTS asset CASCADE;
DROP TABLE IF EXISTS action CASCADE;
DROP TABLE IF EXISTS signal CASCADE;
DROP TABLE IF EXISTS muster_point CASCADE;
DROP TABLE IF EXISTS muster_event CASCADE;
DROP TABLE IF EXISTS worker CASCADE;
DROP TABLE IF EXISTS flagged_job CASCADE;
DROP TABLE IF EXISTS permit_entry_exit_log CASCADE;
DROP TABLE IF EXISTS permit_entrant CASCADE;
DROP TABLE IF EXISTS gas_test_reading CASCADE;
DROP TABLE IF EXISTS permit_condition CASCADE;
DROP TABLE IF EXISTS permit CASCADE;
DROP TABLE IF EXISTS zone CASCADE;

-- ── zone ──────────────────────────────────────────────
CREATE TABLE zone (
    id TEXT NOT NULL,
    name TEXT NOT NULL,
    short_name TEXT,
    hazard_level TEXT NOT NULL,
    zone_type TEXT,
    plan_x NUMERIC NOT NULL,
    plan_y NUMERIC NOT NULL,
    plan_w NUMERIC NOT NULL,
    plan_h NUMERIC NOT NULL,
    occupancy_capacity INTEGER,
    geo_polygon JSONB,
    PRIMARY KEY (id)
);

-- ── permit ────────────────────────────────────────────
CREATE TABLE permit (
    id TEXT NOT NULL,
    permit_type TEXT NOT NULL,
    title TEXT,
    zone_id TEXT NOT NULL,
    location_description TEXT,
    status TEXT NOT NULL,
    risk_bucket TEXT,
    valid_from TIMESTAMPTZ NOT NULL,
    valid_to TIMESTAMPTZ NOT NULL,
    issuer TEXT,
    work_order_id TEXT,
    flagged_job_id TEXT,
    extension_requested BOOLEAN,
    PRIMARY KEY (id),
    FOREIGN KEY (zone_id) REFERENCES zone(id),
    FOREIGN KEY (flagged_job_id) REFERENCES flagged_job(id)
);

-- ── permit_condition ──────────────────────────────────
CREATE TABLE permit_condition (
    id TEXT NOT NULL,
    permit_id TEXT NOT NULL,
    label TEXT NOT NULL,
    state TEXT NOT NULL,
    detail TEXT,
    sources JSONB,
    PRIMARY KEY (id),
    FOREIGN KEY (permit_id) REFERENCES permit(id)
);

-- ── gas_test_reading ──────────────────────────────────
CREATE TABLE gas_test_reading (
    permit_id TEXT NOT NULL,
    reading_time TIMESTAMPTZ NOT NULL,
    result TEXT NOT NULL,
    interval_minutes INTEGER NOT NULL,
    PRIMARY KEY (permit_id, reading_time),
    FOREIGN KEY (permit_id) REFERENCES permit(id)
);

-- ── permit_entrant ────────────────────────────────────
CREATE TABLE permit_entrant (
    id TEXT NOT NULL,
    permit_id TEXT NOT NULL,
    label TEXT,
    company TEXT,
    entered_at TIMESTAMPTZ,
    is_inside BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (permit_id) REFERENCES permit(id)
);

-- ── permit_entry_exit_log ─────────────────────────────
CREATE TABLE permit_entry_exit_log (
    permit_id TEXT NOT NULL,
    event_time TIMESTAMPTZ NOT NULL,
    actor TEXT NOT NULL,
    event_description TEXT NOT NULL,
    note TEXT,
    PRIMARY KEY (permit_id, event_time, actor),
    FOREIGN KEY (permit_id) REFERENCES permit(id)
);

-- ── flagged_job ───────────────────────────────────────
CREATE TABLE flagged_job (
    id TEXT NOT NULL,
    rank INTEGER,
    permit_id TEXT NOT NULL,
    permit_type TEXT NOT NULL,
    title TEXT NOT NULL,
    zone_id TEXT NOT NULL,
    location_description TEXT,
    plan_x NUMERIC,
    plan_y NUMERIC,
    risk_bucket TEXT,
    severity TEXT NOT NULL,
    workers_on_site INTEGER NOT NULL,
    reason TEXT NOT NULL,
    detected_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    evidence JSONB,
    PRIMARY KEY (id),
    FOREIGN KEY (zone_id) REFERENCES zone(id),
    FOREIGN KEY (permit_id) REFERENCES permit(id)
);

-- ── worker ────────────────────────────────────────────
CREATE TABLE worker (
    id TEXT NOT NULL,
    tag_number INTEGER,
    zone_id TEXT,
    role TEXT NOT NULL,
    location_source TEXT NOT NULL,
    last_coordinates JSONB,
    last_seen TIMESTAMPTZ,
    PRIMARY KEY (id),
    FOREIGN KEY (zone_id) REFERENCES zone(id)
);

-- ── muster_event ──────────────────────────────────────
CREATE TABLE muster_event (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    as_of TIMESTAMPTZ NOT NULL,
    alarm_started_at TIMESTAMPTZ NOT NULL,
    state TEXT NOT NULL,
    state_label TEXT,
    elapsed_seconds INTEGER NOT NULL,
    total_accounted INTEGER NOT NULL,
    total_expected INTEGER NOT NULL,
    projection_full_accounting_minutes INTEGER,
    projection_basis TEXT,
    projection_confidence INTEGER,
    measured_completion_label TEXT,
    PRIMARY KEY (id)
);

-- ── muster_point ──────────────────────────────────────
CREATE TABLE muster_point (
    id TEXT NOT NULL,
    name TEXT NOT NULL,
    covers_zones JSONB,
    capacity INTEGER NOT NULL,
    accounted_count INTEGER NOT NULL,
    expected_count INTEGER NOT NULL,
    radius_m NUMERIC,
    geo_point JSONB,
    PRIMARY KEY (id)
);

-- ── signal ────────────────────────────────────────────
CREATE TABLE signal (
    id TEXT NOT NULL,
    signal_type TEXT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    impact TEXT NOT NULL,
    severity TEXT NOT NULL,
    risk_bucket TEXT NOT NULL,
    recommended_action TEXT,
    sources JSONB,
    detected_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    trend TEXT,
    related_segment TEXT,
    metrics JSONB,
    confidence_score INTEGER,
    confidence_rationale TEXT,
    confidence_signals_used JSONB,
    confidence_threshold INTEGER,
    model_version TEXT,
    validated_at TIMESTAMPTZ,
    escalation_triggered BOOLEAN,
    escalation_reason TEXT,
    escalation_route_to TEXT,
    PRIMARY KEY (id)
);

-- ── action ────────────────────────────────────────────
CREATE TABLE action (
    id TEXT NOT NULL,
    rank INTEGER,
    title TEXT NOT NULL,
    risk_bucket TEXT NOT NULL,
    priority TEXT NOT NULL,
    rationale TEXT NOT NULL,
    owner TEXT NOT NULL,
    owner_note TEXT,
    due_by TEXT,
    evidence JSONB,
    sources JSONB,
    draft_task TEXT,
    target_system TEXT,
    status TEXT NOT NULL,
    PRIMARY KEY (id)
);

-- ── asset ─────────────────────────────────────────────
CREATE TABLE asset (
    id TEXT NOT NULL,
    tag TEXT NOT NULL,
    name TEXT NOT NULL,
    zone_id TEXT NOT NULL,
    asset_type TEXT NOT NULL,
    criticality TEXT NOT NULL,
    health_score INTEGER,
    health_band TEXT,
    alarm_state TEXT,
    alarm_label TEXT,
    trend TEXT,
    trend_note TEXT,
    rul_value NUMERIC,
    rul_unit TEXT,
    rul_confidence INTEGER,
    rul_basis TEXT,
    next_service_due DATE,
    next_service_type TEXT,
    next_service_window TEXT,
    hse_implication TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (zone_id) REFERENCES zone(id)
);

-- ── asset_reading ─────────────────────────────────────
CREATE TABLE asset_reading (
    reading_type_id TEXT NOT NULL,
    asset_id TEXT NOT NULL,
    label TEXT NOT NULL,
    current_value TEXT NOT NULL,
    unit TEXT NOT NULL,
    state TEXT NOT NULL,
    threshold_description TEXT,
    series JSONB,
    source_system TEXT,
    PRIMARY KEY (reading_type_id, asset_id),
    FOREIGN KEY (asset_id) REFERENCES asset(id)
);

-- ── reconciliation_run ────────────────────────────────
CREATE TABLE reconciliation_run (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    as_of TIMESTAMPTZ NOT NULL,
    resolved_count INTEGER NOT NULL,
    method TEXT,
    audit_logged BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

-- ── reconciliation_source ─────────────────────────────
CREATE TABLE reconciliation_source (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    reconciliation_id UUID NOT NULL,
    source_name TEXT NOT NULL,
    record_count INTEGER NOT NULL,
    delta INTEGER,
    reliability TEXT,
    note TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (reconciliation_id) REFERENCES reconciliation_run(id)
);

-- ── data_source ───────────────────────────────────────
CREATE TABLE data_source (
    id TEXT NOT NULL,
    name TEXT NOT NULL,
    status TEXT NOT NULL,
    description TEXT,
    last_sync_at TIMESTAMPTZ,
    record_count INTEGER,
    is_vendor_agnostic BOOLEAN,
    PRIMARY KEY (id)
);

-- ── query_cache ───────────────────────────────────────
CREATE TABLE query_cache (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    question_hash TEXT NOT NULL,
    question TEXT NOT NULL,
    persona_id TEXT NOT NULL,
    client_id TEXT NOT NULL,
    component TEXT,
    sql_query TEXT,
    viz_type TEXT,
    is_known_component BOOLEAN DEFAULT false,
    query_fn TEXT,
    suggested_chips JSONB,
    capability TEXT,
    cached_at TIMESTAMPTZ DEFAULT now(),
    hit_count INTEGER DEFAULT 0,
    ai_message TEXT,
    PRIMARY KEY (id)
);

-- ── Indexes ─────────────────────────────────────────────────
CREATE INDEX idx_action_priority ON public.action USING btree (priority);
CREATE INDEX idx_action_risk_bucket ON public.action USING btree (risk_bucket);
CREATE INDEX idx_action_status ON public.action USING btree (status);
CREATE INDEX idx_asset_alarm_state ON public.asset USING btree (alarm_state);
CREATE INDEX idx_asset_criticality ON public.asset USING btree (criticality);
CREATE INDEX idx_asset_health_band ON public.asset USING btree (health_band);
CREATE INDEX idx_asset_zone_id ON public.asset USING btree (zone_id);
CREATE INDEX idx_asset_reading_asset_id ON public.asset_reading USING btree (asset_id);
CREATE INDEX idx_asset_reading_state ON public.asset_reading USING btree (state);
CREATE INDEX idx_data_source_last_sync_at ON public.data_source USING btree (last_sync_at);
CREATE INDEX idx_flagged_job_detected_at ON public.flagged_job USING btree (detected_at);
CREATE INDEX idx_flagged_job_permit_id ON public.flagged_job USING btree (permit_id);
CREATE INDEX idx_flagged_job_severity ON public.flagged_job USING btree (severity);
CREATE INDEX idx_flagged_job_zone_id ON public.flagged_job USING btree (zone_id);
CREATE INDEX idx_gas_test_reading_permit_id ON public.gas_test_reading USING btree (permit_id);
CREATE INDEX idx_gas_test_reading_reading_time ON public.gas_test_reading USING btree (reading_time);
CREATE INDEX idx_muster_event_alarm_started_at ON public.muster_event USING btree (alarm_started_at);
CREATE INDEX idx_muster_event_as_of ON public.muster_event USING btree (as_of);
CREATE INDEX idx_muster_event_state ON public.muster_event USING btree (state);
CREATE INDEX idx_permit_flagged_job_id ON public.permit USING btree (flagged_job_id);
CREATE INDEX idx_permit_status ON public.permit USING btree (status);
CREATE INDEX idx_permit_type ON public.permit USING btree (permit_type);
CREATE INDEX idx_permit_valid_from ON public.permit USING btree (valid_from);
CREATE INDEX idx_permit_valid_to ON public.permit USING btree (valid_to);
CREATE INDEX idx_permit_zone_id ON public.permit USING btree (zone_id);
CREATE INDEX idx_permit_condition_permit_id ON public.permit_condition USING btree (permit_id);
CREATE INDEX idx_permit_condition_state ON public.permit_condition USING btree (state);
CREATE INDEX idx_permit_entrant_is_inside ON public.permit_entrant USING btree (is_inside);
CREATE INDEX idx_permit_entrant_permit_id ON public.permit_entrant USING btree (permit_id);
CREATE INDEX idx_permit_entry_exit_log_event_time ON public.permit_entry_exit_log USING btree (event_time);
CREATE INDEX idx_permit_entry_exit_log_permit_id ON public.permit_entry_exit_log USING btree (permit_id);
CREATE INDEX idx_query_cache_hash ON public.query_cache USING btree (question_hash);
CREATE INDEX idx_query_cache_persona ON public.query_cache USING btree (persona_id, client_id);
CREATE UNIQUE INDEX query_cache_question_hash_key ON public.query_cache USING btree (question_hash);
CREATE INDEX idx_reconciliation_run_as_of ON public.reconciliation_run USING btree (as_of);
CREATE INDEX idx_reconciliation_source_reconciliation_id ON public.reconciliation_source USING btree (reconciliation_id);
CREATE INDEX idx_signal_detected_at ON public.signal USING btree (detected_at);
CREATE INDEX idx_signal_impact ON public.signal USING btree (impact);
CREATE INDEX idx_signal_risk_bucket ON public.signal USING btree (risk_bucket);
CREATE INDEX idx_signal_severity ON public.signal USING btree (severity);
CREATE INDEX idx_signal_signal_type ON public.signal USING btree (signal_type);
CREATE INDEX idx_worker_last_seen ON public.worker USING btree (last_seen);
CREATE INDEX idx_worker_role ON public.worker USING btree (role);
CREATE INDEX idx_worker_zone_id ON public.worker USING btree (zone_id);
CREATE INDEX idx_zone_hazard_level ON public.zone USING btree (hazard_level);