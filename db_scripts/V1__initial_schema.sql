-- ============================================================
-- V1__initial_schema_and_seed.sql
-- TrackLynk Demo — Full schema creation and seed data
-- Run this to set up a fresh database from scratch
-- ============================================================

-- Extensions
CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE public.action (
    id text NOT NULL,
    rank integer,
    title text NOT NULL,
    risk_bucket text NOT NULL,
    priority text NOT NULL,
    rationale text NOT NULL,
    owner text NOT NULL,
    owner_note text,
    due_by text,
    evidence jsonb,
    sources jsonb,
    draft_task text,
    target_system text,
    status text NOT NULL,
    CONSTRAINT action_priority_check CHECK ((priority = ANY (ARRAY['highest'::text, 'high'::text, 'medium'::text, 'low'::text]))),
    CONSTRAINT action_risk_bucket_check CHECK ((risk_bucket = ANY (ARRAY['safety'::text, 'health'::text, 'equipment'::text, 'compliance'::text]))),
    CONSTRAINT action_status_check CHECK ((status = ANY (ARRAY['pending_confirmation'::text, 'confirmed'::text, 'in_progress'::text, 'completed'::text, 'dismissed'::text])))
);

CREATE TABLE public.asset (
    id text NOT NULL,
    tag text NOT NULL,
    name text NOT NULL,
    zone_id text NOT NULL,
    asset_type text NOT NULL,
    criticality text NOT NULL,
    health_score integer,
    health_band text,
    alarm_state text,
    alarm_label text,
    trend text,
    trend_note text,
    rul_value numeric,
    rul_unit text,
    rul_confidence integer,
    rul_basis text,
    next_service_due date,
    next_service_type text,
    next_service_window text,
    hse_implication text,
    CONSTRAINT asset_alarm_state_check CHECK ((alarm_state = ANY (ARRAY['normal'::text, 'attention'::text, 'alarm'::text]))),
    CONSTRAINT asset_criticality_check CHECK ((criticality = ANY (ARRAY['high'::text, 'medium'::text, 'low'::text]))),
    CONSTRAINT asset_health_band_check CHECK ((health_band = ANY (ARRAY['healthy'::text, 'watch'::text, 'degraded'::text, 'critical'::text]))),
    CONSTRAINT asset_health_score_range CHECK (((health_score >= 0) AND (health_score <= 100))),
    CONSTRAINT asset_rul_confidence_range CHECK (((rul_confidence >= 0) AND (rul_confidence <= 100))),
    CONSTRAINT asset_trend_check CHECK ((trend = ANY (ARRAY['improving'::text, 'stable'::text, 'worsening'::text])))
);

CREATE TABLE public.asset_reading (
    reading_type_id text NOT NULL,
    asset_id text NOT NULL,
    label text NOT NULL,
    current_value text NOT NULL,
    unit text NOT NULL,
    state text NOT NULL,
    threshold_description text,
    series jsonb,
    source_system text,
    CONSTRAINT asset_reading_state_check CHECK ((state = ANY (ARRAY['compliant'::text, 'attention'::text, 'alarm'::text])))
);

CREATE TABLE public.data_source (
    id text NOT NULL,
    name text NOT NULL,
    status text NOT NULL,
    description text,
    last_sync_at timestamp with time zone,
    record_count integer,
    is_vendor_agnostic boolean,
    icon text,
    category text,
    error_detail text,
    CONSTRAINT data_source_status_check CHECK ((status = ANY (ARRAY['connected'::text, 'partial'::text, 'disconnected'::text])))
);

CREATE TABLE public.flagged_job (
    id text NOT NULL,
    rank integer,
    permit_id text NOT NULL,
    permit_type text NOT NULL,
    title text NOT NULL,
    zone_id text NOT NULL,
    location_description text,
    plan_x numeric,
    plan_y numeric,
    risk_bucket text,
    severity text NOT NULL,
    workers_on_site integer NOT NULL,
    reason text NOT NULL,
    detected_at timestamp with time zone DEFAULT now() NOT NULL,
    evidence jsonb,
    CONSTRAINT flagged_job_permit_type_check CHECK ((permit_type = ANY (ARRAY['hot-work'::text, 'confined-space'::text, 'work-at-height'::text, 'general'::text]))),
    CONSTRAINT flagged_job_risk_bucket_check CHECK ((risk_bucket = ANY (ARRAY['safety'::text, 'health'::text, 'equipment'::text, 'compliance'::text]))),
    CONSTRAINT flagged_job_severity_check CHECK ((severity = ANY (ARRAY['critical'::text, 'warning'::text, 'info'::text])))
);

