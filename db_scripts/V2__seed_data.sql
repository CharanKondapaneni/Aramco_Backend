-- ============================================================
-- V2__seed_data.sql
-- TrackLynk Demo — All seed data
-- Run after V1 schema is applied
-- ============================================================

COPY public.action (id, rank, title, risk_bucket, priority, rationale, owner, owner_note, due_by, evidence, sources, draft_task, target_system, status) FROM stdin;
ACT-GEN-001	4	HSE action item 1	equipment	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-002	5	HSE action item 2	health	highest	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-003	6	HSE action item 3	safety	highest	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-004	7	HSE action item 4	safety	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-005	8	HSE action item 5	equipment	medium	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-006	9	HSE action item 6	compliance	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-007	10	HSE action item 7	compliance	highest	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-008	11	HSE action item 8	safety	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-009	12	HSE action item 9	equipment	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-010	13	HSE action item 10	health	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-011	14	HSE action item 11	equipment	highest	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-012	15	HSE action item 12	equipment	high	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-013	16	HSE action item 13	health	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-014	17	HSE action item 14	equipment	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-015	18	HSE action item 15	compliance	medium	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-016	19	HSE action item 16	compliance	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-017	20	HSE action item 17	equipment	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-018	21	HSE action item 18	safety	high	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-019	22	HSE action item 19	compliance	high	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-020	23	HSE action item 20	equipment	highest	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-021	24	HSE action item 21	safety	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-022	25	HSE action item 22	safety	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-023	26	HSE action item 23	safety	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-024	27	HSE action item 24	health	high	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-025	28	HSE action item 25	compliance	highest	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-026	29	HSE action item 26	compliance	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-027	30	HSE action item 27	compliance	high	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-028	31	HSE action item 28	equipment	high	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-029	32	HSE action item 29	compliance	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-030	33	HSE action item 30	compliance	highest	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-031	34	HSE action item 31	health	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-032	35	HSE action item 32	compliance	highest	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-033	36	HSE action item 33	health	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-034	37	HSE action item 34	safety	high	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-035	38	HSE action item 35	compliance	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-036	39	HSE action item 36	health	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-037	40	HSE action item 37	safety	medium	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-038	41	HSE action item 38	compliance	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-039	42	HSE action item 39	compliance	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-040	43	HSE action item 40	health	highest	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-041	44	HSE action item 41	compliance	medium	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-042	45	HSE action item 42	equipment	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-043	46	HSE action item 43	equipment	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-044	47	HSE action item 44	equipment	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-045	48	HSE action item 45	safety	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-046	49	HSE action item 46	compliance	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-047	50	HSE action item 47	safety	high	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-048	51	HSE action item 48	equipment	highest	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-049	52	HSE action item 49	safety	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-050	53	HSE action item 50	compliance	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-051	54	HSE action item 51	health	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-052	55	HSE action item 52	compliance	high	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-053	56	HSE action item 53	health	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-054	57	HSE action item 54	health	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-055	58	HSE action item 55	compliance	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-056	59	HSE action item 56	compliance	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-057	60	HSE action item 57	equipment	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-058	61	HSE action item 58	safety	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-059	62	HSE action item 59	compliance	medium	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-060	63	HSE action item 60	health	medium	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-061	64	HSE action item 61	health	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-062	65	HSE action item 62	compliance	medium	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-063	66	HSE action item 63	equipment	highest	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-064	67	HSE action item 64	equipment	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-065	68	HSE action item 65	safety	medium	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-066	69	HSE action item 66	safety	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-067	70	HSE action item 67	safety	high	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-068	71	HSE action item 68	equipment	high	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-069	72	HSE action item 69	safety	medium	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-070	73	HSE action item 70	equipment	high	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-071	74	HSE action item 71	health	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-072	75	HSE action item 72	safety	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-073	76	HSE action item 73	compliance	high	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-074	77	HSE action item 74	safety	high	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-075	78	HSE action item 75	health	highest	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-076	79	HSE action item 76	equipment	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-077	80	HSE action item 77	safety	high	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-078	81	HSE action item 78	safety	highest	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-079	82	HSE action item 79	health	high	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-080	83	HSE action item 80	equipment	high	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-081	84	HSE action item 81	compliance	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-082	85	HSE action item 82	compliance	highest	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-083	86	HSE action item 83	health	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-084	87	HSE action item 84	equipment	medium	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-085	88	HSE action item 85	equipment	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-086	89	HSE action item 86	safety	highest	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-087	90	HSE action item 87	equipment	high	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-088	91	HSE action item 88	safety	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-089	92	HSE action item 89	compliance	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-090	93	HSE action item 90	health	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-091	94	HSE action item 91	health	medium	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-092	95	HSE action item 92	compliance	medium	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-093	96	HSE action item 93	safety	medium	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-094	97	HSE action item 94	health	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-095	98	HSE action item 95	compliance	high	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-096	99	HSE action item 96	equipment	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-097	100	HSE action item 97	equipment	high	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-098	101	HSE action item 98	compliance	medium	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-GEN-099	102	HSE action item 99	compliance	highest	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-100	103	HSE action item 100	safety	highest	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-101	104	HSE action item 101	safety	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-102	105	HSE action item 102	safety	high	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-103	106	HSE action item 103	health	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 24 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-104	107	HSE action item 104	health	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-105	108	HSE action item 105	equipment	high	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-106	109	HSE action item 106	compliance	medium	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-107	110	HSE action item 107	compliance	highest	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-108	111	HSE action item 108	health	high	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-109	112	HSE action item 109	equipment	medium	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-110	113	HSE action item 110	equipment	highest	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-111	114	HSE action item 111	health	highest	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	confirmed
ACT-GEN-112	115	HSE action item 112	health	high	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Within 48 hours	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-113	116	HSE action item 113	equipment	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-GEN-114	117	HSE action item 114	safety	medium	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-115	118	HSE action item 115	health	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	in_progress
ACT-HSE-125	119	HSE action item 119	compliance	medium	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	This week	["System alert ACT-HSE-125"]	["Condition-monitoring system"]	Address action item ACT-HSE-125 as per HSE protocol.	HSE action tracker	pending_confirmation
ACT-HSE-126	120	HSE action item 120	equipment	low	Action required based on monitoring system alert.	Unit 4 shift supervisor	\N	Within 24 hours	["System alert ACT-HSE-126"]	["HSE action tracker"]	Address action item ACT-HSE-126 as per HSE protocol.	HSE action tracker	completed
ACT-GEN-116	119	HSE action item 116	health	low	Action required based on monitoring system alert.	Unit 1 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
ACT-GEN-117	120	HSE action item 117	equipment	low	Action required based on monitoring system alert.	Unit 3 shift supervisor	\N	Before the night shift	\N	\N	Address action item as per HSE protocol.	HSE action tracker	dismissed
ACT-GEN-118	121	HSE action item 118	equipment	low	Action required based on monitoring system alert.	Unit 2 shift supervisor	\N	This week	\N	\N	Address action item as per HSE protocol.	HSE action tracker	completed
\.

COPY public.asset (id, tag, name, zone_id, asset_type, criticality, health_score, health_band, alarm_state, alarm_label, trend, trend_note, rul_value, rul_unit, rul_confidence, rul_basis, next_service_due, next_service_type, next_service_window, hse_implication) FROM stdin;
AST-C2101	C-2101	Hydrocracker recycle gas compressor	Z2	Centrifugal compressor	high	62	degraded	alarm	Vibration high — stage 2 bearing	worsening	Overall vibration up 41% in 14 days; the step change lines up with the Feb turnaround restart.	21	days	71	Vibration trend extrapolated to the 7.1 mm/s trip threshold.	2026-08-19	Planned bearing inspection	Turnaround window T-3	Six of the 88 open permits on Unit 2 are within the compressor's exclusion radius, two of them hot work.
AST-GD3307	GD-3307	Fixed gas detector — Unit 3 south manifold	Z3	Gas detector	high	78	watch	attention	Calibration due in 2 days	stable	Calibration interval approaching; unit still within tolerance.	2	days	90	Days since last calibration vs 90-day interval.	2026-08-07	Gas detector calibration	Routine maintenance slot	Detector covers the south manifold area where CS-1182 is active.
AST-P1044	P-1044	Crude charge pump	Z1	Centrifugal pump	medium	91	healthy	\N	\N	stable	All readings within normal operating range.	\N	\N	\N	\N	2026-09-15	Routine seal inspection	T-4	No active HSE implications.
AST-RO9442	RO-9442	Rotating equipment — Admin	Z10	Rotating equipment	low	50	critical	\N	\N	improving	Trend is improving over last 14 days.	245	days	60	Trend extrapolation	2026-09-29	Seal inspection	T-4	Asset condition may affect nearby permits in Admin.
AST-PR4473	PR-4473	Pressure vessel — Unit 5	Z5	Pressure vessel	low	93	healthy	attention	Pressure vessel alarm condition	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-08-14	Routine inspection	T-2	No active HSE implications.
AST-PR9416	PR-9416	Pressure vessel — Workshop	Z9	Pressure vessel	low	98	healthy	attention	Pressure vessel alarm condition	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-10-17	Bearing replacement	T-2	No active HSE implications.
AST-GA8816	GA-8816	Gas detector — Unit 4	Z4	Gas detector	low	85	watch	\N	\N	improving	Trend is improving over last 14 days.	\N	\N	\N	\N	2026-08-12	Calibration	T-4	Asset condition may affect nearby permits in Unit 4.
AST-GA7853	GA-7853	Gas detector — Unit 6	Z6	Gas detector	medium	87	watch	\N	\N	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-09-22	Routine inspection	T-2	Asset condition may affect nearby permits in Unit 6.
AST-CE4909	CE-4909	Centrifugal compressor — Unit 5	Z5	Centrifugal compressor	low	50	critical	attention	Centrifugal compressor alarm condition	worsening	Trend is worsening over last 14 days.	184	days	89	Trend extrapolation	2026-08-27	Bearing replacement	T-4	Asset condition may affect nearby permits in Unit 5.
AST-PR6546	PR-6546	Pressure vessel — Unit 4	Z4	Pressure vessel	high	63	degraded	attention	Pressure vessel alarm condition	stable	Trend is stable over last 14 days.	299	days	82	Trend extrapolation	2026-08-28	Calibration	T-5	Asset condition may affect nearby permits in Unit 4.
AST-RO8132	RO-8132	Rotating equipment — Unit 7	Z7	Rotating equipment	high	70	degraded	\N	\N	stable	Trend is stable over last 14 days.	175	days	88	Trend extrapolation	2026-08-20	Seal inspection	T-2	Asset condition may affect nearby permits in Unit 7.
AST-GA2495	GA-2495	Gas detector — Unit 1	Z1	Gas detector	medium	55	critical	\N	\N	improving	Trend is improving over last 14 days.	355	days	71	Trend extrapolation	2026-08-20	Routine inspection	T-3	Asset condition may affect nearby permits in Unit 1.
AST-GA1683	GA-1683	Gas detector — Admin	Z10	Gas detector	high	88	watch	\N	\N	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-10-11	Bearing replacement	T-5	Asset condition may affect nearby permits in Admin.
AST-HE3143	HE-3143	Heat exchanger — Gate	Z11	Heat exchanger	low	91	healthy	\N	\N	improving	Trend is improving over last 14 days.	\N	\N	\N	\N	2026-09-28	Calibration	T-4	No active HSE implications.
AST-PR6725	PR-6725	Pressure vessel — Unit 2	Z2	Pressure vessel	high	95	healthy	\N	\N	improving	Trend is improving over last 14 days.	\N	\N	\N	\N	2026-09-05	Bearing replacement	T-1	No active HSE implications.
AST-SA4208	SA-4208	Safety relief valve — Gate	Z11	Safety relief valve	low	70	degraded	\N	\N	stable	Trend is stable over last 14 days.	84	days	69	Trend extrapolation	2026-10-18	Seal inspection	T-5	Asset condition may affect nearby permits in Gate.
AST-HE2797	HE-2797	Heat exchanger — Unit 6	Z6	Heat exchanger	high	51	critical	\N	\N	stable	Trend is stable over last 14 days.	321	days	66	Trend extrapolation	2026-10-27	Seal inspection	T-1	Asset condition may affect nearby permits in Unit 6.
AST-CE3065	CE-3065	Centrifugal compressor — Unit 3	Z3	Centrifugal compressor	high	96	healthy	attention	Centrifugal compressor alarm condition	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-09-02	Bearing replacement	T-2	No active HSE implications.
AST-PR6090	PR-6090	Pressure vessel — Unit 4	Z4	Pressure vessel	medium	66	degraded	attention	Pressure vessel alarm condition	worsening	Trend is worsening over last 14 days.	30	days	72	Trend extrapolation	2026-09-02	Seal inspection	T-5	Asset condition may affect nearby permits in Unit 4.
AST-CE2029	CE-2029	Centrifugal compressor — Control	Z8	Centrifugal compressor	high	80	watch	\N	\N	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-09-14	Bearing replacement	T-4	Asset condition may affect nearby permits in Control.
AST-GA1967	GA-1967	Gas detector — Control	Z8	Gas detector	low	64	degraded	\N	\N	stable	Trend is stable over last 14 days.	20	days	61	Trend extrapolation	2026-09-11	Calibration	T-3	Asset condition may affect nearby permits in Control.
AST-RO8415	RO-8415	Rotating equipment — Control	Z8	Rotating equipment	medium	77	watch	attention	Rotating equipment alarm condition	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-08-29	Bearing replacement	T-2	Asset condition may affect nearby permits in Control.
AST-CO9536	CO-9536	Control valve — Gate	Z11	Control valve	low	86	watch	attention	Control valve alarm condition	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-08-31	Seal inspection	T-2	Asset condition may affect nearby permits in Gate.
AST-RO3254	RO-3254	Rotating equipment — Admin	Z10	Rotating equipment	high	74	degraded	alarm	Rotating equipment alarm condition	stable	Trend is stable over last 14 days.	20	days	84	Trend extrapolation	2026-08-25	Seal inspection	T-3	Asset condition may affect nearby permits in Admin.
AST-GA1811	GA-1811	Gas detector — Unit 1	Z1	Gas detector	high	93	healthy	alarm	Gas detector alarm condition	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-09-29	Seal inspection	T-3	No active HSE implications.
AST-CE9879	CE-9879	Centrifugal compressor — Unit 6	Z6	Centrifugal compressor	high	90	healthy	alarm	Centrifugal compressor alarm condition	improving	Trend is improving over last 14 days.	\N	\N	\N	\N	2026-10-02	Bearing replacement	T-3	No active HSE implications.
AST-CE6318	CE-6318	Centrifugal compressor — Unit 2	Z2	Centrifugal compressor	low	81	watch	attention	Centrifugal compressor alarm condition	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-08-16	Calibration	T-5	Asset condition may affect nearby permits in Unit 2.
AST-SA8446	SA-8446	Safety relief valve — Unit 3	Z3	Safety relief valve	high	62	degraded	alarm	Safety relief valve alarm condition	worsening	Trend is worsening over last 14 days.	355	days	66	Trend extrapolation	2026-09-17	Calibration	T-3	Asset condition may affect nearby permits in Unit 3.
AST-SA8538	SA-8538	Safety relief valve — Admin	Z10	Safety relief valve	low	81	watch	attention	Safety relief valve alarm condition	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-09-19	Bearing replacement	T-4	Asset condition may affect nearby permits in Admin.
AST-PR5770	PR-5770	Pressure vessel — Unit 4	Z4	Pressure vessel	medium	66	degraded	attention	Pressure vessel alarm condition	worsening	Trend is worsening over last 14 days.	318	days	91	Trend extrapolation	2026-09-24	Calibration	T-2	Asset condition may affect nearby permits in Unit 4.
AST-HE4222	HE-4222	Heat exchanger — Control	Z8	Heat exchanger	medium	73	degraded	attention	Heat exchanger alarm condition	worsening	Trend is worsening over last 14 days.	197	days	70	Trend extrapolation	2026-08-25	Seal inspection	T-3	Asset condition may affect nearby permits in Control.
AST-RO1470	RO-1470	Rotating equipment — Unit 5	Z5	Rotating equipment	high	90	healthy	alarm	Rotating equipment alarm condition	improving	Trend is improving over last 14 days.	\N	\N	\N	\N	2026-09-23	Routine inspection	T-2	No active HSE implications.
AST-SA8534	SA-8534	Safety relief valve — Unit 4	Z4	Safety relief valve	medium	69	degraded	\N	\N	worsening	Trend is worsening over last 14 days.	80	days	74	Trend extrapolation	2026-08-23	Bearing replacement	T-1	Asset condition may affect nearby permits in Unit 4.
AST-CE9260	CE-9260	Centrifugal pump — Gate	Z11	Centrifugal pump	medium	93	healthy	\N	\N	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-09-18	Seal inspection	T-5	No active HSE implications.
AST-PR2721	PR-2721	Pressure vessel — Unit 4	Z4	Pressure vessel	low	80	watch	attention	Pressure vessel alarm condition	improving	Trend is improving over last 14 days.	\N	\N	\N	\N	2026-08-26	Calibration	T-3	Asset condition may affect nearby permits in Unit 4.
AST-PR2677	PR-2677	Pressure vessel — Unit 3	Z3	Pressure vessel	low	100	healthy	\N	\N	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-09-01	Calibration	T-2	No active HSE implications.
AST-SA1701	SA-1701	Safety relief valve — Admin	Z10	Safety relief valve	medium	69	degraded	alarm	Safety relief valve alarm condition	improving	Trend is improving over last 14 days.	290	days	63	Trend extrapolation	2026-08-31	Bearing replacement	T-5	Asset condition may affect nearby permits in Admin.
AST-HE3866	HE-3866	Heat exchanger — Unit 5	Z5	Heat exchanger	high	74	degraded	\N	\N	stable	Trend is stable over last 14 days.	233	days	88	Trend extrapolation	2026-08-28	Routine inspection	T-3	Asset condition may affect nearby permits in Unit 5.
AST-PR4168	PR-4168	Pressure vessel — Unit 6	Z6	Pressure vessel	medium	71	degraded	attention	Pressure vessel alarm condition	improving	Trend is improving over last 14 days.	280	days	63	Trend extrapolation	2026-10-23	Calibration	T-4	Asset condition may affect nearby permits in Unit 6.
AST-SA4291	SA-4291	Safety relief valve — Gate	Z11	Safety relief valve	medium	69	degraded	\N	\N	stable	Trend is stable over last 14 days.	149	days	66	Trend extrapolation	2026-09-21	Seal inspection	T-4	Asset condition may affect nearby permits in Gate.
AST-SA3658	SA-3658	Safety relief valve — Unit 4	Z4	Safety relief valve	high	97	healthy	\N	\N	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-09-12	Seal inspection	T-3	No active HSE implications.
AST-HE6852	HE-6852	Heat exchanger — Unit 1	Z1	Heat exchanger	low	58	critical	\N	\N	worsening	Trend is worsening over last 14 days.	193	days	70	Trend extrapolation	2026-10-20	Seal inspection	T-3	Asset condition may affect nearby permits in Unit 1.
AST-PR6766	PR-6766	Pressure vessel — Unit 4	Z4	Pressure vessel	low	51	critical	attention	Pressure vessel alarm condition	worsening	Trend is worsening over last 14 days.	25	days	82	Trend extrapolation	2026-09-25	Seal inspection	T-1	Asset condition may affect nearby permits in Unit 4.
AST-CE6057	CE-6057	Centrifugal pump — Workshop	Z9	Centrifugal pump	medium	96	healthy	\N	\N	improving	Trend is improving over last 14 days.	\N	\N	\N	\N	2026-08-18	Calibration	T-4	No active HSE implications.
AST-PR6275	PR-6275	Pressure vessel — Unit 4	Z4	Pressure vessel	medium	62	degraded	attention	Pressure vessel alarm condition	stable	Trend is stable over last 14 days.	192	days	78	Trend extrapolation	2026-10-05	Routine inspection	T-1	Asset condition may affect nearby permits in Unit 4.
AST-CE1602	CE-1602	Centrifugal pump — Unit 4	Z4	Centrifugal pump	high	86	watch	\N	\N	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-10-25	Calibration	T-1	Asset condition may affect nearby permits in Unit 4.
AST-HE9107	HE-9107	Heat exchanger — Unit 6	Z6	Heat exchanger	low	81	watch	attention	Heat exchanger alarm condition	worsening	Trend is worsening over last 14 days.	\N	\N	\N	\N	2026-09-04	Routine inspection	T-4	Asset condition may affect nearby permits in Unit 6.
AST-CE8649	CE-8649	Centrifugal pump — Admin	Z10	Centrifugal pump	high	92	healthy	\N	\N	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-09-03	Bearing replacement	T-5	No active HSE implications.
AST-GA5380	GA-5380	Gas detector — Unit 2	Z2	Gas detector	high	94	healthy	alarm	Gas detector alarm condition	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-10-10	Calibration	T-5	No active HSE implications.
AST-SA7934	SA-7934	Safety relief valve — Admin	Z10	Safety relief valve	medium	81	watch	\N	\N	stable	Trend is stable over last 14 days.	\N	\N	\N	\N	2026-10-25	Routine inspection	T-1	Asset condition may affect nearby permits in Admin.
\.

COPY public.asset_reading (reading_type_id, asset_id, label, current_value, unit, state, threshold_description, series, source_system) FROM stdin;
vib	AST-C2101	Overall vibration	5.8	mm/s	alarm	Alert 4.5 · Trip 7.1	[3.1, 3.2, 3.4, 3.5, 3.8, 4.0, 4.2, 4.5, 4.8, 5.0, 5.2, 5.5, 5.7, 5.8]	Condition-monitoring system
temp	AST-C2101	Bearing temperature	84	°C	attention	Alert 80 · Trip 95	[65, 66, 67, 68, 70, 71, 72, 74, 76, 78, 80, 81, 82, 83, 84, 84]	Condition-monitoring system
runtime	AST-C2101	Runtime since overhaul	7120	h	attention	Overhaul interval 8000	[7000, 7020, 7040, 7060, 7080, 7100, 7120]	CMMS
pressure	AST-C2101	Suction pressure	12.4	bar	compliant	Low 8.0 · High 18.0	[12.0, 12.1, 12.2, 12.3, 12.3, 12.4, 12.4]	Process historian
cal_age	AST-GD3307	Days since calibration	88	days	attention	Calibration interval 90	[1, 10, 20, 30, 40, 50, 60, 70, 80, 88]	Condition-monitoring system
gas_level	AST-GD3307	H2S reading	0.8	ppm	compliant	Alert 1.0 · Trip 5.0	[0.5, 0.6, 0.6, 0.7, 0.7, 0.8, 0.8]	Gas detection system
runtime-AST-P1044	AST-P1044	Runtime since overhaul	29.6	h	compliant	Overhaul interval 8000	[28.8, 29.4, 29.9, 29.0, 29.5, 28.5, 29.8, 29.5, 30.1, 27.6, 29.9, 27.7, 30.2, 28.5]	Process historian
pressure-AST-P1044	AST-P1044	Discharge pressure	70.1	bar	compliant	Low 5.0 · High 20.0	[71.5, 71.5, 69.2, 70.4, 70.0, 70.5, 68.6, 68.7, 71.9, 68.3, 70.1, 68.6, 70.9, 71.2]	CMMS
flow-AST-RO9442	AST-RO9442	Flow rate	51.6	m³/h	compliant	Low 10 · High 200	[52.9, 50.6, 51.3, 51.9, 51.9, 50.0, 51.6, 49.6, 53.4, 52.3, 53.3, 49.7, 52.9, 52.8]	CMMS
vib-AST-RO9442	AST-RO9442	Vibration	21.9	mm/s	compliant	Alert 4.5 · Trip 7.1	[20.5, 21.5, 20.9, 23.4, 23.2, 23.1, 20.2, 23.1, 23.2, 20.0, 20.3, 21.5, 20.7, 21.8]	Process historian
temp-AST-RO9442	AST-RO9442	Temperature	43.0	°C	compliant	Alert 80 · Trip 95	[45.0, 41.8, 43.8, 44.1, 44.6, 42.8, 45.0, 43.9, 41.6, 41.9, 42.4, 43.9, 42.9, 44.3]	Process historian
pressure-AST-RO9442	AST-RO9442	Discharge pressure	75.9	bar	compliant	Low 5.0 · High 20.0	[74.0, 74.2, 75.8, 75.3, 75.0, 73.9, 77.2, 74.8, 76.0, 76.3, 77.6, 74.0, 77.6, 74.9]	Condition-monitoring system
flow-AST-PR4473	AST-PR4473	Flow rate	29.5	m³/h	compliant	Low 10 · High 200	[28.6, 28.9, 28.7, 30.8, 29.6, 29.6, 28.9, 30.3, 29.5, 28.1, 31.4, 30.2, 29.3, 28.9]	Condition-monitoring system
temp-AST-PR4473	AST-PR4473	Temperature	32.3	°C	compliant	Alert 80 · Trip 95	[33.5, 32.8, 34.1, 33.8, 33.1, 33.2, 33.5, 33.1, 31.0, 31.2, 32.8, 32.6, 32.0, 31.6]	CMMS
runtime-AST-PR4473	AST-PR4473	Runtime since overhaul	8.3	h	attention	Overhaul interval 8000	[7.0, 8.7, 10.1, 8.4, 7.4, 9.3, 8.9, 8.0, 7.1, 8.2, 7.6, 8.0, 8.7, 9.8]	Condition-monitoring system
pressure-AST-PR4473	AST-PR4473	Discharge pressure	56.2	bar	compliant	Low 5.0 · High 20.0	[56.6, 54.2, 55.2, 54.3, 55.6, 57.7, 55.4, 55.6, 54.8, 54.9, 55.3, 55.0, 55.9, 56.3]	Condition-monitoring system
runtime-AST-PR9416	AST-PR9416	Runtime since overhaul	76.1	h	compliant	Overhaul interval 8000	[76.1, 76.6, 77.3, 75.3, 75.1, 75.4, 76.3, 74.6, 74.4, 75.3, 75.0, 76.3, 76.1, 74.4]	Process historian
temp-AST-PR9416	AST-PR9416	Temperature	19.6	°C	compliant	Alert 80 · Trip 95	[18.3, 21.4, 21.2, 18.2, 19.4, 17.9, 18.8, 19.1, 20.4, 20.9, 20.5, 18.2, 21.3, 21.4]	CMMS
flow-AST-GA8816	AST-GA8816	Flow rate	55.8	m³/h	compliant	Low 10 · High 200	[56.3, 54.8, 57.0, 55.5, 57.2, 57.1, 56.9, 54.6, 54.1, 57.2, 57.0, 56.0, 55.3, 55.2]	CMMS
temp-AST-GA8816	AST-GA8816	Temperature	72.7	°C	compliant	Alert 80 · Trip 95	[72.2, 71.9, 72.5, 71.3, 72.7, 73.4, 70.9, 70.7, 74.3, 71.3, 72.5, 73.8, 71.1, 74.2]	CMMS
vib-AST-GA8816	AST-GA8816	Vibration	29.6	mm/s	compliant	Alert 4.5 · Trip 7.1	[31.1, 31.5, 30.2, 31.3, 30.9, 28.9, 28.1, 28.4, 30.8, 31.5, 31.4, 28.6, 31.0, 28.0]	Condition-monitoring system
runtime-AST-GA7853	AST-GA7853	Runtime since overhaul	54.8	h	attention	Overhaul interval 8000	[54.9, 55.2, 54.2, 54.0, 53.9, 54.9, 53.8, 55.8, 55.7, 54.8, 53.1, 54.9, 55.5, 54.6]	Condition-monitoring system
pressure-AST-GA7853	AST-GA7853	Discharge pressure	63.7	bar	compliant	Low 5.0 · High 20.0	[65.0, 64.3, 65.5, 62.9, 62.5, 64.3, 65.4, 62.8, 62.8, 61.8, 62.2, 65.0, 63.2, 61.7]	Condition-monitoring system
temp-AST-CE4909	AST-CE4909	Temperature	51.8	°C	compliant	Alert 80 · Trip 95	[53.0, 53.7, 50.9, 50.0, 51.5, 53.7, 52.7, 52.1, 52.7, 52.0, 52.9, 51.6, 52.7, 51.3]	Condition-monitoring system
pressure-AST-CE4909	AST-CE4909	Discharge pressure	88.0	bar	compliant	Low 5.0 · High 20.0	[86.5, 87.0, 88.3, 87.8, 87.7, 87.0, 88.8, 87.7, 88.7, 86.2, 86.1, 86.1, 87.7, 88.0]	Process historian
flow-AST-CE4909	AST-CE4909	Flow rate	96.3	m³/h	compliant	Low 10 · High 200	[96.5, 94.6, 95.4, 95.9, 96.1, 96.1, 96.7, 95.2, 97.2, 96.0, 96.9, 97.4, 96.9, 98.0]	Process historian
vib-AST-PR6546	AST-PR6546	Vibration	83.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[83.8, 83.2, 85.5, 82.5, 82.7, 85.8, 82.2, 83.7, 83.9, 83.5, 82.9, 84.4, 84.3, 82.6]	CMMS
flow-AST-PR6546	AST-PR6546	Flow rate	34.9	m³/h	compliant	Low 10 · High 200	[35.9, 33.0, 33.3, 35.7, 35.9, 33.6, 33.9, 33.5, 35.7, 36.7, 34.2, 36.6, 36.5, 36.7]	Process historian
pressure-AST-PR6546	AST-PR6546	Discharge pressure	88.3	bar	compliant	Low 5.0 · High 20.0	[86.6, 88.4, 87.3, 86.6, 87.8, 87.2, 88.4, 86.6, 86.4, 86.5, 88.3, 87.1, 87.3, 86.7]	Condition-monitoring system
vib-AST-RO8132	AST-RO8132	Vibration	10.9	mm/s	compliant	Alert 4.5 · Trip 7.1	[12.3, 11.2, 10.9, 11.7, 12.6, 9.7, 9.5, 9.3, 9.7, 12.3, 11.6, 11.0, 9.2, 12.7]	CMMS
pressure-AST-RO8132	AST-RO8132	Discharge pressure	50.2	bar	compliant	Low 5.0 · High 20.0	[48.6, 49.6, 51.1, 49.7, 48.8, 48.6, 49.5, 49.1, 51.6, 51.9, 51.3, 49.1, 52.0, 51.3]	Process historian
temp-AST-GA2495	AST-GA2495	Temperature	81.8	°C	compliant	Alert 80 · Trip 95	[82.5, 82.6, 82.2, 82.6, 80.7, 81.3, 82.5, 80.6, 80.3, 80.7, 82.5, 80.8, 81.3, 82.2]	CMMS
vib-AST-GA2495	AST-GA2495	Vibration	77.7	mm/s	compliant	Alert 4.5 · Trip 7.1	[79.6, 76.4, 76.1, 78.1, 79.4, 79.0, 78.3, 77.3, 79.3, 77.5, 75.8, 79.3, 79.4, 76.7]	Process historian
flow-AST-GA2495	AST-GA2495	Flow rate	39.0	m³/h	compliant	Low 10 · High 200	[37.9, 37.9, 37.1, 39.8, 40.6, 39.0, 40.2, 40.9, 37.2, 38.6, 39.4, 37.5, 39.1, 39.7]	CMMS
temp-AST-GA1683	AST-GA1683	Temperature	18.6	°C	compliant	Alert 80 · Trip 95	[20.0, 17.8, 20.0, 19.9, 18.6, 17.3, 19.0, 18.6, 20.3, 18.9, 18.9, 19.3, 16.9, 17.6]	Condition-monitoring system
runtime-AST-GA1683	AST-GA1683	Runtime since overhaul	34.3	h	compliant	Overhaul interval 8000	[34.5, 33.7, 36.2, 33.5, 34.0, 33.4, 34.5, 35.9, 35.0, 33.6, 33.3, 32.4, 34.0, 34.6]	CMMS
pressure-AST-GA1683	AST-GA1683	Discharge pressure	8.7	bar	compliant	Low 5.0 · High 20.0	[7.8, 9.4, 10.0, 6.9, 10.4, 9.5, 8.9, 8.6, 9.2, 9.4, 8.4, 7.7, 8.8, 10.6]	Process historian
pressure-AST-HE3143	AST-HE3143	Discharge pressure	50.6	bar	compliant	Low 5.0 · High 20.0	[52.6, 48.8, 52.2, 51.3, 49.5, 50.1, 49.2, 49.3, 52.3, 50.6, 52.2, 50.0, 49.0, 51.0]	Process historian
flow-AST-HE3143	AST-HE3143	Flow rate	85.6	m³/h	compliant	Low 10 · High 200	[84.1, 86.4, 85.7, 86.9, 86.0, 85.1, 84.8, 87.1, 87.4, 86.8, 83.9, 86.1, 85.4, 85.9]	CMMS
flow-AST-PR6725	AST-PR6725	Flow rate	16.3	m³/h	compliant	Low 10 · High 200	[17.7, 14.8, 17.6, 16.1, 18.2, 14.8, 14.9, 18.2, 16.3, 16.8, 18.1, 17.7, 17.1, 15.1]	Process historian
runtime-AST-PR6725	AST-PR6725	Runtime since overhaul	73.3	h	compliant	Overhaul interval 8000	[74.1, 74.7, 73.9, 71.3, 74.3, 72.6, 72.8, 72.0, 73.5, 73.2, 73.3, 74.8, 74.3, 74.9]	Process historian
pressure-AST-PR6725	AST-PR6725	Discharge pressure	48.0	bar	compliant	Low 5.0 · High 20.0	[48.4, 46.8, 47.4, 47.3, 48.4, 46.5, 49.3, 49.0, 46.7, 48.3, 49.5, 49.7, 48.5, 49.8]	Condition-monitoring system
temp-AST-SA4208	AST-SA4208	Temperature	20.6	°C	compliant	Alert 80 · Trip 95	[19.4, 22.5, 21.7, 21.5, 20.7, 18.8, 18.7, 21.9, 21.2, 19.1, 20.0, 19.2, 20.2, 21.9]	Condition-monitoring system
vib-AST-SA4208	AST-SA4208	Vibration	79.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[81.1, 77.9, 78.8, 80.1, 81.6, 79.9, 78.9, 79.5, 78.6, 79.1, 80.6, 81.4, 81.3, 78.3]	Process historian
temp-AST-HE2797	AST-HE2797	Temperature	44.3	°C	compliant	Alert 80 · Trip 95	[45.4, 42.6, 43.8, 43.7, 42.3, 46.1, 44.7, 43.6, 42.9, 45.2, 44.1, 44.5, 44.1, 42.4]	Process historian
vib-AST-HE2797	AST-HE2797	Vibration	82.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[82.7, 83.9, 81.7, 82.7, 81.2, 80.9, 82.6, 80.9, 82.9, 82.1, 82.0, 83.8, 81.6, 81.2]	Process historian
temp-AST-CE3065	AST-CE3065	Temperature	70.7	°C	compliant	Alert 80 · Trip 95	[71.8, 71.9, 69.6, 69.5, 70.9, 70.3, 70.5, 71.8, 70.5, 72.1, 71.4, 71.9, 69.4, 70.6]	CMMS
vib-AST-CE3065	AST-CE3065	Vibration	29.9	mm/s	compliant	Alert 4.5 · Trip 7.1	[31.7, 29.4, 29.4, 28.2, 28.7, 28.6, 29.9, 31.7, 30.9, 28.4, 28.6, 28.9, 30.7, 30.8]	Process historian
pressure-AST-CE3065	AST-CE3065	Discharge pressure	97.7	bar	compliant	Low 5.0 · High 20.0	[97.2, 96.4, 99.7, 97.4, 97.0, 96.1, 98.7, 96.1, 98.5, 99.3, 96.0, 96.8, 98.3, 99.4]	Condition-monitoring system
temp-AST-PR6090	AST-PR6090	Temperature	60.6	°C	compliant	Alert 80 · Trip 95	[61.6, 61.7, 60.7, 59.3, 60.3, 62.0, 60.1, 59.6, 59.0, 58.7, 60.1, 60.3, 59.5, 60.2]	CMMS
vib-AST-PR6090	AST-PR6090	Vibration	10.4	mm/s	compliant	Alert 4.5 · Trip 7.1	[11.3, 11.1, 9.4, 10.3, 10.3, 11.9, 9.5, 12.2, 9.0, 11.6, 11.5, 11.0, 8.6, 10.4]	Process historian
pressure-AST-PR6090	AST-PR6090	Discharge pressure	38.2	bar	compliant	Low 5.0 · High 20.0	[39.1, 36.4, 39.2, 39.6, 38.2, 36.2, 39.6, 39.2, 39.3, 37.8, 39.8, 39.8, 37.2, 39.9]	CMMS
vib-AST-CE2029	AST-CE2029	Vibration	65.9	mm/s	compliant	Alert 4.5 · Trip 7.1	[65.6, 67.2, 67.7, 64.7, 64.2, 65.1, 64.9, 66.6, 64.9, 64.3, 66.5, 64.3, 67.1, 65.4]	CMMS
temp-AST-CE2029	AST-CE2029	Temperature	57.5	°C	compliant	Alert 80 · Trip 95	[57.6, 59.1, 58.6, 55.7, 56.9, 57.4, 55.9, 57.9, 55.7, 57.2, 56.6, 59.5, 58.1, 58.2]	CMMS
pressure-AST-CE2029	AST-CE2029	Discharge pressure	33.0	bar	compliant	Low 5.0 · High 20.0	[31.1, 31.6, 32.8, 32.9, 32.5, 31.8, 31.7, 33.5, 32.6, 32.0, 34.3, 32.2, 32.2, 34.6]	CMMS
runtime-AST-CE2029	AST-CE2029	Runtime since overhaul	6.1	h	compliant	Overhaul interval 8000	[6.7, 5.9, 4.7, 7.7, 8.0, 4.7, 6.5, 6.4, 7.4, 6.2, 7.3, 4.9, 5.6, 6.8]	Process historian
temp-AST-GA1967	AST-GA1967	Temperature	39.8	°C	compliant	Alert 80 · Trip 95	[40.3, 39.0, 41.4, 38.1, 37.9, 38.4, 39.2, 40.4, 41.0, 38.7, 38.8, 41.1, 41.8, 38.8]	CMMS
vib-AST-GA1967	AST-GA1967	Vibration	71.7	mm/s	compliant	Alert 4.5 · Trip 7.1	[71.8, 70.0, 71.4, 70.0, 73.3, 72.1, 70.8, 71.6, 71.0, 71.2, 71.2, 70.6, 71.0, 73.0]	Process historian
flow-AST-GA1967	AST-GA1967	Flow rate	10.8	m³/h	compliant	Low 10 · High 200	[12.0, 12.6, 11.3, 11.8, 12.5, 9.8, 12.0, 10.3, 12.7, 9.0, 9.6, 9.0, 10.8, 10.8]	Condition-monitoring system
pressure-AST-GA1967	AST-GA1967	Discharge pressure	74.9	bar	compliant	Low 5.0 · High 20.0	[74.1, 74.0, 73.1, 76.1, 74.0, 75.6, 76.7, 76.1, 75.9, 73.8, 76.1, 75.9, 75.0, 75.1]	CMMS
vib-AST-RO8415	AST-RO8415	Vibration	68.7	mm/s	compliant	Alert 4.5 · Trip 7.1	[70.7, 68.2, 67.4, 69.6, 69.7, 69.3, 69.7, 69.5, 68.3, 70.7, 69.6, 70.4, 68.3, 68.8]	Process historian
flow-AST-RO8415	AST-RO8415	Flow rate	36.1	m³/h	compliant	Low 10 · High 200	[36.2, 36.7, 34.9, 37.0, 34.6, 34.7, 35.6, 35.7, 34.7, 37.1, 36.6, 34.5, 35.9, 34.9]	Condition-monitoring system
temp-AST-CO9536	AST-CO9536	Temperature	75.9	°C	compliant	Alert 80 · Trip 95	[75.8, 77.4, 77.1, 74.3, 75.9, 74.3, 76.8, 74.1, 74.0, 75.8, 76.8, 74.1, 76.8, 74.5]	CMMS
vib-AST-CO9536	AST-CO9536	Vibration	29.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[31.6, 29.3, 28.1, 29.5, 29.7, 31.7, 28.7, 29.9, 28.4, 28.0, 31.3, 31.0, 29.2, 29.3]	CMMS
pressure-AST-CO9536	AST-CO9536	Discharge pressure	55.3	bar	compliant	Low 5.0 · High 20.0	[56.4, 54.4, 56.7, 56.5, 56.6, 57.2, 55.6, 56.2, 53.8, 56.4, 55.7, 54.5, 54.6, 53.4]	Condition-monitoring system
flow-AST-RO3254	AST-RO3254	Flow rate	72.4	m³/h	compliant	Low 10 · High 200	[70.6, 71.5, 72.4, 71.9, 74.0, 71.2, 71.8, 72.0, 70.6, 72.3, 72.6, 74.1, 71.2, 73.3]	Process historian
pressure-AST-RO3254	AST-RO3254	Discharge pressure	40.3	bar	compliant	Low 5.0 · High 20.0	[42.3, 39.0, 38.7, 39.4, 42.2, 41.3, 41.7, 39.8, 42.2, 42.0, 39.7, 39.9, 41.0, 39.0]	Condition-monitoring system
runtime-AST-RO3254	AST-RO3254	Runtime since overhaul	91.2	h	compliant	Overhaul interval 8000	[91.3, 90.9, 93.2, 91.2, 90.4, 89.3, 93.0, 91.6, 91.0, 92.7, 89.7, 90.8, 91.5, 91.0]	Condition-monitoring system
temp-AST-GA1811	AST-GA1811	Temperature	26.8	°C	compliant	Alert 80 · Trip 95	[28.1, 27.4, 26.0, 27.7, 28.6, 28.0, 26.6, 25.7, 27.6, 26.2, 24.9, 25.3, 28.3, 25.7]	Condition-monitoring system
flow-AST-GA1811	AST-GA1811	Flow rate	30.0	m³/h	compliant	Low 10 · High 200	[28.5, 29.4, 30.4, 30.5, 31.5, 28.5, 28.5, 30.7, 30.9, 28.2, 29.7, 29.1, 29.3, 31.3]	CMMS
runtime-AST-GA1811	AST-GA1811	Runtime since overhaul	52.7	h	compliant	Overhaul interval 8000	[51.1, 53.6, 52.8, 52.4, 53.3, 52.9, 54.6, 52.5, 51.7, 53.8, 53.3, 53.3, 51.8, 51.1]	Process historian
runtime-AST-CE9879	AST-CE9879	Runtime since overhaul	94.4	h	compliant	Overhaul interval 8000	[95.9, 93.9, 94.6, 92.4, 96.1, 93.4, 94.5, 96.0, 95.5, 93.6, 94.1, 94.2, 92.7, 95.1]	Condition-monitoring system
vib-AST-CE9879	AST-CE9879	Vibration	98.5	mm/s	compliant	Alert 4.5 · Trip 7.1	[97.5, 98.9, 98.0, 98.9, 99.1, 97.7, 96.6, 99.4, 98.8, 100.2, 99.5, 97.6, 97.4, 98.7]	CMMS
pressure-AST-CE6318	AST-CE6318	Discharge pressure	88.0	bar	compliant	Low 5.0 · High 20.0	[88.8, 88.3, 86.0, 86.0, 86.1, 88.8, 87.0, 86.7, 87.7, 89.1, 89.2, 88.1, 89.9, 86.0]	CMMS
vib-AST-CE6318	AST-CE6318	Vibration	79.4	mm/s	compliant	Alert 4.5 · Trip 7.1	[78.7, 78.7, 79.5, 79.7, 79.0, 80.3, 79.4, 79.2, 78.1, 79.6, 79.8, 78.7, 79.6, 78.6]	Process historian
runtime-AST-SA8446	AST-SA8446	Runtime since overhaul	22.7	h	compliant	Overhaul interval 8000	[22.2, 21.9, 23.8, 22.8, 22.0, 21.5, 21.4, 24.5, 22.9, 21.2, 21.3, 21.8, 23.9, 23.0]	CMMS
flow-AST-SA8446	AST-SA8446	Flow rate	56.4	m³/h	compliant	Low 10 · High 200	[55.1, 55.6, 55.7, 55.2, 54.7, 56.3, 57.0, 55.2, 56.3, 56.9, 56.3, 57.9, 56.1, 56.2]	Process historian
temp-AST-SA8538	AST-SA8538	Temperature	67.3	°C	compliant	Alert 80 · Trip 95	[68.3, 68.0, 66.5, 67.6, 65.5, 68.3, 66.8, 67.8, 67.4, 67.5, 65.9, 65.5, 65.6, 68.9]	Process historian
vib-AST-SA8538	AST-SA8538	Vibration	7.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[8.4, 6.1, 8.4, 7.8, 5.9, 7.0, 6.6, 8.4, 9.7, 5.9, 8.4, 6.4, 6.6, 8.3]	Process historian
temp-AST-PR5770	AST-PR5770	Temperature	32.6	°C	compliant	Alert 80 · Trip 95	[32.0, 33.2, 31.2, 30.9, 31.6, 33.0, 31.3, 34.5, 32.0, 31.0, 31.2, 33.4, 32.8, 33.1]	CMMS
runtime-AST-PR5770	AST-PR5770	Runtime since overhaul	46.2	h	compliant	Overhaul interval 8000	[46.9, 47.4, 45.4, 47.4, 45.2, 46.8, 48.0, 47.6, 45.6, 47.5, 47.8, 45.5, 46.9, 45.3]	Condition-monitoring system
pressure-AST-PR5770	AST-PR5770	Discharge pressure	73.8	bar	compliant	Low 5.0 · High 20.0	[72.4, 74.6, 74.3, 73.5, 73.1, 73.8, 74.1, 73.3, 73.0, 73.5, 73.8, 72.6, 73.9, 74.5]	CMMS
vib-AST-PR5770	AST-PR5770	Vibration	80.0	mm/s	compliant	Alert 4.5 · Trip 7.1	[78.8, 81.3, 78.4, 79.3, 78.9, 78.9, 79.5, 80.0, 79.4, 80.0, 81.4, 79.2, 78.4, 78.1]	CMMS
temp-AST-HE4222	AST-HE4222	Temperature	61.6	°C	compliant	Alert 80 · Trip 95	[61.4, 62.5, 60.1, 59.6, 59.7, 62.2, 61.6, 60.5, 62.8, 61.5, 63.0, 60.5, 62.4, 61.9]	Process historian
flow-AST-HE4222	AST-HE4222	Flow rate	46.4	m³/h	compliant	Low 10 · High 200	[44.9, 44.6, 45.8, 44.7, 45.6, 46.8, 45.3, 46.4, 46.2, 44.6, 45.1, 45.0, 46.4, 45.9]	Condition-monitoring system
runtime-AST-HE4222	AST-HE4222	Runtime since overhaul	96.5	h	compliant	Overhaul interval 8000	[96.7, 96.9, 97.5, 96.6, 98.1, 97.6, 95.1, 97.2, 96.9, 96.1, 97.0, 96.3, 96.6, 95.6]	Condition-monitoring system
runtime-AST-RO1470	AST-RO1470	Runtime since overhaul	13.8	h	compliant	Overhaul interval 8000	[14.5, 15.0, 12.0, 14.6, 12.1, 15.0, 14.6, 13.1, 14.4, 12.2, 15.2, 12.2, 15.6, 11.8]	CMMS
vib-AST-RO1470	AST-RO1470	Vibration	29.4	mm/s	compliant	Alert 4.5 · Trip 7.1	[30.9, 29.7, 31.1, 29.8, 29.5, 28.0, 28.6, 31.1, 31.2, 27.7, 30.8, 30.2, 30.2, 31.0]	CMMS
temp-AST-RO1470	AST-RO1470	Temperature	92.5	°C	compliant	Alert 80 · Trip 95	[90.9, 90.5, 91.2, 92.6, 94.1, 90.8, 91.1, 93.5, 92.7, 93.1, 94.0, 91.2, 93.9, 92.8]	Process historian
vib-AST-SA8534	AST-SA8534	Vibration	77.1	mm/s	compliant	Alert 4.5 · Trip 7.1	[77.7, 79.1, 78.7, 77.3, 78.4, 75.1, 78.1, 75.3, 76.7, 78.9, 78.9, 78.6, 76.7, 76.0]	Process historian
runtime-AST-SA8534	AST-SA8534	Runtime since overhaul	82.0	h	attention	Overhaul interval 8000	[80.8, 80.7, 81.3, 83.5, 80.1, 81.8, 83.9, 82.2, 80.1, 81.3, 83.5, 82.6, 83.4, 81.7]	Condition-monitoring system
flow-AST-CE9260	AST-CE9260	Flow rate	74.5	m³/h	compliant	Low 10 · High 200	[74.5, 72.5, 74.4, 72.8, 76.3, 73.9, 72.7, 75.5, 73.3, 75.2, 74.4, 76.2, 74.2, 76.1]	Condition-monitoring system
vib-AST-CE9260	AST-CE9260	Vibration	20.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[20.7, 19.2, 20.8, 19.6, 19.7, 19.7, 22.8, 21.0, 22.5, 21.8, 19.7, 22.1, 20.9, 21.6]	CMMS
pressure-AST-CE9260	AST-CE9260	Discharge pressure	31.7	bar	compliant	Low 5.0 · High 20.0	[33.6, 31.0, 30.3, 31.1, 32.2, 30.6, 31.0, 30.0, 33.2, 30.0, 30.9, 32.8, 31.9, 33.0]	CMMS
runtime-AST-PR2721	AST-PR2721	Runtime since overhaul	57.9	h	compliant	Overhaul interval 8000	[59.8, 57.2, 59.4, 56.6, 57.2, 56.3, 59.7, 56.1, 59.1, 58.4, 57.5, 59.9, 59.6, 59.0]	Condition-monitoring system
flow-AST-PR2721	AST-PR2721	Flow rate	85.3	m³/h	compliant	Low 10 · High 200	[86.4, 86.6, 84.3, 86.2, 86.5, 84.8, 84.4, 86.9, 87.0, 83.8, 85.6, 87.3, 84.0, 87.1]	CMMS
temp-AST-PR2721	AST-PR2721	Temperature	43.2	°C	compliant	Alert 80 · Trip 95	[42.2, 44.5, 41.5, 41.6, 44.9, 44.9, 44.6, 41.4, 44.3, 41.6, 41.6, 42.1, 44.2, 42.1]	Process historian
pressure-AST-PR2677	AST-PR2677	Discharge pressure	76.4	bar	compliant	Low 5.0 · High 20.0	[76.3, 77.3, 76.5, 75.9, 74.9, 76.8, 76.8, 78.3, 75.4, 77.7, 76.0, 74.8, 74.4, 74.5]	CMMS
flow-AST-PR2677	AST-PR2677	Flow rate	21.4	m³/h	compliant	Low 10 · High 200	[22.3, 20.1, 22.2, 22.6, 21.3, 23.3, 22.8, 20.7, 23.0, 22.2, 19.9, 22.2, 20.5, 20.9]	Condition-monitoring system
runtime-AST-PR2677	AST-PR2677	Runtime since overhaul	55.5	h	attention	Overhaul interval 8000	[56.8, 54.6, 55.2, 55.1, 56.1, 57.4, 57.1, 54.9, 56.3, 54.3, 56.6, 53.7, 56.1, 55.1]	Condition-monitoring system
pressure-AST-SA1701	AST-SA1701	Discharge pressure	72.5	bar	compliant	Low 5.0 · High 20.0	[72.8, 73.0, 73.8, 72.7, 74.3, 71.1, 72.8, 71.1, 74.2, 73.1, 74.5, 70.6, 71.2, 72.7]	Condition-monitoring system
flow-AST-SA1701	AST-SA1701	Flow rate	30.8	m³/h	compliant	Low 10 · High 200	[30.7, 30.1, 31.9, 29.2, 32.3, 30.2, 29.6, 30.4, 29.2, 29.3, 28.8, 31.6, 32.1, 29.0]	Process historian
temp-AST-SA1701	AST-SA1701	Temperature	14.0	°C	compliant	Alert 80 · Trip 95	[15.9, 12.2, 13.6, 15.7, 14.6, 14.6, 16.0, 15.8, 12.7, 13.3, 15.2, 15.0, 12.8, 13.8]	Process historian
flow-AST-HE3866	AST-HE3866	Flow rate	46.1	m³/h	compliant	Low 10 · High 200	[47.3, 48.0, 48.1, 44.3, 45.0, 45.8, 44.6, 46.8, 48.0, 47.7, 46.6, 45.8, 45.1, 44.9]	Condition-monitoring system
runtime-AST-HE3866	AST-HE3866	Runtime since overhaul	54.8	h	compliant	Overhaul interval 8000	[56.4, 56.0, 53.9, 56.1, 53.6, 53.5, 54.9, 54.5, 53.0, 53.3, 53.5, 54.0, 56.3, 52.9]	CMMS
vib-AST-HE3866	AST-HE3866	Vibration	23.0	mm/s	compliant	Alert 4.5 · Trip 7.1	[21.7, 22.3, 21.6, 22.5, 21.8, 22.5, 24.4, 22.2, 22.1, 25.0, 24.4, 24.6, 22.2, 24.8]	CMMS
vib-AST-PR4168	AST-PR4168	Vibration	83.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[85.5, 83.5, 84.6, 82.4, 85.8, 82.6, 81.8, 84.3, 83.1, 85.6, 82.1, 84.5, 83.0, 83.6]	CMMS
temp-AST-PR4168	AST-PR4168	Temperature	51.2	°C	compliant	Alert 80 · Trip 95	[50.8, 50.3, 52.4, 52.9, 51.9, 50.4, 50.9, 52.9, 49.3, 50.6, 53.0, 49.4, 50.0, 51.5]	Process historian
flow-AST-SA4291	AST-SA4291	Flow rate	8.1	m³/h	compliant	Low 10 · High 200	[6.6, 9.3, 8.3, 7.7, 8.1, 8.6, 8.0, 9.3, 9.7, 9.0, 8.7, 8.0, 8.0, 7.7]	Condition-monitoring system
pressure-AST-SA4291	AST-SA4291	Discharge pressure	80.1	bar	compliant	Low 5.0 · High 20.0	[78.2, 81.5, 81.6, 80.7, 78.6, 81.7, 78.3, 79.3, 80.1, 81.7, 80.2, 80.4, 79.0, 81.3]	Condition-monitoring system
vib-AST-SA4291	AST-SA4291	Vibration	21.5	mm/s	compliant	Alert 4.5 · Trip 7.1	[19.6, 20.1, 21.0, 20.2, 22.8, 20.7, 22.3, 20.0, 22.8, 20.8, 21.0, 19.5, 20.8, 19.5]	CMMS
runtime-AST-SA4291	AST-SA4291	Runtime since overhaul	15.6	h	compliant	Overhaul interval 8000	[16.4, 14.9, 16.7, 17.0, 16.5, 16.9, 15.1, 16.6, 14.2, 13.8, 17.1, 13.7, 15.5, 16.8]	CMMS
temp-AST-SA3658	AST-SA3658	Temperature	20.4	°C	compliant	Alert 80 · Trip 95	[21.1, 21.7, 18.4, 21.0, 21.8, 21.5, 21.0, 21.5, 21.2, 19.8, 19.0, 22.1, 20.4, 20.7]	CMMS
pressure-AST-SA3658	AST-SA3658	Discharge pressure	77.8	bar	compliant	Low 5.0 · High 20.0	[79.0, 79.3, 76.0, 76.5, 77.9, 76.0, 79.5, 76.7, 79.4, 76.6, 78.9, 79.3, 76.3, 77.8]	Process historian
flow-AST-SA3658	AST-SA3658	Flow rate	44.9	m³/h	compliant	Low 10 · High 200	[45.5, 45.1, 46.0, 44.3, 43.0, 46.1, 43.1, 45.1, 46.6, 46.7, 43.0, 44.6, 46.6, 46.0]	CMMS
vib-AST-SA3658	AST-SA3658	Vibration	57.5	mm/s	compliant	Alert 4.5 · Trip 7.1	[58.9, 58.0, 59.1, 57.7, 55.8, 56.8, 57.1, 58.2, 55.7, 56.9, 55.8, 55.8, 58.2, 59.4]	Condition-monitoring system
runtime-AST-HE6852	AST-HE6852	Runtime since overhaul	81.3	h	compliant	Overhaul interval 8000	[82.5, 82.7, 79.5, 80.7, 82.3, 81.2, 82.9, 81.6, 82.8, 82.4, 80.2, 81.2, 81.7, 83.2]	CMMS
temp-AST-HE6852	AST-HE6852	Temperature	93.3	°C	compliant	Alert 80 · Trip 95	[92.2, 93.9, 92.6, 93.5, 92.6, 94.1, 93.1, 94.5, 94.9, 92.4, 94.4, 95.1, 94.4, 95.1]	Condition-monitoring system
vib-AST-PR6766	AST-PR6766	Vibration	81.2	mm/s	compliant	Alert 4.5 · Trip 7.1	[79.7, 83.2, 82.8, 81.1, 82.4, 79.2, 79.6, 82.2, 81.0, 79.6, 81.3, 82.9, 82.9, 81.6]	Process historian
flow-AST-PR6766	AST-PR6766	Flow rate	67.9	m³/h	compliant	Low 10 · High 200	[67.3, 68.5, 66.5, 67.2, 68.7, 67.5, 69.6, 66.1, 67.7, 68.6, 67.4, 66.9, 67.4, 67.5]	Process historian
runtime-AST-CE6057	AST-CE6057	Runtime since overhaul	11.3	h	compliant	Overhaul interval 8000	[11.8, 11.2, 9.4, 11.1, 12.7, 11.1, 12.7, 12.1, 11.7, 9.5, 9.7, 9.4, 10.1, 11.8]	CMMS
flow-AST-CE6057	AST-CE6057	Flow rate	70.0	m³/h	compliant	Low 10 · High 200	[72.0, 69.7, 68.2, 71.3, 71.8, 69.1, 72.0, 71.1, 69.8, 68.4, 69.5, 68.0, 71.6, 70.5]	CMMS
vib-AST-CE6057	AST-CE6057	Vibration	50.4	mm/s	compliant	Alert 4.5 · Trip 7.1	[49.3, 50.4, 52.4, 49.1, 48.7, 49.8, 50.8, 50.0, 51.1, 49.2, 49.5, 49.2, 49.7, 48.6]	Condition-monitoring system
temp-AST-CE6057	AST-CE6057	Temperature	22.2	°C	compliant	Alert 80 · Trip 95	[24.1, 20.8, 22.8, 22.2, 22.4, 20.6, 24.0, 22.7, 21.1, 23.0, 22.8, 22.2, 20.9, 22.6]	CMMS
vib-AST-PR6275	AST-PR6275	Vibration	23.8	mm/s	compliant	Alert 4.5 · Trip 7.1	[22.9, 22.9, 25.0, 24.3, 24.3, 22.9, 25.4, 25.4, 25.3, 25.6, 24.1, 23.5, 24.7, 24.4]	Condition-monitoring system
flow-AST-PR6275	AST-PR6275	Flow rate	44.8	m³/h	compliant	Low 10 · High 200	[43.6, 44.4, 43.9, 44.8, 43.1, 43.0, 45.7, 44.6, 44.0, 45.8, 46.5, 44.3, 43.5, 44.3]	Process historian
temp-AST-CE1602	AST-CE1602	Temperature	95.9	°C	compliant	Alert 80 · Trip 95	[97.1, 97.1, 96.8, 96.9, 94.5, 94.9, 97.3, 96.1, 97.8, 94.2, 96.5, 94.4, 94.0, 96.8]	Condition-monitoring system
flow-AST-CE1602	AST-CE1602	Flow rate	22.6	m³/h	compliant	Low 10 · High 200	[22.0, 21.7, 22.9, 23.5, 21.4, 21.4, 22.1, 22.5, 22.9, 23.9, 22.7, 22.1, 21.6, 23.7]	Process historian
flow-AST-HE9107	AST-HE9107	Flow rate	16.5	m³/h	compliant	Low 10 · High 200	[18.4, 17.3, 18.3, 15.7, 17.1, 18.3, 17.4, 15.9, 16.2, 16.7, 16.7, 17.3, 16.2, 16.8]	CMMS
vib-AST-HE9107	AST-HE9107	Vibration	99.1	mm/s	compliant	Alert 4.5 · Trip 7.1	[101.0, 99.5, 97.4, 98.0, 97.5, 98.4, 97.4, 98.4, 99.1, 98.4, 101.0, 99.8, 97.3, 97.4]	CMMS
pressure-AST-HE9107	AST-HE9107	Discharge pressure	45.0	bar	compliant	Low 5.0 · High 20.0	[46.2, 45.5, 43.1, 43.9, 45.6, 44.8, 45.9, 44.9, 45.4, 43.9, 45.2, 45.3, 46.3, 46.9]	Process historian
temp-AST-HE9107	AST-HE9107	Temperature	50.5	°C	compliant	Alert 80 · Trip 95	[50.0, 50.7, 50.0, 51.3, 50.2, 50.8, 49.7, 50.9, 51.8, 50.0, 48.8, 51.5, 49.9, 50.3]	Process historian
temp-AST-CE8649	AST-CE8649	Temperature	60.6	°C	compliant	Alert 80 · Trip 95	[61.1, 59.8, 60.4, 62.5, 60.1, 60.4, 61.6, 59.4, 60.3, 61.7, 60.1, 59.4, 58.7, 59.1]	Condition-monitoring system
vib-AST-CE8649	AST-CE8649	Vibration	35.1	mm/s	compliant	Alert 4.5 · Trip 7.1	[35.2, 36.2, 36.8, 35.0, 36.9, 33.7, 33.5, 36.1, 36.1, 33.8, 35.8, 36.1, 37.0, 34.5]	CMMS
pressure-AST-CE8649	AST-CE8649	Discharge pressure	75.9	bar	compliant	Low 5.0 · High 20.0	[77.7, 75.5, 75.3, 77.2, 77.7, 77.7, 76.3, 76.4, 75.7, 76.9, 77.1, 74.2, 75.2, 77.7]	CMMS
runtime-AST-CE8649	AST-CE8649	Runtime since overhaul	50.3	h	compliant	Overhaul interval 8000	[48.3, 48.3, 49.5, 48.9, 48.3, 52.0, 50.6, 48.8, 50.4, 49.4, 52.2, 51.2, 48.7, 50.1]	CMMS
temp-AST-GA5380	AST-GA5380	Temperature	6.9	°C	compliant	Alert 80 · Trip 95	[6.7, 5.1, 5.1, 5.1, 8.6, 6.6, 7.7, 5.8, 5.8, 6.8, 6.6, 6.4, 8.8, 5.3]	CMMS
flow-AST-GA5380	AST-GA5380	Flow rate	22.1	m³/h	compliant	Low 10 · High 200	[23.3, 21.0, 23.0, 23.0, 20.3, 23.1, 23.4, 22.3, 21.3, 24.1, 20.2, 24.0, 22.6, 22.3]	Condition-monitoring system
pressure-AST-GA5380	AST-GA5380	Discharge pressure	82.0	bar	compliant	Low 5.0 · High 20.0	[80.7, 83.9, 83.6, 80.7, 82.3, 81.2, 80.0, 83.4, 83.9, 83.8, 80.7, 81.9, 80.4, 80.6]	Condition-monitoring system
flow-AST-SA7934	AST-SA7934	Flow rate	29.3	m³/h	compliant	Low 10 · High 200	[28.9, 28.1, 28.6, 29.3, 27.9, 29.1, 27.9, 28.4, 30.9, 27.6, 29.5, 27.9, 27.7, 30.5]	CMMS
temp-AST-SA7934	AST-SA7934	Temperature	43.6	°C	compliant	Alert 80 · Trip 95	[43.5, 41.8, 43.2, 44.8, 41.7, 43.1, 43.8, 43.6, 42.2, 43.6, 43.9, 44.6, 45.0, 43.9]	CMMS
\.

COPY public.data_source (id, name, status, description, last_sync_at, record_count, is_vendor_agnostic, icon, category, error_detail) FROM stdin;
ds-aramco-01	Permit-to-Work System (electronic)	connected	System of record for every permit: hot work, confined space, work at height, and general. Validity windows, conditions, issuers, and sign-offs. Paper permits still appear in some units and are reconciled on ingest.	2026-08-05 06:52:00-04	450	f	shield	safety	\N
ds-aramco-02	Gate Access-Control	connected	Badge-in and badge-out events at every gate and turnstile. The live on-site headcount baseline before reconciliation against location and timesheets.	2026-08-05 06:53:00-04	2440	f	users	access	\N
ds-aramco-03	Location and Tag Data	connected	Worker and asset position from whatever tags, beacons, and readers the site already runs. Deliberately vendor-agnostic — TrackLynk reads the customer's existing telemetry rather than requiring a specific tracking vendor.	2026-08-05 06:53:00-04	2412	t	cpu	location	\N
ds-aramco-04	CCTV and Presence	connected	Camera presence confirmation at entry points and high-risk work locations. Used to corroborate standby-person confirmation and to give eyes-on for anyone without a location signal.	2026-08-05 06:51:00-04	118	t	monitor	cctv	\N
ds-aramco-05	Contractor Timesheets	partial	Contractor company submissions of who is working, on which job, for which shift. The third headcount source, and typically the laggiest — submitted per company on their own cadence.	2026-08-05 04:10:00-04	2380	f	database	timesheets	\N
ds-aramco-06	HSE Action Tracker	partial	Corrective and preventive actions from audits, near-misses, and incident investigations. Currently a spreadsheet in practice, which is why overdue actions accumulate unseen.	2026-08-04 17:00:00-04	120	f	alert-triangle	safety	\N
ds-aramco-07	Maintenance Work Orders	connected	Turnaround scope, job cards, and equipment history. Links a permit to the work order and asset it authorizes, so an equipment-bucket finding can be traced to the job that caused it.	2026-08-05 06:20:00-04	3860	f	cog	operations	\N
ds-aramco-08	HSE Reporting and Statistics	partial	Near-miss reports, recordable cases, and the weekly HSE statistics pack. Compiled by hand today, which is the reason the numbers in it disagree with the systems they came from.	2026-08-03 09:00:00-04	35	f	trending-up	analytics	\N
\.

COPY public.flagged_job (id, rank, permit_id, permit_type, title, zone_id, location_description, plan_x, plan_y, risk_bucket, severity, workers_on_site, reason, detected_at, evidence) FROM stdin;
FJ-001	1	HW-4471	hot-work	Hot work continuing on an expired permit	Z2	Hydrocracker platform, level 3	50.013919	26.513503	safety	critical	4	Permit expired 47 minutes ago; four workers still show active on location inside the hazard zone.	2026-08-05 02:06:00-04	{"timeStamps": {"permitExpiry": "06:00", "lastLocationFix": "40 seconds ago", "minutesPastExpiry": 47}, "permitRecord": {"id": "HW-4471", "type": "Hot work", "issuer": "Unit 2 permit issuer (night shift, now off site)", "status": "expired", "validTo": "06:00", "issuedAt": "05:30", "extensionRequested": false}, "locationTrail": [{"time": "05:34", "event": "4 tags entered Unit 2 hazard zone"}, {"time": "06:00", "event": "Permit HW-4471 lapsed — no extension logged"}, {"time": "06:31", "event": "All 4 tags still inside the zone"}, {"time": "06:52", "event": "Last position fix — 4 tags present, 40 seconds ago"}]}
FJ-002	2	HW-4468	hot-work	Hot work continuing on an expired permit	Z2	Hydrocracker pipe rack, north face	50.014856	26.512109	safety	critical	3	Permit expired 35 minutes ago; three workers still show active on location roughly 40 metres from FJ-001.	2026-08-05 02:18:00-04	{"timeStamps": {"permitExpiry": "06:12", "lastLocationFix": "1 minute ago", "minutesPastExpiry": 35}, "permitRecord": {"id": "HW-4468", "type": "Hot work", "issuer": "Unit 2 permit issuer (night shift, now off site)", "status": "expired", "validTo": "06:12", "issuedAt": "05:12", "extensionRequested": false}, "locationTrail": [{"time": "05:18", "event": "3 tags entered Unit 2 hazard zone"}, {"time": "06:12", "event": "Permit HW-4468 lapsed — no extension logged"}, {"time": "06:52", "event": "Last position fix — 3 tags present, 1 minute ago"}]}
FJ-003	3	GP-9033	general	Crew in a confined-space zone on a general permit	Z5	Coker drum skirt, confined-space envelope	50.021548	26.513298	compliance	critical	3	A crew holding a general permit has moved inside the Unit 3 confined-space envelope. A general permit does not authorize confined-space entry.	2026-08-05 02:40:00-04	{"timeStamps": {"zoneBreach": "06:44", "lastLocationFix": "20 seconds ago", "minutesInsideEnvelope": 9}, "permitRecord": {"id": "GP-9033", "type": "General", "issuer": "Unit 3 permit issuer", "status": "valid for general work only", "validTo": "14:00", "issuedAt": "06:05", "extensionRequested": false}, "locationTrail": [{"time": "06:09", "event": "3 tags entered Unit 3 general work area"}, {"time": "06:44", "event": "3 tags crossed into the confined-space envelope"}, {"time": "06:52", "event": "Last position fix — 3 tags still inside, 20 seconds ago"}]}
\.

COPY public.gas_test_reading (permit_id, reading_time, result, interval_minutes) FROM stdin;
CS-1182	2026-08-05 02:09:00-04	Within limits	15
CS-1182	2026-08-05 02:24:00-04	Within limits	15
CS-1182	2026-08-05 02:39:00-04	Within limits	15
CS-1002	2026-08-05 02:24:00-04	Within limits	15
CS-1002	2026-08-05 02:39:00-04	Within limits	15
CS-1002	2026-08-05 02:54:00-04	Within limits	15
CS-1012	2026-08-05 02:15:00-04	Marginal — re-test in 5 min	30
CS-1012	2026-08-05 02:45:00-04	Marginal — re-test in 5 min	30
CS-1012	2026-08-05 03:15:00-04	Within limits	30
CS-1029	2026-08-05 02:15:00-04	Within limits	15
CS-1029	2026-08-05 02:30:00-04	Marginal — re-test in 5 min	15
CS-1029	2026-08-05 02:45:00-04	Within limits	15
CS-1047	2026-08-05 02:24:00-04	Within limits	20
CS-1047	2026-08-05 02:44:00-04	Within limits	20
CS-1047	2026-08-05 03:04:00-04	Within limits	20
CS-1051	2026-08-05 02:19:00-04	Marginal — re-test in 5 min	15
CS-1051	2026-08-05 02:34:00-04	Within limits	15
CS-1051	2026-08-05 02:49:00-04	Within limits	15
CS-1096	2026-08-05 02:05:00-04	Marginal — re-test in 5 min	15
CS-1096	2026-08-05 02:20:00-04	Within limits	15
CS-1096	2026-08-05 02:35:00-04	Marginal — re-test in 5 min	15
CS-1107	2026-08-05 02:14:00-04	Within limits	15
CS-1107	2026-08-05 02:29:00-04	Marginal — re-test in 5 min	15
CS-1107	2026-08-05 02:44:00-04	Within limits	15
CS-1137	2026-08-05 02:28:00-04	Within limits	20
CS-1137	2026-08-05 02:48:00-04	Within limits	20
CS-1137	2026-08-05 03:08:00-04	Within limits	20
CS-1141	2026-08-05 02:23:00-04	Marginal — re-test in 5 min	30
CS-1141	2026-08-05 02:53:00-04	Within limits	30
CS-1141	2026-08-05 03:23:00-04	Within limits	30
CS-1143	2026-08-05 02:08:00-04	Within limits	15
CS-1143	2026-08-05 02:23:00-04	Within limits	15
CS-1143	2026-08-05 02:38:00-04	Within limits	15
CS-1149	2026-08-05 02:22:00-04	Within limits	20
CS-1149	2026-08-05 02:42:00-04	Within limits	20
CS-1149	2026-08-05 03:02:00-04	Within limits	20
CS-1157	2026-08-05 02:11:00-04	Marginal — re-test in 5 min	30
CS-1157	2026-08-05 02:41:00-04	Within limits	30
CS-1157	2026-08-05 03:11:00-04	Marginal — re-test in 5 min	30
CS-1173	2026-08-05 02:07:00-04	Marginal — re-test in 5 min	15
CS-1173	2026-08-05 02:22:00-04	Within limits	15
CS-1173	2026-08-05 02:37:00-04	Within limits	15
CS-1185	2026-08-05 02:16:00-04	Within limits	20
CS-1185	2026-08-05 02:36:00-04	Marginal — re-test in 5 min	20
CS-1185	2026-08-05 02:56:00-04	Within limits	20
CS-1187	2026-08-05 02:29:00-04	Within limits	30
CS-1187	2026-08-05 02:59:00-04	Within limits	30
CS-1187	2026-08-05 03:29:00-04	Marginal — re-test in 5 min	30
CS-1193	2026-08-05 02:10:00-04	Marginal — re-test in 5 min	15
CS-1193	2026-08-05 02:25:00-04	Within limits	15
CS-1193	2026-08-05 02:40:00-04	Within limits	15
CS-1195	2026-08-05 02:29:00-04	Within limits	15
CS-1195	2026-08-05 02:44:00-04	Marginal — re-test in 5 min	15
CS-1195	2026-08-05 02:59:00-04	Within limits	15
CS-1234	2026-08-05 02:26:00-04	Within limits	15
CS-1234	2026-08-05 02:41:00-04	Within limits	15
CS-1234	2026-08-05 02:56:00-04	Within limits	15
CS-1251	2026-08-05 02:18:00-04	Marginal — re-test in 5 min	20
CS-1251	2026-08-05 02:38:00-04	Within limits	20
CS-1251	2026-08-05 02:58:00-04	Marginal — re-test in 5 min	20
CS-1265	2026-08-05 02:15:00-04	Within limits	30
CS-1265	2026-08-05 02:45:00-04	Within limits	30
CS-1265	2026-08-05 03:15:00-04	Marginal — re-test in 5 min	30
CS-1283	2026-08-05 02:13:00-04	Within limits	15
CS-1283	2026-08-05 02:28:00-04	Within limits	15
CS-1283	2026-08-05 02:43:00-04	Marginal — re-test in 5 min	15
CS-1289	2026-08-05 02:07:00-04	Within limits	20
CS-1289	2026-08-05 02:27:00-04	Within limits	20
CS-1289	2026-08-05 02:47:00-04	Within limits	20
CS-1303	2026-08-05 02:08:00-04	Within limits	15
CS-1303	2026-08-05 02:23:00-04	Within limits	15
CS-1303	2026-08-05 02:38:00-04	Within limits	15
CS-1328	2026-08-05 02:29:00-04	Marginal — re-test in 5 min	15
CS-1328	2026-08-05 02:44:00-04	Within limits	15
CS-1328	2026-08-05 02:59:00-04	Marginal — re-test in 5 min	15
CS-1336	2026-08-05 02:28:00-04	Marginal — re-test in 5 min	30
CS-1336	2026-08-05 02:58:00-04	Within limits	30
CS-1336	2026-08-05 03:28:00-04	Within limits	30
CS-1340	2026-08-05 02:27:00-04	Within limits	30
CS-1340	2026-08-05 02:57:00-04	Within limits	30
CS-1340	2026-08-05 03:27:00-04	Marginal — re-test in 5 min	30
CS-1348	2026-08-05 02:16:00-04	Within limits	30
CS-1348	2026-08-05 02:46:00-04	Within limits	30
CS-1348	2026-08-05 03:16:00-04	Within limits	30
CS-1352	2026-08-05 02:06:00-04	Within limits	15
CS-1352	2026-08-05 02:21:00-04	Within limits	15
CS-1352	2026-08-05 02:36:00-04	Marginal — re-test in 5 min	15
CS-1394	2026-08-05 02:19:00-04	Within limits	30
CS-1394	2026-08-05 02:49:00-04	Within limits	30
CS-1394	2026-08-05 03:19:00-04	Within limits	30
CS-1448	2026-08-05 02:11:00-04	Within limits	20
CS-1448	2026-08-05 02:31:00-04	Within limits	20
CS-1448	2026-08-05 02:51:00-04	Within limits	20
CS-1340	2026-08-04 21:08:00-04	Within limits	15
CS-1340	2026-08-04 21:23:00-04	Within limits	15
CS-1340	2026-08-04 21:38:00-04	Marginal — re-test in 5 min	15
CS-1193	2026-08-04 19:41:00-04	Within limits	15
CS-1193	2026-08-04 19:56:00-04	Within limits	15
CS-1193	2026-08-04 20:11:00-04	Marginal — re-test in 5 min	15
CS-1193	2026-08-04 18:39:00-04	Within limits	15
CS-1193	2026-08-04 18:54:00-04	Within limits	15
CS-1193	2026-08-04 19:09:00-04	Within limits	15
CS-1029	2026-08-04 20:19:00-04	Within limits	15
CS-1029	2026-08-04 20:34:00-04	Marginal — re-test in 5 min	15
CS-1029	2026-08-04 20:49:00-04	Marginal — re-test in 5 min	15
CS-1234	2026-08-04 18:03:00-04	Within limits	15
CS-1234	2026-08-04 18:18:00-04	Within limits	15
CS-1234	2026-08-04 18:33:00-04	Within limits	15
CS-1047	2026-08-04 19:21:00-04	Within limits	15
CS-1047	2026-08-04 19:36:00-04	Within limits	15
CS-1047	2026-08-04 19:51:00-04	Within limits	15
CS-1182	2026-08-04 21:51:00-04	Within limits	15
CS-1182	2026-08-04 22:06:00-04	Within limits	15
CS-1182	2026-08-04 22:21:00-04	Within limits	15
CS-1047	2026-08-04 18:00:00-04	Within limits	15
CS-1047	2026-08-04 18:15:00-04	Marginal — re-test in 5 min	15
CS-1047	2026-08-04 18:30:00-04	Within limits	15
CS-1303	2026-08-04 20:45:00-04	Within limits	15
CS-1303	2026-08-04 21:00:00-04	Marginal — re-test in 5 min	15
CS-1303	2026-08-04 21:15:00-04	Within limits	15
CS-1096	2026-08-04 21:51:00-04	Marginal — re-test in 5 min	15
CS-1096	2026-08-04 22:06:00-04	Marginal — re-test in 5 min	15
CS-1096	2026-08-04 22:21:00-04	Marginal — re-test in 5 min	15
CS-1251	2026-08-04 18:16:00-04	Marginal — re-test in 5 min	15
CS-1251	2026-08-04 18:31:00-04	Marginal — re-test in 5 min	15
CS-1251	2026-08-04 18:46:00-04	Within limits	15
CS-1328	2026-08-04 19:02:00-04	Within limits	15
CS-1328	2026-08-04 19:17:00-04	Within limits	15
CS-1328	2026-08-04 19:32:00-04	Marginal — re-test in 5 min	15
CS-1047	2026-08-04 18:04:00-04	Marginal — re-test in 5 min	15
CS-1047	2026-08-04 18:19:00-04	Within limits	15
CS-1047	2026-08-04 18:34:00-04	Marginal — re-test in 5 min	15
CS-1352	2026-08-04 19:33:00-04	Within limits	15
CS-1352	2026-08-04 19:48:00-04	Marginal — re-test in 5 min	15
CS-1352	2026-08-04 20:03:00-04	Marginal — re-test in 5 min	15
CS-1096	2026-08-04 19:40:00-04	Within limits	15
CS-1096	2026-08-04 19:55:00-04	Within limits	15
CS-1096	2026-08-04 20:10:00-04	Marginal — re-test in 5 min	15
CS-1047	2026-08-04 20:58:00-04	Within limits	15
CS-1047	2026-08-04 21:13:00-04	Within limits	15
CS-1047	2026-08-04 21:28:00-04	Within limits	15
CS-1012	2026-08-04 19:22:00-04	Within limits	15
CS-1012	2026-08-04 19:37:00-04	Within limits	15
CS-1012	2026-08-04 19:52:00-04	Marginal — re-test in 5 min	15
CS-1002	2026-08-04 18:56:00-04	Marginal — re-test in 5 min	15
CS-1002	2026-08-04 19:11:00-04	Within limits	15
CS-1002	2026-08-04 19:26:00-04	Within limits	15
CS-1193	2026-08-04 20:50:00-04	Within limits	15
CS-1193	2026-08-04 21:05:00-04	Marginal — re-test in 5 min	15
CS-1193	2026-08-04 21:20:00-04	Within limits	15
CS-1193	2026-08-04 20:07:00-04	Marginal — re-test in 5 min	15
CS-1193	2026-08-04 20:22:00-04	Within limits	15
CS-1193	2026-08-04 20:37:00-04	Marginal — re-test in 5 min	15
CS-1448	2026-08-04 20:21:00-04	Within limits	15
CS-1448	2026-08-04 20:36:00-04	Within limits	15
CS-1448	2026-08-04 20:51:00-04	Within limits	15
CS-1448	2026-08-04 19:53:00-04	Marginal — re-test in 5 min	15
CS-1448	2026-08-04 20:08:00-04	Within limits	15
CS-1448	2026-08-04 20:23:00-04	Within limits	15
CS-1029	2026-08-04 21:11:00-04	Marginal — re-test in 5 min	15
CS-1029	2026-08-04 21:26:00-04	Marginal — re-test in 5 min	15
CS-1029	2026-08-04 21:41:00-04	Marginal — re-test in 5 min	15
CS-1051	2026-08-04 18:28:00-04	Within limits	15
CS-1051	2026-08-04 18:43:00-04	Marginal — re-test in 5 min	15
CS-1051	2026-08-04 18:58:00-04	Within limits	15
CS-1283	2026-08-04 18:17:00-04	Within limits	15
CS-1283	2026-08-04 18:32:00-04	Within limits	15
CS-1283	2026-08-04 18:47:00-04	Marginal — re-test in 5 min	15
CS-1187	2026-08-04 21:17:00-04	Marginal — re-test in 5 min	15
CS-1187	2026-08-04 21:32:00-04	Within limits	15
CS-1187	2026-08-04 21:47:00-04	Marginal — re-test in 5 min	15
CS-1303	2026-08-04 20:29:00-04	Within limits	15
CS-1303	2026-08-04 20:44:00-04	Marginal — re-test in 5 min	15
CS-1303	2026-08-04 20:59:00-04	Marginal — re-test in 5 min	15
CS-1012	2026-08-04 20:31:00-04	Within limits	15
CS-1012	2026-08-04 20:46:00-04	Within limits	15
CS-1012	2026-08-04 21:01:00-04	Marginal — re-test in 5 min	15
CS-1234	2026-08-04 18:27:00-04	Marginal — re-test in 5 min	15
CS-1234	2026-08-04 18:42:00-04	Within limits	15
CS-1234	2026-08-04 18:57:00-04	Marginal — re-test in 5 min	15
CS-1047	2026-08-04 18:21:00-04	Marginal — re-test in 5 min	15
CS-1047	2026-08-04 18:36:00-04	Within limits	15
CS-1047	2026-08-04 18:51:00-04	Marginal — re-test in 5 min	15
\.

COPY public.muster_event (id, as_of, alarm_started_at, state, state_label, elapsed_seconds, total_accounted, total_expected, projection_full_accounting_minutes, projection_basis, projection_confidence, measured_completion_label) FROM stdin;
9413f995-d76c-4dce-919a-6f5f910e60cc	2026-08-05 02:53:00-04	2026-08-05 02:51:30-04	drill	Muster drill in progress	90	2384	2412	3	Current check-in rate across all muster points	90	2:47
\.

COPY public.muster_point (id, name, covers_zones, capacity, accounted_count, expected_count, radius_m, geo_point) FROM stdin;
M1	Muster Point A — North	["Unit 1 — Crude Distillation", "Tank Farm North"]	800	612	618	160	[50.005353, 26.500241]
M2	Muster Point B — Central	["Unit 2 — Hydrocracker", "Utilities and Flare"]	800	681	685	160	[50.005353, 26.501447]
M3	Muster Point C — East	["Unit 3 — Coker", "Unit 4 — Sulphur Recovery"]	800	624	630	160	[50.027704, 26.500965]
M4	Muster Point D — South	["Tank Farm South", "Marine Loading"]	400	256	260	120	[50.025027, 26.507719]
M5	Muster Point E — Admin and Gate	["Central Admin and Control", "West Gate", "Parking Muster Point"]	400	211	219	120	[50.015391, 26.500965]
\.

COPY public.permit (id, permit_type, title, zone_id, location_description, status, risk_bucket, valid_from, valid_to, issuer, work_order_id, flagged_job_id, extension_requested) FROM stdin;
HW-4471	hot-work	Hot work on hydrocracker platform flange	Z2	Unit 2 — Hydrocracker — sub-location 14	expired	equipment	2026-08-05 01:00:00-04	2026-08-05 02:00:00-04	Site HSE officer	WO-752756	\N	f
HW-4468	hot-work	Welding on hydrocracker pipe spool	Z2	Unit 2 — Hydrocracker — sub-location 5	expired	compliance	2026-08-05 01:15:00-04	2026-08-05 02:18:00-04	Site HSE officer	WO-781220	\N	f
GP-9033	general	General maintenance — utilities corridor	Z5	Unit 5 — Utilities — sub-location 5	breached	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-714156	\N	f
CS-1182	confined-space	Confined-space entry — Unit 3 Coker	Z3	Coker drum, north manway	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-768933	\N	f
HW-1000	hot-work	Grinding on heat exchanger shell	Z1	Unit 1 — Crude Distillation — sub-location 11	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-753283	\N	f
GP-1001	general	Filter change-out	Z1	Unit 1 — Crude Distillation — sub-location 20	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-786881	\N	f
CS-1002	confined-space	Confined-space entry — tank inspection	Z1	Unit 1 — Crude Distillation — sub-location 16	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-714055	\N	f
WH-1003	work-at-height	Work at height — scaffold erection	Z1	Unit 1 — Crude Distillation — sub-location 20	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-734477	\N	f
GP-1004	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 2	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-750513	\N	f
GP-1005	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 5	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-762195	\N	f
WH-1006	work-at-height	Work at height — cable tray installation	Z1	Unit 1 — Crude Distillation — sub-location 6	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-702938	\N	f
HW-1007	hot-work	Flame cutting on scaffold tube	Z1	Unit 1 — Crude Distillation — sub-location 17	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-759922	\N	f
GP-1008	general	Piping insulation removal	Z1	Unit 1 — Crude Distillation — sub-location 6	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-700347	\N	f
GP-1009	general	General maintenance on pump	Z1	Unit 1 — Crude Distillation — sub-location 10	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-733542	\N	f
GP-1010	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 7	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-782643	\N	f
WH-1011	work-at-height	Work at height — scaffold erection	Z1	Unit 1 — Crude Distillation — sub-location 13	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-799650	\N	f
CS-1012	confined-space	Confined-space entry — drum cleaning	Z1	Unit 1 — Crude Distillation — sub-location 5	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-759830	\N	f
GP-1013	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 10	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-764413	\N	f
GP-1014	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 4	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-777065	\N	f
GP-1015	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 16	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-736650	\N	f
WH-1016	work-at-height	Work at height — column platform repair	Z1	Unit 1 — Crude Distillation — sub-location 13	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-719682	\N	f
GP-1017	general	General maintenance on pump	Z1	Unit 1 — Crude Distillation — sub-location 1	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-761130	\N	f
GP-1018	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 3	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-748826	\N	f
HW-1019	hot-work	Cutting on instrument tray	Z1	Unit 1 — Crude Distillation — sub-location 2	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-750597	\N	f
HW-1020	hot-work	Welding on structural steel	Z1	Unit 1 — Crude Distillation — sub-location 8	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-752507	\N	f
GP-1021	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 19	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-764962	\N	f
GP-1022	general	Instrument loop check	Z1	Unit 1 — Crude Distillation — sub-location 3	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-755163	\N	f
WH-1023	work-at-height	Work at height — flare stack inspection	Z1	Unit 1 — Crude Distillation — sub-location 10	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-785208	\N	f
GP-1024	general	Filter change-out	Z1	Unit 1 — Crude Distillation — sub-location 17	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-763256	\N	f
HW-1025	hot-work	Welding on pump skid	Z1	Unit 1 — Crude Distillation — sub-location 17	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-754131	\N	f
GP-1026	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 19	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-791824	\N	f
GP-1027	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 19	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-753907	\N	f
WH-1028	work-at-height	Work at height — cable tray installation	Z1	Unit 1 — Crude Distillation — sub-location 3	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-759243	\N	f
CS-1029	confined-space	Confined-space entry — vessel inspection	Z1	Unit 1 — Crude Distillation — sub-location 17	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-776032	\N	f
GP-1030	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 11	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-749913	\N	f
WH-1031	work-at-height	Work at height — scaffold erection	Z1	Unit 1 — Crude Distillation — sub-location 14	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-746408	\N	f
HW-1032	hot-work	Welding on structural steel	Z1	Unit 1 — Crude Distillation — sub-location 17	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-712554	\N	f
GP-1033	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 2	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-715962	\N	f
GP-1034	general	General maintenance on pump	Z1	Unit 1 — Crude Distillation — sub-location 13	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-743030	\N	f
GP-1035	general	Instrument loop check	Z1	Unit 1 — Crude Distillation — sub-location 1	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-755379	\N	f
GP-1036	general	Instrument loop check	Z1	Unit 1 — Crude Distillation — sub-location 18	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-708261	\N	f
GP-1037	general	Piping insulation removal	Z1	Unit 1 — Crude Distillation — sub-location 3	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-774048	\N	f
GP-1038	general	Filter change-out	Z1	Unit 1 — Crude Distillation — sub-location 11	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-704484	\N	f
GP-1039	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 14	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-707723	\N	f
WH-1040	work-at-height	Work at height — column platform repair	Z1	Unit 1 — Crude Distillation — sub-location 2	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-717552	\N	f
GP-1041	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 8	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-752658	\N	f
WH-1042	work-at-height	Work at height — scaffold erection	Z1	Unit 1 — Crude Distillation — sub-location 14	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-719181	\N	f
GP-1043	general	General maintenance on pump	Z1	Unit 1 — Crude Distillation — sub-location 14	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-775570	\N	f
GP-1044	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 8	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-705615	\N	f
GP-1045	general	Instrument loop check	Z1	Unit 1 — Crude Distillation — sub-location 9	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-760165	\N	f
GP-1046	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 11	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-747790	\N	f
CS-1047	confined-space	Confined-space entry — vessel inspection	Z1	Unit 1 — Crude Distillation — sub-location 18	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-786364	\N	f
WH-1048	work-at-height	Work at height — column platform repair	Z1	Unit 1 — Crude Distillation — sub-location 2	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-736061	\N	f
GP-1049	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 5	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-781814	\N	f
GP-1050	general	General maintenance on pump	Z1	Unit 1 — Crude Distillation — sub-location 7	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-719348	\N	f
CS-1051	confined-space	Confined-space entry — sump cleaning	Z1	Unit 1 — Crude Distillation — sub-location 4	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-792890	\N	f
GP-1052	general	General maintenance on pump	Z1	Unit 1 — Crude Distillation — sub-location 2	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-721748	\N	f
WH-1053	work-at-height	Work at height — flare stack inspection	Z1	Unit 1 — Crude Distillation — sub-location 1	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-734750	\N	f
GP-1054	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 10	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-765678	\N	f
WH-1055	work-at-height	Work at height — column platform repair	Z1	Unit 1 — Crude Distillation — sub-location 7	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-754359	\N	f
GP-1056	general	Valve replacement	Z1	Unit 1 — Crude Distillation — sub-location 12	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-744463	\N	f
WH-1057	work-at-height	Work at height — scaffold erection	Z1	Unit 1 — Crude Distillation — sub-location 7	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-749659	\N	f
GP-1058	general	Instrument loop check	Z1	Unit 1 — Crude Distillation — sub-location 20	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-711825	\N	f
GP-1059	general	Electrical isolation work	Z1	Unit 1 — Crude Distillation — sub-location 17	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-791330	\N	f
GP-1060	general	Instrument loop check	Z1	Unit 1 — Crude Distillation — sub-location 16	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-741158	\N	f
GP-1061	general	General maintenance on pump	Z1	Unit 1 — Crude Distillation — sub-location 13	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-735717	\N	f
GP-1062	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 9	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-744868	\N	f
GP-1063	general	Electrical isolation work	Z2	Unit 2 — Hydrocracker — sub-location 3	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-787357	\N	f
WH-1064	work-at-height	Work at height — column platform repair	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-756344	\N	f
WH-1065	work-at-height	Work at height — cable tray installation	Z2	Unit 2 — Hydrocracker — sub-location 14	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-722280	\N	f
WH-1066	work-at-height	Work at height — cable tray installation	Z2	Unit 2 — Hydrocracker — sub-location 19	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-729824	\N	f
HW-1067	hot-work	Welding on pump skid	Z2	Unit 2 — Hydrocracker — sub-location 16	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-700730	\N	f
HW-1068	hot-work	Cutting on instrument tray	Z2	Unit 2 — Hydrocracker — sub-location 6	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-767164	\N	f
GP-1069	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-710430	\N	f
GP-1070	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 8	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-716318	\N	f
GP-1071	general	Piping insulation removal	Z2	Unit 2 — Hydrocracker — sub-location 17	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-729908	\N	f
GP-1072	general	Electrical isolation work	Z2	Unit 2 — Hydrocracker — sub-location 17	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-777629	\N	f
HW-1073	hot-work	Grinding on heat exchanger shell	Z2	Unit 2 — Hydrocracker — sub-location 14	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-789361	\N	f
GP-1074	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 7	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-799303	\N	f
GP-1075	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-721285	\N	f
GP-1076	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-741307	\N	f
GP-1077	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 2	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-708221	\N	f
WH-1078	work-at-height	Work at height — cable tray installation	Z2	Unit 2 — Hydrocracker — sub-location 16	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-756136	\N	f
WH-1079	work-at-height	Work at height — cable tray installation	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-772245	\N	f
GP-1080	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 1	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-780476	\N	f
GP-1081	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-764380	\N	f
HW-1082	hot-work	Flame cutting on scaffold tube	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-719017	\N	f
GP-1083	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 2	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-713122	\N	f
GP-1084	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 12	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-766818	\N	f
GP-1085	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 8	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-709610	\N	f
GP-1086	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 11	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-753907	\N	f
GP-1087	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 15	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-766855	\N	f
HW-1088	hot-work	Grinding on vessel nozzle	Z2	Unit 2 — Hydrocracker — sub-location 9	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-712455	\N	f
GP-1089	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 1	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-728506	\N	f
GP-1090	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 14	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-703536	\N	f
GP-1091	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 4	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-733999	\N	f
GP-1092	general	Piping insulation removal	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-709196	\N	f
GP-1093	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-761998	\N	f
GP-1094	general	Electrical isolation work	Z2	Unit 2 — Hydrocracker — sub-location 15	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-794196	\N	f
GP-1095	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-784142	\N	f
CS-1096	confined-space	Confined-space entry — vessel inspection	Z2	Unit 2 — Hydrocracker — sub-location 3	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-715657	\N	f
HW-1097	hot-work	Hot work on pipe flange	Z2	Unit 2 — Hydrocracker — sub-location 6	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-728211	\N	f
WH-1098	work-at-height	Work at height — cable tray installation	Z2	Unit 2 — Hydrocracker — sub-location 18	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-741079	\N	f
GP-1099	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 10	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-793484	\N	f
GP-1100	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 15	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-763922	\N	f
GP-1101	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 10	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-737189	\N	f
GP-1102	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-797900	\N	f
GP-1103	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 2	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-780882	\N	f
HW-1104	hot-work	Flame cutting on scaffold tube	Z2	Unit 2 — Hydrocracker — sub-location 8	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-796231	\N	f
WH-1105	work-at-height	Work at height — flare stack inspection	Z2	Unit 2 — Hydrocracker — sub-location 2	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-761773	\N	f
GP-1106	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 2	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-791867	\N	f
CS-1107	confined-space	Confined-space entry — vessel inspection	Z2	Unit 2 — Hydrocracker — sub-location 4	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-702695	\N	f
GP-1108	general	Piping insulation removal	Z2	Unit 2 — Hydrocracker — sub-location 12	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-765808	\N	f
WH-1109	work-at-height	Work at height — flare stack inspection	Z2	Unit 2 — Hydrocracker — sub-location 2	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-730090	\N	f
GP-1110	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 4	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-793396	\N	f
GP-1111	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-787011	\N	f
HW-1112	hot-work	Welding on structural steel	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-733651	\N	f
HW-1113	hot-work	Welding on structural steel	Z2	Unit 2 — Hydrocracker — sub-location 4	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-736592	\N	f
GP-1114	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 17	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-720949	\N	f
GP-1115	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 14	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-740491	\N	f
GP-1116	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 6	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-764982	\N	f
GP-1117	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 10	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-744017	\N	f
GP-1118	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-738375	\N	f
WH-1119	work-at-height	Work at height — scaffold erection	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-742963	\N	f
WH-1120	work-at-height	Work at height — flare stack inspection	Z2	Unit 2 — Hydrocracker — sub-location 10	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-752717	\N	f
WH-1121	work-at-height	Work at height — flare stack inspection	Z2	Unit 2 — Hydrocracker — sub-location 14	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-771048	\N	f
WH-1122	work-at-height	Work at height — column platform repair	Z2	Unit 2 — Hydrocracker — sub-location 17	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-713056	\N	f
WH-1123	work-at-height	Work at height — flare stack inspection	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-759602	\N	f
WH-1124	work-at-height	Work at height — flare stack inspection	Z2	Unit 2 — Hydrocracker — sub-location 17	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-717145	\N	f
HW-1125	hot-work	Cutting on instrument tray	Z2	Unit 2 — Hydrocracker — sub-location 6	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-786060	\N	f
GP-1126	general	Electrical isolation work	Z2	Unit 2 — Hydrocracker — sub-location 7	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-740202	\N	f
GP-1127	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-753503	\N	f
GP-1128	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 15	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-782457	\N	f
WH-1129	work-at-height	Work at height — scaffold erection	Z2	Unit 2 — Hydrocracker — sub-location 3	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-700996	\N	f
WH-1130	work-at-height	Work at height — scaffold erection	Z2	Unit 2 — Hydrocracker — sub-location 3	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-768955	\N	f
GP-1131	general	Electrical isolation work	Z2	Unit 2 — Hydrocracker — sub-location 11	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-779498	\N	f
GP-1132	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 18	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-758277	\N	f
GP-1133	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 11	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-752090	\N	f
WH-1134	work-at-height	Work at height — flare stack inspection	Z2	Unit 2 — Hydrocracker — sub-location 2	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-791369	\N	f
GP-1135	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 11	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-746458	\N	f
GP-1136	general	Piping insulation removal	Z2	Unit 2 — Hydrocracker — sub-location 1	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-797586	\N	f
CS-1137	confined-space	Confined-space entry — drum cleaning	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-790819	\N	f
GP-1138	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 4	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-733210	\N	f
GP-1139	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 7	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-797990	\N	f
GP-1140	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 15	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-779374	\N	f
CS-1141	confined-space	Confined-space entry — sump cleaning	Z2	Unit 2 — Hydrocracker — sub-location 11	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-752212	\N	f
WH-1142	work-at-height	Work at height — cable tray installation	Z2	Unit 2 — Hydrocracker — sub-location 7	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-757644	\N	f
CS-1143	confined-space	Confined-space entry — sump cleaning	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-760012	\N	f
GP-1144	general	Valve replacement	Z2	Unit 2 — Hydrocracker — sub-location 20	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-758452	\N	f
GP-1145	general	Filter change-out	Z2	Unit 2 — Hydrocracker — sub-location 18	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-708879	\N	f
GP-1146	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 5	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-707632	\N	f
GP-1147	general	Instrument loop check	Z2	Unit 2 — Hydrocracker — sub-location 13	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-777167	\N	f
WH-1148	work-at-height	Work at height — cable tray installation	Z2	Unit 2 — Hydrocracker — sub-location 4	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-794114	\N	f
CS-1149	confined-space	Confined-space entry — vessel inspection	Z2	Unit 2 — Hydrocracker — sub-location 15	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-786845	\N	f
GP-1150	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 19	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-796173	\N	f
GP-1151	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 13	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-777716	\N	f
HW-1152	hot-work	Flame cutting on scaffold tube	Z3	Unit 3 — Coker — sub-location 9	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-791860	\N	f
WH-1153	work-at-height	Work at height — cable tray installation	Z3	Unit 3 — Coker — sub-location 19	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-701228	\N	f
GP-1154	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 5	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-736068	\N	f
GP-1155	general	Electrical isolation work	Z3	Unit 3 — Coker — sub-location 3	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-772607	\N	f
WH-1156	work-at-height	Work at height — flare stack inspection	Z3	Unit 3 — Coker — sub-location 4	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-751936	\N	f
CS-1157	confined-space	Confined-space entry — sump cleaning	Z3	Unit 3 — Coker — sub-location 3	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-735711	\N	f
WH-1158	work-at-height	Work at height — scaffold erection	Z3	Unit 3 — Coker — sub-location 6	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-757034	\N	f
GP-1159	general	Piping insulation removal	Z3	Unit 3 — Coker — sub-location 17	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-774199	\N	f
GP-1160	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 3	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-726278	\N	f
GP-1161	general	Electrical isolation work	Z3	Unit 3 — Coker — sub-location 16	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-729460	\N	f
WH-1162	work-at-height	Work at height — cable tray installation	Z3	Unit 3 — Coker — sub-location 8	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-726881	\N	f
HW-1163	hot-work	Flame cutting on scaffold tube	Z3	Unit 3 — Coker — sub-location 18	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-787419	\N	f
GP-1164	general	Filter change-out	Z3	Unit 3 — Coker — sub-location 3	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-765764	\N	f
WH-1165	work-at-height	Work at height — cable tray installation	Z3	Unit 3 — Coker — sub-location 8	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-758623	\N	f
GP-1166	general	Instrument loop check	Z3	Unit 3 — Coker — sub-location 15	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-798380	\N	f
GP-1167	general	Instrument loop check	Z3	Unit 3 — Coker — sub-location 18	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-718559	\N	f
HW-1168	hot-work	Welding on structural steel	Z3	Unit 3 — Coker — sub-location 15	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-707770	\N	f
GP-1169	general	Filter change-out	Z3	Unit 3 — Coker — sub-location 8	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-752222	\N	f
GP-1170	general	Piping insulation removal	Z3	Unit 3 — Coker — sub-location 11	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-760866	\N	f
GP-1171	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 14	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-778102	\N	f
WH-1172	work-at-height	Work at height — scaffold erection	Z3	Unit 3 — Coker — sub-location 13	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-798791	\N	f
CS-1173	confined-space	Confined-space entry — tank inspection	Z3	Unit 3 — Coker — sub-location 13	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-746865	\N	f
WH-1174	work-at-height	Work at height — column platform repair	Z3	Unit 3 — Coker — sub-location 3	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-736686	\N	f
GP-1175	general	Filter change-out	Z3	Unit 3 — Coker — sub-location 14	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-752892	\N	f
GP-1176	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 10	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-776581	\N	f
GP-1177	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 15	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-799017	\N	f
GP-1178	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 17	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-735967	\N	f
GP-1179	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 11	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-728786	\N	f
HW-1180	hot-work	Cutting on instrument tray	Z3	Unit 3 — Coker — sub-location 12	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-719652	\N	f
GP-1181	general	Filter change-out	Z3	Unit 3 — Coker — sub-location 2	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-702156	\N	f
GP-1182	general	Filter change-out	Z3	Unit 3 — Coker — sub-location 3	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-782326	\N	f
WH-1183	work-at-height	Work at height — scaffold erection	Z3	Unit 3 — Coker — sub-location 20	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-728668	\N	f
GP-1184	general	Instrument loop check	Z3	Unit 3 — Coker — sub-location 8	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-781180	\N	f
CS-1185	confined-space	Confined-space entry — vessel inspection	Z3	Unit 3 — Coker — sub-location 2	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-703584	\N	f
GP-1186	general	Electrical isolation work	Z3	Unit 3 — Coker — sub-location 17	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-707393	\N	f
CS-1187	confined-space	Confined-space entry — vessel inspection	Z3	Unit 3 — Coker — sub-location 6	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-765954	\N	f
GP-1188	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 4	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-741133	\N	f
GP-1189	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 9	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-762903	\N	f
GP-1190	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 20	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-721931	\N	f
GP-1191	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 5	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-762042	\N	f
GP-1192	general	Filter change-out	Z3	Unit 3 — Coker — sub-location 17	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-712259	\N	f
CS-1193	confined-space	Confined-space entry — drum cleaning	Z3	Unit 3 — Coker — sub-location 12	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-712945	\N	f
GP-1194	general	Piping insulation removal	Z3	Unit 3 — Coker — sub-location 8	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-763939	\N	f
CS-1195	confined-space	Confined-space entry — sump cleaning	Z3	Unit 3 — Coker — sub-location 5	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-797254	\N	f
GP-1196	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 5	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-781360	\N	f
WH-1197	work-at-height	Work at height — column platform repair	Z3	Unit 3 — Coker — sub-location 7	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-717442	\N	f
GP-1198	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 18	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-793712	\N	f
GP-1199	general	Electrical isolation work	Z3	Unit 3 — Coker — sub-location 10	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-702201	\N	f
GP-1200	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 20	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-707354	\N	f
GP-1201	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 20	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-704518	\N	f
GP-1202	general	Instrument loop check	Z3	Unit 3 — Coker — sub-location 4	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-772267	\N	f
GP-1203	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 18	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-738477	\N	f
HW-1204	hot-work	Grinding on vessel nozzle	Z3	Unit 3 — Coker — sub-location 13	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-715351	\N	f
GP-1205	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 12	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-725012	\N	f
GP-1206	general	Instrument loop check	Z3	Unit 3 — Coker — sub-location 10	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-784526	\N	f
GP-1207	general	Filter change-out	Z3	Unit 3 — Coker — sub-location 19	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-702562	\N	f
HW-1208	hot-work	Flame cutting on scaffold tube	Z3	Unit 3 — Coker — sub-location 4	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-710724	\N	f
GP-1209	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 10	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-723579	\N	f
GP-1210	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 6	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-745781	\N	f
GP-1211	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 13	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-781030	\N	f
WH-1212	work-at-height	Work at height — flare stack inspection	Z3	Unit 3 — Coker — sub-location 6	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-775568	\N	f
GP-1213	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 11	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-782585	\N	f
GP-1214	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 8	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-754547	\N	f
GP-1215	general	Valve replacement	Z3	Unit 3 — Coker — sub-location 6	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-771915	\N	f
GP-1216	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 14	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-754159	\N	f
GP-1217	general	Instrument loop check	Z3	Unit 3 — Coker — sub-location 9	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-704862	\N	f
GP-1218	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 5	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-736738	\N	f
GP-1219	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 7	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-729014	\N	f
HW-1220	hot-work	Grinding on vessel nozzle	Z3	Unit 3 — Coker — sub-location 14	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-744485	\N	f
GP-1221	general	General maintenance on pump	Z3	Unit 3 — Coker — sub-location 20	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-708295	\N	f
WH-1222	work-at-height	Work at height — scaffold erection	Z3	Unit 3 — Coker — sub-location 20	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-755661	\N	f
WH-1223	work-at-height	Work at height — column platform repair	Z3	Unit 3 — Coker — sub-location 13	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-796964	\N	f
WH-1224	work-at-height	Work at height — cable tray installation	Z3	Unit 3 — Coker — sub-location 8	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-745378	\N	f
WH-1225	work-at-height	Work at height — scaffold erection	Z3	Unit 3 — Coker — sub-location 13	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-736851	\N	f
GP-1226	general	Electrical isolation work	Z3	Unit 3 — Coker — sub-location 5	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-799336	\N	f
GP-1227	general	Electrical isolation work	Z3	Unit 3 — Coker — sub-location 20	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-742044	\N	f
WH-1228	work-at-height	Work at height — cable tray installation	Z4	Unit 4 — Sulphur Recovery — sub-location 18	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-737589	\N	f
GP-1229	general	Filter change-out	Z4	Unit 4 — Sulphur Recovery — sub-location 18	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-793327	\N	f
GP-1230	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 7	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-789050	\N	f
WH-1231	work-at-height	Work at height — scaffold erection	Z4	Unit 4 — Sulphur Recovery — sub-location 15	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-751055	\N	f
GP-1232	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 1	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-736221	\N	f
GP-1233	general	Filter change-out	Z4	Unit 4 — Sulphur Recovery — sub-location 7	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-749590	\N	f
CS-1234	confined-space	Confined-space entry — drum cleaning	Z4	Unit 4 — Sulphur Recovery — sub-location 5	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-724930	\N	f
WH-1235	work-at-height	Work at height — flare stack inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 20	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-765199	\N	f
GP-1236	general	Instrument loop check	Z4	Unit 4 — Sulphur Recovery — sub-location 9	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-739339	\N	f
GP-1237	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 20	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-762161	\N	f
GP-1238	general	Piping insulation removal	Z4	Unit 4 — Sulphur Recovery — sub-location 14	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-702790	\N	f
GP-1239	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 7	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-794469	\N	f
HW-1240	hot-work	Grinding on heat exchanger shell	Z4	Unit 4 — Sulphur Recovery — sub-location 4	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-784729	\N	f
GP-1241	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 4	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-747622	\N	f
GP-1242	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 18	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-796002	\N	f
GP-1243	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 18	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-740576	\N	f
GP-1244	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 13	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-798492	\N	f
GP-1245	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 20	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-770714	\N	f
GP-1246	general	Piping insulation removal	Z4	Unit 4 — Sulphur Recovery — sub-location 12	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-798815	\N	f
GP-1247	general	Instrument loop check	Z4	Unit 4 — Sulphur Recovery — sub-location 9	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-765024	\N	f
HW-1248	hot-work	Cutting on instrument tray	Z4	Unit 4 — Sulphur Recovery — sub-location 2	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-710578	\N	f
GP-1249	general	Instrument loop check	Z4	Unit 4 — Sulphur Recovery — sub-location 18	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-772717	\N	f
GP-1250	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 4	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-778161	\N	f
CS-1251	confined-space	Confined-space entry — vessel inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 20	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-755811	\N	f
GP-1252	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 6	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-721674	\N	f
WH-1253	work-at-height	Work at height — flare stack inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 17	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-780405	\N	f
GP-1254	general	Filter change-out	Z4	Unit 4 — Sulphur Recovery — sub-location 5	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-776770	\N	f
GP-1255	general	Piping insulation removal	Z4	Unit 4 — Sulphur Recovery — sub-location 17	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-739154	\N	f
WH-1256	work-at-height	Work at height — column platform repair	Z4	Unit 4 — Sulphur Recovery — sub-location 9	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-731879	\N	f
GP-1257	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 5	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-757140	\N	f
GP-1258	general	General maintenance on pump	Z4	Unit 4 — Sulphur Recovery — sub-location 15	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-780629	\N	f
GP-1259	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 7	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-745639	\N	f
GP-1260	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 19	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-752624	\N	f
GP-1261	general	Filter change-out	Z4	Unit 4 — Sulphur Recovery — sub-location 18	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-795212	\N	f
WH-1262	work-at-height	Work at height — flare stack inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 15	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-788275	\N	f
GP-1263	general	General maintenance on pump	Z4	Unit 4 — Sulphur Recovery — sub-location 10	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-768241	\N	f
WH-1264	work-at-height	Work at height — scaffold erection	Z4	Unit 4 — Sulphur Recovery — sub-location 16	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-790263	\N	f
CS-1265	confined-space	Confined-space entry — vessel inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 1	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-738714	\N	f
WH-1266	work-at-height	Work at height — flare stack inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 4	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-777968	\N	f
GP-1267	general	Electrical isolation work	Z4	Unit 4 — Sulphur Recovery — sub-location 10	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-773203	\N	f
HW-1268	hot-work	Grinding on vessel nozzle	Z4	Unit 4 — Sulphur Recovery — sub-location 20	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-766618	\N	f
WH-1269	work-at-height	Work at height — scaffold erection	Z4	Unit 4 — Sulphur Recovery — sub-location 13	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-734102	\N	f
WH-1270	work-at-height	Work at height — column platform repair	Z4	Unit 4 — Sulphur Recovery — sub-location 14	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-766122	\N	f
GP-1271	general	Piping insulation removal	Z4	Unit 4 — Sulphur Recovery — sub-location 8	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-794855	\N	f
GP-1272	general	Filter change-out	Z4	Unit 4 — Sulphur Recovery — sub-location 19	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-784132	\N	f
GP-1273	general	Instrument loop check	Z4	Unit 4 — Sulphur Recovery — sub-location 10	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-786801	\N	f
GP-1274	general	Filter change-out	Z4	Unit 4 — Sulphur Recovery — sub-location 20	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-785894	\N	f
GP-1275	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 5	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-746964	\N	f
GP-1276	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 11	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-759480	\N	f
GP-1277	general	General maintenance on pump	Z4	Unit 4 — Sulphur Recovery — sub-location 15	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-789998	\N	f
WH-1278	work-at-height	Work at height — column platform repair	Z4	Unit 4 — Sulphur Recovery — sub-location 10	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-748515	\N	f
GP-1279	general	General maintenance on pump	Z4	Unit 4 — Sulphur Recovery — sub-location 2	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-735968	\N	f
HW-1280	hot-work	Cutting on instrument tray	Z4	Unit 4 — Sulphur Recovery — sub-location 12	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-704517	\N	f
GP-1281	general	Valve replacement	Z4	Unit 4 — Sulphur Recovery — sub-location 9	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-724013	\N	f
HW-1282	hot-work	Hot work on pipe flange	Z4	Unit 4 — Sulphur Recovery — sub-location 5	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-708310	\N	f
CS-1283	confined-space	Confined-space entry — drum cleaning	Z5	Unit 5 — Utilities — sub-location 5	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-720098	\N	f
GP-1284	general	Instrument loop check	Z5	Unit 5 — Utilities — sub-location 11	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-789647	\N	f
HW-1285	hot-work	Grinding on vessel nozzle	Z5	Unit 5 — Utilities — sub-location 15	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-726332	\N	f
GP-1286	general	Valve replacement	Z5	Unit 5 — Utilities — sub-location 16	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-754583	\N	f
GP-1287	general	General maintenance on pump	Z5	Unit 5 — Utilities — sub-location 5	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-799200	\N	f
WH-1288	work-at-height	Work at height — scaffold erection	Z5	Unit 5 — Utilities — sub-location 16	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-730197	\N	f
CS-1289	confined-space	Confined-space entry — vessel inspection	Z5	Unit 5 — Utilities — sub-location 20	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-747350	\N	f
GP-1290	general	Instrument loop check	Z5	Unit 5 — Utilities — sub-location 11	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-708040	\N	f
GP-1291	general	General maintenance on pump	Z5	Unit 5 — Utilities — sub-location 1	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-747668	\N	f
GP-1292	general	General maintenance on pump	Z5	Unit 5 — Utilities — sub-location 10	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-727781	\N	f
HW-1293	hot-work	Grinding on vessel nozzle	Z5	Unit 5 — Utilities — sub-location 15	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-756058	\N	f
GP-1294	general	Valve replacement	Z5	Unit 5 — Utilities — sub-location 10	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-731487	\N	f
GP-1295	general	Valve replacement	Z5	Unit 5 — Utilities — sub-location 4	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-715004	\N	f
GP-1296	general	Piping insulation removal	Z5	Unit 5 — Utilities — sub-location 7	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-705160	\N	f
WH-1297	work-at-height	Work at height — scaffold erection	Z5	Unit 5 — Utilities — sub-location 12	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-737536	\N	f
GP-1298	general	Valve replacement	Z5	Unit 5 — Utilities — sub-location 11	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-705987	\N	f
WH-1299	work-at-height	Work at height — flare stack inspection	Z5	Unit 5 — Utilities — sub-location 20	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-726110	\N	f
GP-1300	general	Instrument loop check	Z5	Unit 5 — Utilities — sub-location 20	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-719321	\N	f
GP-1301	general	Valve replacement	Z5	Unit 5 — Utilities — sub-location 10	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-720834	\N	f
GP-1302	general	Piping insulation removal	Z5	Unit 5 — Utilities — sub-location 12	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-743795	\N	f
CS-1303	confined-space	Confined-space entry — tank inspection	Z5	Unit 5 — Utilities — sub-location 10	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-717473	\N	f
GP-1304	general	Piping insulation removal	Z5	Unit 5 — Utilities — sub-location 6	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-716628	\N	f
WH-1305	work-at-height	Work at height — column platform repair	Z5	Unit 5 — Utilities — sub-location 19	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-749864	\N	f
GP-1306	general	Filter change-out	Z5	Unit 5 — Utilities — sub-location 9	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-762199	\N	f
WH-1307	work-at-height	Work at height — cable tray installation	Z5	Unit 5 — Utilities — sub-location 1	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-755678	\N	f
GP-1308	general	Electrical isolation work	Z5	Unit 5 — Utilities — sub-location 10	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-720732	\N	f
GP-1309	general	Piping insulation removal	Z5	Unit 5 — Utilities — sub-location 9	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-737510	\N	f
GP-1310	general	Instrument loop check	Z5	Unit 5 — Utilities — sub-location 20	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-777384	\N	f
WH-1311	work-at-height	Work at height — cable tray installation	Z5	Unit 5 — Utilities — sub-location 4	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-752422	\N	f
GP-1312	general	Filter change-out	Z5	Unit 5 — Utilities — sub-location 2	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-753936	\N	f
GP-1313	general	Instrument loop check	Z5	Unit 5 — Utilities — sub-location 10	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-711185	\N	f
WH-1314	work-at-height	Work at height — flare stack inspection	Z5	Unit 5 — Utilities — sub-location 15	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-779395	\N	f
GP-1315	general	Electrical isolation work	Z5	Unit 5 — Utilities — sub-location 17	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-761712	\N	f
WH-1316	work-at-height	Work at height — scaffold erection	Z5	Unit 5 — Utilities — sub-location 19	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-783612	\N	f
WH-1317	work-at-height	Work at height — scaffold erection	Z5	Unit 5 — Utilities — sub-location 13	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-767769	\N	f
GP-1318	general	General maintenance on pump	Z5	Unit 5 — Utilities — sub-location 3	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-740957	\N	f
GP-1319	general	Piping insulation removal	Z5	Unit 5 — Utilities — sub-location 20	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-726754	\N	f
GP-1320	general	General maintenance on pump	Z5	Unit 5 — Utilities — sub-location 20	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-742051	\N	f
GP-1321	general	Instrument loop check	Z5	Unit 5 — Utilities — sub-location 14	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-743615	\N	f
GP-1322	general	Electrical isolation work	Z5	Unit 5 — Utilities — sub-location 15	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-743615	\N	f
GP-1323	general	Filter change-out	Z5	Unit 5 — Utilities — sub-location 4	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-748991	\N	f
GP-1324	general	Filter change-out	Z5	Unit 5 — Utilities — sub-location 14	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-726131	\N	f
GP-1325	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 9	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-799698	\N	f
WH-1326	work-at-height	Work at height — cable tray installation	Z6	Unit 6 — Tankage North — sub-location 15	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-762030	\N	f
WH-1327	work-at-height	Work at height — scaffold erection	Z6	Unit 6 — Tankage North — sub-location 20	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-708492	\N	f
CS-1328	confined-space	Confined-space entry — sump cleaning	Z6	Unit 6 — Tankage North — sub-location 5	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-763854	\N	f
GP-1329	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 18	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-744947	\N	f
GP-1330	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 15	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-767626	\N	f
GP-1331	general	Valve replacement	Z6	Unit 6 — Tankage North — sub-location 14	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-730136	\N	f
WH-1332	work-at-height	Work at height — flare stack inspection	Z6	Unit 6 — Tankage North — sub-location 17	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-753290	\N	f
WH-1333	work-at-height	Work at height — column platform repair	Z6	Unit 6 — Tankage North — sub-location 1	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-756631	\N	f
GP-1334	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 1	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-780739	\N	f
GP-1335	general	Instrument loop check	Z6	Unit 6 — Tankage North — sub-location 17	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-792445	\N	f
CS-1336	confined-space	Confined-space entry — vessel inspection	Z6	Unit 6 — Tankage North — sub-location 13	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-741494	\N	f
GP-1337	general	Instrument loop check	Z6	Unit 6 — Tankage North — sub-location 12	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-793183	\N	f
GP-1338	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 14	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-717863	\N	f
WH-1339	work-at-height	Work at height — scaffold erection	Z6	Unit 6 — Tankage North — sub-location 18	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-794097	\N	f
CS-1340	confined-space	Confined-space entry — tank inspection	Z6	Unit 6 — Tankage North — sub-location 17	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-748256	\N	f
WH-1341	work-at-height	Work at height — scaffold erection	Z6	Unit 6 — Tankage North — sub-location 5	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-787710	\N	f
GP-1342	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 14	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-754843	\N	f
GP-1343	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 5	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-793101	\N	f
GP-1344	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 4	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-794835	\N	f
WH-1345	work-at-height	Work at height — column platform repair	Z6	Unit 6 — Tankage North — sub-location 18	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-740957	\N	f
GP-1346	general	Piping insulation removal	Z6	Unit 6 — Tankage North — sub-location 1	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-785251	\N	f
GP-1347	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 11	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-745984	\N	f
CS-1348	confined-space	Confined-space entry — vessel inspection	Z6	Unit 6 — Tankage North — sub-location 18	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-748859	\N	f
GP-1349	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 11	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-710138	\N	f
GP-1350	general	Instrument loop check	Z6	Unit 6 — Tankage North — sub-location 17	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-767728	\N	f
GP-1351	general	Instrument loop check	Z6	Unit 6 — Tankage North — sub-location 1	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-745553	\N	f
CS-1352	confined-space	Confined-space entry — sump cleaning	Z6	Unit 6 — Tankage North — sub-location 4	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-773210	\N	f
GP-1353	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 13	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-791167	\N	f
GP-1354	general	Valve replacement	Z6	Unit 6 — Tankage North — sub-location 13	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-720264	\N	f
GP-1355	general	Valve replacement	Z6	Unit 6 — Tankage North — sub-location 12	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-744379	\N	f
GP-1356	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 17	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-711979	\N	f
GP-1357	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 11	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-743080	\N	f
GP-1358	general	Valve replacement	Z6	Unit 6 — Tankage North — sub-location 20	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-756457	\N	f
HW-1359	hot-work	Hot work on pipe flange	Z6	Unit 6 — Tankage North — sub-location 8	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-773132	\N	f
GP-1360	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 18	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-701054	\N	f
WH-1361	work-at-height	Work at height — scaffold erection	Z6	Unit 6 — Tankage North — sub-location 7	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-723220	\N	f
WH-1362	work-at-height	Work at height — flare stack inspection	Z6	Unit 6 — Tankage North — sub-location 10	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-777140	\N	f
GP-1363	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 17	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-725368	\N	f
GP-1364	general	Instrument loop check	Z6	Unit 6 — Tankage North — sub-location 18	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-736781	\N	f
GP-1365	general	General maintenance on pump	Z6	Unit 6 — Tankage North — sub-location 15	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-724727	\N	f
GP-1366	general	Electrical isolation work	Z6	Unit 6 — Tankage North — sub-location 19	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-755624	\N	f
GP-1367	general	Valve replacement	Z6	Unit 6 — Tankage North — sub-location 9	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-724477	\N	f
GP-1368	general	Valve replacement	Z6	Unit 6 — Tankage North — sub-location 5	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-709908	\N	f
HW-1369	hot-work	Welding on structural steel	Z6	Unit 6 — Tankage North — sub-location 9	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-797410	\N	f
GP-1370	general	Instrument loop check	Z6	Unit 6 — Tankage North — sub-location 12	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-700229	\N	f
GP-1371	general	General maintenance on pump	Z6	Unit 6 — Tankage North — sub-location 7	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-712587	\N	f
GP-1372	general	Filter change-out	Z6	Unit 6 — Tankage North — sub-location 10	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-738249	\N	f
GP-1373	general	Piping insulation removal	Z7	Unit 7 — Tankage South — sub-location 14	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-795073	\N	f
GP-1374	general	Filter change-out	Z7	Unit 7 — Tankage South — sub-location 17	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-705253	\N	f
WH-1375	work-at-height	Work at height — cable tray installation	Z7	Unit 7 — Tankage South — sub-location 18	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-746703	\N	f
WH-1376	work-at-height	Work at height — cable tray installation	Z7	Unit 7 — Tankage South — sub-location 20	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-758726	\N	f
GP-1377	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 1	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-708519	\N	f
HW-1378	hot-work	Flame cutting on scaffold tube	Z7	Unit 7 — Tankage South — sub-location 8	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-781557	\N	f
WH-1379	work-at-height	Work at height — column platform repair	Z7	Unit 7 — Tankage South — sub-location 5	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-752778	\N	f
GP-1380	general	Piping insulation removal	Z7	Unit 7 — Tankage South — sub-location 7	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-714512	\N	f
HW-1381	hot-work	Grinding on vessel nozzle	Z7	Unit 7 — Tankage South — sub-location 3	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-707386	\N	f
GP-1382	general	General maintenance on pump	Z7	Unit 7 — Tankage South — sub-location 8	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-740763	\N	f
GP-1383	general	Filter change-out	Z7	Unit 7 — Tankage South — sub-location 19	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-761536	\N	f
GP-1384	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 7	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-712888	\N	f
GP-1385	general	Piping insulation removal	Z7	Unit 7 — Tankage South — sub-location 8	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 2 permit issuer	WO-750382	\N	f
HW-1386	hot-work	Flame cutting on scaffold tube	Z7	Unit 7 — Tankage South — sub-location 9	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-757988	\N	f
GP-1387	general	Filter change-out	Z7	Unit 7 — Tankage South — sub-location 20	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-763412	\N	f
WH-1388	work-at-height	Work at height — flare stack inspection	Z7	Unit 7 — Tankage South — sub-location 6	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-784933	\N	f
GP-1389	general	General maintenance on pump	Z7	Unit 7 — Tankage South — sub-location 5	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-746524	\N	f
WH-1390	work-at-height	Work at height — flare stack inspection	Z7	Unit 7 — Tankage South — sub-location 7	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-757854	\N	f
GP-1391	general	Filter change-out	Z7	Unit 7 — Tankage South — sub-location 2	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-725447	\N	f
GP-1392	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 20	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-768591	\N	f
GP-1393	general	Filter change-out	Z7	Unit 7 — Tankage South — sub-location 8	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-795813	\N	f
CS-1394	confined-space	Confined-space entry — drum cleaning	Z7	Unit 7 — Tankage South — sub-location 12	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-702661	\N	f
GP-1395	general	Electrical isolation work	Z7	Unit 7 — Tankage South — sub-location 18	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-729204	\N	f
GP-1396	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 4	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-790421	\N	f
GP-1397	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 1	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-739044	\N	f
WH-1398	work-at-height	Work at height — scaffold erection	Z7	Unit 7 — Tankage South — sub-location 13	valid	safety	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-767233	\N	f
WH-1399	work-at-height	Work at height — cable tray installation	Z7	Unit 7 — Tankage South — sub-location 2	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-700387	\N	f
WH-1400	work-at-height	Work at height — column platform repair	Z7	Unit 7 — Tankage South — sub-location 6	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-738294	\N	f
GP-1401	general	Electrical isolation work	Z7	Unit 7 — Tankage South — sub-location 1	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-761929	\N	f
WH-1402	work-at-height	Work at height — cable tray installation	Z7	Unit 7 — Tankage South — sub-location 19	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-796871	\N	f
WH-1403	work-at-height	Work at height — cable tray installation	Z7	Unit 7 — Tankage South — sub-location 6	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-701898	\N	f
HW-1404	hot-work	Welding on pump skid	Z7	Unit 7 — Tankage South — sub-location 7	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-704497	\N	f
WH-1405	work-at-height	Work at height — scaffold erection	Z7	Unit 7 — Tankage South — sub-location 1	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-760326	\N	f
GP-1406	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 16	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-712048	\N	f
GP-1407	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 16	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-781626	\N	f
GP-1408	general	Electrical isolation work	Z7	Unit 7 — Tankage South — sub-location 12	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-727313	\N	f
WH-1409	work-at-height	Work at height — cable tray installation	Z7	Unit 7 — Tankage South — sub-location 13	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-761946	\N	f
GP-1410	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 5	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-704291	\N	f
HW-1411	hot-work	Welding on structural steel	Z7	Unit 7 — Tankage South — sub-location 8	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-748649	\N	f
WH-1412	work-at-height	Work at height — cable tray installation	Z7	Unit 7 — Tankage South — sub-location 14	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-719525	\N	f
GP-1413	general	Instrument loop check	Z7	Unit 7 — Tankage South — sub-location 6	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-704168	\N	f
WH-1414	work-at-height	Work at height — column platform repair	Z7	Unit 7 — Tankage South — sub-location 11	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-750898	\N	f
GP-1415	general	General maintenance on pump	Z7	Unit 7 — Tankage South — sub-location 9	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-707990	\N	f
GP-1416	general	Filter change-out	Z7	Unit 7 — Tankage South — sub-location 11	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 4 permit issuer	WO-752198	\N	f
GP-1417	general	Instrument loop check	Z8	Control Room Complex — sub-location 15	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-711597	\N	f
WH-1418	work-at-height	Work at height — column platform repair	Z8	Control Room Complex — sub-location 3	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-712754	\N	f
GP-1419	general	General maintenance on pump	Z8	Control Room Complex — sub-location 14	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-758537	\N	f
GP-1420	general	Instrument loop check	Z8	Control Room Complex — sub-location 1	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-706120	\N	f
GP-1421	general	Instrument loop check	Z8	Control Room Complex — sub-location 9	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-768564	\N	f
GP-1422	general	Piping insulation removal	Z8	Control Room Complex — sub-location 1	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-716286	\N	f
WH-1423	work-at-height	Work at height — scaffold erection	Z8	Control Room Complex — sub-location 1	valid	health	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-705339	\N	f
GP-1424	general	Filter change-out	Z8	Control Room Complex — sub-location 7	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 1 permit issuer	WO-774675	\N	f
GP-1425	general	General maintenance on pump	Z8	Control Room Complex — sub-location 19	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-744136	\N	f
GP-1426	general	Instrument loop check	Z8	Control Room Complex — sub-location 7	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-762481	\N	f
WH-1427	work-at-height	Work at height — column platform repair	Z8	Control Room Complex — sub-location 10	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-711200	\N	f
GP-1428	general	Piping insulation removal	Z8	Control Room Complex — sub-location 8	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-796469	\N	f
WH-1429	work-at-height	Work at height — cable tray installation	Z8	Control Room Complex — sub-location 2	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-734538	\N	f
GP-1430	general	General maintenance on pump	Z8	Control Room Complex — sub-location 12	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 2 permit issuer	WO-751716	\N	f
HW-1431	hot-work	Cutting on instrument tray	Z8	Control Room Complex — sub-location 8	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-779395	\N	f
GP-1432	general	Filter change-out	Z8	Control Room Complex — sub-location 16	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-771475	\N	f
WH-1433	work-at-height	Work at height — cable tray installation	Z8	Control Room Complex — sub-location 19	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Unit 3 permit issuer	WO-776881	\N	f
GP-1434	general	Electrical isolation work	Z8	Control Room Complex — sub-location 1	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 4 permit issuer	WO-765800	\N	f
WH-1435	work-at-height	Work at height — flare stack inspection	Z9	Maintenance Workshop — sub-location 12	valid	safety	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-737422	\N	f
HW-1436	hot-work	Welding on structural steel	Z9	Maintenance Workshop — sub-location 7	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-759412	\N	f
WH-1437	work-at-height	Work at height — cable tray installation	Z9	Maintenance Workshop — sub-location 10	valid	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-796762	\N	f
GP-1438	general	Instrument loop check	Z9	Maintenance Workshop — sub-location 1	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-709923	\N	f
WH-1439	work-at-height	Work at height — flare stack inspection	Z9	Maintenance Workshop — sub-location 14	valid	equipment	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 1 permit issuer	WO-736796	\N	f
WH-1440	work-at-height	Work at height — scaffold erection	Z9	Maintenance Workshop — sub-location 6	valid	compliance	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Operations superintendent	WO-789328	\N	f
GP-1441	general	Electrical isolation work	Z9	Maintenance Workshop — sub-location 19	valid	equipment	2026-08-05 04:00:00-04	2026-08-05 12:00:00-04	Site HSE officer	WO-745210	\N	f
GP-1442	general	General maintenance on pump	Z9	Maintenance Workshop — sub-location 10	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Unit 3 permit issuer	WO-700001	\N	f
GP-1443	general	Valve replacement	Z9	Maintenance Workshop — sub-location 1	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-739018	\N	f
GP-1444	general	Piping insulation removal	Z9	Maintenance Workshop — sub-location 13	valid	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-790708	\N	f
GP-1445	general	Filter change-out	Z9	Maintenance Workshop — sub-location 9	valid	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-777619	\N	f
WH-1446	work-at-height	Work at height — flare stack inspection	Z9	Maintenance Workshop — sub-location 7	valid	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-793957	\N	f
GP-1447	general	Filter change-out	Z9	Maintenance Workshop — sub-location 14	valid	compliance	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Operations superintendent	WO-720916	\N	f
CS-1448	confined-space	Confined-space entry — sump cleaning	Z9	Maintenance Workshop — sub-location 8	valid	health	2026-08-05 02:00:00-04	2026-08-05 10:00:00-04	Site HSE officer	WO-767882	\N	f
CS-1449	confined-space	Confined-space entry — tank inspection	Z11	Gate House & Security — sub-location 12	expired	health	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Site HSE officer	WO-772520	\N	f
CS-1450	confined-space	Confined-space entry — drum cleaning	Z4	Unit 4 — Sulphur Recovery — sub-location 10	expired	equipment	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 3 permit issuer	WO-777241	\N	f
WH-1451	work-at-height	Work at height — cable tray installation	Z9	Maintenance Workshop — sub-location 6	expired	equipment	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 3 permit issuer	WO-718733	\N	f
HW-1452	hot-work	Welding on pump skid	Z4	Unit 4 — Sulphur Recovery — sub-location 10	expired	compliance	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 2 permit issuer	WO-771259	\N	f
HW-1453	hot-work	Welding on structural steel	Z8	Control Room Complex — sub-location 5	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Site HSE officer	WO-723161	\N	f
GP-1454	general	Instrument loop check	Z3	Unit 3 — Coker — sub-location 10	expired	safety	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Site HSE officer	WO-729526	\N	f
HW-1455	hot-work	Grinding on heat exchanger shell	Z6	Unit 6 — Tankage North — sub-location 16	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-736389	\N	f
HW-1456	hot-work	Flame cutting on scaffold tube	Z10	Administration Block — sub-location 10	expired	compliance	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Operations superintendent	WO-795434	\N	f
HW-1457	hot-work	Grinding on vessel nozzle	Z11	Gate House & Security — sub-location 15	expired	safety	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Operations superintendent	WO-745987	\N	f
HW-1458	hot-work	Cutting on instrument tray	Z4	Unit 4 — Sulphur Recovery — sub-location 6	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Operations superintendent	WO-726499	\N	f
WH-1459	work-at-height	Work at height — scaffold erection	Z11	Gate House & Security — sub-location 3	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 2 permit issuer	WO-770505	\N	f
GP-1460	general	Electrical isolation work	Z8	Control Room Complex — sub-location 19	expired	equipment	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 4 permit issuer	WO-775247	\N	f
CS-1461	confined-space	Confined-space entry — sump cleaning	Z6	Unit 6 — Tankage North — sub-location 15	expired	equipment	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Operations superintendent	WO-740595	\N	f
HW-1462	hot-work	Welding on pump skid	Z1	Unit 1 — Crude Distillation — sub-location 9	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Operations superintendent	WO-793996	\N	f
HW-1463	hot-work	Flame cutting on scaffold tube	Z3	Unit 3 — Coker — sub-location 15	expired	equipment	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 3 permit issuer	WO-748056	\N	f
GP-1464	general	Instrument loop check	Z7	Unit 7 — Tankage South — sub-location 16	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Operations superintendent	WO-782295	\N	f
GP-1465	general	Valve replacement	Z11	Gate House & Security — sub-location 17	expired	safety	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Operations superintendent	WO-707201	\N	f
WH-1466	work-at-height	Work at height — flare stack inspection	Z6	Unit 6 — Tankage North — sub-location 20	expired	compliance	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 2 permit issuer	WO-770729	\N	f
HW-1467	hot-work	Hot work on pipe flange	Z10	Administration Block — sub-location 14	expired	health	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 4 permit issuer	WO-789888	\N	f
CS-1468	confined-space	Confined-space entry — tank inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 9	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 2 permit issuer	WO-709454	\N	f
CS-1469	confined-space	Confined-space entry — vessel inspection	Z8	Control Room Complex — sub-location 13	expired	equipment	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 4 permit issuer	WO-791915	\N	f
HW-1470	hot-work	Cutting on instrument tray	Z10	Administration Block — sub-location 17	expired	health	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Unit 2 permit issuer	WO-721829	\N	f
WH-1471	work-at-height	Work at height — cable tray installation	Z11	Gate House & Security — sub-location 3	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Operations superintendent	WO-764715	\N	f
HW-1472	hot-work	Cutting on instrument tray	Z1	Unit 1 — Crude Distillation — sub-location 6	expired	health	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 2 permit issuer	WO-786664	\N	f
HW-1473	hot-work	Welding on pump skid	Z4	Unit 4 — Sulphur Recovery — sub-location 3	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-703610	\N	f
GP-1474	general	Filter change-out	Z10	Administration Block — sub-location 11	expired	safety	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Unit 3 permit issuer	WO-795974	\N	f
GP-1475	general	Piping insulation removal	Z11	Gate House & Security — sub-location 18	expired	health	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 1 permit issuer	WO-777108	\N	f
HW-1476	hot-work	Welding on structural steel	Z2	Unit 2 — Hydrocracker — sub-location 15	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Operations superintendent	WO-799097	\N	f
GP-1477	general	Instrument loop check	Z7	Unit 7 — Tankage South — sub-location 6	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 2 permit issuer	WO-734045	\N	f
HW-1478	hot-work	Grinding on vessel nozzle	Z3	Unit 3 — Coker — sub-location 16	expired	health	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Site HSE officer	WO-779511	\N	f
WH-1479	work-at-height	Work at height — flare stack inspection	Z6	Unit 6 — Tankage North — sub-location 12	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 3 permit issuer	WO-768201	\N	f
GP-1480	general	Piping insulation removal	Z1	Unit 1 — Crude Distillation — sub-location 4	expired	health	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Site HSE officer	WO-713775	\N	f
HW-1481	hot-work	Flame cutting on scaffold tube	Z5	Unit 5 — Utilities — sub-location 4	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-781228	\N	f
WH-1482	work-at-height	Work at height — flare stack inspection	Z6	Unit 6 — Tankage North — sub-location 12	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 3 permit issuer	WO-729349	\N	f
CS-1483	confined-space	Confined-space entry — drum cleaning	Z11	Gate House & Security — sub-location 1	expired	safety	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 1 permit issuer	WO-756764	\N	f
WH-1484	work-at-height	Work at height — flare stack inspection	Z11	Gate House & Security — sub-location 20	expired	compliance	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Site HSE officer	WO-769687	\N	f
GP-1485	general	General maintenance on pump	Z8	Control Room Complex — sub-location 14	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 3 permit issuer	WO-730174	\N	f
CS-1486	confined-space	Confined-space entry — sump cleaning	Z1	Unit 1 — Crude Distillation — sub-location 17	expired	safety	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Unit 4 permit issuer	WO-750113	\N	f
HW-1487	hot-work	Cutting on instrument tray	Z4	Unit 4 — Sulphur Recovery — sub-location 20	expired	health	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Unit 1 permit issuer	WO-705486	\N	f
GP-1488	general	Valve replacement	Z7	Unit 7 — Tankage South — sub-location 1	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Site HSE officer	WO-725991	\N	f
GP-1489	general	Electrical isolation work	Z9	Maintenance Workshop — sub-location 12	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Site HSE officer	WO-728908	\N	f
CS-1490	confined-space	Confined-space entry — drum cleaning	Z2	Unit 2 — Hydrocracker — sub-location 13	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 2 permit issuer	WO-796173	\N	f
WH-1491	work-at-height	Work at height — cable tray installation	Z10	Administration Block — sub-location 11	expired	safety	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 1 permit issuer	WO-706440	\N	f
GP-1492	general	Valve replacement	Z8	Control Room Complex — sub-location 17	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 2 permit issuer	WO-725743	\N	f
GP-1493	general	Electrical isolation work	Z9	Maintenance Workshop — sub-location 14	expired	compliance	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Unit 2 permit issuer	WO-702160	\N	f
GP-1494	general	Electrical isolation work	Z8	Control Room Complex — sub-location 4	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 3 permit issuer	WO-740104	\N	f
CS-1495	confined-space	Confined-space entry — tank inspection	Z11	Gate House & Security — sub-location 4	expired	equipment	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 4 permit issuer	WO-715434	\N	f
CS-1496	confined-space	Confined-space entry — drum cleaning	Z2	Unit 2 — Hydrocracker — sub-location 1	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 3 permit issuer	WO-712497	\N	f
HW-1497	hot-work	Hot work on pipe flange	Z10	Administration Block — sub-location 16	expired	compliance	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 1 permit issuer	WO-796651	\N	f
CS-1498	confined-space	Confined-space entry — tank inspection	Z5	Unit 5 — Utilities — sub-location 13	expired	health	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Site HSE officer	WO-768533	\N	f
GP-1499	general	Instrument loop check	Z8	Control Room Complex — sub-location 20	expired	compliance	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 2 permit issuer	WO-706419	\N	f
HW-1500	hot-work	Flame cutting on scaffold tube	Z4	Unit 4 — Sulphur Recovery — sub-location 16	expired	health	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 2 permit issuer	WO-717703	\N	f
HW-1501	hot-work	Grinding on heat exchanger shell	Z10	Administration Block — sub-location 18	expired	safety	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 1 permit issuer	WO-731583	\N	f
WH-1502	work-at-height	Work at height — cable tray installation	Z5	Unit 5 — Utilities — sub-location 12	expired	equipment	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Site HSE officer	WO-785292	\N	f
HW-1503	hot-work	Grinding on heat exchanger shell	Z9	Maintenance Workshop — sub-location 12	expired	safety	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-774070	\N	f
CS-1504	confined-space	Confined-space entry — sump cleaning	Z1	Unit 1 — Crude Distillation — sub-location 10	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 4 permit issuer	WO-739986	\N	f
GP-1505	general	Piping insulation removal	Z3	Unit 3 — Coker — sub-location 12	expired	health	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 2 permit issuer	WO-756943	\N	f
HW-1506	hot-work	Welding on structural steel	Z10	Administration Block — sub-location 5	expired	health	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Site HSE officer	WO-712980	\N	f
GP-1507	general	Filter change-out	Z7	Unit 7 — Tankage South — sub-location 11	expired	equipment	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 4 permit issuer	WO-768838	\N	f
WH-1508	work-at-height	Work at height — cable tray installation	Z8	Control Room Complex — sub-location 18	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 3 permit issuer	WO-792630	\N	f
WH-1509	work-at-height	Work at height — scaffold erection	Z7	Unit 7 — Tankage South — sub-location 5	expired	compliance	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-739145	\N	f
CS-1510	confined-space	Confined-space entry — vessel inspection	Z10	Administration Block — sub-location 4	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 4 permit issuer	WO-794855	\N	f
WH-1511	work-at-height	Work at height — column platform repair	Z5	Unit 5 — Utilities — sub-location 6	expired	health	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 1 permit issuer	WO-757083	\N	f
WH-1512	work-at-height	Work at height — scaffold erection	Z5	Unit 5 — Utilities — sub-location 1	expired	safety	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Site HSE officer	WO-705684	\N	f
GP-1513	general	General maintenance on pump	Z5	Unit 5 — Utilities — sub-location 15	expired	equipment	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 4 permit issuer	WO-767575	\N	f
GP-1514	general	Electrical isolation work	Z5	Unit 5 — Utilities — sub-location 18	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Operations superintendent	WO-717233	\N	f
GP-1515	general	Filter change-out	Z1	Unit 1 — Crude Distillation — sub-location 11	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Operations superintendent	WO-769724	\N	f
CS-1516	confined-space	Confined-space entry — drum cleaning	Z2	Unit 2 — Hydrocracker — sub-location 18	expired	safety	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Operations superintendent	WO-712612	\N	f
CS-1517	confined-space	Confined-space entry — tank inspection	Z8	Control Room Complex — sub-location 1	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-701893	\N	f
WH-1518	work-at-height	Work at height — column platform repair	Z1	Unit 1 — Crude Distillation — sub-location 8	expired	safety	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 2 permit issuer	WO-716651	\N	f
CS-1519	confined-space	Confined-space entry — sump cleaning	Z2	Unit 2 — Hydrocracker — sub-location 6	expired	compliance	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-790692	\N	f
GP-1520	general	General maintenance on pump	Z2	Unit 2 — Hydrocracker — sub-location 16	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Operations superintendent	WO-791907	\N	f
CS-1521	confined-space	Confined-space entry — sump cleaning	Z6	Unit 6 — Tankage North — sub-location 1	expired	compliance	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Unit 2 permit issuer	WO-764004	\N	f
CS-1522	confined-space	Confined-space entry — tank inspection	Z1	Unit 1 — Crude Distillation — sub-location 9	expired	compliance	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Operations superintendent	WO-724592	\N	f
WH-1523	work-at-height	Work at height — flare stack inspection	Z5	Unit 5 — Utilities — sub-location 14	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 2 permit issuer	WO-788904	\N	f
GP-1524	general	Valve replacement	Z11	Gate House & Security — sub-location 8	expired	safety	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Unit 4 permit issuer	WO-718311	\N	f
CS-1525	confined-space	Confined-space entry — drum cleaning	Z7	Unit 7 — Tankage South — sub-location 8	expired	compliance	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Unit 4 permit issuer	WO-757629	\N	f
HW-1526	hot-work	Hot work on pipe flange	Z7	Unit 7 — Tankage South — sub-location 10	expired	health	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Unit 4 permit issuer	WO-783309	\N	f
WH-1527	work-at-height	Work at height — column platform repair	Z5	Unit 5 — Utilities — sub-location 11	expired	equipment	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Site HSE officer	WO-726276	\N	f
CS-1528	confined-space	Confined-space entry — sump cleaning	Z7	Unit 7 — Tankage South — sub-location 5	expired	compliance	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Unit 4 permit issuer	WO-795742	\N	f
CS-1529	confined-space	Confined-space entry — tank inspection	Z11	Gate House & Security — sub-location 9	expired	equipment	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Site HSE officer	WO-717499	\N	f
HW-1530	hot-work	Grinding on vessel nozzle	Z2	Unit 2 — Hydrocracker — sub-location 12	expired	equipment	2026-08-04 19:00:00-04	2026-08-05 03:00:00-04	Operations superintendent	WO-742972	\N	f
CS-1531	confined-space	Confined-space entry — sump cleaning	Z11	Gate House & Security — sub-location 7	expired	compliance	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Site HSE officer	WO-709755	\N	f
CS-1532	confined-space	Confined-space entry — drum cleaning	Z7	Unit 7 — Tankage South — sub-location 7	expired	equipment	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 2 permit issuer	WO-758264	\N	f
HW-1533	hot-work	Welding on pump skid	Z5	Unit 5 — Utilities — sub-location 18	expired	health	2026-08-04 18:00:00-04	2026-08-05 02:00:00-04	Operations superintendent	WO-720236	\N	f
HW-1534	hot-work	Welding on structural steel	Z6	Unit 6 — Tankage North — sub-location 4	expired	health	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Site HSE officer	WO-705119	\N	f
CS-1535	confined-space	Confined-space entry — sump cleaning	Z10	Administration Block — sub-location 2	expired	compliance	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Unit 3 permit issuer	WO-777027	\N	f
CS-1536	confined-space	Confined-space entry — drum cleaning	Z8	Control Room Complex — sub-location 16	expired	equipment	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Unit 2 permit issuer	WO-792410	\N	f
HW-1537	hot-work	Grinding on heat exchanger shell	Z6	Unit 6 — Tankage North — sub-location 15	expired	equipment	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Operations superintendent	WO-718931	\N	f
CS-1538	confined-space	Confined-space entry — tank inspection	Z3	Unit 3 — Coker — sub-location 6	expired	compliance	2026-08-04 20:00:00-04	2026-08-05 04:00:00-04	Operations superintendent	WO-747758	\N	f
CS-1539	confined-space	Confined-space entry — sump cleaning	Z5	Unit 5 — Utilities — sub-location 2	expired	health	2026-08-04 21:00:00-04	2026-08-05 05:00:00-04	Site HSE officer	WO-740661	\N	f
HW-1540	hot-work	Welding on structural steel	Z3	Unit 3 — Coker — sub-location 13	expired	health	2026-08-04 22:00:00-04	2026-08-05 06:00:00-04	Operations superintendent	WO-744989	\N	f
CS-1541	confined-space	Confined-space entry — tank inspection	Z5	Unit 5 — Utilities — sub-location 9	expired	health	2026-08-04 23:00:00-04	2026-08-05 07:00:00-04	Operations superintendent	WO-795837	\N	f
HW-1542	hot-work	Cutting on instrument tray	Z4	Unit 4 — Sulphur Recovery — sub-location 17	breached	health	2026-08-05 00:00:00-04	2026-08-05 08:00:00-04	Unit 4 permit issuer	WO-791310	\N	f
GP-1543	general	General maintenance on pump	Z10	Administration Block — sub-location 18	breached	equipment	2026-08-05 00:00:00-04	2026-08-05 08:00:00-04	Operations superintendent	WO-781607	\N	f
GP-1544	general	Piping insulation removal	Z10	Administration Block — sub-location 16	breached	equipment	2026-08-05 00:00:00-04	2026-08-05 08:00:00-04	Unit 4 permit issuer	WO-731677	\N	f
CS-1545	confined-space	Confined-space entry — drum cleaning	Z8	Control Room Complex — sub-location 9	breached	safety	2026-08-05 00:00:00-04	2026-08-05 08:00:00-04	Unit 2 permit issuer	WO-735956	\N	f
HW-1546	hot-work	Cutting on instrument tray	Z11	Gate House & Security — sub-location 13	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-706058	\N	f
HW-1547	hot-work	Grinding on vessel nozzle	Z3	Unit 3 — Coker — sub-location 4	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-776389	\N	f
CS-1548	confined-space	Confined-space entry — drum cleaning	Z10	Administration Block — sub-location 14	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-784380	\N	f
WH-1549	work-at-height	Work at height — column platform repair	Z11	Gate House & Security — sub-location 3	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 3 permit issuer	WO-789239	\N	f
CS-1550	confined-space	Confined-space entry — vessel inspection	Z2	Unit 2 — Hydrocracker — sub-location 3	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-721103	\N	f
CS-1551	confined-space	Confined-space entry — vessel inspection	Z10	Administration Block — sub-location 12	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-708540	\N	f
HW-1552	hot-work	Cutting on instrument tray	Z8	Control Room Complex — sub-location 8	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-768309	\N	f
CS-1553	confined-space	Confined-space entry — sump cleaning	Z3	Unit 3 — Coker — sub-location 8	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-741693	\N	f
CS-1554	confined-space	Confined-space entry — sump cleaning	Z6	Unit 6 — Tankage North — sub-location 3	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-733204	\N	f
CS-1555	confined-space	Confined-space entry — vessel inspection	Z4	Unit 4 — Sulphur Recovery — sub-location 14	pending_verification	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-701844	\N	f
GP-1556	general	Piping insulation removal	Z7	Unit 7 — Tankage South — sub-location 20	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-768366	\N	f
GP-1557	general	Instrument loop check	Z8	Control Room Complex — sub-location 11	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-707245	\N	f
GP-1558	general	Piping insulation removal	Z6	Unit 6 — Tankage North — sub-location 17	pending_verification	safety	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 4 permit issuer	WO-749320	\N	f
CS-1559	confined-space	Confined-space entry — sump cleaning	Z6	Unit 6 — Tankage North — sub-location 17	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-799033	\N	f
WH-1560	work-at-height	Work at height — cable tray installation	Z11	Gate House & Security — sub-location 6	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-760762	\N	f
HW-1561	hot-work	Hot work on pipe flange	Z5	Unit 5 — Utilities — sub-location 20	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-766125	\N	f
CS-1562	confined-space	Confined-space entry — drum cleaning	Z9	Maintenance Workshop — sub-location 17	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 2 permit issuer	WO-769349	\N	f
CS-1563	confined-space	Confined-space entry — vessel inspection	Z5	Unit 5 — Utilities — sub-location 10	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-726938	\N	f
HW-1564	hot-work	Grinding on vessel nozzle	Z8	Control Room Complex — sub-location 16	pending_verification	equipment	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-717377	\N	f
GP-1565	general	Filter change-out	Z5	Unit 5 — Utilities — sub-location 19	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-760895	\N	f
WH-1566	work-at-height	Work at height — column platform repair	Z6	Unit 6 — Tankage North — sub-location 1	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-700718	\N	f
WH-1567	work-at-height	Work at height — flare stack inspection	Z5	Unit 5 — Utilities — sub-location 8	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Site HSE officer	WO-779423	\N	f
HW-1568	hot-work	Grinding on heat exchanger shell	Z3	Unit 3 — Coker — sub-location 18	pending_verification	compliance	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Unit 1 permit issuer	WO-740296	\N	f
WH-1569	work-at-height	Work at height — column platform repair	Z3	Unit 3 — Coker — sub-location 6	pending_verification	health	2026-08-05 03:00:00-04	2026-08-05 11:00:00-04	Operations superintendent	WO-748895	\N	f
\.

COPY public.permit_condition (id, permit_id, label, state, detail, sources) FROM stdin;
cond-gas	CS-1182	Continuous gas monitoring	attention	Last gas test within limits, taken 14 minutes ago. Next test due in about 1 minute.	["Gas detection system", "Permit-to-Work System (electronic)"]
cond-standby	CS-1182	Standby attendant present	compliant	Standby attendant confirmed at north manway entrance.	["Location tracking system"]
cond-rescue	CS-1182	Rescue equipment in place	compliant	Rescue harness and tripod confirmed at entry point.	["Permit-to-Work System (electronic)"]
cond-ext-1	HW-4471	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-2	HW-4471	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-3	HW-4468	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-4	HW-4468	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-5	HW-4468	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ext-6	HW-4468	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-7	GP-9033	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-8	GP-9033	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-fire-9	HW-1000	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-gas-10	HW-1000	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Process historian"]
cond-ext-11	HW-1000	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-12	GP-1001	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-13	GP-1001	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-14	CS-1002	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ventil-15	CS-1002	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-16	WH-1003	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-17	WH-1003	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-18	GP-1004	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-19	GP-1004	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-20	GP-1004	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-21	GP-1005	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-22	GP-1005	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-harness-23	WH-1006	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-anchor-24	WH-1006	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-25	HW-1007	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-fire-26	HW-1007	Fire watch in place	compliant	All requirements met and verified.	["Process historian"]
cond-iso-27	GP-1008	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-28	GP-1008	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-29	GP-1009	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-30	GP-1009	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-31	GP-1010	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-32	GP-1010	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-33	GP-1010	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-harness-34	WH-1011	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-35	WH-1011	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-36	WH-1011	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-37	CS-1012	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-gas-38	CS-1012	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ventil-39	CS-1012	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-40	GP-1013	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-41	GP-1013	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-42	GP-1013	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-43	GP-1014	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-44	GP-1014	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-45	GP-1014	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-46	GP-1015	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-47	GP-1015	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-48	GP-1015	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-49	WH-1016	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-50	WH-1016	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-51	GP-1017	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-52	GP-1017	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-53	GP-1018	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-54	GP-1018	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-55	HW-1019	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ext-56	HW-1019	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-57	HW-1019	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-58	HW-1020	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-fire-59	HW-1020	Fire watch in place	compliant	All requirements met and verified.	["Process historian"]
cond-iso-60	HW-1020	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-ext-61	HW-1020	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-62	GP-1021	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-63	GP-1021	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-64	GP-1021	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-65	GP-1022	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-66	GP-1022	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-67	GP-1022	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-68	WH-1023	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-69	WH-1023	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-70	WH-1023	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-71	GP-1024	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-72	GP-1024	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-73	GP-1024	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ext-74	HW-1025	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-75	HW-1025	Fire watch in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-76	GP-1026	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-77	GP-1026	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-78	GP-1026	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-79	GP-1027	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-80	GP-1027	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-81	GP-1027	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-82	WH-1028	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-83	WH-1028	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-ventil-84	CS-1029	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-85	CS-1029	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-86	CS-1029	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-rescue-87	CS-1029	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-88	GP-1030	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-89	GP-1030	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-90	GP-1030	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-harness-91	WH-1031	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-barrier-92	WH-1031	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-93	HW-1032	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-94	HW-1032	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-95	HW-1032	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-clear-96	GP-1033	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-97	GP-1033	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-98	GP-1034	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-99	GP-1034	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-555	GP-1207	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-clear-100	GP-1034	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-101	GP-1035	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-102	GP-1035	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-103	GP-1035	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-104	GP-1036	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-105	GP-1036	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-106	GP-1037	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-107	GP-1037	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-108	GP-1037	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-109	GP-1038	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-110	GP-1038	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-111	GP-1038	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-112	GP-1039	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-113	GP-1039	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-114	GP-1039	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-115	WH-1040	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-116	WH-1040	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-117	WH-1040	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-118	GP-1041	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-119	GP-1041	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-120	GP-1041	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-121	WH-1042	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-122	WH-1042	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-123	WH-1042	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-124	GP-1043	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-125	GP-1043	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-126	GP-1043	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-127	GP-1044	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-128	GP-1044	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-129	GP-1045	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-130	GP-1045	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-131	GP-1046	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-132	GP-1046	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-133	GP-1046	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-134	CS-1047	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-rescue-135	CS-1047	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-barrier-136	WH-1048	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-137	WH-1048	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-138	GP-1049	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-139	GP-1049	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-140	GP-1050	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-141	GP-1050	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-142	CS-1051	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ventil-143	CS-1051	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-144	CS-1051	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-standby-145	CS-1051	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-146	GP-1052	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-147	GP-1052	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-148	GP-1052	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-149	WH-1053	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-150	WH-1053	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-151	GP-1054	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-152	GP-1054	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-153	GP-1054	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-154	WH-1055	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-barrier-155	WH-1055	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-156	GP-1056	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-157	GP-1056	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-158	WH-1057	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-harness-159	WH-1057	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-barrier-160	WH-1057	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-161	GP-1058	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-162	GP-1058	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-163	GP-1058	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-164	GP-1059	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-165	GP-1059	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-166	GP-1059	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-167	GP-1060	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-168	GP-1060	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-169	GP-1061	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-170	GP-1061	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-171	GP-1062	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-172	GP-1062	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-clear-173	GP-1063	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-174	GP-1063	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-175	WH-1064	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-176	WH-1064	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-177	WH-1065	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-178	WH-1065	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-179	WH-1066	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-180	WH-1066	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-iso-181	HW-1067	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-ext-182	HW-1067	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-183	HW-1067	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-fire-184	HW-1067	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-185	HW-1068	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-186	HW-1068	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ext-187	HW-1068	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-fire-188	HW-1068	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-189	GP-1069	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-190	GP-1069	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-191	GP-1069	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-192	GP-1070	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-193	GP-1070	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-194	GP-1071	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-195	GP-1071	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-196	GP-1071	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-197	GP-1072	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-198	GP-1072	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-199	GP-1072	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-200	HW-1073	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-201	HW-1073	Fire watch in place	compliant	All requirements met and verified.	["Process historian"]
cond-gas-202	HW-1073	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Gas detection system"]
cond-clear-203	GP-1074	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-204	GP-1074	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-205	GP-1074	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-206	GP-1075	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-207	GP-1075	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-208	GP-1076	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-209	GP-1076	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-210	GP-1076	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-211	GP-1077	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-212	GP-1077	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-213	GP-1077	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-214	WH-1078	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-215	WH-1078	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-216	WH-1078	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-barrier-217	WH-1079	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-218	WH-1079	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-219	GP-1080	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-220	GP-1080	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-221	GP-1081	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-222	GP-1081	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-223	HW-1082	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-224	HW-1082	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-225	GP-1083	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-226	GP-1083	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-227	GP-1084	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-228	GP-1084	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-229	GP-1085	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-230	GP-1085	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-231	GP-1085	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-232	GP-1086	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-233	GP-1086	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-234	GP-1087	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-235	GP-1087	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-236	GP-1087	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-237	HW-1088	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-238	HW-1088	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-239	HW-1088	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-240	GP-1089	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-241	GP-1089	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-242	GP-1089	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-243	GP-1090	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-244	GP-1090	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-245	GP-1091	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-246	GP-1091	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-247	GP-1091	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-248	GP-1092	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-249	GP-1092	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-250	GP-1093	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-251	GP-1093	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-252	GP-1093	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-253	GP-1094	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-254	GP-1094	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-255	GP-1095	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-256	GP-1095	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-standby-257	CS-1096	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-258	CS-1096	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-gas-259	CS-1096	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-260	CS-1096	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ext-261	HW-1097	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-262	HW-1097	Fire watch in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-263	WH-1098	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-264	WH-1098	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-265	GP-1099	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-266	GP-1099	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-267	GP-1099	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-268	GP-1100	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-269	GP-1100	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-270	GP-1101	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-271	GP-1101	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-272	GP-1102	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-273	GP-1102	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-274	GP-1102	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-275	GP-1103	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-276	GP-1103	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-277	GP-1103	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ext-278	HW-1104	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-279	HW-1104	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-barrier-280	WH-1105	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-281	WH-1105	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-iso-282	GP-1106	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-283	GP-1106	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-284	CS-1107	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-rescue-285	CS-1107	Rescue equipment in place	compliant	All requirements met and verified.	["Process historian"]
cond-standby-286	CS-1107	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-clear-287	GP-1108	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-288	GP-1108	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-289	WH-1109	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-290	WH-1109	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-291	WH-1109	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-292	GP-1110	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-293	GP-1110	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-294	GP-1110	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-295	GP-1111	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-296	GP-1111	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-297	HW-1112	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-298	HW-1112	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-gas-299	HW-1113	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-300	HW-1113	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-301	GP-1114	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-302	GP-1114	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-303	GP-1114	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-304	GP-1115	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-305	GP-1115	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-306	GP-1115	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-307	GP-1116	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-308	GP-1116	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-309	GP-1117	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-310	GP-1117	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-311	GP-1118	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-312	GP-1118	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-313	GP-1118	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-314	WH-1119	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-315	WH-1119	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-316	WH-1119	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-317	WH-1120	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-318	WH-1120	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-319	WH-1120	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-320	WH-1121	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-321	WH-1121	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-322	WH-1121	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-323	WH-1122	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-324	WH-1122	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-325	WH-1122	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-326	WH-1123	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-327	WH-1123	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-328	WH-1123	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-329	WH-1124	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-330	WH-1124	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-331	HW-1125	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-332	HW-1125	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-333	GP-1126	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-334	GP-1126	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-335	GP-1126	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-336	GP-1127	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-337	GP-1127	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-338	GP-1128	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-339	GP-1128	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-340	GP-1128	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-341	WH-1129	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-342	WH-1129	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-harness-343	WH-1130	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-anchor-344	WH-1130	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-345	WH-1130	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-346	GP-1131	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-347	GP-1131	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-348	GP-1132	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-349	GP-1132	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-350	GP-1132	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-351	GP-1133	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-352	GP-1133	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-353	WH-1134	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-354	WH-1134	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-harness-355	WH-1134	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-356	GP-1135	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-357	GP-1135	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-358	GP-1136	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-359	GP-1136	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ventil-360	CS-1137	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-361	CS-1137	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-362	CS-1137	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-363	CS-1137	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-364	GP-1138	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-365	GP-1138	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-366	GP-1139	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-367	GP-1139	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-368	GP-1139	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-369	GP-1140	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-370	GP-1140	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-371	GP-1140	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-372	CS-1141	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-373	CS-1141	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-gas-374	CS-1141	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-standby-375	CS-1141	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-376	WH-1142	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-377	WH-1142	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-378	CS-1143	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-standby-379	CS-1143	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-380	CS-1143	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ventil-381	CS-1143	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-382	GP-1144	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-383	GP-1144	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-384	GP-1145	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-385	GP-1145	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-386	GP-1146	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-387	GP-1146	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-388	GP-1146	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-389	GP-1147	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-390	GP-1147	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-391	WH-1148	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-392	WH-1148	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-393	WH-1148	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-standby-394	CS-1149	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-395	CS-1149	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-396	CS-1149	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ventil-397	CS-1149	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-398	GP-1150	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-399	GP-1150	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-400	GP-1150	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-401	GP-1151	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-402	GP-1151	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-403	HW-1152	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-fire-404	HW-1152	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-405	WH-1153	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-406	WH-1153	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-407	WH-1153	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-408	GP-1154	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-409	GP-1154	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-410	GP-1154	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-411	GP-1155	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-412	GP-1155	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-413	GP-1155	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-414	WH-1156	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-415	WH-1156	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ventil-416	CS-1157	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-417	CS-1157	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-418	CS-1157	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-standby-419	CS-1157	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-420	WH-1158	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-421	WH-1158	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-422	GP-1159	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-423	GP-1159	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-424	GP-1160	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-425	GP-1160	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-426	GP-1160	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-427	GP-1161	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-428	GP-1161	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-429	GP-1161	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-430	WH-1162	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-431	WH-1162	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-432	HW-1163	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ext-433	HW-1163	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-434	GP-1164	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-435	GP-1164	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-anchor-436	WH-1165	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-437	WH-1165	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-438	WH-1165	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-439	GP-1166	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-440	GP-1166	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-441	GP-1166	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-442	GP-1167	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-443	GP-1167	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-444	GP-1167	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-445	HW-1168	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Location tracking system"]
cond-iso-446	HW-1168	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-447	GP-1169	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-448	GP-1169	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-449	GP-1169	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-450	GP-1170	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-451	GP-1170	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-452	GP-1171	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-453	GP-1171	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-454	GP-1171	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-455	WH-1172	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-456	WH-1172	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-457	WH-1172	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-458	CS-1173	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-gas-459	CS-1173	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-460	CS-1173	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ventil-461	CS-1173	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-462	WH-1174	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-463	WH-1174	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-464	WH-1174	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-465	GP-1175	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-466	GP-1175	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-467	GP-1176	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-468	GP-1176	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-469	GP-1177	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-470	GP-1177	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-471	GP-1177	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-iso-472	GP-1178	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-473	GP-1178	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-474	GP-1179	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-475	GP-1179	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-476	HW-1180	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-477	HW-1180	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-478	HW-1180	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-ext-479	HW-1180	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-480	GP-1181	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-481	GP-1181	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-482	GP-1181	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-clear-483	GP-1182	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-484	GP-1182	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-harness-485	WH-1183	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-486	WH-1183	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-487	WH-1183	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-488	GP-1184	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-489	GP-1184	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-490	GP-1184	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-gas-491	CS-1185	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-rescue-492	CS-1185	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-493	GP-1186	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-494	GP-1186	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-495	GP-1186	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-496	CS-1187	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-497	CS-1187	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-498	GP-1188	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-499	GP-1188	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-500	GP-1188	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-501	GP-1189	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-502	GP-1189	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-503	GP-1189	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-504	GP-1190	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-505	GP-1190	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-506	GP-1190	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-507	GP-1191	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-508	GP-1191	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-509	GP-1191	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-510	GP-1192	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-511	GP-1192	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-512	GP-1192	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-513	CS-1193	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-514	CS-1193	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-standby-515	CS-1193	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-516	CS-1193	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-517	GP-1194	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-518	GP-1194	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-519	GP-1194	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-520	CS-1195	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-521	CS-1195	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-522	CS-1195	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-standby-523	CS-1195	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-524	GP-1196	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-525	GP-1196	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-526	WH-1197	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-527	WH-1197	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-528	GP-1198	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-529	GP-1198	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-530	GP-1198	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-531	GP-1199	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-532	GP-1199	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-533	GP-1200	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-534	GP-1200	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-535	GP-1200	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-536	GP-1201	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-537	GP-1201	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-538	GP-1201	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-539	GP-1202	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-540	GP-1202	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-541	GP-1202	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-542	GP-1203	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-543	GP-1203	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-544	GP-1203	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-545	HW-1204	Fire watch in place	compliant	All requirements met and verified.	["Process historian"]
cond-gas-546	HW-1204	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-547	GP-1205	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-548	GP-1205	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-549	GP-1205	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-550	GP-1206	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-551	GP-1206	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-552	GP-1206	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-553	GP-1207	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-554	GP-1207	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ext-556	HW-1208	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-iso-557	HW-1208	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-558	GP-1209	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-559	GP-1209	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-560	GP-1209	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-561	GP-1210	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-562	GP-1210	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-563	GP-1211	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-564	GP-1211	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-565	GP-1211	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-566	WH-1212	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-567	WH-1212	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-568	WH-1212	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-iso-569	GP-1213	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-570	GP-1213	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-571	GP-1213	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-572	GP-1214	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-573	GP-1214	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-iso-574	GP-1215	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-575	GP-1215	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-576	GP-1216	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-577	GP-1216	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-578	GP-1217	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-579	GP-1217	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-580	GP-1217	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-581	GP-1218	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-582	GP-1218	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-583	GP-1218	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-584	GP-1219	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-585	GP-1219	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-586	GP-1219	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-587	HW-1220	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-588	HW-1220	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-589	GP-1221	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-590	GP-1221	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-591	WH-1222	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-592	WH-1222	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-593	WH-1223	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-594	WH-1223	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-595	WH-1223	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-596	WH-1224	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-597	WH-1224	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-598	WH-1225	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-599	WH-1225	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-600	WH-1225	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-iso-601	GP-1226	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-602	GP-1226	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-603	GP-1226	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-604	GP-1227	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-605	GP-1227	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-606	WH-1228	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-607	WH-1228	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-608	GP-1229	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-609	GP-1229	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-610	GP-1229	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-611	GP-1230	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-612	GP-1230	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-613	GP-1230	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-614	WH-1231	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-harness-615	WH-1231	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-barrier-616	WH-1231	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-617	GP-1232	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-618	GP-1232	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-619	GP-1232	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-620	GP-1233	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-621	GP-1233	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-622	GP-1233	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-623	CS-1234	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-624	CS-1234	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-625	CS-1234	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-626	WH-1235	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-627	WH-1235	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-anchor-628	WH-1235	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-629	GP-1236	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-630	GP-1236	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-631	GP-1236	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-632	GP-1237	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-633	GP-1237	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-634	GP-1238	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-635	GP-1238	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-636	GP-1238	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-637	GP-1239	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-638	GP-1239	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-639	GP-1239	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-640	HW-1240	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-641	HW-1240	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ext-642	HW-1240	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-643	GP-1241	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-644	GP-1241	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-645	GP-1242	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-646	GP-1242	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-647	GP-1242	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-648	GP-1243	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-649	GP-1243	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-650	GP-1243	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-651	GP-1244	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-652	GP-1244	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-clear-653	GP-1245	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-654	GP-1245	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-655	GP-1246	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-656	GP-1246	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-657	GP-1247	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-658	GP-1247	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-659	GP-1247	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-660	HW-1248	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-661	HW-1248	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Gas detection system"]
cond-ext-662	HW-1248	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-fire-663	HW-1248	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-664	GP-1249	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-665	GP-1249	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-666	GP-1250	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-667	GP-1250	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-standby-668	CS-1251	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-669	CS-1251	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-gas-670	CS-1251	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-671	GP-1252	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-672	GP-1252	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-harness-673	WH-1253	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-674	WH-1253	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-675	GP-1254	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-676	GP-1254	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-677	GP-1254	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-678	GP-1255	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-679	GP-1255	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-harness-680	WH-1256	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-681	WH-1256	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-682	GP-1257	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-683	GP-1257	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-684	GP-1257	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-685	GP-1258	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-686	GP-1258	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-687	GP-1258	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-688	GP-1259	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-689	GP-1259	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-iso-690	GP-1260	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-691	GP-1260	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-692	GP-1260	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-693	GP-1261	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-694	GP-1261	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-695	WH-1262	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-696	WH-1262	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-697	GP-1263	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-698	GP-1263	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-699	WH-1264	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-700	WH-1264	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-701	CS-1265	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-rescue-702	CS-1265	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-standby-703	CS-1265	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-704	CS-1265	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-705	WH-1266	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-706	WH-1266	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-707	GP-1267	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-708	GP-1267	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-709	HW-1268	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-710	HW-1268	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-711	HW-1268	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-712	WH-1269	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-713	WH-1269	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-714	WH-1270	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-715	WH-1270	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-716	GP-1271	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-717	GP-1271	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-718	GP-1271	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-719	GP-1272	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-720	GP-1272	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-721	GP-1273	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-722	GP-1273	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-723	GP-1273	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-724	GP-1274	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-725	GP-1274	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-726	GP-1275	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-727	GP-1275	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-728	GP-1276	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-729	GP-1276	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-730	GP-1277	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-731	GP-1277	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-732	GP-1277	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-733	WH-1278	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-barrier-734	WH-1278	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-clear-735	GP-1279	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-736	GP-1279	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-737	HW-1280	Fire watch in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-738	HW-1280	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Process historian"]
cond-iso-739	HW-1280	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-740	HW-1280	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-741	GP-1281	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-742	GP-1281	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-743	HW-1282	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-744	HW-1282	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-745	HW-1282	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-746	CS-1283	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-standby-747	CS-1283	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-748	CS-1283	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-749	GP-1284	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-750	GP-1284	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-751	GP-1284	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-752	HW-1285	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-753	HW-1285	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-754	HW-1285	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-755	GP-1286	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-756	GP-1286	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-757	GP-1287	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-758	GP-1287	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-759	WH-1288	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-760	WH-1288	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-761	CS-1289	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-762	CS-1289	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ventil-763	CS-1289	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-764	CS-1289	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-iso-765	GP-1290	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-766	GP-1290	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-767	GP-1291	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-768	GP-1291	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-769	GP-1291	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-770	GP-1292	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-771	GP-1292	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-772	HW-1293	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ext-773	HW-1293	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-iso-774	HW-1293	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-775	HW-1293	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-776	GP-1294	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-777	GP-1294	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-778	GP-1294	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-779	GP-1295	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-780	GP-1295	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-781	GP-1296	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-782	GP-1296	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-783	GP-1296	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-784	WH-1297	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-785	WH-1297	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-barrier-786	WH-1297	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-787	GP-1298	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-788	GP-1298	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-789	WH-1299	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-790	WH-1299	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-791	GP-1300	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-792	GP-1300	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-793	GP-1300	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-clear-794	GP-1301	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-795	GP-1301	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-796	GP-1302	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-797	GP-1302	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-798	GP-1302	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-standby-799	CS-1303	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-800	CS-1303	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-gas-801	CS-1303	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-802	CS-1303	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-803	GP-1304	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-804	GP-1304	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-805	WH-1305	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-806	WH-1305	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-807	GP-1306	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-808	GP-1306	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-809	WH-1307	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-810	WH-1307	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-harness-811	WH-1307	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-812	GP-1308	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-813	GP-1308	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-814	GP-1309	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-815	GP-1309	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-816	GP-1310	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-817	GP-1310	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-anchor-818	WH-1311	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-819	WH-1311	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-820	GP-1312	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-821	GP-1312	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-822	GP-1312	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-823	GP-1313	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-824	GP-1313	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-harness-825	WH-1314	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-826	WH-1314	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-827	WH-1314	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-828	GP-1315	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-829	GP-1315	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-830	WH-1316	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-barrier-831	WH-1316	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-832	WH-1317	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-833	WH-1317	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-834	GP-1318	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-835	GP-1318	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-836	GP-1318	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-clear-837	GP-1319	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-838	GP-1319	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-839	GP-1319	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-840	GP-1320	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-841	GP-1320	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-842	GP-1321	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-843	GP-1321	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-844	GP-1321	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-845	GP-1322	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-846	GP-1322	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-847	GP-1323	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-848	GP-1323	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-849	GP-1323	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-850	GP-1324	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-851	GP-1324	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-852	GP-1324	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-iso-853	GP-1325	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-854	GP-1325	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-855	WH-1326	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-856	WH-1326	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-857	WH-1327	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-858	WH-1327	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-anchor-859	WH-1327	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-860	CS-1328	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-861	CS-1328	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-862	CS-1328	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-iso-863	GP-1329	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-864	GP-1329	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-865	GP-1330	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-866	GP-1330	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-867	GP-1331	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-868	GP-1331	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-869	WH-1332	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-barrier-870	WH-1332	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-871	WH-1333	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-872	WH-1333	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-anchor-873	WH-1333	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-874	GP-1334	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-875	GP-1334	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-876	GP-1334	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-877	GP-1335	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-878	GP-1335	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-879	GP-1335	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-880	CS-1336	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ventil-881	CS-1336	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-clear-882	GP-1337	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-883	GP-1337	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-884	GP-1338	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-885	GP-1338	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-886	WH-1339	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-887	WH-1339	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-888	WH-1339	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-rescue-889	CS-1340	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ventil-890	CS-1340	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-891	CS-1340	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-892	WH-1341	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-893	WH-1341	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-894	GP-1342	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-895	GP-1342	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-896	GP-1343	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-897	GP-1343	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-898	GP-1344	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-899	GP-1344	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-anchor-900	WH-1345	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-901	WH-1345	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-902	WH-1345	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-903	GP-1346	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-904	GP-1346	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-905	GP-1346	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-906	GP-1347	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-907	GP-1347	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-908	CS-1348	Rescue equipment in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-909	CS-1348	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-910	CS-1348	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-911	CS-1348	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-912	GP-1349	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-913	GP-1349	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-914	GP-1350	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-915	GP-1350	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-916	GP-1351	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-917	GP-1351	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-918	GP-1351	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-gas-919	CS-1352	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-rescue-920	CS-1352	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-921	GP-1353	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-922	GP-1353	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-923	GP-1354	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-924	GP-1354	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-925	GP-1354	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-926	GP-1355	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-927	GP-1355	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-928	GP-1355	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-929	GP-1356	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-930	GP-1356	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-931	GP-1357	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-932	GP-1357	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-933	GP-1358	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-934	GP-1358	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-gas-935	HW-1359	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Process historian"]
cond-iso-936	HW-1359	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-937	HW-1359	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-938	GP-1360	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-939	GP-1360	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-harness-940	WH-1361	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-anchor-941	WH-1361	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-942	WH-1361	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-943	WH-1362	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-944	WH-1362	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-945	WH-1362	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-946	GP-1363	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-947	GP-1363	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-948	GP-1363	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-949	GP-1364	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-950	GP-1364	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-951	GP-1365	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-952	GP-1365	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-953	GP-1366	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-954	GP-1366	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-955	GP-1366	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-956	GP-1367	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-957	GP-1367	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-958	GP-1368	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-959	GP-1368	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-960	HW-1369	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-961	HW-1369	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-962	HW-1369	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-963	GP-1370	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-964	GP-1370	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-965	GP-1370	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-966	GP-1371	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-967	GP-1371	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-968	GP-1371	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-969	GP-1372	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-970	GP-1372	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-971	GP-1372	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-972	GP-1373	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-973	GP-1373	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-974	GP-1373	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-975	GP-1374	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-976	GP-1374	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-anchor-977	WH-1375	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-978	WH-1375	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-979	WH-1375	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-980	WH-1376	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-981	WH-1376	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-982	GP-1377	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-983	GP-1377	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-984	GP-1377	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-985	HW-1378	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-986	HW-1378	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-987	WH-1379	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-988	WH-1379	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-989	WH-1379	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-990	GP-1380	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-991	GP-1380	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-992	GP-1380	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-993	HW-1381	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-fire-994	HW-1381	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-iso-995	GP-1382	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-996	GP-1382	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-clear-997	GP-1383	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-998	GP-1383	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-999	GP-1383	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-1000	GP-1384	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1001	GP-1384	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1002	GP-1385	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1003	GP-1385	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1004	GP-1385	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-1005	HW-1386	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-1006	HW-1386	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-ext-1007	HW-1386	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1008	GP-1387	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1009	GP-1387	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-1010	GP-1387	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1011	WH-1388	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-1012	WH-1388	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1013	WH-1388	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1014	GP-1389	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-1015	GP-1389	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1016	WH-1390	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1017	WH-1390	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1018	GP-1391	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-clear-1019	GP-1391	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1020	GP-1391	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1021	GP-1392	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-1022	GP-1392	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1023	GP-1393	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1024	GP-1393	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1025	GP-1393	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-1026	CS-1394	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-1027	CS-1394	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1028	CS-1394	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-1029	GP-1395	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-1030	GP-1395	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1031	GP-1395	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1032	GP-1396	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1033	GP-1396	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1034	GP-1397	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-1035	GP-1397	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1036	GP-1397	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1037	WH-1398	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-1038	WH-1398	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-1039	WH-1398	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-harness-1040	WH-1399	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-barrier-1041	WH-1399	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1042	WH-1399	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-1043	WH-1400	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-1044	WH-1400	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1045	GP-1401	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-1046	GP-1401	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1047	GP-1401	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1048	WH-1402	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1049	WH-1402	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1050	WH-1403	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-1051	WH-1403	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-1052	WH-1403	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1053	HW-1404	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1054	HW-1404	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-1055	WH-1405	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-1056	WH-1405	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1057	WH-1405	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1058	GP-1406	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1059	GP-1406	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-1060	GP-1406	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1061	GP-1407	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1062	GP-1407	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1063	GP-1408	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-1064	GP-1408	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1065	GP-1408	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1066	WH-1409	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1067	WH-1409	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1068	WH-1409	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1069	GP-1410	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-clear-1070	GP-1410	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1071	GP-1410	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1072	HW-1411	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Process historian"]
cond-ext-1073	HW-1411	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-1074	HW-1411	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-1075	WH-1412	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1076	WH-1412	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1077	GP-1413	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1078	GP-1413	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1079	GP-1413	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-1080	WH-1414	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1081	WH-1414	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1082	GP-1415	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1083	GP-1415	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1084	GP-1415	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1085	GP-1416	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1086	GP-1416	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1087	GP-1416	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1088	GP-1417	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1089	GP-1417	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-harness-1090	WH-1418	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-anchor-1091	WH-1418	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1092	GP-1419	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1093	GP-1419	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1094	GP-1419	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1095	GP-1420	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1096	GP-1420	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1097	GP-1421	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1098	GP-1421	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-1099	GP-1421	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1100	GP-1422	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1101	GP-1422	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1102	GP-1422	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-1103	WH-1423	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-1104	WH-1423	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1105	GP-1424	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1106	GP-1424	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1107	GP-1425	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1108	GP-1425	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1109	GP-1426	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1110	GP-1426	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-1111	WH-1427	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1112	WH-1427	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1113	GP-1428	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1114	GP-1428	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1115	GP-1428	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-1116	WH-1429	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-barrier-1117	WH-1429	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1118	GP-1430	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1119	GP-1430	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1120	GP-1430	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1121	HW-1431	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1122	HW-1431	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-1123	HW-1431	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ext-1124	HW-1431	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1125	GP-1432	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1126	GP-1432	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1127	GP-1432	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-harness-1128	WH-1433	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-barrier-1129	WH-1433	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1130	GP-1434	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1131	GP-1434	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1132	GP-1434	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-anchor-1133	WH-1435	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1134	WH-1435	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1135	HW-1436	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-1136	HW-1436	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ext-1137	HW-1436	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1138	HW-1436	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-1139	WH-1437	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1140	WH-1437	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1141	WH-1437	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1142	GP-1438	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1143	GP-1438	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1144	WH-1439	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-1145	WH-1439	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1146	WH-1439	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-harness-1147	WH-1440	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-barrier-1148	WH-1440	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1149	GP-1441	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1150	GP-1441	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1151	GP-1442	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1152	GP-1442	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-1153	GP-1443	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-1154	GP-1443	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1155	GP-1443	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1156	GP-1444	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1157	GP-1444	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1158	GP-1445	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1159	GP-1445	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1160	GP-1445	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1161	WH-1446	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1162	WH-1446	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-barrier-1163	WH-1446	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1164	GP-1447	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1165	GP-1447	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1166	GP-1447	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-1167	CS-1448	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-1168	CS-1448	Rescue equipment in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1169	CS-1448	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-ventil-1170	CS-1448	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-ventil-1171	CS-1449	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-1172	CS-1449	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1173	CS-1449	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-rescue-1174	CS-1449	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-rescue-1175	CS-1450	Rescue equipment in place	compliant	All requirements met and verified.	["Process historian"]
cond-standby-1176	CS-1450	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ventil-1177	CS-1450	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-harness-1178	WH-1451	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-1179	WH-1451	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ext-1180	HW-1452	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1181	HW-1452	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-fire-1182	HW-1452	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-iso-1183	HW-1452	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-ext-1184	HW-1453	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1185	HW-1453	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Permit-to-Work System (electronic)"]
cond-iso-1186	HW-1453	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-1187	HW-1453	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-1188	GP-1454	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-1189	GP-1454	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1190	GP-1454	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-1191	HW-1455	Fire watch in place	compliant	All requirements met and verified.	["Process historian"]
cond-ext-1192	HW-1455	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1193	HW-1455	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Process historian"]
cond-iso-1194	HW-1455	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1195	HW-1456	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-1196	HW-1456	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1197	HW-1457	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-fire-1198	HW-1457	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-ext-1199	HW-1458	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-1200	HW-1458	Fire watch in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1201	HW-1458	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1202	WH-1459	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1203	WH-1459	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1204	WH-1459	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1205	GP-1460	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1206	GP-1460	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-1207	GP-1460	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1208	CS-1461	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-1209	CS-1461	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1210	CS-1461	Rescue equipment in place	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1211	CS-1461	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1212	HW-1462	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-1213	HW-1462	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-1214	HW-1462	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Process historian"]
cond-iso-1215	HW-1463	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-1216	HW-1463	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ext-1217	HW-1463	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1218	GP-1464	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1219	GP-1464	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1220	GP-1464	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1221	GP-1465	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ppe-1222	GP-1465	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1223	GP-1465	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1224	WH-1466	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1225	WH-1466	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-1226	HW-1467	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ext-1227	HW-1467	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1228	HW-1467	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1229	HW-1467	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1230	CS-1468	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-1231	CS-1468	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1232	CS-1468	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1233	CS-1469	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-ventil-1234	CS-1469	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-1235	CS-1469	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-standby-1236	CS-1469	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-1237	HW-1470	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-gas-1238	HW-1470	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1239	HW-1470	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-ext-1240	HW-1470	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-1241	WH-1471	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-anchor-1242	WH-1471	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1243	HW-1472	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1244	HW-1472	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1245	HW-1472	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-1246	HW-1472	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1247	HW-1473	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-fire-1248	HW-1473	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ext-1249	HW-1473	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1250	HW-1473	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-1251	GP-1474	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1252	GP-1474	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-1253	GP-1474	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1254	GP-1475	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1255	GP-1475	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1256	HW-1476	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-1257	HW-1476	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1258	GP-1477	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1259	GP-1477	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1260	HW-1478	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1261	HW-1478	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1262	HW-1478	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1263	WH-1479	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1264	WH-1479	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-barrier-1265	WH-1479	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1266	GP-1480	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-clear-1267	GP-1480	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1268	GP-1480	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1269	HW-1481	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1270	HW-1481	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1271	HW-1481	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Gas detection system"]
cond-fire-1272	HW-1481	Fire watch in place	compliant	All requirements met and verified.	["Process historian"]
cond-anchor-1273	WH-1482	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1274	WH-1482	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-ventil-1275	CS-1483	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-1276	CS-1483	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-standby-1277	CS-1483	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1278	WH-1484	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1279	WH-1484	Anchor point verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1280	GP-1485	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1281	GP-1485	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1282	CS-1486	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-standby-1283	CS-1486	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1284	CS-1486	Rescue equipment in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1285	HW-1487	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1286	HW-1487	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1287	GP-1488	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1288	GP-1488	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1289	GP-1488	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1290	GP-1489	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1291	GP-1489	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1292	GP-1489	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-1293	CS-1490	Rescue equipment in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-1294	CS-1490	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-1295	WH-1491	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-barrier-1296	WH-1491	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1297	WH-1491	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1298	GP-1492	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-1299	GP-1492	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1300	GP-1492	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1301	GP-1493	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1302	GP-1493	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1303	GP-1493	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-1304	GP-1494	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1305	GP-1494	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1306	GP-1494	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1307	CS-1495	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-rescue-1308	CS-1495	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-standby-1309	CS-1495	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ventil-1310	CS-1495	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1311	CS-1496	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-standby-1312	CS-1496	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-1313	HW-1497	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-1314	HW-1497	Fire watch in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1315	HW-1497	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1316	HW-1497	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-1317	CS-1498	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-standby-1318	CS-1498	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1319	CS-1498	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1320	GP-1499	Isolation confirmed	compliant	All requirements met and verified.	["Process historian"]
cond-clear-1321	GP-1499	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1322	GP-1499	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1323	HW-1500	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-fire-1324	HW-1500	Fire watch in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1325	HW-1501	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-fire-1326	HW-1501	Fire watch in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1327	HW-1501	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1328	HW-1501	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1329	WH-1502	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1330	WH-1502	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-fire-1331	HW-1503	Fire watch in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ext-1332	HW-1503	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1333	HW-1503	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Process historian"]
cond-gas-1334	CS-1504	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1335	CS-1504	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1336	GP-1505	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1337	GP-1505	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1338	GP-1505	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-fire-1339	HW-1506	Fire watch in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1340	HW-1506	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1341	HW-1506	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1342	HW-1506	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1343	GP-1507	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-1344	GP-1507	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1345	WH-1508	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1346	WH-1508	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-barrier-1347	WH-1508	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-barrier-1348	WH-1509	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-anchor-1349	WH-1509	Anchor point verified	compliant	All requirements met and verified.	["Process historian"]
cond-harness-1350	WH-1509	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ventil-1351	CS-1510	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-1352	CS-1510	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-barrier-1353	WH-1511	Exclusion zone barriered	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1354	WH-1511	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1355	WH-1511	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1356	WH-1512	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-harness-1357	WH-1512	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ppe-1358	GP-1513	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1359	GP-1513	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1360	GP-1513	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1361	GP-1514	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1362	GP-1514	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-1363	GP-1514	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Gas detection system"]
cond-clear-1364	GP-1515	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1365	GP-1515	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-1366	GP-1515	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-1367	CS-1516	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-gas-1368	CS-1516	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-standby-1369	CS-1516	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1370	CS-1516	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-1371	CS-1517	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-1372	CS-1517	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-1373	CS-1517	Rescue equipment in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1374	CS-1517	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-barrier-1375	WH-1518	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-harness-1376	WH-1518	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ventil-1377	CS-1519	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-standby-1378	CS-1519	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1379	CS-1519	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-rescue-1380	CS-1519	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ppe-1381	GP-1520	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1382	GP-1520	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1383	GP-1520	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1384	CS-1521	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1385	CS-1521	Rescue equipment in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-1386	CS-1522	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-1387	CS-1522	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-1388	CS-1522	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ventil-1389	CS-1522	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1390	WH-1523	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-harness-1391	WH-1523	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ppe-1392	GP-1524	PPE requirements met	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1393	GP-1524	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1394	GP-1524	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-standby-1395	CS-1525	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ventil-1396	CS-1525	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1397	CS-1525	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-gas-1398	CS-1525	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ext-1399	HW-1526	Fire extinguisher on standby	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1400	HW-1526	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-1401	WH-1527	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-anchor-1402	WH-1527	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1403	CS-1528	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ventil-1404	CS-1528	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1405	CS-1528	Rescue equipment in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-1406	CS-1528	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1407	CS-1529	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1408	CS-1529	Rescue equipment in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-fire-1409	HW-1530	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-iso-1410	HW-1530	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1411	HW-1530	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1412	HW-1530	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-ventil-1413	CS-1531	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1414	CS-1531	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-rescue-1415	CS-1531	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-standby-1416	CS-1531	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-1417	CS-1532	Rescue equipment in place	compliant	All requirements met and verified.	["Location tracking system"]
cond-standby-1418	CS-1532	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1419	HW-1533	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-1420	HW-1533	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-iso-1421	HW-1533	Isolation verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1422	HW-1534	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1423	HW-1534	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Location tracking system"]
cond-gas-1424	CS-1535	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-standby-1425	CS-1535	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1426	CS-1536	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1427	CS-1536	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-1428	CS-1536	Rescue equipment in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1429	HW-1537	Isolation verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1430	HW-1537	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1431	HW-1537	Fire extinguisher on standby	compliant	All requirements met and verified.	["Process historian"]
cond-standby-1432	CS-1538	Standby attendant present	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ventil-1433	CS-1538	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1434	CS-1538	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-1435	CS-1538	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-gas-1436	CS-1539	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ventil-1437	CS-1539	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-fire-1438	HW-1540	Fire watch in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1439	HW-1540	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1440	HW-1540	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-standby-1441	CS-1541	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-1442	CS-1541	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-gas-1443	CS-1541	Continuous gas monitoring	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1444	CS-1541	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-fire-1445	HW-1542	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-gas-1446	HW-1542	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1447	HW-1542	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1448	GP-1543	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1449	GP-1543	PPE requirements met	compliant	All requirements met and verified.	["Process historian"]
cond-ppe-1450	GP-1544	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1451	GP-1544	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1452	GP-1544	Isolation confirmed	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-1453	CS-1545	Rescue equipment in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-1454	CS-1545	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-ventil-1455	CS-1545	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-ext-1456	HW-1546	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1457	HW-1546	Continuous gas monitoring	breach	Condition breached — immediate action required.	["Permit-to-Work System (electronic)"]
cond-fire-1458	HW-1547	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-gas-1459	HW-1547	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ext-1460	HW-1547	Fire extinguisher on standby	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-1461	CS-1548	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-ventil-1462	CS-1548	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-gas-1463	CS-1548	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-harness-1464	WH-1549	Harness and fall arrest fitted	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-barrier-1465	WH-1549	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
cond-anchor-1466	WH-1549	Anchor point verified	compliant	All requirements met and verified.	["Gas detection system"]
cond-standby-1467	CS-1550	Standby attendant present	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1468	CS-1550	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-ventil-1469	CS-1550	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-standby-1470	CS-1551	Standby attendant present	compliant	All requirements met and verified.	["Location tracking system"]
cond-rescue-1471	CS-1551	Rescue equipment in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1472	CS-1551	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-ext-1473	HW-1552	Fire extinguisher on standby	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1474	HW-1552	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-gas-1475	CS-1553	Continuous gas monitoring	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-ventil-1476	CS-1553	Forced ventilation running	compliant	All requirements met and verified.	["Gas detection system"]
cond-ventil-1477	CS-1554	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-standby-1478	CS-1554	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-standby-1479	CS-1555	Standby attendant present	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-1480	CS-1555	Rescue equipment in place	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ventil-1481	CS-1555	Forced ventilation running	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1482	GP-1556	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-iso-1483	GP-1556	Isolation confirmed	compliant	All requirements met and verified.	["Gas detection system"]
cond-ppe-1484	GP-1557	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-clear-1485	GP-1557	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-iso-1486	GP-1558	Isolation confirmed	compliant	All requirements met and verified.	["Location tracking system"]
cond-clear-1487	GP-1558	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ppe-1488	GP-1558	PPE requirements met	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1489	CS-1559	Continuous gas monitoring	compliant	All requirements met and verified.	["Gas detection system"]
cond-rescue-1490	CS-1559	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Process historian"]
cond-anchor-1491	WH-1560	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1492	WH-1560	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-gas-1493	HW-1561	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1494	HW-1561	Isolation verified	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-ventil-1495	CS-1562	Forced ventilation running	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-rescue-1496	CS-1562	Rescue equipment in place	compliant	All requirements met and verified.	["Process historian"]
cond-gas-1497	CS-1562	Continuous gas monitoring	compliant	All requirements met and verified.	["Process historian"]
cond-rescue-1498	CS-1563	Rescue equipment in place	attention	Minor deviation noted; monitor closely.	["Gas detection system"]
cond-ventil-1499	CS-1563	Forced ventilation running	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1500	HW-1564	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-fire-1501	HW-1564	Fire watch in place	attention	Minor deviation noted; monitor closely.	["Permit-to-Work System (electronic)"]
cond-clear-1502	GP-1565	Area cleared of non-essential personnel	compliant	All requirements met and verified.	["Location tracking system"]
cond-ppe-1503	GP-1565	PPE requirements met	compliant	All requirements met and verified.	["Gas detection system"]
cond-iso-1504	GP-1565	Isolation confirmed	attention	Minor deviation noted; monitor closely.	["Location tracking system"]
cond-harness-1505	WH-1566	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1506	WH-1566	Exclusion zone barriered	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-anchor-1507	WH-1567	Anchor point verified	compliant	All requirements met and verified.	["Location tracking system"]
cond-barrier-1508	WH-1567	Exclusion zone barriered	compliant	All requirements met and verified.	["Process historian"]
cond-iso-1509	HW-1568	Isolation verified	compliant	All requirements met and verified.	["Process historian"]
cond-fire-1510	HW-1568	Fire watch in place	compliant	All requirements met and verified.	["Gas detection system"]
cond-gas-1511	HW-1568	Continuous gas monitoring	compliant	All requirements met and verified.	["Permit-to-Work System (electronic)"]
cond-harness-1512	WH-1569	Harness and fall arrest fitted	compliant	All requirements met and verified.	["Gas detection system"]
cond-barrier-1513	WH-1569	Exclusion zone barriered	compliant	All requirements met and verified.	["Location tracking system"]
\.

COPY public.permit_entrant (id, permit_id, label, company, entered_at, is_inside) FROM stdin;
E-1	CS-1182	Entrant 1	Contractor company A	2026-08-05 02:06:00-04	t
E-2	CS-1182	Entrant 2	Contractor company A	2026-08-05 02:08:00-04	t
E-100	CS-1002	Entrant 1	Contractor company C	2026-08-05 02:25:00-04	t
E-101	CS-1002	Entrant 2	Contractor company C	2026-08-05 02:35:00-04	t
E-102	CS-1012	Entrant 1	Contractor company B	2026-08-05 02:32:00-04	t
E-103	CS-1012	Entrant 2	Contractor company B	2026-08-05 02:39:00-04	f
E-104	CS-1029	Entrant 1	Contractor company C	2026-08-05 02:26:00-04	t
E-105	CS-1029	Entrant 2	Contractor company C	2026-08-05 02:03:00-04	f
E-106	CS-1047	Entrant 1	Contractor company C	2026-08-05 02:08:00-04	t
E-107	CS-1047	Entrant 2	Contractor company C	2026-08-05 02:13:00-04	f
E-108	CS-1051	Entrant 1	Staff	2026-08-05 02:28:00-04	t
E-109	CS-1096	Entrant 1	Contractor company A	2026-08-05 02:33:00-04	f
E-110	CS-1107	Entrant 1	Staff	2026-08-05 02:24:00-04	t
E-111	CS-1107	Entrant 2	Staff	2026-08-05 02:14:00-04	t
E-112	CS-1137	Entrant 1	Contractor company C	2026-08-05 02:18:00-04	t
E-113	CS-1141	Entrant 1	Contractor company B	2026-08-05 02:37:00-04	f
E-114	CS-1141	Entrant 2	Contractor company B	2026-08-05 02:08:00-04	t
E-115	CS-1143	Entrant 1	Contractor company C	2026-08-05 02:39:00-04	f
E-116	CS-1143	Entrant 2	Contractor company C	2026-08-05 02:12:00-04	t
E-117	CS-1149	Entrant 1	Contractor company A	2026-08-05 02:33:00-04	t
E-118	CS-1149	Entrant 2	Contractor company A	2026-08-05 02:42:00-04	t
E-119	CS-1157	Entrant 1	Contractor company C	2026-08-05 02:17:00-04	t
E-120	CS-1157	Entrant 2	Contractor company C	2026-08-05 02:43:00-04	t
E-121	CS-1173	Entrant 1	Contractor company B	2026-08-05 02:29:00-04	t
E-122	CS-1173	Entrant 2	Contractor company B	2026-08-05 02:41:00-04	t
E-123	CS-1185	Entrant 1	Contractor company C	2026-08-05 02:08:00-04	t
E-124	CS-1187	Entrant 1	Contractor company B	2026-08-05 02:43:00-04	f
E-125	CS-1187	Entrant 2	Contractor company B	2026-08-05 02:39:00-04	t
E-126	CS-1193	Entrant 1	Contractor company B	2026-08-05 02:38:00-04	t
E-127	CS-1193	Entrant 2	Contractor company B	2026-08-05 02:38:00-04	t
E-128	CS-1195	Entrant 1	Contractor company C	2026-08-05 02:04:00-04	t
E-129	CS-1195	Entrant 2	Contractor company C	2026-08-05 02:22:00-04	t
E-130	CS-1234	Entrant 1	Contractor company A	2026-08-05 02:01:00-04	f
E-131	CS-1251	Entrant 1	Contractor company B	2026-08-05 02:39:00-04	t
E-132	CS-1251	Entrant 2	Contractor company B	2026-08-05 02:31:00-04	f
E-133	CS-1265	Entrant 1	Contractor company C	2026-08-05 02:26:00-04	t
E-134	CS-1283	Entrant 1	Contractor company B	2026-08-05 02:18:00-04	f
E-135	CS-1289	Entrant 1	Staff	2026-08-05 02:42:00-04	f
E-136	CS-1303	Entrant 1	Contractor company B	2026-08-05 02:39:00-04	f
E-137	CS-1303	Entrant 2	Contractor company B	2026-08-05 02:20:00-04	t
E-138	CS-1328	Entrant 1	Contractor company A	2026-08-05 02:17:00-04	t
E-139	CS-1336	Entrant 1	Staff	2026-08-05 02:16:00-04	t
E-140	CS-1336	Entrant 2	Staff	2026-08-05 02:38:00-04	t
E-141	CS-1340	Entrant 1	Contractor company B	2026-08-05 02:29:00-04	t
E-142	CS-1348	Entrant 1	Contractor company B	2026-08-05 02:06:00-04	f
E-143	CS-1352	Entrant 1	Staff	2026-08-05 02:20:00-04	t
E-144	CS-1352	Entrant 2	Staff	2026-08-05 02:10:00-04	f
E-145	CS-1394	Entrant 1	Contractor company C	2026-08-05 02:33:00-04	t
E-146	CS-1394	Entrant 2	Contractor company C	2026-08-05 02:41:00-04	t
E-147	CS-1448	Entrant 1	Contractor company C	2026-08-05 02:17:00-04	t
\.

COPY public.permit_entry_exit_log (permit_id, event_time, actor, event_description, note) FROM stdin;
CS-1182	2026-08-05 02:02:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1182	2026-08-05 02:06:00-04	Entrant 1	Entry	\N
CS-1182	2026-08-05 02:08:00-04	Entrant 2	Entry	\N
CS-1182	2026-08-05 02:09:00-04	Standby attendant	Gas test — within limits	\N
CS-1182	2026-08-05 02:24:00-04	Standby attendant	Gas test — within limits	\N
CS-1182	2026-08-05 02:39:00-04	Standby attendant	Gas test — within limits	Last gas test within limits, taken 14 minutes ago. Next test due in about 1 minute.
CS-1002	2026-08-05 02:06:00-04	Permit issuer	Permit condition checked	\N
CS-1002	2026-08-05 02:25:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1002	2026-08-05 02:40:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1002	2026-08-05 02:53:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1012	2026-08-05 02:18:00-04	Standby attendant	Gas test — within limits	\N
CS-1012	2026-08-05 02:30:00-04	Permit issuer	Gas test — within limits	\N
CS-1012	2026-08-05 02:48:00-04	Entrant 1	Exit	\N
CS-1029	2026-08-05 02:07:00-04	Standby attendant	Permit condition checked	\N
CS-1029	2026-08-05 02:19:00-04	Permit issuer	Exit	\N
CS-1029	2026-08-05 02:36:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1029	2026-08-05 02:49:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1029	2026-08-05 03:07:00-04	Permit issuer	Gas test — within limits	\N
CS-1029	2026-08-05 03:22:00-04	Entrant 1	Exit	\N
CS-1047	2026-08-05 02:05:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1047	2026-08-05 02:23:00-04	Entrant 1	Standby attendant arrived at entry point	\N
CS-1047	2026-08-05 02:34:00-04	Permit issuer	Entry	\N
CS-1047	2026-08-05 02:52:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1051	2026-08-05 02:24:00-04	Entrant 1	Gas test — within limits	\N
CS-1051	2026-08-05 02:35:00-04	Entrant 1	Gas test — within limits	\N
CS-1051	2026-08-05 02:53:00-04	Standby attendant	Permit condition checked	\N
CS-1096	2026-08-05 02:08:00-04	Standby attendant	Gas test — within limits	\N
CS-1096	2026-08-05 02:24:00-04	Standby attendant	Gas test — within limits	\N
CS-1096	2026-08-05 02:43:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1096	2026-08-05 02:53:00-04	Standby attendant	Permit condition checked	\N
CS-1107	2026-08-05 02:18:00-04	Entrant 1	Entry	\N
CS-1107	2026-08-05 02:30:00-04	Standby attendant	Exit	\N
CS-1107	2026-08-05 02:47:00-04	Standby attendant	Entry	\N
CS-1107	2026-08-05 03:00:00-04	Permit issuer	Exit	\N
CS-1137	2026-08-05 02:01:00-04	Entrant 1	Gas test — within limits	\N
CS-1137	2026-08-05 02:20:00-04	Entrant 1	Entry	\N
CS-1137	2026-08-05 02:32:00-04	Permit issuer	Permit condition checked	\N
CS-1137	2026-08-05 02:49:00-04	Standby attendant	Entry	\N
CS-1137	2026-08-05 03:05:00-04	Permit issuer	Gas test — within limits	\N
CS-1137	2026-08-05 03:19:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1141	2026-08-05 02:03:00-04	Standby attendant	Entry	\N
CS-1141	2026-08-05 02:17:00-04	Permit issuer	Permit condition checked	\N
CS-1141	2026-08-05 02:31:00-04	Entrant 1	Exit	\N
CS-1141	2026-08-05 02:47:00-04	Permit issuer	Exit	\N
CS-1141	2026-08-05 03:06:00-04	Entrant 1	Entry	\N
CS-1143	2026-08-05 02:10:00-04	Entrant 1	Permit condition checked	\N
CS-1143	2026-08-05 02:23:00-04	Entrant 1	Permit condition checked	\N
CS-1143	2026-08-05 02:42:00-04	Permit issuer	Permit condition checked	\N
CS-1143	2026-08-05 02:52:00-04	Standby attendant	Gas test — within limits	\N
CS-1143	2026-08-05 03:10:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1143	2026-08-05 03:24:00-04	Standby attendant	Exit	\N
CS-1149	2026-08-05 02:09:00-04	Permit issuer	Gas test — within limits	\N
CS-1149	2026-08-05 02:22:00-04	Permit issuer	Entry	\N
CS-1149	2026-08-05 02:42:00-04	Standby attendant	Permit condition checked	\N
CS-1149	2026-08-05 02:55:00-04	Permit issuer	Entry	\N
CS-1149	2026-08-05 03:09:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1157	2026-08-05 02:15:00-04	Entrant 1	Permit condition checked	\N
CS-1157	2026-08-05 02:35:00-04	Standby attendant	Gas test — within limits	\N
CS-1157	2026-08-05 02:49:00-04	Entrant 1	Exit	\N
CS-1157	2026-08-05 03:04:00-04	Entrant 1	Exit	\N
CS-1157	2026-08-05 03:15:00-04	Permit issuer	Entry	\N
CS-1173	2026-08-05 02:16:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1173	2026-08-05 02:34:00-04	Entrant 1	Exit	\N
CS-1173	2026-08-05 02:49:00-04	Entrant 1	Gas test — within limits	\N
CS-1173	2026-08-05 03:04:00-04	Permit issuer	Exit	\N
CS-1173	2026-08-05 03:20:00-04	Permit issuer	Entry	\N
CS-1173	2026-08-05 03:32:00-04	Entrant 1	Gas test — within limits	\N
CS-1185	2026-08-05 02:15:00-04	Permit issuer	Entry	\N
CS-1185	2026-08-05 02:28:00-04	Permit issuer	Permit condition checked	\N
CS-1185	2026-08-05 02:47:00-04	Permit issuer	Gas test — within limits	\N
CS-1185	2026-08-05 03:00:00-04	Standby attendant	Exit	\N
CS-1185	2026-08-05 03:15:00-04	Permit issuer	Permit condition checked	\N
CS-1185	2026-08-05 03:31:00-04	Permit issuer	Entry	\N
CS-1187	2026-08-05 02:24:00-04	Standby attendant	Entry	\N
CS-1187	2026-08-05 02:37:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1187	2026-08-05 02:49:00-04	Standby attendant	Exit	\N
CS-1187	2026-08-05 03:06:00-04	Standby attendant	Permit condition checked	\N
CS-1187	2026-08-05 03:21:00-04	Permit issuer	Entry	\N
CS-1193	2026-08-05 02:14:00-04	Standby attendant	Permit condition checked	\N
CS-1193	2026-08-05 02:29:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1193	2026-08-05 02:42:00-04	Entrant 1	Standby attendant arrived at entry point	\N
CS-1193	2026-08-05 03:02:00-04	Entrant 1	Permit condition checked	\N
CS-1193	2026-08-05 03:14:00-04	Standby attendant	Gas test — within limits	\N
CS-1193	2026-08-05 03:32:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1195	2026-08-05 02:06:00-04	Entrant 1	Standby attendant arrived at entry point	\N
CS-1195	2026-08-05 02:21:00-04	Standby attendant	Exit	\N
CS-1195	2026-08-05 02:36:00-04	Permit issuer	Permit condition checked	\N
CS-1195	2026-08-05 02:55:00-04	Entrant 1	Permit condition checked	\N
CS-1195	2026-08-05 03:07:00-04	Permit issuer	Entry	\N
CS-1195	2026-08-05 03:24:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1234	2026-08-05 02:14:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1234	2026-08-05 02:32:00-04	Standby attendant	Permit condition checked	\N
CS-1234	2026-08-05 02:48:00-04	Permit issuer	Exit	\N
CS-1251	2026-08-05 02:12:00-04	Permit issuer	Exit	\N
CS-1251	2026-08-05 02:29:00-04	Permit issuer	Entry	\N
CS-1251	2026-08-05 02:44:00-04	Entrant 1	Exit	\N
CS-1251	2026-08-05 03:00:00-04	Entrant 1	Gas test — within limits	\N
CS-1251	2026-08-05 03:15:00-04	Standby attendant	Permit condition checked	\N
CS-1265	2026-08-05 02:22:00-04	Permit issuer	Permit condition checked	\N
CS-1265	2026-08-05 02:36:00-04	Entrant 1	Entry	\N
CS-1265	2026-08-05 02:53:00-04	Standby attendant	Permit condition checked	\N
CS-1283	2026-08-05 02:16:00-04	Standby attendant	Exit	\N
CS-1283	2026-08-05 02:33:00-04	Entrant 1	Gas test — within limits	\N
CS-1283	2026-08-05 02:45:00-04	Standby attendant	Exit	\N
CS-1283	2026-08-05 02:59:00-04	Entrant 1	Entry	\N
CS-1283	2026-08-05 03:16:00-04	Standby attendant	Entry	\N
CS-1289	2026-08-05 02:13:00-04	Permit issuer	Exit	\N
CS-1289	2026-08-05 02:28:00-04	Entrant 1	Entry	\N
CS-1289	2026-08-05 02:41:00-04	Permit issuer	Gas test — within limits	\N
CS-1289	2026-08-05 02:53:00-04	Entrant 1	Permit condition checked	\N
CS-1289	2026-08-05 03:09:00-04	Permit issuer	Exit	\N
CS-1303	2026-08-05 02:20:00-04	Entrant 1	Entry	\N
CS-1303	2026-08-05 02:33:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1303	2026-08-05 02:45:00-04	Entrant 1	Standby attendant arrived at entry point	\N
CS-1303	2026-08-05 03:03:00-04	Entrant 1	Permit condition checked	\N
CS-1328	2026-08-05 02:21:00-04	Entrant 1	Entry	\N
CS-1328	2026-08-05 02:38:00-04	Permit issuer	Entry	\N
CS-1328	2026-08-05 02:53:00-04	Standby attendant	Exit	\N
CS-1336	2026-08-05 02:07:00-04	Permit issuer	Gas test — within limits	\N
CS-1336	2026-08-05 02:22:00-04	Permit issuer	Gas test — within limits	\N
CS-1336	2026-08-05 02:40:00-04	Permit issuer	Entry	\N
CS-1336	2026-08-05 02:55:00-04	Entrant 1	Standby attendant arrived at entry point	\N
CS-1336	2026-08-05 03:07:00-04	Entrant 1	Permit condition checked	\N
CS-1340	2026-08-05 02:23:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1340	2026-08-05 02:36:00-04	Entrant 1	Entry	\N
CS-1340	2026-08-05 02:53:00-04	Standby attendant	Exit	\N
CS-1348	2026-08-05 02:07:00-04	Permit issuer	Entry	\N
CS-1348	2026-08-05 02:21:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1348	2026-08-05 02:34:00-04	Permit issuer	Permit condition checked	\N
CS-1348	2026-08-05 02:50:00-04	Permit issuer	Entry	\N
CS-1348	2026-08-05 03:03:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1352	2026-08-05 02:22:00-04	Permit issuer	Entry	\N
CS-1352	2026-08-05 02:37:00-04	Standby attendant	Exit	\N
CS-1352	2026-08-05 02:50:00-04	Entrant 1	Gas test — within limits	\N
CS-1352	2026-08-05 03:07:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1352	2026-08-05 03:22:00-04	Permit issuer	Permit condition checked	\N
CS-1352	2026-08-05 03:36:00-04	Standby attendant	Gas test — within limits	\N
CS-1394	2026-08-05 02:07:00-04	Entrant 1	Permit condition checked	\N
CS-1394	2026-08-05 02:24:00-04	Standby attendant	Gas test — within limits	\N
CS-1394	2026-08-05 02:40:00-04	Entrant 1	Standby attendant arrived at entry point	\N
CS-1448	2026-08-05 02:17:00-04	Permit issuer	Standby attendant arrived at entry point	\N
CS-1448	2026-08-05 02:31:00-04	Permit issuer	Gas test — within limits	\N
CS-1448	2026-08-05 02:45:00-04	Standby attendant	Entry	\N
CS-1448	2026-08-05 03:03:00-04	Standby attendant	Standby attendant arrived at entry point	\N
CS-1448	2026-08-05 03:18:00-04	Permit issuer	Gas test — within limits	\N
CS-1448	2026-08-05 03:34:00-04	Standby attendant	Gas test — within limits	\N
\.

COPY public.query_cache (id, question_hash, question, persona_id, client_id, component, sql_query, viz_type, is_known_component, query_fn, suggested_chips, capability, cached_at, hit_count, ai_message) FROM stdin;
0923c83c-df93-4db9-8628-944d4d7cea70	fd21114b7d7a1f9a9d438742dfc82450	Who is the day-shift permit issuer for Unit 2 who can authorize an emergency stop or extension for HW-4471 and HW-4468?	hse-gm	aramco	Table	SELECT p.id AS permit_id, p.permit_type, p.issuer, p.status, p.valid_to, z.name AS zone_name FROM permit p JOIN zone z ON z.id = p.zone_id WHERE z.id = (SELECT zone_id FROM permit WHERE id = 'HW-4471' LIMIT 1) AND p.status = 'valid' AND p.issuer IS NOT NULL ORDER BY p.valid_from DESC LIMIT 100	Table	f	\N	["Can the Operations superintendent authorize an emergency stop for FJ-001 and FJ-002 right now without a new permit?", "What is the current status of the confined-space standby confirmation missing on Unit 3, and who is the responsible issuer there?", "Show me all hot-work permits in Unit 2 issued by the Unit 2 permit issuer that are still valid today"]	Converged Conversation	2026-09-12 20:48:17.473719-04	0	Based on active permits in Unit 2 — Hydrocracker, the designated day-shift authority is the **Unit 2 permit issuer**, who is currently listed as the issuer on multiple valid permits in that zone including hot-work permits HW-1097 and HW-1104, confirming they are on site and active this shift. The **Operations superintendent** and the **Site HSE officer** are also present and issuing valid permits in Unit 2, meaning either could serve as escalation authorities to sanction an emergency stop or co-sign an extension for HW-4471 and HW-4468. Given that both flagged permits have been expired for over 35 minutes and the original night-shift issuer is off site, I recommend the Unit 2 permit issuer or Operations superintendent be contacted immediately to either authorize a formal work stop or issue emergency replacement permits before any further work continues.
570619e9-81ba-4a81-a8c3-a5f3234c28d4	8a9078133af5a47bb7702db7ad4fb976	Show me safety exposure by unit	complex-manager	aramco	SiteMapPanel	SELECT z.id,z.name,z.hazard_level,COUNT(DISTINCT fj.id) AS flagged_jobs FROM zone z LEFT JOIN flagged_job fj ON fj.zone_id=z.id GROUP BY z.id,z.name,z.hazard_level ORDER BY flagged_jobs DESC	[{"type": "SiteMapPanel", "variant": "site"}]	f	\N	["What is the schedule versus safety trade-off?", "Why are the headcounts disagreeing?", "What would I tell the board's safety committee today?"]	Proactive Intelligence	2026-09-12 12:50:58.194981-04	2	Safety exposure is concentrated in Units 2 and 3. Unit 2 has 420 people, 88 permits, and 2 of the 3 flagged violations. Unit 3 has 385 people, 79 permits, and the confined-space entry issue. Together they account for two thirds of all high-risk permit activity on site.
8f4ad3c6-bf1f-4a3a-b952-fd20f2529cff	f4751952251ae0496e7c677933ad220f	__greeting__	hse-gm	aramco	\N	\N	\N	f	\N	["Which headcount systems are disagreeing and by how many people is the gap?", "What are the 3 jobs operating in hazard zones without a valid permit and what is being done to stop them right now?", "How many of the 120 overdue safety actions are linked to high-risk permits, and who are the accountable owners?"]	Proactive Intelligence	2026-09-12 19:35:32.887531-04	0	Good morning. We are mid-turnaround with 2,412 people on site, 450 active permits — 236 of them high-risk — and the most urgent issue right now is that headcount sources are not reconciling, meaning we cannot produce a single defensible muster figure if an emergency occurs. Compounding this, 3 jobs are confirmed active in hazard zones without valid permits, and 120 safety actions are overdue, pointing to a control environment that is being stretched by the contractor surge.
e4e1fdfc-e968-48f6-97bf-f507695f2aea	2d8fda2bd14a871ace9ab6401b64d972	Remind the crew of the gas test	hse-gm	aramco	PermitDetailCard	SELECT p.id,p.title,gtr.reading_time,gtr.result,gtr.interval_minutes,pe.label,pe.is_inside FROM permit p JOIN gas_test_reading gtr ON gtr.permit_id=p.id LEFT JOIN permit_entrant pe ON pe.permit_id=p.id WHERE p.permit_type=''confined-space'' AND p.status=''valid'' ORDER BY gtr.reading_time DESC	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	f	\N	["Who is the standby person?", "Show the entry and exit log", "Can I trust these numbers?"]	Automated Action	2026-09-12 12:50:58.185897-04	0	CS-1182 is a confined-space entry permit for the Unit 3 Coker drum skirt, valid from 06:00 to 14:00. Two entrants are currently inside. The last gas test was 14 minutes ago — the next is due in 1 minute. The standby confirmation is unresolved. Three conditions are active: continuous gas monitoring, standby attendant present, and rescue equipment in place.
dbd239c0-fc1d-43f9-a49a-16a404b6c85c	221c23567a0ff2ed99a75008871db218	What is the status on the Unit 3 confined space?	shift-supervisor	aramco	PermitDetailCard	\N	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	t	get_permits	["Remind the crew of the gas test", "Show me the expired hot-work permits", "What has been assigned to me?"]	Anomaly Detection	2026-09-12 12:50:58.189982-04	0	CS-1182 is active in Unit 3. Two entrants are inside the Coker drum skirt. The gas test is due now — last reading was 14 minutes ago against a 15-minute interval. The standby attendant arrived at 06:25. The permit runs until 14:00.
7331cd78-f2ea-4134-9afa-f15e21899439	3590c0f086563798f215b9f8d47fb0d5	How is my muster point looking?	shift-supervisor	aramco	MusterBoard	\N	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	t	get_muster	["What has been assigned to me?", "What is the status on the Unit 3 confined space?", "Show me the expired hot-work permits"]	Proactive Intelligence	2026-09-12 12:50:58.190313-04	0	Your muster point has 2,384 of 2,412 accounted for. The 28 outstanding trace to the contractor badge gap. All five muster points are staffed and active.
340d4f19-e47b-48d6-8287-f282cdf969cc	c41b799dcd305d082268ed4524ebd95b	Issue an extension with fresh conditions	permit-issuer	aramco	PermitDetailCard	\N	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	t	get_permits	["Show me the general permit in the confined-space zone", "Which permits expire in the next hour?", "Where is my issue-to-verify time going?"]	Automated Action	2026-09-12 12:50:58.191435-04	1	\N
aa2cb52f-3503-4f98-a613-e62948aa4e13	3a9b071051ddf8c3c49046284cef2875	Show me the permits that lapsed with workers still on location	permit-issuer	aramco	FlaggedJobsTable	\N	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	t	get_flagged_jobs	["Issue an extension with fresh conditions", "Why did the night shift not log an extension?", "Which permits expire in the next hour?"]	Anomaly Detection	2026-09-12 12:50:58.191286-04	1	Two hot-work permits in Unit 2 lapsed with workers still on location. HW-4471 expired 47 minutes ago — 4 workers active. HW-4468 expired 35 minutes ago — 3 workers active. The night-shift permit issuer went off site without logging extensions.
2d4a894e-c288-4357-9654-ea0d569a732d	6998f59813fbb3ddca1a53ff625fd1ec	Who is on location right now?	shift-supervisor	aramco	FlaggedJobsTable	SELECT w.id,w.tag_number,w.role,z.name AS zone_name,w.last_seen FROM worker w JOIN zone z ON z.id=w.zone_id WHERE w.zone_id IN (''Z2'',''Z3'') ORDER BY w.last_seen DESC LIMIT 50	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Draft the stop-work notice", "Show me the expired hot-work permits", "What is the status on the Unit 3 confined space?"]	Converged Conversation	2026-09-12 12:50:58.189813-04	0	\N
6691c6c7-1522-405e-b456-8d05d9629d1a	a33c92efa5b8523b0eb33715388ec0d9	Draft the stop-work notice	shift-supervisor	aramco	FlaggedJobsTable	SELECT p.id,p.permit_type,p.valid_to,p.issuer,z.name AS zone_name,fj.workers_on_site,fj.reason FROM permit p JOIN flagged_job fj ON fj.permit_id=p.id JOIN zone z ON z.id=p.zone_id WHERE p.status=''expired'' AND p.permit_type=''hot-work'' AND fj.zone_id IN (''Z2'',''Z3'') ORDER BY fj.rank	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["What is the status on the Unit 3 confined space?", "Request an extension with fresh conditions", "What has been assigned to me?"]	Automated Action	2026-09-12 12:50:58.190472-04	0	\N
236769e2-58bf-490e-ab2c-8adb06e756e4	72e07f29f7c6d3c235dc3f7742ff9d84	Request an extension with fresh conditions	shift-supervisor	aramco	PermitDetailCard	\N	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	t	get_permits	["Draft the stop-work notice", "Who is on location right now?", "What has been assigned to me?"]	Automated Action	2026-09-12 12:50:58.190799-04	0	\N
0ed5bb50-d5b5-44c1-9309-0b21f6161614	42218a0a72094b259501ffa50f17a4bb	Remind the crew of the gas test	shift-supervisor	aramco	PermitDetailCard	SELECT p.id,p.title,gtr.reading_time,gtr.result FROM permit p JOIN gas_test_reading gtr ON gtr.permit_id=p.id WHERE p.permit_type=''confined-space'' AND p.zone_id=''Z3'' AND p.status=''valid'' ORDER BY gtr.reading_time DESC	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	f	\N	["What is the status on the Unit 3 confined space?", "What has been assigned to me?", "How is my muster point looking?"]	Automated Action	2026-09-12 12:50:58.190967-04	0	\N
b4f2d2ee-730b-4fff-a2fe-5951e9f5644c	75beb8c59e17505b5946f42e0c5df23f	__greeting__	permit-issuer	aramco	\N	\N	\N	f	\N	["Show me the permits that lapsed with workers still on location", "Which permits expire in the next hour?", "Show me the general permit in the confined-space zone"]	Proactive Intelligence	2026-09-12 12:50:58.191132-04	0	\N
1ca099ad-bd3a-4b3e-a691-476f021ec92a	bba1aed2680c6a09e509598b4ce17bbd	Why did the night shift not log an extension?	permit-issuer	aramco	FlaggedJobsTable	SELECT p.id,p.permit_type,p.valid_to,p.issuer,p.extension_requested,z.name AS zone_name FROM permit p JOIN zone z ON z.id=p.zone_id WHERE p.status=''expired'' AND p.extension_requested=FALSE ORDER BY p.valid_to DESC	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Show me the permits that lapsed with workers still on location", "Where is my issue-to-verify time going?", "Which permits expire in the next hour?"]	Converged Conversation	2026-09-12 12:50:58.19169-04	0	\N
63c4e4c9-e16e-45d2-ae23-04f28c188854	2dc1df36a9ae308d9fa9ed7b595e34ec	Who is the standby person?	hse-gm	aramco	PermitDetailCard	SELECT p.id AS permit_id,p.title,pe.label,pe.company,pe.entered_at,pe.is_inside FROM permit p JOIN permit_entrant pe ON pe.permit_id=p.id WHERE p.permit_type=''confined-space'' AND p.status=''valid'' ORDER BY pe.entered_at	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	f	\N	["Show the entry and exit log", "Remind the crew of the gas test", "Can I trust these numbers?"]	Converged Conversation	2026-09-12 12:50:58.186098-04	0	CS-1182 is a confined-space entry permit for the Unit 3 Coker drum skirt, valid from 06:00 to 14:00. Two entrants are currently inside. The last gas test was 14 minutes ago — the next is due in 1 minute. The standby confirmation is unresolved. Three conditions are active: continuous gas monitoring, standby attendant present, and rescue equipment in place.
ff46402c-3619-4d83-b1b8-439c1cc8d672	a0e8610d23470690e6f23b4ef833fde0	Edit action 1	hse-gm	aramco	PrioritizedActionCards	\N	[{"type": "PrioritizedActionCards", "variant": null}]	t	get_actions	["Hand all three to supervisors", "Add to the shift handover report", "During a muster, who is unaccounted for?"]	Automated Action	2026-09-12 12:50:58.187489-04	0	Three actions, in priority order. One, clear the two expired hot-work permits on the flagged jobs or stop the work — safety bucket, highest risk. Two, confirm the Unit 3 gas test so the confined-space entry stays compliant. Three, reconcile the 28 unmatched people before the shift-change muster so the next count starts clean. I can draft each as a task with the evidence attached and hand them to the shift supervisors now.
6c68bf04-d0a9-42c9-a7e1-a41865a8ed93	6cdd6fe7b07b8fb9bf5b528bc44918ef	Add to the shift handover report	hse-gm	aramco	PrioritizedActionCards	\N	[{"type": "PrioritizedActionCards", "variant": null}]	t	get_actions	["Hand all three to supervisors", "During a muster, who is unaccounted for?", "Export the reconciliation for audit"]	Automated Action	2026-09-12 12:50:58.187645-04	0	Three actions, in priority order. One, clear the two expired hot-work permits on the flagged jobs or stop the work — safety bucket, highest risk. Two, confirm the Unit 3 gas test so the confined-space entry stays compliant. Three, reconcile the 28 unmatched people before the shift-change muster so the next count starts clean. I can draft each as a task with the evidence attached and hand them to the shift supervisors now.
4a8d1df7-d288-411d-8e93-3f34d00c6ed6	6e4ce89071bcb8a97a06e92243bae64f	Message the zone wardens	hse-gm	aramco	MusterBoard	SELECT mp.id,mp.name,mp.covers_zones,mp.accounted_count,mp.expected_count,mp.expected_count-mp.accounted_count AS outstanding FROM muster_point mp ORDER BY outstanding DESC	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	f	\N	["Show the 2 with no signal", "Start the incident log", "Show the 28 unmatched people"]	Automated Action	2026-09-12 12:50:58.18798-04	0	The muster drill ran for 1 minute 30 seconds. 2,384 of 2,412 people are accounted for across the five muster points. The 28 outstanding all trace to the headcount reconciliation gap — they are the same unmatched contractors. Muster Point A — North is short by 6, Point C — East by 6, and Point E — Admin and Gate by 8. The projection shows full accounting in 3 minutes at the current check-in rate.
d730e4e6-403f-4ae2-9f2c-a3302e227db4	0209b5525b18a04a26282d974cd03043	Start the incident log	hse-gm	aramco	MusterBoard	SELECT me.state,me.alarm_started_at,me.elapsed_seconds,me.total_accounted,me.total_expected FROM muster_event me ORDER BY me.as_of DESC LIMIT 1	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	f	\N	["Show the 2 with no signal", "How long did the last muster actually take?", "Can I trust these numbers?"]	Automated Action	2026-09-12 12:50:58.188281-04	0	The muster drill ran for 1 minute 30 seconds. 2,384 of 2,412 people are accounted for across the five muster points. The 28 outstanding all trace to the headcount reconciliation gap — they are the same unmatched contractors. Muster Point A — North is short by 6, Point C — East by 6, and Point E — Admin and Gate by 8. The projection shows full accounting in 3 minutes at the current check-in rate.
ba964042-0f3e-4d04-81f6-9a2d42a61408	b4aa27ad9204df81e2e095deed41e9c7	How long did the last muster actually take?	hse-gm	aramco	MusterBoard	\N	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	t	get_muster	["During a muster, who is unaccounted for?", "Show the 28 unmatched people", "What should I act on before the night shift?"]	Proactive Intelligence	2026-09-12 12:50:58.188455-04	0	The muster drill ran for 1 minute 30 seconds. 2,384 of 2,412 people are accounted for across the five muster points. The 28 outstanding all trace to the headcount reconciliation gap — they are the same unmatched contractors. Muster Point A — North is short by 6, Point C — East by 6, and Point E — Admin and Gate by 8. The projection shows full accounting in 3 minutes at the current check-in rate.
9ad54a50-73ae-44cd-bbde-5e91c126f7ec	82189156f20f23c4b28ec35ab6b61440	Which permits are inside the exclusion radius?	hse-gm	aramco	FlaggedJobsTable	SELECT p.id,p.permit_type,p.status,p.valid_to,p.risk_bucket,z.name AS zone_name,a.tag AS asset_tag,a.alarm_state FROM permit p JOIN zone z ON z.id=p.zone_id JOIN asset a ON a.zone_id=p.zone_id WHERE p.status=''valid'' AND a.alarm_state=''alarm'' ORDER BY p.risk_bucket	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Show me every job in a hazard zone without a valid permit.", "What should I act on before the night shift?", "Show me the whole equipment fleet"]	Predictive Intelligence	2026-09-12 12:50:58.188946-04	0	Compressor C-2101 in Unit 2 is in alarm state. Health score is 62 out of 100 — degraded band. The vibration reading has been trending up for 6 days and crossed the warning threshold yesterday. Remaining useful life is estimated at 14 days. Six active permits are within the exclusion radius. Next service is due in 3 days — the window is tight given the turnaround schedule.
2227d7bf-37b9-431a-83aa-0ef4ffb229c1	ce02606d6ecb3c61961221c2a9daa21f	Walk me through my turnaround day	hse-gm	aramco	SiteMapPanel	SELECT p.permit_type,COUNT(*) AS count FROM permit p GROUP BY p.permit_type ORDER BY count DESC	[{"type": "SiteMapPanel", "variant": "site"}]	f	\N	["How long did the last muster actually take?", "Can I trust these numbers?"]	Converged Conversation	2026-09-12 12:50:58.189439-04	0	Here is the site map showing contractor surge exposure by zone. Unit 2 carries the highest load with 420 people and 88 active permits. Unit 3 follows with 385 people and 79 permits. Together they hold a third of the site population and two thirds of the high-risk permit activity.
f1d455fa-f38d-4fab-96d3-1c9ce3c15e41	98789481550a4e6fb5653ef94bce6b31	Show me the expired hot-work permits	shift-supervisor	aramco	FlaggedJobsTable	\N	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	t	get_flagged_jobs	["Draft the stop-work notice", "Request an extension with fresh conditions", "Who is on location right now?"]	Anomaly Detection	2026-09-12 12:50:58.189691-04	0	Two hot-work permits in Unit 2 have expired with workers still on location. HW-4471 expired 47 minutes ago — 4 workers on the platform. HW-4468 expired 35 minutes ago — 3 workers on the pipe rack. Both were issued by the night-shift permit issuer who is now off site. Neither had an extension requested.
fcaa6b26-7032-4e42-951b-c2188905f6cc	acb7f0d5f72cae93aacb74e35a356240	What has been assigned to me?	shift-supervisor	aramco	PrioritizedActionCards	\N	[{"type": "PrioritizedActionCards", "variant": null}]	t	get_actions	["Draft the stop-work notice", "Remind the crew of the gas test", "How is my muster point looking?"]	Automated Action	2026-09-12 12:50:58.190154-04	0	You have three items assigned. One, stop work on HW-4471 and HW-4468 or get extensions issued — due immediately. Two, confirm the Unit 3 gas test is completed in the next minute. Three, verify the 28-person headcount gap before the shift-change muster.
1295037f-90c9-42b0-870a-374130c48a0e	17454b81ab3f08f3e4454a854c174ee8	Assemble the committee pack	complex-manager	aramco	MusterBoard	SELECT z.name,COUNT(DISTINCT fj.id) AS violations,COUNT(DISTINCT p.id) AS permits,COUNT(DISTINCT w.id) AS workers FROM zone z LEFT JOIN flagged_job fj ON fj.zone_id=z.id LEFT JOIN permit p ON p.zone_id=z.id AND p.status=''valid'' LEFT JOIN worker w ON w.zone_id=z.id GROUP BY z.id,z.name ORDER BY violations DESC	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	f	\N	["What would I tell the board's safety committee today?", "Show me safety exposure by unit", "Why are the headcounts disagreeing?"]	Automated Action	2026-09-12 12:50:58.195809-04	0	For the safety committee: 450 active permits on site, 236 high-risk. Three jobs are running outside their permit conditions — two expired hot-work permits in Unit 2 and an unauthorized confined-space entry in Unit 3. The headcount sources are disagreeing by 28 people. The muster last ran in 1:30 with 28 outstanding. 120 safety actions are overdue.
d8fc74d5-0612-456e-9285-1465ba6a2788	bb6fb175604deb319c7cbe60f9f2a8c4	What would I tell the board's safety committee today?	complex-manager	aramco	MusterBoard	SELECT metric,value FROM (SELECT 1 AS ord,''Active Permits'' AS metric,COUNT(*)::text AS value FROM permit WHERE status=''valid'' UNION ALL SELECT 2,''Flagged Violations'',COUNT(*)::text FROM flagged_job UNION ALL SELECT 3,''People On Site'',COUNT(*)::text FROM worker UNION ALL SELECT 4,''Muster Completion'',(SELECT measured_completion_label FROM muster_event ORDER BY as_of DESC LIMIT 1)) summary ORDER BY ord	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	f	\N	["Assemble the committee pack", "Why are the headcounts disagreeing?", "What happens at the next surge?"]	Converged Conversation	2026-09-12 12:50:58.195505-04	1	For the safety committee: 450 active permits on site, 236 high-risk. Three jobs are running outside their permit conditions — two expired hot-work permits in Unit 2 and an unauthorized confined-space entry in Unit 3. The headcount sources are disagreeing by 28 people. The muster last ran in 1:30 with 28 outstanding. 120 safety actions are overdue.
8e2ac130-9d30-4a2c-a315-0698ce21b666	c10dab04bc961187ab40244552cb9bc9	Which permits expire in the next hour?	permit-issuer	aramco	FlaggedJobsTable	SELECT p.id,p.permit_type,p.valid_to,p.issuer,z.name AS zone_name FROM permit p JOIN zone z ON z.id=p.zone_id WHERE p.status=''valid'' AND p.valid_to<=NOW()+INTERVAL''1 hour'' ORDER BY p.valid_to ASC	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Issue an extension with fresh conditions", "Show me the general permit in the confined-space zone", "Where is my issue-to-verify time going?"]	Anomaly Detection	2026-09-12 12:50:58.191848-04	1	Three permits expire in the next hour. Two are hot-work permits in Unit 2 that are already flagged. One is a confined-space entry in Unit 5 that expires at 14:00. Extensions need to be assessed and logged now.
1950653c-ff7f-4925-84e0-958f14065b35	76b0175ad88003014986b8965a5195ed	Show the entry and exit log	hse-gm	aramco	PermitDetailCard	SELECT p.id AS permit_id,pel.event_time,pel.actor,pel.event_description,pel.note FROM permit p JOIN permit_entry_exit_log pel ON pel.permit_id=p.id WHERE p.permit_type=''confined-space'' AND p.status=''valid'' ORDER BY pel.event_time DESC	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	f	\N	["Who is the standby person?", "Remind the crew of the gas test", "Can I trust these numbers?"]	Converged Conversation	2026-09-12 12:50:58.186321-04	0	CS-1182 is a confined-space entry permit for the Unit 3 Coker drum skirt, valid from 06:00 to 14:00. Two entrants are currently inside. The last gas test was 14 minutes ago — the next is due in 1 minute. The standby confirmation is unresolved. Three conditions are active: continuous gas monitoring, standby attendant present, and rescue equipment in place.
7fa26337-72db-44a1-bebb-0b25daceb4d9	255f92b4921f2a90b59b5f52a040175f	Show the 28 unmatched people	hse-gm	aramco	HeadcountReconciliationPanel	\N	[{"type": "HeadcountReconciliationPanel", "variant": null}]	t	get_reconciliation	["Export the reconciliation for audit", "Which source is usually off?", "What should I act on before the night shift?"]	Converged Conversation	2026-09-12 12:50:58.186521-04	0	The gate access-control count and the permit system count disagree by 28 people. Gate shows 2,412 on site; the permit entrant log shows 2,384. The contractor timesheet system is the third source and it falls between the two. The 28-person gap traces to contractors who badged in but whose permits have not been formally activated — a process gap, not a safety gap, but it means we cannot produce a single defensible muster figure right now.
df7baef4-b2c7-4d03-a5e8-ceb08fd91a1c	7138ae357646ac9ab412b46d5c11676b	Export the reconciliation for audit	hse-gm	aramco	HeadcountReconciliationPanel	\N	[{"type": "HeadcountReconciliationPanel", "variant": null}]	t	get_reconciliation	["Show the 28 unmatched people", "Which source is usually off?", "What should I act on before the night shift?"]	Converged Conversation	2026-09-12 12:50:58.186718-04	0	The gate access-control count and the permit system count disagree by 28 people. Gate shows 2,412 on site; the permit entrant log shows 2,384. The contractor timesheet system is the third source and it falls between the two. The 28-person gap traces to contractors who badged in but whose permits have not been formally activated — a process gap, not a safety gap, but it means we cannot produce a single defensible muster figure right now.
ff073b9b-cfd1-43c9-ac17-922282a8ee05	7275d5cc85b73f3510ba54f29343228a	Which source is usually off?	hse-gm	aramco	HeadcountReconciliationPanel	\N	[{"type": "HeadcountReconciliationPanel", "variant": null}]	t	get_reconciliation	["Show the 28 unmatched people", "Export the reconciliation for audit", "What should I act on before the night shift?"]	Converged Conversation	2026-09-12 12:50:58.186922-04	0	The gate access-control count and the permit system count disagree by 28 people. Gate shows 2,412 on site; the permit entrant log shows 2,384. The contractor timesheet system is the third source and it falls between the two. The 28-person gap traces to contractors who badged in but whose permits have not been formally activated — a process gap, not a safety gap, but it means we cannot produce a single defensible muster figure right now.
2528580e-4533-4122-94c3-b1bf0a164621	a026e57b4b7aa17d8784a6c4c02a4f3f	Hand all three to supervisors	hse-gm	aramco	PrioritizedActionCards	\N	[{"type": "PrioritizedActionCards", "variant": null}]	t	get_actions	["Add to the shift handover report", "During a muster, who is unaccounted for?", "Edit action 1"]	Automated Action	2026-09-12 12:50:58.187116-04	0	Three actions, in priority order. One, clear the two expired hot-work permits on the flagged jobs or stop the work — safety bucket, highest risk. Two, confirm the Unit 3 gas test so the confined-space entry stays compliant. Three, reconcile the 28 unmatched people before the shift-change muster so the next count starts clean. I can draft each as a task with the evidence attached and hand them to the shift supervisors now.
12e35bbd-aa02-4574-864a-b4335b2ec001	a3d1d1c52a9bc1d80c15b6fc899531de	Show the 2 with no signal	hse-gm	aramco	MusterBoard	\N	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	t	get_muster	["Message the zone wardens", "Start the incident log", "Show the 28 unmatched people"]	Proactive Intelligence	2026-09-12 12:50:58.187793-04	0	The muster drill ran for 1 minute 30 seconds. 2,384 of 2,412 people are accounted for across the five muster points. The 28 outstanding all trace to the headcount reconciliation gap — they are the same unmatched contractors. Muster Point A — North is short by 6, Point C — East by 6, and Point E — Admin and Gate by 8. The projection shows full accounting in 3 minutes at the current check-in rate.
191986d6-4e47-4e8e-94a1-201a69c622f9	c261ef3f52de8b0c528e79f76329325f	__greeting__	shift-supervisor	aramco	\N	\N	\N	f	\N	["Show me the expired hot-work permits", "What is the status on the Unit 3 confined space?", "What has been assigned to me?"]	Proactive Intelligence	2026-09-12 12:50:58.189568-04	0	\N
b730a107-85de-40e2-b327-5c9b81295fc0	7e599e427d1e4c56f6b474dcc1ef0d23	How is the compressor on Unit 2?	hse-gm	aramco	AssetHealthCard	\N	[{"type": "AssetHealthCard", "variant": null}]	t	get_assets	["Which permits are inside the exclusion radius?", "Show me the whole equipment fleet", "What should I act on before the night shift?"]	Predictive Intelligence	2026-09-12 12:50:58.188617-04	0	Compressor C-2101 in Unit 2 is in alarm state. Health score is 62 out of 100 — degraded band. The vibration reading has been trending up for 6 days and crossed the warning threshold yesterday. Remaining useful life is estimated at 14 days. Six active permits are within the exclusion radius. Next service is due in 3 days — the window is tight given the turnaround schedule.
c5a219d6-289f-4f4a-87e9-c86f98263fb7	846640652871766ae42c71bf9f0688e3	Show me the whole equipment fleet	hse-gm	aramco	AssetHealthCard	\N	[{"type": "AssetHealthCard", "variant": null}]	t	get_assets	["Walk me through the confined-space entry on Unit 3.", "What should I act on before the night shift?", "How is the compressor on Unit 2?"]	Predictive Intelligence	2026-09-12 12:50:58.188781-04	0	Compressor C-2101 in Unit 2 is in alarm state. Health score is 62 out of 100 — degraded band. The vibration reading has been trending up for 6 days and crossed the warning threshold yesterday. Remaining useful life is estimated at 14 days. Six active permits are within the exclusion radius. Next service is due in 3 days — the window is tight given the turnaround schedule.
87cb2a29-f6a7-4169-8940-c0d14cd85f98	86c679aefc8a508a8823b3e542f6a2fe	Show me the contractor surge exposure	hse-gm	aramco	SiteMapPanel	SELECT z.name,COUNT(w.id) AS workers FROM zone z LEFT JOIN worker w ON w.zone_id=z.id GROUP BY z.id,z.name ORDER BY workers DESC	[{"type": "SiteMapPanel", "variant": "site"}]	f	\N	["Show me every job in a hazard zone without a valid permit.", "Where is verification idle time coming from?", "Walk me through my turnaround day"]	Converged Conversation	2026-09-12 12:50:58.189127-04	0	Here is the site map showing contractor surge exposure by zone. Unit 2 carries the highest load with 420 people and 88 active permits. Unit 3 follows with 385 people and 79 permits. Together they hold a third of the site population and two thirds of the high-risk permit activity.
cc1c7de7-658b-4414-8fcf-9e242983ac0c	ff07af7d3c21b409f9eac6087a64c71e	Where is verification idle time coming from?	hse-gm	aramco	FlaggedJobsTable	SELECT p.id,p.permit_type,p.valid_from,p.issuer,z.name AS zone_name FROM permit p JOIN zone z ON z.id=p.zone_id WHERE p.status=''pending_verification'' ORDER BY p.valid_from	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Show me the contractor surge exposure", "What should I act on before the night shift?"]	Converged Conversation	2026-09-12 12:50:58.189311-04	0	Here is the site map showing contractor surge exposure by zone. Unit 2 carries the highest load with 420 people and 88 active permits. Unit 3 follows with 385 people and 79 permits. Together they hold a third of the site population and two thirds of the high-risk permit activity.
8eaca339-6340-4614-8c76-532a8b9788f2	76cf9cd4fd69871e72f686b926d17bae	Notify the permit issuer	hse-gm	aramco	FlaggedJobsTable	SELECT p.id,p.issuer,p.permit_type,p.valid_to,z.name AS zone_name,fj.workers_on_site FROM permit p JOIN flagged_job fj ON fj.permit_id=p.id JOIN zone z ON z.id=p.zone_id WHERE p.status=''expired'' ORDER BY fj.rank	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Open the evidence for job 1", "Show these on the site map", "What should I act on before the night shift?"]	Automated Action	2026-09-12 12:50:58.185482-04	11	The permit issuer for Unit 2 night shift — the one who issued HW-4471 and HW-4468 — went off site at 06:15 without logging extension requests for either permit. Both permits expired with workers still active on location. The day-shift permit issuer has been notified and is en route to the site.
ca63e6fc-4ebb-4030-8a60-0a514df20348	728110c2530f35de671e319b717d6ea8	Show me every job running in a hazardous zone without a valid permit.	hse-gm	aramco	FlaggedJobsTable	\N	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	t	get_flagged_jobs	["Open the evidence for job 1", "Notify the permit issuer", "Show these on the site map", "Walk me through the confined-space entry on Unit 3."]	Anomaly Detection	2026-09-12 12:50:58.182847-04	0	Here are the three flagged jobs, all critical severity. FJ-001 and FJ-002 are both in Unit 2 — Hydrocracker: four workers on the level 3 platform are 47 minutes past permit HW-4471's expiry, and three workers on the north-face pipe rack are 35 minutes past permit HW-4468's expiry — both issued by the same night-shift permit issuer who is now off site. FJ-003 is in Unit 5 — Utilities, where a crew of three holding general permit GP-9033 crossed into the Coker drum skirt confined-space envelope 9 minutes ago.
da42e0c5-3300-4567-a4a8-8cea0072bedf	5dcc9cb2ed4ca0f1bc82fc16363c249f	Walk me through the confined-space entry on Unit 3.	hse-gm	aramco	PermitDetailCard	\N	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	t	get_permits	["Remind the crew of the gas test", "Who is the standby person?", "Show the entry and exit log", "Can I trust these numbers?"]	Anomaly Detection	2026-09-12 12:50:58.18323-04	0	CS-1182 is a confined-space entry permit for the Unit 3 Coker drum skirt, valid from 06:00 to 14:00. Two entrants are currently inside. The last gas test was 14 minutes ago — the next is due in 1 minute. The standby confirmation is unresolved. Three conditions are active: continuous gas monitoring, standby attendant present, and rescue equipment in place.
e3e913ce-c045-4c20-9df1-636ca59c5d0d	e7d67f5f6239f1ed29ab41b047bf17b5	Show the three flagged jobs	hse-gm	aramco	FlaggedJobsTable	\N	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	t	get_flagged_jobs	["Open the evidence for job 1", "Notify the permit issuer", "Show these on the site map"]	Anomaly Detection	2026-09-12 12:50:58.18307-04	10	Here are the three flagged jobs, all critical severity. FJ-001 and FJ-002 are both in Unit 2 — Hydrocracker: four workers on the level 3 platform are 47 minutes past permit HW-4471's expiry, and three workers on the north-face pipe rack are 35 minutes past permit HW-4468's expiry — both issued by the same night-shift permit issuer who is now off site. FJ-003 is in Unit 5 — Utilities, where a crew of three holding general permit GP-9033 crossed into the Coker drum skirt confined-space envelope 9 minutes ago.
7f2eec62-b80f-49db-b1e2-f2438ae4c9aa	f0c6f273de9d2d85132cadf0969f4342	Open the evidence for job 1	hse-gm	aramco	FlaggedJobsTable	\N	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	t	get_flagged_jobs	["Notify the permit issuer", "Show these on the site map", "What should I act on before the night shift?"]	Anomaly Detection	2026-09-12 12:50:58.185269-04	0	Here are the three flagged jobs, all critical severity. FJ-001 and FJ-002 are both in Unit 2 — Hydrocracker: four workers on the level 3 platform are 47 minutes past permit HW-4471's expiry, and three workers on the north-face pipe rack are 35 minutes past permit HW-4468's expiry — both issued by the same night-shift permit issuer who is now off site. FJ-003 is in Unit 5 — Utilities, where a crew of three holding general permit GP-9033 crossed into the Coker drum skirt confined-space envelope 9 minutes ago.
a06b1250-6c85-4bec-89fb-4e9f01c390bc	32faf5a7c28deccebb39d4755e734178	Show the Unit 3 confined-space entry	hse-gm	aramco	PermitDetailCard	\N	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	t	get_permits	["Remind the crew of the gas test", "Who is the standby person?", "Show the entry and exit log"]	Anomaly Detection	2026-09-12 12:50:58.183469-04	0	CS-1182 is a confined-space entry permit for the Unit 3 Coker drum skirt, valid from 06:00 to 14:00. Two entrants are currently inside. The last gas test was 14 minutes ago — the next is due in 1 minute. The standby confirmation is unresolved. Three conditions are active: continuous gas monitoring, standby attendant present, and rescue equipment in place.
8e932bca-a5c6-4d42-8bf3-5407799e54c4	df703f22d997a8644ab7325a8818b650	Can I trust these numbers?	hse-gm	aramco	HeadcountReconciliationPanel	\N	[{"type": "HeadcountReconciliationPanel", "variant": null}]	t	get_reconciliation	["Show the 28 unmatched people", "Export the reconciliation for audit", "Which source is usually off?", "What should I act on before the night shift?"]	Converged Conversation	2026-09-12 12:50:58.18403-04	0	The gate access-control count and the permit system count disagree by 28 people. Gate shows 2,412 on site; the permit entrant log shows 2,384. The contractor timesheet system is the third source and it falls between the two. The 28-person gap traces to contractors who badged in but whose permits have not been formally activated — a process gap, not a safety gap, but it means we cannot produce a single defensible muster figure right now.
b19e7c90-d31f-4ba6-8b84-801c1a59c5ff	916dd5541b9c6d81f247ede42da912a6	Why do the headcounts disagree?	hse-gm	aramco	HeadcountReconciliationPanel	\N	[{"type": "HeadcountReconciliationPanel", "variant": null}]	t	get_reconciliation	["Show the 28 unmatched people", "Which source is usually off?", "What should I act on before the night shift?"]	Converged Conversation	2026-09-12 12:50:58.184329-04	0	The gate access-control count and the permit system count disagree by 28 people. Gate shows 2,412 on site; the permit entrant log shows 2,384. The contractor timesheet system is the third source and it falls between the two. The 28-person gap traces to contractors who badged in but whose permits have not been formally activated — a process gap, not a safety gap, but it means we cannot produce a single defensible muster figure right now.
93c23d1e-983c-4db2-8299-9c16b29dc392	ad096ce5d7f8b73075ccde12d31598fc	What should I act on before the night shift?	hse-gm	aramco	PrioritizedActionCards	\N	[{"type": "PrioritizedActionCards", "variant": null}]	t	get_actions	["Hand all three to supervisors", "Edit action 1", "Add to the shift handover report", "During a muster, who is unaccounted for?"]	Automated Action	2026-09-12 12:50:58.18457-04	0	Three actions, in priority order. One, clear the two expired hot-work permits on the flagged jobs or stop the work — safety bucket, highest risk. Two, confirm the Unit 3 gas test so the confined-space entry stays compliant. Three, reconcile the 28 unmatched people before the shift-change muster so the next count starts clean. I can draft each as a task with the evidence attached and hand them to the shift supervisors now.
99acf15c-be1b-49e5-a709-500172d25aff	1e86d01092a2bde251035b4b681e809e	During a muster, who is unaccounted for?	hse-gm	aramco	MusterBoard	\N	[{"type": "MusterBoard", "variant": null}, {"type": "MusterLocationMap", "variant": null}]	t	get_muster	["Show the 2 with no signal", "Message the zone wardens", "Start the incident log"]	Proactive Intelligence	2026-09-12 12:50:58.184788-04	0	The muster drill ran for 1 minute 30 seconds. 2,384 of 2,412 people are accounted for across the five muster points. The 28 outstanding all trace to the headcount reconciliation gap — they are the same unmatched contractors. Muster Point A — North is short by 6, Point C — East by 6, and Point E — Admin and Gate by 8. The projection shows full accounting in 3 minutes at the current check-in rate.
102ef37f-bbfc-487e-80a3-9d92ffd18d97	c53ef0707200495864aa2c4b2c04ae44	Show these on the site map	hse-gm	aramco	SiteMapPanel	\N	[{"type": "SiteMapPanel", "variant": "site"}]	t	get_site_geo	["Open the evidence for job 1", "Walk me through the confined-space entry on Unit 3.", "What should I act on before the night shift?"]	Converged Conversation	2026-09-12 12:50:58.185695-04	0	Here is the site map showing contractor surge exposure by zone. Unit 2 carries the highest load with 420 people and 88 active permits. Unit 3 follows with 385 people and 79 permits. Together they hold a third of the site population and two thirds of the high-risk permit activity.
b51b29bb-abcb-4709-ab57-c2de0e82e482	0224ed654757b581079b36c9fd1ab1f2	What is the riskiest job on site right now?	hse-gm	aramco	FlaggedJobsTable	\N	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	t	get_flagged_jobs	["Show me every job in a hazard zone without a valid permit.", "Show the Unit 3 confined-space entry", "What should I act on before the night shift?"]	Anomaly Detection	2026-09-12 12:50:58.18504-04	1	Here are the three flagged jobs, all critical severity. FJ-001 and FJ-002 are both in Unit 2 — Hydrocracker: four workers on the level 3 platform are 47 minutes past permit HW-4471's expiry, and three workers on the north-face pipe rack are 35 minutes past permit HW-4468's expiry — both issued by the same night-shift permit issuer who is now off site. FJ-003 is in Unit 5 — Utilities, where a crew of three holding general permit GP-9033 crossed into the Coker drum skirt confined-space envelope 9 minutes ago.
fac45951-ebd9-4aa2-ad3b-568cf4c93ac4	2cfcc2bf7ff52f2ed8ae342340b90cfe	Notify the crew and the supervisor	permit-issuer	aramco	FlaggedJobsTable	SELECT p.id,p.permit_type,p.issuer,z.name AS zone_name FROM permit p JOIN zone z ON z.id=p.zone_id WHERE p.permit_type=''general'' ORDER BY p.valid_from DESC	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Which permits expire in the next hour?", "Where is my issue-to-verify time going?", "Show me the permits that lapsed with workers still on location"]	Automated Action	2026-09-12 12:50:58.194522-04	0	\N
6e82c241-a288-43be-bae7-d259823218f1	20a4a8638dfc18bf7fa26dda57391c18	Where is my issue-to-verify time going?	permit-issuer	aramco	FlaggedJobsTable	SELECT p.permit_type,COUNT(*) AS total,COUNT(CASE WHEN p.status=''pending_verification'' THEN 1 END) AS pending FROM permit p WHERE p.valid_from>=NOW()-INTERVAL''24 hours'' GROUP BY p.permit_type ORDER BY total DESC	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	f	\N	["Which permits expire in the next hour?", "Why did the night shift not log an extension?", "Show me the permits that lapsed with workers still on location"]	Converged Conversation	2026-09-12 12:50:58.194708-04	0	\N
5513619e-7054-4f3a-acfa-9839162fcc5e	57ad15ea3fe73f974dbbc5a6b0933763	__greeting__	complex-manager	aramco	\N	\N	\N	f	\N	["Show me safety exposure by unit", "What is the schedule versus safety trade-off?", "What would I tell the board's safety committee today?"]	Proactive Intelligence	2026-09-12 12:50:58.19485-04	0	\N
0664302e-a60e-4a65-92e5-a381d658c0c7	2764a407bcf808c5fdc58ebb1a886a97	What is the schedule versus safety trade-off?	complex-manager	aramco	SiteMapPanel	SELECT z.name,z.hazard_level,COUNT(DISTINCT fj.id) AS violations FROM zone z LEFT JOIN flagged_job fj ON fj.zone_id=z.id WHERE z.hazard_level=''high'' GROUP BY z.id,z.name,z.hazard_level ORDER BY violations DESC	[{"type": "SiteMapPanel", "variant": "site"}]	f	\N	["Show me safety exposure by unit", "What happens at the next surge?", "What would I tell the board's safety committee today?"]	Converged Conversation	2026-09-12 12:50:58.195114-04	1	The schedule pressure is showing in Units 2 and 3 — both are running at high permit density with expired permits and workers still active. The trade-off is visible: verification steps are being skipped to keep the turnaround on track, which is creating the compliance gaps we are now managing.
9bd996b6-9107-46cd-9936-2b6a5496c2d9	c25c29c42fb17ff54b9d3dd01384c784	What happens at the next surge?	complex-manager	aramco	SiteMapPanel	SELECT z.name,z.occupancy_capacity,COUNT(DISTINCT w.id) AS current_workers FROM zone z LEFT JOIN worker w ON w.zone_id=z.id GROUP BY z.id,z.name,z.occupancy_capacity ORDER BY current_workers DESC	[{"type": "SiteMapPanel", "variant": "site"}]	f	\N	["What is the schedule versus safety trade-off?", "What would I tell the board's safety committee today?", "Show me safety exposure by unit"]	Converged Conversation	2026-09-12 12:50:58.195374-04	1	At the projected contractor surge, Units 2 and 3 will exceed 90% of their safe occupancy capacity within 2 hours. The current verification model will cover only 60% of incoming high-risk permits at peak load. Pre-assigning permit issuers to the surge zones now would reduce the verification backlog.
c97c0589-e4e9-4531-8f31-b4135db19b21	19dd08bcd57b45dc1447ad6b781c0f4d	Why are the headcounts disagreeing?	complex-manager	aramco	HeadcountReconciliationPanel	\N	[{"type": "HeadcountReconciliationPanel", "variant": null}]	t	get_reconciliation	["What would I tell the board's safety committee today?", "Show me safety exposure by unit", "What happens at the next surge?"]	Converged Conversation	2026-09-12 12:50:58.195244-04	0	The gate access-control count and the permit system count disagree by 28 people. This is a regulator-facing problem — if an emergency occurs we cannot produce a single defensible headcount. The gap traces to contractors who badged in but whose permits have not been formally activated.
e551e2ff-0a10-4784-a1b9-016d5980f6c7	f958034810ad3c77635fff6bc5b80eff	Show me the general permit in the confined-space zone	permit-issuer	aramco	PermitDetailCard	\N	[{"type": "IndoorViewer", "variant": null}, {"type": "PermitDetailCard", "variant": null}]	t	get_permits	["Notify the crew and the supervisor", "Show me the permits that lapsed with workers still on location", "Where is my issue-to-verify time going?"]	Anomaly Detection	2026-09-12 12:50:58.191989-04	1	GP-9033 is a general permit for Unit 3 general work areas, valid until 14:00. The crew of three holding this permit crossed into the Coker drum skirt confined-space envelope 9 minutes ago. A general permit does not authorize confined-space entry. The crew needs to be stopped immediately and a confined-space entry permit issued if work inside the envelope is required.
eaba69be-5ab5-416b-b529-aa32ffd38341	caa1f1ad3f9bbb7eaf5121af7444a407	Show me every job in a hazard zone without a valid permit.	hse-gm	aramco	FlaggedJobsTable	\N	[{"type": "SiteMapPanel", "variant": "flagged"}, {"type": "FlaggedJobsTable", "variant": null}]	t	get_flagged_jobs	["Who is the day-shift permit issuer for Unit 2 who can authorize an emergency stop or extension for HW-4471 and HW-4468?", "Can you contact the supervisor of the FJ-003 crew in the Coker drum skirt and confirm whether a confined-space entry permit has been applied for?", "What is the ignition risk level in the Unit 2 Hydrocracker zone right now given two hot-work crews are operating on expired permits?"]	Anomaly Detection	2026-09-12 20:47:40.505157-04	0	There are exactly three jobs in a hazard zone without a valid permit, all critical severity, as of 47 seconds ago. FJ-001 and FJ-002 are both in Unit 2 — Hydrocracker: four workers on the level 3 platform are 47 minutes past the expiry of hot-work permit HW-4471, and three workers on the north-face pipe rack are 35 minutes past the expiry of HW-4468 — both permits were issued by the same night-shift issuer who is now off site and neither requested an extension. FJ-003 is in Unit 5 — Utilities, where three workers holding general permit GP-9033 crossed into the Coker drum skirt confined-space envelope 9 minutes ago, a zone that permit does not authorize them to enter.
\.

COPY public.reconciliation_run (id, as_of, resolved_count, method, audit_logged) FROM stdin;
25befb63-f11e-45be-8d75-047bfa583659	2026-08-05 02:41:00-04	2412	Match gate badge-ins to live location signal. Badge-ins with no active location signal are held as exceptions.	t
9a7fde82-6677-4c4e-b866-1368a67013b9	2026-08-05 02:26:00-04	2380	Match gate badge-ins to live location signal.	t
f7dd288a-15c4-4166-afe2-377419b099bd	2026-08-05 02:11:00-04	2380	Match gate badge-ins to live location signal.	t
26875227-bbf1-4faf-abf9-01db2417da27	2026-08-05 01:56:00-04	2384	Match gate badge-ins to live location signal.	t
aeb43952-5619-471f-895d-37a6d6c716c4	2026-08-05 01:41:00-04	2410	Match gate badge-ins to live location signal.	t
994a43d7-b41e-4bfd-8391-a3fbbd251ade	2026-08-05 01:26:00-04	2385	Match gate badge-ins to live location signal.	t
b0b85ecc-a37f-4844-b598-138673d89fa7	2026-08-05 01:11:00-04	2386	Match gate badge-ins to live location signal.	t
16879a77-8c32-40a4-849c-109a3a9b247d	2026-08-05 00:56:00-04	2396	Match gate badge-ins to live location signal.	t
5b557f77-ae01-46d9-8c2b-52fb2d06242a	2026-08-05 00:41:00-04	2396	Match gate badge-ins to live location signal.	t
aac7c044-11b4-4585-babd-4c87e44aa037	2026-08-05 00:26:00-04	2400	Match gate badge-ins to live location signal.	t
d68f976c-36ef-48cc-a398-ea0972076da8	2026-08-05 00:11:00-04	2405	Match gate badge-ins to live location signal.	t
675d0ddc-89f7-4ea2-99af-04e67ca21c78	2026-08-04 23:56:00-04	2397	Match gate badge-ins to live location signal.	t
ed33e41d-561f-42f3-9b25-c1bb79d313b6	2026-08-04 23:41:00-04	2403	Match gate badge-ins to live location signal.	t
31c31065-5ae8-4a82-8e0f-7ee43a10ec6a	2026-08-04 23:26:00-04	2408	Match gate badge-ins to live location signal.	t
684620b1-edca-4d73-8550-4a89daddd29e	2026-08-04 23:11:00-04	2402	Match gate badge-ins to live location signal.	t
f56325b8-d1a4-4e0e-9883-ada72eda8e2d	2026-08-04 22:56:00-04	2396	Match gate badge-ins to live location signal.	t
4c301957-46f9-4086-807a-595f74f319d4	2026-08-04 22:41:00-04	2394	Match gate badge-ins to live location signal.	t
de1320df-94c1-4ef2-863c-a34e1e658835	2026-08-04 22:26:00-04	2393	Match gate badge-ins to live location signal.	t
c9267b3e-d1c7-48ab-bc48-c8162e69cb76	2026-08-04 22:11:00-04	2403	Match gate badge-ins to live location signal.	t
c514b103-c31e-4313-b69d-5f8fc36ff341	2026-08-04 21:56:00-04	2404	Match gate badge-ins to live location signal.	t
\.

COPY public.reconciliation_source (id, reconciliation_id, source_name, record_count, delta, reliability, note) FROM stdin;
c9b2cf09-a8ac-4e65-b0ac-5f0d2c19677d	25befb63-f11e-45be-8d75-047bfa583659	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
e9661013-e6b7-41e0-b4b0-2c10d8f5dc12	25befb63-f11e-45be-8d75-047bfa583659	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
21c48799-445a-4a6c-8a8a-21b9d4f44951	25befb63-f11e-45be-8d75-047bfa583659	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
01a8713e-f97d-41dd-8ba8-5b97cca383d8	9a7fde82-6677-4c4e-b866-1368a67013b9	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
b67b5a70-885d-4ef3-b9c3-c2311242c0b4	9a7fde82-6677-4c4e-b866-1368a67013b9	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
c104d3c0-85bd-4ae7-9f1f-e86cd2dbb831	9a7fde82-6677-4c4e-b866-1368a67013b9	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
1ed11dbe-5af7-4315-92a2-801f4dd93bdd	f7dd288a-15c4-4166-afe2-377419b099bd	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
9e45556a-8bfc-4a41-bb2f-d4a5341bc872	f7dd288a-15c4-4166-afe2-377419b099bd	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
5e34c024-6fb7-4ff0-a045-a586cd1011e7	f7dd288a-15c4-4166-afe2-377419b099bd	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
cb62805d-378f-47cc-8405-062c6e5f8cba	26875227-bbf1-4faf-abf9-01db2417da27	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
3659537c-74de-4086-a367-6e1e693e2117	26875227-bbf1-4faf-abf9-01db2417da27	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
0c581c26-ccdf-496a-a2f0-3d683629c864	26875227-bbf1-4faf-abf9-01db2417da27	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
100a0cf5-fe67-432a-8735-ea9944645d3b	aeb43952-5619-471f-895d-37a6d6c716c4	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
c5e0c346-a8cb-4d61-8dfd-696c217a50d3	aeb43952-5619-471f-895d-37a6d6c716c4	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
05f85b29-4d6a-42e4-b217-3e09ec4e952f	aeb43952-5619-471f-895d-37a6d6c716c4	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
c26fa359-0a36-4e10-ac93-0df3e83afcb6	994a43d7-b41e-4bfd-8391-a3fbbd251ade	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
cbf343bf-331c-4bf0-a0ab-05d51ca7198a	994a43d7-b41e-4bfd-8391-a3fbbd251ade	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
5f08db6c-bd60-4807-9e2e-705aa33e241c	994a43d7-b41e-4bfd-8391-a3fbbd251ade	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
e50ad722-137f-4410-b14d-d2f957814276	b0b85ecc-a37f-4844-b598-138673d89fa7	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
bd4066e9-b59c-4a81-b4d8-ed32b7b82f89	b0b85ecc-a37f-4844-b598-138673d89fa7	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
5adcf559-8df6-4e95-94ec-6cb26695ed43	b0b85ecc-a37f-4844-b598-138673d89fa7	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
1fcef4db-343f-47ed-b219-72cddcbd4536	16879a77-8c32-40a4-849c-109a3a9b247d	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
bdff745f-21e0-462f-bb65-f92282871ba6	16879a77-8c32-40a4-849c-109a3a9b247d	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
58e30be6-2bb6-4295-8127-8d84306aad43	16879a77-8c32-40a4-849c-109a3a9b247d	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
01312a8f-123e-482c-b667-0a328b8d0f4c	5b557f77-ae01-46d9-8c2b-52fb2d06242a	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
fe7fb882-6adf-4c40-909a-99fe518c67cb	5b557f77-ae01-46d9-8c2b-52fb2d06242a	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
756a2bd2-9221-45c0-b1a9-50c5162d2eaf	5b557f77-ae01-46d9-8c2b-52fb2d06242a	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
9944b234-df3a-4057-b373-0cacbdeb5858	aac7c044-11b4-4585-babd-4c87e44aa037	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
9341c908-331d-43fc-bfe8-2980f6eb91d6	aac7c044-11b4-4585-babd-4c87e44aa037	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
b7eb6e21-39df-4aaa-a976-d35c45db9bfd	aac7c044-11b4-4585-babd-4c87e44aa037	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
18d6fbc5-6e11-4e1d-8e9c-91307b353a04	d68f976c-36ef-48cc-a398-ea0972076da8	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
a0b8cd4e-43df-4fb4-b30a-ffe5dcbd0317	d68f976c-36ef-48cc-a398-ea0972076da8	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
07386070-3b78-4dec-9ad3-da603fdf2a2c	d68f976c-36ef-48cc-a398-ea0972076da8	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
d50a74bb-8d18-42fd-8b22-0ec5c78b4636	675d0ddc-89f7-4ea2-99af-04e67ca21c78	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
a97ff021-ff7c-40a2-8085-f7984af6386d	675d0ddc-89f7-4ea2-99af-04e67ca21c78	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
b49d2e98-b293-41bb-9546-79801d86789f	675d0ddc-89f7-4ea2-99af-04e67ca21c78	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
5fb057b2-1457-4436-b7ce-fb499634bc3b	ed33e41d-561f-42f3-9b25-c1bb79d313b6	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
2733e1e4-7cf7-4a14-acba-d03f81b592c4	ed33e41d-561f-42f3-9b25-c1bb79d313b6	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
e0fc883d-891f-4a6d-90d4-940901155250	ed33e41d-561f-42f3-9b25-c1bb79d313b6	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
443ff2e3-1fee-4e7b-8d26-08203019411a	31c31065-5ae8-4a82-8e0f-7ee43a10ec6a	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
9fef8bc2-da26-4b11-a90a-204e44643ad2	31c31065-5ae8-4a82-8e0f-7ee43a10ec6a	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
22b662ea-0898-4a47-8e13-44b3ed8e417b	31c31065-5ae8-4a82-8e0f-7ee43a10ec6a	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
540d0e9a-1b5a-454c-b1b5-f70cfc5e9b08	684620b1-edca-4d73-8550-4a89daddd29e	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
f8522655-c172-4db3-9857-d2e2390c7353	684620b1-edca-4d73-8550-4a89daddd29e	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
b8eec1ff-9ebf-46d5-9a7b-ec59bce4a497	684620b1-edca-4d73-8550-4a89daddd29e	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
1c5415e0-f6b7-4434-9508-d0c8fc67c3ff	f56325b8-d1a4-4e0e-9883-ada72eda8e2d	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
ee38da34-ac66-4f1b-8a3d-f79c5868b71d	f56325b8-d1a4-4e0e-9883-ada72eda8e2d	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
7b91f429-fdaa-42ab-8942-5054da37fabb	f56325b8-d1a4-4e0e-9883-ada72eda8e2d	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
0784687c-f614-4855-9d78-5c1341d40652	4c301957-46f9-4086-807a-595f74f319d4	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
e937f901-93a7-4a40-841d-d2412a2d9602	4c301957-46f9-4086-807a-595f74f319d4	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
d708b6fb-537d-41d6-81b8-87c3fd93a722	4c301957-46f9-4086-807a-595f74f319d4	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
1210de64-6911-4304-8ff0-91fab7964f7f	de1320df-94c1-4ef2-863c-a34e1e658835	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
ffb4ebc3-f0d5-4428-9aac-f3af1fa315dc	de1320df-94c1-4ef2-863c-a34e1e658835	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
1ffb0646-dd73-4717-a3e0-ab5a79999f21	de1320df-94c1-4ef2-863c-a34e1e658835	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
7b8ad5df-e496-475d-b2d6-1c3a63bcb760	c9267b3e-d1c7-48ab-bc48-c8162e69cb76	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
8c02ff97-14ce-43a5-9833-195d3f7b51a3	c9267b3e-d1c7-48ab-bc48-c8162e69cb76	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
c27a2ec9-24c4-4976-87a3-d6a23164a8b6	c9267b3e-d1c7-48ab-bc48-c8162e69cb76	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
de549711-3a44-486d-b3d4-4245376f9b24	c514b103-c31e-4313-b69d-5f8fc36ff341	Gate access-control	2440	28	high for entry events, low for current presence	Counts badge-ins net of badge-outs.
3f758b03-666a-463d-9064-045a843b40e6	c514b103-c31e-4313-b69d-5f8fc36ff341	Permit-to-work system	2400	-12	high, but partial coverage by design	Counts only people working under an open permit.
49d4c274-d5ec-4b5c-812b-9beefe394550	c514b103-c31e-4313-b69d-5f8fc36ff341	Contractor timesheets	2380	-32	lowest — consistently the laggiest source	Submitted per contractor company on each company's own cadence.
\.

COPY public.signal (id, signal_type, title, description, impact, severity, risk_bucket, recommended_action, sources, detected_at, trend, related_segment, metrics, confidence_score, confidence_rationale, confidence_signals_used, confidence_threshold, model_version, validated_at, escalation_triggered, escalation_reason, escalation_route_to) FROM stdin;
SIG-ARAMCO-SUP-001	expired_permit_live_occupancy	Two Expired Hot-Work Permits — Seven People Still On Location	HW-4471 and HW-4468 on the Unit 2 hydrocracker both lapsed within the last hour. Seven workers still show an active location signal inside the hazard zone. Neither issuer logged an extension and both are off site with the night shift.	high	critical	safety	\N	["Permit-to-work system", "Location and tag data (vendor-agnostic)"]	2026-08-05 02:47:00-04	worsening	UNIT-2-HOTWORK	{"workers": 7, "expiredPermits": 2, "minutesPastExpiry": [47, 35]}	96	Permit expiry confirmed from PTW system; worker presence confirmed from two independent location feeds.	["Permit-to-Work System (electronic)", "Location tracking system", "Gate access-control"]	70	hse-permit-breach-v1.0	2026-08-05 02:47:00-04	t	Live occupancy inside a hazard zone on a lapsed hot-work permit	Unit 2 shift supervisor and permit issuer
SIG-ARAMCO-SUP-002	permit_condition_due	CS-1182 Gas Test Due — Two Entrants Inside	The Unit 3 confined-space entry is compliant on every condition except the gas-test interval, which is due in about a minute. Two entrants are inside and the standby attendant is confirmed at the entry point by location and camera.	medium	warning	safety	\N	["Permit-to-work system", "Location and tag data (vendor-agnostic)", "CCTV and presence"]	2026-08-05 02:53:00-04	stable	UNIT-3-CS	{"permitId": "CS-1182", "dueInMinutes": 1, "intervalMinutes": 15, "lastTestMinutesAgo": 14}	95	Gas test timer derived from permit condition log with high reliability.	["Permit-to-Work System (electronic)", "Gas detection system"]	70	hse-permit-breach-v1.0	2026-08-05 02:53:00-04	t	Confined-space gas test interval approaching breach	Unit 3 permit issuer and standby attendant
SIG-ARAMCO-SUP-003	shift_fatigue_exposure	Two Crew on a Second Consecutive Shift in a Hazard Zone	Two of the seven workers on the flagged Unit 2 jobs are on their second consecutive shift, matched from gate badge history against contractor timesheets. Worth knowing before choosing between extending the permit and stopping the work.	medium	info	safety	\N	["Gate access-control", "Contractor timesheets"]	2026-08-05 02:45:00-04	watch	UNIT-2-ASSET	{"assetId": "AST-C2101", "healthScore": 62, "linkedPermits": 6, "linkedHighRiskPermits": 2}	82	Asset health from condition-monitoring system; permit count from PTW system spatial join.	["Condition-monitoring system", "Permit-to-Work System (electronic)"]	70	hse-permit-breach-v1.0	2026-08-05 02:45:00-04	f	\N	\N
SIG-ARAMCO-HSE-001	headcount_reconciliation_gap	Headcount Sources Disagree — No Single Defensible Figure	The gate access-control headcount and the number the permit system says are working rarely match, and contractor timesheets tell a third story. Today: gate 2,440, permit 2,400, timesheets 2,380. During muster drills, accounting for everyone takes far longer than it should because the count starts from a number nobody trusts.	high	critical	safety	\N	["Gate access-control", "Permit-to-work system", "Contractor timesheets"]	2026-09-12 09:59:26.015721-04	persistent	\N	\N	97	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-HSE-002	contractor_surge_exposure	Contractor Surge Outpacing Manual Controls	The next turnaround will push contractor headcount toward 3,000 and roughly double daily permit volume, stretching current manual controls past their limit. Verification capacity does not scale with permit volume, so the share of high-risk work that is actually checked falls exactly when contractor density peaks.	high	warning	safety	\N	["Turnaround resource plan", "Gate access-control projections", "Permit-to-work system"]	2026-09-12 09:59:26.015721-04	worsening	\N	\N	87	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-HSE-004	equipment_condition	Unit 2 Compressor Degraded — Hot Work Inside Its Radius	C-2101 is in vibration alarm at 5.8 mm/s against a 7.1 trip, up 41% in fourteen days, with about 21 days of remaining useful life on the current trend. Six open permits sit inside its exclusion radius and two of them are hot work — the same two already running past expiry.	high	warning	safety	\N	["Condition-monitoring system", "Distributed control system", "Permit-to-work system"]	2026-09-12 09:59:26.015721-04	worsening	\N	\N	71	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-HSE-003	verification_idle_time	Turnaround Idle Time from Permit Verification	Crews can spend a large share of a shift waiting on permit checks and manual verifications. Low-risk permits queue behind high-risk ones for the same verifier, so routine jobs wait on a check that takes minutes. Connecting permits with live location could cut idle time and shorten the turnaround critical path.	medium	info	safety	\N	["Permit-to-work system", "Gate dwell data"]	2026-09-12 09:59:26.015721-04	stable	\N	\N	85	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-ISS-001	permit_lapsed_live_occupancy	Two Permits Closed On Paper, Still Occupied On Site	HW-4471 and HW-4468 both lapsed without an extension and still show seven workers inside the Unit 2 hazard zone. From inside the permit book both records simply read closed — only live location reveals the work never stopped.	high	critical	safety	\N	["Permit-to-work system", "Location and tag data (vendor-agnostic)"]	2026-09-12 09:59:26.015721-04	worsening	\N	\N	96	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-ISS-002	zone_scope_breach	General Permit Used Inside a Confined-Space Envelope	GP-9033 is a valid general permit, but the crew holding it crossed into the Unit 3 confined-space envelope at 06:44. The permit record has not changed, so nothing in the permit system would ever surface this.	high	critical	safety	\N	["Permit-to-work system", "Location and tag data (vendor-agnostic)"]	2026-09-12 09:59:26.015721-04	worsening	\N	\N	95	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-ISS-003	night_shift_extension_pattern	Night-Shift Extensions Are Logged Late, Systematically	61% of permits issued between 02:00 and 06:00 are closed or extended more than fifteen minutes after their validity window, against 12% on day shift. Both of this morning's lapses fit the pattern. A process finding, not a discipline one.	medium	warning	safety	\N	["Permit-to-work system", "Gate access-control", "HSE reporting and statistics"]	2026-09-12 09:59:26.015721-04	persistent	\N	\N	87	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-CM-001	exposure_concentration	Safety Exposure and Schedule Pressure Land on the Same Two Units	All three jobs running outside their permit conditions are in Unit 2 and Unit 3 — the same two units carrying the turnaround critical path. Those units hold a third of the site population and two thirds of the high-risk permit load.	high	critical	safety	\N	["Permit-to-work system", "Location and tag data (vendor-agnostic)", "Maintenance work orders"]	2026-09-12 09:59:26.015721-04	worsening	\N	\N	92	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-CM-002	regulator_facing_headcount	Reported Headcount Has Disagreed With the Gate Every Day This Week	Gate, permit and contractor timesheet figures have diverged on every day of the current turnaround week. This is a regulator-facing and board-facing exposure rather than an operational one: the site cannot currently defend a single population number without reconstructing it.	high	critical	safety	\N	["Gate access-control", "Permit-to-work system", "Contractor timesheets"]	2026-09-12 09:59:26.015721-04	persistent	\N	\N	97	\N	\N	\N	\N	\N	f	\N	\N
SIG-ARAMCO-CM-003	verification_capacity_gap	Verification Coverage Falls as the Next Surge Lands	At the projected contractor peak of about 3,000, daily permit volume roughly doubles while verification capacity does not. The exposure scales with the gap between permits issued and permits verified, and that gap widens fastest exactly when contractor density peaks.	high	warning	safety	\N	["Turnaround resource plan", "Permit-to-work system", "Gate access-control"]	2026-09-12 09:59:26.015721-04	worsening	\N	\N	86	\N	\N	\N	\N	\N	f	\N	\N
\.

COPY public.worker (id, tag_number, zone_id, role, location_source, last_coordinates, last_seen) FROM stdin;
W-0371	431	Z2	contractor	location	[51.49897574214472, -0.12203634036859748]	2026-08-05 02:52:00-04
W-0001	8114	Z1	contractor	gate	[51.53276079437272, -0.1437337787594156]	2026-08-05 02:41:00-04
W-0002	8174	Z1	contractor	gate	[51.49911034887352, -0.16252927215885643]	2026-08-05 02:47:00-04
W-0003	269	Z1	staff	gate	[51.492689130105674, -0.12546489518047513]	2026-08-05 02:46:00-04
W-0004	3280	Z1	contractor	location	[51.46319566948704, -0.16232554380499153]	2026-08-05 02:44:00-04
W-0005	3992	Z1	contractor	gate	[51.53627912350746, -0.14075359804854057]	2026-08-05 02:41:00-04
W-0006	8496	Z1	contractor	gate	[51.52742215587406, -0.12066601615559007]	2026-08-05 02:43:00-04
W-0007	9912	Z1	contractor	location	[51.46532333535064, -0.08705108323113543]	2026-08-05 02:52:00-04
W-0008	9113	Z1	contractor	location	[51.483793627463804, -0.13932885559047906]	2026-08-05 02:47:00-04
W-0009	3215	Z1	contractor	gate	[51.54639703583544, -0.14582714962883686]	2026-08-05 02:45:00-04
W-0010	6807	Z1	contractor	location	[51.50159630010745, -0.13268096020906722]	2026-08-05 02:42:00-04
W-0011	658	Z1	contractor	gate	[51.55341649057141, -0.17428536256755597]	2026-08-05 02:49:00-04
W-0012	3805	Z1	staff	gate	[51.55332334906346, -0.1451738665091942]	2026-08-05 02:41:00-04
W-0013	9948	Z1	contractor	location	[51.5518214394587, -0.13806489028478985]	2026-08-05 02:41:00-04
W-0014	769	Z1	staff	gate	[51.464070140965255, -0.1743266138938589]	2026-08-05 02:53:00-04
W-0015	518	Z1	contractor	gate	[51.51406326364365, -0.1310662236287825]	2026-08-05 02:49:00-04
W-0016	1273	Z1	contractor	location	[51.468150321775184, -0.10156269374366754]	2026-08-05 02:43:00-04
W-0017	4231	Z1	contractor	location	[51.514015287920046, -0.0966822363884101]	2026-08-05 02:40:00-04
W-0018	5413	Z1	contractor	gate	[51.52631191878405, -0.1273608691026366]	2026-08-05 02:52:00-04
W-0019	5019	Z1	staff	location	[51.54342929614329, -0.13817198057546815]	2026-08-05 02:44:00-04
W-0020	4567	Z1	contractor	location	[51.51862091411676, -0.16410899349962782]	2026-08-05 02:45:00-04
W-0021	9162	Z1	contractor	gate	[51.48654618883422, -0.17410517679869064]	2026-08-05 02:52:00-04
W-0022	2924	Z1	contractor	location	[51.48514808203241, -0.11264645282390336]	2026-08-05 02:40:00-04
W-0023	7178	Z1	contractor	location	[51.47555203821438, -0.10186261423336647]	2026-08-05 02:39:00-04
W-0024	4859	Z1	contractor	location	[51.52876660596912, -0.12305581547684992]	2026-08-05 02:46:00-04
W-0025	1240	Z1	contractor	location	[51.462032249580055, -0.10488130664121538]	2026-08-05 02:47:00-04
W-0026	6625	Z1	contractor	location	[51.50182697936807, -0.11771185745924827]	2026-08-05 02:39:00-04
W-0027	6354	Z1	contractor	gate	[51.46331447751166, -0.13564837599136248]	2026-08-05 02:47:00-04
W-0028	3011	Z1	contractor	location	[51.461134559648734, -0.08096934754636195]	2026-08-05 02:41:00-04
W-0029	3163	Z1	contractor	location	[51.465687909832596, -0.0986300025704394]	2026-08-05 02:53:00-04
W-0030	2380	Z1	contractor	location	[51.494865536688714, -0.1360341021831858]	2026-08-05 02:40:00-04
W-0031	2319	Z1	staff	gate	[51.508400456157084, -0.13290274169763508]	2026-08-05 02:44:00-04
W-0032	2192	Z1	staff	gate	[51.50227183022344, -0.12347506976832504]	2026-08-05 02:47:00-04
W-0033	9086	Z1	contractor	location	[51.4595082860517, -0.07786205415391495]	2026-08-05 02:49:00-04
W-0034	6612	Z1	contractor	location	[51.460044013534976, -0.07860312594803796]	2026-08-05 02:44:00-04
W-0035	4398	Z1	staff	location	[51.49109804064538, -0.15264901127967878]	2026-08-05 02:43:00-04
W-0036	7054	Z1	contractor	location	[51.52699789525053, -0.14724776942704693]	2026-08-05 02:48:00-04
W-0037	7185	Z1	contractor	gate	[51.50014577062257, -0.10521602372269849]	2026-08-05 02:45:00-04
W-0038	6827	Z1	contractor	location	[51.492981160081065, -0.13225248623176672]	2026-08-05 02:53:00-04
W-0039	4575	Z1	staff	location	[51.501733952306445, -0.15000061031055398]	2026-08-05 02:48:00-04
W-0040	5493	Z1	contractor	location	[51.55585269155937, -0.1740114664290869]	2026-08-05 02:53:00-04
W-0041	7265	Z1	staff	location	[51.52547935468835, -0.11852095488348108]	2026-08-05 02:46:00-04
W-0042	6008	Z1	staff	location	[51.545519913073086, -0.12821864997586013]	2026-08-05 02:42:00-04
W-0043	6827	Z1	contractor	location	[51.45991342283206, -0.09664213545733256]	2026-08-05 02:42:00-04
W-0044	3634	Z1	contractor	gate	[51.46042518112983, -0.13231569912655544]	2026-08-05 02:50:00-04
W-0045	4577	Z1	contractor	location	[51.51527352887029, -0.17223771229242277]	2026-08-05 02:43:00-04
W-0046	9731	Z1	contractor	gate	[51.52896308550064, -0.17371850888546037]	2026-08-05 02:48:00-04
W-0047	9029	Z1	contractor	gate	[51.50964095423684, -0.07941570337706765]	2026-08-05 02:52:00-04
W-0048	6706	Z1	contractor	location	[51.54973264377565, -0.11186030506060687]	2026-08-05 02:42:00-04
W-0049	4049	Z1	contractor	location	[51.5559914684961, -0.09699311481611189]	2026-08-05 02:53:00-04
W-0050	1983	Z1	contractor	location	[51.4792161315066, -0.1345078266447292]	2026-08-05 02:42:00-04
W-0051	4487	Z1	contractor	location	[51.5159750627632, -0.11569808881567706]	2026-08-05 02:49:00-04
W-0052	5798	Z1	contractor	gate	[51.49090107566262, -0.16882573958693498]	2026-08-05 02:51:00-04
W-0053	4652	Z1	staff	location	[51.459905204631944, -0.1285392730550609]	2026-08-05 02:39:00-04
W-0054	1500	Z1	contractor	location	[51.493166389921235, -0.14575540844017554]	2026-08-05 02:49:00-04
W-0055	6095	Z1	contractor	location	[51.518609921689965, -0.08062737331757304]	2026-08-05 02:53:00-04
W-0056	3597	Z1	staff	location	[51.499369268196936, -0.13187986286323972]	2026-08-05 02:53:00-04
W-0057	8867	Z1	contractor	location	[51.48325673053418, -0.15492215116585473]	2026-08-05 02:45:00-04
W-0058	7531	Z1	contractor	location	[51.519887663353614, -0.09179167403690919]	2026-08-05 02:52:00-04
W-0059	2400	Z1	contractor	location	[51.50206483009353, -0.14184879358823133]	2026-08-05 02:47:00-04
W-0060	6513	Z1	contractor	location	[51.48028905076592, -0.17009419395811548]	2026-08-05 02:39:00-04
W-0061	3034	Z1	staff	location	[51.51122109445193, -0.08828706480173519]	2026-08-05 02:47:00-04
W-0062	8730	Z1	staff	location	[51.54795130622471, -0.0871282313572894]	2026-08-05 02:41:00-04
W-0063	5385	Z1	contractor	location	[51.49905458797675, -0.15546878802297398]	2026-08-05 02:50:00-04
W-0064	6564	Z1	contractor	location	[51.536062578109025, -0.15663788660285613]	2026-08-05 02:48:00-04
W-0065	5117	Z1	contractor	location	[51.49287962761452, -0.10698796265601998]	2026-08-05 02:50:00-04
W-0066	3481	Z1	contractor	location	[51.517100206641416, -0.08881338620680952]	2026-08-05 02:43:00-04
W-0067	7572	Z1	contractor	gate	[51.50836106823022, -0.15143785206402682]	2026-08-05 02:48:00-04
W-0068	9675	Z1	staff	gate	[51.46945265970402, -0.14397296918561867]	2026-08-05 02:44:00-04
W-0069	1654	Z1	contractor	gate	[51.55121726187647, -0.1139826267549324]	2026-08-05 02:40:00-04
W-0070	6445	Z1	staff	gate	[51.4668664560804, -0.16706365769151235]	2026-08-05 02:51:00-04
W-0071	8868	Z1	contractor	location	[51.47089750222139, -0.13058859710682713]	2026-08-05 02:53:00-04
W-0072	6081	Z1	contractor	location	[51.52394530503678, -0.1559419492047372]	2026-08-05 02:45:00-04
W-0073	1942	Z1	staff	location	[51.50112347025952, -0.11125374232600128]	2026-08-05 02:51:00-04
W-0074	7808	Z1	contractor	location	[51.46926575597887, -0.1179879407392651]	2026-08-05 02:42:00-04
W-0075	5884	Z1	contractor	location	[51.51180277166743, -0.08109634560934642]	2026-08-05 02:39:00-04
W-0076	2655	Z1	contractor	location	[51.50626279955943, -0.09983061703715115]	2026-08-05 02:43:00-04
W-0077	4560	Z1	contractor	location	[51.482785847327655, -0.09535848775647951]	2026-08-05 02:49:00-04
W-0078	360	Z1	staff	gate	[51.52433027758037, -0.08313567380295545]	2026-08-05 02:42:00-04
W-0079	5185	Z1	contractor	location	[51.53658194899569, -0.14943497376535975]	2026-08-05 02:50:00-04
W-0080	6618	Z1	contractor	gate	[51.46585162155612, -0.13954306280899864]	2026-08-05 02:45:00-04
W-0081	8870	Z1	contractor	location	[51.47898815958536, -0.11167381247665731]	2026-08-05 02:45:00-04
W-0082	3124	Z1	contractor	gate	[51.5015595856858, -0.17445707001171695]	2026-08-05 02:49:00-04
W-0083	7466	Z1	staff	location	[51.47725610288031, -0.15869318380981914]	2026-08-05 02:40:00-04
W-0084	9377	Z1	contractor	gate	[51.54187015001764, -0.13183482988613685]	2026-08-05 02:40:00-04
W-0085	3477	Z1	staff	gate	[51.54579641032702, -0.0973669069336566]	2026-08-05 02:50:00-04
W-0086	4605	Z1	contractor	gate	[51.52295630445275, -0.11744451554724095]	2026-08-05 02:51:00-04
W-0087	9572	Z1	staff	gate	[51.46143761795021, -0.09524088450634206]	2026-08-05 02:52:00-04
W-0088	5110	Z1	contractor	location	[51.50209983895692, -0.1551054096116435]	2026-08-05 02:46:00-04
W-0089	4889	Z1	contractor	gate	[51.528266594948995, -0.10874217963427352]	2026-08-05 02:43:00-04
W-0090	6676	Z1	contractor	location	[51.518692630549424, -0.0844302101998429]	2026-08-05 02:44:00-04
W-0091	8206	Z1	contractor	gate	[51.542352020584396, -0.08411648088389587]	2026-08-05 02:51:00-04
W-0092	2540	Z1	contractor	gate	[51.55459134718276, -0.08203827256689694]	2026-08-05 02:40:00-04
W-0093	5232	Z1	staff	location	[51.5143080694456, -0.0974439963034088]	2026-08-05 02:41:00-04
W-0094	9089	Z1	contractor	location	[51.5396288481079, -0.17329940388948997]	2026-08-05 02:44:00-04
W-0095	644	Z1	contractor	location	[51.49137676398707, -0.09508264546633514]	2026-08-05 02:48:00-04
W-0096	5077	Z1	contractor	gate	[51.500427952558034, -0.08014034711944684]	2026-08-05 02:41:00-04
W-0097	6364	Z1	contractor	location	[51.54528854736089, -0.09124197141108203]	2026-08-05 02:52:00-04
W-0098	4896	Z1	contractor	location	[51.475323502478986, -0.13665212565112933]	2026-08-05 02:53:00-04
W-0099	4463	Z1	contractor	gate	[51.48952069958582, -0.11912862905075564]	2026-08-05 02:39:00-04
W-0100	5022	Z1	contractor	location	[51.544556148350466, -0.12414287452725131]	2026-08-05 02:49:00-04
W-0101	1062	Z1	contractor	gate	[51.481708410713864, -0.17423356555367578]	2026-08-05 02:41:00-04
W-0102	504	Z1	contractor	location	[51.520396429767516, -0.14544333121366682]	2026-08-05 02:40:00-04
W-0103	7805	Z1	contractor	location	[51.51545808754039, -0.10764636701894253]	2026-08-05 02:39:00-04
W-0104	3452	Z1	staff	location	[51.49548865243087, -0.09024997214924182]	2026-08-05 02:39:00-04
W-0105	2839	Z1	contractor	gate	[51.527156440601345, -0.08456310690258553]	2026-08-05 02:41:00-04
W-0106	7379	Z1	staff	location	[51.45987182721393, -0.1093791387028737]	2026-08-05 02:39:00-04
W-0107	9505	Z1	contractor	location	[51.46679469936552, -0.16988236473119384]	2026-08-05 02:52:00-04
W-0108	5513	Z1	contractor	location	[51.46479328031116, -0.0907476682975028]	2026-08-05 02:48:00-04
W-0109	5426	Z1	staff	location	[51.53510869995683, -0.1188284841467527]	2026-08-05 02:51:00-04
W-0110	6049	Z1	contractor	location	[51.47742439153307, -0.12103054300013938]	2026-08-05 02:48:00-04
W-0111	8989	Z1	contractor	gate	[51.518528653663424, -0.12607727222582124]	2026-08-05 02:44:00-04
W-0112	5141	Z1	contractor	location	[51.53214634813779, -0.15576179303636256]	2026-08-05 02:40:00-04
W-0113	8562	Z1	contractor	location	[51.513870494797594, -0.13092926152064988]	2026-08-05 02:42:00-04
W-0114	5741	Z1	contractor	gate	[51.49635153106672, -0.09938064038959933]	2026-08-05 02:42:00-04
W-0115	6766	Z1	contractor	location	[51.50036021957596, -0.10428337373404875]	2026-08-05 02:43:00-04
W-0116	4350	Z1	staff	gate	[51.46333721407417, -0.11037996637764066]	2026-08-05 02:42:00-04
W-0117	7705	Z1	contractor	location	[51.4624573823174, -0.10957558645888281]	2026-08-05 02:48:00-04
W-0118	5701	Z1	contractor	location	[51.500648846342216, -0.13955079002065307]	2026-08-05 02:53:00-04
W-0119	2119	Z1	contractor	gate	[51.484543728807886, -0.1694755385117595]	2026-08-05 02:52:00-04
W-0120	1019	Z1	contractor	location	[51.54016947952669, -0.08245008665429704]	2026-08-05 02:41:00-04
W-0121	8595	Z1	staff	location	[51.53483137832419, -0.1632800436803804]	2026-08-05 02:41:00-04
W-0122	2046	Z1	contractor	location	[51.495686697762736, -0.15496970869283527]	2026-08-05 02:48:00-04
W-0123	6908	Z1	contractor	location	[51.48809450687477, -0.14258970367568374]	2026-08-05 02:48:00-04
W-0124	4549	Z1	contractor	location	[51.465681057457736, -0.11395642665175917]	2026-08-05 02:47:00-04
W-0125	858	Z1	contractor	location	[51.500620006406955, -0.1772351547371782]	2026-08-05 02:45:00-04
W-0126	9935	Z1	contractor	gate	[51.49406070941497, -0.14310546512770903]	2026-08-05 02:48:00-04
W-0127	1805	Z1	contractor	location	[51.55288750509753, -0.1025015202326767]	2026-08-05 02:52:00-04
W-0128	9282	Z1	contractor	location	[51.53273962538202, -0.10297609682446483]	2026-08-05 02:53:00-04
W-0129	7822	Z1	contractor	gate	[51.494032500843716, -0.10951391110380389]	2026-08-05 02:43:00-04
W-0130	9618	Z1	contractor	gate	[51.48221519514825, -0.15283215991454438]	2026-08-05 02:52:00-04
W-0131	1703	Z1	contractor	location	[51.51080777656538, -0.15893783109036055]	2026-08-05 02:44:00-04
W-0132	3043	Z1	staff	location	[51.533798952359426, -0.15359287682776235]	2026-08-05 02:39:00-04
W-0133	3356	Z1	staff	location	[51.53778395137275, -0.12030735466029918]	2026-08-05 02:50:00-04
W-0134	5908	Z1	contractor	gate	[51.53435998526841, -0.1386682092538042]	2026-08-05 02:43:00-04
W-0135	4119	Z1	contractor	location	[51.49090328255639, -0.1498209931101171]	2026-08-05 02:41:00-04
W-0136	8234	Z1	contractor	location	[51.51063111852041, -0.12277790418130848]	2026-08-05 02:47:00-04
W-0137	5689	Z1	staff	gate	[51.50146170759159, -0.13409876879231475]	2026-08-05 02:52:00-04
W-0138	6669	Z1	contractor	location	[51.483551522332256, -0.09517983136142459]	2026-08-05 02:46:00-04
W-0139	9196	Z1	contractor	location	[51.48107562017464, -0.08344412788773949]	2026-08-05 02:42:00-04
W-0140	6518	Z1	contractor	gate	[51.476573142420605, -0.09138607258265675]	2026-08-05 02:46:00-04
W-0141	8723	Z1	contractor	location	[51.47178382848052, -0.14233959454911024]	2026-08-05 02:53:00-04
W-0142	7229	Z1	contractor	gate	[51.46121013912586, -0.16499011951379622]	2026-08-05 02:43:00-04
W-0143	9878	Z1	contractor	location	[51.519655028680496, -0.09593586525876975]	2026-08-05 02:45:00-04
W-0144	7494	Z1	staff	location	[51.55274402155348, -0.1527222439729792]	2026-08-05 02:46:00-04
W-0145	6017	Z1	contractor	location	[51.48704455538298, -0.1612082610695848]	2026-08-05 02:51:00-04
W-0146	4129	Z1	staff	location	[51.45864537161233, -0.09770927555107319]	2026-08-05 02:52:00-04
W-0147	1334	Z1	staff	location	[51.550521576575925, -0.1592749012833649]	2026-08-05 02:46:00-04
W-0148	3878	Z1	contractor	location	[51.48543344625326, -0.10947026012902802]	2026-08-05 02:43:00-04
W-0149	6707	Z1	contractor	location	[51.48681271753509, -0.09096411435773487]	2026-08-05 02:43:00-04
W-0150	2265	Z1	contractor	location	[51.55054844788801, -0.14493694192205628]	2026-08-05 02:43:00-04
W-0151	8736	Z1	contractor	location	[51.49173045513771, -0.10341794111891571]	2026-08-05 02:51:00-04
W-0152	5748	Z1	contractor	location	[51.471732076889154, -0.0989306460981358]	2026-08-05 02:46:00-04
W-0153	6257	Z1	staff	location	[51.521463424557915, -0.15282895869938717]	2026-08-05 02:47:00-04
W-0154	9277	Z1	contractor	location	[51.53676492563666, -0.12783907742610318]	2026-08-05 02:53:00-04
W-0155	6546	Z1	contractor	location	[51.47790176619948, -0.1072507562363032]	2026-08-05 02:40:00-04
W-0156	1290	Z1	contractor	location	[51.54535785510356, -0.12845946106191536]	2026-08-05 02:51:00-04
W-0157	9599	Z1	contractor	location	[51.516446727170774, -0.12715461158733254]	2026-08-05 02:42:00-04
W-0158	194	Z1	contractor	location	[51.4875485924263, -0.09789497172791224]	2026-08-05 02:40:00-04
W-0159	5827	Z1	staff	gate	[51.497334185899525, -0.14485190340366325]	2026-08-05 02:51:00-04
W-0160	155	Z1	contractor	location	[51.548107044474335, -0.10751179905765967]	2026-08-05 02:49:00-04
W-0161	2332	Z1	contractor	location	[51.46030545657226, -0.12679758849993944]	2026-08-05 02:40:00-04
W-0162	6165	Z1	contractor	location	[51.5122538196188, -0.12544820315611274]	2026-08-05 02:40:00-04
W-0163	5528	Z1	contractor	location	[51.55687604027147, -0.083010845815561]	2026-08-05 02:49:00-04
W-0164	1919	Z1	contractor	location	[51.46264096041801, -0.11077817714526039]	2026-08-05 02:49:00-04
W-0165	2869	Z1	contractor	location	[51.53061917050411, -0.0797885859586268]	2026-08-05 02:43:00-04
W-0166	1751	Z1	contractor	location	[51.46373297585381, -0.09850750395060183]	2026-08-05 02:48:00-04
W-0167	1278	Z1	contractor	gate	[51.541581592221334, -0.09728614320579301]	2026-08-05 02:46:00-04
W-0168	4104	Z1	contractor	location	[51.54898785074749, -0.07932594399290131]	2026-08-05 02:44:00-04
W-0169	3761	Z1	contractor	gate	[51.55117315668407, -0.15001807318889482]	2026-08-05 02:43:00-04
W-0170	980	Z1	contractor	location	[51.47364833132646, -0.13367092121152893]	2026-08-05 02:49:00-04
W-0171	8820	Z1	contractor	location	[51.50140228523433, -0.08291305607003786]	2026-08-05 02:51:00-04
W-0172	9121	Z1	staff	gate	[51.47366775467898, -0.12081078922709465]	2026-08-05 02:44:00-04
W-0173	1132	Z1	contractor	location	[51.47769497851001, -0.13885777110581116]	2026-08-05 02:51:00-04
W-0174	2126	Z1	contractor	location	[51.52661224486508, -0.08954965587621067]	2026-08-05 02:43:00-04
W-0175	458	Z1	contractor	location	[51.45950478138024, -0.0809370482518496]	2026-08-05 02:41:00-04
W-0176	5897	Z1	staff	gate	[51.49728229169926, -0.114292398356561]	2026-08-05 02:49:00-04
W-0177	8924	Z1	contractor	gate	[51.52248605542799, -0.14006348668382737]	2026-08-05 02:50:00-04
W-0178	556	Z1	contractor	gate	[51.45797243007552, -0.09636011222388093]	2026-08-05 02:44:00-04
W-0179	9811	Z1	contractor	location	[51.54231144725557, -0.15616693993051023]	2026-08-05 02:39:00-04
W-0180	4481	Z1	contractor	gate	[51.49032256670692, -0.12845415545687172]	2026-08-05 02:44:00-04
W-0181	8904	Z1	contractor	location	[51.49825085281861, -0.09303325322815069]	2026-08-05 02:44:00-04
W-0182	128	Z1	staff	gate	[51.54483483625275, -0.170316518329259]	2026-08-05 02:48:00-04
W-0183	4061	Z1	contractor	gate	[51.47126105834001, -0.11211560260716202]	2026-08-05 02:53:00-04
W-0184	1988	Z1	staff	location	[51.46088902850897, -0.17695251673667978]	2026-08-05 02:53:00-04
W-0185	6705	Z1	staff	location	[51.49509592333102, -0.17679767739715316]	2026-08-05 02:42:00-04
W-0186	4901	Z1	staff	gate	[51.47866846995104, -0.10189813885969883]	2026-08-05 02:42:00-04
W-0187	7835	Z1	contractor	gate	[51.52037986931932, -0.09141193413861887]	2026-08-05 02:39:00-04
W-0188	1517	Z1	staff	location	[51.53764501322691, -0.158614001565009]	2026-08-05 02:49:00-04
W-0189	6975	Z1	contractor	location	[51.47578822934161, -0.12116536272419068]	2026-08-05 02:53:00-04
W-0190	2671	Z1	contractor	gate	[51.51725014149093, -0.08084229290092354]	2026-08-05 02:44:00-04
W-0191	7857	Z1	staff	location	[51.4829783596544, -0.08729922532444218]	2026-08-05 02:51:00-04
W-0192	8937	Z1	contractor	location	[51.54429320145004, -0.15887317446391613]	2026-08-05 02:49:00-04
W-0193	4987	Z1	contractor	gate	[51.48604782865204, -0.1113585417564288]	2026-08-05 02:41:00-04
W-0194	9007	Z1	staff	location	[51.472063412323266, -0.17044121447456934]	2026-08-05 02:49:00-04
W-0195	4084	Z1	contractor	location	[51.52256509871488, -0.16596508212438804]	2026-08-05 02:49:00-04
W-0196	7494	Z1	contractor	location	[51.538352186820525, -0.10746336259614846]	2026-08-05 02:41:00-04
W-0197	2772	Z1	contractor	location	[51.53230076349585, -0.08137457376671405]	2026-08-05 02:48:00-04
W-0198	457	Z1	contractor	location	[51.48740336900748, -0.13814216163197218]	2026-08-05 02:52:00-04
W-0199	2738	Z1	staff	location	[51.52138338367542, -0.09074354502411994]	2026-08-05 02:44:00-04
W-0200	3253	Z1	contractor	gate	[51.54825949573122, -0.12664904648208258]	2026-08-05 02:51:00-04
W-0201	6108	Z1	staff	location	[51.46607278403312, -0.08666008097244143]	2026-08-05 02:44:00-04
W-0202	4930	Z1	contractor	gate	[51.51683447468575, -0.12931878958239817]	2026-08-05 02:53:00-04
W-0203	6512	Z1	contractor	gate	[51.521647167655686, -0.13675963527569235]	2026-08-05 02:51:00-04
W-0204	1802	Z1	contractor	gate	[51.46833419446743, -0.11355441575106873]	2026-08-05 02:43:00-04
W-0205	9323	Z1	contractor	gate	[51.50987138769399, -0.10943081889398977]	2026-08-05 02:39:00-04
W-0206	1447	Z1	contractor	gate	[51.466786960088065, -0.13699078054062153]	2026-08-05 02:52:00-04
W-0207	6886	Z1	contractor	gate	[51.503950570041226, -0.13907955141004646]	2026-08-05 02:45:00-04
W-0208	252	Z1	staff	location	[51.47238301377488, -0.09420162577232567]	2026-08-05 02:48:00-04
W-0209	3350	Z1	contractor	location	[51.526482898222895, -0.1597385638320778]	2026-08-05 02:41:00-04
W-0210	5937	Z1	staff	location	[51.543229801189355, -0.12373757671105202]	2026-08-05 02:47:00-04
W-0211	371	Z1	staff	location	[51.527878701601885, -0.08178209590118558]	2026-08-05 02:42:00-04
W-0212	1951	Z1	contractor	gate	[51.492050361508966, -0.1558188775536549]	2026-08-05 02:45:00-04
W-0213	5109	Z1	contractor	gate	[51.554427067635785, -0.09609551483251952]	2026-08-05 02:53:00-04
W-0214	9095	Z1	contractor	gate	[51.526344797719794, -0.13290489694474406]	2026-08-05 02:42:00-04
W-0215	6595	Z1	contractor	gate	[51.51812297769338, -0.13147532445999738]	2026-08-05 02:39:00-04
W-0216	9912	Z1	staff	location	[51.54804963947974, -0.13819644685166882]	2026-08-05 02:52:00-04
W-0217	8564	Z1	contractor	gate	[51.527969668587005, -0.15697974766153144]	2026-08-05 02:53:00-04
W-0218	9340	Z1	contractor	gate	[51.49144061977233, -0.12007583625198336]	2026-08-05 02:53:00-04
W-0219	4189	Z1	staff	gate	[51.49135242828985, -0.10751896353786511]	2026-08-05 02:51:00-04
W-0220	8854	Z1	contractor	gate	[51.468371574190094, -0.1179418835609728]	2026-08-05 02:41:00-04
W-0221	1370	Z1	contractor	gate	[51.547153197472, -0.17159895596453983]	2026-08-05 02:50:00-04
W-0222	6532	Z1	staff	location	[51.54067884835148, -0.1340196816523887]	2026-08-05 02:44:00-04
W-0223	1774	Z1	contractor	gate	[51.489423765559515, -0.17389280628924697]	2026-08-05 02:45:00-04
W-0224	5826	Z1	contractor	location	[51.53789299915944, -0.09870745305742228]	2026-08-05 02:40:00-04
W-0225	924	Z1	staff	location	[51.50163348020665, -0.08142694029181911]	2026-08-05 02:44:00-04
W-0226	3678	Z1	contractor	location	[51.508057729711275, -0.09889760172175824]	2026-08-05 02:43:00-04
W-0227	7967	Z1	contractor	gate	[51.53055746501498, -0.1511813534562336]	2026-08-05 02:47:00-04
W-0228	5911	Z1	staff	gate	[51.47290141692675, -0.09427458866689899]	2026-08-05 02:45:00-04
W-0229	6017	Z1	contractor	gate	[51.50385667758438, -0.17455810405431071]	2026-08-05 02:42:00-04
W-0230	578	Z1	staff	location	[51.54148149352238, -0.15551208466053915]	2026-08-05 02:42:00-04
W-0231	4232	Z1	staff	location	[51.5330338034273, -0.08005861255616241]	2026-08-05 02:45:00-04
W-0232	3281	Z1	contractor	gate	[51.528284722217784, -0.09958461742135578]	2026-08-05 02:52:00-04
W-0233	1947	Z1	contractor	location	[51.52091761871223, -0.1007324900812251]	2026-08-05 02:45:00-04
W-0234	2175	Z1	contractor	location	[51.53647585216084, -0.08979315062350886]	2026-08-05 02:52:00-04
W-0235	8903	Z1	staff	gate	[51.51220726919436, -0.12247453968021815]	2026-08-05 02:42:00-04
W-0236	6122	Z1	contractor	gate	[51.46598601663728, -0.12413624874814469]	2026-08-05 02:51:00-04
W-0237	9848	Z1	staff	location	[51.4599794893166, -0.127120554833371]	2026-08-05 02:46:00-04
W-0238	1742	Z1	contractor	location	[51.48341223930966, -0.17153756268610565]	2026-08-05 02:53:00-04
W-0239	5942	Z1	contractor	location	[51.51185822601658, -0.15551435404237865]	2026-08-05 02:47:00-04
W-0240	4455	Z1	staff	location	[51.556160243679365, -0.1708733469294547]	2026-08-05 02:49:00-04
W-0241	6184	Z1	contractor	location	[51.51717612831426, -0.15161338093405496]	2026-08-05 02:41:00-04
W-0242	8201	Z1	staff	location	[51.511967077113134, -0.08987694398973477]	2026-08-05 02:48:00-04
W-0243	2378	Z1	contractor	location	[51.49028064580014, -0.16764582189847912]	2026-08-05 02:47:00-04
W-0244	8887	Z1	staff	location	[51.526251288922346, -0.09175328142219244]	2026-08-05 02:52:00-04
W-0245	6450	Z1	contractor	location	[51.52386576798848, -0.1588953752300696]	2026-08-05 02:52:00-04
W-0246	7119	Z1	contractor	location	[51.55095674825581, -0.07878520617759618]	2026-08-05 02:47:00-04
W-0247	130	Z1	contractor	location	[51.49128621622333, -0.12744363894873262]	2026-08-05 02:41:00-04
W-0248	9384	Z1	contractor	location	[51.54994863407619, -0.07910510964677381]	2026-08-05 02:49:00-04
W-0249	2546	Z1	contractor	location	[51.511359808194534, -0.14574282868445554]	2026-08-05 02:52:00-04
W-0250	4786	Z1	contractor	location	[51.481882676714136, -0.113001700676241]	2026-08-05 02:43:00-04
W-0251	6347	Z1	contractor	location	[51.5402875508036, -0.17757969332490595]	2026-08-05 02:46:00-04
W-0252	3837	Z1	contractor	location	[51.512682339505176, -0.15972516921725588]	2026-08-05 02:41:00-04
W-0253	8885	Z1	staff	location	[51.490705297198666, -0.14869546651066587]	2026-08-05 02:51:00-04
W-0254	6226	Z1	contractor	gate	[51.51653054587002, -0.12514451092474865]	2026-08-05 02:40:00-04
W-0255	4656	Z1	staff	location	[51.546532235754775, -0.12613384837360997]	2026-08-05 02:47:00-04
W-0256	4368	Z1	staff	location	[51.50893987951685, -0.10752729354939537]	2026-08-05 02:47:00-04
W-0257	7287	Z1	contractor	gate	[51.505031241777786, -0.0953302707897576]	2026-08-05 02:50:00-04
W-0258	6067	Z1	contractor	location	[51.51863891197705, -0.0867775302629701]	2026-08-05 02:41:00-04
W-0259	9693	Z1	contractor	gate	[51.536793817111246, -0.15740059406399637]	2026-08-05 02:41:00-04
W-0260	1336	Z1	contractor	location	[51.471203392095816, -0.08095255750615638]	2026-08-05 02:53:00-04
W-0261	7012	Z1	contractor	gate	[51.46744408271227, -0.14870252545912863]	2026-08-05 02:53:00-04
W-0262	8863	Z1	contractor	location	[51.49032322799649, -0.10223016402349432]	2026-08-05 02:47:00-04
W-0263	3074	Z1	contractor	location	[51.47427521116105, -0.08717314041873185]	2026-08-05 02:41:00-04
W-0264	5248	Z1	staff	location	[51.546163924683825, -0.1319645892579263]	2026-08-05 02:44:00-04
W-0265	9713	Z1	staff	gate	[51.4601601921235, -0.08611091192018418]	2026-08-05 02:52:00-04
W-0266	9652	Z1	contractor	location	[51.53496088587567, -0.1196179404139334]	2026-08-05 02:52:00-04
W-0267	5357	Z1	contractor	location	[51.54347629016437, -0.12988508367493048]	2026-08-05 02:43:00-04
W-0268	505	Z1	contractor	gate	[51.52852649621966, -0.10175826299207981]	2026-08-05 02:47:00-04
W-0269	5493	Z1	contractor	gate	[51.485172008942385, -0.09500536473217466]	2026-08-05 02:45:00-04
W-0270	4357	Z1	contractor	location	[51.5106441000527, -0.10763439419350734]	2026-08-05 02:39:00-04
W-0271	9785	Z1	staff	location	[51.515688531891634, -0.12351505852783759]	2026-08-05 02:43:00-04
W-0272	6753	Z1	contractor	location	[51.46666789113398, -0.1264607749416647]	2026-08-05 02:41:00-04
W-0273	2816	Z1	staff	gate	[51.53933482102895, -0.10936012511575133]	2026-08-05 02:46:00-04
W-0274	8387	Z1	contractor	gate	[51.538466340527215, -0.09787248354589882]	2026-08-05 02:43:00-04
W-0275	3512	Z1	contractor	gate	[51.473795031665645, -0.10695121040335655]	2026-08-05 02:43:00-04
W-0276	7009	Z1	contractor	location	[51.497619706311504, -0.15216851811227872]	2026-08-05 02:43:00-04
W-0277	4929	Z1	contractor	location	[51.48538765543152, -0.10535288108293048]	2026-08-05 02:42:00-04
W-0278	3792	Z1	staff	gate	[51.479850039215336, -0.09061163819046349]	2026-08-05 02:52:00-04
W-0279	8721	Z1	contractor	location	[51.55474700860326, -0.16678455061332462]	2026-08-05 02:51:00-04
W-0280	6054	Z1	contractor	location	[51.511614464242534, -0.12197049177729757]	2026-08-05 02:49:00-04
W-0281	9126	Z1	contractor	location	[51.52621979860359, -0.16990363413480364]	2026-08-05 02:40:00-04
W-0282	888	Z1	contractor	gate	[51.50845164185697, -0.17609887970719815]	2026-08-05 02:53:00-04
W-0283	1715	Z1	contractor	location	[51.50275094291302, -0.15994135299770912]	2026-08-05 02:41:00-04
W-0284	3038	Z1	contractor	gate	[51.55639184142612, -0.12589103232674242]	2026-08-05 02:44:00-04
W-0285	4996	Z1	contractor	gate	[51.46153645402943, -0.15608497039744043]	2026-08-05 02:45:00-04
W-0286	1153	Z1	contractor	gate	[51.509664075990806, -0.15757137816272415]	2026-08-05 02:45:00-04
W-0287	5395	Z1	contractor	gate	[51.52393721695585, -0.16868324555061665]	2026-08-05 02:41:00-04
W-0288	1924	Z1	contractor	gate	[51.46070931027266, -0.0967583002386052]	2026-08-05 02:49:00-04
W-0289	3243	Z1	contractor	location	[51.47976631503058, -0.0822512378661153]	2026-08-05 02:51:00-04
W-0290	2062	Z1	contractor	location	[51.5099532600014, -0.1401282157476817]	2026-08-05 02:51:00-04
W-0291	5444	Z1	contractor	gate	[51.49909002495492, -0.10046712665931375]	2026-08-05 02:52:00-04
W-0292	3637	Z1	contractor	location	[51.51182322460355, -0.15179494376028552]	2026-08-05 02:45:00-04
W-0293	1517	Z1	contractor	location	[51.53922838270621, -0.16547893857480542]	2026-08-05 02:42:00-04
W-0294	1588	Z1	contractor	location	[51.50846110950568, -0.13429302861713693]	2026-08-05 02:40:00-04
W-0295	7565	Z1	contractor	location	[51.48148288824537, -0.07930007009197765]	2026-08-05 02:40:00-04
W-0296	7496	Z1	staff	location	[51.50239661320216, -0.10198719354540692]	2026-08-05 02:50:00-04
W-0297	8300	Z1	contractor	location	[51.552806189173374, -0.11246695557142868]	2026-08-05 02:41:00-04
W-0298	3990	Z1	staff	location	[51.5063394961906, -0.14448010584606522]	2026-08-05 02:50:00-04
W-0299	4530	Z1	contractor	location	[51.50885984414071, -0.11133144578832126]	2026-08-05 02:44:00-04
W-0300	7316	Z1	contractor	location	[51.461728418694356, -0.12622137536357597]	2026-08-05 02:45:00-04
W-0301	9864	Z1	contractor	gate	[51.53389558293604, -0.1403213624877515]	2026-08-05 02:41:00-04
W-0302	4013	Z1	contractor	location	[51.521997293566415, -0.0896655811818945]	2026-08-05 02:45:00-04
W-0303	2090	Z1	staff	location	[51.46651792535533, -0.16089488146692826]	2026-08-05 02:49:00-04
W-0304	8565	Z1	contractor	location	[51.48292709630628, -0.13055191738118324]	2026-08-05 02:42:00-04
W-0305	5050	Z1	contractor	gate	[51.45853242433132, -0.0939905802432425]	2026-08-05 02:47:00-04
W-0306	856	Z1	staff	gate	[51.486078676192385, -0.1408308400086885]	2026-08-05 02:40:00-04
W-0307	2804	Z1	contractor	location	[51.51137380823478, -0.1216407023707952]	2026-08-05 02:45:00-04
W-0308	6011	Z1	contractor	gate	[51.54781873387112, -0.15851229597460165]	2026-08-05 02:41:00-04
W-0309	6247	Z1	staff	gate	[51.53424506091525, -0.08788886094569273]	2026-08-05 02:41:00-04
W-0310	905	Z1	contractor	gate	[51.47182055403552, -0.1570124050156964]	2026-08-05 02:43:00-04
W-0311	1703	Z2	contractor	gate	[51.46965911270665, -0.15395143197199093]	2026-08-05 02:41:00-04
W-0312	9149	Z2	staff	location	[51.53064062095534, -0.07979045841153792]	2026-08-05 02:46:00-04
W-0313	8188	Z2	contractor	location	[51.5498520090003, -0.1324524619487108]	2026-08-05 02:44:00-04
W-0314	8703	Z2	staff	location	[51.49308137040688, -0.1419097332564348]	2026-08-05 02:44:00-04
W-0315	926	Z2	staff	location	[51.45828625172721, -0.17375161035451328]	2026-08-05 02:47:00-04
W-0316	7472	Z2	contractor	location	[51.51298836509336, -0.13070952445943573]	2026-08-05 02:53:00-04
W-0317	1190	Z2	contractor	gate	[51.47315579258481, -0.17625142905176597]	2026-08-05 02:43:00-04
W-0318	7701	Z2	contractor	location	[51.507047747336095, -0.16808265564177904]	2026-08-05 02:44:00-04
W-0319	9144	Z2	contractor	location	[51.48732274331323, -0.17513990025060205]	2026-08-05 02:49:00-04
W-0320	2372	Z2	contractor	location	[51.54620209620626, -0.133669579845624]	2026-08-05 02:44:00-04
W-0321	4398	Z2	contractor	location	[51.51623648218015, -0.08245409136827042]	2026-08-05 02:49:00-04
W-0322	2135	Z2	staff	gate	[51.50229319525081, -0.1497967696878038]	2026-08-05 02:43:00-04
W-0323	259	Z2	contractor	location	[51.516655795931634, -0.0885687488736442]	2026-08-05 02:47:00-04
W-0324	5341	Z2	contractor	location	[51.54358424564603, -0.10704730139699722]	2026-08-05 02:52:00-04
W-0325	3397	Z2	contractor	location	[51.49651969191566, -0.11101856619033665]	2026-08-05 02:46:00-04
W-0326	7190	Z2	staff	location	[51.47439497249862, -0.16691247612058796]	2026-08-05 02:51:00-04
W-0327	2745	Z2	staff	location	[51.51803963712088, -0.08093829766146009]	2026-08-05 02:43:00-04
W-0328	796	Z2	staff	gate	[51.471902002389704, -0.1203250268760761]	2026-08-05 02:41:00-04
W-0329	7774	Z2	staff	gate	[51.52324144629945, -0.09049536306870934]	2026-08-05 02:45:00-04
W-0330	936	Z2	staff	location	[51.53665920789802, -0.1596331922182351]	2026-08-05 02:45:00-04
W-0331	4187	Z2	contractor	gate	[51.530109244620235, -0.14879627132849083]	2026-08-05 02:45:00-04
W-0332	6510	Z2	contractor	location	[51.54333770275151, -0.15023845695046523]	2026-08-05 02:51:00-04
W-0333	676	Z2	contractor	location	[51.538102940090546, -0.09293277885795413]	2026-08-05 02:51:00-04
W-0334	1274	Z2	contractor	location	[51.4640769730103, -0.16928106134588874]	2026-08-05 02:53:00-04
W-0335	6441	Z2	contractor	gate	[51.483927634455505, -0.1726091555352132]	2026-08-05 02:44:00-04
W-0336	6440	Z2	contractor	gate	[51.45795133301261, -0.146378222218686]	2026-08-05 02:44:00-04
W-0337	5132	Z2	contractor	location	[51.527075510529635, -0.10555078382349393]	2026-08-05 02:39:00-04
W-0338	9182	Z2	contractor	gate	[51.53882420240243, -0.12632596888967718]	2026-08-05 02:53:00-04
W-0339	1857	Z2	contractor	location	[51.51017142098627, -0.17236182345823708]	2026-08-05 02:48:00-04
W-0340	2301	Z2	contractor	gate	[51.51764141598025, -0.15216507086389214]	2026-08-05 02:39:00-04
W-0341	2832	Z2	contractor	gate	[51.48222594136708, -0.1008521751865361]	2026-08-05 02:53:00-04
W-0342	8075	Z2	contractor	location	[51.50860753760111, -0.10088193535286497]	2026-08-05 02:45:00-04
W-0343	8765	Z2	contractor	location	[51.53351085942934, -0.15902197385315958]	2026-08-05 02:48:00-04
W-0344	7709	Z2	contractor	location	[51.53611686147101, -0.13670482015538854]	2026-08-05 02:44:00-04
W-0345	8410	Z2	staff	location	[51.54774049482989, -0.16349603506551125]	2026-08-05 02:53:00-04
W-0346	5574	Z2	contractor	location	[51.52949437455544, -0.1390593877916619]	2026-08-05 02:48:00-04
W-0347	1321	Z2	staff	location	[51.46906216738474, -0.159241730578225]	2026-08-05 02:41:00-04
W-0348	7558	Z2	contractor	location	[51.515825550282855, -0.0863215950773874]	2026-08-05 02:50:00-04
W-0349	5006	Z2	staff	gate	[51.46737269271015, -0.10507034102104201]	2026-08-05 02:44:00-04
W-0350	7000	Z2	contractor	location	[51.49235049300186, -0.1344763073382086]	2026-08-05 02:48:00-04
W-0351	2015	Z2	contractor	location	[51.517943571455646, -0.12457882491954875]	2026-08-05 02:46:00-04
W-0352	6835	Z2	contractor	location	[51.51421949888461, -0.1377858243151705]	2026-08-05 02:42:00-04
W-0353	4575	Z2	contractor	location	[51.459748580393146, -0.13604245756217692]	2026-08-05 02:49:00-04
W-0354	6641	Z2	contractor	location	[51.5444357284248, -0.10204903562978244]	2026-08-05 02:48:00-04
W-0355	9047	Z2	contractor	location	[51.54488824722107, -0.08876007525512523]	2026-08-05 02:39:00-04
W-0356	4434	Z2	staff	gate	[51.55438767108315, -0.14300783416515167]	2026-08-05 02:48:00-04
W-0357	7992	Z2	contractor	location	[51.492127338827444, -0.14827493310783035]	2026-08-05 02:42:00-04
W-0358	8173	Z2	contractor	location	[51.463071046378936, -0.083108065717775]	2026-08-05 02:49:00-04
W-0359	1904	Z2	contractor	location	[51.494089935882464, -0.08247571286895887]	2026-08-05 02:41:00-04
W-0360	6206	Z2	staff	gate	[51.489836334862986, -0.13508715134654634]	2026-08-05 02:41:00-04
W-0361	1553	Z2	contractor	location	[51.52325025359773, -0.16742564548640715]	2026-08-05 02:46:00-04
W-0362	218	Z2	contractor	location	[51.516876449989084, -0.10917183695280236]	2026-08-05 02:42:00-04
W-0363	7831	Z2	staff	gate	[51.53925275921307, -0.1244934858457969]	2026-08-05 02:39:00-04
W-0364	2358	Z2	contractor	location	[51.45750547714542, -0.15815824520897162]	2026-08-05 02:49:00-04
W-0365	2757	Z2	contractor	gate	[51.53758160974038, -0.16385628887155235]	2026-08-05 02:50:00-04
W-0366	7312	Z2	contractor	gate	[51.52744102861698, -0.16938271923371767]	2026-08-05 02:49:00-04
W-0367	2253	Z2	contractor	location	[51.46750329947059, -0.15713407387386263]	2026-08-05 02:49:00-04
W-0368	8711	Z2	staff	location	[51.513178571278885, -0.12142724780066573]	2026-08-05 02:53:00-04
W-0369	9269	Z2	contractor	location	[51.5460374048185, -0.10662495183067551]	2026-08-05 02:41:00-04
W-0370	4461	Z2	contractor	location	[51.48154511129875, -0.16007765684162906]	2026-08-05 02:49:00-04
W-0372	8515	Z2	contractor	location	[51.53109913704332, -0.15270173960375727]	2026-08-05 02:52:00-04
W-0373	3715	Z2	contractor	location	[51.494736077438, -0.09851445607534587]	2026-08-05 02:44:00-04
W-0374	667	Z2	contractor	location	[51.461759516854386, -0.09616111397318798]	2026-08-05 02:43:00-04
W-0375	2820	Z2	contractor	gate	[51.49005475824215, -0.13719583078006659]	2026-08-05 02:43:00-04
W-0376	6669	Z2	staff	location	[51.49028547786756, -0.16812252504525327]	2026-08-05 02:40:00-04
W-0377	145	Z2	contractor	gate	[51.50842571683766, -0.15588943154804538]	2026-08-05 02:42:00-04
W-0378	7954	Z2	contractor	location	[51.486362058217736, -0.15707609511042367]	2026-08-05 02:53:00-04
W-0379	8325	Z2	contractor	location	[51.54023089733318, -0.1516281523786386]	2026-08-05 02:45:00-04
W-0380	1958	Z2	contractor	gate	[51.54171770006734, -0.1465904432989537]	2026-08-05 02:44:00-04
W-0381	1304	Z2	staff	location	[51.46973393348706, -0.13787797967583787]	2026-08-05 02:49:00-04
W-0382	246	Z2	staff	location	[51.54966234625868, -0.11218440282152625]	2026-08-05 02:48:00-04
W-0383	2062	Z2	contractor	location	[51.46911234262681, -0.14254117668641686]	2026-08-05 02:43:00-04
W-0384	3717	Z2	contractor	gate	[51.49023462777532, -0.16968191263364663]	2026-08-05 02:47:00-04
W-0385	4743	Z2	contractor	location	[51.539640735168945, -0.13527796967428707]	2026-08-05 02:41:00-04
W-0386	8271	Z2	contractor	location	[51.54167306036565, -0.15083842241610182]	2026-08-05 02:52:00-04
W-0387	9958	Z2	contractor	location	[51.52298267724582, -0.08468870191560489]	2026-08-05 02:44:00-04
W-0388	2510	Z2	contractor	gate	[51.48772279742753, -0.17003220983847117]	2026-08-05 02:41:00-04
W-0389	6638	Z2	contractor	gate	[51.47591034513789, -0.12419183529152057]	2026-08-05 02:44:00-04
W-0390	9290	Z2	contractor	gate	[51.54969616295394, -0.10750076114661807]	2026-08-05 02:52:00-04
W-0391	9641	Z2	staff	location	[51.54211433146702, -0.1645970074542472]	2026-08-05 02:48:00-04
W-0392	6539	Z2	contractor	location	[51.47700793975684, -0.09582213063409221]	2026-08-05 02:47:00-04
W-0393	272	Z2	contractor	gate	[51.54106879276009, -0.17385818493011168]	2026-08-05 02:39:00-04
W-0394	3796	Z2	staff	location	[51.461041285177636, -0.13758445949505937]	2026-08-05 02:45:00-04
W-0395	5042	Z2	contractor	location	[51.469138154620325, -0.14259573105858142]	2026-08-05 02:46:00-04
W-0396	8535	Z2	contractor	location	[51.528054922606536, -0.10077035617666769]	2026-08-05 02:45:00-04
W-0397	7028	Z2	contractor	location	[51.55556011225218, -0.10106505346048522]	2026-08-05 02:52:00-04
W-0398	2601	Z2	contractor	gate	[51.546685121566505, -0.09757607139907873]	2026-08-05 02:41:00-04
W-0399	1459	Z2	contractor	gate	[51.49951623818612, -0.17372664006799898]	2026-08-05 02:44:00-04
W-0400	7717	Z2	contractor	location	[51.48563609873939, -0.09737695492364938]	2026-08-05 02:42:00-04
W-0401	7054	Z2	contractor	location	[51.48573138065683, -0.0902369067990622]	2026-08-05 02:47:00-04
W-0402	6723	Z2	contractor	location	[51.5253882069211, -0.09616773207595648]	2026-08-05 02:47:00-04
W-0403	9584	Z2	staff	gate	[51.524028535540225, -0.15590215810806812]	2026-08-05 02:44:00-04
W-0404	6654	Z2	contractor	location	[51.5354462055596, -0.15531657723345135]	2026-08-05 02:42:00-04
W-0405	8856	Z2	staff	location	[51.458361175155645, -0.14511004559183024]	2026-08-05 02:39:00-04
W-0406	400	Z2	staff	location	[51.50730873686204, -0.1706806553186821]	2026-08-05 02:44:00-04
W-0407	6025	Z2	contractor	gate	[51.52272515580962, -0.13098003417144743]	2026-08-05 02:42:00-04
W-0408	7501	Z2	contractor	gate	[51.47598724914284, -0.07878209590193935]	2026-08-05 02:40:00-04
W-0409	9749	Z2	staff	location	[51.489894769648465, -0.0831083378397896]	2026-08-05 02:52:00-04
W-0410	721	Z2	staff	location	[51.50619205559657, -0.07968520437966506]	2026-08-05 02:49:00-04
W-0411	4634	Z2	contractor	location	[51.511298384932104, -0.11804802839926493]	2026-08-05 02:42:00-04
W-0412	1438	Z2	contractor	gate	[51.48357556367464, -0.16696512737366176]	2026-08-05 02:52:00-04
W-0413	4342	Z2	staff	location	[51.47991003732036, -0.1397211393655468]	2026-08-05 02:49:00-04
W-0414	6327	Z2	contractor	location	[51.46254897443016, -0.15253231039222026]	2026-08-05 02:39:00-04
W-0415	5128	Z2	contractor	gate	[51.55684819037738, -0.1601880014291374]	2026-08-05 02:41:00-04
W-0416	9342	Z2	contractor	location	[51.476785909105786, -0.08232514123849695]	2026-08-05 02:46:00-04
W-0417	3068	Z2	contractor	location	[51.471406035072846, -0.16300123966482752]	2026-08-05 02:40:00-04
W-0418	9269	Z2	contractor	location	[51.487206432541555, -0.1704471010264869]	2026-08-05 02:41:00-04
W-0419	9184	Z2	contractor	gate	[51.466863561309786, -0.1689097018393127]	2026-08-05 02:43:00-04
W-0420	9923	Z2	contractor	gate	[51.50989661964017, -0.1572615218575148]	2026-08-05 02:51:00-04
W-0421	2446	Z2	contractor	location	[51.50329548104584, -0.1634455713335923]	2026-08-05 02:43:00-04
W-0422	9260	Z2	contractor	location	[51.549648680736446, -0.15619214997775588]	2026-08-05 02:51:00-04
W-0423	949	Z2	contractor	location	[51.532989769852215, -0.07948372960716031]	2026-08-05 02:52:00-04
W-0424	9895	Z2	contractor	location	[51.535629877114104, -0.15441429777277915]	2026-08-05 02:39:00-04
W-0425	7283	Z2	contractor	location	[51.47044687248087, -0.15739079971933106]	2026-08-05 02:41:00-04
W-0426	2433	Z2	staff	location	[51.46034163708679, -0.09277117752909061]	2026-08-05 02:44:00-04
W-0427	9371	Z2	contractor	gate	[51.542860043073425, -0.10272782725462491]	2026-08-05 02:51:00-04
W-0428	6580	Z2	contractor	gate	[51.50081286252094, -0.12822602949311246]	2026-08-05 02:52:00-04
W-0429	5803	Z2	contractor	location	[51.47516298900962, -0.16259956105030265]	2026-08-05 02:53:00-04
W-0430	4959	Z2	contractor	location	[51.48924691027911, -0.1250989470680832]	2026-08-05 02:40:00-04
W-0431	3475	Z2	staff	location	[51.504102228364154, -0.15792177978647456]	2026-08-05 02:50:00-04
W-0432	2118	Z2	contractor	gate	[51.53799136320641, -0.12173156966742432]	2026-08-05 02:40:00-04
W-0433	2237	Z2	contractor	location	[51.47090285997553, -0.11668977843069221]	2026-08-05 02:53:00-04
W-0434	7640	Z2	contractor	gate	[51.47521825248119, -0.1002400784770864]	2026-08-05 02:39:00-04
W-0435	8629	Z2	contractor	location	[51.522750292981115, -0.16876587997558826]	2026-08-05 02:46:00-04
W-0436	1943	Z2	contractor	gate	[51.511689122343725, -0.12497251604190796]	2026-08-05 02:47:00-04
W-0437	2618	Z2	contractor	location	[51.5413400706867, -0.14441627408441096]	2026-08-05 02:50:00-04
W-0438	2127	Z2	contractor	gate	[51.52230799216517, -0.15681190893408417]	2026-08-05 02:43:00-04
W-0439	3509	Z2	contractor	gate	[51.46704589370394, -0.0881984317175113]	2026-08-05 02:48:00-04
W-0440	9905	Z2	contractor	location	[51.553046329954846, -0.09393457795850979]	2026-08-05 02:48:00-04
W-0441	5434	Z2	contractor	location	[51.497275806865915, -0.09332080595736902]	2026-08-05 02:45:00-04
W-0442	7059	Z2	staff	location	[51.47129151786387, -0.11902150183750401]	2026-08-05 02:44:00-04
W-0443	4661	Z2	contractor	gate	[51.54097225047057, -0.12264891949614601]	2026-08-05 02:47:00-04
W-0444	6913	Z2	contractor	location	[51.552935590298446, -0.10811070359011593]	2026-08-05 02:41:00-04
W-0445	4489	Z2	contractor	location	[51.5097783166485, -0.1019493896745317]	2026-08-05 02:43:00-04
W-0446	4652	Z2	contractor	location	[51.47894217840706, -0.10400515381462165]	2026-08-05 02:53:00-04
W-0447	9794	Z2	contractor	gate	[51.49387896972845, -0.1043133218120409]	2026-08-05 02:52:00-04
W-0448	8274	Z2	contractor	location	[51.53908154572318, -0.15165578970296534]	2026-08-05 02:47:00-04
W-0449	2912	Z2	contractor	location	[51.5123051556679, -0.17054922920859877]	2026-08-05 02:45:00-04
W-0450	7191	Z2	contractor	location	[51.46753872265832, -0.12412960983997343]	2026-08-05 02:45:00-04
W-0451	4465	Z2	contractor	location	[51.536514525071155, -0.1719777291903597]	2026-08-05 02:39:00-04
W-0452	8715	Z2	contractor	location	[51.518367623627334, -0.08926254275568883]	2026-08-05 02:44:00-04
W-0453	9615	Z2	contractor	gate	[51.47029445640224, -0.12476404913953243]	2026-08-05 02:43:00-04
W-0454	3104	Z2	contractor	location	[51.54848921530055, -0.1776445566616063]	2026-08-05 02:52:00-04
W-0455	9221	Z2	contractor	location	[51.52721628544337, -0.12453402844651187]	2026-08-05 02:49:00-04
W-0456	6743	Z2	staff	location	[51.53000493538971, -0.08313286324093361]	2026-08-05 02:43:00-04
W-0457	5908	Z2	contractor	location	[51.48377778988621, -0.17122235178681466]	2026-08-05 02:41:00-04
W-0458	1033	Z2	staff	location	[51.55414282024055, -0.10919853797330648]	2026-08-05 02:53:00-04
W-0459	9770	Z2	contractor	gate	[51.49217731113983, -0.17174182659598392]	2026-08-05 02:51:00-04
W-0460	5148	Z2	contractor	location	[51.547794253405186, -0.11835719098453308]	2026-08-05 02:51:00-04
W-0461	1827	Z2	staff	location	[51.46047963224488, -0.1161843728999244]	2026-08-05 02:47:00-04
W-0462	4462	Z2	staff	gate	[51.46898791261116, -0.08895647550476622]	2026-08-05 02:40:00-04
W-0463	1723	Z2	staff	gate	[51.51094282071637, -0.1641692273115233]	2026-08-05 02:48:00-04
W-0464	1265	Z2	contractor	gate	[51.50523442374769, -0.1520391931017877]	2026-08-05 02:45:00-04
W-0465	9074	Z2	contractor	gate	[51.55459100691292, -0.08982813531880292]	2026-08-05 02:39:00-04
W-0466	3749	Z2	contractor	gate	[51.488013911157594, -0.130640545715492]	2026-08-05 02:49:00-04
W-0467	3086	Z2	staff	location	[51.494005363377255, -0.11805975739487391]	2026-08-05 02:47:00-04
W-0468	5531	Z2	staff	location	[51.47321564586715, -0.15165344596489327]	2026-08-05 02:40:00-04
W-0469	9909	Z2	contractor	location	[51.5209446250869, -0.15469942234617454]	2026-08-05 02:50:00-04
W-0470	3409	Z2	contractor	location	[51.51183604287822, -0.0973443783679275]	2026-08-05 02:49:00-04
W-0471	3803	Z2	contractor	gate	[51.502862881302974, -0.08254181740356889]	2026-08-05 02:44:00-04
W-0472	2553	Z2	staff	gate	[51.472203473286584, -0.16683023408818826]	2026-08-05 02:45:00-04
W-0473	7496	Z2	contractor	gate	[51.51515818913489, -0.1661414878063916]	2026-08-05 02:42:00-04
W-0474	4431	Z2	contractor	location	[51.463100427994114, -0.12211960900388273]	2026-08-05 02:48:00-04
W-0475	8010	Z2	staff	gate	[51.48604835341353, -0.14943949656387762]	2026-08-05 02:41:00-04
W-0476	5567	Z2	contractor	gate	[51.491390039077906, -0.17480921411807765]	2026-08-05 02:44:00-04
W-0477	8328	Z2	contractor	gate	[51.54998466069327, -0.1728212205049617]	2026-08-05 02:49:00-04
W-0478	8140	Z2	contractor	location	[51.49676003091409, -0.13389474077316052]	2026-08-05 02:51:00-04
W-0479	5865	Z2	staff	location	[51.51209854867639, -0.1247015560105552]	2026-08-05 02:46:00-04
W-0480	5930	Z2	contractor	location	[51.49070507291612, -0.12044613723457315]	2026-08-05 02:46:00-04
W-0481	7032	Z2	contractor	location	[51.49170807014765, -0.09159003492069677]	2026-08-05 02:39:00-04
W-0482	8042	Z2	contractor	location	[51.55501575918532, -0.15517949123068184]	2026-08-05 02:49:00-04
W-0483	2468	Z2	contractor	location	[51.52119774273653, -0.10574083132517878]	2026-08-05 02:39:00-04
W-0484	2983	Z2	contractor	location	[51.47666338206832, -0.08753944243480664]	2026-08-05 02:53:00-04
W-0485	5449	Z2	staff	location	[51.5255389861625, -0.09406875040419267]	2026-08-05 02:41:00-04
W-0486	4401	Z2	contractor	gate	[51.49614361012359, -0.11862428336133228]	2026-08-05 02:53:00-04
W-0487	3715	Z2	contractor	gate	[51.53333157851682, -0.1218255029695781]	2026-08-05 02:53:00-04
W-0488	4492	Z2	staff	location	[51.538183108528436, -0.13670115512323278]	2026-08-05 02:42:00-04
W-0489	5305	Z2	staff	gate	[51.54034611534327, -0.13356535414395634]	2026-08-05 02:41:00-04
W-0490	463	Z2	staff	location	[51.50135166077976, -0.1423423589352814]	2026-08-05 02:44:00-04
W-0491	4418	Z2	contractor	location	[51.55686961543282, -0.17329838987233215]	2026-08-05 02:53:00-04
W-0492	6107	Z2	contractor	location	[51.48464465826886, -0.11354706505352309]	2026-08-05 02:43:00-04
W-0493	7958	Z2	contractor	gate	[51.54235124337124, -0.10642528331368]	2026-08-05 02:44:00-04
W-0494	7058	Z2	contractor	gate	[51.52886285439987, -0.17698772273099175]	2026-08-05 02:50:00-04
W-0495	5276	Z2	staff	gate	[51.501461500197706, -0.17648413116282205]	2026-08-05 02:46:00-04
W-0496	3424	Z2	contractor	location	[51.52026705014605, -0.12237544695972241]	2026-08-05 02:44:00-04
W-0497	429	Z2	contractor	gate	[51.53190814113694, -0.1490610219557998]	2026-08-05 02:51:00-04
W-0498	2516	Z2	contractor	location	[51.469604362621595, -0.08975946725392984]	2026-08-05 02:47:00-04
W-0499	4860	Z2	contractor	location	[51.543161832893595, -0.16392042070902405]	2026-08-05 02:48:00-04
W-0500	2256	Z2	contractor	gate	[51.52637480489125, -0.08327871596351323]	2026-08-05 02:39:00-04
W-0501	3598	Z2	staff	gate	[51.505205770756774, -0.08751560942747999]	2026-08-05 02:42:00-04
W-0502	113	Z2	contractor	location	[51.515554016142175, -0.12271470648271289]	2026-08-05 02:42:00-04
W-0503	7652	Z2	contractor	gate	[51.52132530173549, -0.1363117718455639]	2026-08-05 02:48:00-04
W-0504	3531	Z2	contractor	gate	[51.472505003446344, -0.11029837888020472]	2026-08-05 02:40:00-04
W-0505	2513	Z2	staff	gate	[51.47383113878148, -0.1663553205221191]	2026-08-05 02:45:00-04
W-0506	6819	Z2	contractor	gate	[51.47709391640232, -0.1381786309890896]	2026-08-05 02:50:00-04
W-0507	9631	Z2	contractor	location	[51.55393938323077, -0.12252468965498685]	2026-08-05 02:41:00-04
W-0508	8902	Z2	contractor	location	[51.504793518046576, -0.08732360509992336]	2026-08-05 02:47:00-04
W-0509	6764	Z2	staff	location	[51.458925606958516, -0.16867716589500964]	2026-08-05 02:45:00-04
W-0510	6117	Z2	contractor	gate	[51.50266431862577, -0.10439442342157956]	2026-08-05 02:50:00-04
W-0511	6026	Z2	contractor	gate	[51.539017505718924, -0.08842439267425382]	2026-08-05 02:41:00-04
W-0512	2004	Z2	contractor	location	[51.52128358896361, -0.09141091957674687]	2026-08-05 02:41:00-04
W-0513	4038	Z2	contractor	gate	[51.48867450062394, -0.11955283517556811]	2026-08-05 02:50:00-04
W-0514	2255	Z2	staff	location	[51.480449946576606, -0.14700752781544368]	2026-08-05 02:50:00-04
W-0515	5423	Z2	contractor	location	[51.50918346494616, -0.11266699862664908]	2026-08-05 02:49:00-04
W-0516	7040	Z2	contractor	gate	[51.54001712719051, -0.11744527213347626]	2026-08-05 02:45:00-04
W-0517	3063	Z2	contractor	location	[51.51229081428424, -0.13913203641226296]	2026-08-05 02:43:00-04
W-0518	7134	Z2	contractor	gate	[51.53706563582987, -0.15259673740253904]	2026-08-05 02:46:00-04
W-0519	4691	Z2	contractor	location	[51.48863185858367, -0.08924724551227516]	2026-08-05 02:44:00-04
W-0520	7749	Z2	contractor	location	[51.500314216235225, -0.12883685789992047]	2026-08-05 02:48:00-04
W-0521	6521	Z2	contractor	location	[51.53056610426178, -0.08239195432129574]	2026-08-05 02:42:00-04
W-0522	5937	Z2	staff	location	[51.535098225369666, -0.09956985899028742]	2026-08-05 02:44:00-04
W-0523	4796	Z2	contractor	gate	[51.48667785085176, -0.15607595355808185]	2026-08-05 02:47:00-04
W-0524	845	Z2	contractor	location	[51.502118936534465, -0.1154168894714836]	2026-08-05 02:45:00-04
W-0525	6250	Z2	contractor	location	[51.50849382456908, -0.15017793492077153]	2026-08-05 02:39:00-04
W-0526	8296	Z2	contractor	location	[51.51714925788915, -0.100986116585507]	2026-08-05 02:53:00-04
W-0527	6148	Z2	contractor	gate	[51.48458305891623, -0.12002965618993863]	2026-08-05 02:44:00-04
W-0528	5100	Z2	staff	location	[51.501613861802326, -0.11028047120783635]	2026-08-05 02:52:00-04
W-0529	6362	Z2	staff	location	[51.4757143124937, -0.110993647330814]	2026-08-05 02:48:00-04
W-0530	7937	Z2	contractor	gate	[51.49929147272879, -0.147484779611403]	2026-08-05 02:50:00-04
W-0531	2068	Z2	contractor	location	[51.54426902809521, -0.11341333119269642]	2026-08-05 02:50:00-04
W-0532	4190	Z2	staff	location	[51.47751152053863, -0.15825995242542537]	2026-08-05 02:46:00-04
W-0533	622	Z2	contractor	location	[51.511528120815186, -0.11315801400995007]	2026-08-05 02:46:00-04
W-0534	3181	Z2	contractor	location	[51.459965464032805, -0.13425129557994822]	2026-08-05 02:43:00-04
W-0535	8284	Z2	contractor	location	[51.48782089087873, -0.09516480018775825]	2026-08-05 02:50:00-04
W-0536	3736	Z2	contractor	gate	[51.4988436529189, -0.0844793206267126]	2026-08-05 02:43:00-04
W-0537	7777	Z2	staff	location	[51.483940240615624, -0.09625670957062267]	2026-08-05 02:45:00-04
W-0538	9547	Z2	contractor	gate	[51.4610607493453, -0.10201081066405115]	2026-08-05 02:48:00-04
W-0539	9536	Z2	contractor	location	[51.47331301826836, -0.177011350210954]	2026-08-05 02:51:00-04
W-0540	5570	Z2	contractor	location	[51.52790034674533, -0.12511037141338943]	2026-08-05 02:43:00-04
W-0541	8076	Z2	contractor	location	[51.51822397333639, -0.1292657847970208]	2026-08-05 02:48:00-04
W-0542	3170	Z2	contractor	gate	[51.45784658274719, -0.1245825559026143]	2026-08-05 02:39:00-04
W-0543	1506	Z2	staff	location	[51.50237589423498, -0.126572528968301]	2026-08-05 02:47:00-04
W-0544	9082	Z2	contractor	location	[51.48157883230045, -0.08437509972408806]	2026-08-05 02:44:00-04
W-0545	1134	Z2	contractor	gate	[51.47613964070243, -0.1243208471883424]	2026-08-05 02:42:00-04
W-0546	6526	Z2	contractor	location	[51.55067284394365, -0.0997501032032875]	2026-08-05 02:43:00-04
W-0547	9257	Z2	contractor	location	[51.53433208872034, -0.08711832188164367]	2026-08-05 02:45:00-04
W-0548	6642	Z2	contractor	location	[51.49895226973154, -0.13585667850198896]	2026-08-05 02:47:00-04
W-0549	1344	Z2	contractor	location	[51.54565582494727, -0.105410373699878]	2026-08-05 02:42:00-04
W-0550	3494	Z2	contractor	location	[51.527000494485996, -0.0963745828691736]	2026-08-05 02:42:00-04
W-0551	3018	Z2	contractor	location	[51.461871437810885, -0.12141152477095601]	2026-08-05 02:39:00-04
W-0552	6271	Z2	contractor	location	[51.479051834429306, -0.12161024476405272]	2026-08-05 02:43:00-04
W-0553	1546	Z2	contractor	location	[51.53402822171938, -0.08189423156454663]	2026-08-05 02:50:00-04
W-0554	6340	Z2	contractor	location	[51.52538823721942, -0.15890489855965206]	2026-08-05 02:39:00-04
W-0555	8848	Z2	staff	location	[51.52794529829766, -0.13905335325000534]	2026-08-05 02:49:00-04
W-0556	8007	Z2	contractor	location	[51.46785795974157, -0.12837954949247454]	2026-08-05 02:47:00-04
W-0557	9845	Z2	contractor	location	[51.549226145530184, -0.1295933726690831]	2026-08-05 02:40:00-04
W-0558	6561	Z2	contractor	location	[51.539970224154345, -0.12183403577899393]	2026-08-05 02:48:00-04
W-0559	2299	Z2	contractor	location	[51.48750035243749, -0.11366370557045236]	2026-08-05 02:46:00-04
W-0560	9945	Z2	staff	location	[51.536415210396484, -0.15551895591693343]	2026-08-05 02:39:00-04
W-0561	3359	Z2	contractor	gate	[51.48927159915312, -0.13681197593860023]	2026-08-05 02:45:00-04
W-0562	4149	Z2	contractor	location	[51.54640781367221, -0.104097058018634]	2026-08-05 02:41:00-04
W-0563	837	Z2	contractor	location	[51.536950519131224, -0.15791138846926006]	2026-08-05 02:39:00-04
W-0564	6254	Z2	contractor	location	[51.54009558877004, -0.14679776621611623]	2026-08-05 02:53:00-04
W-0565	6340	Z2	staff	location	[51.52878562930193, -0.14557314729582624]	2026-08-05 02:47:00-04
W-0566	7390	Z2	contractor	location	[51.45946837190954, -0.10657002236492705]	2026-08-05 02:39:00-04
W-0567	4360	Z2	staff	gate	[51.519472826219655, -0.09104337150196844]	2026-08-05 02:43:00-04
W-0568	1320	Z2	staff	location	[51.477164102033846, -0.11348947777697786]	2026-08-05 02:53:00-04
W-0569	3256	Z2	contractor	gate	[51.489371523582896, -0.12682239354925323]	2026-08-05 02:44:00-04
W-0570	6585	Z2	staff	location	[51.4945359643464, -0.14305864849434385]	2026-08-05 02:39:00-04
W-0571	7528	Z2	contractor	gate	[51.527265373645044, -0.09160442483114717]	2026-08-05 02:40:00-04
W-0572	5529	Z2	staff	gate	[51.45992040615418, -0.11975977469800646]	2026-08-05 02:39:00-04
W-0573	924	Z2	contractor	location	[51.53991800485199, -0.0890762984792542]	2026-08-05 02:45:00-04
W-0574	3387	Z2	contractor	location	[51.521326006975556, -0.15118622894984607]	2026-08-05 02:41:00-04
W-0575	6469	Z2	contractor	location	[51.51720465873038, -0.16882758434738504]	2026-08-05 02:51:00-04
W-0576	3543	Z2	contractor	gate	[51.48935359131605, -0.08818596719816649]	2026-08-05 02:46:00-04
W-0577	7271	Z2	staff	gate	[51.53026656198903, -0.1093314571554276]	2026-08-05 02:50:00-04
W-0578	8783	Z2	contractor	gate	[51.4681102957698, -0.15652406506987224]	2026-08-05 02:42:00-04
W-0579	568	Z2	staff	location	[51.46816232364516, -0.15131981471598896]	2026-08-05 02:49:00-04
W-0580	7151	Z2	staff	gate	[51.4620334789507, -0.10623897420831319]	2026-08-05 02:48:00-04
W-0581	8031	Z2	contractor	gate	[51.49881366264302, -0.08107081821110468]	2026-08-05 02:39:00-04
W-0582	4420	Z2	contractor	gate	[51.52082792666489, -0.08479803682936175]	2026-08-05 02:50:00-04
W-0583	4096	Z2	contractor	location	[51.508289009451445, -0.15152491454299724]	2026-08-05 02:51:00-04
W-0584	1715	Z2	contractor	location	[51.52460576462058, -0.12329484561523425]	2026-08-05 02:45:00-04
W-0585	9480	Z2	contractor	location	[51.52955700455777, -0.13970402239836288]	2026-08-05 02:53:00-04
W-0586	8077	Z2	contractor	location	[51.52075919939263, -0.12002201116630401]	2026-08-05 02:47:00-04
W-0587	314	Z2	contractor	location	[51.538128845739934, -0.0992044668331556]	2026-08-05 02:51:00-04
W-0588	3103	Z2	contractor	location	[51.49209925351301, -0.14933342673977026]	2026-08-05 02:42:00-04
W-0589	102	Z2	staff	location	[51.4712687178723, -0.10153642097169985]	2026-08-05 02:43:00-04
W-0590	9896	Z2	contractor	gate	[51.531860327094044, -0.10918321250174493]	2026-08-05 02:49:00-04
W-0591	7100	Z2	staff	gate	[51.524591857931384, -0.16307288946055]	2026-08-05 02:42:00-04
W-0592	6448	Z2	contractor	location	[51.539608816915326, -0.10617611088541518]	2026-08-05 02:53:00-04
W-0593	9082	Z2	contractor	location	[51.49130794292393, -0.14644328385679622]	2026-08-05 02:41:00-04
W-0594	6560	Z2	contractor	gate	[51.49109889791225, -0.1710640949203985]	2026-08-05 02:41:00-04
W-0595	6627	Z2	staff	location	[51.479392338201144, -0.13641452177752528]	2026-08-05 02:42:00-04
W-0596	4073	Z2	contractor	location	[51.47187602551137, -0.11194940837817949]	2026-08-05 02:42:00-04
W-0597	9352	Z2	contractor	location	[51.47607150924549, -0.12058199635826139]	2026-08-05 02:39:00-04
W-0598	8313	Z2	contractor	location	[51.48390215486261, -0.1739445929758909]	2026-08-05 02:50:00-04
W-0599	6147	Z2	staff	location	[51.49233232929416, -0.14849570447729646]	2026-08-05 02:40:00-04
W-0600	4035	Z2	contractor	location	[51.55613909760478, -0.10283723856673338]	2026-08-05 02:48:00-04
W-0601	9421	Z2	contractor	location	[51.49709788384886, -0.08717161803696148]	2026-08-05 02:42:00-04
W-0602	8782	Z2	contractor	location	[51.53988938706577, -0.11095295861951164]	2026-08-05 02:48:00-04
W-0603	245	Z2	staff	location	[51.459872200744975, -0.16876790675433925]	2026-08-05 02:51:00-04
W-0604	9185	Z2	contractor	location	[51.47961605923274, -0.16271894410281912]	2026-08-05 02:43:00-04
W-0605	1314	Z2	contractor	gate	[51.54918556338201, -0.1272951871492244]	2026-08-05 02:42:00-04
W-0606	7396	Z2	contractor	location	[51.47402933702986, -0.08732191580347463]	2026-08-05 02:43:00-04
W-0607	3858	Z2	contractor	gate	[51.519765845121704, -0.09890658184612026]	2026-08-05 02:45:00-04
W-0608	8711	Z2	contractor	location	[51.46991337195205, -0.10767517866381583]	2026-08-05 02:45:00-04
W-0609	8646	Z2	staff	location	[51.50227997414043, -0.15633496103112188]	2026-08-05 02:43:00-04
W-0610	5368	Z2	contractor	location	[51.479681549315465, -0.11865122637529787]	2026-08-05 02:45:00-04
W-0611	7506	Z2	staff	gate	[51.511938881120074, -0.1426457577602211]	2026-08-05 02:44:00-04
W-0612	4781	Z2	contractor	gate	[51.5559472103431, -0.11532337952915091]	2026-08-05 02:46:00-04
W-0613	1602	Z2	contractor	location	[51.47602582474733, -0.08247636472770374]	2026-08-05 02:42:00-04
W-0614	794	Z2	staff	gate	[51.51203456736603, -0.134315920004882]	2026-08-05 02:49:00-04
W-0615	2006	Z2	contractor	location	[51.49894456451317, -0.09740990453690627]	2026-08-05 02:51:00-04
W-0616	7208	Z2	staff	gate	[51.552691344159456, -0.13742898985167828]	2026-08-05 02:49:00-04
W-0617	1134	Z2	contractor	location	[51.517686461944834, -0.17638005203759616]	2026-08-05 02:41:00-04
W-0618	9641	Z2	staff	location	[51.459352511916215, -0.13328704200227404]	2026-08-05 02:43:00-04
W-0619	6027	Z2	contractor	gate	[51.47949020945828, -0.15276043838751716]	2026-08-05 02:51:00-04
W-0620	3919	Z2	contractor	gate	[51.557048193358504, -0.12703276074182335]	2026-08-05 02:49:00-04
W-0621	1698	Z2	contractor	gate	[51.512044923131285, -0.08061067428383056]	2026-08-05 02:44:00-04
W-0622	1002	Z2	contractor	location	[51.50899177532184, -0.12647414550796274]	2026-08-05 02:41:00-04
W-0623	6540	Z2	contractor	location	[51.49279966572717, -0.08488956849137773]	2026-08-05 02:52:00-04
W-0624	2043	Z2	contractor	location	[51.48540580450085, -0.10091386375262544]	2026-08-05 02:49:00-04
W-0625	9627	Z2	contractor	location	[51.51611942712281, -0.07950051269320262]	2026-08-05 02:47:00-04
W-0626	5715	Z2	contractor	gate	[51.49411712347967, -0.08367005510110313]	2026-08-05 02:40:00-04
W-0627	7536	Z2	contractor	location	[51.522363118748245, -0.15463215914551287]	2026-08-05 02:44:00-04
W-0628	6173	Z2	contractor	gate	[51.47086043570476, -0.1293277122935489]	2026-08-05 02:53:00-04
W-0629	1270	Z2	contractor	location	[51.49841435080138, -0.0928829421785008]	2026-08-05 02:49:00-04
W-0630	2941	Z2	contractor	location	[51.55525558955826, -0.12123116200429906]	2026-08-05 02:53:00-04
W-0631	4461	Z2	staff	gate	[51.48395202422452, -0.1194507630793405]	2026-08-05 02:46:00-04
W-0632	1076	Z2	staff	gate	[51.497146740791855, -0.08625243910721296]	2026-08-05 02:44:00-04
W-0633	3153	Z2	contractor	location	[51.523902168604145, -0.0847337629220385]	2026-08-05 02:47:00-04
W-0634	2539	Z2	contractor	gate	[51.52059340808136, -0.09845761625665034]	2026-08-05 02:53:00-04
W-0635	9377	Z2	contractor	location	[51.539310968776476, -0.1766301427407051]	2026-08-05 02:40:00-04
W-0636	7708	Z2	contractor	location	[51.45784189182673, -0.17305249628878963]	2026-08-05 02:40:00-04
W-0637	9233	Z2	contractor	location	[51.517109982264614, -0.12005440171804244]	2026-08-05 02:48:00-04
W-0638	4686	Z2	staff	location	[51.4952620877409, -0.11146285322910693]	2026-08-05 02:46:00-04
W-0639	3242	Z2	staff	location	[51.51529426061488, -0.158684772333663]	2026-08-05 02:51:00-04
W-0640	816	Z2	contractor	gate	[51.53143832888364, -0.09947121686850391]	2026-08-05 02:41:00-04
W-0641	8525	Z2	contractor	location	[51.53867254985464, -0.09189538811865941]	2026-08-05 02:47:00-04
W-0642	1534	Z2	contractor	location	[51.507868343990175, -0.13363503987896383]	2026-08-05 02:48:00-04
W-0643	1875	Z2	contractor	gate	[51.544941234845524, -0.13722666812778744]	2026-08-05 02:45:00-04
W-0644	3896	Z2	contractor	location	[51.4959081667204, -0.17055311646268012]	2026-08-05 02:41:00-04
W-0645	4287	Z2	staff	gate	[51.467462589136126, -0.10925859489504208]	2026-08-05 02:50:00-04
W-0646	6072	Z2	contractor	location	[51.528640025477536, -0.0826309969006188]	2026-08-05 02:39:00-04
W-0647	4005	Z2	contractor	location	[51.46974238942201, -0.1613240830606421]	2026-08-05 02:47:00-04
W-0648	294	Z2	contractor	location	[51.50555932533725, -0.12381474620033386]	2026-08-05 02:39:00-04
W-0649	3437	Z2	contractor	location	[51.541717974124126, -0.15845819159297259]	2026-08-05 02:45:00-04
W-0650	1439	Z2	contractor	location	[51.55478622675979, -0.16949509118470762]	2026-08-05 02:44:00-04
W-0651	6009	Z2	contractor	gate	[51.4581116036262, -0.09253717016711487]	2026-08-05 02:41:00-04
W-0652	4786	Z2	staff	location	[51.49294652978711, -0.14763760214013788]	2026-08-05 02:47:00-04
W-0653	8994	Z2	contractor	location	[51.520117920025314, -0.1142849526008628]	2026-08-05 02:51:00-04
W-0654	2440	Z2	staff	location	[51.51323933420736, -0.07988689654673002]	2026-08-05 02:49:00-04
W-0655	1218	Z2	staff	gate	[51.512762160549755, -0.16754549928286305]	2026-08-05 02:39:00-04
W-0656	7015	Z2	contractor	gate	[51.50663861377261, -0.13862840289623912]	2026-08-05 02:40:00-04
W-0657	7758	Z2	contractor	location	[51.51213329792977, -0.1468787997981894]	2026-08-05 02:47:00-04
W-0658	967	Z2	staff	location	[51.526123280109694, -0.14777995564535018]	2026-08-05 02:45:00-04
W-0659	5358	Z2	contractor	location	[51.46333351037488, -0.15814934620038096]	2026-08-05 02:43:00-04
W-0660	6977	Z2	contractor	gate	[51.477649274103634, -0.09755403370267211]	2026-08-05 02:41:00-04
W-0661	6248	Z2	staff	location	[51.51056919771743, -0.16343620857357313]	2026-08-05 02:48:00-04
W-0662	6428	Z2	contractor	location	[51.55027801322391, -0.1512993627667165]	2026-08-05 02:40:00-04
W-0663	4364	Z2	contractor	location	[51.47574900592004, -0.0925910426761735]	2026-08-05 02:39:00-04
W-0664	3330	Z2	contractor	gate	[51.556881711565296, -0.11524317041012647]	2026-08-05 02:51:00-04
W-0665	2892	Z2	contractor	location	[51.47643932102431, -0.08721527209228581]	2026-08-05 02:50:00-04
W-0666	6369	Z2	contractor	location	[51.5010917894138, -0.16083483159902964]	2026-08-05 02:42:00-04
W-0667	7010	Z2	contractor	location	[51.54619561856323, -0.13507470510241087]	2026-08-05 02:49:00-04
W-0668	403	Z2	staff	gate	[51.46492596333019, -0.0885170681537871]	2026-08-05 02:40:00-04
W-0669	8150	Z2	contractor	location	[51.46437222820042, -0.13035352495248187]	2026-08-05 02:49:00-04
W-0670	4518	Z2	contractor	gate	[51.45990786444535, -0.12489165570185917]	2026-08-05 02:40:00-04
W-0671	9415	Z2	contractor	gate	[51.505053716265195, -0.15352759488801712]	2026-08-05 02:50:00-04
W-0672	3231	Z2	contractor	gate	[51.52774742392409, -0.16884891241954922]	2026-08-05 02:45:00-04
W-0673	9056	Z2	contractor	location	[51.52959483307433, -0.13660338055587742]	2026-08-05 02:39:00-04
W-0674	3130	Z2	contractor	gate	[51.525761287647875, -0.1730085794901068]	2026-08-05 02:52:00-04
W-0675	5615	Z2	contractor	location	[51.512846792761934, -0.07896715198584901]	2026-08-05 02:51:00-04
W-0676	3626	Z2	contractor	gate	[51.503374673924085, -0.10335719764913216]	2026-08-05 02:40:00-04
W-0677	9414	Z2	contractor	location	[51.47989933880122, -0.0875967920919067]	2026-08-05 02:39:00-04
W-0678	8055	Z2	contractor	gate	[51.48148102089225, -0.10924772488347033]	2026-08-05 02:39:00-04
W-0679	5730	Z2	contractor	location	[51.484592065436175, -0.15233988160562612]	2026-08-05 02:47:00-04
W-0680	5375	Z2	staff	location	[51.533250574570204, -0.11224938339039842]	2026-08-05 02:49:00-04
W-0681	7159	Z2	contractor	location	[51.557325895950086, -0.114837088900342]	2026-08-05 02:48:00-04
W-0682	4932	Z2	staff	location	[51.48963142739727, -0.16507960058116358]	2026-08-05 02:44:00-04
W-0683	7537	Z2	contractor	gate	[51.49086159679163, -0.09898542807106649]	2026-08-05 02:40:00-04
W-0684	2594	Z2	contractor	gate	[51.45805950191629, -0.1309282845094507]	2026-08-05 02:53:00-04
W-0685	3178	Z2	contractor	gate	[51.53319057904902, -0.09616993154326639]	2026-08-05 02:47:00-04
W-0686	2892	Z2	contractor	location	[51.50898069687896, -0.10151711999437302]	2026-08-05 02:42:00-04
W-0687	5714	Z2	contractor	location	[51.53473933490443, -0.11191806369555174]	2026-08-05 02:40:00-04
W-0688	7748	Z2	contractor	gate	[51.55365993047012, -0.12276827140308962]	2026-08-05 02:45:00-04
W-0689	231	Z2	contractor	location	[51.51996751299983, -0.14831325020500902]	2026-08-05 02:41:00-04
W-0690	5280	Z2	contractor	location	[51.55677830348811, -0.12042857687454661]	2026-08-05 02:39:00-04
W-0691	3888	Z2	staff	location	[51.477637715840174, -0.10259276763019105]	2026-08-05 02:44:00-04
W-0692	2754	Z2	contractor	gate	[51.494340433415566, -0.09493155643769625]	2026-08-05 02:40:00-04
W-0693	8425	Z2	contractor	gate	[51.511564024250404, -0.10526476151025452]	2026-08-05 02:41:00-04
W-0694	6299	Z2	contractor	location	[51.48828176056831, -0.09030189142295411]	2026-08-05 02:50:00-04
W-0695	3184	Z2	contractor	gate	[51.54331933159879, -0.1723787150314878]	2026-08-05 02:53:00-04
W-0696	5739	Z2	contractor	gate	[51.53655494006981, -0.13016687453126582]	2026-08-05 02:49:00-04
W-0697	2794	Z2	contractor	location	[51.53942164492295, -0.16121399099198533]	2026-08-05 02:42:00-04
W-0698	9617	Z2	contractor	location	[51.516596115889634, -0.13577223540374767]	2026-08-05 02:46:00-04
W-0699	2980	Z2	staff	location	[51.46980383321383, -0.08119441190818591]	2026-08-05 02:49:00-04
W-0700	5013	Z2	contractor	location	[51.48404319963043, -0.08904346219340235]	2026-08-05 02:48:00-04
W-0701	9088	Z2	contractor	location	[51.4726226754279, -0.13855566640270853]	2026-08-05 02:43:00-04
W-0702	5820	Z2	staff	location	[51.50155927718741, -0.0908466524407809]	2026-08-05 02:39:00-04
W-0703	3580	Z2	contractor	location	[51.49412659348529, -0.16150382310046196]	2026-08-05 02:43:00-04
W-0704	5582	Z2	contractor	location	[51.466144853314375, -0.09958146010064074]	2026-08-05 02:45:00-04
W-0705	4132	Z2	staff	location	[51.50741148128229, -0.10080893674930236]	2026-08-05 02:44:00-04
W-0706	4289	Z2	staff	location	[51.556033852502374, -0.11726862537937187]	2026-08-05 02:48:00-04
W-0707	4862	Z2	contractor	location	[51.524842275967515, -0.17635522892305266]	2026-08-05 02:52:00-04
W-0708	2642	Z2	staff	gate	[51.55232080285025, -0.13300083394117113]	2026-08-05 02:47:00-04
W-0709	624	Z2	contractor	location	[51.49394544884076, -0.1588065790063583]	2026-08-05 02:42:00-04
W-0710	4337	Z2	contractor	location	[51.548758354611834, -0.08018167339903033]	2026-08-05 02:44:00-04
W-0711	6613	Z2	contractor	location	[51.47365882047732, -0.14831899806683774]	2026-08-05 02:43:00-04
W-0712	1005	Z2	contractor	location	[51.50225885476496, -0.12063474423485535]	2026-08-05 02:49:00-04
W-0713	4776	Z2	contractor	location	[51.45963411582637, -0.1285726891596609]	2026-08-05 02:41:00-04
W-0714	7226	Z2	staff	location	[51.521042320334985, -0.09891677432511999]	2026-08-05 02:50:00-04
W-0715	4400	Z2	contractor	location	[51.467422591195906, -0.09475269121146243]	2026-08-05 02:51:00-04
W-0716	4782	Z2	contractor	location	[51.50831331192061, -0.09969160131935055]	2026-08-05 02:53:00-04
W-0717	7785	Z2	contractor	location	[51.54618375036037, -0.16602170837848768]	2026-08-05 02:49:00-04
W-0718	1412	Z2	contractor	location	[51.521668840327806, -0.1776116759712303]	2026-08-05 02:46:00-04
W-0719	2692	Z2	contractor	gate	[51.485810405049044, -0.08567199740424021]	2026-08-05 02:50:00-04
W-0720	7182	Z2	staff	location	[51.510068981261284, -0.13717183327092872]	2026-08-05 02:53:00-04
W-0721	6132	Z2	contractor	location	[51.49514014118579, -0.1432493429933151]	2026-08-05 02:49:00-04
W-0722	7061	Z2	staff	location	[51.4762713698895, -0.14451863963830752]	2026-08-05 02:42:00-04
W-0723	4588	Z2	staff	location	[51.55330854336186, -0.08750580930998135]	2026-08-05 02:47:00-04
W-0724	1842	Z2	contractor	location	[51.457820139929936, -0.09065004214123602]	2026-08-05 02:51:00-04
W-0725	4487	Z2	contractor	location	[51.474677245096245, -0.13743631270001433]	2026-08-05 02:47:00-04
W-0726	728	Z2	staff	gate	[51.48827026235992, -0.1596641530505437]	2026-08-05 02:45:00-04
W-0727	8086	Z2	contractor	location	[51.49798366462085, -0.09299797484906673]	2026-08-05 02:40:00-04
W-0728	4863	Z2	contractor	gate	[51.5291139264672, -0.08263275269343413]	2026-08-05 02:41:00-04
W-0729	721	Z2	contractor	location	[51.54709595088677, -0.14506861917758557]	2026-08-05 02:39:00-04
W-0730	5448	Z2	staff	location	[51.50757544527188, -0.14161132403200527]	2026-08-05 02:40:00-04
W-0731	8870	Z3	contractor	location	[51.510894341511836, -0.10003620242987357]	2026-08-05 02:45:00-04
W-0732	6681	Z3	contractor	location	[51.46946192183618, -0.11026096946341891]	2026-08-05 02:43:00-04
W-0733	3173	Z3	staff	location	[51.46777836482959, -0.1483001130169385]	2026-08-05 02:42:00-04
W-0734	9503	Z3	contractor	gate	[51.54007419281242, -0.1355091613650321]	2026-08-05 02:50:00-04
W-0735	1095	Z3	contractor	location	[51.50117934199187, -0.14259134862097558]	2026-08-05 02:45:00-04
W-0736	9195	Z3	contractor	location	[51.458605780166245, -0.1674695347411793]	2026-08-05 02:49:00-04
W-0737	627	Z3	contractor	gate	[51.52456384369786, -0.15808651291222048]	2026-08-05 02:44:00-04
W-0738	9098	Z3	contractor	gate	[51.53698166236399, -0.08405546359702737]	2026-08-05 02:40:00-04
W-0739	8710	Z3	contractor	location	[51.54799146946989, -0.13169370513003537]	2026-08-05 02:52:00-04
W-0740	7205	Z3	contractor	location	[51.52250258958934, -0.1527810779248729]	2026-08-05 02:45:00-04
W-0741	9420	Z3	contractor	location	[51.49032506781282, -0.16794927610832253]	2026-08-05 02:39:00-04
W-0742	1444	Z3	contractor	location	[51.52700769236764, -0.16240026826326745]	2026-08-05 02:47:00-04
W-0743	1766	Z3	contractor	location	[51.541153270917555, -0.08505309932768122]	2026-08-05 02:47:00-04
W-0744	9782	Z3	contractor	gate	[51.514774421011246, -0.11656273013826304]	2026-08-05 02:41:00-04
W-0745	4793	Z3	contractor	gate	[51.47973997851033, -0.15159352868085402]	2026-08-05 02:39:00-04
W-0746	729	Z3	contractor	location	[51.52557020356512, -0.15650961280103623]	2026-08-05 02:39:00-04
W-0747	346	Z3	contractor	location	[51.5008364127139, -0.13072761791186605]	2026-08-05 02:52:00-04
W-0748	122	Z3	staff	gate	[51.505268318395956, -0.09604184367834159]	2026-08-05 02:44:00-04
W-0749	9150	Z3	contractor	gate	[51.53889953088875, -0.08195708099068524]	2026-08-05 02:49:00-04
W-0750	9407	Z3	contractor	gate	[51.512576221740005, -0.14641244162733766]	2026-08-05 02:52:00-04
W-0751	6323	Z3	contractor	location	[51.5079153926785, -0.16107637469735597]	2026-08-05 02:42:00-04
W-0752	6701	Z3	staff	location	[51.48385300024204, -0.08343385486077448]	2026-08-05 02:41:00-04
W-0753	9031	Z3	contractor	gate	[51.49461858435998, -0.07937454971858451]	2026-08-05 02:50:00-04
W-0754	1031	Z3	contractor	location	[51.532930158354056, -0.10549892100220783]	2026-08-05 02:39:00-04
W-0755	4339	Z3	contractor	location	[51.48888088393753, -0.11366109022910523]	2026-08-05 02:43:00-04
W-0756	4946	Z3	staff	location	[51.50757022506353, -0.08134498515196717]	2026-08-05 02:53:00-04
W-0757	1175	Z3	contractor	location	[51.48250330101907, -0.11549578618660411]	2026-08-05 02:42:00-04
W-0758	2390	Z3	staff	location	[51.50271960810312, -0.16528291073790513]	2026-08-05 02:48:00-04
W-0759	7301	Z3	contractor	location	[51.52396683067021, -0.08421580694726609]	2026-08-05 02:46:00-04
W-0760	8056	Z3	contractor	gate	[51.50688247385407, -0.13090575655119469]	2026-08-05 02:49:00-04
W-0761	1651	Z3	contractor	location	[51.54215981931069, -0.11930490330475083]	2026-08-05 02:53:00-04
W-0762	1595	Z3	staff	gate	[51.478731360755106, -0.07992688333212597]	2026-08-05 02:40:00-04
W-0763	296	Z3	contractor	location	[51.54731896971927, -0.10230819938468813]	2026-08-05 02:48:00-04
W-0764	1254	Z3	contractor	location	[51.539530297858676, -0.12970619939024436]	2026-08-05 02:51:00-04
W-0765	4029	Z3	contractor	gate	[51.4622206990714, -0.1396873175135294]	2026-08-05 02:49:00-04
W-0766	2647	Z3	contractor	location	[51.54366908032204, -0.1699856413368587]	2026-08-05 02:48:00-04
W-0767	531	Z3	contractor	location	[51.45876137672521, -0.11173503578658095]	2026-08-05 02:52:00-04
W-0768	5812	Z3	contractor	location	[51.480328073450885, -0.13962785700151645]	2026-08-05 02:49:00-04
W-0769	3753	Z3	staff	location	[51.54889282203795, -0.107758728903822]	2026-08-05 02:50:00-04
W-0770	9338	Z3	contractor	location	[51.47952078220493, -0.0830085610213916]	2026-08-05 02:53:00-04
W-0771	9662	Z3	staff	gate	[51.506372617563116, -0.13224339555082043]	2026-08-05 02:40:00-04
W-0772	9053	Z3	contractor	gate	[51.5306891815585, -0.1515435118512339]	2026-08-05 02:49:00-04
W-0773	2556	Z3	contractor	gate	[51.53578314310696, -0.13958184669760604]	2026-08-05 02:44:00-04
W-0774	4519	Z3	contractor	location	[51.45849064931194, -0.16171379755087045]	2026-08-05 02:43:00-04
W-0775	9439	Z3	staff	location	[51.50244720840733, -0.17336974436129948]	2026-08-05 02:41:00-04
W-0776	9015	Z3	contractor	gate	[51.54878137833751, -0.14974824159175934]	2026-08-05 02:48:00-04
W-0777	2627	Z3	staff	location	[51.55218586287138, -0.1743114800223466]	2026-08-05 02:45:00-04
W-0778	9837	Z3	contractor	gate	[51.47611219378422, -0.11430856879391905]	2026-08-05 02:46:00-04
W-0779	538	Z3	contractor	location	[51.507928953500006, -0.13971407358245086]	2026-08-05 02:43:00-04
W-0780	7936	Z3	staff	location	[51.52387995760819, -0.1043630612365933]	2026-08-05 02:42:00-04
W-0781	9140	Z3	staff	location	[51.47811031753667, -0.10769868129612407]	2026-08-05 02:41:00-04
W-0782	8432	Z3	contractor	gate	[51.45778113585563, -0.09158622062447684]	2026-08-05 02:51:00-04
W-0783	5884	Z3	contractor	gate	[51.535732817146105, -0.1211136813949279]	2026-08-05 02:49:00-04
W-0784	629	Z3	contractor	location	[51.53167853763932, -0.17326953216038682]	2026-08-05 02:50:00-04
W-0785	4662	Z3	contractor	gate	[51.55592625942843, -0.11329586207895262]	2026-08-05 02:43:00-04
W-0786	7413	Z3	contractor	location	[51.47108965779883, -0.1455723106524747]	2026-08-05 02:42:00-04
W-0787	4881	Z3	contractor	location	[51.518825515069125, -0.09422129996461327]	2026-08-05 02:52:00-04
W-0788	7094	Z3	staff	gate	[51.47861700697552, -0.17323187588389755]	2026-08-05 02:50:00-04
W-0789	2878	Z3	contractor	gate	[51.55452515663022, -0.14518343753967994]	2026-08-05 02:42:00-04
W-0790	8614	Z3	contractor	gate	[51.524096037746425, -0.17073254746468905]	2026-08-05 02:51:00-04
W-0791	4680	Z3	contractor	gate	[51.53451744835628, -0.13648044496257855]	2026-08-05 02:51:00-04
W-0792	7971	Z3	contractor	location	[51.47220699363338, -0.135103629221131]	2026-08-05 02:52:00-04
W-0793	7686	Z3	contractor	gate	[51.470209122782634, -0.09149787469800903]	2026-08-05 02:43:00-04
W-0794	2814	Z3	contractor	gate	[51.5341596550683, -0.1135401081916933]	2026-08-05 02:43:00-04
W-0795	4950	Z3	contractor	gate	[51.4781233495348, -0.12278768448556805]	2026-08-05 02:53:00-04
W-0796	647	Z3	contractor	location	[51.530245192024864, -0.15694350288536396]	2026-08-05 02:40:00-04
W-0797	6569	Z3	contractor	location	[51.50032714506272, -0.12970778037839753]	2026-08-05 02:40:00-04
W-0798	2449	Z3	contractor	location	[51.46789541011815, -0.09254579647199976]	2026-08-05 02:42:00-04
W-0799	3679	Z3	contractor	gate	[51.48586291027338, -0.17377745874599196]	2026-08-05 02:43:00-04
W-0800	3705	Z3	contractor	location	[51.55333960003417, -0.13748179584189896]	2026-08-05 02:53:00-04
W-0801	8616	Z3	contractor	location	[51.474766726020974, -0.15167282530025417]	2026-08-05 02:51:00-04
W-0802	2031	Z3	contractor	gate	[51.54274705329326, -0.13994735732279312]	2026-08-05 02:46:00-04
W-0803	4906	Z3	contractor	gate	[51.51264462107223, -0.12254593248137367]	2026-08-05 02:45:00-04
W-0804	4352	Z3	contractor	gate	[51.49774703028808, -0.08905920553143255]	2026-08-05 02:42:00-04
W-0805	206	Z3	contractor	location	[51.483363674126515, -0.11397074515366723]	2026-08-05 02:40:00-04
W-0806	8034	Z3	contractor	gate	[51.485518009346684, -0.13086136107449875]	2026-08-05 02:45:00-04
W-0807	1988	Z3	staff	location	[51.46863659970744, -0.1646966820504136]	2026-08-05 02:49:00-04
W-0808	8015	Z3	staff	location	[51.48972070377151, -0.07898421586143331]	2026-08-05 02:51:00-04
W-0809	9456	Z3	contractor	location	[51.48578163946702, -0.13220338015241234]	2026-08-05 02:39:00-04
W-0810	9242	Z3	contractor	location	[51.549956862553046, -0.10330019200148728]	2026-08-05 02:46:00-04
W-0811	4775	Z3	staff	location	[51.47152637361252, -0.10329804023848756]	2026-08-05 02:43:00-04
W-0812	2897	Z3	contractor	gate	[51.480540661887936, -0.11026720972190014]	2026-08-05 02:40:00-04
W-0813	3537	Z3	contractor	location	[51.46168189644411, -0.15294027423257642]	2026-08-05 02:40:00-04
W-0814	2498	Z3	contractor	location	[51.505464524646605, -0.17546811633281242]	2026-08-05 02:52:00-04
W-0815	2953	Z3	contractor	gate	[51.47790648125949, -0.14212101490289072]	2026-08-05 02:50:00-04
W-0816	591	Z3	contractor	gate	[51.50400999899584, -0.14631586917957956]	2026-08-05 02:48:00-04
W-0817	1951	Z3	staff	location	[51.50511240418792, -0.153990637963676]	2026-08-05 02:49:00-04
W-0818	9013	Z3	contractor	location	[51.48186990470701, -0.09654744470102838]	2026-08-05 02:51:00-04
W-0819	5177	Z3	staff	location	[51.530840678152884, -0.11039882873248802]	2026-08-05 02:49:00-04
W-0820	2108	Z3	staff	location	[51.557184357564964, -0.1644448261131441]	2026-08-05 02:41:00-04
W-0821	6525	Z3	staff	gate	[51.535461304508615, -0.10389771265681141]	2026-08-05 02:52:00-04
W-0822	5210	Z3	contractor	location	[51.549814766829414, -0.168056617958543]	2026-08-05 02:48:00-04
W-0823	8033	Z3	staff	gate	[51.53695520431524, -0.17117633660612833]	2026-08-05 02:44:00-04
W-0824	3976	Z3	contractor	location	[51.48656473312774, -0.15118304409167352]	2026-08-05 02:53:00-04
W-0825	1647	Z3	contractor	location	[51.50540404853782, -0.1549221579787847]	2026-08-05 02:43:00-04
W-0826	7356	Z3	contractor	location	[51.49087447248675, -0.10479615255966536]	2026-08-05 02:43:00-04
W-0827	4046	Z3	contractor	location	[51.5522561262662, -0.13143945644330482]	2026-08-05 02:41:00-04
W-0828	8500	Z3	contractor	gate	[51.46807247480339, -0.1579809359838714]	2026-08-05 02:48:00-04
W-0829	3467	Z3	contractor	location	[51.469948948760205, -0.090650920035311]	2026-08-05 02:46:00-04
W-0830	863	Z3	contractor	gate	[51.54704589597269, -0.07912330985374319]	2026-08-05 02:39:00-04
W-0831	1938	Z3	staff	location	[51.47763002681035, -0.08603393346843445]	2026-08-05 02:47:00-04
W-0832	8022	Z3	contractor	location	[51.53984027712794, -0.08973342416154492]	2026-08-05 02:50:00-04
W-0833	2327	Z3	contractor	location	[51.5263036062501, -0.1294560317525144]	2026-08-05 02:52:00-04
W-0834	9488	Z3	contractor	location	[51.51873382861815, -0.08030891409636617]	2026-08-05 02:47:00-04
W-0835	4457	Z3	contractor	location	[51.53348742802973, -0.13537768257946653]	2026-08-05 02:42:00-04
W-0836	8533	Z3	contractor	location	[51.46810547021435, -0.17151272136604542]	2026-08-05 02:50:00-04
W-0837	8434	Z3	contractor	gate	[51.54499196011179, -0.12565259037708898]	2026-08-05 02:45:00-04
W-0838	5839	Z3	contractor	gate	[51.5219635049894, -0.0842045679302727]	2026-08-05 02:45:00-04
W-0839	7039	Z3	contractor	location	[51.47148283519823, -0.15538577456191371]	2026-08-05 02:42:00-04
W-0840	6693	Z3	contractor	gate	[51.470197612515385, -0.10949965979829482]	2026-08-05 02:51:00-04
W-0841	2017	Z3	contractor	gate	[51.481084739112546, -0.11193694630502986]	2026-08-05 02:53:00-04
W-0842	7704	Z3	contractor	location	[51.468186204967786, -0.16052099651532625]	2026-08-05 02:51:00-04
W-0843	935	Z3	contractor	gate	[51.49618924274996, -0.08220722472619837]	2026-08-05 02:42:00-04
W-0844	9712	Z3	contractor	gate	[51.54599888206379, -0.1128117200857591]	2026-08-05 02:41:00-04
W-0845	9408	Z3	contractor	location	[51.49096312355402, -0.10852219833183623]	2026-08-05 02:46:00-04
W-0846	2567	Z3	contractor	location	[51.489498635311584, -0.1296386487200184]	2026-08-05 02:43:00-04
W-0847	4550	Z3	contractor	location	[51.533276335816694, -0.16003526878220836]	2026-08-05 02:40:00-04
W-0848	703	Z3	contractor	location	[51.49246314851897, -0.08890662097515169]	2026-08-05 02:39:00-04
W-0849	2864	Z3	staff	gate	[51.47332880947994, -0.11611832564364304]	2026-08-05 02:47:00-04
W-0850	3505	Z3	staff	location	[51.46451765781457, -0.13800934093554512]	2026-08-05 02:41:00-04
W-0851	1569	Z3	contractor	location	[51.468865330562586, -0.07980446763238215]	2026-08-05 02:45:00-04
W-0852	9799	Z3	contractor	location	[51.4934920292841, -0.1101373112977147]	2026-08-05 02:53:00-04
W-0853	982	Z3	contractor	location	[51.55213948525371, -0.08773115261621899]	2026-08-05 02:47:00-04
W-0854	4572	Z3	contractor	location	[51.51150047351807, -0.12071275223881733]	2026-08-05 02:40:00-04
W-0855	8913	Z3	staff	gate	[51.53338451416156, -0.16125802593188726]	2026-08-05 02:47:00-04
W-0856	3830	Z3	contractor	location	[51.5124081035659, -0.0846495454061883]	2026-08-05 02:47:00-04
W-0857	6556	Z3	staff	gate	[51.488158876005436, -0.08878169753205727]	2026-08-05 02:51:00-04
W-0858	1170	Z3	contractor	location	[51.507225909144374, -0.10830491136165914]	2026-08-05 02:44:00-04
W-0859	6047	Z3	staff	gate	[51.496225464663, -0.16451401639014412]	2026-08-05 02:48:00-04
W-0860	8615	Z3	staff	gate	[51.53620982456124, -0.14068922793298436]	2026-08-05 02:45:00-04
W-0861	6843	Z3	contractor	location	[51.549634407599385, -0.12294023767722623]	2026-08-05 02:41:00-04
W-0862	6288	Z3	contractor	gate	[51.522181450686354, -0.16434717784048408]	2026-08-05 02:53:00-04
W-0863	1074	Z3	contractor	gate	[51.52801917565093, -0.11295680335982944]	2026-08-05 02:40:00-04
W-0864	3556	Z3	contractor	location	[51.45843930669195, -0.176918727020759]	2026-08-05 02:43:00-04
W-0865	330	Z3	contractor	location	[51.481101670078594, -0.08882495578461251]	2026-08-05 02:52:00-04
W-0866	2433	Z3	contractor	gate	[51.55279038538487, -0.1554335025328131]	2026-08-05 02:42:00-04
W-0867	9305	Z3	contractor	location	[51.54785030993893, -0.16777030377115895]	2026-08-05 02:46:00-04
W-0868	6576	Z3	contractor	gate	[51.48751358622376, -0.12272173994856123]	2026-08-05 02:42:00-04
W-0869	8345	Z3	contractor	gate	[51.54322093546723, -0.07832513950384881]	2026-08-05 02:41:00-04
W-0870	9635	Z3	contractor	location	[51.46766367206707, -0.08335748232708934]	2026-08-05 02:46:00-04
W-0871	1368	Z3	contractor	location	[51.46503193841535, -0.12035418307559333]	2026-08-05 02:48:00-04
W-0872	3196	Z3	contractor	gate	[51.5285386982364, -0.12243996295332196]	2026-08-05 02:47:00-04
W-0873	1815	Z3	contractor	gate	[51.504217609175555, -0.16618730372716684]	2026-08-05 02:48:00-04
W-0874	3690	Z3	contractor	location	[51.53093657641502, -0.12449426184393884]	2026-08-05 02:45:00-04
W-0875	6914	Z3	staff	location	[51.49424430356426, -0.15409558924871328]	2026-08-05 02:41:00-04
W-0876	3723	Z3	contractor	location	[51.556232672781036, -0.16299255283260447]	2026-08-05 02:42:00-04
W-0877	4928	Z3	contractor	location	[51.46483995718289, -0.17156404618477916]	2026-08-05 02:40:00-04
W-0878	5456	Z3	contractor	location	[51.484029585282684, -0.11338028215213741]	2026-08-05 02:44:00-04
W-0879	3632	Z3	contractor	location	[51.460581927348954, -0.15732716039860917]	2026-08-05 02:40:00-04
W-0880	8664	Z3	contractor	location	[51.52818907699242, -0.17023879011315723]	2026-08-05 02:46:00-04
W-0881	7840	Z3	contractor	location	[51.544877342181636, -0.15160913671072018]	2026-08-05 02:39:00-04
W-0882	128	Z3	contractor	gate	[51.55246277970239, -0.09446104554870698]	2026-08-05 02:52:00-04
W-0883	5411	Z3	contractor	gate	[51.500334044433885, -0.12580447666849331]	2026-08-05 02:44:00-04
W-0884	9299	Z3	contractor	location	[51.489721731486036, -0.14912308857010814]	2026-08-05 02:44:00-04
W-0885	2760	Z3	contractor	gate	[51.50758130407373, -0.1405856382519422]	2026-08-05 02:51:00-04
W-0886	351	Z3	contractor	location	[51.51699000307739, -0.13622333869736986]	2026-08-05 02:51:00-04
W-0887	5337	Z3	contractor	location	[51.51654521670038, -0.08356176263780438]	2026-08-05 02:49:00-04
W-0888	2517	Z3	contractor	gate	[51.49424997507936, -0.08620475656823873]	2026-08-05 02:52:00-04
W-0889	1006	Z3	contractor	location	[51.52231340756709, -0.1341827636767052]	2026-08-05 02:40:00-04
W-0890	480	Z3	staff	gate	[51.503199572445205, -0.13815646469041892]	2026-08-05 02:50:00-04
W-0891	6299	Z3	contractor	gate	[51.50012337261626, -0.15717491178553986]	2026-08-05 02:39:00-04
W-0892	6212	Z3	contractor	gate	[51.502489750521114, -0.1589358722248139]	2026-08-05 02:46:00-04
W-0893	8774	Z3	staff	gate	[51.51739661389571, -0.11150049254951161]	2026-08-05 02:46:00-04
W-0894	2261	Z3	contractor	gate	[51.555253264906256, -0.0845834450281655]	2026-08-05 02:41:00-04
W-0895	920	Z3	contractor	gate	[51.473801487778665, -0.07852857185978217]	2026-08-05 02:52:00-04
W-0896	9254	Z3	contractor	location	[51.539525427227275, -0.11610441747521538]	2026-08-05 02:43:00-04
W-0897	6407	Z3	contractor	location	[51.50591537590245, -0.13811687726728286]	2026-08-05 02:50:00-04
W-0898	5866	Z3	staff	location	[51.482280511400326, -0.11039443711996118]	2026-08-05 02:50:00-04
W-0899	3055	Z3	contractor	gate	[51.46132966242649, -0.09344311970422224]	2026-08-05 02:42:00-04
W-0900	2593	Z3	contractor	location	[51.55353326471966, -0.11136462218550307]	2026-08-05 02:49:00-04
W-0901	911	Z3	contractor	location	[51.55352575079442, -0.14468739116295506]	2026-08-05 02:41:00-04
W-0902	8890	Z3	contractor	location	[51.46533934008523, -0.07950328857345677]	2026-08-05 02:50:00-04
W-0903	7871	Z3	staff	gate	[51.49037837165165, -0.13311443967293268]	2026-08-05 02:42:00-04
W-0904	1608	Z3	staff	location	[51.49407402124671, -0.13559188229837943]	2026-08-05 02:47:00-04
W-0905	8413	Z3	contractor	gate	[51.50797189533567, -0.11106741445824965]	2026-08-05 02:42:00-04
W-0906	1200	Z3	contractor	location	[51.541724042694995, -0.17169561838714156]	2026-08-05 02:46:00-04
W-0907	8173	Z3	contractor	gate	[51.55368033524049, -0.16909152556815227]	2026-08-05 02:46:00-04
W-0908	6047	Z3	contractor	location	[51.550342403710935, -0.10187930866335898]	2026-08-05 02:47:00-04
W-0909	5372	Z3	contractor	location	[51.532598600678405, -0.09434940574513054]	2026-08-05 02:46:00-04
W-0910	6719	Z3	contractor	location	[51.5074224103495, -0.16907046245379537]	2026-08-05 02:40:00-04
W-0911	1860	Z3	contractor	location	[51.48172330528794, -0.177532315159939]	2026-08-05 02:48:00-04
W-0912	8038	Z3	contractor	location	[51.5227943758428, -0.15718778135584682]	2026-08-05 02:49:00-04
W-0913	5046	Z3	contractor	gate	[51.47573259334837, -0.0893114026838851]	2026-08-05 02:40:00-04
W-0914	6316	Z3	staff	location	[51.47098991108751, -0.1648941911815776]	2026-08-05 02:51:00-04
W-0915	2447	Z3	contractor	location	[51.50720431038499, -0.14198290055563179]	2026-08-05 02:52:00-04
W-0916	3493	Z3	contractor	location	[51.47318923697426, -0.1745421703758817]	2026-08-05 02:44:00-04
W-0917	4814	Z3	staff	gate	[51.48808323308394, -0.1674954931610806]	2026-08-05 02:47:00-04
W-0918	6024	Z3	contractor	location	[51.49445919905747, -0.156831618662192]	2026-08-05 02:40:00-04
W-0919	6147	Z3	staff	gate	[51.499741847940065, -0.12359890698485437]	2026-08-05 02:39:00-04
W-0920	2470	Z3	staff	location	[51.46214498525417, -0.11419269264343056]	2026-08-05 02:53:00-04
W-0921	7901	Z3	contractor	location	[51.48567016685141, -0.0927733672099412]	2026-08-05 02:42:00-04
W-0922	3354	Z3	contractor	gate	[51.55573676254253, -0.13722201837257358]	2026-08-05 02:53:00-04
W-0923	9787	Z3	staff	gate	[51.460317412208326, -0.10927998242872014]	2026-08-05 02:47:00-04
W-0924	8054	Z3	contractor	gate	[51.53148308586593, -0.12492236885349114]	2026-08-05 02:51:00-04
W-0925	9705	Z3	staff	gate	[51.47205086247471, -0.12082343450909692]	2026-08-05 02:46:00-04
W-0926	8202	Z3	contractor	gate	[51.47413979567209, -0.1765841084523756]	2026-08-05 02:41:00-04
W-0927	6266	Z3	contractor	gate	[51.464671936722155, -0.08019747103400747]	2026-08-05 02:40:00-04
W-0928	5044	Z3	staff	gate	[51.51861721170269, -0.14516544240472723]	2026-08-05 02:40:00-04
W-0929	2974	Z3	contractor	gate	[51.48543001209926, -0.10377568455224107]	2026-08-05 02:41:00-04
W-0930	9312	Z3	contractor	location	[51.54632871713116, -0.1050215418586857]	2026-08-05 02:46:00-04
W-0931	1873	Z3	contractor	location	[51.46645880006999, -0.1590566598422109]	2026-08-05 02:50:00-04
W-0932	4954	Z3	contractor	gate	[51.48345219629985, -0.09449054005890033]	2026-08-05 02:40:00-04
W-0933	5055	Z3	contractor	gate	[51.51897927122477, -0.1673672115350596]	2026-08-05 02:50:00-04
W-0934	7375	Z3	staff	gate	[51.50785755070383, -0.08533722609766967]	2026-08-05 02:44:00-04
W-0935	4090	Z3	staff	gate	[51.5079715744195, -0.11621578577959912]	2026-08-05 02:48:00-04
W-0936	7050	Z3	staff	gate	[51.47482917907065, -0.10806651638081821]	2026-08-05 02:53:00-04
W-0937	157	Z3	contractor	location	[51.50524361131925, -0.08628681320056869]	2026-08-05 02:46:00-04
W-0938	7707	Z3	contractor	location	[51.48663323398037, -0.08028558114380376]	2026-08-05 02:43:00-04
W-0939	382	Z3	contractor	location	[51.461377569164576, -0.14891252494674542]	2026-08-05 02:51:00-04
W-0940	7103	Z3	staff	location	[51.49839941374674, -0.1705512833851743]	2026-08-05 02:40:00-04
W-0941	5346	Z3	contractor	location	[51.49058215005414, -0.09113957179393312]	2026-08-05 02:43:00-04
W-0942	4005	Z3	contractor	gate	[51.50379874570813, -0.1067517653203018]	2026-08-05 02:51:00-04
W-0943	7306	Z3	contractor	location	[51.49883238323275, -0.08497700671698424]	2026-08-05 02:52:00-04
W-0944	9770	Z3	contractor	gate	[51.49160565983701, -0.13313081065007615]	2026-08-05 02:49:00-04
W-0945	6813	Z3	contractor	location	[51.50515371926108, -0.11611344623859407]	2026-08-05 02:41:00-04
W-0946	6849	Z3	staff	location	[51.482096697962966, -0.16021709294169978]	2026-08-05 02:40:00-04
W-0947	5976	Z3	contractor	gate	[51.50559514365166, -0.10063674782157087]	2026-08-05 02:51:00-04
W-0948	8747	Z3	contractor	location	[51.510133557051454, -0.11513484667010636]	2026-08-05 02:53:00-04
W-0949	3750	Z3	contractor	location	[51.48925913486334, -0.08998880935593033]	2026-08-05 02:49:00-04
W-0950	5207	Z3	contractor	location	[51.49425340663826, -0.15358963639112308]	2026-08-05 02:43:00-04
W-0951	7736	Z3	contractor	location	[51.543419132907516, -0.0863878945956124]	2026-08-05 02:46:00-04
W-0952	5550	Z3	staff	location	[51.55598230417197, -0.17184001303950847]	2026-08-05 02:41:00-04
W-0953	3019	Z3	contractor	location	[51.50315082907286, -0.14880694032521358]	2026-08-05 02:51:00-04
W-0954	7846	Z3	staff	location	[51.51265203519082, -0.08200137735426605]	2026-08-05 02:40:00-04
W-0955	7041	Z3	contractor	location	[51.51016333897985, -0.14019759765597084]	2026-08-05 02:47:00-04
W-0956	812	Z3	contractor	location	[51.47719175348785, -0.10571108755242636]	2026-08-05 02:45:00-04
W-0957	1161	Z3	contractor	gate	[51.540865006364925, -0.08412115137736588]	2026-08-05 02:45:00-04
W-0958	6345	Z3	staff	gate	[51.49178129158352, -0.1251598305495401]	2026-08-05 02:39:00-04
W-0959	5611	Z3	contractor	gate	[51.480673855753686, -0.12486409139921278]	2026-08-05 02:45:00-04
W-0960	227	Z3	staff	gate	[51.538067826994244, -0.1086551591629423]	2026-08-05 02:53:00-04
W-0961	3425	Z3	contractor	gate	[51.45741994397431, -0.09135950172423933]	2026-08-05 02:40:00-04
W-0962	8099	Z3	contractor	location	[51.487267760384064, -0.12568260620043414]	2026-08-05 02:49:00-04
W-0963	4870	Z3	contractor	location	[51.54907040598083, -0.14945253190838526]	2026-08-05 02:40:00-04
W-0964	7888	Z3	staff	location	[51.480295235786706, -0.16109026669290305]	2026-08-05 02:42:00-04
W-0965	4539	Z3	staff	gate	[51.471063080335924, -0.09803665906207133]	2026-08-05 02:48:00-04
W-0966	7920	Z3	staff	location	[51.50639936204004, -0.1026741413446104]	2026-08-05 02:47:00-04
W-0967	1891	Z3	contractor	gate	[51.552624053177716, -0.10079271790391268]	2026-08-05 02:48:00-04
W-0968	133	Z3	staff	gate	[51.533475156721444, -0.12007446522795595]	2026-08-05 02:53:00-04
W-0969	9972	Z3	staff	location	[51.51223154610946, -0.14459479623666233]	2026-08-05 02:42:00-04
W-0970	6287	Z3	contractor	location	[51.50116484336942, -0.09787784147152069]	2026-08-05 02:50:00-04
W-0971	1130	Z3	contractor	gate	[51.5387540429667, -0.15821867031603284]	2026-08-05 02:45:00-04
W-0972	5169	Z3	contractor	location	[51.542441460607776, -0.15118811025697199]	2026-08-05 02:52:00-04
W-0973	5434	Z3	contractor	location	[51.52092078820199, -0.08192258382951143]	2026-08-05 02:46:00-04
W-0974	113	Z3	contractor	location	[51.49262465750256, -0.0804521118305205]	2026-08-05 02:43:00-04
W-0975	5408	Z3	contractor	gate	[51.54672840451574, -0.17110307499810862]	2026-08-05 02:48:00-04
W-0976	6277	Z3	staff	location	[51.51866554517828, -0.09075905137175082]	2026-08-05 02:50:00-04
W-0977	2430	Z3	staff	location	[51.478241569160936, -0.08645171837780931]	2026-08-05 02:51:00-04
W-0978	8290	Z3	staff	location	[51.551293781370546, -0.10536299782758624]	2026-08-05 02:53:00-04
W-0979	3226	Z3	contractor	location	[51.5284806758826, -0.09847110565456525]	2026-08-05 02:47:00-04
W-0980	6922	Z3	staff	location	[51.55049420412943, -0.14233721413809028]	2026-08-05 02:52:00-04
W-0981	3731	Z3	contractor	location	[51.526905902606075, -0.1486533281714936]	2026-08-05 02:43:00-04
W-0982	2286	Z3	contractor	location	[51.4936372239543, -0.15219774208107395]	2026-08-05 02:39:00-04
W-0983	4367	Z3	staff	location	[51.46795994092671, -0.11678312435387622]	2026-08-05 02:50:00-04
W-0984	7682	Z3	contractor	gate	[51.51056879811431, -0.1669160445947922]	2026-08-05 02:45:00-04
W-0985	1604	Z3	contractor	gate	[51.4716002084851, -0.10302475598280215]	2026-08-05 02:50:00-04
W-0986	613	Z3	contractor	location	[51.46167814041148, -0.13215370428948375]	2026-08-05 02:53:00-04
W-0987	9792	Z3	staff	gate	[51.534782515012125, -0.1284567904404042]	2026-08-05 02:51:00-04
W-0988	5898	Z3	contractor	location	[51.54758423727402, -0.14813156182369086]	2026-08-05 02:52:00-04
W-0989	8567	Z3	contractor	location	[51.52052060797536, -0.13011138060993016]	2026-08-05 02:52:00-04
W-0990	1819	Z3	contractor	location	[51.53547323884337, -0.1456251388575232]	2026-08-05 02:52:00-04
W-0991	7939	Z3	contractor	gate	[51.523452361837855, -0.1586561071400977]	2026-08-05 02:41:00-04
W-0992	1077	Z3	contractor	gate	[51.55691892045351, -0.13021252527499166]	2026-08-05 02:42:00-04
W-0993	3858	Z3	staff	location	[51.52907378387822, -0.15206594973328127]	2026-08-05 02:43:00-04
W-0994	2204	Z3	staff	location	[51.534854096049585, -0.1319956627314708]	2026-08-05 02:48:00-04
W-0995	2630	Z3	contractor	gate	[51.529587705866106, -0.13280388821843914]	2026-08-05 02:53:00-04
W-0996	7761	Z3	contractor	location	[51.47506075071987, -0.17750840528900816]	2026-08-05 02:53:00-04
W-0997	1535	Z3	staff	location	[51.54437093902414, -0.08701141224550145]	2026-08-05 02:51:00-04
W-0998	6484	Z3	staff	location	[51.49959740389506, -0.0892790453184597]	2026-08-05 02:52:00-04
W-0999	8244	Z3	contractor	location	[51.543663439018495, -0.13755883804469987]	2026-08-05 02:43:00-04
W-1000	1266	Z3	contractor	gate	[51.504333361741956, -0.09541881439354151]	2026-08-05 02:50:00-04
W-1001	2001	Z3	contractor	location	[51.55176629236864, -0.14886901030704558]	2026-08-05 02:49:00-04
W-1002	9845	Z3	contractor	gate	[51.54859525743291, -0.164714321875619]	2026-08-05 02:45:00-04
W-1003	7829	Z3	contractor	location	[51.55618167552997, -0.12267989122554007]	2026-08-05 02:40:00-04
W-1004	1111	Z3	contractor	location	[51.54026516762752, -0.15675978804850782]	2026-08-05 02:49:00-04
W-1005	4001	Z3	staff	location	[51.53512606690259, -0.11653268521991517]	2026-08-05 02:46:00-04
W-1006	8059	Z3	staff	location	[51.53295410006637, -0.10489788505170242]	2026-08-05 02:52:00-04
W-1007	3494	Z3	contractor	location	[51.540069069818834, -0.15853600402738294]	2026-08-05 02:48:00-04
W-1008	3613	Z3	contractor	gate	[51.506244948808806, -0.1092399928756576]	2026-08-05 02:45:00-04
W-1009	2461	Z3	contractor	gate	[51.52082239899821, -0.1046486071011784]	2026-08-05 02:49:00-04
W-1010	7229	Z3	contractor	location	[51.50026362821298, -0.09923487390508116]	2026-08-05 02:48:00-04
W-1011	3698	Z3	contractor	gate	[51.46304057345224, -0.14680702749516228]	2026-08-05 02:41:00-04
W-1012	320	Z3	contractor	location	[51.48182460417505, -0.1286840898054709]	2026-08-05 02:40:00-04
W-1013	3752	Z3	staff	location	[51.47293423746966, -0.08231728122979592]	2026-08-05 02:47:00-04
W-1014	2201	Z3	contractor	gate	[51.51181552262847, -0.10487819683800578]	2026-08-05 02:48:00-04
W-1015	364	Z3	contractor	gate	[51.50118275241274, -0.0820540785384299]	2026-08-05 02:43:00-04
W-1016	3244	Z3	staff	location	[51.492184140125026, -0.16926815886146668]	2026-08-05 02:52:00-04
W-1017	7967	Z3	contractor	location	[51.46139494941982, -0.08049856906928003]	2026-08-05 02:46:00-04
W-1018	1459	Z3	staff	location	[51.47804075587268, -0.07824881909820194]	2026-08-05 02:45:00-04
W-1019	7010	Z3	contractor	gate	[51.51127650801167, -0.09023124783268294]	2026-08-05 02:50:00-04
W-1020	2960	Z3	staff	gate	[51.55353419117131, -0.08133868063323475]	2026-08-05 02:40:00-04
W-1021	9268	Z3	contractor	location	[51.53565700619127, -0.09237909004611149]	2026-08-05 02:49:00-04
W-1022	9213	Z3	contractor	location	[51.52665017721344, -0.13690030577856224]	2026-08-05 02:53:00-04
W-1023	5718	Z3	contractor	gate	[51.51869607401929, -0.14524588631510466]	2026-08-05 02:39:00-04
W-1024	3562	Z3	contractor	location	[51.541662655222616, -0.16176996260100018]	2026-08-05 02:48:00-04
W-1025	6311	Z3	contractor	location	[51.550800747006555, -0.08470679904308283]	2026-08-05 02:42:00-04
W-1026	2366	Z3	contractor	location	[51.494302967322106, -0.1639236677660314]	2026-08-05 02:46:00-04
W-1027	9746	Z3	contractor	location	[51.55622295545782, -0.13320777417995067]	2026-08-05 02:46:00-04
W-1028	4957	Z3	staff	location	[51.55611846580272, -0.16835693262034515]	2026-08-05 02:52:00-04
W-1029	3807	Z3	contractor	location	[51.46153505652649, -0.08132350139741666]	2026-08-05 02:41:00-04
W-1030	9019	Z3	contractor	location	[51.465875848927304, -0.11661606638710921]	2026-08-05 02:49:00-04
W-1031	9971	Z3	staff	location	[51.4948184400299, -0.15439205597316372]	2026-08-05 02:45:00-04
W-1032	5158	Z3	contractor	location	[51.53229209459611, -0.08491856758702893]	2026-08-05 02:43:00-04
W-1033	5461	Z3	contractor	location	[51.50768488867515, -0.11906792269118077]	2026-08-05 02:42:00-04
W-1034	7316	Z3	staff	location	[51.53838340753393, -0.14242829886717961]	2026-08-05 02:43:00-04
W-1035	5333	Z3	contractor	location	[51.54196379236791, -0.1709081027082605]	2026-08-05 02:39:00-04
W-1036	969	Z3	contractor	gate	[51.54170029985237, -0.07842956654907163]	2026-08-05 02:51:00-04
W-1037	1285	Z3	contractor	gate	[51.53002420038931, -0.17644144824003294]	2026-08-05 02:51:00-04
W-1038	9765	Z3	contractor	location	[51.555211157643235, -0.173085554357881]	2026-08-05 02:46:00-04
W-1039	5756	Z3	contractor	location	[51.54405455866554, -0.11738492115541428]	2026-08-05 02:43:00-04
W-1040	7885	Z3	contractor	location	[51.46755325015922, -0.1611658238997925]	2026-08-05 02:48:00-04
W-1041	2473	Z3	contractor	gate	[51.50187660615702, -0.09624231614378637]	2026-08-05 02:50:00-04
W-1042	756	Z3	contractor	location	[51.54050579810899, -0.10171432755628868]	2026-08-05 02:42:00-04
W-1043	4463	Z3	contractor	location	[51.55095282489514, -0.13267858837940696]	2026-08-05 02:47:00-04
W-1044	4392	Z3	contractor	gate	[51.46572045906824, -0.13921317987229975]	2026-08-05 02:49:00-04
W-1045	7284	Z3	staff	location	[51.46022100955041, -0.15401982407759218]	2026-08-05 02:52:00-04
W-1046	7030	Z3	staff	location	[51.500854423415696, -0.08037552380374852]	2026-08-05 02:48:00-04
W-1047	8653	Z3	contractor	gate	[51.492459058014795, -0.09514814686285518]	2026-08-05 02:42:00-04
W-1048	7306	Z3	staff	location	[51.54693609604159, -0.1260722940086746]	2026-08-05 02:41:00-04
W-1049	4937	Z3	contractor	location	[51.46996613605727, -0.16715016874434926]	2026-08-05 02:53:00-04
W-1050	8561	Z3	contractor	gate	[51.537395618865865, -0.16395410395010168]	2026-08-05 02:46:00-04
W-1051	4750	Z3	contractor	gate	[51.509149589515836, -0.08202992092071106]	2026-08-05 02:39:00-04
W-1052	7035	Z3	contractor	location	[51.522948965743296, -0.16477759245430065]	2026-08-05 02:42:00-04
W-1053	3859	Z3	contractor	gate	[51.51866597136373, -0.16907090831886717]	2026-08-05 02:51:00-04
W-1054	839	Z3	contractor	gate	[51.477101087144725, -0.11408557350013701]	2026-08-05 02:48:00-04
W-1055	664	Z3	staff	location	[51.51241258250761, -0.1401020042608162]	2026-08-05 02:47:00-04
W-1056	8231	Z3	staff	location	[51.510228024713875, -0.1446199191693929]	2026-08-05 02:43:00-04
W-1057	9858	Z3	contractor	location	[51.47403363035763, -0.15465253115731437]	2026-08-05 02:51:00-04
W-1058	8877	Z3	contractor	gate	[51.51518342817217, -0.1499076539014832]	2026-08-05 02:42:00-04
W-1059	1654	Z3	contractor	gate	[51.46831799103758, -0.16973303436436005]	2026-08-05 02:44:00-04
W-1060	2813	Z3	staff	gate	[51.493309330634894, -0.12355060841245827]	2026-08-05 02:42:00-04
W-1061	8236	Z3	staff	location	[51.50192093612128, -0.0935134886524574]	2026-08-05 02:46:00-04
W-1062	4672	Z3	contractor	gate	[51.55473219532971, -0.08547796652438198]	2026-08-05 02:44:00-04
W-1063	756	Z3	contractor	location	[51.52548869371394, -0.14964414632045753]	2026-08-05 02:42:00-04
W-1064	7888	Z3	contractor	location	[51.475656206311825, -0.09326122166681776]	2026-08-05 02:47:00-04
W-1065	7663	Z3	contractor	gate	[51.50290284662557, -0.15798969696753876]	2026-08-05 02:50:00-04
W-1066	8355	Z3	contractor	gate	[51.47300366112178, -0.12656962719515286]	2026-08-05 02:42:00-04
W-1067	9240	Z3	contractor	location	[51.47062645964858, -0.17111057014095915]	2026-08-05 02:52:00-04
W-1068	5384	Z3	staff	location	[51.491992351359805, -0.0824329253823124]	2026-08-05 02:48:00-04
W-1069	4422	Z3	staff	location	[51.55190344686458, -0.12873036342598487]	2026-08-05 02:49:00-04
W-1070	9692	Z3	contractor	location	[51.5288526401743, -0.11812410389513961]	2026-08-05 02:45:00-04
W-1071	5768	Z3	contractor	gate	[51.46547988934861, -0.14763874296936969]	2026-08-05 02:47:00-04
W-1072	1252	Z3	contractor	location	[51.46133444243651, -0.09589152916038172]	2026-08-05 02:42:00-04
W-1073	7597	Z3	contractor	location	[51.48705298004381, -0.09394528979845942]	2026-08-05 02:41:00-04
W-1074	3702	Z3	staff	location	[51.52294681411522, -0.10841178207063762]	2026-08-05 02:50:00-04
W-1075	9645	Z3	staff	gate	[51.520236866140074, -0.16865602255352166]	2026-08-05 02:50:00-04
W-1076	3379	Z3	contractor	location	[51.45813738677607, -0.14623339581148814]	2026-08-05 02:48:00-04
W-1077	7771	Z3	contractor	gate	[51.45959175950778, -0.13044667014381656]	2026-08-05 02:48:00-04
W-1078	8511	Z3	contractor	location	[51.51628856399121, -0.11190837015423344]	2026-08-05 02:51:00-04
W-1079	8911	Z3	contractor	location	[51.53757112085499, -0.08122988030839742]	2026-08-05 02:50:00-04
W-1080	1852	Z3	contractor	location	[51.554550272101444, -0.14223033286742456]	2026-08-05 02:47:00-04
W-1081	232	Z3	contractor	location	[51.55108320710336, -0.10723652359493606]	2026-08-05 02:53:00-04
W-1082	7488	Z3	contractor	location	[51.463739214624454, -0.0925978187448753]	2026-08-05 02:47:00-04
W-1083	1582	Z3	contractor	gate	[51.47090873828194, -0.14680896373061864]	2026-08-05 02:49:00-04
W-1084	3406	Z3	contractor	location	[51.537270288805274, -0.07990374205727317]	2026-08-05 02:45:00-04
W-1085	4971	Z3	contractor	location	[51.51042857146355, -0.1424407137199902]	2026-08-05 02:40:00-04
W-1086	165	Z3	contractor	gate	[51.489694320447576, -0.08924205377306747]	2026-08-05 02:42:00-04
W-1087	5935	Z3	contractor	location	[51.46892221032064, -0.16068074545228522]	2026-08-05 02:39:00-04
W-1088	325	Z3	staff	location	[51.457928409478306, -0.10658131508931501]	2026-08-05 02:45:00-04
W-1089	3612	Z3	contractor	location	[51.5146428550447, -0.11471911276877388]	2026-08-05 02:42:00-04
W-1090	967	Z3	contractor	location	[51.517572414489095, -0.11742069610434022]	2026-08-05 02:46:00-04
W-1091	7162	Z3	staff	location	[51.50612666146191, -0.11660339784003906]	2026-08-05 02:49:00-04
W-1092	5844	Z3	staff	gate	[51.47650715186839, -0.16529207974523885]	2026-08-05 02:45:00-04
W-1093	1314	Z3	staff	gate	[51.47003273359781, -0.13586053283592267]	2026-08-05 02:53:00-04
W-1094	2451	Z3	contractor	gate	[51.458924916442896, -0.12859979108939537]	2026-08-05 02:50:00-04
W-1095	1951	Z3	contractor	location	[51.51338386800542, -0.07887219296181144]	2026-08-05 02:53:00-04
W-1096	2998	Z3	staff	gate	[51.46989223046224, -0.07899114356884877]	2026-08-05 02:51:00-04
W-1097	934	Z3	contractor	gate	[51.46887082419389, -0.14355943699483703]	2026-08-05 02:53:00-04
W-1098	416	Z3	contractor	location	[51.50361431472153, -0.16983810113889586]	2026-08-05 02:46:00-04
W-1099	7061	Z3	staff	location	[51.48948675746109, -0.15722391929954804]	2026-08-05 02:53:00-04
W-1100	8321	Z3	contractor	location	[51.54132163495035, -0.15346543580744332]	2026-08-05 02:50:00-04
W-1101	8779	Z3	contractor	location	[51.48029831141531, -0.09234642710773124]	2026-08-05 02:50:00-04
W-1102	6847	Z3	contractor	location	[51.4640172630187, -0.12282553896170563]	2026-08-05 02:47:00-04
W-1103	5680	Z3	contractor	location	[51.531588663897615, -0.11563754758817482]	2026-08-05 02:45:00-04
W-1104	3977	Z3	staff	location	[51.46934151473943, -0.10494370935984056]	2026-08-05 02:50:00-04
W-1105	267	Z3	contractor	location	[51.53937100574517, -0.12252264707241446]	2026-08-05 02:52:00-04
W-1106	9496	Z3	contractor	location	[51.487605919321176, -0.15371988279935872]	2026-08-05 02:52:00-04
W-1107	9902	Z3	contractor	gate	[51.5234540968443, -0.17517479369127814]	2026-08-05 02:52:00-04
W-1108	5656	Z3	contractor	location	[51.54567255817513, -0.15934625795560803]	2026-08-05 02:45:00-04
W-1109	7306	Z3	contractor	location	[51.536137388106596, -0.1399437352660724]	2026-08-05 02:49:00-04
W-1110	9249	Z3	contractor	gate	[51.514574048136986, -0.1618119302296201]	2026-08-05 02:49:00-04
W-1111	5751	Z3	contractor	gate	[51.46170719649513, -0.07780786957303186]	2026-08-05 02:52:00-04
W-1112	3145	Z3	contractor	location	[51.46908261192558, -0.10664731323003224]	2026-08-05 02:44:00-04
W-1113	5754	Z3	contractor	gate	[51.52055192018461, -0.17222662509543318]	2026-08-05 02:41:00-04
W-1114	7398	Z3	staff	location	[51.52438370207436, -0.10371035463293848]	2026-08-05 02:52:00-04
W-1115	7720	Z3	contractor	gate	[51.55342837454663, -0.163360904565088]	2026-08-05 02:46:00-04
W-1116	3564	Z4	contractor	location	[51.47920050574485, -0.11215319397937952]	2026-08-05 02:53:00-04
W-1117	1755	Z4	contractor	gate	[51.50166667752605, -0.1283972960632015]	2026-08-05 02:42:00-04
W-1118	4955	Z4	contractor	location	[51.4763187167778, -0.11869316824291798]	2026-08-05 02:41:00-04
W-1119	169	Z4	contractor	gate	[51.47318772516821, -0.0980835578713503]	2026-08-05 02:40:00-04
W-1120	304	Z4	staff	gate	[51.47294418458439, -0.1148230404665576]	2026-08-05 02:39:00-04
W-1121	2009	Z4	contractor	location	[51.519920566734974, -0.10746100467625042]	2026-08-05 02:41:00-04
W-1122	6356	Z4	contractor	location	[51.522894066425756, -0.14848892478570275]	2026-08-05 02:47:00-04
W-1123	5060	Z4	contractor	gate	[51.55465349391749, -0.09110570140701509]	2026-08-05 02:49:00-04
W-1124	1539	Z4	staff	location	[51.48505188722548, -0.1321389339335319]	2026-08-05 02:50:00-04
W-1125	8427	Z4	contractor	gate	[51.49541480956612, -0.112923503048517]	2026-08-05 02:40:00-04
W-1126	8027	Z4	contractor	gate	[51.50844904741651, -0.10914373152136433]	2026-08-05 02:47:00-04
W-1127	2942	Z4	contractor	gate	[51.54206075393613, -0.13179597772919363]	2026-08-05 02:41:00-04
W-1128	7195	Z4	contractor	location	[51.55589414679534, -0.0859000844575436]	2026-08-05 02:41:00-04
W-1129	9287	Z4	contractor	gate	[51.54371024333578, -0.14111573852533568]	2026-08-05 02:44:00-04
W-1130	2269	Z4	staff	gate	[51.526531983574294, -0.11896015745915305]	2026-08-05 02:45:00-04
W-1131	2427	Z4	contractor	gate	[51.48697093681749, -0.1541358710955054]	2026-08-05 02:40:00-04
W-1132	7095	Z4	staff	location	[51.50037978818491, -0.08642701472247903]	2026-08-05 02:44:00-04
W-1133	3199	Z4	contractor	gate	[51.52081689382005, -0.17070521513648768]	2026-08-05 02:40:00-04
W-1134	5582	Z4	contractor	location	[51.468378497305615, -0.0985710181095956]	2026-08-05 02:40:00-04
W-1135	2257	Z4	contractor	location	[51.50918389645576, -0.1643495377076485]	2026-08-05 02:53:00-04
W-1136	2012	Z4	contractor	location	[51.51358022141063, -0.1676433724234646]	2026-08-05 02:48:00-04
W-1137	9102	Z4	contractor	location	[51.54602164441117, -0.12279527960688857]	2026-08-05 02:43:00-04
W-1138	7122	Z4	contractor	location	[51.53403140471056, -0.15617439805012537]	2026-08-05 02:47:00-04
W-1139	697	Z4	staff	gate	[51.48854963746429, -0.13410386238782274]	2026-08-05 02:43:00-04
W-1140	5183	Z4	contractor	gate	[51.46962644142888, -0.1546385310603342]	2026-08-05 02:51:00-04
W-1141	7791	Z4	contractor	gate	[51.51553128967764, -0.16222013933840995]	2026-08-05 02:45:00-04
W-1142	5784	Z4	contractor	gate	[51.46503318449089, -0.15267440508126937]	2026-08-05 02:50:00-04
W-1143	8950	Z4	staff	location	[51.5142715984261, -0.08458039708126977]	2026-08-05 02:39:00-04
W-1144	5682	Z4	contractor	location	[51.52482899655676, -0.08364176189860806]	2026-08-05 02:50:00-04
W-1145	511	Z4	contractor	location	[51.50529526906, -0.0950607156265109]	2026-08-05 02:47:00-04
W-1146	7792	Z4	contractor	location	[51.49665427799164, -0.14250250196852943]	2026-08-05 02:45:00-04
W-1147	7606	Z4	contractor	location	[51.48444515357245, -0.14918459754344024]	2026-08-05 02:45:00-04
W-1148	5093	Z4	contractor	gate	[51.52945445664338, -0.1739368454372146]	2026-08-05 02:48:00-04
W-1149	7635	Z4	contractor	location	[51.54927047883387, -0.15788482729356307]	2026-08-05 02:44:00-04
W-1150	1947	Z4	contractor	location	[51.541061786438085, -0.08703206015888676]	2026-08-05 02:46:00-04
W-1151	5485	Z4	contractor	location	[51.505753799120974, -0.09543943005174552]	2026-08-05 02:44:00-04
W-1152	9392	Z4	staff	location	[51.50069907221786, -0.10868538980691647]	2026-08-05 02:44:00-04
W-1153	346	Z4	contractor	gate	[51.47787367871267, -0.12768023359056335]	2026-08-05 02:43:00-04
W-1154	3585	Z4	contractor	location	[51.51072307207734, -0.10566748684140573]	2026-08-05 02:39:00-04
W-1155	5330	Z4	contractor	location	[51.54371998202357, -0.11589762160354647]	2026-08-05 02:52:00-04
W-1156	7355	Z4	contractor	gate	[51.510865265781725, -0.11992431182825519]	2026-08-05 02:49:00-04
W-1157	4766	Z4	staff	location	[51.50640355326045, -0.14392589140930181]	2026-08-05 02:39:00-04
W-1158	9312	Z4	contractor	location	[51.4895863739595, -0.09398164678501862]	2026-08-05 02:43:00-04
W-1159	5145	Z4	contractor	location	[51.46103140027646, -0.16500518092074995]	2026-08-05 02:46:00-04
W-1160	2367	Z4	contractor	gate	[51.45777004858276, -0.14667766062022583]	2026-08-05 02:44:00-04
W-1161	7515	Z4	contractor	location	[51.51596361861191, -0.16728193250468495]	2026-08-05 02:52:00-04
W-1162	1414	Z4	contractor	location	[51.48154874681861, -0.1637540389174059]	2026-08-05 02:51:00-04
W-1163	9938	Z4	staff	location	[51.46909402463182, -0.08802834692616672]	2026-08-05 02:50:00-04
W-1164	8779	Z4	staff	location	[51.49744569436593, -0.0833538240702227]	2026-08-05 02:44:00-04
W-1165	1397	Z4	contractor	gate	[51.529658464253416, -0.1535107535465438]	2026-08-05 02:49:00-04
W-1166	5746	Z4	contractor	location	[51.52008057297842, -0.17148954982891879]	2026-08-05 02:51:00-04
W-1167	6775	Z4	staff	gate	[51.52891056600659, -0.12455073463725318]	2026-08-05 02:45:00-04
W-1168	4497	Z4	contractor	gate	[51.50049417684064, -0.1689125791056242]	2026-08-05 02:49:00-04
W-1169	4545	Z4	contractor	location	[51.463950427014574, -0.17693330635474364]	2026-08-05 02:45:00-04
W-1170	2625	Z4	contractor	location	[51.48567339128989, -0.1575404714887969]	2026-08-05 02:48:00-04
W-1171	529	Z4	staff	location	[51.50300485137452, -0.08890678917572402]	2026-08-05 02:42:00-04
W-1172	4946	Z4	contractor	location	[51.49332525993405, -0.09498697329676674]	2026-08-05 02:45:00-04
W-1173	9840	Z4	staff	location	[51.54563049806351, -0.10921310137267677]	2026-08-05 02:44:00-04
W-1174	5013	Z4	contractor	gate	[51.47811241884948, -0.12937135827902235]	2026-08-05 02:47:00-04
W-1175	8339	Z4	contractor	location	[51.48269979740853, -0.1591409160757754]	2026-08-05 02:43:00-04
W-1176	7816	Z4	contractor	location	[51.476570464656035, -0.1064395075660266]	2026-08-05 02:49:00-04
W-1177	3206	Z4	contractor	location	[51.50741348665915, -0.10982701073624088]	2026-08-05 02:43:00-04
W-1178	128	Z4	staff	gate	[51.46349087045149, -0.14468985379903868]	2026-08-05 02:39:00-04
W-1179	8779	Z4	contractor	location	[51.557024762833095, -0.17410467673168195]	2026-08-05 02:39:00-04
W-1180	111	Z4	contractor	location	[51.539725700316794, -0.12931762204761016]	2026-08-05 02:42:00-04
W-1181	5925	Z4	staff	location	[51.51171691410866, -0.13774454840775907]	2026-08-05 02:46:00-04
W-1182	5841	Z4	contractor	location	[51.51519003220022, -0.11469153548804234]	2026-08-05 02:40:00-04
W-1183	2094	Z4	contractor	gate	[51.46677871771927, -0.10073095338274034]	2026-08-05 02:41:00-04
W-1184	576	Z4	contractor	location	[51.52693833877006, -0.15242248776793457]	2026-08-05 02:42:00-04
W-1185	3190	Z4	contractor	location	[51.51004338461172, -0.11505750934166285]	2026-08-05 02:44:00-04
W-1186	6132	Z4	staff	location	[51.48201182495981, -0.14848545586200196]	2026-08-05 02:49:00-04
W-1187	4497	Z4	contractor	gate	[51.49413028824008, -0.1774044244339584]	2026-08-05 02:42:00-04
W-1188	8202	Z4	contractor	location	[51.489903157202896, -0.15397678887083394]	2026-08-05 02:50:00-04
W-1189	4922	Z4	contractor	location	[51.48943245584513, -0.12256040933553833]	2026-08-05 02:51:00-04
W-1190	1942	Z4	contractor	gate	[51.53531243556037, -0.0863283249179981]	2026-08-05 02:39:00-04
W-1191	1142	Z4	staff	location	[51.55662702261586, -0.08333163683973659]	2026-08-05 02:44:00-04
W-1192	7557	Z4	contractor	location	[51.47905896497808, -0.0783710790578707]	2026-08-05 02:50:00-04
W-1193	472	Z4	staff	location	[51.46410254037527, -0.10070323132254869]	2026-08-05 02:47:00-04
W-1194	7567	Z4	contractor	location	[51.52424977663097, -0.11553623907763283]	2026-08-05 02:52:00-04
W-1195	6420	Z4	contractor	location	[51.45856497126716, -0.13021955342562738]	2026-08-05 02:40:00-04
W-1196	5162	Z4	contractor	location	[51.50159386058966, -0.16298090346121197]	2026-08-05 02:47:00-04
W-1197	2421	Z4	contractor	location	[51.45962425212754, -0.11045780073750872]	2026-08-05 02:47:00-04
W-1198	6287	Z4	contractor	location	[51.54321761524834, -0.11570496390578305]	2026-08-05 02:44:00-04
W-1199	8629	Z4	contractor	location	[51.46217595050941, -0.16962003259163633]	2026-08-05 02:52:00-04
W-1200	8913	Z4	staff	location	[51.4654334091584, -0.10805555004366091]	2026-08-05 02:53:00-04
W-1201	7720	Z4	contractor	location	[51.45886815752808, -0.14024275732348512]	2026-08-05 02:51:00-04
W-1202	8293	Z4	contractor	location	[51.48956664405464, -0.1614255198578392]	2026-08-05 02:52:00-04
W-1203	8124	Z4	staff	location	[51.50506517301763, -0.1209054600982911]	2026-08-05 02:40:00-04
W-1204	3122	Z4	contractor	location	[51.486003020249974, -0.14862431519528832]	2026-08-05 02:47:00-04
W-1205	1716	Z4	contractor	gate	[51.51877036549176, -0.08158873846233586]	2026-08-05 02:48:00-04
W-1206	1219	Z4	contractor	location	[51.51812699344055, -0.09778677304515501]	2026-08-05 02:45:00-04
W-1207	5540	Z4	contractor	gate	[51.4727137965887, -0.07848014233681089]	2026-08-05 02:44:00-04
W-1208	9794	Z4	contractor	location	[51.460962931017306, -0.14299991986836547]	2026-08-05 02:45:00-04
W-1209	3375	Z4	staff	location	[51.474809002854144, -0.13656089649478076]	2026-08-05 02:41:00-04
W-1210	7572	Z4	contractor	location	[51.517159101992256, -0.17692661005331306]	2026-08-05 02:42:00-04
W-1211	9991	Z4	staff	location	[51.51503774483095, -0.16926109727040478]	2026-08-05 02:44:00-04
W-1212	4804	Z4	contractor	location	[51.47530663435853, -0.08645174459334486]	2026-08-05 02:50:00-04
W-1213	2045	Z4	contractor	location	[51.49133919912601, -0.1361150365975732]	2026-08-05 02:41:00-04
W-1214	5008	Z4	contractor	location	[51.4598364049431, -0.07958499560091604]	2026-08-05 02:52:00-04
W-1215	4013	Z4	contractor	location	[51.54592222142464, -0.10122252157146108]	2026-08-05 02:41:00-04
W-1216	230	Z4	contractor	location	[51.521662310588646, -0.17677901157652676]	2026-08-05 02:50:00-04
W-1217	2044	Z4	staff	gate	[51.48487318484947, -0.12696923697918147]	2026-08-05 02:45:00-04
W-1218	528	Z4	contractor	gate	[51.54837296625458, -0.09606066722617566]	2026-08-05 02:46:00-04
W-1219	617	Z4	contractor	gate	[51.54093244561246, -0.1036761012679447]	2026-08-05 02:47:00-04
W-1220	2710	Z4	contractor	gate	[51.48635564702182, -0.1495431141106061]	2026-08-05 02:52:00-04
W-1221	2578	Z4	contractor	gate	[51.53325594808247, -0.07982164264125795]	2026-08-05 02:43:00-04
W-1222	1277	Z4	contractor	gate	[51.4844243600415, -0.10181855737924211]	2026-08-05 02:47:00-04
W-1223	4444	Z4	contractor	location	[51.47632305544178, -0.13957228763304885]	2026-08-05 02:40:00-04
W-1224	4327	Z4	contractor	location	[51.4971507010825, -0.1513206522782499]	2026-08-05 02:43:00-04
W-1225	4654	Z4	staff	gate	[51.466466590352944, -0.10311464958416458]	2026-08-05 02:53:00-04
W-1226	565	Z4	contractor	location	[51.5079417117834, -0.11558887337121834]	2026-08-05 02:43:00-04
W-1227	2739	Z4	contractor	gate	[51.50959071251046, -0.08517715447547185]	2026-08-05 02:49:00-04
W-1228	9559	Z4	contractor	gate	[51.55205698721286, -0.1461430869325756]	2026-08-05 02:48:00-04
W-1229	3228	Z4	contractor	gate	[51.51583834029646, -0.16704073777836723]	2026-08-05 02:44:00-04
W-1230	5499	Z4	contractor	location	[51.5495184046944, -0.08795770735770085]	2026-08-05 02:42:00-04
W-1231	5864	Z4	staff	gate	[51.540688279210606, -0.08606230316253126]	2026-08-05 02:45:00-04
W-1232	8482	Z4	contractor	gate	[51.47309128627799, -0.10867635899420396]	2026-08-05 02:47:00-04
W-1233	6691	Z4	contractor	gate	[51.52089564396452, -0.10966413310538838]	2026-08-05 02:47:00-04
W-1234	5560	Z4	contractor	location	[51.46678642714167, -0.09188338746751559]	2026-08-05 02:48:00-04
W-1235	3500	Z4	staff	gate	[51.4886938206844, -0.12343789621614445]	2026-08-05 02:40:00-04
W-1236	3919	Z4	contractor	location	[51.473148630659466, -0.14948863973615814]	2026-08-05 02:45:00-04
W-1237	5874	Z4	contractor	location	[51.517720679345125, -0.1486314651918717]	2026-08-05 02:49:00-04
W-1238	9408	Z4	contractor	location	[51.54732614207066, -0.16143934947837751]	2026-08-05 02:39:00-04
W-1239	514	Z4	contractor	gate	[51.49314916768355, -0.1527525566988025]	2026-08-05 02:46:00-04
W-1240	3207	Z4	staff	location	[51.47934836539343, -0.09864860646886149]	2026-08-05 02:45:00-04
W-1241	1308	Z4	contractor	location	[51.548229726637025, -0.08537251315196598]	2026-08-05 02:46:00-04
W-1242	7275	Z4	staff	location	[51.481346491717154, -0.12863288386961763]	2026-08-05 02:39:00-04
W-1243	542	Z4	staff	location	[51.539957000579285, -0.13318680271517508]	2026-08-05 02:44:00-04
W-1244	1936	Z4	contractor	gate	[51.48620529442173, -0.14729934077109869]	2026-08-05 02:51:00-04
W-1245	6987	Z4	contractor	location	[51.54303461036788, -0.12780186463405857]	2026-08-05 02:50:00-04
W-1246	1518	Z4	staff	location	[51.5257920396024, -0.1638852522097255]	2026-08-05 02:47:00-04
W-1247	637	Z4	staff	location	[51.471700132523765, -0.1625630817699543]	2026-08-05 02:43:00-04
W-1248	2450	Z4	contractor	location	[51.52653030018238, -0.09739962573270954]	2026-08-05 02:43:00-04
W-1249	6961	Z4	staff	gate	[51.5377189114796, -0.11300350140918666]	2026-08-05 02:40:00-04
W-1250	2266	Z4	contractor	location	[51.54157004799561, -0.12252446278196709]	2026-08-05 02:46:00-04
W-1251	3490	Z4	contractor	gate	[51.53165004008624, -0.13090294709427974]	2026-08-05 02:49:00-04
W-1252	1665	Z4	contractor	location	[51.523108735765206, -0.08272977108844572]	2026-08-05 02:46:00-04
W-1253	4570	Z4	staff	location	[51.46147458690941, -0.14737558796950093]	2026-08-05 02:49:00-04
W-1254	4341	Z4	contractor	location	[51.51201260907465, -0.1352897699423698]	2026-08-05 02:39:00-04
W-1255	8721	Z4	contractor	location	[51.50555613431352, -0.1610117574592741]	2026-08-05 02:53:00-04
W-1256	3965	Z4	contractor	location	[51.53577943590648, -0.166960952668695]	2026-08-05 02:42:00-04
W-1257	4284	Z4	contractor	location	[51.492068361118584, -0.17143865514181725]	2026-08-05 02:43:00-04
W-1258	1678	Z4	contractor	location	[51.5311762056703, -0.16349470122974658]	2026-08-05 02:43:00-04
W-1259	6978	Z4	contractor	location	[51.492647876059046, -0.15884526311635722]	2026-08-05 02:39:00-04
W-1260	8822	Z4	staff	gate	[51.4742007005329, -0.0855674462548017]	2026-08-05 02:53:00-04
W-1261	6703	Z4	staff	location	[51.48849785201177, -0.1555896089847872]	2026-08-05 02:40:00-04
W-1262	9946	Z4	contractor	location	[51.51659766369004, -0.14652705961264376]	2026-08-05 02:50:00-04
W-1263	8819	Z4	contractor	location	[51.5535839565941, -0.09752315437867481]	2026-08-05 02:52:00-04
W-1264	4108	Z4	contractor	gate	[51.486212911552066, -0.09054733353695597]	2026-08-05 02:44:00-04
W-1265	3669	Z4	contractor	location	[51.546288426068806, -0.09333568122622292]	2026-08-05 02:46:00-04
W-1266	7838	Z4	staff	location	[51.50545473219474, -0.11736875604740313]	2026-08-05 02:51:00-04
W-1267	8267	Z4	staff	location	[51.55008904497032, -0.09092768340493716]	2026-08-05 02:39:00-04
W-1268	7138	Z4	contractor	gate	[51.50815100581055, -0.14714173327094748]	2026-08-05 02:48:00-04
W-1269	7641	Z4	contractor	gate	[51.498035551390224, -0.1642820078380259]	2026-08-05 02:44:00-04
W-1270	7640	Z4	contractor	location	[51.507064731869555, -0.08247375120705404]	2026-08-05 02:49:00-04
W-1271	8390	Z4	staff	location	[51.48158179789744, -0.15082864371899632]	2026-08-05 02:45:00-04
W-1272	3630	Z4	contractor	gate	[51.52540290996302, -0.14824531236639601]	2026-08-05 02:42:00-04
W-1273	3363	Z4	staff	location	[51.54088471194638, -0.1777160122764569]	2026-08-05 02:41:00-04
W-1274	8106	Z4	contractor	location	[51.46767274696017, -0.10700301538425015]	2026-08-05 02:53:00-04
W-1275	9202	Z4	contractor	location	[51.48558969451166, -0.12990549525845124]	2026-08-05 02:44:00-04
W-1276	6211	Z4	contractor	gate	[51.48082620165149, -0.16585003457848305]	2026-08-05 02:51:00-04
W-1277	7108	Z4	contractor	location	[51.512202884638356, -0.10671498473973101]	2026-08-05 02:39:00-04
W-1278	6890	Z4	contractor	location	[51.477894391543565, -0.14546800180899494]	2026-08-05 02:49:00-04
W-1279	7199	Z4	contractor	location	[51.47137715988579, -0.0912424391008008]	2026-08-05 02:47:00-04
W-1280	9907	Z4	staff	location	[51.51612282681303, -0.14984485775776352]	2026-08-05 02:49:00-04
W-1281	4178	Z4	contractor	location	[51.473667105661015, -0.0871327380366179]	2026-08-05 02:44:00-04
W-1282	184	Z4	staff	gate	[51.5095705178442, -0.14100390454490003]	2026-08-05 02:46:00-04
W-1283	7324	Z4	staff	location	[51.51631778985051, -0.16497940759324248]	2026-08-05 02:44:00-04
W-1284	9493	Z4	contractor	gate	[51.52908676074052, -0.11669316323746652]	2026-08-05 02:51:00-04
W-1285	5964	Z4	contractor	location	[51.53015090771541, -0.16941242691644906]	2026-08-05 02:47:00-04
W-1286	6242	Z4	contractor	location	[51.526427164716495, -0.10489286022656724]	2026-08-05 02:51:00-04
W-1287	2056	Z4	contractor	location	[51.5281223540413, -0.17131005736259597]	2026-08-05 02:51:00-04
W-1288	5130	Z4	contractor	gate	[51.46686980061489, -0.10755883153202567]	2026-08-05 02:51:00-04
W-1289	5274	Z4	contractor	location	[51.523540323321306, -0.17169564508597987]	2026-08-05 02:47:00-04
W-1290	7908	Z4	contractor	location	[51.52956525421388, -0.1522546268402551]	2026-08-05 02:44:00-04
W-1291	9830	Z4	contractor	gate	[51.48710249746557, -0.09108695899024587]	2026-08-05 02:46:00-04
W-1292	3865	Z4	contractor	location	[51.53780546685944, -0.16676458565452365]	2026-08-05 02:50:00-04
W-1293	8299	Z4	staff	location	[51.474840619062434, -0.09710509424768297]	2026-08-05 02:46:00-04
W-1294	1203	Z4	staff	location	[51.48813608830347, -0.13146297099019177]	2026-08-05 02:48:00-04
W-1295	6288	Z4	contractor	location	[51.5551374095819, -0.16871755819941403]	2026-08-05 02:53:00-04
W-1296	4854	Z4	contractor	location	[51.52826325248558, -0.16335750102709012]	2026-08-05 02:50:00-04
W-1297	861	Z4	contractor	location	[51.517800897256926, -0.14812911241645302]	2026-08-05 02:39:00-04
W-1298	219	Z4	staff	location	[51.52807674128161, -0.11386915876477326]	2026-08-05 02:42:00-04
W-1299	5153	Z4	contractor	location	[51.484140811583856, -0.11169346320472934]	2026-08-05 02:52:00-04
W-1300	3755	Z4	contractor	gate	[51.49044664236996, -0.07838599136063061]	2026-08-05 02:42:00-04
W-1301	2633	Z4	contractor	location	[51.460944442314215, -0.1625608083383352]	2026-08-05 02:49:00-04
W-1302	4189	Z4	contractor	gate	[51.518454199176084, -0.09513544558046338]	2026-08-05 02:41:00-04
W-1303	1276	Z4	contractor	gate	[51.504457062278924, -0.09529200672954086]	2026-08-05 02:40:00-04
W-1304	359	Z4	contractor	location	[51.459100747522946, -0.11248078209703893]	2026-08-05 02:53:00-04
W-1305	3775	Z4	contractor	gate	[51.528270910139, -0.09115146824299018]	2026-08-05 02:44:00-04
W-1306	4553	Z4	contractor	location	[51.53540747693344, -0.08284601917447777]	2026-08-05 02:44:00-04
W-1307	4391	Z4	staff	gate	[51.528083662960775, -0.14244181645282145]	2026-08-05 02:45:00-04
W-1308	2024	Z4	contractor	gate	[51.518730102434446, -0.08323612027150586]	2026-08-05 02:46:00-04
W-1309	9888	Z4	contractor	location	[51.50586935883224, -0.1320219130554563]	2026-08-05 02:46:00-04
W-1310	1034	Z4	staff	location	[51.4722606001932, -0.11658080150899004]	2026-08-05 02:48:00-04
W-1311	9927	Z4	contractor	gate	[51.469908679117374, -0.10679198600823885]	2026-08-05 02:47:00-04
W-1312	5782	Z4	contractor	location	[51.48033212063434, -0.09279067897394265]	2026-08-05 02:40:00-04
W-1313	5680	Z4	contractor	location	[51.55027248547425, -0.08551907410069917]	2026-08-05 02:48:00-04
W-1314	5890	Z4	contractor	gate	[51.54686584977004, -0.16892608631136902]	2026-08-05 02:53:00-04
W-1315	5695	Z4	contractor	location	[51.55223212091756, -0.11132773673416407]	2026-08-05 02:52:00-04
W-1316	7405	Z4	contractor	location	[51.47139163587125, -0.1393937376992692]	2026-08-05 02:47:00-04
W-1317	6607	Z4	staff	gate	[51.52370400523408, -0.125956190931784]	2026-08-05 02:44:00-04
W-1318	2003	Z4	contractor	location	[51.47196742796894, -0.10446142207671653]	2026-08-05 02:44:00-04
W-1319	5049	Z4	contractor	location	[51.46039548680607, -0.13750533407525886]	2026-08-05 02:47:00-04
W-1320	8785	Z4	contractor	gate	[51.52542475215045, -0.15042865662607713]	2026-08-05 02:40:00-04
W-1321	3503	Z4	contractor	location	[51.545851988084706, -0.11743565449320024]	2026-08-05 02:46:00-04
W-1322	1347	Z4	contractor	gate	[51.51628316242877, -0.12626139328775116]	2026-08-05 02:42:00-04
W-1323	8056	Z4	contractor	location	[51.52075014708698, -0.13925352941263602]	2026-08-05 02:43:00-04
W-1324	6104	Z4	contractor	location	[51.47996659286806, -0.16850791086248992]	2026-08-05 02:41:00-04
W-1325	646	Z4	contractor	gate	[51.46790918160538, -0.08678762271510522]	2026-08-05 02:39:00-04
W-1326	4454	Z4	staff	location	[51.52022279807512, -0.16981453256364545]	2026-08-05 02:52:00-04
W-1327	8443	Z4	staff	location	[51.503532229639966, -0.13486465239254836]	2026-08-05 02:47:00-04
W-1328	6163	Z4	contractor	gate	[51.48781800600134, -0.08088224472277729]	2026-08-05 02:40:00-04
W-1329	3297	Z4	contractor	location	[51.52888355230593, -0.11824930196521649]	2026-08-05 02:50:00-04
W-1330	7723	Z4	contractor	location	[51.54193890207341, -0.1117471574289532]	2026-08-05 02:49:00-04
W-1331	5872	Z4	contractor	gate	[51.51181530582688, -0.09136634641510644]	2026-08-05 02:49:00-04
W-1332	7297	Z4	contractor	location	[51.504890554914084, -0.11909277945495189]	2026-08-05 02:42:00-04
W-1333	9316	Z4	contractor	gate	[51.48233321386925, -0.09296305570241267]	2026-08-05 02:44:00-04
W-1334	6842	Z4	contractor	gate	[51.50475545108375, -0.1379977922549531]	2026-08-05 02:53:00-04
W-1335	6975	Z4	contractor	gate	[51.48272086717306, -0.15352615607196693]	2026-08-05 02:53:00-04
W-1336	1497	Z4	contractor	location	[51.46797411385959, -0.08842993048277628]	2026-08-05 02:44:00-04
W-1337	4418	Z4	contractor	location	[51.45855177188877, -0.08093208550659457]	2026-08-05 02:45:00-04
W-1338	9180	Z4	staff	location	[51.530049586915965, -0.09930284594776616]	2026-08-05 02:53:00-04
W-1339	1363	Z4	contractor	gate	[51.51344570426291, -0.1544520505082651]	2026-08-05 02:48:00-04
W-1340	300	Z4	contractor	gate	[51.45838938226919, -0.13730651277207068]	2026-08-05 02:39:00-04
W-1341	8632	Z4	contractor	location	[51.495834956404885, -0.16786766347852072]	2026-08-05 02:51:00-04
W-1342	5558	Z4	staff	location	[51.501412687865965, -0.09795402211733621]	2026-08-05 02:49:00-04
W-1343	428	Z4	contractor	location	[51.46588320582535, -0.1548621726876218]	2026-08-05 02:48:00-04
W-1344	6987	Z4	contractor	location	[51.47823388816392, -0.11724764099188106]	2026-08-05 02:48:00-04
W-1345	1797	Z4	staff	location	[51.51805427927407, -0.09008082738287788]	2026-08-05 02:44:00-04
W-1346	9801	Z4	contractor	location	[51.5020850059897, -0.12536466670452207]	2026-08-05 02:47:00-04
W-1347	1156	Z4	staff	gate	[51.51897706964312, -0.15898975520304612]	2026-08-05 02:53:00-04
W-1348	8734	Z4	contractor	location	[51.509556822688594, -0.11646021517113801]	2026-08-05 02:43:00-04
W-1349	7283	Z4	contractor	location	[51.480784768073725, -0.12599406394184426]	2026-08-05 02:40:00-04
W-1350	7096	Z4	contractor	gate	[51.47036897963927, -0.10164827141834405]	2026-08-05 02:52:00-04
W-1351	1766	Z4	contractor	location	[51.46138173947527, -0.0986058145674073]	2026-08-05 02:45:00-04
W-1352	1367	Z4	contractor	gate	[51.50347120850905, -0.09912858464969929]	2026-08-05 02:50:00-04
W-1353	940	Z4	staff	location	[51.48849737944686, -0.10016052750748088]	2026-08-05 02:46:00-04
W-1354	7193	Z4	contractor	gate	[51.47681211753044, -0.1522233434985596]	2026-08-05 02:46:00-04
W-1355	9551	Z4	staff	gate	[51.476117410316526, -0.13616176282132364]	2026-08-05 02:45:00-04
W-1356	6737	Z4	contractor	gate	[51.48657222784664, -0.16618318043171135]	2026-08-05 02:45:00-04
W-1357	2673	Z4	contractor	location	[51.51641698738719, -0.11821891328939041]	2026-08-05 02:52:00-04
W-1358	2407	Z4	contractor	gate	[51.51219438273669, -0.08677731207044606]	2026-08-05 02:42:00-04
W-1359	3329	Z4	contractor	location	[51.53411685442224, -0.17546644123364363]	2026-08-05 02:43:00-04
W-1360	6584	Z4	staff	location	[51.494217123574686, -0.1220760636350306]	2026-08-05 02:41:00-04
W-1361	7053	Z5	staff	location	[51.48422074713052, -0.08269104854147663]	2026-08-05 02:47:00-04
W-1362	8783	Z5	contractor	gate	[51.504865633602414, -0.1595374351723408]	2026-08-05 02:52:00-04
W-1363	2155	Z5	contractor	location	[51.55438921153749, -0.1289016625256058]	2026-08-05 02:51:00-04
W-1364	5050	Z5	contractor	location	[51.4661158174662, -0.14916103542502207]	2026-08-05 02:46:00-04
W-1365	582	Z5	contractor	location	[51.53286065901824, -0.08471080743301222]	2026-08-05 02:48:00-04
W-1366	8391	Z5	contractor	location	[51.535438058625246, -0.11819820952295987]	2026-08-05 02:46:00-04
W-1367	1385	Z5	contractor	gate	[51.5537863954038, -0.11415790562810421]	2026-08-05 02:43:00-04
W-1368	9973	Z5	contractor	gate	[51.47865976227437, -0.17778474425906013]	2026-08-05 02:53:00-04
W-1369	3048	Z5	contractor	gate	[51.54965013593384, -0.16205521013317495]	2026-08-05 02:53:00-04
W-1370	9860	Z5	contractor	gate	[51.52548714244217, -0.12028509175738777]	2026-08-05 02:50:00-04
W-1371	1006	Z5	staff	location	[51.5029859259272, -0.10591519562013338]	2026-08-05 02:41:00-04
W-1372	2099	Z5	contractor	location	[51.5121348020232, -0.1659894001564778]	2026-08-05 02:52:00-04
W-1373	1928	Z5	contractor	location	[51.464497769833365, -0.1629821624150593]	2026-08-05 02:48:00-04
W-1374	2580	Z5	contractor	location	[51.464223870574955, -0.1092901889606978]	2026-08-05 02:47:00-04
W-1375	1242	Z5	contractor	gate	[51.5396419760568, -0.13152370344583203]	2026-08-05 02:49:00-04
W-1376	3891	Z5	contractor	location	[51.503690268527734, -0.10074311305832637]	2026-08-05 02:43:00-04
W-1377	3871	Z5	contractor	gate	[51.52757198824525, -0.17456032526065515]	2026-08-05 02:45:00-04
W-1378	595	Z5	staff	location	[51.53505021033059, -0.12063376587481019]	2026-08-05 02:47:00-04
W-1379	6594	Z5	contractor	location	[51.557174917360406, -0.1385339905075782]	2026-08-05 02:43:00-04
W-1380	6213	Z5	contractor	location	[51.54760807077715, -0.09981148788412013]	2026-08-05 02:42:00-04
W-1381	7145	Z5	contractor	location	[51.481787609015456, -0.11931567092836592]	2026-08-05 02:43:00-04
W-1382	3780	Z5	staff	gate	[51.520364888186386, -0.15195026656177443]	2026-08-05 02:42:00-04
W-1383	7748	Z5	contractor	gate	[51.473831764792365, -0.08750455331380928]	2026-08-05 02:53:00-04
W-1384	1100	Z5	contractor	location	[51.53662594812119, -0.08406474602135593]	2026-08-05 02:50:00-04
W-1385	7026	Z5	contractor	gate	[51.4743768301453, -0.1526433986757058]	2026-08-05 02:39:00-04
W-1386	3948	Z5	contractor	gate	[51.53413113064208, -0.11333472151700533]	2026-08-05 02:47:00-04
W-1387	2284	Z5	staff	location	[51.51807973801808, -0.13182704387047772]	2026-08-05 02:52:00-04
W-1388	7374	Z5	contractor	gate	[51.4941044708772, -0.09195430520004515]	2026-08-05 02:47:00-04
W-1389	8683	Z5	contractor	location	[51.467369957547106, -0.17321703752654408]	2026-08-05 02:39:00-04
W-1390	4378	Z5	staff	location	[51.55046630399582, -0.16581949020663936]	2026-08-05 02:39:00-04
W-1391	5112	Z5	contractor	location	[51.47049468685407, -0.15995926107506317]	2026-08-05 02:40:00-04
W-1392	6673	Z5	contractor	location	[51.47444208896869, -0.17105618450378188]	2026-08-05 02:49:00-04
W-1393	984	Z5	contractor	gate	[51.53095250375055, -0.10027075772319859]	2026-08-05 02:48:00-04
W-1394	6464	Z5	contractor	gate	[51.48715924227677, -0.12937109028089672]	2026-08-05 02:46:00-04
W-1395	7789	Z5	contractor	location	[51.53004402536159, -0.09647693363406283]	2026-08-05 02:48:00-04
W-1396	419	Z5	staff	location	[51.46153515013329, -0.12716297911789842]	2026-08-05 02:53:00-04
W-1397	3977	Z5	contractor	gate	[51.458490732395276, -0.13454574367284228]	2026-08-05 02:48:00-04
W-1398	1620	Z5	contractor	location	[51.47773801489022, -0.1733299356291256]	2026-08-05 02:46:00-04
W-1399	7653	Z5	staff	location	[51.54975262820488, -0.11987104817940009]	2026-08-05 02:40:00-04
W-1400	6043	Z5	staff	location	[51.48491179760455, -0.10052432183942658]	2026-08-05 02:46:00-04
W-1401	8024	Z5	staff	location	[51.481174984731624, -0.10271752511964313]	2026-08-05 02:39:00-04
W-1402	7304	Z5	contractor	location	[51.52154670137725, -0.11999558767267901]	2026-08-05 02:53:00-04
W-1403	1723	Z5	contractor	location	[51.541285054175354, -0.10513752553610972]	2026-08-05 02:40:00-04
W-1404	4670	Z5	contractor	location	[51.46268561488417, -0.09079741030549447]	2026-08-05 02:52:00-04
W-1405	2172	Z5	staff	gate	[51.52406252166368, -0.17269364201337134]	2026-08-05 02:47:00-04
W-1406	3658	Z5	contractor	gate	[51.48348830838351, -0.09841179849543631]	2026-08-05 02:46:00-04
W-1407	5655	Z5	contractor	location	[51.494476435786765, -0.08737731634958731]	2026-08-05 02:53:00-04
W-1408	6885	Z5	contractor	location	[51.47689147336192, -0.17011661128368888]	2026-08-05 02:42:00-04
W-1409	5694	Z5	contractor	gate	[51.462279328948426, -0.12134036171842884]	2026-08-05 02:48:00-04
W-1410	971	Z5	staff	gate	[51.54518555693269, -0.17167235520883936]	2026-08-05 02:52:00-04
W-1411	4736	Z5	staff	location	[51.53253414940873, -0.1507295736874599]	2026-08-05 02:48:00-04
W-1412	3465	Z5	contractor	location	[51.52623133532322, -0.16760274210127543]	2026-08-05 02:41:00-04
W-1413	9479	Z5	contractor	location	[51.48615088971334, -0.09527936888643983]	2026-08-05 02:49:00-04
W-1414	7309	Z5	contractor	location	[51.51235658569816, -0.14162816636071257]	2026-08-05 02:45:00-04
W-1415	3005	Z5	contractor	location	[51.55712506541516, -0.10943084270651016]	2026-08-05 02:47:00-04
W-1416	6240	Z5	staff	location	[51.53639589963457, -0.15201708617811285]	2026-08-05 02:48:00-04
W-1417	8356	Z5	staff	location	[51.490537226113, -0.16829845974508925]	2026-08-05 02:52:00-04
W-1418	8003	Z5	contractor	gate	[51.46664852929828, -0.10758827243061363]	2026-08-05 02:46:00-04
W-1419	9233	Z5	contractor	location	[51.49070046123607, -0.15668154560008773]	2026-08-05 02:47:00-04
W-1420	5137	Z5	contractor	location	[51.46272180344256, -0.15997154654230647]	2026-08-05 02:52:00-04
W-1421	729	Z5	contractor	location	[51.47031898759005, -0.11195715869653566]	2026-08-05 02:53:00-04
W-1422	9846	Z5	contractor	gate	[51.55182120360309, -0.0869120160145536]	2026-08-05 02:53:00-04
W-1423	1560	Z5	contractor	gate	[51.52427343832508, -0.10830607082686161]	2026-08-05 02:48:00-04
W-1424	128	Z5	staff	location	[51.51352476606637, -0.12719711450282245]	2026-08-05 02:53:00-04
W-1425	9184	Z5	contractor	location	[51.507941806429365, -0.11053063674612516]	2026-08-05 02:41:00-04
W-1426	4128	Z5	contractor	location	[51.527718855849734, -0.09594013589899526]	2026-08-05 02:46:00-04
W-1427	889	Z5	contractor	gate	[51.541680627655666, -0.12031425498628565]	2026-08-05 02:47:00-04
W-1428	8821	Z5	contractor	gate	[51.49358207560866, -0.12189514633892143]	2026-08-05 02:53:00-04
W-1429	2372	Z5	contractor	location	[51.55730348912506, -0.09969008371530401]	2026-08-05 02:45:00-04
W-1430	7717	Z5	contractor	location	[51.51730365893891, -0.14372386750493155]	2026-08-05 02:50:00-04
W-1431	829	Z5	contractor	location	[51.5367567808949, -0.089840781892113]	2026-08-05 02:51:00-04
W-1432	7614	Z5	staff	location	[51.53665201710988, -0.1224089364275173]	2026-08-05 02:48:00-04
W-1433	7849	Z5	contractor	gate	[51.5506628378336, -0.14823687837896565]	2026-08-05 02:51:00-04
W-1434	9820	Z5	contractor	location	[51.51885001557581, -0.1481607538401063]	2026-08-05 02:45:00-04
W-1435	5493	Z5	staff	gate	[51.50863796902491, -0.1700948402998418]	2026-08-05 02:43:00-04
W-1436	4324	Z5	contractor	gate	[51.463632580400436, -0.1106729645273159]	2026-08-05 02:43:00-04
W-1437	3129	Z5	staff	gate	[51.52279572563882, -0.15019742196414254]	2026-08-05 02:39:00-04
W-1438	3575	Z5	contractor	gate	[51.501745375799125, -0.08606265781891263]	2026-08-05 02:40:00-04
W-1439	7664	Z5	staff	gate	[51.46098393763868, -0.08931514304845986]	2026-08-05 02:39:00-04
W-1440	4654	Z5	contractor	location	[51.48489976439116, -0.10362070751000058]	2026-08-05 02:45:00-04
W-1441	2106	Z5	contractor	gate	[51.479963811514935, -0.09836716609480008]	2026-08-05 02:41:00-04
W-1442	6809	Z5	contractor	location	[51.52149668482494, -0.09874237202882016]	2026-08-05 02:52:00-04
W-1443	4142	Z5	staff	gate	[51.512869772903464, -0.13276294042994208]	2026-08-05 02:49:00-04
W-1444	5540	Z5	contractor	location	[51.488988013437336, -0.09614846592992012]	2026-08-05 02:44:00-04
W-1445	9492	Z5	contractor	location	[51.46337346488169, -0.12238289237141686]	2026-08-05 02:47:00-04
W-1446	3299	Z5	contractor	location	[51.549963712212396, -0.09326284593665964]	2026-08-05 02:50:00-04
W-1447	8881	Z5	contractor	location	[51.46460648976913, -0.15278227178580273]	2026-08-05 02:46:00-04
W-1448	1685	Z5	contractor	location	[51.54128126999979, -0.09738093262932657]	2026-08-05 02:52:00-04
W-1449	9275	Z5	contractor	location	[51.47858629446758, -0.09839324723917807]	2026-08-05 02:48:00-04
W-1450	5669	Z5	staff	location	[51.5151760012306, -0.15167769520858596]	2026-08-05 02:47:00-04
W-1451	3134	Z5	contractor	gate	[51.54416873768731, -0.11041873617467962]	2026-08-05 02:50:00-04
W-1452	1248	Z5	contractor	location	[51.50516509705201, -0.10347527044500576]	2026-08-05 02:44:00-04
W-1453	1505	Z5	staff	location	[51.515842637785504, -0.07887982581175028]	2026-08-05 02:49:00-04
W-1454	5109	Z5	contractor	gate	[51.53805571941347, -0.1116875202764629]	2026-08-05 02:48:00-04
W-1455	3502	Z5	contractor	location	[51.51935618426274, -0.09008010334621845]	2026-08-05 02:52:00-04
W-1456	7479	Z5	staff	location	[51.51787938597327, -0.13776076533048126]	2026-08-05 02:43:00-04
W-1457	6769	Z5	contractor	location	[51.53537572633209, -0.1386205173347377]	2026-08-05 02:42:00-04
W-1458	4521	Z5	staff	location	[51.500754369907526, -0.17342195624455903]	2026-08-05 02:40:00-04
W-1459	8062	Z5	contractor	location	[51.533340206024434, -0.11158646286709871]	2026-08-05 02:51:00-04
W-1460	2829	Z5	contractor	location	[51.50341003117191, -0.14295173490184912]	2026-08-05 02:43:00-04
W-1461	9775	Z5	contractor	location	[51.503097086028234, -0.10661839186515644]	2026-08-05 02:49:00-04
W-1462	7872	Z5	contractor	gate	[51.49754286335994, -0.147828296144269]	2026-08-05 02:53:00-04
W-1463	258	Z5	contractor	location	[51.46158021652236, -0.1667373366630823]	2026-08-05 02:53:00-04
W-1464	2955	Z5	contractor	gate	[51.491507357416744, -0.1774541208623889]	2026-08-05 02:45:00-04
W-1465	5254	Z5	contractor	location	[51.55340153548072, -0.12766817385303908]	2026-08-05 02:52:00-04
W-1466	1292	Z5	staff	location	[51.47272906660257, -0.12433426204371273]	2026-08-05 02:41:00-04
W-1467	7216	Z5	contractor	location	[51.54537777312605, -0.15122128536818275]	2026-08-05 02:42:00-04
W-1468	6181	Z5	contractor	location	[51.53243008102544, -0.1775068907661]	2026-08-05 02:41:00-04
W-1469	3670	Z5	contractor	location	[51.54468534664541, -0.12214034985439996]	2026-08-05 02:50:00-04
W-1470	1440	Z5	contractor	location	[51.46765740807369, -0.09275455784302944]	2026-08-05 02:44:00-04
W-1471	3352	Z5	staff	location	[51.53384420779966, -0.09186086387145387]	2026-08-05 02:45:00-04
W-1472	3452	Z5	contractor	location	[51.49178713599613, -0.0935042357833796]	2026-08-05 02:50:00-04
W-1473	5910	Z5	contractor	location	[51.47592505081328, -0.17122433012161073]	2026-08-05 02:45:00-04
W-1474	3585	Z5	contractor	location	[51.55021864453884, -0.15990830579182994]	2026-08-05 02:47:00-04
W-1475	5743	Z5	contractor	location	[51.502373467341776, -0.09939047343979579]	2026-08-05 02:42:00-04
W-1476	5182	Z5	contractor	gate	[51.5444415852829, -0.08962461818755]	2026-08-05 02:47:00-04
W-1477	8662	Z5	contractor	location	[51.50482455565682, -0.1764842104542257]	2026-08-05 02:43:00-04
W-1478	9784	Z5	contractor	gate	[51.4821226240647, -0.16353553924309164]	2026-08-05 02:51:00-04
W-1479	8271	Z5	contractor	gate	[51.54839193992685, -0.14261223127559652]	2026-08-05 02:46:00-04
W-1480	2200	Z5	contractor	location	[51.50165918853112, -0.12396517831702056]	2026-08-05 02:45:00-04
W-1481	9872	Z5	contractor	location	[51.50183914108225, -0.12827463615490536]	2026-08-05 02:47:00-04
W-1482	5163	Z5	staff	location	[51.46239774720937, -0.1521931418593143]	2026-08-05 02:51:00-04
W-1483	4520	Z5	contractor	gate	[51.47480267243858, -0.1122135204786691]	2026-08-05 02:52:00-04
W-1484	2319	Z5	contractor	location	[51.523650948520014, -0.14868707470401954]	2026-08-05 02:48:00-04
W-1485	6403	Z5	contractor	location	[51.55328442318249, -0.1525091104664368]	2026-08-05 02:42:00-04
W-1486	3612	Z5	contractor	location	[51.53200813200159, -0.11433073557082224]	2026-08-05 02:51:00-04
W-1487	189	Z5	staff	location	[51.47379310837125, -0.1636418491660856]	2026-08-05 02:51:00-04
W-1488	906	Z5	contractor	location	[51.544578196166555, -0.16809681824117947]	2026-08-05 02:41:00-04
W-1489	1076	Z5	contractor	gate	[51.46860158926619, -0.09144821956505986]	2026-08-05 02:53:00-04
W-1490	2638	Z5	contractor	gate	[51.50023153402482, -0.07915792093058781]	2026-08-05 02:41:00-04
W-1491	4219	Z5	contractor	location	[51.47264993170668, -0.10075455202959563]	2026-08-05 02:49:00-04
W-1492	6920	Z5	contractor	location	[51.475080813507105, -0.1112243273827308]	2026-08-05 02:39:00-04
W-1493	2615	Z5	contractor	location	[51.52176669088316, -0.17167207166627124]	2026-08-05 02:45:00-04
W-1494	6063	Z5	staff	location	[51.48365268988564, -0.11548840749831785]	2026-08-05 02:49:00-04
W-1495	1482	Z5	staff	gate	[51.54733729042605, -0.13831138364770112]	2026-08-05 02:53:00-04
W-1496	6486	Z5	contractor	gate	[51.50379497133904, -0.1684271721902895]	2026-08-05 02:39:00-04
W-1497	7108	Z5	contractor	location	[51.49113470031199, -0.16226709389384486]	2026-08-05 02:44:00-04
W-1498	2917	Z5	staff	location	[51.49668716209314, -0.10940345776895914]	2026-08-05 02:46:00-04
W-1499	2723	Z5	contractor	location	[51.47943073878677, -0.09929089147712887]	2026-08-05 02:39:00-04
W-1500	237	Z5	contractor	location	[51.54510752388264, -0.17440875377685358]	2026-08-05 02:53:00-04
W-1501	1494	Z5	contractor	location	[51.50825840797657, -0.13387294733909755]	2026-08-05 02:52:00-04
W-1502	3727	Z5	contractor	location	[51.50194742161425, -0.12087557322219894]	2026-08-05 02:48:00-04
W-1503	3776	Z5	contractor	gate	[51.521200144321426, -0.1302014449531128]	2026-08-05 02:46:00-04
W-1504	6741	Z5	contractor	location	[51.49355933782588, -0.15853455726659613]	2026-08-05 02:43:00-04
W-1505	4695	Z5	contractor	gate	[51.47661576960523, -0.08889668369942022]	2026-08-05 02:48:00-04
W-1506	1135	Z5	contractor	location	[51.45841754408971, -0.11645361346045459]	2026-08-05 02:50:00-04
W-1507	8415	Z5	contractor	location	[51.4610446483025, -0.1334231926352527]	2026-08-05 02:43:00-04
W-1508	8660	Z5	staff	location	[51.47873142490821, -0.08812807563814533]	2026-08-05 02:41:00-04
W-1509	9334	Z5	contractor	gate	[51.46457231823779, -0.11633545374870441]	2026-08-05 02:51:00-04
W-1510	8481	Z5	contractor	location	[51.50034825921285, -0.13885246013640623]	2026-08-05 02:52:00-04
W-1511	601	Z5	contractor	location	[51.55528460672904, -0.08326461717047974]	2026-08-05 02:53:00-04
W-1512	903	Z5	staff	location	[51.46660239676418, -0.11432004554717273]	2026-08-05 02:39:00-04
W-1513	1509	Z5	contractor	location	[51.52212462970438, -0.1358691236874257]	2026-08-05 02:44:00-04
W-1514	2913	Z5	contractor	location	[51.55432897801509, -0.16189682055928034]	2026-08-05 02:52:00-04
W-1515	8080	Z5	staff	location	[51.529464791410476, -0.11842107441615139]	2026-08-05 02:43:00-04
W-1516	536	Z5	contractor	location	[51.526983042277294, -0.16978154571159704]	2026-08-05 02:41:00-04
W-1517	9568	Z5	contractor	gate	[51.492784901172435, -0.13623655046734393]	2026-08-05 02:40:00-04
W-1518	7816	Z5	contractor	location	[51.49976369492337, -0.1472489914496941]	2026-08-05 02:45:00-04
W-1519	3070	Z5	contractor	gate	[51.51670037587179, -0.11967903447481305]	2026-08-05 02:49:00-04
W-1520	154	Z5	contractor	location	[51.51678430090889, -0.1387523842003906]	2026-08-05 02:47:00-04
W-1521	9426	Z5	contractor	gate	[51.54116203682917, -0.07877462845261618]	2026-08-05 02:52:00-04
W-1522	5631	Z5	contractor	location	[51.51882313946594, -0.13342801329325488]	2026-08-05 02:43:00-04
W-1523	710	Z5	contractor	location	[51.508412980778836, -0.17222722121841416]	2026-08-05 02:45:00-04
W-1524	8531	Z5	contractor	location	[51.536818687940546, -0.15817374308457907]	2026-08-05 02:46:00-04
W-1525	8720	Z5	contractor	location	[51.46858074616611, -0.13292621672005817]	2026-08-05 02:50:00-04
W-1526	3045	Z5	contractor	location	[51.55474720658157, -0.1346569522516221]	2026-08-05 02:41:00-04
W-1527	7851	Z5	contractor	location	[51.54163461754972, -0.15099541597472746]	2026-08-05 02:42:00-04
W-1528	9276	Z5	contractor	gate	[51.5184570381092, -0.09969575670045339]	2026-08-05 02:48:00-04
W-1529	8812	Z5	contractor	location	[51.491688571102415, -0.12919215971388665]	2026-08-05 02:51:00-04
W-1530	6229	Z5	staff	gate	[51.463640687946494, -0.14831728749946582]	2026-08-05 02:44:00-04
W-1531	5280	Z5	contractor	gate	[51.46142994931281, -0.1736151908510488]	2026-08-05 02:47:00-04
W-1532	7908	Z5	contractor	location	[51.54135293578038, -0.1464501868980264]	2026-08-05 02:43:00-04
W-1533	8033	Z5	staff	location	[51.46478706437357, -0.1448274095963434]	2026-08-05 02:53:00-04
W-1534	7997	Z5	contractor	gate	[51.48326600012097, -0.10956118304674387]	2026-08-05 02:48:00-04
W-1535	4672	Z5	contractor	gate	[51.47085870972207, -0.11200382436850083]	2026-08-05 02:50:00-04
W-1536	9627	Z5	contractor	gate	[51.52667183135, -0.1749923428928669]	2026-08-05 02:53:00-04
W-1537	1089	Z5	contractor	gate	[51.52143703073806, -0.13906820286267946]	2026-08-05 02:43:00-04
W-1538	9446	Z5	contractor	gate	[51.553449997048524, -0.08332131171105833]	2026-08-05 02:51:00-04
W-1539	789	Z5	contractor	gate	[51.469979701202405, -0.16983992895203942]	2026-08-05 02:42:00-04
W-1540	8977	Z5	staff	location	[51.483270862164474, -0.08343926443589375]	2026-08-05 02:40:00-04
W-1541	5300	Z6	staff	gate	[51.544360482779005, -0.14261894044102313]	2026-08-05 02:40:00-04
W-1542	2046	Z6	contractor	gate	[51.53152690453827, -0.15921236035735215]	2026-08-05 02:48:00-04
W-1543	4978	Z6	contractor	location	[51.460013982541106, -0.09106502342833303]	2026-08-05 02:48:00-04
W-1544	2044	Z6	contractor	gate	[51.49391548607785, -0.1578338087992988]	2026-08-05 02:39:00-04
W-1545	5388	Z6	contractor	location	[51.554241534839505, -0.08384906042352014]	2026-08-05 02:53:00-04
W-1546	6363	Z6	contractor	location	[51.53833161864922, -0.10220404382861752]	2026-08-05 02:39:00-04
W-1547	7324	Z6	contractor	gate	[51.47982553643332, -0.17567561986563346]	2026-08-05 02:51:00-04
W-1548	1299	Z6	contractor	gate	[51.478082961727246, -0.0994932516648707]	2026-08-05 02:50:00-04
W-1549	5320	Z6	contractor	location	[51.53027189688254, -0.12086897941186205]	2026-08-05 02:40:00-04
W-1550	5001	Z6	contractor	location	[51.52707543580426, -0.11933112221877192]	2026-08-05 02:44:00-04
W-1551	5162	Z6	contractor	location	[51.51740212818386, -0.1433916823623725]	2026-08-05 02:50:00-04
W-1552	435	Z6	staff	location	[51.50074316557051, -0.14478912671247104]	2026-08-05 02:46:00-04
W-1553	4999	Z6	contractor	location	[51.465729953378464, -0.16178574187400663]	2026-08-05 02:41:00-04
W-1554	8606	Z6	staff	location	[51.49959880887845, -0.11793575106235638]	2026-08-05 02:51:00-04
W-1555	4776	Z6	staff	gate	[51.46037470492885, -0.08886341434984145]	2026-08-05 02:40:00-04
W-1556	5799	Z6	contractor	location	[51.485420648864455, -0.15265113935883282]	2026-08-05 02:50:00-04
W-1557	2627	Z6	staff	gate	[51.528756955030595, -0.10400125575943761]	2026-08-05 02:46:00-04
W-1558	4669	Z6	contractor	location	[51.48544974669339, -0.16743441196844858]	2026-08-05 02:39:00-04
W-1559	7103	Z6	contractor	location	[51.51236501986668, -0.16514788336402042]	2026-08-05 02:40:00-04
W-1560	2608	Z6	contractor	location	[51.535001352431955, -0.10866690671626486]	2026-08-05 02:41:00-04
W-1561	4025	Z6	contractor	location	[51.492231271383176, -0.16985916345539503]	2026-08-05 02:41:00-04
W-1562	5066	Z6	contractor	location	[51.47523082474072, -0.10135588157639562]	2026-08-05 02:39:00-04
W-1563	912	Z6	contractor	gate	[51.498220143540856, -0.11329593710256437]	2026-08-05 02:50:00-04
W-1564	8752	Z6	contractor	location	[51.54201396213593, -0.14217566081678273]	2026-08-05 02:41:00-04
W-1565	7168	Z6	contractor	location	[51.52663413251807, -0.094026601999001]	2026-08-05 02:40:00-04
W-1566	5140	Z6	contractor	location	[51.498221902564815, -0.13829643844323114]	2026-08-05 02:47:00-04
W-1567	2878	Z6	contractor	location	[51.49496197786865, -0.16555198593136353]	2026-08-05 02:47:00-04
W-1568	2573	Z6	contractor	gate	[51.5549204903837, -0.1252013704173422]	2026-08-05 02:40:00-04
W-1569	2405	Z6	contractor	location	[51.52483695986751, -0.1399849464465044]	2026-08-05 02:41:00-04
W-1570	5633	Z6	contractor	location	[51.526081246667694, -0.12583975531918387]	2026-08-05 02:42:00-04
W-1571	848	Z6	contractor	location	[51.4728990563399, -0.1587577716251694]	2026-08-05 02:52:00-04
W-1572	3432	Z6	contractor	location	[51.49400214318045, -0.16862640674204163]	2026-08-05 02:52:00-04
W-1573	9248	Z6	staff	location	[51.462391574764744, -0.12159939861931576]	2026-08-05 02:40:00-04
W-1574	1463	Z6	contractor	location	[51.51757198762508, -0.092959176008603]	2026-08-05 02:50:00-04
W-1575	4293	Z6	contractor	location	[51.473750815995295, -0.08382164128886184]	2026-08-05 02:39:00-04
W-1576	4407	Z6	staff	gate	[51.480581713221476, -0.10622384972476186]	2026-08-05 02:49:00-04
W-1577	825	Z6	staff	location	[51.55175307075285, -0.09273041962773472]	2026-08-05 02:40:00-04
W-1578	1637	Z6	staff	location	[51.46135065041844, -0.1327058465233054]	2026-08-05 02:42:00-04
W-1579	5929	Z6	staff	location	[51.5539960650066, -0.1302444678806957]	2026-08-05 02:48:00-04
W-1580	2205	Z6	contractor	location	[51.49335902790598, -0.12734415821599632]	2026-08-05 02:45:00-04
W-1581	4633	Z6	contractor	gate	[51.55352002295349, -0.12034702046459249]	2026-08-05 02:41:00-04
W-1582	6240	Z6	contractor	gate	[51.48203245566748, -0.16184803349173707]	2026-08-05 02:48:00-04
W-1583	6901	Z6	contractor	location	[51.53790770508048, -0.11362928949410715]	2026-08-05 02:48:00-04
W-1584	3836	Z6	contractor	location	[51.519722865851826, -0.11869009647038214]	2026-08-05 02:49:00-04
W-1585	1274	Z6	contractor	location	[51.46038472836221, -0.13576352446614198]	2026-08-05 02:47:00-04
W-1586	375	Z6	contractor	location	[51.486919200413716, -0.09367427792438116]	2026-08-05 02:46:00-04
W-1587	8006	Z6	contractor	gate	[51.4590937831782, -0.1256220059593523]	2026-08-05 02:42:00-04
W-1588	3375	Z6	contractor	gate	[51.55094629987031, -0.11094129856768975]	2026-08-05 02:52:00-04
W-1589	4750	Z6	contractor	gate	[51.47727347287529, -0.13341506620313043]	2026-08-05 02:42:00-04
W-1590	2524	Z6	contractor	location	[51.508141067157396, -0.1776185009521754]	2026-08-05 02:51:00-04
W-1591	6404	Z6	contractor	gate	[51.515988141335534, -0.13604988316516675]	2026-08-05 02:47:00-04
W-1592	5612	Z6	staff	gate	[51.519517397797046, -0.11720539300080325]	2026-08-05 02:45:00-04
W-1593	8438	Z6	contractor	location	[51.49736831500661, -0.1718688097244438]	2026-08-05 02:52:00-04
W-1594	7496	Z6	contractor	location	[51.50992232792283, -0.16022907443597612]	2026-08-05 02:52:00-04
W-1595	374	Z6	contractor	gate	[51.482190361021225, -0.14876265253592658]	2026-08-05 02:43:00-04
W-1596	4046	Z6	contractor	location	[51.49903485629569, -0.10753476992092882]	2026-08-05 02:41:00-04
W-1597	7678	Z6	contractor	location	[51.53158641924044, -0.1165047640562349]	2026-08-05 02:43:00-04
W-1598	9427	Z6	contractor	location	[51.476694830030695, -0.15201913243320253]	2026-08-05 02:40:00-04
W-1599	6854	Z6	staff	location	[51.54096326874828, -0.10810283609718835]	2026-08-05 02:40:00-04
W-1600	777	Z6	contractor	location	[51.4925696343663, -0.14118011016806406]	2026-08-05 02:41:00-04
W-1601	2960	Z6	contractor	gate	[51.46492877367183, -0.1593740471693555]	2026-08-05 02:46:00-04
W-1602	1760	Z6	contractor	gate	[51.4608995989079, -0.10469948104538473]	2026-08-05 02:46:00-04
W-1603	1291	Z6	contractor	location	[51.53087459620138, -0.11415652597801193]	2026-08-05 02:41:00-04
W-1604	6432	Z6	contractor	location	[51.55655521797849, -0.14692584257850838]	2026-08-05 02:53:00-04
W-1605	6252	Z6	contractor	location	[51.519159803675024, -0.14957272207532346]	2026-08-05 02:53:00-04
W-1606	5420	Z6	contractor	gate	[51.4835934197123, -0.1585463855194206]	2026-08-05 02:45:00-04
W-1607	4966	Z6	contractor	location	[51.54175763251083, -0.11263152417160192]	2026-08-05 02:41:00-04
W-1608	4818	Z6	contractor	gate	[51.48180006103251, -0.10984223496622408]	2026-08-05 02:49:00-04
W-1609	9098	Z6	staff	gate	[51.490862458179, -0.14195716102815786]	2026-08-05 02:44:00-04
W-1610	7844	Z6	staff	location	[51.48247584351572, -0.09695522864823217]	2026-08-05 02:47:00-04
W-1611	1343	Z6	contractor	gate	[51.48151974383227, -0.149565998954442]	2026-08-05 02:50:00-04
W-1612	7581	Z6	contractor	location	[51.51480352221957, -0.13829790427216576]	2026-08-05 02:41:00-04
W-1613	6175	Z6	contractor	location	[51.5003596369024, -0.09010398752162373]	2026-08-05 02:50:00-04
W-1614	5603	Z6	staff	gate	[51.47885505578994, -0.08163948468691666]	2026-08-05 02:51:00-04
W-1615	5685	Z6	contractor	location	[51.545936057304296, -0.12295787941271746]	2026-08-05 02:42:00-04
W-1616	6778	Z6	contractor	gate	[51.543585070850945, -0.08945628648194559]	2026-08-05 02:41:00-04
W-1617	6096	Z6	contractor	location	[51.47747718031893, -0.14055582461543772]	2026-08-05 02:44:00-04
W-1618	8915	Z6	contractor	location	[51.487869396921795, -0.10988323570927944]	2026-08-05 02:45:00-04
W-1619	5920	Z6	contractor	gate	[51.51644206679592, -0.1021411947492841]	2026-08-05 02:49:00-04
W-1620	1485	Z6	contractor	gate	[51.525601312704616, -0.09391009535044435]	2026-08-05 02:49:00-04
W-1621	3345	Z6	contractor	location	[51.53462857566376, -0.09316800898834061]	2026-08-05 02:50:00-04
W-1622	6922	Z6	contractor	location	[51.537817233986665, -0.10748313821001555]	2026-08-05 02:44:00-04
W-1623	9902	Z6	contractor	gate	[51.48130909967928, -0.13535941167205057]	2026-08-05 02:50:00-04
W-1624	1490	Z6	contractor	location	[51.471564788702594, -0.08221200239884131]	2026-08-05 02:52:00-04
W-1625	4143	Z6	contractor	gate	[51.468740278262786, -0.1460687271812505]	2026-08-05 02:42:00-04
W-1626	8703	Z6	contractor	gate	[51.461894907675095, -0.1696279884132147]	2026-08-05 02:48:00-04
W-1627	1660	Z6	contractor	location	[51.47521730809923, -0.09394750326757187]	2026-08-05 02:51:00-04
W-1628	7809	Z6	contractor	gate	[51.497443640990646, -0.11162047195985703]	2026-08-05 02:51:00-04
W-1629	5562	Z6	contractor	location	[51.47522440159946, -0.14451457540321308]	2026-08-05 02:39:00-04
W-1630	3980	Z6	contractor	gate	[51.50886002923595, -0.13497954630583098]	2026-08-05 02:52:00-04
W-1631	5647	Z6	contractor	gate	[51.49059205432107, -0.1305587890146993]	2026-08-05 02:50:00-04
W-1632	5705	Z6	staff	location	[51.50416059245523, -0.13860549131694833]	2026-08-05 02:40:00-04
W-1633	2846	Z6	contractor	gate	[51.483238063674165, -0.08053301999200173]	2026-08-05 02:53:00-04
W-1634	8950	Z6	contractor	gate	[51.46402482957412, -0.09862971616615833]	2026-08-05 02:47:00-04
W-1635	3801	Z6	contractor	gate	[51.48000631901781, -0.13966129731246574]	2026-08-05 02:45:00-04
W-1636	1213	Z6	contractor	location	[51.49760382390657, -0.1263647993208632]	2026-08-05 02:43:00-04
W-1637	2584	Z6	contractor	location	[51.47146963010564, -0.1512680545350025]	2026-08-05 02:52:00-04
W-1638	5512	Z6	contractor	location	[51.4749633282259, -0.17566609161893376]	2026-08-05 02:44:00-04
W-1639	9883	Z6	contractor	location	[51.53130672352078, -0.14265593588846015]	2026-08-05 02:43:00-04
W-1640	3283	Z6	contractor	gate	[51.548385753448144, -0.11983441980597848]	2026-08-05 02:45:00-04
W-1641	7199	Z6	contractor	location	[51.51543026902677, -0.10520755459905415]	2026-08-05 02:52:00-04
W-1642	3489	Z6	contractor	location	[51.518520252885565, -0.07808835479380528]	2026-08-05 02:47:00-04
W-1643	5961	Z6	contractor	location	[51.47621121084973, -0.14151024205390672]	2026-08-05 02:51:00-04
W-1644	5272	Z6	contractor	location	[51.47079557312978, -0.1436461064290494]	2026-08-05 02:42:00-04
W-1645	2347	Z6	contractor	location	[51.48417770357276, -0.131183540606077]	2026-08-05 02:46:00-04
W-1646	8220	Z6	contractor	gate	[51.48031023616379, -0.13648021662266802]	2026-08-05 02:51:00-04
W-1647	8078	Z6	contractor	location	[51.54571791016668, -0.08601467955613014]	2026-08-05 02:47:00-04
W-1648	9402	Z6	contractor	gate	[51.486702639860084, -0.17584795847682783]	2026-08-05 02:50:00-04
W-1649	982	Z6	contractor	location	[51.49319905670466, -0.1760393367481896]	2026-08-05 02:53:00-04
W-1650	1636	Z6	staff	location	[51.55404862871289, -0.13074472286944952]	2026-08-05 02:53:00-04
W-1651	3080	Z6	contractor	gate	[51.51362205389351, -0.1113921045539864]	2026-08-05 02:47:00-04
W-1652	726	Z6	contractor	location	[51.5531565132048, -0.14362505747008852]	2026-08-05 02:39:00-04
W-1653	4232	Z6	contractor	gate	[51.52093682083715, -0.16868355702776244]	2026-08-05 02:45:00-04
W-1654	7366	Z6	contractor	location	[51.47669839699247, -0.08994207629935702]	2026-08-05 02:46:00-04
W-1655	4662	Z6	contractor	location	[51.5550125394656, -0.11199617532513097]	2026-08-05 02:42:00-04
W-1656	2332	Z6	staff	gate	[51.47326707458182, -0.17026312303258423]	2026-08-05 02:40:00-04
W-1657	6434	Z6	contractor	gate	[51.462168408476025, -0.16873992028627693]	2026-08-05 02:45:00-04
W-1658	9754	Z6	staff	location	[51.45906684989042, -0.09065822585483968]	2026-08-05 02:51:00-04
W-1659	2580	Z6	staff	location	[51.511116032123596, -0.09406595935139066]	2026-08-05 02:52:00-04
W-1660	2015	Z6	staff	location	[51.505274958313706, -0.1547056385391014]	2026-08-05 02:43:00-04
W-1661	7591	Z6	contractor	location	[51.51306110023206, -0.11333387593414312]	2026-08-05 02:48:00-04
W-1662	3124	Z6	contractor	location	[51.52500221434204, -0.16876946703085866]	2026-08-05 02:43:00-04
W-1663	4473	Z6	staff	location	[51.4720978252912, -0.13195517957152758]	2026-08-05 02:40:00-04
W-1664	6391	Z6	contractor	location	[51.52327226755627, -0.1335973878569686]	2026-08-05 02:52:00-04
W-1665	2454	Z6	staff	location	[51.48853826180311, -0.1622321319153253]	2026-08-05 02:45:00-04
W-1666	9806	Z6	contractor	gate	[51.52566073522972, -0.15380307076076158]	2026-08-05 02:41:00-04
W-1667	1937	Z6	contractor	location	[51.48582033627904, -0.08810014382356966]	2026-08-05 02:41:00-04
W-1668	8057	Z6	contractor	location	[51.5506117521972, -0.07848242370095145]	2026-08-05 02:44:00-04
W-1669	3875	Z6	contractor	location	[51.54342538520388, -0.15170315782277027]	2026-08-05 02:53:00-04
W-1670	5901	Z6	contractor	location	[51.48271408845627, -0.1759639515729454]	2026-08-05 02:44:00-04
W-1671	5628	Z6	contractor	location	[51.46825049513084, -0.15640077992724047]	2026-08-05 02:45:00-04
W-1672	2796	Z6	contractor	location	[51.55303509265744, -0.15852905153254884]	2026-08-05 02:50:00-04
W-1673	1431	Z6	contractor	location	[51.50404290860134, -0.08375561437542065]	2026-08-05 02:43:00-04
W-1674	1794	Z6	contractor	location	[51.520599590740716, -0.11295490416663896]	2026-08-05 02:48:00-04
W-1675	5408	Z6	contractor	gate	[51.534397967797105, -0.17679801233631157]	2026-08-05 02:51:00-04
W-1676	2251	Z6	staff	location	[51.47155934281571, -0.11316253863130749]	2026-08-05 02:43:00-04
W-1677	7577	Z6	staff	location	[51.54684873831177, -0.11776149824466903]	2026-08-05 02:46:00-04
W-1678	4629	Z6	contractor	location	[51.4827792579043, -0.10035255687253884]	2026-08-05 02:45:00-04
W-1679	3477	Z6	contractor	gate	[51.46577585972322, -0.08442573956060144]	2026-08-05 02:43:00-04
W-1680	5361	Z6	contractor	location	[51.54786506056117, -0.10933786014698316]	2026-08-05 02:48:00-04
W-1681	8880	Z6	contractor	gate	[51.46437991895564, -0.15847195807613706]	2026-08-05 02:48:00-04
W-1682	8447	Z6	contractor	location	[51.540726249592915, -0.1743874194122092]	2026-08-05 02:43:00-04
W-1683	3412	Z6	contractor	location	[51.51094031686236, -0.13106729384985022]	2026-08-05 02:52:00-04
W-1684	658	Z6	staff	gate	[51.533697373933514, -0.12023932970787983]	2026-08-05 02:51:00-04
W-1685	4339	Z6	contractor	location	[51.53751081440906, -0.12772536053292152]	2026-08-05 02:46:00-04
W-1686	4347	Z6	contractor	location	[51.52210490300143, -0.16143408103233914]	2026-08-05 02:41:00-04
W-1687	3226	Z6	contractor	location	[51.51619865077063, -0.168582380900132]	2026-08-05 02:43:00-04
W-1688	6094	Z6	staff	location	[51.4759546235054, -0.14310027651440568]	2026-08-05 02:43:00-04
W-1689	2234	Z6	staff	location	[51.48860575748071, -0.17567330291424768]	2026-08-05 02:45:00-04
W-1690	256	Z6	staff	location	[51.48501349136824, -0.14146258534329081]	2026-08-05 02:49:00-04
W-1691	8003	Z6	contractor	gate	[51.51361866463345, -0.12848980310577945]	2026-08-05 02:41:00-04
W-1692	9347	Z6	contractor	location	[51.50181906753179, -0.10049820080795355]	2026-08-05 02:51:00-04
W-1693	140	Z6	contractor	location	[51.49059130316902, -0.07867312560689897]	2026-08-05 02:47:00-04
W-1694	5883	Z6	staff	location	[51.52424623721206, -0.14575476557736503]	2026-08-05 02:39:00-04
W-1695	3179	Z6	contractor	gate	[51.47821490641646, -0.1071386324733306]	2026-08-05 02:50:00-04
W-1696	4479	Z6	staff	location	[51.55524384330655, -0.13949244250937962]	2026-08-05 02:41:00-04
W-1697	6928	Z6	contractor	location	[51.548226310020944, -0.16953372019281635]	2026-08-05 02:42:00-04
W-1698	8706	Z6	contractor	gate	[51.4656456920723, -0.09213744476543102]	2026-08-05 02:41:00-04
W-1699	3177	Z6	contractor	location	[51.491043521320734, -0.15189894422092226]	2026-08-05 02:43:00-04
W-1700	9015	Z6	contractor	location	[51.550609790524234, -0.13496005117408177]	2026-08-05 02:45:00-04
W-1701	6102	Z6	contractor	location	[51.504146569155, -0.13364035350334885]	2026-08-05 02:49:00-04
W-1702	4787	Z6	contractor	location	[51.46335114837242, -0.08370128878922571]	2026-08-05 02:42:00-04
W-1703	6702	Z6	staff	gate	[51.500571254690406, -0.1089053228141085]	2026-08-05 02:52:00-04
W-1704	8205	Z6	contractor	location	[51.541316634277436, -0.17091526239787852]	2026-08-05 02:41:00-04
W-1705	9127	Z6	contractor	location	[51.48784853694688, -0.14801006461099045]	2026-08-05 02:43:00-04
W-1706	7150	Z6	contractor	location	[51.51026532532077, -0.1252100400748659]	2026-08-05 02:52:00-04
W-1707	7930	Z6	contractor	gate	[51.55494270660025, -0.17157378986124788]	2026-08-05 02:45:00-04
W-1708	7843	Z6	contractor	location	[51.51483271511748, -0.1591511161438448]	2026-08-05 02:50:00-04
W-1709	6362	Z6	contractor	location	[51.47491023254302, -0.17442477942684734]	2026-08-05 02:43:00-04
W-1710	1760	Z6	staff	gate	[51.52397584706943, -0.08696195794601592]	2026-08-05 02:47:00-04
W-1711	6511	Z6	contractor	location	[51.522495616530456, -0.15325332755973184]	2026-08-05 02:48:00-04
W-1712	9928	Z6	contractor	gate	[51.5467189590208, -0.1386354505135187]	2026-08-05 02:47:00-04
W-1713	7034	Z6	contractor	gate	[51.53112705554304, -0.16731800488296739]	2026-08-05 02:45:00-04
W-1714	859	Z6	contractor	location	[51.546898682506196, -0.15563507081894612]	2026-08-05 02:39:00-04
W-1715	7116	Z6	staff	location	[51.47693605533929, -0.1106204238897961]	2026-08-05 02:47:00-04
W-1716	9982	Z6	contractor	location	[51.464601907581795, -0.13328328195322692]	2026-08-05 02:48:00-04
W-1717	3270	Z6	staff	location	[51.48592181739311, -0.1486785100388252]	2026-08-05 02:41:00-04
W-1718	9341	Z6	contractor	location	[51.52788978302947, -0.13766104657522477]	2026-08-05 02:41:00-04
W-1719	8417	Z6	staff	gate	[51.49571491334744, -0.12482762375946743]	2026-08-05 02:40:00-04
W-1720	5000	Z6	contractor	location	[51.52986724061798, -0.11376331924343361]	2026-08-05 02:48:00-04
W-1721	9318	Z6	staff	gate	[51.49790415367919, -0.14601520116074193]	2026-08-05 02:52:00-04
W-1722	4736	Z6	contractor	location	[51.52101438725154, -0.16856342016655723]	2026-08-05 02:53:00-04
W-1723	3693	Z6	contractor	location	[51.52520195739879, -0.10354277989098797]	2026-08-05 02:39:00-04
W-1724	2685	Z6	staff	location	[51.47149692719813, -0.08021177247730404]	2026-08-05 02:47:00-04
W-1725	655	Z6	staff	location	[51.476416683632834, -0.13196682888102618]	2026-08-05 02:42:00-04
W-1726	1533	Z6	contractor	location	[51.48049420755138, -0.10470793780886523]	2026-08-05 02:44:00-04
W-1727	601	Z6	contractor	gate	[51.521552061905034, -0.1590274514471068]	2026-08-05 02:40:00-04
W-1728	6250	Z6	contractor	location	[51.51115971714982, -0.14517332676974443]	2026-08-05 02:46:00-04
W-1729	7051	Z6	staff	gate	[51.47307995928741, -0.12093155629985232]	2026-08-05 02:47:00-04
W-1730	1441	Z6	contractor	location	[51.49303130238678, -0.1166777231723568]	2026-08-05 02:39:00-04
W-1731	4797	Z6	staff	location	[51.51253391944306, -0.14120463050821683]	2026-08-05 02:51:00-04
W-1732	9387	Z6	contractor	location	[51.48236809324914, -0.08502736175714039]	2026-08-05 02:48:00-04
W-1733	1458	Z6	contractor	gate	[51.47277296623065, -0.08791366403959788]	2026-08-05 02:46:00-04
W-1734	7645	Z6	staff	location	[51.5236129507656, -0.10286349479746165]	2026-08-05 02:46:00-04
W-1735	4388	Z6	contractor	gate	[51.54390499659686, -0.09118127148917074]	2026-08-05 02:50:00-04
W-1736	4650	Z6	contractor	location	[51.53125398252047, -0.15506047320130073]	2026-08-05 02:41:00-04
W-1737	5671	Z6	contractor	gate	[51.466971132451185, -0.12111324853059124]	2026-08-05 02:53:00-04
W-1738	1073	Z6	contractor	location	[51.46861665952347, -0.0793572527188282]	2026-08-05 02:40:00-04
W-1739	1359	Z6	contractor	location	[51.49096788124752, -0.14973370090196753]	2026-08-05 02:49:00-04
W-1740	6674	Z6	contractor	location	[51.49366528700384, -0.10905915351406606]	2026-08-05 02:50:00-04
W-1741	9530	Z6	contractor	location	[51.51651824228991, -0.1426561213546565]	2026-08-05 02:49:00-04
W-1742	4274	Z6	contractor	gate	[51.52760113621147, -0.1208661605998906]	2026-08-05 02:49:00-04
W-1743	4857	Z6	contractor	location	[51.492835350266844, -0.12373555048614224]	2026-08-05 02:40:00-04
W-1744	1302	Z6	contractor	location	[51.49847454019535, -0.0910242935166749]	2026-08-05 02:48:00-04
W-1745	9615	Z6	contractor	location	[51.46990114224066, -0.14597632832738577]	2026-08-05 02:53:00-04
W-1746	3020	Z6	staff	location	[51.5112815694612, -0.11557155261060294]	2026-08-05 02:46:00-04
W-1747	4586	Z6	contractor	location	[51.47689963886847, -0.11601388435582041]	2026-08-05 02:41:00-04
W-1748	7703	Z6	staff	gate	[51.53608063212127, -0.1577921791428805]	2026-08-05 02:39:00-04
W-1749	4840	Z6	contractor	gate	[51.47369346768596, -0.10202924950382167]	2026-08-05 02:43:00-04
W-1750	6694	Z6	staff	location	[51.48615550774504, -0.15187402636763264]	2026-08-05 02:42:00-04
W-1751	7371	Z7	contractor	location	[51.53654698602658, -0.11070183614697751]	2026-08-05 02:41:00-04
W-1752	7545	Z7	contractor	location	[51.467239467935485, -0.09362051983258086]	2026-08-05 02:40:00-04
W-1753	7099	Z7	contractor	location	[51.50004466399234, -0.11697524667646864]	2026-08-05 02:42:00-04
W-1754	5359	Z7	contractor	location	[51.524128675985544, -0.16126734934700626]	2026-08-05 02:42:00-04
W-1755	9290	Z7	contractor	location	[51.463910680944316, -0.13514353094798354]	2026-08-05 02:43:00-04
W-1756	6060	Z7	staff	location	[51.49989484177905, -0.11679636776670584]	2026-08-05 02:51:00-04
W-1757	2390	Z7	contractor	location	[51.483230270849155, -0.08626324639419412]	2026-08-05 02:52:00-04
W-1758	7967	Z7	contractor	location	[51.49824238755761, -0.08056110259425955]	2026-08-05 02:39:00-04
W-1759	6295	Z7	staff	gate	[51.50659195394549, -0.14855738613678518]	2026-08-05 02:42:00-04
W-1760	6141	Z7	contractor	gate	[51.52477354502711, -0.10565159984844819]	2026-08-05 02:45:00-04
W-1761	9977	Z7	contractor	location	[51.48025778068989, -0.14543262270249654]	2026-08-05 02:46:00-04
W-1762	4751	Z7	contractor	location	[51.52294407057274, -0.166744243850791]	2026-08-05 02:44:00-04
W-1763	3582	Z7	contractor	gate	[51.462456914255014, -0.09100766745124965]	2026-08-05 02:44:00-04
W-1764	5257	Z7	contractor	gate	[51.494825659813465, -0.14748155392090156]	2026-08-05 02:46:00-04
W-1765	4656	Z7	contractor	gate	[51.48350841180113, -0.17086423180458077]	2026-08-05 02:47:00-04
W-1766	7038	Z7	contractor	gate	[51.50066397708148, -0.11991032257668965]	2026-08-05 02:49:00-04
W-1767	4042	Z7	contractor	location	[51.471223023948795, -0.08494954545940621]	2026-08-05 02:48:00-04
W-1768	1317	Z7	staff	location	[51.507712465102344, -0.1652183288963607]	2026-08-05 02:50:00-04
W-1769	5750	Z7	staff	gate	[51.49635090261353, -0.1079470614439565]	2026-08-05 02:48:00-04
W-1770	4989	Z7	contractor	location	[51.46767455436847, -0.10186018025331241]	2026-08-05 02:48:00-04
W-1771	5628	Z7	contractor	gate	[51.49664073576691, -0.08984416280377293]	2026-08-05 02:53:00-04
W-1772	107	Z7	staff	gate	[51.520107719182455, -0.15200199235986814]	2026-08-05 02:39:00-04
W-1773	2229	Z7	contractor	gate	[51.53607384922472, -0.0924945889300655]	2026-08-05 02:47:00-04
W-1774	1583	Z7	contractor	location	[51.521273828111575, -0.17153811446434794]	2026-08-05 02:48:00-04
W-1775	3825	Z7	contractor	location	[51.51299958798525, -0.1137228732536365]	2026-08-05 02:46:00-04
W-1776	2527	Z7	staff	location	[51.48561271265324, -0.16686259988663044]	2026-08-05 02:42:00-04
W-1777	3942	Z7	staff	location	[51.476967196863654, -0.12403761562486715]	2026-08-05 02:39:00-04
W-1778	1654	Z7	contractor	gate	[51.473248376133796, -0.17167230910582323]	2026-08-05 02:52:00-04
W-1779	9231	Z7	contractor	gate	[51.50493860960994, -0.1433939207857946]	2026-08-05 02:42:00-04
W-1780	3022	Z7	staff	gate	[51.51937623356098, -0.16913172553116115]	2026-08-05 02:52:00-04
W-1781	9217	Z7	staff	location	[51.49910233520772, -0.16435033247693484]	2026-08-05 02:53:00-04
W-1782	2879	Z7	staff	location	[51.49113752238415, -0.10147428671087484]	2026-08-05 02:46:00-04
W-1783	1866	Z7	staff	gate	[51.47027937326103, -0.1614941513855364]	2026-08-05 02:47:00-04
W-1784	2049	Z7	contractor	location	[51.486591211480736, -0.10571867058585523]	2026-08-05 02:46:00-04
W-1785	328	Z7	contractor	location	[51.46992120203584, -0.15704871849778088]	2026-08-05 02:42:00-04
W-1786	1184	Z7	contractor	location	[51.46908582144046, -0.09902708651569389]	2026-08-05 02:42:00-04
W-1787	9234	Z7	staff	location	[51.48478626341858, -0.09074350391639152]	2026-08-05 02:47:00-04
W-1788	303	Z7	contractor	location	[51.494756683729086, -0.11985283750280332]	2026-08-05 02:48:00-04
W-1789	3176	Z7	contractor	location	[51.462446520500606, -0.14930988410851237]	2026-08-05 02:50:00-04
W-1790	4828	Z7	contractor	location	[51.53553876049081, -0.10451942215929351]	2026-08-05 02:45:00-04
W-1791	368	Z7	contractor	gate	[51.49636445173241, -0.17066553056194922]	2026-08-05 02:41:00-04
W-1792	6153	Z7	staff	location	[51.498821135317364, -0.07795531179317243]	2026-08-05 02:48:00-04
W-1793	3062	Z7	contractor	location	[51.488473817011794, -0.15718225186070156]	2026-08-05 02:43:00-04
W-1794	9626	Z7	contractor	location	[51.5004855136634, -0.09486718948942348]	2026-08-05 02:47:00-04
W-1795	7946	Z7	contractor	location	[51.4724027508803, -0.14342551935709014]	2026-08-05 02:40:00-04
W-1796	9362	Z7	contractor	location	[51.54508451830803, -0.12456832524643369]	2026-08-05 02:40:00-04
W-1797	7521	Z7	contractor	gate	[51.51975499937074, -0.14660084994320358]	2026-08-05 02:51:00-04
W-1798	3441	Z7	contractor	gate	[51.537363202543816, -0.15152282540494227]	2026-08-05 02:41:00-04
W-1799	6898	Z7	contractor	location	[51.548691560899144, -0.13973650018733721]	2026-08-05 02:45:00-04
W-1800	9953	Z7	staff	gate	[51.47174055851362, -0.10664106483727608]	2026-08-05 02:40:00-04
W-1801	9554	Z7	contractor	gate	[51.542342794980904, -0.138570197755854]	2026-08-05 02:39:00-04
W-1802	8809	Z7	contractor	gate	[51.535831014302794, -0.16452013537076213]	2026-08-05 02:47:00-04
W-1803	4585	Z7	contractor	location	[51.49796222136017, -0.12692905000777574]	2026-08-05 02:51:00-04
W-1804	1711	Z7	staff	location	[51.52374114341803, -0.12084191655783023]	2026-08-05 02:53:00-04
W-1805	2586	Z7	contractor	location	[51.54750179048195, -0.09255278563738907]	2026-08-05 02:48:00-04
W-1806	7863	Z7	contractor	location	[51.53106854670251, -0.10249326359462269]	2026-08-05 02:40:00-04
W-1807	631	Z7	staff	location	[51.48147343177147, -0.10722233896413069]	2026-08-05 02:48:00-04
W-1808	7800	Z7	contractor	location	[51.54542143886041, -0.1743423302148136]	2026-08-05 02:49:00-04
W-1809	2819	Z7	contractor	location	[51.46102976943936, -0.17090932965159664]	2026-08-05 02:45:00-04
W-1810	5223	Z7	contractor	location	[51.48168443446356, -0.08664590858814934]	2026-08-05 02:41:00-04
W-1811	3662	Z7	contractor	location	[51.54240292138442, -0.10430029702567183]	2026-08-05 02:49:00-04
W-1812	5066	Z7	staff	location	[51.541544470446645, -0.09546275903768296]	2026-08-05 02:48:00-04
W-1813	4752	Z7	contractor	location	[51.50506095981641, -0.13449332401442674]	2026-08-05 02:42:00-04
W-1814	7907	Z7	contractor	gate	[51.52673387770225, -0.08412318799421666]	2026-08-05 02:42:00-04
W-1815	108	Z7	staff	location	[51.521498341081674, -0.11025352435074481]	2026-08-05 02:43:00-04
W-1816	1345	Z7	contractor	location	[51.542399364395656, -0.16088547853571156]	2026-08-05 02:45:00-04
W-1817	8674	Z7	contractor	location	[51.54905600952127, -0.10182554408449822]	2026-08-05 02:46:00-04
W-1818	7990	Z7	staff	gate	[51.54169200941629, -0.13210899854200053]	2026-08-05 02:53:00-04
W-1819	9679	Z7	staff	location	[51.49286750675081, -0.09250017014075453]	2026-08-05 02:42:00-04
W-1820	4185	Z7	contractor	location	[51.50245610197846, -0.13810626202937915]	2026-08-05 02:41:00-04
W-1821	6109	Z7	contractor	gate	[51.48877191191853, -0.14044024361925447]	2026-08-05 02:48:00-04
W-1822	8045	Z7	contractor	location	[51.47821053007428, -0.16642457149979278]	2026-08-05 02:45:00-04
W-1823	3498	Z7	contractor	gate	[51.501943492050806, -0.14235730651520712]	2026-08-05 02:51:00-04
W-1824	5782	Z7	contractor	gate	[51.51030853146637, -0.10645532339635932]	2026-08-05 02:52:00-04
W-1825	4231	Z7	contractor	location	[51.489998802562226, -0.07993852421136399]	2026-08-05 02:41:00-04
W-1826	7507	Z7	contractor	location	[51.46191090660155, -0.13560902912799022]	2026-08-05 02:44:00-04
W-1827	7392	Z7	contractor	gate	[51.493340132298236, -0.11629561457248794]	2026-08-05 02:46:00-04
W-1828	5942	Z7	contractor	location	[51.507853462577444, -0.14666659000847299]	2026-08-05 02:43:00-04
W-1829	9283	Z7	contractor	location	[51.523763607361445, -0.11067874083399945]	2026-08-05 02:51:00-04
W-1830	8363	Z7	contractor	location	[51.53441843676943, -0.11933654878409067]	2026-08-05 02:41:00-04
W-1831	4139	Z7	contractor	location	[51.46035912508403, -0.15560165797081854]	2026-08-05 02:39:00-04
W-1832	5710	Z7	contractor	location	[51.532428932793145, -0.1206611712604334]	2026-08-05 02:41:00-04
W-1833	8802	Z7	contractor	gate	[51.51531611333325, -0.09148958063442088]	2026-08-05 02:43:00-04
W-1834	7184	Z7	contractor	gate	[51.506420767118684, -0.09959212388623738]	2026-08-05 02:51:00-04
W-1835	4180	Z7	contractor	location	[51.51048043458371, -0.12122643739973919]	2026-08-05 02:41:00-04
W-1836	9494	Z7	contractor	location	[51.50804026268049, -0.10646750814298313]	2026-08-05 02:47:00-04
W-1837	8429	Z7	contractor	location	[51.52458753541582, -0.12737247836010762]	2026-08-05 02:41:00-04
W-1838	3454	Z7	contractor	location	[51.48109982167202, -0.09344190253561531]	2026-08-05 02:48:00-04
W-1839	9739	Z7	contractor	location	[51.49688375325681, -0.17259624869209644]	2026-08-05 02:45:00-04
W-1840	1682	Z7	staff	location	[51.55219200216239, -0.08530582034603928]	2026-08-05 02:48:00-04
W-1841	5782	Z7	contractor	location	[51.55071750442464, -0.15044450453885688]	2026-08-05 02:50:00-04
W-1842	5000	Z7	contractor	location	[51.52771243017769, -0.0855320561364762]	2026-08-05 02:45:00-04
W-1843	4727	Z7	contractor	location	[51.52252365969966, -0.14542873647333643]	2026-08-05 02:52:00-04
W-1844	1928	Z7	contractor	location	[51.52581001992749, -0.12883652740066698]	2026-08-05 02:45:00-04
W-1845	6488	Z7	contractor	location	[51.48760997080685, -0.08676979508848831]	2026-08-05 02:46:00-04
W-1846	6912	Z7	contractor	location	[51.55340647384651, -0.1616719984326827]	2026-08-05 02:44:00-04
W-1847	6983	Z7	contractor	location	[51.520994044130894, -0.12129468695133475]	2026-08-05 02:51:00-04
W-1848	7526	Z7	contractor	location	[51.55171582906147, -0.17301922998589248]	2026-08-05 02:43:00-04
W-1849	9614	Z7	contractor	location	[51.47943633615362, -0.17426385816716675]	2026-08-05 02:52:00-04
W-1850	585	Z7	staff	gate	[51.51066799051445, -0.07842341615544171]	2026-08-05 02:43:00-04
W-1851	3110	Z7	contractor	location	[51.47904619537082, -0.10229949119443742]	2026-08-05 02:40:00-04
W-1852	9712	Z7	contractor	location	[51.52506183878651, -0.1289601103998883]	2026-08-05 02:46:00-04
W-1853	2145	Z7	contractor	location	[51.487333704320676, -0.1252726393940427]	2026-08-05 02:48:00-04
W-1854	4746	Z7	contractor	gate	[51.47194040284721, -0.1017900926742999]	2026-08-05 02:51:00-04
W-1855	9541	Z7	contractor	location	[51.47197849761107, -0.14228247655380827]	2026-08-05 02:48:00-04
W-1856	3952	Z7	contractor	location	[51.48601374056348, -0.0791687170753643]	2026-08-05 02:42:00-04
W-1857	7766	Z7	contractor	location	[51.48277192497014, -0.09980404704222061]	2026-08-05 02:39:00-04
W-1858	5434	Z7	contractor	location	[51.459654187122915, -0.09632005547747917]	2026-08-05 02:43:00-04
W-1859	1097	Z7	contractor	location	[51.4983176284098, -0.099824721098932]	2026-08-05 02:48:00-04
W-1860	1231	Z7	contractor	gate	[51.47672628422701, -0.14928171812863564]	2026-08-05 02:41:00-04
W-1861	8366	Z7	contractor	location	[51.5206099080673, -0.13706726676816128]	2026-08-05 02:50:00-04
W-1862	2474	Z7	contractor	location	[51.4982016020062, -0.14620129031631424]	2026-08-05 02:46:00-04
W-1863	3597	Z7	contractor	location	[51.53286915111402, -0.1213693957827057]	2026-08-05 02:53:00-04
W-1864	3946	Z7	staff	location	[51.54480353418667, -0.08207668046453774]	2026-08-05 02:53:00-04
W-1865	7815	Z7	contractor	gate	[51.54131231226096, -0.10815068172651221]	2026-08-05 02:45:00-04
W-1866	852	Z7	contractor	gate	[51.5458641693489, -0.16908112126196084]	2026-08-05 02:47:00-04
W-1867	5693	Z7	contractor	location	[51.54908500348118, -0.13153658349505487]	2026-08-05 02:42:00-04
W-1868	3172	Z7	contractor	gate	[51.493848520454314, -0.10788449561117727]	2026-08-05 02:39:00-04
W-1869	9331	Z7	contractor	location	[51.53786563231525, -0.08173274117463951]	2026-08-05 02:49:00-04
W-1870	5292	Z7	contractor	gate	[51.516173046741756, -0.08030852190420155]	2026-08-05 02:49:00-04
W-1871	4132	Z7	staff	gate	[51.486494518129064, -0.1016325949183702]	2026-08-05 02:48:00-04
W-1872	3530	Z7	contractor	location	[51.53172955187877, -0.10028076020594687]	2026-08-05 02:45:00-04
W-1873	2843	Z7	contractor	gate	[51.50409767878011, -0.135478457163405]	2026-08-05 02:39:00-04
W-1874	3191	Z7	contractor	gate	[51.48156587133265, -0.15795200643847124]	2026-08-05 02:44:00-04
W-1875	2749	Z7	contractor	location	[51.49848365411601, -0.10446939999124631]	2026-08-05 02:42:00-04
W-1876	8569	Z7	contractor	gate	[51.486556696010204, -0.17174926837010887]	2026-08-05 02:48:00-04
W-1877	2790	Z7	contractor	location	[51.47456318227603, -0.173545285294026]	2026-08-05 02:45:00-04
W-1878	1244	Z7	contractor	gate	[51.47243693983843, -0.1031405934643641]	2026-08-05 02:40:00-04
W-1879	9408	Z7	contractor	location	[51.47740285913882, -0.1470095433521993]	2026-08-05 02:42:00-04
W-1880	9217	Z7	contractor	location	[51.494112562021606, -0.14200654532990253]	2026-08-05 02:44:00-04
W-1881	3381	Z7	contractor	location	[51.5380738943783, -0.1422306470349391]	2026-08-05 02:47:00-04
W-1882	9697	Z7	contractor	gate	[51.46528504106855, -0.10284943939229603]	2026-08-05 02:51:00-04
W-1883	3018	Z7	staff	location	[51.52433300234624, -0.1340352473799944]	2026-08-05 02:49:00-04
W-1884	9198	Z7	contractor	location	[51.53869733254795, -0.1571957757032567]	2026-08-05 02:52:00-04
W-1885	3632	Z7	staff	location	[51.53236921025824, -0.1443902247640006]	2026-08-05 02:39:00-04
W-1886	2216	Z7	contractor	gate	[51.46320246657168, -0.14908346837757436]	2026-08-05 02:49:00-04
W-1887	3061	Z7	contractor	location	[51.53367859496975, -0.15625939665220367]	2026-08-05 02:52:00-04
W-1888	4492	Z7	staff	location	[51.54052138726281, -0.08061310165806086]	2026-08-05 02:41:00-04
W-1889	1632	Z7	contractor	gate	[51.49053173048414, -0.15615223702744838]	2026-08-05 02:47:00-04
W-1890	904	Z7	contractor	location	[51.47968926332732, -0.1775573656157698]	2026-08-05 02:40:00-04
W-1891	3723	Z7	contractor	gate	[51.534301462525484, -0.15198671689884555]	2026-08-05 02:52:00-04
W-1892	7225	Z7	contractor	location	[51.47685270033538, -0.11830823822086015]	2026-08-05 02:45:00-04
W-1893	2759	Z7	contractor	location	[51.46021311015734, -0.12912148498467924]	2026-08-05 02:44:00-04
W-1894	2748	Z7	contractor	location	[51.4848684907593, -0.10039733104424618]	2026-08-05 02:48:00-04
W-1895	7289	Z7	staff	gate	[51.49831166292997, -0.16718234277666372]	2026-08-05 02:42:00-04
W-1896	1799	Z7	contractor	location	[51.48900029572143, -0.09868395867398987]	2026-08-05 02:41:00-04
W-1897	3877	Z7	contractor	gate	[51.5502585506143, -0.1330584445306734]	2026-08-05 02:50:00-04
W-1898	5689	Z7	contractor	gate	[51.52743068246455, -0.11530399902076961]	2026-08-05 02:47:00-04
W-1899	3361	Z7	contractor	location	[51.52380424540215, -0.09077232471007853]	2026-08-05 02:49:00-04
W-1900	1752	Z7	contractor	location	[51.5066934921212, -0.15700383164226298]	2026-08-05 02:50:00-04
W-1901	5064	Z7	contractor	gate	[51.557105691985576, -0.1291884047710028]	2026-08-05 02:44:00-04
W-1902	6634	Z7	staff	gate	[51.512650131882054, -0.11303725440381565]	2026-08-05 02:47:00-04
W-1903	7044	Z7	contractor	location	[51.535743388764864, -0.09619665053280087]	2026-08-05 02:50:00-04
W-1904	6361	Z7	contractor	location	[51.486484339023185, -0.10254441132881358]	2026-08-05 02:40:00-04
W-1905	1438	Z7	contractor	gate	[51.54512154964629, -0.1374456811079929]	2026-08-05 02:42:00-04
W-1906	1667	Z7	contractor	location	[51.47079633589228, -0.16792798148309226]	2026-08-05 02:51:00-04
W-1907	570	Z7	contractor	location	[51.52152381247481, -0.08583514825436175]	2026-08-05 02:49:00-04
W-1908	4974	Z7	staff	location	[51.47538708563235, -0.1482204095799718]	2026-08-05 02:40:00-04
W-1909	6062	Z7	contractor	gate	[51.532801316662464, -0.13809789001268613]	2026-08-05 02:42:00-04
W-1910	3896	Z7	contractor	location	[51.47817231109456, -0.15016417430508364]	2026-08-05 02:46:00-04
W-1911	252	Z7	contractor	location	[51.46042165413234, -0.15571857678821838]	2026-08-05 02:40:00-04
W-1912	5334	Z7	staff	location	[51.49549298290547, -0.16590473520722565]	2026-08-05 02:39:00-04
W-1913	1451	Z7	contractor	gate	[51.49048628187823, -0.09008572318175326]	2026-08-05 02:48:00-04
W-1914	1896	Z7	contractor	gate	[51.464598252581006, -0.0792522372805901]	2026-08-05 02:40:00-04
W-1915	3479	Z7	contractor	gate	[51.49723060809537, -0.11672600719590133]	2026-08-05 02:43:00-04
W-1916	3595	Z7	contractor	location	[51.50490202123076, -0.11009944781850761]	2026-08-05 02:50:00-04
W-1917	9939	Z7	contractor	gate	[51.492504435118974, -0.0894358133765451]	2026-08-05 02:43:00-04
W-1918	8511	Z7	contractor	location	[51.50572804190814, -0.14905487223104147]	2026-08-05 02:50:00-04
W-1919	9584	Z7	contractor	gate	[51.46089530952449, -0.1395558708078099]	2026-08-05 02:50:00-04
W-1920	5039	Z7	contractor	gate	[51.485153660859794, -0.15667744558466695]	2026-08-05 02:50:00-04
W-1921	8865	Z7	contractor	gate	[51.509811940210604, -0.13771429089568116]	2026-08-05 02:41:00-04
W-1922	6540	Z7	contractor	location	[51.531770309982655, -0.08578531511288855]	2026-08-05 02:39:00-04
W-1923	147	Z7	contractor	gate	[51.4953385935622, -0.10094871895485544]	2026-08-05 02:46:00-04
W-1924	4468	Z7	contractor	location	[51.52635428973328, -0.1467338014368902]	2026-08-05 02:44:00-04
W-1925	5134	Z7	contractor	location	[51.50149011519032, -0.09409805453992498]	2026-08-05 02:43:00-04
W-1926	4516	Z7	contractor	gate	[51.54773615230331, -0.1081301161538814]	2026-08-05 02:43:00-04
W-1927	8630	Z7	contractor	gate	[51.556433937412635, -0.1276704569268629]	2026-08-05 02:44:00-04
W-1928	4943	Z7	contractor	location	[51.52440189051526, -0.0845526406545397]	2026-08-05 02:51:00-04
W-1929	428	Z7	contractor	location	[51.55498592789869, -0.07997983591786482]	2026-08-05 02:53:00-04
W-1930	791	Z7	staff	location	[51.52519201154391, -0.12303702857041489]	2026-08-05 02:41:00-04
W-1931	6677	Z7	contractor	location	[51.51967928801153, -0.09454272325565087]	2026-08-05 02:44:00-04
W-1932	1398	Z7	contractor	gate	[51.54572605586709, -0.1204310855057857]	2026-08-05 02:50:00-04
W-1933	2295	Z7	contractor	gate	[51.53640627032709, -0.08206692578262087]	2026-08-05 02:48:00-04
W-1934	3456	Z7	contractor	gate	[51.51703000599016, -0.14417518916672764]	2026-08-05 02:40:00-04
W-1935	7330	Z7	contractor	location	[51.50146651109352, -0.07937989583602381]	2026-08-05 02:47:00-04
W-1936	7340	Z7	contractor	location	[51.497188838072795, -0.1759671872360641]	2026-08-05 02:45:00-04
W-1937	871	Z7	contractor	location	[51.51559613216113, -0.12385645572883144]	2026-08-05 02:47:00-04
W-1938	3367	Z7	staff	location	[51.48797374712813, -0.12280929720843825]	2026-08-05 02:44:00-04
W-1939	8114	Z7	contractor	location	[51.55102507618054, -0.08607052993394361]	2026-08-05 02:47:00-04
W-1940	9472	Z7	contractor	location	[51.46498485394924, -0.14317491906045224]	2026-08-05 02:45:00-04
W-1941	447	Z7	contractor	gate	[51.47945165220425, -0.102496472515567]	2026-08-05 02:47:00-04
W-1942	3176	Z7	staff	gate	[51.47075472520643, -0.14350523990339925]	2026-08-05 02:45:00-04
W-1943	4994	Z7	contractor	gate	[51.53029170011539, -0.12843639034036908]	2026-08-05 02:40:00-04
W-1944	7334	Z7	staff	location	[51.51760358443644, -0.1271196281868296]	2026-08-05 02:48:00-04
W-1945	7891	Z7	contractor	location	[51.533608406532835, -0.09902219128492684]	2026-08-05 02:52:00-04
W-1946	9928	Z8	contractor	location	[51.459205136532866, -0.09407109824501879]	2026-08-05 02:49:00-04
W-1947	9360	Z8	staff	location	[51.46512501620966, -0.14177921433857554]	2026-08-05 02:43:00-04
W-1948	6268	Z8	staff	location	[51.46443735299184, -0.15322884919919494]	2026-08-05 02:42:00-04
W-1949	2319	Z8	contractor	gate	[51.50332129628902, -0.16211493040079822]	2026-08-05 02:49:00-04
W-1950	1383	Z8	contractor	gate	[51.50750454469721, -0.16570069238558466]	2026-08-05 02:51:00-04
W-1951	2681	Z8	contractor	location	[51.516782200343116, -0.15937274908681515]	2026-08-05 02:42:00-04
W-1952	8689	Z8	staff	location	[51.52554071069174, -0.07832669530093549]	2026-08-05 02:46:00-04
W-1953	7921	Z8	contractor	location	[51.486042935808406, -0.08825830542382555]	2026-08-05 02:47:00-04
W-1954	7452	Z8	contractor	location	[51.48980653779915, -0.13029924632959672]	2026-08-05 02:40:00-04
W-1955	1201	Z8	contractor	gate	[51.46599172995369, -0.14112490073514017]	2026-08-05 02:39:00-04
W-1956	4469	Z8	contractor	location	[51.52044524952319, -0.1556937957547504]	2026-08-05 02:43:00-04
W-1957	7978	Z8	contractor	location	[51.537369590391904, -0.1232566072691029]	2026-08-05 02:51:00-04
W-1958	3999	Z8	contractor	location	[51.528680201639354, -0.10917790439907278]	2026-08-05 02:50:00-04
W-1959	2368	Z8	staff	location	[51.472297378324896, -0.09598783296349526]	2026-08-05 02:45:00-04
W-1960	5926	Z8	contractor	gate	[51.50440893131686, -0.17018000124578844]	2026-08-05 02:49:00-04
W-1961	3169	Z8	contractor	location	[51.53960249769851, -0.1251127200403761]	2026-08-05 02:42:00-04
W-1962	7875	Z8	contractor	location	[51.49376874736938, -0.08925981242703067]	2026-08-05 02:39:00-04
W-1963	8175	Z8	contractor	gate	[51.53894273516399, -0.17282565527966476]	2026-08-05 02:42:00-04
W-1964	9305	Z8	contractor	location	[51.48367452193289, -0.08455706770302178]	2026-08-05 02:41:00-04
W-1965	6694	Z8	contractor	location	[51.48246593205211, -0.14350335530428637]	2026-08-05 02:45:00-04
W-1966	3746	Z8	contractor	gate	[51.51398605021991, -0.14490282766815793]	2026-08-05 02:44:00-04
W-1967	8880	Z8	staff	location	[51.507564886305616, -0.08252179414374705]	2026-08-05 02:47:00-04
W-1968	3533	Z8	contractor	location	[51.48132225702885, -0.11572882406444941]	2026-08-05 02:47:00-04
W-1969	7155	Z8	contractor	location	[51.52578953117637, -0.1397023123153554]	2026-08-05 02:40:00-04
W-1970	3205	Z8	contractor	location	[51.46089272947212, -0.12697872381231817]	2026-08-05 02:46:00-04
W-1971	9327	Z8	staff	gate	[51.542438322054586, -0.17621710507209198]	2026-08-05 02:42:00-04
W-1972	6884	Z8	contractor	gate	[51.50563650882497, -0.1351007488860812]	2026-08-05 02:44:00-04
W-1973	1130	Z8	contractor	gate	[51.549039948247994, -0.1511418847369932]	2026-08-05 02:52:00-04
W-1974	4978	Z8	staff	location	[51.465050824078766, -0.12088453703832852]	2026-08-05 02:51:00-04
W-1975	1383	Z8	contractor	location	[51.47499727862372, -0.08055161620739619]	2026-08-05 02:41:00-04
W-1976	9464	Z8	contractor	gate	[51.505001987430354, -0.0821549300821574]	2026-08-05 02:42:00-04
W-1977	9504	Z8	contractor	location	[51.527228662438084, -0.10058975907715298]	2026-08-05 02:42:00-04
W-1978	6215	Z8	contractor	location	[51.45939945527847, -0.12762785457344403]	2026-08-05 02:45:00-04
W-1979	5591	Z8	contractor	location	[51.491190016643515, -0.12364878629231345]	2026-08-05 02:39:00-04
W-1980	9722	Z8	contractor	location	[51.51739022880836, -0.07881803819527161]	2026-08-05 02:47:00-04
W-1981	8350	Z8	contractor	location	[51.54490633517449, -0.1065296925028439]	2026-08-05 02:52:00-04
W-1982	3659	Z8	contractor	location	[51.492851918229704, -0.16661704561076]	2026-08-05 02:49:00-04
W-1983	5778	Z8	contractor	location	[51.539086302867815, -0.13274863625832684]	2026-08-05 02:41:00-04
W-1984	1947	Z8	staff	gate	[51.51529951809442, -0.10640977607775652]	2026-08-05 02:39:00-04
W-1985	4456	Z8	staff	gate	[51.466484707440834, -0.15861864419417687]	2026-08-05 02:46:00-04
W-1986	7938	Z8	contractor	location	[51.4679864690598, -0.13704406177013412]	2026-08-05 02:53:00-04
W-1987	4043	Z8	staff	gate	[51.46016227860427, -0.12456301315218449]	2026-08-05 02:47:00-04
W-1988	2640	Z8	contractor	location	[51.45912847916288, -0.11862644234270059]	2026-08-05 02:49:00-04
W-1989	249	Z8	contractor	location	[51.467109394758495, -0.0919402173397676]	2026-08-05 02:40:00-04
W-1990	1636	Z8	contractor	location	[51.53553932060215, -0.09618910626465309]	2026-08-05 02:46:00-04
W-1991	3380	Z8	contractor	location	[51.52406371235495, -0.14561285745178223]	2026-08-05 02:52:00-04
W-1992	9462	Z8	contractor	gate	[51.50674872708711, -0.0781737350916218]	2026-08-05 02:41:00-04
W-1993	4614	Z8	staff	gate	[51.45995817566164, -0.10354429386436681]	2026-08-05 02:50:00-04
W-1994	490	Z8	contractor	location	[51.47897254234439, -0.17203479087797793]	2026-08-05 02:53:00-04
W-1995	9897	Z8	contractor	location	[51.47373804131128, -0.08015800228293281]	2026-08-05 02:39:00-04
W-1996	5430	Z8	contractor	gate	[51.52741223348064, -0.09256055468807964]	2026-08-05 02:40:00-04
W-1997	6033	Z8	staff	gate	[51.54990504460511, -0.11995348494783742]	2026-08-05 02:47:00-04
W-1998	8609	Z8	staff	location	[51.52868334216638, -0.11472285147460899]	2026-08-05 02:49:00-04
W-1999	4307	Z8	contractor	gate	[51.45755947864726, -0.12390058377511665]	2026-08-05 02:47:00-04
W-2000	1577	Z8	staff	location	[51.49708362601021, -0.10681793372204534]	2026-08-05 02:42:00-04
W-2001	3873	Z8	contractor	gate	[51.537501673542344, -0.1013987865396083]	2026-08-05 02:48:00-04
W-2002	2592	Z8	contractor	gate	[51.49158971233287, -0.11355341832678556]	2026-08-05 02:50:00-04
W-2003	8981	Z8	staff	location	[51.537148157898145, -0.1448665876029492]	2026-08-05 02:47:00-04
W-2004	7115	Z8	contractor	location	[51.526772850660144, -0.1636832302453795]	2026-08-05 02:44:00-04
W-2005	8833	Z8	contractor	location	[51.4833743326644, -0.09285827739800594]	2026-08-05 02:48:00-04
W-2006	255	Z8	contractor	location	[51.53802260608713, -0.12119889023662428]	2026-08-05 02:39:00-04
W-2007	5298	Z8	contractor	location	[51.51042147073921, -0.12826196893147063]	2026-08-05 02:46:00-04
W-2008	6123	Z8	contractor	location	[51.49986750026778, -0.1349707592575663]	2026-08-05 02:48:00-04
W-2009	7750	Z8	contractor	location	[51.476705086081274, -0.17235071219310755]	2026-08-05 02:46:00-04
W-2010	4590	Z8	contractor	gate	[51.46451596709829, -0.12550989370945217]	2026-08-05 02:46:00-04
W-2011	4478	Z8	contractor	location	[51.46799637526362, -0.1726845533322751]	2026-08-05 02:47:00-04
W-2012	7183	Z8	contractor	location	[51.55392220446692, -0.13268253585238937]	2026-08-05 02:42:00-04
W-2013	6577	Z8	contractor	location	[51.552489473172955, -0.10913919035810882]	2026-08-05 02:40:00-04
W-2014	405	Z8	contractor	gate	[51.532540146932305, -0.10425011703419848]	2026-08-05 02:51:00-04
W-2015	3212	Z8	contractor	gate	[51.46647451019634, -0.1737262359763969]	2026-08-05 02:44:00-04
W-2016	2537	Z8	contractor	location	[51.46555576242841, -0.16932744466621505]	2026-08-05 02:44:00-04
W-2017	3606	Z8	contractor	gate	[51.49710635558906, -0.1093983288472286]	2026-08-05 02:48:00-04
W-2018	5112	Z8	contractor	location	[51.55061345620212, -0.15358912895972293]	2026-08-05 02:44:00-04
W-2019	2096	Z8	contractor	gate	[51.490338814784714, -0.10836848762520152]	2026-08-05 02:49:00-04
W-2020	7628	Z8	staff	gate	[51.48171918461609, -0.11666597957806477]	2026-08-05 02:44:00-04
W-2021	2484	Z8	contractor	gate	[51.47843124786284, -0.12902107652098632]	2026-08-05 02:52:00-04
W-2022	1203	Z8	contractor	location	[51.48479793806861, -0.1239107654208635]	2026-08-05 02:40:00-04
W-2023	7900	Z8	contractor	location	[51.477127989812004, -0.1369015172231692]	2026-08-05 02:45:00-04
W-2024	6793	Z8	contractor	location	[51.49907786836059, -0.11432896902918738]	2026-08-05 02:47:00-04
W-2025	6854	Z8	staff	location	[51.522268695975306, -0.1460947193773358]	2026-08-05 02:42:00-04
W-2026	6746	Z8	contractor	location	[51.54336628871973, -0.14892838055718843]	2026-08-05 02:39:00-04
W-2027	4189	Z8	contractor	gate	[51.48924396452117, -0.10167596607692943]	2026-08-05 02:51:00-04
W-2028	5772	Z8	contractor	location	[51.508463662820525, -0.12243020324043563]	2026-08-05 02:40:00-04
W-2029	9470	Z8	contractor	gate	[51.498574818741346, -0.12663559720705272]	2026-08-05 02:42:00-04
W-2030	350	Z8	contractor	location	[51.507461122769406, -0.10958963843083355]	2026-08-05 02:47:00-04
W-2031	6814	Z8	contractor	location	[51.54917600381963, -0.14579878060802692]	2026-08-05 02:42:00-04
W-2032	4201	Z8	contractor	location	[51.532241719614696, -0.0832247729675365]	2026-08-05 02:50:00-04
W-2033	4211	Z8	contractor	location	[51.49566132548963, -0.10223523242925484]	2026-08-05 02:47:00-04
W-2034	3998	Z8	contractor	gate	[51.46349687607366, -0.08157166755433591]	2026-08-05 02:45:00-04
W-2035	9278	Z8	staff	location	[51.536971185259524, -0.11116692067580641]	2026-08-05 02:39:00-04
W-2036	9046	Z8	contractor	gate	[51.45822541149785, -0.07841670720055324]	2026-08-05 02:43:00-04
W-2037	6481	Z8	contractor	gate	[51.54890415910875, -0.15707763603068475]	2026-08-05 02:51:00-04
W-2038	6049	Z8	staff	gate	[51.501086045045966, -0.08490631614349912]	2026-08-05 02:51:00-04
W-2039	1653	Z8	staff	location	[51.55559210710666, -0.1222441810847544]	2026-08-05 02:49:00-04
W-2040	4967	Z8	contractor	gate	[51.47324812858972, -0.13426202811117427]	2026-08-05 02:47:00-04
W-2041	5344	Z8	contractor	location	[51.47714838060868, -0.10256895947962032]	2026-08-05 02:42:00-04
W-2042	4476	Z8	contractor	gate	[51.461829518724, -0.0880621824096818]	2026-08-05 02:49:00-04
W-2043	3753	Z8	contractor	location	[51.50291870811691, -0.15204062367714596]	2026-08-05 02:45:00-04
W-2044	1883	Z8	contractor	location	[51.50162511299637, -0.09532086372448438]	2026-08-05 02:48:00-04
W-2045	9981	Z8	contractor	location	[51.47589810651964, -0.09845377901564965]	2026-08-05 02:48:00-04
W-2046	7179	Z8	staff	location	[51.48727429579462, -0.14993683746093078]	2026-08-05 02:53:00-04
W-2047	8931	Z8	staff	location	[51.51150146721624, -0.16089886841785017]	2026-08-05 02:41:00-04
W-2048	384	Z8	staff	location	[51.501695087847025, -0.11182933526852125]	2026-08-05 02:50:00-04
W-2049	9505	Z8	contractor	gate	[51.55061932021848, -0.09625310573194595]	2026-08-05 02:50:00-04
W-2050	3089	Z8	contractor	location	[51.47558014258141, -0.11830482606287383]	2026-08-05 02:46:00-04
W-2051	2632	Z8	staff	location	[51.496164217247205, -0.15678525426161358]	2026-08-05 02:40:00-04
W-2052	7374	Z8	contractor	location	[51.47563337917859, -0.13110630550076524]	2026-08-05 02:47:00-04
W-2053	2707	Z8	contractor	location	[51.4962286505673, -0.16686670011628202]	2026-08-05 02:39:00-04
W-2054	2155	Z8	contractor	location	[51.517138463757014, -0.16716616017272573]	2026-08-05 02:47:00-04
W-2055	592	Z8	contractor	gate	[51.52971905078455, -0.12958402253333445]	2026-08-05 02:40:00-04
W-2056	9034	Z8	contractor	location	[51.481710877110444, -0.16342780536716614]	2026-08-05 02:44:00-04
W-2057	5318	Z8	contractor	location	[51.55063086632627, -0.17051379984313209]	2026-08-05 02:49:00-04
W-2058	9668	Z8	contractor	location	[51.531502844800364, -0.1698677443455049]	2026-08-05 02:50:00-04
W-2059	3846	Z8	contractor	location	[51.55730925007693, -0.11877213420364063]	2026-08-05 02:45:00-04
W-2060	8481	Z8	contractor	gate	[51.48352783512026, -0.08199420659002397]	2026-08-05 02:53:00-04
W-2061	5639	Z8	staff	location	[51.49676475266727, -0.12467827635737769]	2026-08-05 02:52:00-04
W-2062	6282	Z8	staff	location	[51.528023019609265, -0.09727090633743657]	2026-08-05 02:49:00-04
W-2063	7429	Z8	contractor	location	[51.491614316052406, -0.16836481040308085]	2026-08-05 02:46:00-04
W-2064	3651	Z8	contractor	gate	[51.47191842681281, -0.14696137644940543]	2026-08-05 02:41:00-04
W-2065	5387	Z8	contractor	location	[51.51286724905477, -0.13960164863409358]	2026-08-05 02:48:00-04
W-2066	1142	Z9	contractor	gate	[51.54357678668264, -0.11304970043353099]	2026-08-05 02:41:00-04
W-2067	2893	Z9	contractor	location	[51.52177531118737, -0.13768183531634298]	2026-08-05 02:46:00-04
W-2068	6364	Z9	contractor	gate	[51.55180904571334, -0.17136587618900548]	2026-08-05 02:41:00-04
W-2069	6806	Z9	staff	location	[51.53624769298836, -0.15168795701411233]	2026-08-05 02:39:00-04
W-2070	621	Z9	contractor	gate	[51.4946722374162, -0.15260406896334625]	2026-08-05 02:47:00-04
W-2071	1077	Z9	staff	location	[51.50471527699246, -0.1735577134354631]	2026-08-05 02:50:00-04
W-2072	2989	Z9	staff	gate	[51.489806448907444, -0.12417335211102756]	2026-08-05 02:41:00-04
W-2073	3749	Z9	contractor	gate	[51.46265002484225, -0.10029600768737766]	2026-08-05 02:49:00-04
W-2074	537	Z9	contractor	location	[51.524157639027536, -0.15600659195499444]	2026-08-05 02:45:00-04
W-2075	4017	Z9	contractor	gate	[51.49837149037337, -0.08654934716871203]	2026-08-05 02:45:00-04
W-2076	4760	Z9	staff	location	[51.53635133100667, -0.13689860245671914]	2026-08-05 02:48:00-04
W-2077	3271	Z9	contractor	gate	[51.55453514437492, -0.11761753107760935]	2026-08-05 02:39:00-04
W-2078	9273	Z9	staff	location	[51.527034226869745, -0.13557379281860316]	2026-08-05 02:40:00-04
W-2079	4804	Z9	contractor	location	[51.495653119840796, -0.08043684541343919]	2026-08-05 02:53:00-04
W-2080	2160	Z9	contractor	location	[51.478736803917315, -0.08787237120004879]	2026-08-05 02:47:00-04
W-2081	4105	Z9	contractor	gate	[51.47052750869441, -0.11517684175695671]	2026-08-05 02:40:00-04
W-2082	2330	Z9	contractor	location	[51.51092014294361, -0.10468816917431407]	2026-08-05 02:53:00-04
W-2083	9986	Z9	contractor	location	[51.54615950929876, -0.11871755975415745]	2026-08-05 02:50:00-04
W-2084	7196	Z9	contractor	location	[51.52043678437411, -0.15094611018564189]	2026-08-05 02:49:00-04
W-2085	7244	Z9	staff	gate	[51.48556985480126, -0.11466465109499127]	2026-08-05 02:47:00-04
W-2086	3658	Z9	contractor	location	[51.462047208965274, -0.131111045486238]	2026-08-05 02:48:00-04
W-2087	4887	Z9	contractor	location	[51.52986085322382, -0.11277253577005787]	2026-08-05 02:45:00-04
W-2088	1987	Z9	staff	location	[51.521488281201314, -0.15636003615847338]	2026-08-05 02:41:00-04
W-2089	5073	Z9	contractor	location	[51.49383736511139, -0.1410871114611964]	2026-08-05 02:40:00-04
W-2090	4288	Z9	contractor	gate	[51.513897433393154, -0.09799075472207597]	2026-08-05 02:39:00-04
W-2091	3308	Z9	contractor	location	[51.477104649625275, -0.1487735382745644]	2026-08-05 02:42:00-04
W-2092	7801	Z9	contractor	location	[51.50154723229874, -0.12374102008501298]	2026-08-05 02:53:00-04
W-2093	9117	Z9	contractor	location	[51.54036804073833, -0.11267994493696476]	2026-08-05 02:53:00-04
W-2094	2371	Z9	contractor	location	[51.545056458585236, -0.11538462500062001]	2026-08-05 02:48:00-04
W-2095	6054	Z9	contractor	gate	[51.501803107537555, -0.09312761353695286]	2026-08-05 02:51:00-04
W-2096	9333	Z9	contractor	location	[51.49395696032968, -0.10148478556480167]	2026-08-05 02:40:00-04
W-2097	4962	Z9	contractor	gate	[51.46024215885329, -0.1125282315121548]	2026-08-05 02:45:00-04
W-2098	3954	Z9	staff	gate	[51.47032886463437, -0.15267539040148387]	2026-08-05 02:53:00-04
W-2099	1043	Z9	contractor	gate	[51.494014290982605, -0.16541401509651807]	2026-08-05 02:51:00-04
W-2100	7739	Z9	staff	gate	[51.496240975702065, -0.1319125210944334]	2026-08-05 02:47:00-04
W-2101	5941	Z9	contractor	location	[51.50933377752815, -0.15931590809165114]	2026-08-05 02:49:00-04
W-2102	2526	Z9	contractor	location	[51.54267544343754, -0.14608716700639277]	2026-08-05 02:39:00-04
W-2103	8339	Z9	staff	gate	[51.48854400072115, -0.08938357887820415]	2026-08-05 02:41:00-04
W-2104	6879	Z9	contractor	gate	[51.53909819750867, -0.14745033964824497]	2026-08-05 02:39:00-04
W-2105	8087	Z9	contractor	location	[51.53901656603094, -0.08782483009096669]	2026-08-05 02:39:00-04
W-2106	5703	Z9	contractor	location	[51.50655905683033, -0.14832057975500476]	2026-08-05 02:42:00-04
W-2107	5648	Z9	contractor	location	[51.516110018459656, -0.14324985409074498]	2026-08-05 02:44:00-04
W-2108	2564	Z9	contractor	location	[51.548104386971374, -0.14749550626262076]	2026-08-05 02:44:00-04
W-2109	3560	Z9	contractor	gate	[51.506260126469115, -0.16236944678828574]	2026-08-05 02:49:00-04
W-2110	3860	Z9	contractor	gate	[51.538119366293344, -0.11481732763705783]	2026-08-05 02:44:00-04
W-2111	3781	Z9	contractor	location	[51.518741419408535, -0.14396498934832783]	2026-08-05 02:48:00-04
W-2112	8640	Z9	contractor	gate	[51.52927925617999, -0.12218639262251779]	2026-08-05 02:39:00-04
W-2113	5957	Z9	staff	location	[51.513612115412556, -0.15448486799565614]	2026-08-05 02:48:00-04
W-2114	6933	Z9	staff	location	[51.534679027981824, -0.162882871514811]	2026-08-05 02:43:00-04
W-2115	3590	Z9	contractor	gate	[51.51907181469554, -0.12617113994475046]	2026-08-05 02:45:00-04
W-2116	5962	Z9	staff	location	[51.5411682165675, -0.14791732233643748]	2026-08-05 02:49:00-04
W-2117	766	Z9	staff	gate	[51.48680895010265, -0.12940307608572937]	2026-08-05 02:49:00-04
W-2118	4885	Z9	staff	location	[51.554908282373084, -0.16457860832952448]	2026-08-05 02:48:00-04
W-2119	9373	Z9	contractor	location	[51.46191199233145, -0.1685884697379933]	2026-08-05 02:39:00-04
W-2120	9926	Z9	contractor	location	[51.50797070736635, -0.08541877478718891]	2026-08-05 02:48:00-04
W-2121	359	Z9	contractor	location	[51.47005370694043, -0.14840829918285994]	2026-08-05 02:44:00-04
W-2122	9873	Z9	contractor	location	[51.52112605259428, -0.10566923436609302]	2026-08-05 02:45:00-04
W-2123	4780	Z9	contractor	location	[51.49917502600283, -0.17521766654402499]	2026-08-05 02:50:00-04
W-2124	3846	Z9	staff	location	[51.53380807124532, -0.16809051564525948]	2026-08-05 02:50:00-04
W-2125	5130	Z9	contractor	location	[51.48555444200615, -0.1254069451342523]	2026-08-05 02:43:00-04
W-2126	5736	Z9	contractor	gate	[51.55566672206707, -0.0901965188142536]	2026-08-05 02:48:00-04
W-2127	4699	Z9	contractor	location	[51.485813755161985, -0.16411924987286286]	2026-08-05 02:52:00-04
W-2128	980	Z9	staff	gate	[51.45756816148536, -0.14402729647738702]	2026-08-05 02:46:00-04
W-2129	5804	Z9	staff	gate	[51.504152515294685, -0.1136213843599654]	2026-08-05 02:46:00-04
W-2130	9453	Z9	contractor	location	[51.53225422423769, -0.08614897401734765]	2026-08-05 02:46:00-04
W-2131	4379	Z9	contractor	gate	[51.467458499165446, -0.12041994576044085]	2026-08-05 02:39:00-04
W-2132	6430	Z9	contractor	location	[51.53921277663837, -0.086832434466322]	2026-08-05 02:53:00-04
W-2133	2076	Z9	staff	gate	[51.55539901808982, -0.1258507679684266]	2026-08-05 02:42:00-04
W-2134	6896	Z9	contractor	gate	[51.47983625820044, -0.10995707939963872]	2026-08-05 02:41:00-04
W-2135	2924	Z9	contractor	location	[51.50860599969753, -0.08834047423079276]	2026-08-05 02:48:00-04
W-2136	4284	Z9	contractor	location	[51.4821194535508, -0.17189419002816067]	2026-08-05 02:47:00-04
W-2137	9405	Z9	contractor	gate	[51.53037596807053, -0.15743306569256157]	2026-08-05 02:51:00-04
W-2138	160	Z9	contractor	location	[51.4782446695578, -0.12989124539703006]	2026-08-05 02:39:00-04
W-2139	515	Z9	contractor	gate	[51.467030879715644, -0.149203050410947]	2026-08-05 02:39:00-04
W-2140	9930	Z9	staff	gate	[51.50201257919575, -0.07870487944032666]	2026-08-05 02:46:00-04
W-2141	6660	Z9	contractor	gate	[51.50598284111555, -0.173134991578642]	2026-08-05 02:50:00-04
W-2142	2305	Z9	contractor	gate	[51.47665534328381, -0.10617238812699101]	2026-08-05 02:46:00-04
W-2143	2773	Z9	contractor	location	[51.534267557183234, -0.11081001413882398]	2026-08-05 02:43:00-04
W-2144	9617	Z9	contractor	location	[51.547454253917444, -0.15824754883582257]	2026-08-05 02:52:00-04
W-2145	8054	Z9	contractor	location	[51.48882235400902, -0.09748361732230723]	2026-08-05 02:43:00-04
W-2146	7586	Z9	staff	location	[51.555211962138415, -0.09418453023257294]	2026-08-05 02:39:00-04
W-2147	1255	Z9	contractor	location	[51.541737383953866, -0.08146346988111758]	2026-08-05 02:51:00-04
W-2148	2362	Z9	staff	gate	[51.491366601147504, -0.1570336161731026]	2026-08-05 02:53:00-04
W-2149	3114	Z9	contractor	location	[51.465344256835216, -0.15427450947708718]	2026-08-05 02:40:00-04
W-2150	2291	Z9	contractor	location	[51.468170351387904, -0.1209310899724404]	2026-08-05 02:46:00-04
W-2151	585	Z9	contractor	location	[51.46477520887955, -0.1713185852366482]	2026-08-05 02:53:00-04
W-2152	8883	Z9	contractor	location	[51.47944280526963, -0.11785567565432833]	2026-08-05 02:44:00-04
W-2153	7444	Z9	staff	location	[51.535076111611716, -0.12918797016971179]	2026-08-05 02:39:00-04
W-2154	3120	Z9	staff	location	[51.46519477206515, -0.12833833382368898]	2026-08-05 02:51:00-04
W-2155	9190	Z9	contractor	location	[51.47457179954861, -0.17091358553006133]	2026-08-05 02:50:00-04
W-2156	4763	Z9	staff	gate	[51.458830425911465, -0.1287329912134454]	2026-08-05 02:45:00-04
W-2157	274	Z9	contractor	location	[51.521334510887236, -0.10943602081128809]	2026-08-05 02:46:00-04
W-2158	1136	Z9	contractor	location	[51.476478370889346, -0.09779155228589342]	2026-08-05 02:42:00-04
W-2159	685	Z9	contractor	location	[51.524489612142624, -0.12771158241271396]	2026-08-05 02:50:00-04
W-2160	6620	Z9	contractor	location	[51.48501795459839, -0.12542388832456575]	2026-08-05 02:44:00-04
W-2161	6400	Z9	staff	location	[51.512421374371826, -0.12225448395089494]	2026-08-05 02:52:00-04
W-2162	2106	Z9	contractor	location	[51.49136318323012, -0.12240787011985405]	2026-08-05 02:43:00-04
W-2163	4458	Z9	contractor	gate	[51.484260489832884, -0.16585980572730535]	2026-08-05 02:43:00-04
W-2164	959	Z9	staff	location	[51.545924106838086, -0.15707423665428769]	2026-08-05 02:51:00-04
W-2165	9938	Z9	contractor	gate	[51.51813925495278, -0.095221459134546]	2026-08-05 02:48:00-04
W-2166	7520	Z9	contractor	gate	[51.51170020238985, -0.1440660175614725]	2026-08-05 02:49:00-04
W-2167	9122	Z9	contractor	location	[51.51084741638206, -0.17006466784012786]	2026-08-05 02:46:00-04
W-2168	7616	Z9	contractor	location	[51.510992295083106, -0.1377099458895874]	2026-08-05 02:48:00-04
W-2169	7204	Z9	contractor	location	[51.45972819683755, -0.07996715948809796]	2026-08-05 02:50:00-04
W-2170	3742	Z9	staff	gate	[51.50268536149428, -0.1771814400898951]	2026-08-05 02:42:00-04
W-2171	948	Z9	contractor	location	[51.45823202885252, -0.1529119115791875]	2026-08-05 02:42:00-04
W-2172	1786	Z9	contractor	location	[51.54064127767234, -0.12846481031092896]	2026-08-05 02:42:00-04
W-2173	6057	Z9	contractor	gate	[51.49237147374544, -0.08822416200709694]	2026-08-05 02:52:00-04
W-2174	8176	Z9	contractor	location	[51.4580882350717, -0.10867135994733809]	2026-08-05 02:44:00-04
W-2175	7848	Z9	staff	location	[51.536933987076644, -0.17400191445403712]	2026-08-05 02:46:00-04
W-2176	9606	Z9	contractor	location	[51.55693414217721, -0.07823509581428172]	2026-08-05 02:45:00-04
W-2177	3697	Z9	contractor	location	[51.50586750011099, -0.1777014526422827]	2026-08-05 02:49:00-04
W-2178	4467	Z9	contractor	location	[51.54274452892817, -0.14973231367167866]	2026-08-05 02:42:00-04
W-2179	9546	Z9	contractor	location	[51.498380790076794, -0.14148877973809815]	2026-08-05 02:43:00-04
W-2180	2928	Z9	contractor	location	[51.51234931745392, -0.1694199833694098]	2026-08-05 02:51:00-04
W-2181	388	Z9	contractor	location	[51.50675217885334, -0.11155592786482482]	2026-08-05 02:46:00-04
W-2182	246	Z9	contractor	gate	[51.55512073773988, -0.10829955834572835]	2026-08-05 02:50:00-04
W-2183	4167	Z9	contractor	location	[51.5291908906148, -0.10297395561304913]	2026-08-05 02:39:00-04
W-2184	1684	Z9	staff	location	[51.46205285887298, -0.11623585040386564]	2026-08-05 02:46:00-04
W-2185	5192	Z9	contractor	gate	[51.46324590189745, -0.12513540486316393]	2026-08-05 02:41:00-04
W-2186	7645	Z9	contractor	location	[51.554004026862565, -0.1265900344661809]	2026-08-05 02:41:00-04
W-2187	8456	Z9	contractor	location	[51.52143127246909, -0.13641575251383847]	2026-08-05 02:46:00-04
W-2188	6844	Z9	contractor	location	[51.495723729957696, -0.15408785026375138]	2026-08-05 02:43:00-04
W-2189	9462	Z9	contractor	location	[51.5168475431878, -0.13084553271845176]	2026-08-05 02:44:00-04
W-2190	5137	Z9	contractor	location	[51.52251097973553, -0.0881657215314786]	2026-08-05 02:47:00-04
W-2191	6893	Z9	contractor	location	[51.47610866903659, -0.08101881767562721]	2026-08-05 02:41:00-04
W-2192	896	Z9	staff	location	[51.4913195043476, -0.158842152117384]	2026-08-05 02:44:00-04
W-2193	643	Z9	contractor	gate	[51.48866638897037, -0.17204084454350044]	2026-08-05 02:52:00-04
W-2194	1470	Z9	contractor	location	[51.521118487483754, -0.13441715978387808]	2026-08-05 02:44:00-04
W-2195	5733	Z9	contractor	location	[51.520904128993315, -0.09041144378205705]	2026-08-05 02:43:00-04
W-2196	3369	Z9	contractor	gate	[51.55183811193829, -0.1389857515153334]	2026-08-05 02:49:00-04
W-2197	3161	Z9	staff	location	[51.52284550116899, -0.13329268116769907]	2026-08-05 02:51:00-04
W-2198	3787	Z9	contractor	location	[51.51637681422495, -0.13324752925469274]	2026-08-05 02:39:00-04
W-2199	6465	Z9	contractor	location	[51.52207449080005, -0.16883123760323593]	2026-08-05 02:40:00-04
W-2200	4372	Z9	contractor	gate	[51.5390086499976, -0.1441951560776498]	2026-08-05 02:46:00-04
W-2201	9395	Z9	contractor	location	[51.54878587627541, -0.12923214739672467]	2026-08-05 02:53:00-04
W-2202	9752	Z9	contractor	location	[51.465280307447934, -0.16203234952863416]	2026-08-05 02:47:00-04
W-2203	472	Z9	contractor	gate	[51.50078724512206, -0.14567207127772963]	2026-08-05 02:45:00-04
W-2204	6105	Z9	contractor	location	[51.53104049731884, -0.12016886913916536]	2026-08-05 02:45:00-04
W-2205	2377	Z9	contractor	location	[51.52255702672503, -0.14568207408448602]	2026-08-05 02:49:00-04
W-2206	8909	Z9	contractor	location	[51.53663883313192, -0.12019800406512621]	2026-08-05 02:51:00-04
W-2207	1559	Z9	contractor	location	[51.497854962834005, -0.09397033925116854]	2026-08-05 02:39:00-04
W-2208	1460	Z9	contractor	location	[51.49081703146758, -0.11925101986513666]	2026-08-05 02:51:00-04
W-2209	6048	Z9	contractor	location	[51.467190551518044, -0.09125474586661705]	2026-08-05 02:41:00-04
W-2210	195	Z9	contractor	location	[51.4848753660477, -0.15699975320692128]	2026-08-05 02:45:00-04
W-2211	7914	Z9	staff	gate	[51.54808689473063, -0.13950692609511928]	2026-08-05 02:44:00-04
W-2212	7704	Z9	contractor	location	[51.55182171417389, -0.0811517482557214]	2026-08-05 02:39:00-04
W-2213	1864	Z9	contractor	gate	[51.522624008758974, -0.08842493197818307]	2026-08-05 02:53:00-04
W-2214	7732	Z9	contractor	location	[51.55686659749457, -0.12105829448740343]	2026-08-05 02:47:00-04
W-2215	7474	Z9	contractor	gate	[51.46084911174139, -0.1381341876975717]	2026-08-05 02:42:00-04
W-2216	1124	Z9	contractor	location	[51.54811667841885, -0.15197202927986206]	2026-08-05 02:49:00-04
W-2217	2546	Z9	staff	location	[51.46594007203312, -0.12455063424096784]	2026-08-05 02:47:00-04
W-2218	8267	Z9	staff	location	[51.53123499440777, -0.1522108251590722]	2026-08-05 02:44:00-04
W-2219	7237	Z9	contractor	gate	[51.53445770308088, -0.14523253561992766]	2026-08-05 02:48:00-04
W-2220	2440	Z9	contractor	location	[51.46720674001566, -0.1292313151298593]	2026-08-05 02:44:00-04
W-2221	2766	Z9	contractor	location	[51.50275526787656, -0.10410713965847351]	2026-08-05 02:52:00-04
W-2222	4135	Z9	contractor	location	[51.512357767924264, -0.1420987661261823]	2026-08-05 02:43:00-04
W-2223	8215	Z10	contractor	gate	[51.542916646212156, -0.13585004108253618]	2026-08-05 02:41:00-04
W-2224	3272	Z10	contractor	location	[51.51213277915832, -0.08324264839432625]	2026-08-05 02:42:00-04
W-2225	3050	Z10	contractor	location	[51.48765957138293, -0.07898381362665102]	2026-08-05 02:40:00-04
W-2226	9205	Z10	staff	location	[51.496358722601634, -0.1378556292841916]	2026-08-05 02:44:00-04
W-2227	8758	Z10	contractor	location	[51.52986558547697, -0.15305707258673584]	2026-08-05 02:52:00-04
W-2228	6864	Z10	contractor	location	[51.53716383785025, -0.12613943187940155]	2026-08-05 02:52:00-04
W-2229	7500	Z10	contractor	gate	[51.55560454871698, -0.10560457321320663]	2026-08-05 02:44:00-04
W-2230	5220	Z10	contractor	location	[51.47196649366294, -0.09165362007018733]	2026-08-05 02:50:00-04
W-2231	6151	Z10	staff	location	[51.52415253914109, -0.08852456296359247]	2026-08-05 02:51:00-04
W-2232	2856	Z10	contractor	gate	[51.513692430832755, -0.13023464739920973]	2026-08-05 02:50:00-04
W-2233	5066	Z10	staff	location	[51.48697455362956, -0.14786404251238275]	2026-08-05 02:52:00-04
W-2234	1076	Z10	staff	location	[51.5072341103735, -0.17733455266425865]	2026-08-05 02:40:00-04
W-2235	663	Z10	contractor	location	[51.50005928230345, -0.0869562100748885]	2026-08-05 02:48:00-04
W-2236	7896	Z10	contractor	location	[51.51330021034655, -0.1268325244715634]	2026-08-05 02:52:00-04
W-2237	5126	Z10	contractor	location	[51.542288272353204, -0.1385383418294972]	2026-08-05 02:49:00-04
W-2238	8316	Z10	contractor	location	[51.49115436928496, -0.13003601238492932]	2026-08-05 02:52:00-04
W-2239	7766	Z10	staff	location	[51.533796573646974, -0.097708852559849]	2026-08-05 02:48:00-04
W-2240	7140	Z10	staff	gate	[51.47994913109108, -0.16029738150848655]	2026-08-05 02:40:00-04
W-2241	209	Z10	contractor	location	[51.47629040671167, -0.17134634188514716]	2026-08-05 02:50:00-04
W-2242	5977	Z10	contractor	location	[51.502205185625925, -0.11052927444443714]	2026-08-05 02:51:00-04
W-2243	1393	Z10	contractor	location	[51.48442824040052, -0.11064035121423649]	2026-08-05 02:51:00-04
W-2244	9885	Z10	contractor	location	[51.501299606439396, -0.09813082532688676]	2026-08-05 02:44:00-04
W-2245	2640	Z10	staff	gate	[51.4613177629856, -0.1395510423788728]	2026-08-05 02:40:00-04
W-2246	261	Z10	contractor	gate	[51.49574693799527, -0.1250173952509236]	2026-08-05 02:42:00-04
W-2247	7677	Z10	contractor	location	[51.49601401175589, -0.1272907285218442]	2026-08-05 02:40:00-04
W-2248	7638	Z10	staff	location	[51.51316679608074, -0.10579861054153467]	2026-08-05 02:53:00-04
W-2249	534	Z10	contractor	location	[51.486241381793924, -0.1399939513154298]	2026-08-05 02:39:00-04
W-2250	2516	Z10	contractor	location	[51.51687229695498, -0.11296589907657781]	2026-08-05 02:47:00-04
W-2251	192	Z10	contractor	location	[51.50755582742509, -0.17071114135852858]	2026-08-05 02:39:00-04
W-2252	8517	Z10	contractor	location	[51.489394709955796, -0.09756506067536162]	2026-08-05 02:53:00-04
W-2253	7260	Z10	contractor	location	[51.48691419207237, -0.08398248227926114]	2026-08-05 02:44:00-04
W-2254	7138	Z10	contractor	gate	[51.50498253843239, -0.16111988566772528]	2026-08-05 02:48:00-04
W-2255	1594	Z10	staff	location	[51.47224189471256, -0.15468307416703447]	2026-08-05 02:46:00-04
W-2256	8539	Z10	staff	location	[51.544443657714254, -0.15272055698284026]	2026-08-05 02:50:00-04
W-2257	7102	Z10	staff	location	[51.46361737055366, -0.09674833141881374]	2026-08-05 02:48:00-04
W-2258	4141	Z10	staff	location	[51.48783975845947, -0.10003719250484272]	2026-08-05 02:50:00-04
W-2259	3926	Z10	contractor	location	[51.49463209369989, -0.13657380875530384]	2026-08-05 02:49:00-04
W-2260	4560	Z10	contractor	location	[51.47169060603708, -0.1534165964989518]	2026-08-05 02:48:00-04
W-2261	5893	Z10	contractor	location	[51.54542246356713, -0.17436669094232446]	2026-08-05 02:43:00-04
W-2262	4616	Z10	contractor	location	[51.468330436169474, -0.10249692039339771]	2026-08-05 02:46:00-04
W-2263	3216	Z10	contractor	location	[51.468934082193954, -0.12725740126143126]	2026-08-05 02:53:00-04
W-2264	1663	Z10	contractor	gate	[51.476263668063886, -0.08692812301486783]	2026-08-05 02:50:00-04
W-2265	1956	Z10	contractor	location	[51.45823289752851, -0.13725857420642462]	2026-08-05 02:48:00-04
W-2266	1165	Z10	contractor	gate	[51.4780041139138, -0.1285972545010225]	2026-08-05 02:42:00-04
W-2267	6503	Z10	contractor	gate	[51.536999617777425, -0.09111330913758614]	2026-08-05 02:50:00-04
W-2268	8303	Z10	staff	location	[51.544719526262284, -0.07932800613093308]	2026-08-05 02:39:00-04
W-2269	8038	Z10	staff	gate	[51.47114570586468, -0.11374647818582308]	2026-08-05 02:44:00-04
W-2270	8979	Z10	contractor	location	[51.49757163100887, -0.1380430385801769]	2026-08-05 02:45:00-04
W-2271	1801	Z10	contractor	location	[51.48831994093859, -0.08300423845427922]	2026-08-05 02:47:00-04
W-2272	8892	Z10	contractor	location	[51.54351794777625, -0.11211894416754421]	2026-08-05 02:44:00-04
W-2273	2759	Z10	staff	gate	[51.461850092705326, -0.17680068896668744]	2026-08-05 02:41:00-04
W-2274	9667	Z10	contractor	gate	[51.49144730055392, -0.0802810756677392]	2026-08-05 02:40:00-04
W-2275	1693	Z10	contractor	gate	[51.49134766988483, -0.1697402469157422]	2026-08-05 02:44:00-04
W-2276	814	Z10	contractor	gate	[51.484494775785265, -0.08748530294638578]	2026-08-05 02:52:00-04
W-2277	4131	Z10	staff	location	[51.46213146008428, -0.16854063397492391]	2026-08-05 02:48:00-04
W-2278	6195	Z10	staff	location	[51.47814791580025, -0.10673137292499187]	2026-08-05 02:53:00-04
W-2279	4079	Z10	contractor	location	[51.5381036670266, -0.08332327087344484]	2026-08-05 02:50:00-04
W-2280	2315	Z10	contractor	location	[51.5203717057732, -0.09546398661066309]	2026-08-05 02:50:00-04
W-2281	8298	Z10	staff	location	[51.52283609690515, -0.08281679696727869]	2026-08-05 02:50:00-04
W-2282	4618	Z10	staff	location	[51.48073247023684, -0.163285223181026]	2026-08-05 02:46:00-04
W-2283	530	Z10	staff	gate	[51.550589382252014, -0.1256823314199414]	2026-08-05 02:48:00-04
W-2284	2426	Z10	staff	location	[51.474864897099714, -0.17470193869444306]	2026-08-05 02:45:00-04
W-2285	5283	Z10	contractor	location	[51.479244135704384, -0.17310358207398543]	2026-08-05 02:53:00-04
W-2286	7626	Z10	contractor	gate	[51.5254245378352, -0.17317239206735646]	2026-08-05 02:53:00-04
W-2287	6236	Z10	staff	location	[51.461367216583895, -0.10230368844844821]	2026-08-05 02:50:00-04
W-2288	1229	Z10	contractor	location	[51.48512696847494, -0.15826004118891981]	2026-08-05 02:42:00-04
W-2289	8169	Z10	contractor	location	[51.52816795178375, -0.17208438148263155]	2026-08-05 02:53:00-04
W-2290	4802	Z10	contractor	gate	[51.54428383808257, -0.17313888601530872]	2026-08-05 02:39:00-04
W-2291	5799	Z10	contractor	location	[51.47989097173281, -0.10729858749052436]	2026-08-05 02:44:00-04
W-2292	5324	Z10	contractor	location	[51.47646161799422, -0.10163480342471949]	2026-08-05 02:50:00-04
W-2293	5539	Z10	staff	location	[51.489310711551276, -0.14329219907699242]	2026-08-05 02:50:00-04
W-2294	7462	Z10	contractor	location	[51.482521313813294, -0.08574678912538958]	2026-08-05 02:51:00-04
W-2295	6225	Z10	contractor	gate	[51.527992887777316, -0.11397274574491095]	2026-08-05 02:41:00-04
W-2296	3043	Z10	staff	gate	[51.52383433057077, -0.1032700910098236]	2026-08-05 02:41:00-04
W-2297	5069	Z10	contractor	location	[51.543003861851616, -0.11566018861946714]	2026-08-05 02:40:00-04
W-2298	3002	Z10	staff	location	[51.50753643773584, -0.10034241661487264]	2026-08-05 02:49:00-04
W-2299	4514	Z10	contractor	gate	[51.551106665810146, -0.12025858111694564]	2026-08-05 02:46:00-04
W-2300	7899	Z10	contractor	location	[51.46245819685652, -0.10638148077729442]	2026-08-05 02:52:00-04
W-2301	2542	Z10	contractor	gate	[51.479332379048024, -0.17566582061902886]	2026-08-05 02:53:00-04
W-2302	7649	Z10	contractor	location	[51.52068154066801, -0.12282476168795486]	2026-08-05 02:43:00-04
W-2303	1135	Z10	contractor	location	[51.46451898303849, -0.14307320839354795]	2026-08-05 02:47:00-04
W-2304	6543	Z10	staff	location	[51.516362854363905, -0.09729971125219905]	2026-08-05 02:51:00-04
W-2305	2754	Z10	contractor	location	[51.48847980998673, -0.1369679810407179]	2026-08-05 02:39:00-04
W-2306	3033	Z10	contractor	location	[51.52647708634133, -0.15341214962289662]	2026-08-05 02:51:00-04
W-2307	1173	Z10	contractor	location	[51.52846704732202, -0.14569944786963746]	2026-08-05 02:40:00-04
W-2308	6142	Z10	contractor	location	[51.468590243782664, -0.13271765277054542]	2026-08-05 02:50:00-04
W-2309	6864	Z10	contractor	gate	[51.470925660171254, -0.09719865840645517]	2026-08-05 02:42:00-04
W-2310	9562	Z10	contractor	location	[51.46197936069969, -0.14628461841585955]	2026-08-05 02:51:00-04
W-2311	8083	Z10	staff	location	[51.497680822848196, -0.11560535940322858]	2026-08-05 02:52:00-04
W-2312	1648	Z10	contractor	location	[51.54059643148693, -0.14860022308006474]	2026-08-05 02:48:00-04
W-2313	292	Z10	contractor	location	[51.52318883532457, -0.13073124844554201]	2026-08-05 02:39:00-04
W-2314	480	Z10	contractor	location	[51.48979767305117, -0.16873292128434578]	2026-08-05 02:49:00-04
W-2315	5617	Z10	contractor	location	[51.477266090728094, -0.09499637357393723]	2026-08-05 02:39:00-04
W-2316	2940	Z10	contractor	location	[51.5421487632511, -0.07976311172618898]	2026-08-05 02:51:00-04
W-2317	5964	Z10	staff	gate	[51.48444875336936, -0.1447116568004143]	2026-08-05 02:50:00-04
W-2318	1670	Z10	contractor	gate	[51.5311411822352, -0.07900492999767111]	2026-08-05 02:39:00-04
W-2319	5508	Z10	contractor	location	[51.523217615498424, -0.16858617104297347]	2026-08-05 02:50:00-04
W-2320	3525	Z10	contractor	gate	[51.5190526148215, -0.08080633895841423]	2026-08-05 02:42:00-04
W-2321	2202	Z10	contractor	gate	[51.5107044467428, -0.16719550245339526]	2026-08-05 02:44:00-04
W-2322	1300	Z10	contractor	gate	[51.55678084233497, -0.16032389922631468]	2026-08-05 02:40:00-04
W-2323	797	Z10	staff	location	[51.47765061175392, -0.17463248023105857]	2026-08-05 02:41:00-04
W-2324	9115	Z10	contractor	location	[51.51759914945136, -0.1317182663499788]	2026-08-05 02:52:00-04
W-2325	1822	Z10	contractor	location	[51.46845896947458, -0.08975816726162328]	2026-08-05 02:46:00-04
W-2326	2239	Z10	contractor	gate	[51.53641562052692, -0.16424491741182132]	2026-08-05 02:44:00-04
W-2327	765	Z10	staff	location	[51.529017692444974, -0.16251765605984755]	2026-08-05 02:46:00-04
W-2328	5788	Z10	contractor	gate	[51.53436436330403, -0.13837703579547161]	2026-08-05 02:52:00-04
W-2329	6204	Z10	contractor	location	[51.48333324863022, -0.1187723665560099]	2026-08-05 02:52:00-04
W-2330	4448	Z10	contractor	gate	[51.543769551431524, -0.10768731958341911]	2026-08-05 02:41:00-04
W-2331	6784	Z10	contractor	gate	[51.47356330992557, -0.1600735165872211]	2026-08-05 02:46:00-04
W-2332	4847	Z10	contractor	location	[51.47265150135944, -0.16276506936851767]	2026-08-05 02:45:00-04
W-2333	2847	Z11	staff	location	[51.546594057059394, -0.09924584373101214]	2026-08-05 02:52:00-04
W-2334	8498	Z11	staff	location	[51.54115325552229, -0.17280731605138247]	2026-08-05 02:52:00-04
W-2335	8149	Z11	contractor	location	[51.51793107453904, -0.12529033676777696]	2026-08-05 02:41:00-04
W-2336	2012	Z11	contractor	location	[51.51246228722897, -0.16575246534573773]	2026-08-05 02:47:00-04
W-2337	7278	Z11	staff	location	[51.535391463860485, -0.12216387149961025]	2026-08-05 02:39:00-04
W-2338	2447	Z11	contractor	gate	[51.534673822675465, -0.12555602658672332]	2026-08-05 02:39:00-04
W-2339	9812	Z11	contractor	gate	[51.55216601481084, -0.12364734292136059]	2026-08-05 02:47:00-04
W-2340	3491	Z11	contractor	gate	[51.55164839029229, -0.09133323217184801]	2026-08-05 02:46:00-04
W-2341	7209	Z11	contractor	location	[51.54742914007125, -0.16418724321221434]	2026-08-05 02:43:00-04
W-2342	9155	Z11	contractor	location	[51.5083726653559, -0.09061413968821196]	2026-08-05 02:45:00-04
W-2343	6708	Z11	contractor	gate	[51.470730830533626, -0.08635696476535291]	2026-08-05 02:40:00-04
W-2344	4427	Z11	contractor	location	[51.52335790571059, -0.12456174986040278]	2026-08-05 02:52:00-04
W-2345	8647	Z11	staff	location	[51.50946094603128, -0.1542294869589117]	2026-08-05 02:39:00-04
W-2346	996	Z11	staff	location	[51.457657827045566, -0.16246215123888333]	2026-08-05 02:44:00-04
W-2347	9082	Z11	contractor	location	[51.461990523024596, -0.08911602483842293]	2026-08-05 02:39:00-04
W-2348	6043	Z11	contractor	location	[51.46081331625501, -0.08746618311175024]	2026-08-05 02:53:00-04
W-2349	1474	Z11	contractor	location	[51.50876081065878, -0.11131661185204067]	2026-08-05 02:53:00-04
W-2350	9138	Z11	staff	gate	[51.552181056132504, -0.162878020575408]	2026-08-05 02:50:00-04
W-2351	5277	Z11	contractor	location	[51.48290608090399, -0.14116169413156093]	2026-08-05 02:46:00-04
W-2352	5933	Z11	contractor	location	[51.47842309834112, -0.11924035951702146]	2026-08-05 02:48:00-04
W-2353	5661	Z11	contractor	location	[51.45870890512784, -0.12003815151355175]	2026-08-05 02:45:00-04
W-2354	2235	Z11	contractor	gate	[51.47863473767562, -0.17201161357314865]	2026-08-05 02:49:00-04
W-2355	2969	Z11	staff	location	[51.486724856460576, -0.11584340656754383]	2026-08-05 02:46:00-04
W-2356	4556	Z11	contractor	gate	[51.46975757820805, -0.1385082829599574]	2026-08-05 02:42:00-04
W-2357	7606	Z11	contractor	location	[51.484892279833346, -0.14758051572848788]	2026-08-05 02:53:00-04
W-2358	5755	Z11	contractor	gate	[51.547255787825215, -0.16568589730894628]	2026-08-05 02:43:00-04
W-2359	5733	Z11	contractor	location	[51.5035233857957, -0.12547137294308436]	2026-08-05 02:53:00-04
W-2360	3956	Z11	contractor	location	[51.485528273222045, -0.10868520330312523]	2026-08-05 02:45:00-04
W-2361	256	Z11	contractor	location	[51.458304792158486, -0.17171133168733782]	2026-08-05 02:51:00-04
W-2362	6437	Z11	contractor	location	[51.54918352125004, -0.1404938744525269]	2026-08-05 02:53:00-04
W-2363	2473	Z11	staff	location	[51.54547253442692, -0.1534050233041475]	2026-08-05 02:52:00-04
W-2364	8956	Z11	contractor	location	[51.50533527968541, -0.15426383143213232]	2026-08-05 02:53:00-04
W-2365	2964	Z11	contractor	gate	[51.535583145435375, -0.1442237327177697]	2026-08-05 02:46:00-04
W-2366	2212	Z11	staff	location	[51.47177071597072, -0.08503285710497024]	2026-08-05 02:48:00-04
W-2367	5277	Z11	contractor	gate	[51.53772290200532, -0.12341737628200779]	2026-08-05 02:44:00-04
W-2368	4804	Z11	contractor	location	[51.52923592157988, -0.13593650102125587]	2026-08-05 02:44:00-04
W-2369	3965	Z11	contractor	gate	[51.52258617593682, -0.09646005130226419]	2026-08-05 02:40:00-04
W-2370	5099	Z11	staff	gate	[51.50966493751547, -0.10656606700811205]	2026-08-05 02:45:00-04
W-2371	8944	Z11	contractor	location	[51.47898592436689, -0.13813330922657896]	2026-08-05 02:40:00-04
W-2372	9212	Z11	contractor	gate	[51.50418538545933, -0.10249426618943105]	2026-08-05 02:53:00-04
W-2373	8496	Z11	contractor	gate	[51.51121363571634, -0.10279932247232744]	2026-08-05 02:45:00-04
W-2374	4389	Z11	staff	gate	[51.4698110580657, -0.1637227138841103]	2026-08-05 02:45:00-04
W-2375	9821	Z11	contractor	gate	[51.5056033550066, -0.13507928555381332]	2026-08-05 02:43:00-04
W-2376	1853	Z11	contractor	location	[51.5315465951548, -0.10346218491255224]	2026-08-05 02:48:00-04
W-2377	3641	Z11	contractor	location	[51.5527247618621, -0.09457584101631931]	2026-08-05 02:51:00-04
W-2378	9314	Z11	staff	location	[51.538406566772245, -0.1098719246382575]	2026-08-05 02:47:00-04
W-2379	9895	Z11	contractor	location	[51.491862903835376, -0.09602152869789958]	2026-08-05 02:43:00-04
W-2380	7429	Z11	staff	location	[51.471168085523985, -0.07967423492507276]	2026-08-05 02:43:00-04
W-2381	6936	Z11	contractor	gate	[51.47364934463363, -0.16260821442198603]	2026-08-05 02:43:00-04
W-2382	7663	Z11	contractor	location	[51.47193111425215, -0.10223795534615959]	2026-08-05 02:43:00-04
W-2383	7475	Z11	contractor	gate	[51.55181407185379, -0.09202826687798853]	2026-08-05 02:48:00-04
W-2384	6484	Z11	staff	gate	[51.48343243541161, -0.14142830689343427]	2026-08-05 02:52:00-04
W-2385	271	Z11	staff	location	[51.51178564016719, -0.1586299943930557]	2026-08-05 02:44:00-04
W-2386	6377	Z11	staff	location	[51.52259206603507, -0.15429693440624245]	2026-08-05 02:52:00-04
W-2387	7323	Z11	contractor	gate	[51.551922148516894, -0.12746045129189643]	2026-08-05 02:43:00-04
W-2388	8246	Z11	contractor	gate	[51.53764465099875, -0.12952121062766975]	2026-08-05 02:46:00-04
W-2389	6151	Z11	contractor	location	[51.518876927295864, -0.11170158753184345]	2026-08-05 02:49:00-04
W-2390	8626	Z11	contractor	gate	[51.49320089489126, -0.17042499736777345]	2026-08-05 02:43:00-04
W-2391	3622	Z11	contractor	gate	[51.53381128016678, -0.14010741457528914]	2026-08-05 02:49:00-04
W-2392	4663	Z11	contractor	location	[51.46966130475135, -0.16677934746927098]	2026-08-05 02:50:00-04
W-2393	5783	Z11	staff	location	[51.46866605683637, -0.08685441272710047]	2026-08-05 02:53:00-04
W-2394	4536	Z11	contractor	location	[51.50250474520468, -0.16953365874029905]	2026-08-05 02:46:00-04
W-2395	5466	Z11	contractor	location	[51.54450162434778, -0.08471551287287284]	2026-08-05 02:40:00-04
W-2396	4658	Z11	staff	location	[51.53697834485509, -0.11495794775949987]	2026-08-05 02:48:00-04
W-2397	1280	Z11	contractor	gate	[51.49777995415504, -0.0963790771843927]	2026-08-05 02:53:00-04
W-2398	8066	Z11	contractor	location	[51.538137096294015, -0.11166573163921437]	2026-08-05 02:46:00-04
W-2399	4248	Z11	contractor	gate	[51.536647326590355, -0.09398996285417983]	2026-08-05 02:47:00-04
W-2400	3689	Z11	staff	location	[51.481221883050495, -0.14346709097839883]	2026-08-05 02:43:00-04
W-2401	4440	Z11	contractor	location	[51.4683857077489, -0.15073287080464176]	2026-08-05 02:41:00-04
W-2402	5279	Z11	staff	location	[51.50775299775244, -0.10643124343361898]	2026-08-05 02:41:00-04
W-2403	8495	Z11	contractor	location	[51.5545520433818, -0.11083892489273006]	2026-08-05 02:48:00-04
W-2404	2073	Z11	staff	location	[51.531214562894974, -0.14910936804574412]	2026-08-05 02:46:00-04
W-2405	7688	Z11	staff	location	[51.530965080844695, -0.14977009160970575]	2026-08-05 02:42:00-04
W-2406	3901	Z11	staff	location	[51.52704206680364, -0.12276653549905048]	2026-08-05 02:53:00-04
W-2407	4914	Z11	contractor	location	[51.5357471100597, -0.1763047321207751]	2026-08-05 02:41:00-04
W-2408	5645	Z11	contractor	location	[51.52643582036987, -0.08933184638158215]	2026-08-05 02:42:00-04
W-2409	9131	Z11	contractor	gate	[51.49230348198948, -0.14772893222002603]	2026-08-05 02:51:00-04
W-2410	4262	Z11	contractor	location	[51.52931614143508, -0.13509721052519985]	2026-08-05 02:52:00-04
W-2411	9693	Z11	contractor	gate	[51.524747844459455, -0.10013465332821546]	2026-08-05 02:47:00-04
W-2412	3104	Z11	contractor	gate	[51.49916561535403, -0.10230990091312443]	2026-08-05 02:48:00-04
\.

COPY public.zone (id, name, short_name, hazard_level, zone_type, plan_x, plan_y, plan_w, plan_h, occupancy_capacity, geo_polygon) FROM stdin;
Z1	Unit 1 — Crude Distillation	Unit 1	high	Work Place	100	96	220	170	600	{"type": "Polygon", "coordinates": [[[50.001874, 26.514569], [50.008566, 26.514569], [50.008566, 26.510468], [50.001874, 26.510468], [50.001874, 26.514569]]]}
Z2	Unit 2 — Hydrocracker	Unit 2	high	Work Place	340	96	250	170	500	{"type": "Polygon", "coordinates": [[[50.009101, 26.514569], [50.015793, 26.514569], [50.015793, 26.510468], [50.009101, 26.510468], [50.009101, 26.514569]]]}
Z3	Unit 3 — Coker	Unit 3	high	Work Place	600	96	230	170	450	{"type": "Polygon", "coordinates": [[[50.016328, 26.514569], [50.02302, 26.514569], [50.02302, 26.510468], [50.016328, 26.510468], [50.016328, 26.514569]]]}
Z4	Unit 4 — Sulphur Recovery	Unit 4	medium	Work Place	100	290	200	140	350	{"type": "Polygon", "coordinates": [[[50.023555, 26.514569], [50.030247, 26.514569], [50.030247, 26.510468], [50.023555, 26.510468], [50.023555, 26.514569]]]}
Z5	Unit 5 — Utilities	Unit 5	low	Work Place	320	290	180	140	300	{"type": "Polygon", "coordinates": [[[50.001874, 26.509745], [50.010975, 26.509745], [50.010975, 26.506127], [50.001874, 26.506127], [50.001874, 26.509745]]]}
Z7	Unit 7 — Tankage South	Unit 7	medium	Work Place	740	290	200	140	300	{"type": "Polygon", "coordinates": [[[50.01151, 26.509745], [50.019272, 26.509745], [50.019272, 26.506127], [50.01151, 26.506127], [50.01151, 26.509745]]]}
Z8	Control Room Complex	Control	low	Work Place	100	450	160	100	150	{"type": "Polygon", "coordinates": [[[50.019808, 26.509745], [50.030247, 26.509745], [50.030247, 26.506127], [50.019808, 26.506127], [50.019808, 26.509745]]]}
Z6	Unit 6 — Tankage North	Unit 6	medium	Work Place	520	290	200	140	300	{"type": "Polygon", "coordinates": [[[50.001874, 26.505403], [50.010975, 26.505403], [50.010975, 26.501785], [50.001874, 26.501785], [50.001874, 26.505403]]]}
Z9	Maintenance Workshop	Workshop	low	Work Place	280	450	160	100	200	{"type": "Polygon", "coordinates": [[[50.01151, 26.505403], [50.019272, 26.505403], [50.019272, 26.501785], [50.01151, 26.501785], [50.01151, 26.505403]]]}
Z10	Administration Block	Admin	low	Work Place	460	450	140	100	250	{"type": "Polygon", "coordinates": [[[50.019808, 26.505403], [50.024626, 26.505403], [50.024626, 26.501785], [50.019808, 26.501785], [50.019808, 26.505403]]]}
Z11	Gate House & Security	Gate	low	Work Place	620	450	120	100	100	{"type": "Polygon", "coordinates": [[[50.025161, 26.505403], [50.030247, 26.505403], [50.030247, 26.501785], [50.025161, 26.501785], [50.025161, 26.505403]]]}
\.

