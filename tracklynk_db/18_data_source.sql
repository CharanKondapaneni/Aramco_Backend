-- ============================================================
-- Table: data_source
-- Rows:  8
-- Generated: 2026-09-10T22:09:57.265468
-- ============================================================

-- Clear existing data
DELETE FROM data_source;

-- 8 rows
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-01', 'Permit-to-Work System (electronic)', 'connected', 'System of record for every permit.', '2026-08-05T02:52:00-04:00', 450, FALSE);
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-02', 'Gate Access-Control', 'connected', 'Badge-in and badge-out events at every gate.', '2026-08-05T02:53:00-04:00', 2440, FALSE);
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-03', 'Location and Tag Data', 'connected', 'Worker and asset position from tags and beacons.', '2026-08-05T02:53:00-04:00', 2412, TRUE);
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-04', 'CCTV and Presence', 'connected', 'Camera presence confirmation at entry points.', '2026-08-05T02:51:00-04:00', 118, TRUE);
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-05', 'Contractor Timesheets', 'partial', 'Contractor company submissions of who is working.', '2026-08-05T00:10:00-04:00', 2380, FALSE);
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-06', 'HSE Action Tracker', 'partial', 'Corrective and preventive actions from audits.', '2026-08-04T13:00:00-04:00', 120, FALSE);
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-07', 'Maintenance Work Orders', 'connected', 'Turnaround scope, job cards, and equipment history.', '2026-08-05T02:20:00-04:00', 3860, FALSE);
INSERT INTO data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic) VALUES ('ds-aramco-08', 'HSE Reporting and Statistics', 'partial', 'Near-miss reports and recordable cases.', '2026-08-03T05:00:00-04:00', 35, FALSE);