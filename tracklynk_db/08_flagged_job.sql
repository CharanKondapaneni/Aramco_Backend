-- ============================================================
-- Table: flagged_job
-- Rows:  3
-- Generated: 2026-09-10T22:09:57.229456
-- ============================================================

-- Clear existing data
DELETE FROM flagged_job;

-- 3 rows
INSERT INTO flagged_job (id, rank, permit_id, permit_type, title, zone_id, location_description, plan_x, plan_y, risk_bucket, severity, workers_on_site, reason, detected_at, evidence) VALUES ('FJ-001', 1, 'HW-4471', 'hot-work', 'Hot work continuing on an expired permit', 'Z2', NULL, NULL, NULL, 'safety', 'critical', 4, 'Permit expired 47 minutes ago', '2026-08-05T02:06:00-04:00', NULL);
INSERT INTO flagged_job (id, rank, permit_id, permit_type, title, zone_id, location_description, plan_x, plan_y, risk_bucket, severity, workers_on_site, reason, detected_at, evidence) VALUES ('FJ-002', 2, 'HW-4468', 'hot-work', 'Hot work continuing on an expired permit', 'Z2', NULL, NULL, NULL, 'safety', 'critical', 3, 'Permit expired 35 minutes ago', '2026-08-05T02:18:00-04:00', NULL);
INSERT INTO flagged_job (id, rank, permit_id, permit_type, title, zone_id, location_description, plan_x, plan_y, risk_bucket, severity, workers_on_site, reason, detected_at, evidence) VALUES ('FJ-003', 3, 'GP-9033', 'general', 'Workers in restricted zone without a valid permit', 'Z5', NULL, NULL, NULL, 'compliance', 'critical', 3, 'Three workers detected inside restricted zone', '2026-08-05T02:40:00-04:00', NULL);