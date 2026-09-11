-- ============================================================
-- Table: muster_point
-- Rows:  5
-- Generated: 2026-09-10T22:09:57.251199
-- ============================================================

-- Clear existing data
DELETE FROM muster_point;

-- 5 rows
INSERT INTO muster_point (id, name, covers_zones, capacity, accounted_count, expected_count, radius_m, geo_point) VALUES ('M1', 'Muster Point A — North', '["Unit 1 \u2014 Crude Distillation", "Tank Farm North"]', 800, 612, 618, 160, '{"type": "Point", "coordinates": [50.018, 26.512]}');
INSERT INTO muster_point (id, name, covers_zones, capacity, accounted_count, expected_count, radius_m, geo_point) VALUES ('M2', 'Muster Point B — Central', '["Unit 2 \u2014 Hydrocracker", "Utilities and Flare"]', 800, 681, 685, 160, '{"type": "Point", "coordinates": [50.021, 26.512]}');
INSERT INTO muster_point (id, name, covers_zones, capacity, accounted_count, expected_count, radius_m, geo_point) VALUES ('M3', 'Muster Point C — East', '["Unit 3 \u2014 Coker", "Unit 4 \u2014 Sulphur Recovery"]', 800, 624, 630, 160, '{"type": "Point", "coordinates": [50.024, 26.512]}');
INSERT INTO muster_point (id, name, covers_zones, capacity, accounted_count, expected_count, radius_m, geo_point) VALUES ('M4', 'Muster Point D — South', '["Tank Farm South", "Marine Loading"]', 400, 256, 260, 120, '{"type": "Point", "coordinates": [50.018, 26.509]}');
INSERT INTO muster_point (id, name, covers_zones, capacity, accounted_count, expected_count, radius_m, geo_point) VALUES ('M5', 'Muster Point E — Admin and Gate', '["Central Admin and Control", "West Gate", "Parking Muster Point"]', 400, 211, 219, 120, '{"type": "Point", "coordinates": [50.021, 26.509]}');