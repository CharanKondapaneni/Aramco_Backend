-- ============================================================
-- Table: zone
-- Rows:  11
-- Generated: 2026-09-10T22:09:57.202374
-- ============================================================

-- Clear existing data
DELETE FROM zone;

-- 11 rows
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z1', 'Unit 1 — Crude Distillation', 'Unit 1', 'high', 'Work Place', 100, 96, 220, 170, 600, '{"type": "Polygon", "coordinates": [[[100, 96], [320, 96], [320, 266], [100, 266], [100, 96]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z10', 'Administration Block', 'Admin', 'low', 'Work Place', 460, 450, 140, 100, 250, '{"type": "Polygon", "coordinates": [[[460, 450], [600, 450], [600, 550], [460, 550], [460, 450]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z11', 'Gate House & Security', 'Gate', 'low', 'Work Place', 620, 450, 120, 100, 100, '{"type": "Polygon", "coordinates": [[[620, 450], [740, 450], [740, 550], [620, 550], [620, 450]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z2', 'Unit 2 — Hydrocracker', 'Unit 2', 'high', 'Work Place', 340, 96, 250, 170, 500, '{"type": "Polygon", "coordinates": [[[340, 96], [590, 96], [590, 266], [340, 266], [340, 96]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z3', 'Unit 3 — Coker', 'Unit 3', 'high', 'Work Place', 600, 96, 230, 170, 450, '{"type": "Polygon", "coordinates": [[[600, 96], [830, 96], [830, 266], [600, 266], [600, 96]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z4', 'Unit 4 — Sulphur Recovery', 'Unit 4', 'medium', 'Work Place', 100, 290, 200, 140, 350, '{"type": "Polygon", "coordinates": [[[100, 290], [300, 290], [300, 430], [100, 430], [100, 290]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z5', 'Unit 5 — Utilities', 'Unit 5', 'low', 'Work Place', 320, 290, 180, 140, 300, '{"type": "Polygon", "coordinates": [[[320, 290], [500, 290], [500, 430], [320, 430], [320, 290]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z6', 'Unit 6 — Tankage North', 'Unit 6', 'medium', 'Work Place', 520, 290, 200, 140, 300, '{"type": "Polygon", "coordinates": [[[520, 290], [720, 290], [720, 430], [520, 430], [520, 290]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z7', 'Unit 7 — Tankage South', 'Unit 7', 'medium', 'Work Place', 740, 290, 200, 140, 300, '{"type": "Polygon", "coordinates": [[[740, 290], [940, 290], [940, 430], [740, 430], [740, 290]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z8', 'Control Room Complex', 'Control', 'low', 'Work Place', 100, 450, 160, 100, 150, '{"type": "Polygon", "coordinates": [[[100, 450], [260, 450], [260, 550], [100, 550], [100, 450]]]}');
INSERT INTO zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) VALUES ('Z9', 'Maintenance Workshop', 'Workshop', 'low', 'Work Place', 280, 450, 160, 100, 200, '{"type": "Polygon", "coordinates": [[[280, 450], [440, 450], [440, 550], [280, 550], [280, 450]]]}');