CREATE TABLE public.gas_test_reading (
    permit_id text NOT NULL,
    reading_time timestamp with time zone NOT NULL,
    result text NOT NULL,
    interval_minutes integer NOT NULL
);

CREATE TABLE public.muster_event (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    as_of timestamp with time zone NOT NULL,
    alarm_started_at timestamp with time zone NOT NULL,
    state text NOT NULL,
    state_label text,
    elapsed_seconds integer NOT NULL,
    total_accounted integer NOT NULL,
    total_expected integer NOT NULL,
    projection_full_accounting_minutes integer,
    projection_basis text,
    projection_confidence integer,
    measured_completion_label text,
    CONSTRAINT muster_event_projection_confidence_range CHECK (((projection_confidence >= 0) AND (projection_confidence <= 100))),
    CONSTRAINT muster_event_state_check CHECK ((state = ANY (ARRAY['drill'::text, 'emergency'::text, 'standdown'::text])))
);

CREATE TABLE public.muster_point (
    id text NOT NULL,
    name text NOT NULL,
    covers_zones jsonb,
    capacity integer NOT NULL,
    accounted_count integer NOT NULL,
    expected_count integer NOT NULL,
    radius_m numeric,
    geo_point jsonb
);

CREATE TABLE public.permit (
    id text NOT NULL,
    permit_type text NOT NULL,
    title text,
    zone_id text NOT NULL,
    location_description text,
    status text NOT NULL,
    risk_bucket text,
    valid_from timestamp with time zone NOT NULL,
    valid_to timestamp with time zone NOT NULL,
    issuer text,
    work_order_id text,
    flagged_job_id text,
    extension_requested boolean,
    CONSTRAINT permit_risk_bucket_check CHECK ((risk_bucket = ANY (ARRAY['safety'::text, 'health'::text, 'equipment'::text, 'compliance'::text]))),
    CONSTRAINT permit_status_check CHECK ((status = ANY (ARRAY['valid'::text, 'expired'::text, 'breached'::text, 'pending_verification'::text, 'closed'::text]))),
    CONSTRAINT permit_type_check CHECK ((permit_type = ANY (ARRAY['hot-work'::text, 'confined-space'::text, 'work-at-height'::text, 'general'::text])))
);

CREATE TABLE public.permit_condition (
    id text NOT NULL,
    permit_id text NOT NULL,
    label text NOT NULL,
    state text NOT NULL,
    detail text,
    sources jsonb,
    CONSTRAINT permit_condition_state_check CHECK ((state = ANY (ARRAY['compliant'::text, 'attention'::text, 'breach'::text])))
);

CREATE TABLE public.permit_entrant (
    id text NOT NULL,
    permit_id text NOT NULL,
    label text,
    company text,
    entered_at timestamp with time zone,
    is_inside boolean NOT NULL
);

CREATE TABLE public.permit_entry_exit_log (
    permit_id text NOT NULL,
    event_time timestamp with time zone NOT NULL,
    actor text NOT NULL,
    event_description text NOT NULL,
    note text
);

CREATE TABLE public.query_cache (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    question_hash text NOT NULL,
    question text NOT NULL,
    persona_id text NOT NULL,
    client_id text NOT NULL,
    component text,
    sql_query text,
    viz_type text,
    is_known_component boolean DEFAULT false,
    query_fn text,
    suggested_chips jsonb,
    capability text,
    cached_at timestamp with time zone DEFAULT now(),
    hit_count integer DEFAULT 0,
    ai_message text
);

CREATE TABLE public.reconciliation_run (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    as_of timestamp with time zone NOT NULL,
    resolved_count integer NOT NULL,
    method text,
    audit_logged boolean NOT NULL
);

CREATE TABLE public.reconciliation_source (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    reconciliation_id uuid NOT NULL,
    source_name text NOT NULL,
    record_count integer NOT NULL,
    delta integer,
    reliability text,
    note text
);

