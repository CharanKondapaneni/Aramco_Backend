-- ============================================================
-- Table: muster_event
-- Rows:  1
-- Generated: 2026-09-10T22:09:57.250136
-- ============================================================

-- Clear existing data
DELETE FROM muster_event;

-- 1 rows
INSERT INTO muster_event (id, as_of, alarm_started_at, state, state_label, elapsed_seconds, total_accounted, total_expected, projection_full_accounting_minutes, projection_basis, projection_confidence, measured_completion_label) VALUES ('9413f995-d76c-4dce-919a-6f5f910e60cc', '2026-08-05T02:53:00-04:00', '2026-08-05T02:51:30-04:00', 'drill', 'Muster drill in progress', 90, 2384, 2412, 3, 'Current check-in rate across all muster points', 90, '2:47');