CREATE TABLE public.signal (
    id text NOT NULL,
    signal_type text NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    impact text NOT NULL,
    severity text NOT NULL,
    risk_bucket text NOT NULL,
    recommended_action text,
    sources jsonb,
    detected_at timestamp with time zone DEFAULT now() NOT NULL,
    trend text,
    related_segment text,
    metrics jsonb,
    confidence_score integer,
    confidence_rationale text,
    confidence_signals_used jsonb,
    confidence_threshold integer,
    model_version text,
    validated_at timestamp with time zone,
    escalation_triggered boolean,
    escalation_reason text,
    escalation_route_to text,
    CONSTRAINT signal_confidence_score_range CHECK (((confidence_score >= 0) AND (confidence_score <= 100))),
    CONSTRAINT signal_confidence_threshold_range CHECK (((confidence_threshold >= 0) AND (confidence_threshold <= 100))),
    CONSTRAINT signal_impact_check CHECK ((impact = ANY (ARRAY['high'::text, 'medium'::text, 'low'::text]))),
    CONSTRAINT signal_risk_bucket_check CHECK ((risk_bucket = ANY (ARRAY['safety'::text, 'health'::text, 'equipment'::text, 'compliance'::text]))),
    CONSTRAINT signal_severity_check CHECK ((severity = ANY (ARRAY['critical'::text, 'warning'::text, 'info'::text]))),
    CONSTRAINT signal_trend_check CHECK ((trend = ANY (ARRAY['worsening'::text, 'stable'::text, 'improving'::text, 'persistent'::text, 'watch'::text])))
);

CREATE TABLE public.worker (
    id text NOT NULL,
    tag_number integer,
    zone_id text,
    role text NOT NULL,
    location_source text NOT NULL,
    last_coordinates jsonb,
    last_seen timestamp with time zone,
    CONSTRAINT worker_location_source_check CHECK ((location_source = ANY (ARRAY['gate'::text, 'location'::text]))),
    CONSTRAINT worker_role_check CHECK ((role = ANY (ARRAY['staff'::text, 'contractor'::text])))
);

CREATE TABLE public.zone (
    id text NOT NULL,
    name text NOT NULL,
    short_name text,
    hazard_level text NOT NULL,
    zone_type text,
    plan_x numeric NOT NULL,
    plan_y numeric NOT NULL,
    plan_w numeric NOT NULL,
    plan_h numeric NOT NULL,
    occupancy_capacity integer,
    geo_polygon jsonb,
    CONSTRAINT zone_hazard_level_check CHECK ((hazard_level = ANY (ARRAY['high'::text, 'medium'::text, 'low'::text])))
);

CREATE INDEX idx_action_priority ON public.action USING btree (priority);

CREATE INDEX idx_action_risk_bucket ON public.action USING btree (risk_bucket);

CREATE INDEX idx_action_status ON public.action USING btree (status);

CREATE INDEX idx_asset_alarm_state ON public.asset USING btree (alarm_state);

CREATE INDEX idx_asset_criticality ON public.asset USING btree (criticality);

CREATE INDEX idx_asset_health_band ON public.asset USING btree (health_band);

CREATE INDEX idx_asset_reading_asset_id ON public.asset_reading USING btree (asset_id);

CREATE INDEX idx_asset_reading_state ON public.asset_reading USING btree (state);

CREATE INDEX idx_asset_zone_id ON public.asset USING btree (zone_id);

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

CREATE INDEX idx_permit_condition_permit_id ON public.permit_condition USING btree (permit_id);

CREATE INDEX idx_permit_condition_state ON public.permit_condition USING btree (state);

CREATE INDEX idx_permit_entrant_is_inside ON public.permit_entrant USING btree (is_inside);

CREATE INDEX idx_permit_entrant_permit_id ON public.permit_entrant USING btree (permit_id);

CREATE INDEX idx_permit_entry_exit_log_event_time ON public.permit_entry_exit_log USING btree (event_time);

CREATE INDEX idx_permit_entry_exit_log_permit_id ON public.permit_entry_exit_log USING btree (permit_id);

CREATE INDEX idx_permit_flagged_job_id ON public.permit USING btree (flagged_job_id);

CREATE INDEX idx_permit_status ON public.permit USING btree (status);

CREATE INDEX idx_permit_type ON public.permit USING btree (permit_type);

CREATE INDEX idx_permit_valid_from ON public.permit USING btree (valid_from);

CREATE INDEX idx_permit_valid_to ON public.permit USING btree (valid_to);

CREATE INDEX idx_permit_zone_id ON public.permit USING btree (zone_id);

CREATE INDEX idx_query_cache_hash ON public.query_cache USING btree (question_hash);

CREATE INDEX idx_query_cache_persona ON public.query_cache USING btree (persona_id, client_id);

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

