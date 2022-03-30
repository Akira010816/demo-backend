--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: client; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.client VALUES (1, 'テスト企業1', 1, '2021-05-31 19:12:55.437', NULL, '2021-05-31 19:12:55.437', NULL, NULL, NULL, 'test_company_1');
INSERT INTO demo.client VALUES (2, 'テスト企業2', 1, '2021-05-31 19:12:55.437', NULL, '2021-05-31 19:12:55.437', NULL, NULL, NULL, 'test_company_2');
INSERT INTO demo.client VALUES (3, 'テスト企業3', 1, '2021-05-31 19:12:55.437', NULL, '2021-05-31 19:12:55.437', NULL, NULL, NULL, 'test_company_3');
INSERT INTO demo.client VALUES (4, 'テスト企業4', 1, '2021-05-31 19:12:55.437', NULL, '2021-05-31 19:12:55.437', NULL, NULL, NULL, 'test_company_4');
INSERT INTO demo.client VALUES (5, 'テスト企業5', 1, '2021-05-31 19:12:55.437', NULL, '2021-05-31 19:12:55.437', NULL, NULL, NULL, 'test_company_5');
INSERT INTO demo.client VALUES (100, 'テスト企業100', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 'test_company_100');
INSERT INTO demo.client VALUES (101, 'テスト企業101', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 'test_company_101');
INSERT INTO demo.client VALUES (102, 'テスト企業102', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 'test_company_102');
INSERT INTO demo.client VALUES (103, 'テスト企業103', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 'test_company_103');


--
-- Data for Name: department_level; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.department_level VALUES (32, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 1);
INSERT INTO demo.department_level VALUES (33, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 1);
INSERT INTO demo.department_level VALUES (34, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 1);
INSERT INTO demo.department_level VALUES (35, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 1);
INSERT INTO demo.department_level VALUES (36, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 1);
INSERT INTO demo.department_level VALUES (37, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 1);
INSERT INTO demo.department_level VALUES (38, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 2);
INSERT INTO demo.department_level VALUES (39, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 2);
INSERT INTO demo.department_level VALUES (40, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 2);
INSERT INTO demo.department_level VALUES (41, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 2);
INSERT INTO demo.department_level VALUES (42, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 2);
INSERT INTO demo.department_level VALUES (43, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 2);
INSERT INTO demo.department_level VALUES (44, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 3);
INSERT INTO demo.department_level VALUES (45, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 3);
INSERT INTO demo.department_level VALUES (46, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 3);
INSERT INTO demo.department_level VALUES (47, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 3);
INSERT INTO demo.department_level VALUES (48, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 3);
INSERT INTO demo.department_level VALUES (49, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 3);
INSERT INTO demo.department_level VALUES (50, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 4);
INSERT INTO demo.department_level VALUES (51, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 4);
INSERT INTO demo.department_level VALUES (52, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 4);
INSERT INTO demo.department_level VALUES (53, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 4);
INSERT INTO demo.department_level VALUES (54, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 4);
INSERT INTO demo.department_level VALUES (55, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 4);
INSERT INTO demo.department_level VALUES (56, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 5);
INSERT INTO demo.department_level VALUES (57, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 5);
INSERT INTO demo.department_level VALUES (58, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 5);
INSERT INTO demo.department_level VALUES (59, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 5);
INSERT INTO demo.department_level VALUES (60, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 5);
INSERT INTO demo.department_level VALUES (61, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 5);
INSERT INTO demo.department_level VALUES (62, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 100);
INSERT INTO demo.department_level VALUES (63, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 100);
INSERT INTO demo.department_level VALUES (64, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 100);
INSERT INTO demo.department_level VALUES (65, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 100);
INSERT INTO demo.department_level VALUES (66, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 100);
INSERT INTO demo.department_level VALUES (67, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 100);
INSERT INTO demo.department_level VALUES (68, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 101);
INSERT INTO demo.department_level VALUES (69, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 101);
INSERT INTO demo.department_level VALUES (70, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 101);
INSERT INTO demo.department_level VALUES (71, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 101);
INSERT INTO demo.department_level VALUES (72, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 101);
INSERT INTO demo.department_level VALUES (73, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 101);
INSERT INTO demo.department_level VALUES (74, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 102);
INSERT INTO demo.department_level VALUES (75, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 102);
INSERT INTO demo.department_level VALUES (76, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 102);
INSERT INTO demo.department_level VALUES (77, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 102);
INSERT INTO demo.department_level VALUES (78, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 102);
INSERT INTO demo.department_level VALUES (79, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 102);
INSERT INTO demo.department_level VALUES (80, 1, '全社', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 103);
INSERT INTO demo.department_level VALUES (81, 2, '拠点', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 103);
INSERT INTO demo.department_level VALUES (82, 3, '事業部', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 103);
INSERT INTO demo.department_level VALUES (83, 4, '部署', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 103);
INSERT INTO demo.department_level VALUES (84, 5, '課', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 103);
INSERT INTO demo.department_level VALUES (85, 6, '係', 1, '2022-01-17 12:45:41.097511', NULL, '2022-01-17 12:45:41.097511', NULL, NULL, NULL, 103);


--
-- Data for Name: department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.department VALUES (1, NULL, '全社', 1, '2021-06-07 15:54:55.037', NULL, '2021-06-07 15:54:55.037', NULL, NULL, NULL, 1, 'hub', NULL, NULL, 1, 2, NULL, false, 32);
INSERT INTO demo.department VALUES (2, NULL, '東京本社', 1, '2021-06-07 22:24:18.903', NULL, '2021-06-07 22:24:18.903', NULL, NULL, NULL, 1, 'hub', NULL, NULL, 1, 2, 1, false, 33);
INSERT INTO demo.department VALUES (3, NULL, '事業部1', 1, '2021-06-07 22:24:22.721', NULL, '2021-06-07 22:24:22.721', NULL, NULL, NULL, 1, 'businessUnit', NULL, NULL, 1, 2, 2, false, 34);
INSERT INTO demo.department VALUES (4, NULL, '部署1_1', 1, '2021-06-08 21:07:16.383', NULL, '2021-06-08 21:07:16.383', NULL, NULL, NULL, 1, 'department', NULL, NULL, 1, 2, 3, false, 35);
INSERT INTO demo.department VALUES (5, NULL, '課1_1_1', 1, '2021-06-09 15:41:14.824', NULL, '2021-06-09 15:41:14.824', NULL, NULL, NULL, 1, 'division', NULL, NULL, 1, 2, 4, false, 36);
INSERT INTO demo.department VALUES (6, NULL, '課1_1_2', 1, '2021-06-09 15:42:27.362', NULL, '2021-06-09 15:42:27.362', NULL, NULL, NULL, 1, 'division', NULL, NULL, 1, 2, 4, true, 36);
INSERT INTO demo.department VALUES (7, NULL, '部署1_2', 1, '2021-06-09 15:47:56.523', NULL, '2021-06-09 15:47:56.523', NULL, NULL, NULL, 1, 'department', NULL, NULL, 1, 2, 3, false, 35);
INSERT INTO demo.department VALUES (8, NULL, '課1_2_1', 1, '2021-06-09 15:51:37.218', NULL, '2021-06-09 15:51:37.218', NULL, NULL, NULL, 1, 'division', NULL, NULL, 1, 2, 7, false, 36);
INSERT INTO demo.department VALUES (9, NULL, '部署1_3', 1, '2021-06-09 15:53:03.184', NULL, '2021-06-09 15:53:03.184', NULL, NULL, NULL, 1, 'department', NULL, NULL, 1, 2, 3, false, 35);
INSERT INTO demo.department VALUES (10, NULL, '事業部2', 1, '2021-06-23 09:03:00.683616', NULL, '2021-06-23 09:03:00.683616', NULL, NULL, NULL, 1, 'businessUnit', NULL, NULL, 1, 2, 2, true, 34);
INSERT INTO demo.department VALUES (11, NULL, '部署2_1', 1, '2021-06-23 09:04:15.362908', NULL, '2021-06-23 09:04:15.362908', NULL, NULL, NULL, 1, 'department', NULL, NULL, 1, 2, 10, false, 35);
INSERT INTO demo.department VALUES (12, NULL, '課2_1_1', 1, '2021-06-23 09:05:17.156216', NULL, '2021-06-23 09:05:17.156216', NULL, NULL, NULL, 1, 'division', NULL, NULL, 1, 2, 11, true, 36);
INSERT INTO demo.department VALUES (13, NULL, '北海道支社', 1, '2021-06-23 09:05:42.789446', NULL, '2021-06-23 09:05:42.789446', NULL, NULL, NULL, 1, 'hub', NULL, NULL, 1, 2, 1, false, 33);
INSERT INTO demo.department VALUES (14, NULL, '事業部3', 1, '2021-06-23 09:05:59.793756', NULL, '2021-06-23 09:05:59.793756', NULL, NULL, NULL, 1, 'businessUnit', NULL, NULL, 1, 2, 13, false, 34);
INSERT INTO demo.department VALUES (15, NULL, '部署3_1', 1, '2021-06-23 09:06:39.428964', NULL, '2021-06-23 09:06:39.428964', NULL, NULL, NULL, 1, 'department', NULL, NULL, 1, 2, 14, false, 35);
INSERT INTO demo.department VALUES (16, NULL, '部署3_2', 1, '2021-06-23 09:06:51.511491', NULL, '2021-06-23 09:06:51.511491', NULL, NULL, NULL, 1, 'department', NULL, NULL, 1, 2, 14, true, 36);
INSERT INTO demo.department VALUES (17, NULL, '部署3_3', 1, '2021-06-23 09:07:57.421956', NULL, '2021-06-23 09:07:57.421956', NULL, NULL, NULL, 1, 'department', NULL, NULL, 1, 2, 14, false, 35);
INSERT INTO demo.department VALUES (18, NULL, '全社', 1, '2021-06-23 09:07:57.421956', NULL, '2021-06-23 09:07:57.421956', NULL, NULL, NULL, 2, 'hub', NULL, NULL, 1, 2, NULL, false, 38);
INSERT INTO demo.department VALUES (19, NULL, '神奈川本社', 1, '2021-06-23 09:07:57.421956', NULL, '2021-06-23 09:07:57.421956', NULL, NULL, NULL, 2, 'hub', NULL, NULL, 1, 2, 18, false, 39);
INSERT INTO demo.department VALUES (20, NULL, '事業部', 1, '2021-06-23 09:07:57.421956', NULL, '2021-06-23 09:07:57.421956', NULL, NULL, NULL, 2, 'businessUnit', NULL, NULL, 1, 2, 19, false, 40);
INSERT INTO demo.department VALUES (22, NULL, '部署', 1, '2021-06-09 15:53:03.184', NULL, '2021-06-09 15:53:03.184', NULL, NULL, NULL, 2, 'department', NULL, NULL, 1, 2, 20, false, 41);
INSERT INTO demo.department VALUES (23, NULL, '課', 1, '2021-06-09 15:51:37.218', NULL, '2021-06-09 15:51:37.218', NULL, NULL, NULL, 2, 'division', NULL, NULL, 1, 2, 22, false, 42);
INSERT INTO demo.department VALUES (24, NULL, '課', 1, '2021-06-09 15:47:56.523', NULL, '2021-06-09 15:47:56.523', NULL, NULL, NULL, 2, 'division', NULL, NULL, 1, 2, 22, false, 42);
INSERT INTO demo.department VALUES (25, NULL, '部署', 1, '2021-06-09 15:53:03.184', NULL, '2021-06-09 15:53:03.184', NULL, NULL, NULL, 2, 'department', NULL, NULL, 1, 2, 20, false, 41);
INSERT INTO demo.department VALUES (26, NULL, '課', 1, '2021-06-09 15:51:37.218', NULL, '2021-06-09 15:51:37.218', NULL, NULL, NULL, 2, 'division', NULL, NULL, 1, 2, 25, false, 42);
INSERT INTO demo.department VALUES (27, NULL, '事業部', 1, '2021-06-09 15:47:56.523', NULL, '2021-06-09 15:47:56.523', NULL, NULL, NULL, 2, 'businessUnit', NULL, NULL, 1, 2, 19, false, 40);
INSERT INTO demo.department VALUES (28, NULL, '部署', 1, '2021-06-09 15:53:03.184', NULL, '2021-06-09 15:53:03.184', NULL, NULL, NULL, 2, 'department', NULL, NULL, 1, 2, 27, false, 41);
INSERT INTO demo.department VALUES (29, NULL, '課', 1, '2021-06-09 15:51:37.218', NULL, '2021-06-09 15:51:37.218', NULL, NULL, NULL, 2, 'division', NULL, NULL, 1, 2, 28, false, 42);
INSERT INTO demo.department VALUES (30, NULL, '沖縄支社', 1, '2021-06-09 15:47:56.523', NULL, '2021-06-09 15:47:56.523', NULL, NULL, NULL, 2, 'hub', NULL, NULL, 1, 2, 18, false, 39);
INSERT INTO demo.department VALUES (31, NULL, '事業部', 1, '2021-06-09 15:53:03.184', NULL, '2021-06-09 15:53:03.184', NULL, NULL, NULL, 2, 'businessUnit', NULL, NULL, 1, 2, 30, false, 40);
INSERT INTO demo.department VALUES (32, NULL, '部署', 1, '2021-06-09 15:51:37.218', NULL, '2021-06-09 15:51:37.218', NULL, NULL, NULL, 2, 'department', NULL, NULL, 1, 2, 31, false, 41);
INSERT INTO demo.department VALUES (33, NULL, '部署', 1, '2021-06-09 15:47:56.523', NULL, '2021-06-09 15:47:56.523', NULL, NULL, NULL, 2, 'department', NULL, NULL, 1, 2, 31, false, 41);
INSERT INTO demo.department VALUES (1001, 'dept-001', '全社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'hub', '1900-01-01', '2899-12-31', 0, 0, NULL, false, 56);
INSERT INTO demo.department VALUES (1002, 'dept-002', '事業部門１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1001, false, 58);
INSERT INTO demo.department VALUES (1003, 'dept-003', '部署１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'department', '1900-01-01', '2899-12-31', 0, 0, 1002, false, 59);
INSERT INTO demo.department VALUES (1004, 'dept-004', 'グループ１－１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'division', '1900-01-01', '2899-12-31', 0, 0, 1003, false, 60);
INSERT INTO demo.department VALUES (1006, 'dept-006', '部署１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'department', '1900-01-01', '2899-12-31', 0, 0, 1002, false, 59);
INSERT INTO demo.department VALUES (1005, 'dept-005', 'グループ１－１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'division', '1900-01-01', '2899-12-31', 0, 0, 1003, false, 60);
INSERT INTO demo.department VALUES (1007, 'dept-007', 'グループ１－２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'division', '1900-01-01', '2899-12-31', 0, 0, 1006, false, 60);
INSERT INTO demo.department VALUES (1008, 'dept-008', '事業部門２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1001, false, 58);
INSERT INTO demo.department VALUES (1009, 'dept-009', '部署２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'department', '1900-01-01', '2899-12-31', 0, 0, 1008, false, 59);
INSERT INTO demo.department VALUES (1010, 'dept-010', '経営企画部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'department', '1900-01-01', '2899-12-31', 0, 0, 1001, true, 59);
INSERT INTO demo.department VALUES (1011, 'dept-011', '総務部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'department', '1900-01-01', '2899-12-31', 0, 0, 1001, true, 59);
INSERT INTO demo.department VALUES (1012, 'dept-012', '情報システム部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'department', '1900-01-01', '2899-12-31', 0, 0, 1001, false, 59);
INSERT INTO demo.department VALUES (1020, 'dept-020', '東京本社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 'hub', '1900-01-01', '2899-12-31', 0, 0, 1001, false, 57);
INSERT INTO demo.department VALUES (1101, 'dept-001', '全社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'hub', '1900-01-01', '2899-12-31', 0, 0, NULL, false, 62);
INSERT INTO demo.department VALUES (1102, 'dept-002', '事業部門１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1101, false, 64);
INSERT INTO demo.department VALUES (1103, 'dept-003', '部署１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'department', '1900-01-01', '2899-12-31', 0, 0, 1102, false, 65);
INSERT INTO demo.department VALUES (1104, 'dept-004', 'グループ１－１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'division', '1900-01-01', '2899-12-31', 0, 0, 1103, false, 66);
INSERT INTO demo.department VALUES (1105, 'dept-005', 'グループ１－１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'division', '1900-01-01', '2899-12-31', 0, 0, 1103, false, 66);
INSERT INTO demo.department VALUES (1106, 'dept-006', '部署１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'department', '1900-01-01', '2899-12-31', 0, 0, 1102, false, 65);
INSERT INTO demo.department VALUES (1107, 'dept-007', 'グループ１－２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'division', '1900-01-01', '2899-12-31', 0, 0, 1106, false, 66);
INSERT INTO demo.department VALUES (1108, 'dept-008', '事業部門２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1101, false, 64);
INSERT INTO demo.department VALUES (1109, 'dept-009', '部署２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'department', '1900-01-01', '2899-12-31', 0, 0, 1108, false, 65);
INSERT INTO demo.department VALUES (1110, 'dept-010', '経営企画部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'department', '1900-01-01', '2899-12-31', 0, 0, 1101, true, 64);
INSERT INTO demo.department VALUES (1111, 'dept-011', '総務部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'department', '1900-01-01', '2899-12-31', 0, 0, 1101, true, 64);
INSERT INTO demo.department VALUES (1112, 'dept-012', '情報システム部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'department', '1900-01-01', '2899-12-31', 0, 0, 1101, false, 64);
INSERT INTO demo.department VALUES (1120, 'dept-020', '東京本社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 'hub', '1900-01-01', '2899-12-31', 0, 0, 1101, false, 63);
INSERT INTO demo.department VALUES (1201, 'dept-001', '全社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'hub', '1900-01-01', '2899-12-31', 0, 0, NULL, false, 68);
INSERT INTO demo.department VALUES (1202, 'dept-002', '事業部門１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1201, false, 70);
INSERT INTO demo.department VALUES (1203, 'dept-003', '部署１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'department', '1900-01-01', '2899-12-31', 0, 0, 1202, false, 71);
INSERT INTO demo.department VALUES (1204, 'dept-004', 'グループ１－１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'division', '1900-01-01', '2899-12-31', 0, 0, 1203, false, 72);
INSERT INTO demo.department VALUES (1205, 'dept-005', 'グループ１－１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'division', '1900-01-01', '2899-12-31', 0, 0, 1203, false, 72);
INSERT INTO demo.department VALUES (1206, 'dept-006', '部署１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'department', '1900-01-01', '2899-12-31', 0, 0, 1202, false, 71);
INSERT INTO demo.department VALUES (1207, 'dept-007', 'グループ１－２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'division', '1900-01-01', '2899-12-31', 0, 0, 1206, false, 72);
INSERT INTO demo.department VALUES (1208, 'dept-008', '事業部門２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1201, false, 70);
INSERT INTO demo.department VALUES (1209, 'dept-009', '部署２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'department', '1900-01-01', '2899-12-31', 0, 0, 1208, false, 71);
INSERT INTO demo.department VALUES (1210, 'dept-010', '経営企画部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'department', '1900-01-01', '2899-12-31', 0, 0, 1201, true, 70);
INSERT INTO demo.department VALUES (1211, 'dept-011', '総務部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'department', '1900-01-01', '2899-12-31', 0, 0, 1201, true, 70);
INSERT INTO demo.department VALUES (1212, 'dept-012', '情報システム部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'department', '1900-01-01', '2899-12-31', 0, 0, 1201, false, 70);
INSERT INTO demo.department VALUES (1220, 'dept-020', '東京本社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 'hub', '1900-01-01', '2899-12-31', 0, 0, 1201, false, 69);
INSERT INTO demo.department VALUES (1301, 'dept-001', '全社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'hub', '1900-01-01', '2899-12-31', 0, 0, NULL, false, 74);
INSERT INTO demo.department VALUES (1302, 'dept-002', '事業部門１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1301, false, 75);
INSERT INTO demo.department VALUES (1303, 'dept-003', '部署１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'department', '1900-01-01', '2899-12-31', 0, 0, 1302, false, 76);
INSERT INTO demo.department VALUES (1304, 'dept-004', 'グループ１－１－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'division', '1900-01-01', '2899-12-31', 0, 0, 1303, false, 78);
INSERT INTO demo.department VALUES (1305, 'dept-005', 'グループ１－１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'division', '1900-01-01', '2899-12-31', 0, 0, 1303, false, 78);
INSERT INTO demo.department VALUES (1306, 'dept-006', '部署１－２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'department', '1900-01-01', '2899-12-31', 0, 0, 1302, false, 77);
INSERT INTO demo.department VALUES (1307, 'dept-007', 'グループ１－２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'division', '1900-01-01', '2899-12-31', 0, 0, 1306, false, 78);
INSERT INTO demo.department VALUES (1308, 'dept-008', '事業部門２', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'businessUnit', '1900-01-01', '2899-12-31', 0, 0, 1301, false, 76);
INSERT INTO demo.department VALUES (1309, 'dept-009', '部署２－１', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'department', '1900-01-01', '2899-12-31', 0, 0, 1308, false, 77);
INSERT INTO demo.department VALUES (1310, 'dept-010', '経営企画部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'department', '1900-01-01', '2899-12-31', 0, 0, 1301, true, 76);
INSERT INTO demo.department VALUES (1311, 'dept-011', '総務部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'department', '1900-01-01', '2899-12-31', 0, 0, 1301, true, 76);
INSERT INTO demo.department VALUES (1312, 'dept-012', '情報システム部', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'department', '1900-01-01', '2899-12-31', 0, 0, 1301, false, 76);
INSERT INTO demo.department VALUES (1320, 'dept-020', '東京本社', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 'hub', '1900-01-01', '2899-12-31', 0, 0, 1301, false, 75);

--
-- Data for Name: position; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo."position" VALUES (1, '主任', 10, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (2, '監督者', 20, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (3, '係長', 30, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (4, '課長補佐', 40, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (5, '課長代理', 50, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (6, '課長', 60, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (7, '次長', 70, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (8, '部長', 80, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (9, '監査役', 90, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (10, '常務', 100, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (11, '専務', 110, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (12, '副社長', 120, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (13, '社長', 130, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (14, '会長', 140, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (16, '事務部長', 85, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (15, '一般', 0, '2021-09-01', '2022-08-31', 1, '2021-09-16 05:39:06.483401', NULL, '2021-09-16 05:39:06.483401', NULL, NULL, NULL, 1);
INSERT INTO demo."position" VALUES (1001, '社長', 100, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1002, '専務', 60, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1003, '常務', 50, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1004, '事業部長', 40, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1005, '部長', 30, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1006, '課長', 20, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1007, '係長', 10, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1008, '一般', 0, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100);
INSERT INTO demo."position" VALUES (1101, '社長', 100, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1102, '専務', 60, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1103, '常務', 50, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1104, '事業部長', 40, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1105, '部長', 30, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1106, '課長', 20, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1107, '係長', 10, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1108, '一般', 0, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101);
INSERT INTO demo."position" VALUES (1201, '社長', 100, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1202, '専務', 60, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1203, '常務', 50, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1204, '事業部長', 40, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1205, '部長', 30, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1206, '課長', 20, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1207, '係長', 10, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1208, '一般', 0, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102);
INSERT INTO demo."position" VALUES (1301, '社長', 100, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);
INSERT INTO demo."position" VALUES (1302, '専務', 60, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);
INSERT INTO demo."position" VALUES (1303, '常務', 50, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);
INSERT INTO demo."position" VALUES (1304, '事業部長', 40, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);
INSERT INTO demo."position" VALUES (1305, '部長', 30, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);
INSERT INTO demo."position" VALUES (1306, '課長', 20, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);
INSERT INTO demo."position" VALUES (1307, '係長', 10, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);
INSERT INTO demo."position" VALUES (1308, '一般', 0, '1900-01-01', '2899-12-31', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103);


--
-- Data for Name: salary; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.salary VALUES (1, 'テスト等級', 300000, 1, '2021-12-13 00:00:00', '2021-12-13 00:00:00', NULL, NULL, NULL, NULL, 1);
INSERT INTO demo.salary VALUES (1001, '給与等級１', 100000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 100);
INSERT INTO demo.salary VALUES (1002, '給与等級２', 200000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 100);
INSERT INTO demo.salary VALUES (1003, '給与等級３', 300000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 100);
INSERT INTO demo.salary VALUES (1004, '給与等級４', 400000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 100);
INSERT INTO demo.salary VALUES (1005, '給与等級５', 500000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 100);
INSERT INTO demo.salary VALUES (1101, '給与等級１', 100000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 101);
INSERT INTO demo.salary VALUES (1102, '給与等級２', 200000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 101);
INSERT INTO demo.salary VALUES (1103, '給与等級３', 300000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 101);
INSERT INTO demo.salary VALUES (1104, '給与等級４', 400000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 101);
INSERT INTO demo.salary VALUES (1105, '給与等級５', 500000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 101);
INSERT INTO demo.salary VALUES (1201, '給与等級１', 100000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 102);
INSERT INTO demo.salary VALUES (1202, '給与等級２', 200000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 102);
INSERT INTO demo.salary VALUES (1203, '給与等級３', 300000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 102);
INSERT INTO demo.salary VALUES (1204, '給与等級４', 400000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 102);
INSERT INTO demo.salary VALUES (1205, '給与等級５', 500000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 102);
INSERT INTO demo.salary VALUES (1301, '給与等級１', 100000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 103);
INSERT INTO demo.salary VALUES (1302, '給与等級２', 200000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 103);
INSERT INTO demo.salary VALUES (1303, '給与等級３', 300000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 103);
INSERT INTO demo.salary VALUES (1304, '給与等級４', 400000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 103);
INSERT INTO demo.salary VALUES (1305, '給与等級５', 500000, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, NULL, NULL, 103);


--
-- Data for Name: users; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.users VALUES (5, 'ユーザ1_1', 'user1_1', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user1_1@simulator.amazonses.com', '2021-12-16 14:03:40.87', 18, '2021-05-31 19:12:55.501', NULL, '2021-12-16 14:03:40.874204', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1111, 'ユーザー１１', 'user101_11', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1101, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1106, 'ユーザー６', 'user101_6', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1101, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1105, 'ユーザー５', 'user101_5', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1108, 'ユーザー８', 'user101_8', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1103, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (8, 'ユーザ1_3', 'user1_3', '$2b$10$50dUAuUaqdUWc2mVzPA0X./Ryxt2FJji61m833DPbkus.PHnccrDi', true, 'success+user1_3@simulator.amazonses.com', '2021-09-28 10:59:31.259', 5, '2021-06-01 00:08:27.778', NULL, '2021-09-28 10:59:31.263825', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (15, 'ユーザ1_10', 'user1_10', '$2b$10$qLpmaxu1vMUbjeiavQqKHuE4HEF7w5dg1PDYoBmnzvC0kIHtJ/eWq', false, 'success+user1_10@simulator.amazonses.com', '2021-09-28 10:19:14.947', 4, '2021-06-07 15:54:54.958', NULL, '2021-09-28 10:19:14.961465', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (10, 'ユーザ1_5', 'user1_5', '$2b$10$DRfsZ6X5fj58qhkqZFCoze5jRmlRQVFPw2IOhGd56nH6ZRT7sbACG', true, 'success+user1_5@simulator.amazonses.com', '2021-09-28 11:02:55.377', 4, '2021-06-01 00:14:53.816', NULL, '2021-09-28 11:02:55.380068', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (9, 'ユーザ1_4', 'user1_4', '$2b$10$PHUEqIaW0Cqa1744e9V3aO7RUCh/hIdTlryBd0wXpi5cKIDbVAtg2', false, 'success+user1_4@simulator.amazonses.com', '2021-09-28 10:51:16.402', 3, '2021-06-01 00:11:44.711', NULL, '2021-09-28 10:51:16.406286', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (12, 'ユーザ1_7', 'user1_7', '$2b$10$7BASMkc4CQBvXQ2.q51f0OHhwlivhgyGUzaW38dqN6H3C.2cDT0xO', false, 'success+user1_7@simulator.amazonses.com', '2021-06-16 09:28:54.198', 1, '2021-06-01 00:17:29.943', NULL, '2021-06-16 09:28:54.222096', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (19, 'ユーザ1_14', 'user1_14', '$2b$10$GimnVBH7p9XVBVOTMxlEwO4sAvT/w0IGhGjeCnSWdiDtkpihqOzmi', true, 'success+user1_14@simulator.amazonses.com', '2021-06-14 21:45:49.149', 1, '2021-06-09 15:41:14.756', NULL, '2021-06-14 21:45:49.162446', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (14, 'ユーザ1_9', 'user1_9', '$2b$10$K/PBQPEJWL15rO3X7AB9uuoJ5t7RtTuGqt1XsxJ7/vkQ5IhUD7E0i', true, 'success+user1_9@simulator.amazonses.com', '2021-06-23 08:45:45.427', 1, '2021-06-01 00:22:56.288', NULL, '2021-06-23 08:45:45.44007', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (13, 'ユーザ1_8', 'user1_8', '$2b$10$ZW/mB15cIiIoKurTxIrfQuJS9Tidv.derBRG8Z1rRX2fGsDD0BVbO', true, 'success+user1_8@simulator.amazonses.com', '2021-06-09 16:58:26.494', 1, '2021-06-01 00:18:21.072', NULL, '2021-06-09 16:58:26.505797', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1118, 'ユーザー１８', 'user101_18', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1103, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1117, 'ユーザー１７', 'user101_17', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1102, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1306, 'ユーザー６', 'user103_6', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1301, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1305, 'ユーザー５', 'user103_5', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1308, 'ユーザー８', 'user103_8', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1303, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1315, 'ユーザー１５', 'user103_15', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1310, 'ユーザー１０', 'user103_10', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1204, 'ユーザー４', 'user102_4', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1204, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1103, 'ユーザー３', 'user101_3', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1103, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1107, 'ユーザー７', 'user101_7', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1102, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1102, 'ユーザー２', 'user101_2', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1102, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1101, 'ユーザー１', 'user101_1', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1101, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1207, 'ユーザー７', 'user102_7', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1202, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1202, 'ユーザー２', 'user102_2', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1202, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1201, 'ユーザー１', 'user102_1', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1201, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1120, 'ユーザー２０', 'user101_20', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1211, 'ユーザー１１', 'user102_11', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1201, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1206, 'ユーザー６', 'user102_6', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1201, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1205, 'ユーザー５', 'user102_5', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1208, 'ユーザー８', 'user102_8', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1203, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1215, 'ユーザー１５', 'user102_15', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1210, 'ユーザー１０', 'user102_10', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1209, 'ユーザー９', 'user102_9', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1204, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1212, 'ユーザー１２', 'user102_12', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1202, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1116, 'ユーザー１６', 'user101_16', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1101, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1113, 'ユーザー１３', 'user101_13', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1103, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1114, 'ユーザー１４', 'user101_14', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1104, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (17, 'ユーザ1_12', 'user1_12', '$2b$10$QBSS95sECtdf.lUwnn6b8ui7eGeJ8Ej8heJ/jKYfIA6pmHPDennAG', false, 'success+user1_12@simulator.amazonses.com', '2021-06-26 13:05:42.115', 1, '2021-06-07 22:24:22.652', NULL, '2021-06-26 13:05:42.139536', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1112, 'ユーザー１２', 'user101_12', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1102, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1109, 'ユーザー９', 'user101_9', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1104, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1110, 'ユーザー１０', 'user101_10', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1301, 'ユーザー１', 'user103_1', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1301, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1302, 'ユーザー２', 'user103_2', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1302, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1307, 'ユーザー７', 'user103_7', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1302, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1320, 'ユーザー２０', 'user103_20', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1303, 'ユーザー３', 'user103_3', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1303, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1318, 'ユーザー１８', 'user103_18', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1303, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1203, 'ユーザー３', 'user102_3', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1203, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1316, 'ユーザー１６', 'user103_16', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1301, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1313, 'ユーザー１３', 'user103_13', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1303, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1314, 'ユーザー１４', 'user103_14', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1304, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1220, 'ユーザー２０', 'user102_20', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1217, 'ユーザー１７', 'user102_17', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1202, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1218, 'ユーザー１８', 'user102_18', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1203, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1216, 'ユーザー１６', 'user102_16', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1201, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (16, 'ユーザ1_11', 'user1_11', '$2b$10$ofdS3mQ6GXI3vW0vXQ06kuRKJ7/rN2n.7q/Wl9uw2EIMRDbzBeQie', false, 'success+user1_11@simulator.amazonses.com', '2021-06-13 15:26:24.995', 1, '2021-06-07 22:24:18.836', NULL, '2021-06-13 15:26:25.004476', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1214, 'ユーザー１４', 'user102_14', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1204, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1311, 'ユーザー１１', 'user103_11', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1301, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1119, 'ユーザー１９', 'user101_19', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1104, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1304, 'ユーザー４', 'user103_4', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1304, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (32, 'ユーザ4_3', 'user4_3', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user4_3@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 4, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1312, 'ユーザー１２', 'user103_12', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1302, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (20, 'ユーザ1_15', 'user1_15', '$2b$10$9oa1IS2mBPyvMLoXwSZUHeNHBPyw6i1V6VZMBqw.pVktl5mVp/elq', true, 'success+user1_15@simulator.amazonses.com', '2021-06-22 22:59:11.139', 1, '2021-06-09 15:42:27.296', NULL, '2021-06-22 22:59:11.152216', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1115, 'ユーザー１５', 'user101_15', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (18, 'ユーザ1_13', 'user1_13', '$2b$10$ncsK/01c2P9uQDhzhVJbCu6J2.h5ZA.Hu83.xvothUOBOOTjPu0TO', true, 'success+user1_13@simulator.amazonses.com', '2021-06-14 10:46:55.878', 1, '2021-06-08 21:07:16.332', NULL, '2021-06-14 10:46:55.881514', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (23, 'ユーザ1_18', 'user1_18', '$2b$10$MB7XkIb6GxPNnMahnjJige6r7hJzH1mNBQfsNTW7VXGTeoFn7O7JS', false, 'success+user1_18@simulator.amazonses.com', '2021-06-30 19:54:28.167', 2, '2021-06-09 15:53:03.116', NULL, '2021-06-30 19:54:28.170657', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1008, 'ユーザー８', 'user100_8', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1003, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1015, 'ユーザー１５', 'user100_15', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1010, 'ユーザー１０', 'user100_10', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1009, 'ユーザー９', 'user100_9', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1004, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1012, 'ユーザー１２', 'user100_12', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1002, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1014, 'ユーザー１４', 'user100_14', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1004, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1013, 'ユーザー１３', 'user100_13', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1003, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1016, 'ユーザー１６', 'user100_16', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1001, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1018, 'ユーザー１８', 'user100_18', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1003, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1017, 'ユーザー１７', 'user100_17', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1002, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1020, 'ユーザー２０', 'user100_20', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (34, 'ユーザ5_2', 'user5_2', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user5_2@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 5, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (33, 'ユーザ5_1', 'user5_1', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user5_1@simulator.amazonses.com', '2021-07-06 19:06:52.613', 6, '2021-05-31 19:12:55.501', NULL, '2021-07-06 19:06:52.61776', NULL, NULL, NULL, 5, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1319, 'ユーザー１９', 'user103_19', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1304, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1213, 'ユーザー１３', 'user102_13', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1203, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1309, 'ユーザー９', 'user103_9', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1304, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1003, 'ユーザー３', 'user100_3', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1003, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1219, 'ユーザー１９', 'user102_19', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 102, 1204, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1007, 'ユーザー７', 'user100_7', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1002, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1002, 'ユーザー２', 'user100_2', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1002, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1001, 'ユーザー１', 'user100_1', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1001, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1004, 'ユーザー４', 'user100_4', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1004, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1011, 'ユーザー１１', 'user100_11', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1001, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1006, 'ユーザー６', 'user100_6', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1001, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1005, 'ユーザー５', 'user100_5', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 100, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (27, 'ユーザ3_1', 'user3_1', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user3_1@simulator.amazonses.com', '2021-07-06 19:06:52.613', 6, '2021-05-31 19:12:55.501', NULL, '2021-07-06 19:06:52.61776', NULL, NULL, NULL, 3, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (22, 'ユーザ1_17', 'user1_17', '$2b$10$ugo8QdkAGmNY/Qfon8VrreMmoe7nclmsCDHw78KFYyzjiBFQ6gAt.', true, 'success+user1_17@simulator.amazonses.com', '2021-06-21 15:49:59.075', 1, '2021-06-09 15:51:37.149', NULL, '2021-06-21 15:49:59.091872', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (21, 'ユーザ1_16', 'user1_16', '$2b$10$d9E73TMAXKiWQMEsC.KdGuovLjbBuVxLfDuPJl1qvSYdpBdBD2A.u', false, 'success+user1_16@simulator.amazonses.com', '2021-06-21 09:37:11.269', 1, '2021-06-09 15:47:56.449', NULL, '2021-06-21 09:37:11.283583', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (24, 'ユーザ2_1', 'user2_1', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user2_1@simulator.amazonses.com', '2021-07-06 19:06:52.613', 6, '2021-05-31 19:12:55.501', NULL, '2021-07-06 19:06:52.61776', NULL, NULL, NULL, 2, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (31, 'ユーザ4_2', 'user4_2', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user4_2@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 4, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (26, 'ユーザ2_3', 'user2_3', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user2_3@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 2, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (25, 'ユーザ2_2', 'user2_2', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user2_2@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 2, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (28, 'ユーザ3_2', 'user3_2', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user3_2@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 3, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (35, 'ユーザ5_3', 'user5_3', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user5_3@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 5, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (30, 'ユーザ4_1', 'user4_1', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user4_1@simulator.amazonses.com', '2021-07-06 19:06:52.613', 6, '2021-05-31 19:12:55.501', NULL, '2021-07-06 19:06:52.61776', NULL, NULL, NULL, 4, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (29, 'ユーザ3_3', 'user3_3', '$2b$10$gvEvf1/O0TOsE45MoW1K7.2IKu1LLvM/PMdjVFymukgREND1I4Akm', false, 'success+user3_3@simulator.amazonses.com', '2021-06-30 19:54:08.624', 4, '2021-05-31 19:12:55.501', NULL, '2021-06-30 19:54:08.626652', NULL, NULL, NULL, 3, NULL, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1317, 'ユーザー１７', 'user103_17', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 103, 1302, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (7, 'ユーザ1_2', 'user1_2', '$2b$10$SXVk/4VmaiNmAYUZC2K6CeZdumHGsWetea4LOnjVDR9pafuSHQjyi', false, 'success+user1_2@simulator.amazonses.com', '2021-06-30 19:51:45.427', 2, '2021-06-01 00:06:55.736', NULL, '2021-06-30 19:51:45.430493', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1104, 'ユーザー４', 'user101_4', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2021-06-21 00:00:00', 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', 0, NULL, NULL, 101, 1104, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (11, 'ユーザ1_6', 'user1_6', '$2b$10$ILgTe5vL/9Y7ZbjSV0W.8eVD6..PDfuPDBRXh1hrbxC.azDVL8Bxa', false, 'success+user1_6@simulator.amazonses.com', '2022-01-17 21:41:35.47', 7, '2021-06-01 00:15:40.944', NULL, '2022-01-17 21:41:35.47666', NULL, NULL, NULL, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.users VALUES (1019, 'ユーザー１９', 'user100_19', '$2b$10$GfaVAyAmwFtC3P9.OhkzrOG.3Sa9UZ/7fYR1fVPNAUS6cqRxGhLGW', false, '', '2022-01-19 06:38:25.047', 2, '2021-06-21 00:00:00', 0, '2022-01-19 06:38:25.050893', 0, NULL, NULL, 100, 1004, '2000-01-01 00:00:00', '2023-01-01 00:00:00');


--
-- Data for Name: user_department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.user_department VALUES (16, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 11, 3, 8, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1203, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1203, 1202, 1204, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1202, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1202, 1201, 1202, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1205, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1205, 1204, 1206, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1020, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1020, 1012, 1008, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1201, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1201, 1201, 1201, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1208, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1208, 1205, 1208, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1003, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1003, 1002, 1004, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1002, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1002, 1001, 1002, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1005, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1005, 1004, 1006, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1216, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1216, 1210, 1208, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1001, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1001, 1001, 1001, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1008, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1008, 1005, 1008, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1011, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1011, 1007, 1008, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1010, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1010, 1007, 1006, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1013, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1013, 1009, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1004, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1004, 1003, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1007, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1007, 1005, 1006, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1006, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1006, 1004, 1008, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1009, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1009, 1006, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1217, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1217, 1211, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1220, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1220, 1212, 1208, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1120, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1120, 1112, 1108, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1310, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1310, 1307, 1306, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1315, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1315, 1310, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1312, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1312, 1308, 1304, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1305, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1305, 1304, 1306, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1302, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1302, 1301, 1302, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1303, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1303, 1302, 1304, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1301, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1301, 1301, 1301, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1309, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1309, 1306, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1306, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1306, 1304, 1308, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1307, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1307, 1305, 1306, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1304, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1304, 1303, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1103, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1103, 1102, 1104, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (6, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 10, 1, 4, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1107, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1107, 1105, 1106, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1110, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1110, 1107, 1106, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1318, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1318, 1311, 1308, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1117, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1117, 1111, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1320, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1320, 1312, 1308, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1119, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1119, 1112, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (40, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 5, 33, 31, 6, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (43, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 5, 3, 8, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (42, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 5, 35, 33, 3, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1113, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1113, 1109, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (36, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 3, 29, 27, 4, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (39, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 4, 32, 30, 8, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (38, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 4, 31, 29, 7, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (41, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 5, 34, 32, 4, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1114, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1114, 1109, 1108, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1313, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1313, 1309, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (22, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 16, 9, 2, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1218, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1218, 1211, 1208, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1219, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1219, 1212, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (24, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 18, 8, 4, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (27, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 21, 7, 7, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (26, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 20, 8, 6, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (29, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 16, 7, 9, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (20, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 14, 7, 12, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (23, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 17, 9, 3, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1104, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1104, 1103, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (25, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 19, 9, 5, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (32, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 2, 25, 23, 7, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (35, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 3, 28, 26, 4, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (34, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 3, 27, 25, 5, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (37, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 4, 30, 28, 6, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (28, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 21, 7, 8, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (31, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 2, 24, 22, 6, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (30, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 13, 8, 5, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (33, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 2, 26, 24, 6, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (8, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 23, 1, 6, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1112, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1112, 1108, 1104, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1115, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1115, 1110, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (4, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 8, 1, 2, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (7, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 22, 1, 5, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1108, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1108, 1105, 1108, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1111, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1111, 1107, 1108, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (19, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 13, 6, 11, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (18, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 12, 5, 10, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (21, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 15, 8, 13, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1116, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1116, 1110, 1108, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (17, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 12, 4, 9, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1118, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1118, 1111, 1108, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1316, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1316, 1310, 1308, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1319, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1319, 1312, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1101, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1101, 1101, 1101, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (3, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 7, 1, 6, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (2, 1, '2021-06-23 22:22:26.188079', '2021-06-23 22:22:26.188079', 1, 11, 2, 8, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (5, 1, '2021-06-23 22:24:34.467508', '2021-06-23 22:24:34.467508', 1, 9, 1, 3, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1106, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1106, 1104, 1108, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1109, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1109, 1106, 1105, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1, 1, '2021-06-30 19:42:03.031492', '2021-06-30 19:42:03.031492', 1, 5, 1, 1, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1102, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1102, 1101, 1102, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1105, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 101, 1105, 1104, 1106, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1211, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1211, 1207, 1208, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1210, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1210, 1207, 1206, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1213, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1213, 1209, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1204, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1204, 1203, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1207, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1207, 1205, 1206, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1206, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1206, 1204, 1208, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1209, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1209, 1206, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1314, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1314, 1309, 1308, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1317, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1317, 1311, 1305, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1308, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1308, 1305, 1308, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1311, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 103, 1311, 1307, 1308, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1212, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1212, 1208, 1204, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1215, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1215, 1210, 1205, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1214, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 102, 1214, 1209, 1208, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1016, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1016, 1010, 1008, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1019, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1019, 1012, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1018, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1018, 1011, 1008, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1012, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1012, 1008, 1004, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1015, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1015, 1010, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1014, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1014, 1009, 1008, '2000-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO demo.user_department VALUES (1017, 1, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 100, 1017, 1011, 1005, '2000-01-01 00:00:00', '2023-01-01 00:00:00');


--
-- Data for Name: access_control; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.access_control VALUES (1, 'Position', 'edit', 'view', false, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 13, NULL, 1, 'edit', 32, NULL);
INSERT INTO demo.access_control VALUES (2, 'Position', 'edit', 'view', true, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 11, NULL, 1, 'edit', 32, NULL);
INSERT INTO demo.access_control VALUES (3, 'Position', 'edit', 'view', false, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 10, NULL, 1, 'edit', 34, NULL);
INSERT INTO demo.access_control VALUES (4, 'Position', 'edit', 'view', true, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 16, NULL, 1, 'edit', 34, NULL);
INSERT INTO demo.access_control VALUES (5, 'Position', 'view', 'view', false, true, true, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 8, NULL, 1, 'view', 35, NULL);
INSERT INTO demo.access_control VALUES (6, 'Position', 'deny', 'edit', false, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 6, NULL, 1, 'deny', 36, NULL);
INSERT INTO demo.access_control VALUES (7, 'Position', 'deny', 'edit', false, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 3, NULL, 1, 'deny', 37, NULL);
INSERT INTO demo.access_control VALUES (8, 'Position', 'deny', 'edit', false, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 15, NULL, 1, 'deny', NULL, NULL);
INSERT INTO demo.access_control VALUES (9, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 15, 43, 1, 'edit', 34, NULL);
INSERT INTO demo.access_control VALUES (10, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 15, 2, 1, 'deny', 32, NULL);
INSERT INTO demo.access_control VALUES (11, 'UserDepartment', 'deny', 'deny', false, false, false, 1, '2021-12-01 00:00:00', NULL, '2021-12-01 00:00:00', NULL, NULL, 15, 3, 1, 'deny', NULL, NULL);
INSERT INTO demo.access_control VALUES (1001, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1001, NULL, 100, 'edit', 62, NULL);
INSERT INTO demo.access_control VALUES (1002, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1002, NULL, 100, 'view', 62, NULL);
INSERT INTO demo.access_control VALUES (1003, 'Position', 'edit', 'view', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1003, NULL, 100, 'view', 62, NULL);
INSERT INTO demo.access_control VALUES (1004, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1004, NULL, 100, 'view', 64, NULL);
INSERT INTO demo.access_control VALUES (1005, 'Position', 'view', 'view', false, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1005, NULL, 100, 'deny', 65, NULL);
INSERT INTO demo.access_control VALUES (1006, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1006, NULL, 100, 'deny', 66, NULL);
INSERT INTO demo.access_control VALUES (1007, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1007, NULL, 100, 'deny', 66, NULL);
INSERT INTO demo.access_control VALUES (1008, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1008, NULL, 100, 'deny', 66, NULL);
INSERT INTO demo.access_control VALUES (1009, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1015, 100, 'deny', 62, NULL);
INSERT INTO demo.access_control VALUES (1010, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1016, 100, 'deny', 62, NULL);
INSERT INTO demo.access_control VALUES (1011, 'UserDepartment', 'deny', 'deny', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1017, 100, 'deny', 62, NULL);
INSERT INTO demo.access_control VALUES (1012, 'UserDepartment', 'edit', 'edit', true, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1019, 100, 'edit', 62, NULL);
INSERT INTO demo.access_control VALUES (1101, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1101, NULL, 101, 'edit', 68, NULL);
INSERT INTO demo.access_control VALUES (1102, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1102, NULL, 101, 'view', 68, NULL);
INSERT INTO demo.access_control VALUES (1103, 'Position', 'edit', 'view', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1103, NULL, 101, 'view', 68, NULL);
INSERT INTO demo.access_control VALUES (1104, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1104, NULL, 101, 'view', 70, NULL);
INSERT INTO demo.access_control VALUES (1105, 'Position', 'view', 'view', false, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1105, NULL, 101, 'deny', 71, NULL);
INSERT INTO demo.access_control VALUES (1106, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1106, NULL, 101, 'deny', 72, NULL);
INSERT INTO demo.access_control VALUES (1107, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1107, NULL, 101, 'deny', 72, NULL);
INSERT INTO demo.access_control VALUES (1108, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1108, NULL, 101, 'deny', 72, NULL);
INSERT INTO demo.access_control VALUES (1109, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1115, 101, 'deny', 68, NULL);
INSERT INTO demo.access_control VALUES (1110, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1116, 101, 'deny', 68, NULL);
INSERT INTO demo.access_control VALUES (1111, 'UserDepartment', 'deny', 'deny', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1117, 101, 'deny', 68, NULL);
INSERT INTO demo.access_control VALUES (1112, 'UserDepartment', 'edit', 'edit', true, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1119, 101, 'edit', 68, NULL);
INSERT INTO demo.access_control VALUES (1201, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1201, NULL, 102, 'edit', 74, NULL);
INSERT INTO demo.access_control VALUES (1202, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1202, NULL, 102, 'view', 74, NULL);
INSERT INTO demo.access_control VALUES (1203, 'Position', 'edit', 'view', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1203, NULL, 102, 'view', 74, NULL);
INSERT INTO demo.access_control VALUES (1204, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1204, NULL, 102, 'view', 76, NULL);
INSERT INTO demo.access_control VALUES (1205, 'Position', 'view', 'view', false, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1205, NULL, 102, 'deny', 77, NULL);
INSERT INTO demo.access_control VALUES (1206, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1206, NULL, 102, 'deny', 78, NULL);
INSERT INTO demo.access_control VALUES (1207, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1207, NULL, 102, 'deny', 78, NULL);
INSERT INTO demo.access_control VALUES (1208, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1208, NULL, 102, 'deny', 78, NULL);
INSERT INTO demo.access_control VALUES (1209, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1215, 102, 'deny', 74, NULL);
INSERT INTO demo.access_control VALUES (1210, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1216, 102, 'deny', 74, NULL);
INSERT INTO demo.access_control VALUES (1211, 'UserDepartment', 'deny', 'deny', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1217, 102, 'deny', 74, NULL);
INSERT INTO demo.access_control VALUES (1212, 'UserDepartment', 'edit', 'edit', true, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1219, 102, 'edit', 74, NULL);
INSERT INTO demo.access_control VALUES (1301, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1301, NULL, 103, 'edit', 80, NULL);
INSERT INTO demo.access_control VALUES (1302, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1302, NULL, 103, 'view', 80, NULL);
INSERT INTO demo.access_control VALUES (1303, 'Position', 'edit', 'view', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1303, NULL, 103, 'view', 80, NULL);
INSERT INTO demo.access_control VALUES (1304, 'Position', 'edit', 'view', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1304, NULL, 103, 'view', 82, NULL);
INSERT INTO demo.access_control VALUES (1305, 'Position', 'view', 'view', false, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1305, NULL, 103, 'deny', 83, NULL);
INSERT INTO demo.access_control VALUES (1306, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1306, NULL, 103, 'deny', 84, NULL);
INSERT INTO demo.access_control VALUES (1307, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1307, NULL, 103, 'deny', 84, NULL);
INSERT INTO demo.access_control VALUES (1308, 'Position', 'deny', 'edit', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 1308, NULL, 103, 'deny', 84, NULL);
INSERT INTO demo.access_control VALUES (1309, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1315, 103, 'deny', 80, NULL);
INSERT INTO demo.access_control VALUES (1310, 'UserDepartment', 'edit', 'deny', true, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1316, 103, 'deny', 80, NULL);
INSERT INTO demo.access_control VALUES (1311, 'UserDepartment', 'deny', 'deny', false, false, false, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1317, 103, 'deny', 80, NULL);
INSERT INTO demo.access_control VALUES (1312, 'UserDepartment', 'edit', 'edit', true, true, true, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 1319, 103, 'edit', 80, NULL);


--
-- Data for Name: account_display_title; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.account_display_title VALUES (1, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '売上原価', 'cost', NULL);
INSERT INTO demo.account_display_title VALUES (2, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '販売費', 'sellingExpense', NULL);
INSERT INTO demo.account_display_title VALUES (3, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '一般管理費', 'generalAdministrativeExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1001, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '売上原価', 'cost', NULL);
INSERT INTO demo.account_display_title VALUES (1002, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '販売費', 'sellingExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1003, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '一般管理費', 'generalAdministrativeExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1101, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '売上原価', 'cost', NULL);
INSERT INTO demo.account_display_title VALUES (1102, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '販売費', 'sellingExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1103, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '一般管理費', 'generalAdministrativeExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1201, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '売上原価', 'cost', NULL);
INSERT INTO demo.account_display_title VALUES (1202, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '販売費', 'sellingExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1203, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '一般管理費', 'generalAdministrativeExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1301, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '売上原価', 'cost', NULL);
INSERT INTO demo.account_display_title VALUES (1302, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '販売費', 'sellingExpense', NULL);
INSERT INTO demo.account_display_title VALUES (1303, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '一般管理費', 'generalAdministrativeExpense', NULL);


--
-- Data for Name: account_title; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--/

INSERT INTO demo.account_title VALUES (1, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '人件費', 'laborCost', NULL, 1);
INSERT INTO demo.account_title VALUES (2, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '外注費', NULL, NULL, 1);
INSERT INTO demo.account_title VALUES (3, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '広告宣伝費', NULL, NULL, 2);
INSERT INTO demo.account_title VALUES (4, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '販売手数料', NULL, NULL, 2);
INSERT INTO demo.account_title VALUES (5, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '地代家賃', NULL, NULL, 3);
INSERT INTO demo.account_title VALUES (6, 1, '2021-12-10 00:00:00', NULL, '2021-12-10 00:00:00', NULL, NULL, 1, '人件費(共通部門)', NULL, NULL, 3);
INSERT INTO demo.account_title VALUES (1001, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '人件費', 'laborCost', NULL, 1001);
INSERT INTO demo.account_title VALUES (1002, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '外注費', NULL, NULL, 1001);
INSERT INTO demo.account_title VALUES (1003, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '広告宣伝費', NULL, NULL, 1002);
INSERT INTO demo.account_title VALUES (1004, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '販売手数料', NULL, NULL, 1002);
INSERT INTO demo.account_title VALUES (1005, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '地代家賃', NULL, NULL, 1003);
INSERT INTO demo.account_title VALUES (1006, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 100, '人件費(共通部門)', NULL, NULL, 1003);
INSERT INTO demo.account_title VALUES (1101, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '人件費', 'laborCost', NULL, 1101);
INSERT INTO demo.account_title VALUES (1102, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '外注費', NULL, NULL, 1101);
INSERT INTO demo.account_title VALUES (1103, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '広告宣伝費', NULL, NULL, 1102);
INSERT INTO demo.account_title VALUES (1104, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '販売手数料', NULL, NULL, 1102);
INSERT INTO demo.account_title VALUES (1105, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '地代家賃', NULL, NULL, 1103);
INSERT INTO demo.account_title VALUES (1106, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 101, '人件費(共通部門)', NULL, NULL, 1103);
INSERT INTO demo.account_title VALUES (1201, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '人件費', 'laborCost', NULL, 1201);
INSERT INTO demo.account_title VALUES (1202, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '外注費', NULL, NULL, 1201);
INSERT INTO demo.account_title VALUES (1203, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '広告宣伝費', NULL, NULL, 1202);
INSERT INTO demo.account_title VALUES (1204, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '販売手数料', NULL, NULL, 1202);
INSERT INTO demo.account_title VALUES (1205, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '地代家賃', NULL, NULL, 1203);
INSERT INTO demo.account_title VALUES (1206, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 102, '人件費(共通部門)', NULL, NULL, 1203);
INSERT INTO demo.account_title VALUES (1301, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '人件費', 'laborCost', NULL, 1301);
INSERT INTO demo.account_title VALUES (1302, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '外注費', NULL, NULL, 1301);
INSERT INTO demo.account_title VALUES (1303, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '広告宣伝費', NULL, NULL, 1302);
INSERT INTO demo.account_title VALUES (1304, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '販売手数料', NULL, NULL, 1302);
INSERT INTO demo.account_title VALUES (1305, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '地代家賃', NULL, NULL, 1303);
INSERT INTO demo.account_title VALUES (1306, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, 103, '人件費(共通部門)', NULL, NULL, 1303);


--
-- Data for Name: business_year; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.business_year VALUES (1, 2018, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2018年度', 2019, 3, 31, 2018);
INSERT INTO demo.business_year VALUES (2, 2019, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2019年度', 2020, 3, 31, 2019);
INSERT INTO demo.business_year VALUES (3, 2020, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2020年度', 2021, 3, 31, 2020);
INSERT INTO demo.business_year VALUES (4, 2021, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2021年度', 2022, 3, 31, 2021);
INSERT INTO demo.business_year VALUES (5, 2022, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2022年度', 2023, 3, 31, 2022);
INSERT INTO demo.business_year VALUES (6, 2023, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2023年度', 2024, 3, 31, 2023);
INSERT INTO demo.business_year VALUES (7, 2024, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2024年度', 2025, 3, 31, 2024);
INSERT INTO demo.business_year VALUES (8, 2025, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2025年度', 2026, 3, 31, 2025);
INSERT INTO demo.business_year VALUES (9, 2026, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2026年度', 2027, 3, 31, 2026);
INSERT INTO demo.business_year VALUES (10, 2027, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2027年度', 2028, 3, 31, 2027);
INSERT INTO demo.business_year VALUES (11, 2028, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2028年度', 2029, 3, 31, 2028);
INSERT INTO demo.business_year VALUES (12, 2029, 4, 1, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, NULL, 1, '2029年度', 2030, 3, 31, 2029);
INSERT INTO demo.business_year VALUES (1001, 2021, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2022, 3, 31, 2021);
INSERT INTO demo.business_year VALUES (1002, 2022, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2023, 3, 31, 2022);
INSERT INTO demo.business_year VALUES (1003, 2023, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2024, 3, 31, 2023);
INSERT INTO demo.business_year VALUES (1004, 2024, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2025, 3, 31, 2024);
INSERT INTO demo.business_year VALUES (1005, 2025, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2026, 3, 31, 2025);
INSERT INTO demo.business_year VALUES (1006, 2026, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2027, 3, 31, 2026);
INSERT INTO demo.business_year VALUES (1007, 2027, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2028, 3, 31, 2027);
INSERT INTO demo.business_year VALUES (1008, 2028, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2029, 3, 31, 2028);
INSERT INTO demo.business_year VALUES (1009, 2029, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2030, 3, 31, 2029);
INSERT INTO demo.business_year VALUES (1010, 2030, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 100, '', 2031, 3, 31, 2030);
INSERT INTO demo.business_year VALUES (1101, 2021, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2022, 3, 31, 2021);
INSERT INTO demo.business_year VALUES (1102, 2022, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2023, 3, 31, 2022);
INSERT INTO demo.business_year VALUES (1103, 2023, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2024, 3, 31, 2023);
INSERT INTO demo.business_year VALUES (1104, 2024, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2025, 3, 31, 2024);
INSERT INTO demo.business_year VALUES (1105, 2025, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2026, 3, 31, 2025);
INSERT INTO demo.business_year VALUES (1106, 2026, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2027, 3, 31, 2026);
INSERT INTO demo.business_year VALUES (1107, 2027, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2028, 3, 31, 2027);
INSERT INTO demo.business_year VALUES (1108, 2028, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2029, 3, 31, 2028);
INSERT INTO demo.business_year VALUES (1109, 2029, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2030, 3, 31, 2029);
INSERT INTO demo.business_year VALUES (1110, 2030, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 101, '', 2031, 3, 31, 2030);
INSERT INTO demo.business_year VALUES (1201, 2021, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2022, 3, 31, 2021);
INSERT INTO demo.business_year VALUES (1202, 2022, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2023, 3, 31, 2022);
INSERT INTO demo.business_year VALUES (1203, 2023, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2024, 3, 31, 2023);
INSERT INTO demo.business_year VALUES (1204, 2024, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2025, 3, 31, 2024);
INSERT INTO demo.business_year VALUES (1205, 2025, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2026, 3, 31, 2025);
INSERT INTO demo.business_year VALUES (1206, 2026, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2027, 3, 31, 2026);
INSERT INTO demo.business_year VALUES (1207, 2027, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2028, 3, 31, 2027);
INSERT INTO demo.business_year VALUES (1208, 2028, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2029, 3, 31, 2028);
INSERT INTO demo.business_year VALUES (1209, 2029, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2030, 3, 31, 2029);
INSERT INTO demo.business_year VALUES (1210, 2030, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 102, '', 2031, 3, 31, 2030);
INSERT INTO demo.business_year VALUES (1301, 2021, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2022, 3, 31, 2021);
INSERT INTO demo.business_year VALUES (1302, 2022, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2023, 3, 31, 2022);
INSERT INTO demo.business_year VALUES (1303, 2023, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2024, 3, 31, 2023);
INSERT INTO demo.business_year VALUES (1304, 2024, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2025, 3, 31, 2024);
INSERT INTO demo.business_year VALUES (1305, 2025, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2026, 3, 31, 2025);
INSERT INTO demo.business_year VALUES (1306, 2026, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2027, 3, 31, 2026);
INSERT INTO demo.business_year VALUES (1307, 2027, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2028, 3, 31, 2027);
INSERT INTO demo.business_year VALUES (1308, 2028, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2029, 3, 31, 2028);
INSERT INTO demo.business_year VALUES (1309, 2029, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2030, 3, 31, 2029);
INSERT INTO demo.business_year VALUES (1310, 2030, 4, 1, 1, '2021-06-21 00:00:00', 0, '2021-06-21 00:00:00', NULL, NULL, NULL, 103, '', 2031, 3, 31, 2030);


--
-- Data for Name: annual_plan; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.annual_plan VALUES (1, 'approved', 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 1, 1, 3);
INSERT INTO demo.annual_plan VALUES (2, 'approved', 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 1, 2, 3);
INSERT INTO demo.annual_plan VALUES (3, 'approved', 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 1, 3, 3);
INSERT INTO demo.annual_plan VALUES (4, 'inProgress', 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 1, 4, 3);
INSERT INTO demo.annual_plan VALUES (5, 'inProgress', 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 1, 5, 3);


--
-- Data for Name: approval_email_template; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.approval_email_template VALUES (7, '[本文] 承認依頼メールテンプレート (承認依頼) 1_7', '[本文] 承認依頼メールテンプレート (承認依頼) 1_7', '[本文] 承認依頼メールテンプレート (承認) 1_7', '[本文] 承認依頼メールテンプレート (却下) 1_7', '[本文] 承認依頼メールテンプレート (依頼取消) 1_7', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, '[件名] 承認依頼メールテンプレート (承認依頼) 1_7', '[件名] 承認依頼メールテンプレート (次の人) 1_7', '[件名] 承認依頼メールテンプレート (承認) 1_7', '[件名] 承認依頼メールテンプレート (却下) 1_7', '[件名] 承認依頼メールテンプレート (依頼取消) 1_7');
INSERT INTO demo.approval_email_template VALUES (6, '[本文] 承認依頼メールテンプレート (承認依頼) 1_6', '[本文] 承認依頼メールテンプレート (承認依頼) 1_6', '[本文] 承認依頼メールテンプレート (承認) 1_6', '[本文] 承認依頼メールテンプレート (却下) 1_6', '[本文] 承認依頼メールテンプレート (依頼取消) 1_6', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, '[件名] 承認依頼メールテンプレート (承認依頼) 1_6', '[件名] 承認依頼メールテンプレート (次の人) 1_6', '[件名] 承認依頼メールテンプレート (承認) 1_6', '[件名] 承認依頼メールテンプレート (却下) 1_6', '[件名] 承認依頼メールテンプレート (依頼取消) 1_6');
INSERT INTO demo.approval_email_template VALUES (5, '[本文] 承認依頼メールテンプレート (承認依頼) 1_5', '[本文] 承認依頼メールテンプレート (承認依頼) 1_5', '[本文] 承認依頼メールテンプレート (承認) 1_5', '[本文] 承認依頼メールテンプレート (却下) 1_5', '[本文] 承認依頼メールテンプレート (依頼取消) 1_5', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, '[件名] 承認依頼メールテンプレート (承認依頼) 1_5', '[件名] 承認依頼メールテンプレート (次の人) 1_5', '[件名] 承認依頼メールテンプレート (承認) 1_5', '[件名] 承認依頼メールテンプレート (却下) 1_5', '[件名] 承認依頼メールテンプレート (依頼取消) 1_5');
INSERT INTO demo.approval_email_template VALUES (4, '[本文] 承認依頼メールテンプレート (承認依頼) 1_4', '[本文] 承認依頼メールテンプレート (承認依頼) 1_4', '[本文] 承認依頼メールテンプレート (承認) 1_4', '[本文] 承認依頼メールテンプレート (却下) 1_4', '[本文] 承認依頼メールテンプレート (依頼取消) 1_4', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, '[件名] 承認依頼メールテンプレート (承認依頼) 1_4', '[件名] 承認依頼メールテンプレート (次の人) 1_4', '[件名] 承認依頼メールテンプレート (承認) 1_4', '[件名] 承認依頼メールテンプレート (却下) 1_4', '[件名] 承認依頼メールテンプレート (依頼取消) 1_4');
INSERT INTO demo.approval_email_template VALUES (3, '[本文] 承認依頼メールテンプレート (承認依頼) 1_3', '[本文] 承認依頼メールテンプレート (承認依頼) 1_3', '[本文] 承認依頼メールテンプレート (承認) 1_3', '[本文] 承認依頼メールテンプレート (却下) 1_3', '[本文] 承認依頼メールテンプレート (依頼取消) 1_3', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, '[件名] 承認依頼メールテンプレート (承認依頼) 1_3', '[件名] 承認依頼メールテンプレート (次の人) 1_3', '[件名] 承認依頼メールテンプレート (承認) 1_3', '[件名] 承認依頼メールテンプレート (却下) 1_3', '[件名] 承認依頼メールテンプレート (依頼取消) 1_3');
INSERT INTO demo.approval_email_template VALUES (2, '[本文] 承認依頼メールテンプレート (承認依頼) 1_2', '[本文] 承認依頼メールテンプレート (承認依頼) 1_2', '[本文] 承認依頼メールテンプレート (承認) 1_2', '[本文] 承認依頼メールテンプレート (却下) 1_2', '[本文] 承認依頼メールテンプレート (依頼取消) 1_2', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, '[件名] 承認依頼メールテンプレート (承認依頼) 1_2', '[件名] 承認依頼メールテンプレート (次の人) 1_2', '[件名] 承認依頼メールテンプレート (承認) 1_2', '[件名] 承認依頼メールテンプレート (却下) 1_2', '[件名] 承認依頼メールテンプレート (依頼取消) 1_2');
INSERT INTO demo.approval_email_template VALUES (1, '[本文] 承認依頼メールテンプレート (承認依頼) 1_1', '[本文] 承認依頼メールテンプレート (次の人) 1_1', '[本文] 承認依頼メールテンプレート (承認) 1_1', '[本文] 承認依頼メールテンプレート (却下) 1_1', '[本文] 承認依頼メールテンプレート (依頼取消) 1_1', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, '[件名] 承認依頼メールテンプレート (承認依頼) 1_1', '[件名] 承認依頼メールテンプレート (次の人) 1_1', '[件名] 承認依頼メールテンプレート (承認) 1_1', '[件名] 承認依頼メールテンプレート (却下) 1_1', '[件名] 承認依頼メールテンプレート (依頼取消) 1_1');


--
-- Data for Name: approval_request_message_template; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.approval_request_message_template VALUES (1, '承認依頼テンプレート1_1', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_request_message_template VALUES (2, '承認依頼テンプレート1_2', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_request_message_template VALUES (3, '承認依頼テンプレート1_3', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_request_message_template VALUES (4, '承認依頼テンプレート1_4', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_request_message_template VALUES (5, '承認依頼テンプレート1_5', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_request_message_template VALUES (6, '承認依頼テンプレート1_6', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_request_message_template VALUES (7, '承認依頼テンプレート1_7', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1);


--
-- Data for Name: approval_category; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.approval_category VALUES (1, 'plan', '事業計画', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, 1, 1);
INSERT INTO demo.approval_category VALUES (2, 'plan_project', '事業計画 (企画)', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 2, 2, 1);
INSERT INTO demo.approval_category VALUES (3, 'plan_modification', '事業計画 (修正)', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 3, 3, 1);
INSERT INTO demo.approval_category VALUES (4, 'project', '企画', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 4, 4, 1);
INSERT INTO demo.approval_category VALUES (5, 'task', '課題', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 5, 5, 1);
INSERT INTO demo.approval_category VALUES (6, 'measure', '施策', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 6, 6, 1);
INSERT INTO demo.approval_category VALUES (7, 'proposal_evaluation', '提案評価', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 7, 7, 1);


--
-- Data for Name: approval_flow; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.approval_flow VALUES (1, '承認経路 1_1', '承認経路 説明 1_1', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (2, '承認経路 1_2', '承認経路 説明 1_2', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (3, '承認経路 1_3', '承認経路 説明 1_3', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (4, '承認経路 1_4', '承認経路 説明 1_4', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (5, '承認経路 1_5', '承認経路 説明 1_5', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (6, '承認経路 1_6', '承認経路 説明 1_6', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (7, '承認経路 1_7', '承認経路 説明 1_7', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (11, '承認経路サンプル', '承認経路サンプル 説明', 1, 5, 5, '2021-09-15 18:01:19.58996', '2021-09-15 18:01:19.58996', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (12, '承認経路サンプル', '承認経路サンプル 説明', 1, 5, 5, '2021-09-15 18:05:39.556475', '2021-09-15 18:05:39.556475', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (13, '承認経路サンプル', '承認経路サンプル 説明', 1, 5, 5, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (14, '承認経路サンプル', '承認経路サンプル 説明', 1, 5, 5, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 1);
INSERT INTO demo.approval_flow VALUES (10, '承認経路サンプル', '承認経路サンプル 説明', 1, 5, 5, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 1);


--
-- Data for Name: approval_step; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.approval_step VALUES (1, '承認ステップ 1_1', 1, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 1, 1);
INSERT INTO demo.approval_step VALUES (2, '承認ステップ 1_2', 2, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 2, 1);
INSERT INTO demo.approval_step VALUES (3, '承認ステップ 1_3', 3, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 3, 1);
INSERT INTO demo.approval_step VALUES (4, '承認ステップ 1_4', 1, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 4, 1);
INSERT INTO demo.approval_step VALUES (5, '承認ステップ 1_5', 2, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 5, 1);
INSERT INTO demo.approval_step VALUES (6, '承認ステップ 1_6', 3, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 6, 1);
INSERT INTO demo.approval_step VALUES (7, '承認ステップ 1_7', 1, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 7, 1);
INSERT INTO demo.approval_step VALUES (8, '承認ステップ 1_8', 2, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 8, 1);
INSERT INTO demo.approval_step VALUES (9, '承認ステップ 1_9', 3, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 9, 1);
INSERT INTO demo.approval_step VALUES (10, '承認ステップ 1_10', 1, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 4, 10, 1);
INSERT INTO demo.approval_step VALUES (11, '承認ステップ 1_11', 2, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 4, 11, 1);
INSERT INTO demo.approval_step VALUES (12, '承認ステップ 1_11', 1, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 5, 12, 1);
INSERT INTO demo.approval_step VALUES (13, '承認ステップ 1_12', 2, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 5, 13, 1);
INSERT INTO demo.approval_step VALUES (14, '承認ステップ 1_13', 1, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 6, 14, 1);
INSERT INTO demo.approval_step VALUES (15, '承認ステップ 1_14', 2, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 6, 15, 1);
INSERT INTO demo.approval_step VALUES (16, '承認ステップ 1_15', 3, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 6, 16, 1);
INSERT INTO demo.approval_step VALUES (17, '承認ステップ 1_16', 1, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 7, 14, 1);
INSERT INTO demo.approval_step VALUES (18, '承認ステップ 1_17', 2, 'atLeastOne', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 7, 15, 1);
INSERT INTO demo.approval_step VALUES (19, '承認ステップ 1_18', 3, 'everyone', false, false, 'departments', false, 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 7, 16, 1);
INSERT INTO demo.approval_step VALUES (68, '所属組織', 0, 'atLeastOne', false, false, 'departmentsAndRecentSuperior', false, 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 14, NULL, 1);
INSERT INTO demo.approval_step VALUES (69, '経営担当', 1, 'everyone', false, false, 'departments', false, 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 14, NULL, 1);
INSERT INTO demo.approval_step VALUES (70, '管理担当', 2, 'atLeastOne', false, false, 'departmentsAndAnySuperior', false, 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 14, NULL, 1);
INSERT INTO demo.approval_step VALUES (71, '決裁者', 3, 'atLeastOne', false, false, 'departments', false, 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 14, NULL, 1);
INSERT INTO demo.approval_step VALUES (65, '承認ステップ 65', 1, 'everyone', false, false, 'departments', false, 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 13, 2, 1);
INSERT INTO demo.approval_step VALUES (61, '承認ステップ 61', 1, 'atLeastOne', false, false, 'departmentsAndAnySuperior', false, 2, NULL, NULL, '2021-09-15 18:01:19.58996', '2021-09-15 18:01:19.58996', NULL, NULL, 11, 1, 1);
INSERT INTO demo.approval_step VALUES (67, '承認ステップ 67', 3, 'atLeastOne', false, false, 'departments', false, 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 13, 2, 1);
INSERT INTO demo.approval_step VALUES (56, '承認ステップ 56', 0, 'atLeastOne', false, false, 'departmentsAndAnySuperior', false, 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 10, 1, 1);
INSERT INTO demo.approval_step VALUES (59, '承認ステップ 59', 3, 'everyone', false, false, 'departments', false, 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 10, 1, 1);
INSERT INTO demo.approval_step VALUES (58, '承認ステップ 58', 2, 'atLeastOne', false, false, 'departments', false, 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 10, 1, 1);
INSERT INTO demo.approval_step VALUES (60, '承認ステップ 60', 0, 'everyone', false, false, 'departments', false, 2, NULL, NULL, '2021-09-15 18:01:19.58996', '2021-09-15 18:01:19.58996', NULL, NULL, 11, 1, 1);
INSERT INTO demo.approval_step VALUES (64, '承認ステップ 64', 0, 'atLeastOne', false, false, 'departments', false, 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 13, 2, 1);
INSERT INTO demo.approval_step VALUES (57, '承認ステップ 57', 1, 'atLeastOne', false, false, 'departments', false, 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 10, 1, 1);
INSERT INTO demo.approval_step VALUES (62, '承認ステップ 62', 0, 'atLeastOne', false, false, 'departmentsAndAnySuperior', false, 2, NULL, NULL, '2021-09-15 18:05:39.556475', '2021-09-15 18:05:39.556475', NULL, NULL, 12, 1, 1);
INSERT INTO demo.approval_step VALUES (63, '承認ステップ 63', 1, 'everyone', false, false, 'departments', false, 2, NULL, NULL, '2021-09-15 18:05:39.556475', '2021-09-15 18:05:39.556475', NULL, NULL, 12, 1, 1);
INSERT INTO demo.approval_step VALUES (66, '承認ステップ 66', 2, 'atLeastOne', false, false, 'departmentsAndAnySuperior', false, 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 13, 2, 1);


--
-- Data for Name: approval_step_assignee; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.approval_step_assignee VALUES (2, '', 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 1, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (3, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 1, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (4, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 4, 2, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (5, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 5, 2, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (6, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 6, 3, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (7, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 7, 3, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (8, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 8, 4, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (10, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 5, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (12, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 4, 6, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (13, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 5, 6, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (16, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 9, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (17, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 4, 9, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (20, NULL, 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 11, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (26, '', 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 16, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (34, '', 'processing', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 8, 19, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (260, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 5, 56, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (261, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 3, 56, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (262, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 5, 57, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (263, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 3, 57, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (264, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 5, 58, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (265, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 3, 58, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (266, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 5, 59, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (267, NULL, 'processing', 2, NULL, NULL, '2021-09-13 15:21:19.711222', '2021-09-13 15:21:19.711222', NULL, NULL, 3, 59, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (268, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:01:19.58996', '2021-09-15 18:01:19.58996', NULL, NULL, 4, 60, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (269, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:01:19.58996', '2021-09-15 18:01:19.58996', NULL, NULL, 2, 60, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (35, NULL, 'processing', 1, NULL, NULL, '2021-09-13 06:15:12.442556', '2021-09-13 06:15:12.442556', '2021-09-13 15:15:34', NULL, NULL, NULL, 2, NULL);
INSERT INTO demo.approval_step_assignee VALUES (270, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:01:19.58996', '2021-09-15 18:01:19.58996', NULL, NULL, 4, 61, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (271, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:01:19.58996', '2021-09-15 18:01:19.58996', NULL, NULL, 2, 61, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (272, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:05:39.556475', '2021-09-15 18:05:39.556475', NULL, NULL, 5, 62, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (273, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:05:39.556475', '2021-09-15 18:05:39.556475', NULL, NULL, 4, 62, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (274, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:05:39.556475', '2021-09-15 18:05:39.556475', NULL, NULL, 5, 63, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (275, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:05:39.556475', '2021-09-15 18:05:39.556475', NULL, NULL, 4, 63, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (276, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 2, 64, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (278, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 2, 65, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (280, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 2, 66, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (282, NULL, 'processing', 2, NULL, NULL, '2021-09-15 18:08:02.711801', '2021-09-15 18:08:02.711801', NULL, NULL, 2, 67, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (284, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 1, 68, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (285, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 2, 69, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (286, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 1, 70, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (287, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 7, 70, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (288, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 6, 70, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (289, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 5, 70, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (290, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 4, 70, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (291, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 8, 70, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (292, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 3, 70, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (293, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 2, 71, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (294, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 4, 71, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (295, NULL, 'processing', 2, NULL, NULL, '2021-09-17 10:30:51.620546', '2021-09-17 10:30:51.620546', NULL, NULL, 3, 71, 1, NULL);
INSERT INTO demo.approval_step_assignee VALUES (283, 'コメント コメント コメント', 'approved', 3, 5, 5, '2021-09-15 18:08:02.711801', '2021-09-15 18:49:55.435568', NULL, NULL, 1, 67, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (33, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 7, 19, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (32, 'コメント コメント コメント', 'rejected', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 6, 18, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (31, 'コメント コメント コメント', 'rejected', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 5, 18, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (30, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 4, 18, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (29, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 17, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (28, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 17, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (27, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 17, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (25, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 15, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (24, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 14, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (23, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 13, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (22, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 13, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (21, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 12, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (1, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 1, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (9, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 4, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (11, 'コメント コメント コメント', 'rejected', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 3, 5, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (14, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 7, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (15, 'コメント コメント コメント', 'approved', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 8, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (18, 'コメント コメント コメント', 'rejected', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 1, 10, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (19, 'コメント コメント コメント', 'rejected', 1, 5, 5, '2021-09-09 00:00:00', '2021-09-09 00:00:00', NULL, NULL, 2, 10, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (281, 'コメント コメント コメント', 'canceled', 3, 5, 5, '2021-09-15 18:08:02.711801', '2021-09-15 18:49:39.948573', NULL, NULL, 1, 66, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (279, 'コメント コメント コメント', 'approved', 3, 5, 5, '2021-09-15 18:08:02.711801', '2021-09-15 18:48:45.087068', NULL, NULL, 1, 65, 1, '2021-09-15 18:08:02.711801');
INSERT INTO demo.approval_step_assignee VALUES (277, 'コメント コメント コメント', 'rejected', 5, 5, 5, '2021-09-15 18:08:02.711801', '2021-09-15 18:48:34.415712', NULL, NULL, 1, 64, 1, '2021-09-15 18:08:02.711801');


--
-- Data for Name: approval_history; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.measure VALUES (2, 'MESR-1', '施策案名1_1_1_1_1', '施策の概要1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01', '2021-12-01', NULL, NULL, NULL, 3, '2021-08-20 19:21:32.934718', 5, '2021-08-20 20:05:04.151036', 5, NULL, NULL, 1);
INSERT INTO demo.measure VALUES (3, 'MESR-2', '施策案名1_1_1_1_2', '施策の概要', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-01', '2021-12-01', NULL, NULL, NULL, 2, '2021-08-20 19:22:47.310411', 5, '2021-08-20 20:05:04.151036', 5, NULL, NULL, 1);
INSERT INTO demo.measure VALUES (5, 'MESR-4', '施策案名1_1_1_2_1', '施策の概要1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01', '2022-01-01', NULL, NULL, NULL, 2, '2021-08-20 19:25:24.48674', 5, '2021-08-20 20:05:04.151036', 5, NULL, NULL, 1);
INSERT INTO demo.measure VALUES (4, 'MESR-3', '施策案名1_1_2_1', '施策の概要', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-01', '2022-01-01', NULL, NULL, NULL, 7, '2021-08-20 19:23:58.088029', 5, '2021-08-20 20:05:04.151036', 5, NULL, NULL, 1);


--
-- Data for Name: project; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.project VALUES (3, 'PROJ-1', 'doing', '前提条件2_1', '影響2_1', 25, 32, 24, 'middle', '企画名2_1', '2021-07-11', '概要2_1', 2, '2021-07-06 19:14:42.956244', NULL, '2021-07-06 19:17:32.848296', NULL, NULL, NULL, 2);
INSERT INTO demo.project VALUES (4, 'PROJ-2', 'done', '前提条件2_2', '影響2_2', 26, 32, 23, 'high', '企画名2_2', '2021-08-01', '概要2_2', 2, '2021-07-06 19:18:55.780019', NULL, '2021-07-06 19:19:53.067904', NULL, NULL, NULL, 2);
INSERT INTO demo.project VALUES (2, 'PROJ-2', 'doing', '前提条件1_2', '影響1_2更新', 9, 6, 4, 'low', '企画名1_2', '2021-10-01', '概要1_2', 4, '2021-07-06 19:01:02.481666', NULL, '2021-08-20 18:55:28.222191', 5, NULL, NULL, 1);
INSERT INTO demo.project VALUES (1, 'PROJ-1', 'doing', '前提条件1_1', '影響1_1', 5, 3, 1, 'high', '企画名1_1', '2021-09-01', '概要1_1', 6, '2021-07-06 16:28:23.560222', NULL, '2021-09-14 10:23:30.448819', 15, NULL, NULL, 1);
INSERT INTO demo.project VALUES (5, 'PROJ-3', 'doing', NULL, NULL, 15, 21, 8, 'middle', 'te', '2021-09-14', NULL, 6, '2021-09-14 16:10:48.35279', 15, '2021-09-14 16:14:10.156323', 15, NULL, NULL, 1);
INSERT INTO demo.project VALUES (6, 'PROJ-4', 'planning', NULL, NULL, 5, 1, 1, 'middle', 'test', '2021-09-15', NULL, 1, '2021-09-15 19:25:10.871817', 5, '2021-09-15 19:25:10.871817', 5, NULL, NULL, 1);
INSERT INTO demo.project VALUES (7, 'PROJ-5', 'planning', NULL, NULL, 5, 2, 1, 'middle', 'www', '2021-09-15', NULL, 1, '2021-09-15 19:26:04.41785', 5, '2021-09-15 19:26:04.41785', 5, NULL, NULL, 1);


--
-- Data for Name: task; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.task VALUES (2, 'TASK-2', '課題名1_1_2(目標)', '2021-07-16 12:55:50.508379', 5, '2', 'registered', '2021-10-01', '2021-10-31', 1, 7, 5, 5, '2021-07-16 12:55:50.508379', '2021-08-20 18:53:37.186356', NULL, NULL, 1);
INSERT INTO demo.task VALUES (3, 'TASK-3', '課題名1_1_3(ToDo)', '2021-07-16 12:55:58.516594', 5, '3', 'registered', '2021-11-01', '2021-11-30', 1, 5, 5, 5, '2021-07-16 12:55:58.516594', '2021-08-20 18:53:43.597509', NULL, NULL, 1);
INSERT INTO demo.task VALUES (4, 'TASK-4', '課題名1_1_4(対応方針を検討)', '2021-07-16 13:01:55.660819', 5, '4', 'registered', '2021-12-01', '2021-12-31', 1, 10, 5, 5, '2021-07-16 13:01:55.660819', '2021-08-20 19:00:00.703887', NULL, NULL, 1);
INSERT INTO demo.task VALUES (5, 'TASK-5', '課題名1_1_5(調査)', '2021-07-16 13:02:02.712324', 5, '5', 'registered', '2022-01-01', '2022-01-31', 1, 7, 5, 5, '2021-07-16 13:02:02.712324', '2021-08-20 19:01:12.229194', NULL, NULL, 1);
INSERT INTO demo.task VALUES (6, 'TASK-6', '課題名1_1_6(その他)', '2021-07-16 13:02:10.212373', 5, '6', 'registered', '2022-02-01', '2022-02-28', 1, 4, 5, 5, '2021-07-16 13:02:10.212373', '2021-08-20 19:02:24.741137', NULL, NULL, 1);
INSERT INTO demo.task VALUES (1, 'TASK-1', '課題名1_1_1(問題)', '2021-07-16 12:55:41.691547', 5, '1', 'registered', '2021-09-01', '2021-12-01', 1, 5, 5, 5, '2021-07-16 12:55:41.691547', '2021-08-20 20:05:04.151036', NULL, NULL, 1);
INSERT INTO demo.task VALUES (7, 'TASK-7', 'test', '2021-09-14 16:12:32.292', 15, '1', 'fixedMeasure', '2021-09-14', '2021-09-14', 5, 2, 15, 15, '2021-09-14 16:12:32.286649', '2021-09-14 16:22:24.422187', NULL, NULL, 1);
INSERT INTO demo.task VALUES (8, 'TASK-8', 'aokejkdj', '2021-09-14 16:16:25.581', 15, '1', 'planningCounter', '2021-09-14', '2021-09-14', 5, 3, 15, 15, '2021-09-14 16:16:25.57496', '2021-09-14 16:22:54.11577', NULL, NULL, 1);


--
-- Data for Name: approval_request; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.approval_request VALUES (5, 'APPR-5', '承認依頼 メッセージ 1_5', '2021-10-30', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, 3, 1, NULL, NULL, NULL, 5, 'waitingForApprove');
INSERT INTO demo.approval_request VALUES (4, 'APPR-4', '承認依頼 メッセージ 1_4', '2021-12-01', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, 2, 1, NULL, NULL, NULL, 4, 'waitingForApprove');
INSERT INTO demo.approval_request VALUES (2, 'APPR-2', '承認依頼 メッセージ 1_2', '2021-10-20', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, 2, 1, NULL, NULL, NULL, 2, 'waitingForApprove');
INSERT INTO demo.approval_request VALUES (1, 'APPR-1', '承認依頼 メッセージ 1_1', '2021-09-21', 2, 5, 15, '2021-09-08 00:00:00', '2021-09-15 11:16:30.472284', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 1, 'canceled');
INSERT INTO demo.approval_request VALUES (6, 'APPR-6', '承認依頼 メッセージ 1_6', '2021-09-06', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, 4, 1, NULL, NULL, NULL, 6, 'waitingForApprove');
INSERT INTO demo.approval_request VALUES (3, 'APPR-3', '承認依頼 メッセージ 1_3', '2021-11-01', 2, 5, 15, '2021-09-08 00:00:00', '2021-09-15 09:37:47.868743', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 3, 'canceled');
INSERT INTO demo.approval_request VALUES (7, 'APPR-7', '承認依頼 メッセージ 1_7', '2021-09-13', 1, 5, 5, '2021-09-08 00:00:00', '2021-09-08 00:00:00', NULL, NULL, 1, 5, 1, NULL, NULL, NULL, 14, 'waitingForApprove');


--
-- Data for Name: approval_step_organization; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: approval_step_position; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: approved_annual_plan_snapshot; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: badget; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: issue; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.issue VALUES (1, 1, 'occurred', 0, 'once', '2', '問題1', '影響3', 1, 5, 5, '2021-08-20 18:49:09.294329', '2021-08-20 18:49:09.294329', NULL, NULL, 1);
INSERT INTO demo.issue VALUES (2, 7, 'occurred', 0, 'once', '', 'eee', 'ffff', 4, 15, 15, '2021-09-14 16:12:32.286649', '2021-09-14 16:22:24.422187', NULL, NULL, 1);
INSERT INTO demo.issue VALUES (3, 8, 'occurred', 0, 'once', '', 'e', 'd', 6, 15, 15, '2021-09-14 16:16:25.57496', '2021-09-14 16:22:54.11577', NULL, NULL, 1);


--
-- Data for Name: cause; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.cause VALUES (1, 1, '原因4', true, 2, 5, 5, '2021-08-20 18:49:09.294329', '2021-08-20 18:49:09.294329', NULL, NULL, 1);
INSERT INTO demo.cause VALUES (2, 1, '原因6', false, 2, 5, 5, '2021-08-20 18:49:09.294329', '2021-08-20 18:49:09.294329', NULL, NULL, 1);
INSERT INTO demo.cause VALUES (6, 2, 'aaaa', false, 2, 15, 15, '2021-09-14 16:22:24.365649', '2021-09-14 16:22:24.422187', NULL, NULL, 1);
INSERT INTO demo.cause VALUES (7, 3, 'd', false, 2, 15, 15, '2021-09-14 16:22:54.066049', '2021-09-14 16:22:54.11577', NULL, NULL, 1);


--
-- Data for Name: cause_condition; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.cause_condition VALUES (1, 1, '解決条件5', 1, 5, 5, '2021-08-20 18:49:09.294329', '2021-08-20 18:49:09.294329', NULL, NULL, 1);
INSERT INTO demo.cause_condition VALUES (2, 2, '解決条件7', 1, 5, 5, '2021-08-20 18:49:09.294329', '2021-08-20 18:49:09.294329', NULL, NULL, 1);
INSERT INTO demo.cause_condition VALUES (6, 6, 'fff', 2, 15, 15, '2021-09-14 16:22:24.365649', '2021-09-14 16:22:24.422187', NULL, NULL, 1);
INSERT INTO demo.cause_condition VALUES (7, 7, 'd', 2, 15, 15, '2021-09-14 16:22:54.066049', '2021-09-14 16:22:54.11577', NULL, NULL, 1);


--
-- Data for Name: cause_measures_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.cause_measures_measure VALUES (2, 5);
INSERT INTO demo.cause_measures_measure VALUES (1, 2);
INSERT INTO demo.cause_measures_measure VALUES (1, 3);


--
-- Data for Name: company; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.company VALUES (1, '1', '事業者1', '000-0001', '札幌市1', '担当者1', '000-0000-0001', 'company1@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (2, '2', '事業者2', '000-0002', '札幌市2', '担当者2', '000-0000-0002', 'company2@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (3, '3', '事業者3', '000-0003', '札幌市3', '担当者3', '000-0000-0003', 'company3@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (4, '4', '事業者4', '000-0004', '札幌市4', '担当者4', '000-0000-0004', 'company4@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (5, '5', '事業者5', '000-0005', '札幌市5', '担当者5', '000-0000-0005', 'company5@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (6, '6', '事業者6', '000-0006', '札幌市6', '担当者6', '000-0000-0006', 'company6@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (7, '7', '事業者7', '000-0007', '札幌市7', '担当者7', '000-0000-0007', 'company7@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (8, '8', '事業者8', '000-0008', '札幌市8', '担当者8', '000-0000-0008', 'company8@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (9, '9', '事業者9', '000-0009', '札幌市9', '担当者9', '000-0000-0009', 'company9@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (10, '10', '事業者10', '000-0010', '札幌市10', '担当者10', '000-0000-0010', 'company10@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (11, '11', '事業者11', '000-0011', '札幌市11', '担当者11', '000-0000-0011', 'company11@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (12, '12', '事業者12', '000-0012', '札幌市12', '担当者12', '000-0000-0012', 'company12@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (13, '13', '事業者13', '000-0013', '札幌市13', '担当者13', '000-0000-0013', 'company13@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (14, '14', '事業者14', '000-0014', '札幌市14', '担当者14', '000-0000-0014', 'company14@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (15, '15', '事業者15', '000-0015', '札幌市15', '担当者15', '000-0000-0015', 'company15@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (16, '16', '事業者16', '000-0016', '札幌市16', '担当者16', '000-0000-0016', 'company16@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (17, '17', '事業者17', '000-0017', '札幌市17', '担当者17', '000-0000-0017', 'company17@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (18, '18', '事業者18', '000-0018', '札幌市18', '担当者18', '000-0000-0018', 'company18@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (19, '19', '事業者19', '000-0019', '札幌市19', '担当者19', '000-0000-0019', 'company19@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.company VALUES (20, '20', '事業者20', '000-0020', '札幌市20', '担当者20', '000-0000-0020', 'company20@example.com', 1, '2021-07-09 00:00:00', NULL, '2021-07-09 00:00:00', NULL, NULL, NULL, 1);


--
-- Data for Name: investigation; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.investigation VALUES (1, 5, '調査内容1', 1, 5, 5, '2021-08-20 19:01:00.984407', '2021-08-20 19:01:00.984407', NULL, 1);


--
-- Data for Name: investigation_measures_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: it_asset_type; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.it_asset_type VALUES (1, 'サーバー', 1, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (2, 'パソコン', 2, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (3, 'ソフトウェア', 3, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (4, '周辺機器', 4, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (5, 'プリンター', 5, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (6, '消耗品', 6, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (7, '携帯電話・スマホ', 7, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (8, 'タブレット', 8, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (9, 'Wi-Fi', 9, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.it_asset_type VALUES (10, 'その他', 10, 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);


--
-- Data for Name: system; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.system VALUES (1, 'システム 1', 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.system VALUES (2, 'システム 2', 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.system VALUES (3, 'システム 3', 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.system VALUES (4, 'システム 4', 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);
INSERT INTO demo.system VALUES (5, 'システム 5', 1, NULL, NULL, '2021-08-15 00:00:00', '2021-08-15 00:00:00', NULL, 1);


--
-- Data for Name: measure_implementation_task; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.measure_implementation_task VALUES (7, 'gnt001', NULL, 2, 'タスク1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 00:00:00', '2021-10-01 00:00:00', 2, 5, 5, '2021-08-20 19:22:01.183517', '2021-08-20 20:05:04.151036', NULL, 1, NULL);
INSERT INTO demo.measure_implementation_task VALUES (8, 'gnt002', NULL, 2, 'タスク2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-01 00:00:00', '2021-11-01 00:00:00', 2, 5, 5, '2021-08-20 19:22:01.183517', '2021-08-20 20:05:04.151036', NULL, 1, NULL);
INSERT INTO demo.measure_implementation_task VALUES (9, 'gnt003', NULL, 2, 'タスク3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 00:00:00', '2021-12-01 00:00:00', 2, 5, 5, '2021-08-20 19:22:01.183517', '2021-08-20 20:05:04.151036', NULL, 1, NULL);
INSERT INTO demo.measure_implementation_task VALUES (22, 'gnt004', NULL, 4, 'タスク1_1_2_1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-01 00:00:00', '2021-11-01 00:00:00', 2, 5, 5, '2021-08-20 19:34:18.835466', '2021-08-20 20:05:04.151036', NULL, 1, NULL);
INSERT INTO demo.measure_implementation_task VALUES (23, 'gnt005', NULL, 4, 'タスク1_1_2_2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 00:00:00', '2021-12-01 00:00:00', 2, 5, 5, '2021-08-20 19:34:18.835466', '2021-08-20 20:05:04.271642', NULL, 1, NULL);
INSERT INTO demo.measure_implementation_task VALUES (24, 'gnt006', NULL, 4, 'タスク1_1_2_3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 00:00:00', '2022-01-01 00:00:00', 2, 5, 5, '2021-08-20 19:34:18.835466', '2021-08-20 20:05:04.273574', NULL, 1, NULL);


--
-- Data for Name: it_asset_type_abandonment_plans_measure_implementation_task; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: it_asset_type_purchase_plans_measure_implementation_task; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: manhour; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: measure_cause_conditions_cause_condition; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.measure_cause_conditions_cause_condition VALUES (2, 1);
INSERT INTO demo.measure_cause_conditions_cause_condition VALUES (3, 1);
INSERT INTO demo.measure_cause_conditions_cause_condition VALUES (5, 2);


--
-- Data for Name: measure_implementation_effect; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.measure_implementation_effect VALUES (3, 2, '1', '1', '1', '1', '2021-08-20 19:19:55', '1', '1', 0, 1, NULL, NULL, '2021-08-20 19:22:01.183517', '2021-08-20 19:22:01.183517', NULL, 'MeasureImplementationEffect', 1);
INSERT INTO demo.measure_implementation_effect VALUES (4, 3, '1', '1', '1', '1', '2021-08-20 19:19:55.752', '1', '1', 0, 2, NULL, NULL, '2021-08-20 19:22:47.310411', '2021-08-20 19:22:47.310411', NULL, 'MeasureImplementationEffect', 1);
INSERT INTO demo.measure_implementation_effect VALUES (7, 5, '1', '1', '1', '11', '2021-08-20 19:19:55.752', '1', '1', 0, 2, NULL, NULL, '2021-08-20 19:25:24.48674', '2021-08-20 19:25:24.48674', NULL, 'MeasureImplementationEffect', 1);
INSERT INTO demo.measure_implementation_effect VALUES (11, 4, '1', '1', '1', '1', '2021-08-20 19:19:55', '1', '1', 0, 1, NULL, NULL, '2021-08-20 19:34:18.835466', '2021-08-20 19:34:18.835466', NULL, 'MeasureImplementationEffect', 1);


--
-- Data for Name: measure_implementation_task_affected_systems_system; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: notification_template; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.notification_template VALUES (3, 1, NULL, NULL, '2021-09-27 18:40:54.935312', '2021-09-27 18:40:54.935312', NULL, NULL, 1, 'X付X日に契約終了日を迎えます。必要な手続きを行って下さい。', 'other', NULL);
INSERT INTO demo.notification_template VALUES (4, 1, NULL, NULL, '2021-09-27 19:03:54.147684', '2021-09-27 19:03:54.147684', NULL, NULL, 1, '施策責任者に設定されました。施策名：XXXXX', 'assignedMeasureOwner', NULL);
INSERT INTO demo.notification_template VALUES (5, 1, NULL, NULL, '2021-09-27 19:04:44.885716', '2021-09-27 19:04:44.885716', NULL, NULL, 1, '課題オーナーに設定されました。課題名：XXXXX', 'assignedTaskOwner', NULL);
INSERT INTO demo.notification_template VALUES (6, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, '課題の対応期限が過ぎています。課題名：XXXXX', 'alert', NULL);
INSERT INTO demo.notification_template VALUES (7, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, 'XXさんから、施策案のアンケート依頼があります。課題名：XXXXX', 'surveyRequest', NULL);
INSERT INTO demo.notification_template VALUES (8, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, 'XXさんから、課題のレビュー依頼があります。課題名：XXXXX', 'reviewRequest', NULL);
INSERT INTO demo.notification_template VALUES (9, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, '${raisedBy}さんから、年間計画の承認依頼があります。対象：令和?年度', 'approvalRequest', NULL);
INSERT INTO demo.notification_template VALUES (2, 1, NULL, NULL, '2021-09-27 18:24:47.424907', '2021-09-27 18:24:47.424907', NULL, NULL, 1, '1月8日 20:00～21:00の時間帯は、利用出来ません。', 'system', '/notifications/demo');
INSERT INTO demo.notification_template VALUES (10, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, '${raisedBy}さんから事業計画(${year}年度)の策定依頼があります。', 'planFormulationRequest', 'plans');
INSERT INTO demo.notification_template VALUES (11, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, '${raisedBy}さんから施策(${year}年度)の登録依頼があります。', 'planMeasureRegistrationRequest', 'planMeasures');
INSERT INTO demo.notification_template VALUES (12, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, '${raisedBy}さんから施策(${year}年度)の入力完了報告がありました。', 'planMeasureRegistrationCompleted', 'planMeasures/confirm');
INSERT INTO demo.notification_template VALUES (13, 1, NULL, NULL, '2021-09-27 19:15:15.096966', '2021-09-27 19:15:15.096966', NULL, NULL, 1, '${raisedBy}さんから事業計画(${year}年度)の策定完了報告がありました。', 'planFormulationCompleted', 'plans/approve');
INSERT INTO demo.notification_template VALUES (1001, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 100, 'X付X日に契約終了日を迎えます。必要な手続きを行って下さい。', 'other', NULL);
INSERT INTO demo.notification_template VALUES (1002, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 100, '1月8日 20:00～21:00の時間帯は、利用出来ません。', 'system', '/notifications/demo');
INSERT INTO demo.notification_template VALUES (1003, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 100, '${raisedBy}さんから事業計画(${year}年度)の策定依頼があります。', 'planFormulationRequest', 'plans');
INSERT INTO demo.notification_template VALUES (1004, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 100, '${raisedBy}さんから施策(${year}年度)の登録依頼があります。', 'planMeasureRegistrationRequest', 'planMeasures');
INSERT INTO demo.notification_template VALUES (1005, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 100, '${raisedBy}さんから施策(${year}年度)の入力完了報告がありました。', 'planMeasureRegistrationCompleted', 'planMeasures/confirm');
INSERT INTO demo.notification_template VALUES (1006, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 100, '${raisedBy}さんから事業計画(${year}年度)の策定完了報告がありました。', 'planFormulationCompleted', 'plans/approve');
INSERT INTO demo.notification_template VALUES (1101, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 101, 'X付X日に契約終了日を迎えます。必要な手続きを行って下さい。', 'other', NULL);
INSERT INTO demo.notification_template VALUES (1102, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 101, '1月8日 20:00～21:00の時間帯は、利用出来ません。', 'system', '/notifications/demo');
INSERT INTO demo.notification_template VALUES (1103, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 101, '${raisedBy}さんから事業計画(${year}年度)の策定依頼があります。', 'planFormulationRequest', 'plans');
INSERT INTO demo.notification_template VALUES (1104, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 101, '${raisedBy}さんから施策(${year}年度)の登録依頼があります。', 'planMeasureRegistrationRequest', 'planMeasures');
INSERT INTO demo.notification_template VALUES (1105, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 101, '${raisedBy}さんから施策(${year}年度)の入力完了報告がありました。', 'planMeasureRegistrationCompleted', 'planMeasures/confirm');
INSERT INTO demo.notification_template VALUES (1106, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 101, '${raisedBy}さんから事業計画(${year}年度)の策定完了報告がありました。', 'planFormulationCompleted', 'plans/approve');
INSERT INTO demo.notification_template VALUES (1201, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 102, 'X付X日に契約終了日を迎えます。必要な手続きを行って下さい。', 'other', NULL);
INSERT INTO demo.notification_template VALUES (1202, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 102, '1月8日 20:00～21:00の時間帯は、利用出来ません。', 'system', '/notifications/demo');
INSERT INTO demo.notification_template VALUES (1203, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 102, '${raisedBy}さんから事業計画(${year}年度)の策定依頼があります。', 'planFormulationRequest', 'plans');
INSERT INTO demo.notification_template VALUES (1204, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 102, '${raisedBy}さんから施策(${year}年度)の登録依頼があります。', 'planMeasureRegistrationRequest', 'planMeasures');
INSERT INTO demo.notification_template VALUES (1205, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 102, '${raisedBy}さんから施策(${year}年度)の入力完了報告がありました。', 'planMeasureRegistrationCompleted', 'planMeasures/confirm');
INSERT INTO demo.notification_template VALUES (1206, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 102, '${raisedBy}さんから事業計画(${year}年度)の策定完了報告がありました。', 'planFormulationCompleted', 'plans/approve');
INSERT INTO demo.notification_template VALUES (1301, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 103, 'X付X日に契約終了日を迎えます。必要な手続きを行って下さい。', 'other', NULL);
INSERT INTO demo.notification_template VALUES (1302, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 103, '1月8日 20:00～21:00の時間帯は、利用出来ません。', 'system', '/notifications/demo');
INSERT INTO demo.notification_template VALUES (1303, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 103, '${raisedBy}さんから事業計画(${year}年度)の策定依頼があります。', 'planFormulationRequest', 'plans');
INSERT INTO demo.notification_template VALUES (1304, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 103, '${raisedBy}さんから施策(${year}年度)の登録依頼があります。', 'planMeasureRegistrationRequest', 'planMeasures');
INSERT INTO demo.notification_template VALUES (1305, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 103, '${raisedBy}さんから施策(${year}年度)の入力完了報告がありました。', 'planMeasureRegistrationCompleted', 'planMeasures/confirm');
INSERT INTO demo.notification_template VALUES (1306, 1, 0, 0, '2021-06-21 00:00:00', '2021-06-21 00:00:00', NULL, NULL, 103, '${raisedBy}さんから事業計画(${year}年度)の策定完了報告がありました。', 'planFormulationCompleted', 'plans/approve');


--
-- Data for Name: notification; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.notification VALUES (6, 1, NULL, NULL, '2021-09-27 19:17:03.550684', '2021-09-27 19:17:03.550684', NULL, NULL, 1, true, 1, NULL, 7, '2021-09-23 10:10:10.096966', NULL, NULL);
INSERT INTO demo.notification VALUES (7, 1, NULL, NULL, '2021-09-27 19:17:03.550684', '2021-09-27 19:17:03.550684', NULL, NULL, 1, true, 1, NULL, 8, '2021-09-23 11:10:10.096966', NULL, NULL);
INSERT INTO demo.notification VALUES (4, 1, NULL, NULL, '2021-09-27 19:17:03.550684', '2021-09-27 19:17:03.550684', NULL, NULL, 1, true, 1, NULL, 5, '2021-09-23 12:10:10.096966', NULL, NULL);
INSERT INTO demo.notification VALUES (5, 1, NULL, NULL, '2021-09-27 19:17:03.550684', '2021-09-27 19:17:03.550684', NULL, NULL, 1, true, 1, NULL, 6, '2021-09-21 10:10:10.096966', NULL, NULL);
INSERT INTO demo.notification VALUES (2, 1, NULL, NULL, '2021-09-27 18:41:34.704411', '2021-09-27 18:41:34.704411', NULL, NULL, 1, true, 1, NULL, 3, '2021-07-21 10:10:10.096966', NULL, NULL);
INSERT INTO demo.notification VALUES (3, 1, NULL, NULL, '2021-09-27 19:17:03.550684', '2021-09-27 19:17:03.550684', NULL, NULL, 1, true, 1, NULL, 4, '2021-09-16 10:10:10.096966', NULL, NULL);
INSERT INTO demo.notification VALUES (1, 1, NULL, NULL, '2021-09-27 18:25:27.386477', '2021-09-27 18:25:27.386477', NULL, NULL, 1, true, 1, 2, 2, '2021-09-02 10:10:10.096966', NULL, NULL);
INSERT INTO demo.notification VALUES (8, 1, NULL, NULL, '2021-09-27 19:17:03.550684', '2021-09-27 19:17:03.550684', NULL, NULL, 1, false, 1, 2, 9, '2021-09-28 10:10:10.096966', '/approvals?code=APPR-7', NULL);


--
-- Data for Name: other; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.other VALUES (1, 6, '内容1', 1, 5, 5, '2021-08-20 19:02:03.093024', '2021-08-20 19:02:03.093024', NULL, 1);


--
-- Data for Name: other_measures_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan VALUES (1, 'confirmed', 11056, 5016, 6220, 6804, 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 3644, 0);
INSERT INTO demo.plan VALUES (2, 'confirmed', 25292, 3866, 5281, 3884, 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 6136, 0);
INSERT INTO demo.plan VALUES (3, 'confirmed', 25068, 5014, 3613, 4927, 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 2996, 0);
INSERT INTO demo.plan VALUES (4, 'inProgress', 17540, 6484, 4306, 5182, 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 3223, 0);
INSERT INTO demo.plan VALUES (5, 'inProgress', 12872, 3535, 5442, 3281, 1, NULL, NULL, '2021-11-11 00:00:00', '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 3430, 0);


--
-- Data for Name: plan_formulation_email_template; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_formulation_email_template VALUES (1, '${requestedBy}さんから事業計画(${year}年度)の策定依頼がありました。
下記URLから画面を開き、事業計画を入力して下さい。
https://${host}/plans', '事業計画策定依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.plan_formulation_email_template VALUES (2, '${requestedBy}さんから施策(${year}年度)の入力依頼がありました。
下記URLから画面を開き、施策を入力して下さい。
https://${host}/planMeasures', '施策登録依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.plan_formulation_email_template VALUES (3, '${requestedBy}さんから施策(${year}年度)の入力完了報告がありました。
下記URLから画面を開き、施策を確認して下さい。
https://${host}/planMeasures/confirm', '施策登録完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.plan_formulation_email_template VALUES (4, '${requestedBy}さんから事業計画(${year}年度)の策定完了報告がありました。
下記URLから画面を開き、事業計画を確認して下さい。
https://${host}/plans/approve', '事業計画策定完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 1);
INSERT INTO demo.plan_formulation_email_template VALUES (1001, '${requestedBy}さんから事業計画(${year}年度)の策定依頼がありました。
下記URLから画面を開き、事業計画を入力して下さい。
https://${host}/plans', '事業計画策定依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 100);
INSERT INTO demo.plan_formulation_email_template VALUES (1002, '${requestedBy}さんから施策(${year}年度)の入力依頼がありました。
下記URLから画面を開き、施策を入力して下さい。
https://${host}/planMeasures', '施策登録依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 100);
INSERT INTO demo.plan_formulation_email_template VALUES (1003, '${requestedBy}さんから施策(${year}年度)の入力完了報告がありました。
下記URLから画面を開き、施策を確認して下さい。
https://${host}/planMeasures/confirm', '施策登録完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 100);
INSERT INTO demo.plan_formulation_email_template VALUES (1004, '${requestedBy}さんから事業計画(${year}年度)の策定完了報告がありました。
下記URLから画面を開き、事業計画を確認して下さい。
https://${host}/plans/approve', '事業計画策定完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 100);
INSERT INTO demo.plan_formulation_email_template VALUES (1101, '${requestedBy}さんから事業計画(${year}年度)の策定依頼がありました。
下記URLから画面を開き、事業計画を入力して下さい。
https://${host}/plans', '事業計画策定依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 101);
INSERT INTO demo.plan_formulation_email_template VALUES (1102, '${requestedBy}さんから施策(${year}年度)の入力依頼がありました。
下記URLから画面を開き、施策を入力して下さい。
https://${host}/planMeasures', '施策登録依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 101);
INSERT INTO demo.plan_formulation_email_template VALUES (1103, '${requestedBy}さんから施策(${year}年度)の入力完了報告がありました。
下記URLから画面を開き、施策を確認して下さい。
https://${host}/planMeasures/confirm', '施策登録完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 101);
INSERT INTO demo.plan_formulation_email_template VALUES (1104, '${requestedBy}さんから事業計画(${year}年度)の策定完了報告がありました。
下記URLから画面を開き、事業計画を確認して下さい。
https://${host}/plans/approve', '事業計画策定完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 101);
INSERT INTO demo.plan_formulation_email_template VALUES (1201, '${requestedBy}さんから事業計画(${year}年度)の策定依頼がありました。
下記URLから画面を開き、事業計画を入力して下さい。
https://${host}/plans', '事業計画策定依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 102);
INSERT INTO demo.plan_formulation_email_template VALUES (1202, '${requestedBy}さんから施策(${year}年度)の入力依頼がありました。
下記URLから画面を開き、施策を入力して下さい。
https://${host}/planMeasures', '施策登録依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 102);
INSERT INTO demo.plan_formulation_email_template VALUES (1203, '${requestedBy}さんから施策(${year}年度)の入力完了報告がありました。
下記URLから画面を開き、施策を確認して下さい。
https://${host}/planMeasures/confirm', '施策登録完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 102);
INSERT INTO demo.plan_formulation_email_template VALUES (1204, '${requestedBy}さんから事業計画(${year}年度)の策定完了報告がありました。
下記URLから画面を開き、事業計画を確認して下さい。
https://${host}/plans/approve', '事業計画策定完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 102);
INSERT INTO demo.plan_formulation_email_template VALUES (1301, '${requestedBy}さんから事業計画(${year}年度)の策定依頼がありました。
下記URLから画面を開き、事業計画を入力して下さい。
https://${host}/plans', '事業計画策定依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 103);
INSERT INTO demo.plan_formulation_email_template VALUES (1302, '${requestedBy}さんから施策(${year}年度)の入力依頼がありました。
下記URLから画面を開き、施策を入力して下さい。
https://${host}/planMeasures', '施策登録依頼', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 103);
INSERT INTO demo.plan_formulation_email_template VALUES (1303, '${requestedBy}さんから施策(${year}年度)の入力完了報告がありました。
下記URLから画面を開き、施策を確認して下さい。
https://${host}/planMeasures/confirm', '施策登録完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 103);
INSERT INTO demo.plan_formulation_email_template VALUES (1304, '${requestedBy}さんから事業計画(${year}年度)の策定完了報告がありました。
下記URLから画面を開き、事業計画を確認して下さい。
https://${host}/plans/approve', '事業計画策定完了報告', 1, '2021-09-08 00:00:00', NULL, '2021-09-08 00:00:00', NULL, NULL, NULL, 103);


--
-- Data for Name: plan_formulation_request; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_formulation_request_requested_to_user_department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure VALUES (1, '[2018年度] 施策 1', '概要 1', 'New', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-1', 43, 1, NULL);
INSERT INTO demo.plan_measure VALUES (2, '[2018年度] 施策 2', '概要 2', 'Existing', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-2', 43, 1, NULL);
INSERT INTO demo.plan_measure VALUES (3, '[2018年度] 施策 3', '概要 3', 'RiskAvoidance', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-3', 43, 1, NULL);
INSERT INTO demo.plan_measure VALUES (4, '[2018年度] 施策 4', '概要 4', 'LegalComplianceOrEtc', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-4', 43, 1, NULL);
INSERT INTO demo.plan_measure VALUES (5, '[2019年度] 施策 1', '概要 1', 'New', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-5', 43, 2, NULL);
INSERT INTO demo.plan_measure VALUES (6, '[2019年度] 施策 2', '概要 2', 'Existing', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-6', 43, 2, NULL);
INSERT INTO demo.plan_measure VALUES (7, '[2019年度] 施策 3', '概要 3', 'RiskAvoidance', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-7', 43, 2, NULL);
INSERT INTO demo.plan_measure VALUES (8, '[2019年度] 施策 4', '概要 4', 'LegalComplianceOrEtc', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-8', 43, 2, NULL);
INSERT INTO demo.plan_measure VALUES (9, '[2020年度] 施策 1', '概要 1', 'New', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-9', 43, 3, NULL);
INSERT INTO demo.plan_measure VALUES (10, '[2020年度] 施策 2', '概要 2', 'Existing', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-10', 43, 3, NULL);
INSERT INTO demo.plan_measure VALUES (11, '[2020年度] 施策 3', '概要 3', 'RiskAvoidance', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-11', 43, 3, NULL);
INSERT INTO demo.plan_measure VALUES (12, '[2020年度] 施策 4', '概要 4', 'LegalComplianceOrEtc', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-12', 43, 3, NULL);
INSERT INTO demo.plan_measure VALUES (13, '[2021年度] 施策 1', '概要 1', 'New', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-13', 43, 4, NULL);
INSERT INTO demo.plan_measure VALUES (14, '[2021年度] 施策 2', '概要 2', 'Existing', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-14', 43, 4, NULL);
INSERT INTO demo.plan_measure VALUES (15, '[2021年度] 施策 3', '概要 3', 'RiskAvoidance', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-15', 43, 4, NULL);
INSERT INTO demo.plan_measure VALUES (16, '[2021年度] 施策 4', '概要 4', 'LegalComplianceOrEtc', 'NonTarget', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-16', 43, 4, NULL);
INSERT INTO demo.plan_measure VALUES (17, 'test', 'test', 'New', 'Target', 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'PMSR-17', 43, 5, NULL);


--
-- Data for Name: plan_measure_cost; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_cost VALUES (1, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2018年度] [施策 1] コスト 1', 1, 1, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (2, 'Cost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2018年度] [施策 1] コスト 2', 1, 1, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (3, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2018年度] [施策 2] コスト 1', 2, 1, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (4, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2018年度] [施策 3] コスト 1', 3, 1, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (5, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2018年度] [施策 4] コスト 1', 4, 1, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (6, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2019年度] [施策 1] コスト 1', 5, 2, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (7, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2019年度] [施策 2] コスト 1', 6, 2, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (8, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2019年度] [施策 3] コスト 1', 7, 2, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (9, 'Cost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2019年度] [施策 4] コスト 1', 8, 2, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (10, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2019年度] [施策 4] コスト 2', 8, 2, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (11, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 1] コスト 1', 9, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (12, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 1] コスト 2', 9, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (13, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 2] コスト 1', 10, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (14, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 2] コスト 2', 10, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (15, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 3] コスト 1', 11, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (16, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 3] コスト 2', 11, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (17, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 4] コスト 1', 12, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (18, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2020年度] [施策 4] コスト 2', 12, 3, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (19, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2021年度] [施策 1] コスト 1', 13, 4, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (20, 'Cost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2021年度] [施策 1] コスト 2', 13, 4, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (21, 'Cost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2021年度] [施策 2] コスト 1', 14, 4, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (22, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2021年度] [施策 2] コスト 2', 14, 4, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (23, 'Cost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2021年度] [施策 3] コスト 1', 15, 4, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (24, 'Other', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, '[2021年度] [施策 4] コスト 1', 16, 4, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_cost VALUES (25, 'DeemedCost', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 'test', 17, 5, NULL, 1, NULL);


--
-- Data for Name: plan_measure_cost_assign; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_cost_assign VALUES (1, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 3, 25, 1, 5, NULL);


--
-- Data for Name: plan_measure_cost_price; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_cost_price VALUES (1, 2018, 4, -5783, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (2, 2018, 10, 123, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (3, 2018, 6, 3876, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (4, 2018, 4, -7415, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (5, 2018, 8, 10501, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (6, 2018, 4, 2095, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (7, 2018, 6, -7737, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (8, 2018, 8, 4292, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (9, 2018, 5, -44, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (10, 2018, 7, -4617, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (11, 2018, 11, 10050, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (12, 2018, 5, 9389, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (13, 2018, 9, -6647, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (14, 2018, 4, 2047, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (15, 2018, 7, 6787, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 20, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (17, 2018, 9, -3144, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (18, 2018, 5, 6352, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (19, 2018, 6, -4755, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (20, 2018, 7, 7590, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (21, 2018, 9, -6233, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (22, 2018, 4, -7907, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 13, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (23, 2018, 10, 4434, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (24, 2018, 4, -1438, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (25, 2018, 11, -88, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (26, 2018, 8, -4187, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (31, 2018, 9, 4965, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (32, 2018, 9, -8056, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (33, 2018, 4, 7552, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (34, 2018, 8, -6207, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (35, 2018, 11, -4101, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (36, 2018, 9, -7637, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (37, 2018, 9, 8059, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (38, 2018, 6, -3245, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (40, 2018, 5, 655, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (41, 2018, 9, -1749, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (42, 2018, 9, 4063, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (43, 2018, 5, 8768, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (44, 2018, 10, -8700, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (45, 2018, 5, 4617, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (46, 2018, 5, -8272, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (47, 2018, 9, -506, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (48, 2018, 10, -4636, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (49, 2018, 5, -3861, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (52, 2019, 10, -312, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (53, 2019, 5, 8925, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (54, 2019, 8, 10704, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (55, 2019, 5, -6123, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (56, 2019, 6, 9063, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (57, 2019, 5, -5213, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (58, 2019, 11, 1846, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (59, 2019, 10, -6383, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (60, 2019, 6, -5306, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (61, 2019, 10, 4223, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (62, 2019, 7, -7318, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (63, 2019, 10, -8228, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (64, 2019, 6, -1868, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (65, 2019, 7, 1814, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (66, 2019, 8, 10408, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 20, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (68, 2019, 11, -4809, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (69, 2019, 11, 3839, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (70, 2019, 10, -5436, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (71, 2019, 8, -899, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (72, 2019, 10, -5118, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 13, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (73, 2019, 6, -2130, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (74, 2019, 7, 1803, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (75, 2019, 7, 1613, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (76, 2019, 7, 6206, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (77, 2019, 11, 2080, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (78, 2019, 4, 5749, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (82, 2019, 4, -6779, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (83, 2019, 7, 9544, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (84, 2019, 4, 3428, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (85, 2019, 6, 2469, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (86, 2019, 7, 8623, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (87, 2019, 11, 7374, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (88, 2019, 5, 9692, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (89, 2019, 5, -4098, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (90, 2019, 11, 1024, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (93, 2019, 9, -7105, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (94, 2019, 4, -1554, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (95, 2019, 5, -909, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (96, 2019, 8, -6136, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (97, 2019, 7, 1433, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (98, 2019, 8, -4697, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (99, 2019, 9, -8578, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (100, 2019, 5, 7604, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (101, 2019, 4, -3062, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (102, 2019, 11, 3246, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 2, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (104, 2020, 4, -7529, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (105, 2020, 9, -5644, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (106, 2020, 7, -6024, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (107, 2020, 11, -3212, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (108, 2020, 5, 1320, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (109, 2020, 11, -8932, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (110, 2020, 10, -8587, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (111, 2020, 6, -1038, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (112, 2020, 9, 8324, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (113, 2020, 6, -7121, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (114, 2020, 4, 9902, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 20, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (115, 2020, 5, 2720, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 20, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (118, 2020, 7, 520, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (119, 2020, 8, 9532, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (120, 2020, 4, -4111, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (121, 2020, 8, 3330, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 13, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (122, 2020, 4, 8493, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (123, 2020, 9, -1917, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (124, 2020, 11, 10637, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (125, 2020, 7, -2595, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (126, 2020, 6, -6383, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (127, 2020, 7, -49, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (128, 2020, 8, -5247, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (134, 2020, 10, 10252, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (135, 2020, 8, -6159, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (136, 2020, 9, 1693, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (137, 2020, 11, -7021, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (138, 2020, 6, -7593, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (139, 2020, 4, 7390, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (140, 2020, 9, 3242, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (141, 2020, 11, -5051, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (142, 2020, 7, 6372, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (143, 2020, 8, -1504, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (147, 2020, 9, 3011, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (148, 2020, 4, -891, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (149, 2020, 4, -913, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (150, 2020, 7, -1643, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (151, 2020, 7, 7643, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (152, 2020, 9, -7568, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (153, 2020, 5, -1883, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (154, 2020, 11, -6211, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (155, 2020, 8, -8338, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (156, 2020, 8, -2094, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (157, 2020, 11, -8801, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (158, 2020, 6, 4340, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (159, 2020, 6, -8427, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 3, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (161, 2021, 9, -4374, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (162, 2021, 10, 5745, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (163, 2021, 6, 6467, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (164, 2021, 9, 7559, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (165, 2021, 7, 2196, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (166, 2021, 5, -2106, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (167, 2021, 8, -1829, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (168, 2021, 10, 7849, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (169, 2021, 9, -4328, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (170, 2021, 10, -4084, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 20, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (171, 2021, 5, 358, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 20, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (175, 2021, 7, -6187, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (176, 2021, 9, 10265, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (177, 2021, 4, 3021, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (178, 2021, 6, -2479, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (179, 2021, 11, 772, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 13, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (180, 2021, 6, 5911, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (181, 2021, 7, -3782, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (182, 2021, 8, -8865, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (183, 2021, 4, -649, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (184, 2021, 10, 1496, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (185, 2021, 6, 6967, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (186, 2021, 9, -2670, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (193, 2021, 9, 6343, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (194, 2021, 10, 10027, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (195, 2021, 7, -2048, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (196, 2021, 9, -4740, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (197, 2021, 4, -60, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (198, 2021, 7, -8732, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (199, 2021, 11, -3685, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (202, 2021, 9, -5512, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (203, 2021, 6, 4843, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (204, 2021, 4, 3992, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (205, 2021, 4, 4607, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (206, 2021, 6, 6763, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (207, 2021, 10, -3145, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (208, 2021, 4, 1185, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (209, 2021, 8, -8739, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (210, 2021, 7, 6986, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (211, 2021, 7, 10624, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (212, 2021, 8, -7111, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (213, 2021, 6, 5236, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (214, 2021, 7, 3251, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (215, 2021, 9, 2741, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (216, 2021, 4, 4926, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 4, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (220, 2022, 10, -3725, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 1, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (221, 2022, 9, -1662, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (222, 2022, 4, -6014, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 2, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (223, 2022, 8, -2264, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (224, 2022, 9, 3342, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (225, 2022, 4, -7052, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 6, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (226, 2022, 4, 7566, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (227, 2022, 10, -782, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 11, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (228, 2022, 9, 3706, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (229, 2022, 6, 2700, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (230, 2022, 8, -8085, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 12, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (231, 2022, 10, 3662, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (232, 2022, 5, -6401, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (233, 2022, 9, -6707, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 19, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (234, 2022, 10, 9600, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 20, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (237, 2022, 6, 10112, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (238, 2022, 9, -4203, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (239, 2022, 6, 3920, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 3, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (240, 2022, 10, 6231, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (241, 2022, 4, -5118, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 7, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (242, 2022, 10, -6563, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 13, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (243, 2022, 5, -7215, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (244, 2022, 8, 7079, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (245, 2022, 6, 4348, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 14, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (246, 2022, 5, -6479, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 21, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (247, 2022, 5, -8898, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 22, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (250, 2022, 6, 3725, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (251, 2022, 6, -2336, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (252, 2022, 5, 3734, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 4, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (253, 2022, 5, -3324, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 8, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (254, 2022, 8, 3870, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (255, 2022, 10, 10179, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (256, 2022, 11, -1018, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 15, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (257, 2022, 4, 3272, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (258, 2022, 11, -7572, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (259, 2022, 10, 6362, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 16, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (260, 2022, 10, -7458, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 23, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (264, 2022, 10, -3360, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (265, 2022, 6, -6348, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (266, 2022, 4, -4569, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 5, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (267, 2022, 9, -6994, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (268, 2022, 5, -2479, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (269, 2022, 5, 558, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 9, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (270, 2022, 6, -894, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 10, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (271, 2022, 4, 668, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (272, 2022, 8, -4504, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 17, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (273, 2022, 6, 1224, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (274, 2022, 8, -1133, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 18, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (275, 2022, 7, 758, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 5, 24, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (276, 2022, 7, 2, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 3, 1, 5, 25, NULL);
INSERT INTO demo.plan_measure_cost_price VALUES (277, 2022, 4, 2, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 3, 1, 5, 25, NULL);


--
-- Data for Name: plan_measure_cost_target_department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_cost_target_department VALUES (1, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 5, 3, 1, 1, 25, 17);


--
-- Data for Name: plan_measure_cost_target_individual; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_measure_effect_sale; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_effect_sale VALUES (1, 'DeemedSales', 'Increase', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 1, 3, 1, 1);
INSERT INTO demo.plan_measure_effect_sale VALUES (2, 'DeemedSales', 'Increase', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 1, 3, 1, 2);
INSERT INTO demo.plan_measure_effect_sale VALUES (3, 'DeemedSales', 'MaintainStatusQuo', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 1, 3, 1, 2);
INSERT INTO demo.plan_measure_effect_sale VALUES (4, 'DeemedSales', 'MaintainStatusQuo', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 1, 3, 1, 3);
INSERT INTO demo.plan_measure_effect_sale VALUES (5, 'Sales', 'Increase', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 1, 3, 1, 4);
INSERT INTO demo.plan_measure_effect_sale VALUES (6, 'Sales', 'Increase', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 1, 3, 1, 4);
INSERT INTO demo.plan_measure_effect_sale VALUES (7, 'Sales', 'Increase', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 2, 3, 1, 5);
INSERT INTO demo.plan_measure_effect_sale VALUES (8, 'Sales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 2, 3, 1, 5);
INSERT INTO demo.plan_measure_effect_sale VALUES (9, 'Sales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 2, 3, 1, 6);
INSERT INTO demo.plan_measure_effect_sale VALUES (10, 'DeemedSales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 2, 3, 1, 7);
INSERT INTO demo.plan_measure_effect_sale VALUES (11, 'DeemedSales', 'Increase', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 2, 3, 1, 8);
INSERT INTO demo.plan_measure_effect_sale VALUES (12, 'DeemedSales', 'MaintainStatusQuo', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 2, 3, 1, 8);
INSERT INTO demo.plan_measure_effect_sale VALUES (13, 'Sales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 3, 3, 1, 9);
INSERT INTO demo.plan_measure_effect_sale VALUES (14, 'Sales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 3, 3, 1, 9);
INSERT INTO demo.plan_measure_effect_sale VALUES (15, 'DeemedSales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 3, 3, 1, 10);
INSERT INTO demo.plan_measure_effect_sale VALUES (16, 'Sales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 3, 3, 1, 10);
INSERT INTO demo.plan_measure_effect_sale VALUES (17, 'DeemedSales', 'Increase', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 3, 3, 1, 11);
INSERT INTO demo.plan_measure_effect_sale VALUES (18, 'DeemedSales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 3, 3, 1, 11);
INSERT INTO demo.plan_measure_effect_sale VALUES (19, 'Sales', 'MaintainStatusQuo', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 3, 3, 1, 12);
INSERT INTO demo.plan_measure_effect_sale VALUES (20, 'Sales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 4, 3, 1, 13);
INSERT INTO demo.plan_measure_effect_sale VALUES (21, 'DeemedSales', 'MaintainStatusQuo', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 4, 3, 1, 14);
INSERT INTO demo.plan_measure_effect_sale VALUES (22, 'DeemedSales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 4, 3, 1, 14);
INSERT INTO demo.plan_measure_effect_sale VALUES (23, 'Sales', 'MaintainStatusQuo', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 4, 3, 1, 15);
INSERT INTO demo.plan_measure_effect_sale VALUES (24, 'Sales', 'Decrease', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 4, 3, 1, 15);
INSERT INTO demo.plan_measure_effect_sale VALUES (25, 'Sales', 'MaintainStatusQuo', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, NULL, 4, 3, 1, 16);
INSERT INTO demo.plan_measure_effect_sale VALUES (26, 'Sales', 'MaintainStatusQuo', 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, NULL, 5, 3, 1, 17);


--
-- Data for Name: plan_measure_effect_sale_price; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_effect_sale_price VALUES (1, 2018, 10, -4147, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (2, 2018, 8, 4082, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (3, 2018, 5, -7758, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 7, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (4, 2018, 9, -8363, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (5, 2018, 7, 7426, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (6, 2018, 10, -1646, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (7, 2018, 4, -7017, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (8, 2018, 6, 7848, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (9, 2018, 7, -1143, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (11, 2018, 10, 9190, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (12, 2018, 5, -2169, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (13, 2018, 7, -6389, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (14, 2018, 7, -1896, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (15, 2018, 11, 1041, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (16, 2018, 11, 3722, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (17, 2018, 6, 203, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (18, 2018, 7, 9320, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (19, 2018, 8, -427, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (20, 2018, 5, -5970, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (21, 2018, 5, 1034, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (22, 2018, 7, 4513, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (23, 2018, 9, 5378, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 21, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (24, 2018, 7, 9639, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (25, 2018, 11, 3674, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (30, 2018, 5, 7300, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (31, 2018, 8, 6462, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (32, 2018, 4, 1647, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (33, 2018, 9, 2700, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (34, 2018, 11, -6202, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (35, 2018, 9, -3630, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (36, 2018, 5, -5116, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (37, 2018, 6, -3249, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (38, 2018, 6, 2638, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (39, 2018, 9, -753, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (40, 2018, 11, -4175, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (41, 2018, 9, -8886, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (48, 2018, 4, 2842, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (49, 2018, 9, 5023, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (50, 2018, 8, 2757, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (51, 2018, 5, -5331, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (52, 2018, 4, 6516, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (53, 2018, 9, -2147, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (54, 2018, 10, -3368, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (55, 2018, 4, 499, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (56, 2018, 6, 3709, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (57, 2018, 7, -2187, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (58, 2018, 6, -3549, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (59, 2018, 11, -8696, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (60, 2018, 6, 6014, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 1, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (64, 2019, 9, -2526, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (65, 2019, 4, 1342, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 7, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (66, 2019, 5, -1273, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 7, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (67, 2019, 10, -317, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (68, 2019, 9, -5054, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (69, 2019, 8, -8561, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (70, 2019, 4, -7603, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (71, 2019, 6, -562, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (72, 2019, 9, 4762, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (73, 2019, 10, -24, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (74, 2019, 7, -913, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (75, 2019, 4, -2850, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (76, 2019, 5, 1049, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (77, 2019, 8, 5570, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (80, 2019, 5, 810, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (81, 2019, 10, -5599, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (82, 2019, 10, -7320, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (83, 2019, 11, -240, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (84, 2019, 10, 7289, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (85, 2019, 4, -2909, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (86, 2019, 7, -7178, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (87, 2019, 11, 4181, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (88, 2019, 8, 7445, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (89, 2019, 6, 6575, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (90, 2019, 11, -6076, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 21, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (91, 2019, 7, -4782, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (92, 2019, 9, -8897, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (93, 2019, 5, 10208, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (98, 2019, 7, 3659, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (99, 2019, 4, -7334, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (100, 2019, 10, 5308, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (101, 2019, 7, 7058, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (102, 2019, 8, -3262, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (103, 2019, 4, 1676, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (104, 2019, 6, -7709, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (105, 2019, 10, -6144, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (106, 2019, 9, -5278, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (107, 2019, 4, 1849, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (108, 2019, 9, -7535, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (109, 2019, 9, 4638, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (110, 2019, 6, -4880, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (111, 2019, 10, -1009, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (112, 2019, 11, -3443, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (113, 2019, 8, 6875, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (114, 2019, 7, 9762, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (119, 2019, 7, -7486, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (120, 2019, 9, -2128, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (121, 2019, 8, -1977, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (122, 2019, 7, -6561, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (123, 2019, 11, 1188, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (124, 2019, 4, 8729, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (125, 2019, 4, 7169, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (126, 2019, 11, -2397, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (127, 2019, 5, 8591, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (128, 2019, 5, -4891, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (129, 2019, 11, 404, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (130, 2019, 5, -3724, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (131, 2019, 11, 9432, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (132, 2019, 9, 2366, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (133, 2019, 10, -5120, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (134, 2019, 9, -2494, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 2, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (139, 2020, 7, 3053, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (140, 2020, 11, -5620, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (141, 2020, 6, 8509, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 7, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (142, 2020, 5, -3604, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (143, 2020, 5, -8696, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (144, 2020, 7, 9857, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (145, 2020, 5, 8816, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (146, 2020, 6, 4851, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (147, 2020, 4, -5446, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (148, 2020, 9, 3106, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (149, 2020, 5, -393, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (150, 2020, 9, -5686, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (154, 2020, 5, 7268, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (155, 2020, 5, -4460, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (156, 2020, 10, 5035, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (157, 2020, 7, -3085, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (158, 2020, 8, 1002, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (159, 2020, 6, -1761, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (160, 2020, 10, 8505, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (161, 2020, 10, 4672, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (162, 2020, 5, 9887, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (163, 2020, 9, -6574, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (164, 2020, 11, 809, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (165, 2020, 8, -7148, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (166, 2020, 7, -2713, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (167, 2020, 6, -168, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (168, 2020, 5, -6864, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 21, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (169, 2020, 8, 10430, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 21, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (170, 2020, 10, -5056, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (175, 2020, 11, 2188, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (176, 2020, 6, 9795, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (177, 2020, 11, 5308, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (178, 2020, 9, 5869, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (179, 2020, 9, 2090, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (180, 2020, 4, -4118, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (181, 2020, 8, 5332, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (182, 2020, 9, 246, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (183, 2020, 5, -5393, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (184, 2020, 9, 9943, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (185, 2020, 11, 7379, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (186, 2020, 9, -5506, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (187, 2020, 8, -428, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (188, 2020, 5, 9513, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (189, 2020, 4, 10973, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (190, 2020, 7, 10585, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (191, 2020, 5, 1261, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (198, 2020, 11, -6215, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (199, 2020, 7, 5293, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (200, 2020, 9, 5714, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (201, 2020, 8, -8715, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (202, 2020, 11, -2021, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (203, 2020, 8, -5988, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (204, 2020, 10, 2852, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (205, 2020, 6, 1788, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (206, 2020, 8, -2163, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (207, 2020, 4, 3216, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (208, 2020, 5, 3314, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (209, 2020, 9, 4721, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (210, 2020, 9, -6282, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (215, 2021, 5, 7417, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (216, 2021, 10, 5085, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 7, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (217, 2021, 5, 3576, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (218, 2021, 9, 3450, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (219, 2021, 10, -677, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (220, 2021, 10, -114, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (221, 2021, 9, 8097, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (222, 2021, 4, -8561, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (225, 2021, 10, -2165, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (226, 2021, 11, -7008, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (227, 2021, 4, 6142, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (228, 2021, 10, 4241, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (229, 2021, 7, -8399, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (230, 2021, 11, -289, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (231, 2021, 9, 2398, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (232, 2021, 11, -4082, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (233, 2021, 11, -3608, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (234, 2021, 6, -6277, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (235, 2021, 6, -4031, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (236, 2021, 4, -3456, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 21, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (237, 2021, 5, 3054, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 21, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (238, 2021, 10, 7866, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (239, 2021, 10, -4561, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (244, 2021, 5, 5846, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (245, 2021, 5, -6847, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (246, 2021, 6, 5416, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (247, 2021, 9, -7168, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (248, 2021, 11, -440, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (249, 2021, 10, 7623, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (250, 2021, 4, -4237, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (251, 2021, 6, -5041, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (252, 2021, 6, -8544, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (253, 2021, 9, 5255, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (254, 2021, 4, 8408, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (255, 2021, 8, -7525, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (258, 2021, 11, -8664, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (259, 2021, 10, -1501, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (260, 2021, 4, -8687, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (261, 2021, 4, -4482, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (262, 2021, 8, -4294, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (263, 2021, 4, -8376, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (264, 2021, 8, -966, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (265, 2021, 11, -8046, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (266, 2021, 4, -2960, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (267, 2021, 5, 1208, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (268, 2021, 10, -2758, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (269, 2021, 10, -2962, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (270, 2021, 10, -4113, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (271, 2021, 5, -4821, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 4, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (277, 2022, 5, -1560, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (278, 2022, 6, 10118, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 7, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (279, 2022, 7, 2000, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (280, 2022, 9, -3860, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 8, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (281, 2022, 6, -6271, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (282, 2022, 10, -6411, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (283, 2022, 9, 4511, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 13, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (284, 2022, 7, -4606, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 14, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (285, 2022, 9, 9226, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (286, 2022, 10, 8270, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 20, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (289, 2022, 8, -7508, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 2, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (290, 2022, 11, -1044, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (291, 2022, 10, 299, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 3, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (292, 2022, 11, -6157, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (293, 2022, 8, -4358, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 9, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (294, 2022, 8, 8277, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 15, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (295, 2022, 5, -1261, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 16, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (296, 2022, 9, 10333, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 21, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (297, 2022, 8, -8887, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (298, 2022, 7, -1581, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 22, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (302, 2022, 10, -7726, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 4, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (303, 2022, 9, -7857, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (304, 2022, 4, -6776, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 10, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (305, 2022, 9, 7277, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (306, 2022, 9, 172, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 17, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (307, 2022, 5, 4100, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 18, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (308, 2022, 9, 5012, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (309, 2022, 10, 1085, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (310, 2022, 10, 1098, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 23, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (311, 2022, 11, 10892, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 24, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (318, 2022, 4, 1978, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 5, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (319, 2022, 9, -2103, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (320, 2022, 11, 6239, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (321, 2022, 5, -8083, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 6, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (322, 2022, 6, 7576, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (323, 2022, 6, 3212, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (324, 2022, 6, -8386, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 11, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (325, 2022, 8, -3917, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (326, 2022, 9, -4055, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (327, 2022, 11, 7230, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 12, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (328, 2022, 5, 4594, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (329, 2022, 4, -7957, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 19, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (330, 2022, 8, -7960, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 5, 3, 25, 1, NULL);
INSERT INTO demo.plan_measure_effect_sale_price VALUES (331, 2022, 10, 2000, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 5, 3, 26, 1, NULL);


--
-- Data for Name: plan_measure_plans_plan; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_measure_registration_request; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_registration_request VALUES (1, 'PMRR-1', '2022-12-30', 1, '2021-11-30 00:00:00', NULL, '2021-11-30 00:00:00', NULL, NULL, NULL, 5, 2, 1);


--
-- Data for Name: plan_measure_registration_request_plan_measure_plan_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_measure_registration_request_requested_to_user_department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_registration_request_requested_to_user_department VALUES (1, 43);


--
-- Data for Name: plan_measure_risk; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_risk VALUES (1, '[2018年度] [施策 1] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 1, 1, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (2, '[2018年度] [施策 1] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 1, 1, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (3, '[2018年度] [施策 2] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 1, 2, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (4, '[2018年度] [施策 3] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 1, 3, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (5, '[2018年度] [施策 3] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 1, 3, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (6, '[2018年度] [施策 4] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 1, 4, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (7, '[2019年度] [施策 1] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 2, 5, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (8, '[2019年度] [施策 1] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 2, 5, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (9, '[2019年度] [施策 2] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 2, 6, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (10, '[2019年度] [施策 3] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 2, 7, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (11, '[2019年度] [施策 4] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 2, 8, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (12, '[2019年度] [施策 4] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 2, 8, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (13, '[2020年度] [施策 1] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 3, 9, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (14, '[2020年度] [施策 2] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 3, 10, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (15, '[2020年度] [施策 3] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 3, 11, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (16, '[2020年度] [施策 3] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 3, 11, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (17, '[2020年度] [施策 4] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 3, 12, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (18, '[2020年度] [施策 4] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 3, 12, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (19, '[2021年度] [施策 1] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 4, 13, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (20, '[2021年度] [施策 1] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 4, 13, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (21, '[2021年度] [施策 2] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 4, 14, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (22, '[2021年度] [施策 3] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 4, 15, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (23, '[2021年度] [施策 3] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 4, 15, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (24, '[2021年度] [施策 4] リスク 1', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 4, 16, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (25, '[2021年度] [施策 4] リスク 2', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 4, 16, NULL, NULL);
INSERT INTO demo.plan_measure_risk VALUES (26, 'test', 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, NULL, 5, 17, 1, NULL);


--
-- Data for Name: plan_measure_risk_assign; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_risk_assign VALUES (1, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 3, 26, 1, 5, NULL);


--
-- Data for Name: plan_measure_risk_cost_target_department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_risk_cost_target_department VALUES (1, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 5, 3, 1, 1, 26, 17, NULL);


--
-- Data for Name: plan_measure_risk_cost_target_individual; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_measure_risk_price; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_risk_price VALUES (2018, 4, -4072, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 1, 1, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 10, 2172, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 1, 2, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 9, 129, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 1, 3, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 10, 3660, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 1, 4, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, 2559, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 8, 1, 1, 5, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 9, -4986, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 1, 6, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 8, -6991, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 1, 7, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 8, 5956, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 1, 8, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 10, 774, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 1, 9, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 4, -1391, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 1, 10, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 8, 5216, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 1, 11, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 8, 5187, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 1, 15, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, -775, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 1, 16, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 5, 3879, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 1, 17, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, 1672, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 1, 18, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 8, -269, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 1, 19, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 6, -5048, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 1, 20, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 9, 3785, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 1, 21, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 4, 164, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 1, 24, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 11, -7152, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 1, 25, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 11, -5310, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 1, 26, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 5, 1360, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 1, 27, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, -2038, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 1, 28, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 5, -7240, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 1, 29, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 6, -4031, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 1, 30, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 8, -2784, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 16, 1, 1, 31, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 5, 134, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 1, 32, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 6, -6588, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 23, 1, 1, 33, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 6, -7400, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 6, 1, 1, 36, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 9, -7923, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 6, 1, 1, 37, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 11, -5936, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 1, 38, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, -7913, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 1, 39, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, -1553, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 1, 40, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, 370, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 1, 41, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 9, 1801, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 1, 42, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 8, -6585, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 1, 43, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 4, -1865, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 1, 44, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 6, 285, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 1, 45, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 6, -8116, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 1, 46, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 10, 10321, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 1, 47, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 4, 1827, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 1, 48, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 7, -2879, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 1, 49, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2018, 6, -5899, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 1, 50, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 10, -2481, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 2, 52, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, 4453, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 2, 53, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 10, 8697, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 2, 54, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, -2543, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 2, 55, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 10, 4315, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 2, 56, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, -6966, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 2, 57, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, -7616, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 2, 58, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, 7086, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 2, 59, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, -6783, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 8, 1, 2, 60, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 4, 6429, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 2, 61, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, 7268, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 2, 62, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 4, 3354, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 2, 63, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 8, -2394, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 2, 64, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, 8266, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 2, 65, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 8, 10367, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 2, 66, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 7, 8894, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 2, 67, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 10, 3147, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 2, 70, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, -1339, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 2, 71, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, 7950, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 2, 72, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, -6938, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 2, 73, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 8, -874, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 2, 74, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, 1729, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 2, 77, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, 2764, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 2, 78, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 8, 2293, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 2, 79, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, -846, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 2, 80, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, -6226, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 2, 81, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, 1578, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 2, 82, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, -5261, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 2, 83, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 6, 1935, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 2, 84, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, 6677, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 2, 85, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 4, 9326, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 16, 1, 2, 86, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 7, -8588, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 2, 87, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, -7695, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 2, 88, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, 5167, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 23, 1, 2, 89, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 6, -6229, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 6, 1, 2, 92, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 10, -6513, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 6, 1, 2, 93, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 9, -7716, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 2, 94, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, 4700, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 2, 95, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 8, 4671, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 2, 96, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, 187, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 2, 97, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, 2655, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 2, 98, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 8, -5005, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 2, 99, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, -8013, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 2, 100, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 6, 10008, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 2, 101, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 5, -3431, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 2, 102, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 11, 6886, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 2, 103, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 4, -8513, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 2, 104, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2019, 7, -6183, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 2, 105, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, -1351, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 3, 108, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 10, -4441, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 3, 109, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, -4866, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 3, 110, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, -8242, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 3, 111, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 8, 8912, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 3, 112, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, -3507, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 3, 113, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 6, -1368, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 3, 114, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, -7386, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 8, 1, 3, 115, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, -1271, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 8, 1, 3, 116, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, 10960, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 3, 117, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 4, 1078, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 3, 118, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 4, -1067, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 3, 119, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, -2452, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 3, 120, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 6, -7157, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 3, 121, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, 10420, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 3, 123, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 11, -5183, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 3, 124, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, -8415, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 3, 125, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 10, -5294, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 3, 126, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, 7345, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 3, 127, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 10, -7874, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 3, 128, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, -8714, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 3, 129, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 8, 4091, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 3, 130, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, 5260, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 3, 132, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, 3948, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 3, 133, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 11, 5677, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 3, 134, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 6, 7538, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 3, 135, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 11, -6766, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 3, 136, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, 5585, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 3, 137, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, -1847, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 3, 138, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, 7643, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 16, 1, 3, 139, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, 9367, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 16, 1, 3, 140, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 6, -6620, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 3, 141, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 8, 4273, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 3, 142, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 10, 4151, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 3, 143, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, -342, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 23, 1, 3, 144, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, -1820, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 6, 1, 3, 148, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 8, 7257, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 3, 149, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 8, -3345, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 3, 150, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 11, 3151, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 3, 151, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 11, 5842, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 3, 152, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 5, 5666, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 3, 153, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 9, -6996, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 3, 154, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 11, -154, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 3, 155, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, 6193, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 3, 156, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 7, 10066, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 3, 157, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 10, 9618, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 3, 158, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2020, 10, 4145, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 3, 159, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 7, 10414, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 4, 163, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, 7970, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 4, 164, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, -6698, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 4, 165, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, -4709, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 4, 166, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 6, 9446, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 4, 167, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, 8065, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 4, 168, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, 6949, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 4, 169, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, -6814, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 4, 170, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 7, -8348, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 4, 171, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 9, -2417, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 8, 1, 4, 172, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 11, 2499, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 4, 173, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, 9338, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 4, 174, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 9, 2189, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 4, 175, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 6, -6319, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 4, 176, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 6, 1441, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 4, 177, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 11, 2, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 4, 179, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, 6877, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 4, 180, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, -1936, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 4, 181, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 10, 7367, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 4, 182, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, 814, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 4, 183, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, 9529, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 4, 184, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, -6, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 4, 185, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 6, 8128, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 4, 186, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 6, -6376, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 4, 187, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, -1535, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 4, 188, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 10, 5002, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 4, 191, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 11, 6876, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 4, 192, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 6, -1065, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 4, 193, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 10, 5819, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 4, 194, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 7, -8123, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 4, 195, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, 1344, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 4, 196, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, 8273, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 4, 197, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 7, 5781, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 4, 198, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, 1862, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 4, 199, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, 3173, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 4, 200, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 7, 9639, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 16, 1, 4, 201, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 10, 5511, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 4, 202, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 7, 2525, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 4, 203, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 11, -5782, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 23, 1, 4, 204, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, -5512, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 6, 1, 4, 208, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 9, 6287, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 4, 209, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 11, -946, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 4, 210, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 4, -2159, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 4, 211, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, 4802, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 4, 212, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, 8588, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 4, 213, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, 4598, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 4, 214, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 10, 1870, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 4, 215, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 11, 5150, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 4, 216, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, -7513, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 4, 217, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 6, -3976, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 4, 218, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 8, 7565, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 4, 219, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 10, 6686, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 4, 220, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 9, 8936, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 4, 221, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2021, 5, -6898, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 4, 222, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, -3144, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 5, 224, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, -5733, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 1, 5, 225, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 4, 4826, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 5, 226, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 9, 6514, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 5, 227, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 9, 2210, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 2, 1, 5, 228, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, -2894, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 5, 229, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, 7766, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 5, 230, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, 9750, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 7, 1, 5, 231, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, -8702, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 8, 1, 5, 232, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, 10778, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 13, 1, 5, 233, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 10, 5676, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 5, 234, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, 4923, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 19, 1, 5, 235, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 8, 491, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 5, 236, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 9, -7239, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 5, 237, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, 1590, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 20, 1, 5, 238, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 6, 5351, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 5, 242, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 6, 1981, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 5, 243, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 4, 4475, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 3, 1, 5, 244, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 8, -2727, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 5, 245, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 6, -6086, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 9, 1, 5, 246, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 4, 4464, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 5, 247, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 9, 2340, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 5, 248, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, 1462, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 14, 1, 5, 249, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, 7910, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 5, 250, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 6, 7547, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 5, 251, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 4, 1614, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 21, 1, 5, 252, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, 5910, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 5, 256, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 6, 3074, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 5, 257, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 8, -3871, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 4, 1, 5, 258, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 8, 5432, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 5, 259, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, 2066, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 5, 260, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 8, 7181, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 5, 1, 5, 261, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, -6992, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 10, 1, 5, 262, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 4, -8342, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 15, 1, 5, 263, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 10, 9371, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 16, 1, 5, 264, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 10, 10834, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 16, 1, 5, 265, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, 10100, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 5, 266, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 9, -6974, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 5, 267, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, -2777, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 22, 1, 5, 268, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, -4349, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 23, 1, 5, 269, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 6, -7498, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 23, 1, 5, 270, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 11, 6407, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 23, 1, 5, 271, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, 2853, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 6, 1, 5, 274, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, 10178, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 5, 275, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, -7347, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 11, 1, 5, 276, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, -2134, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 5, 277, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, 10577, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 12, 1, 5, 278, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, -3366, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 5, 279, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 10, 5966, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 17, 1, 5, 280, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 8, -3076, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 5, 281, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 10, 3547, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 18, 1, 5, 282, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 9, 5470, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 5, 283, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 7, 5023, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 5, 284, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, 937, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 24, 1, 5, 285, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 10, -5209, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 25, 1, 5, 286, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 8, 1.5, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 26, 1, 5, 273, NULL);
INSERT INTO demo.plan_measure_risk_price VALUES (2022, 5, 1.5, 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 26, 1, 5, 272, NULL);


--
-- Data for Name: plan_measure_task; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_task VALUES (1, '[2018年度] [施策 1] タスク 1', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (2, '[2018年度] [施策 2] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (3, '[2018年度] [施策 3] タスク 1', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 3, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (4, '[2018年度] [施策 4] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (5, '[2018年度] [施策 4] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (6, '[2019年度] [施策 1] タスク 1', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 5, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (7, '[2019年度] [施策 1] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 5, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (8, '[2019年度] [施策 2] タスク 1', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 6, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (9, '[2019年度] [施策 2] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 6, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (10, '[2019年度] [施策 3] タスク 1', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 7, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (11, '[2019年度] [施策 4] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 8, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (12, '[2019年度] [施策 4] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 8, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (13, '[2020年度] [施策 1] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 9, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (14, '[2020年度] [施策 2] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 10, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (15, '[2020年度] [施策 3] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 11, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (16, '[2020年度] [施策 3] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 11, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (17, '[2020年度] [施策 4] タスク 1', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 12, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (18, '[2020年度] [施策 4] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 12, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (19, '[2021年度] [施策 1] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 13, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (20, '[2021年度] [施策 1] タスク 2', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 13, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (21, '[2021年度] [施策 2] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 14, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (22, '[2021年度] [施策 2] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 14, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (23, '[2021年度] [施策 3] タスク 1', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 15, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (24, '[2021年度] [施策 3] タスク 2', 'Common', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (2)', 15, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (25, '[2021年度] [施策 4] タスク 1', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 16, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO demo.plan_measure_task VALUES (26, 'test', 'OwnDepartment', 1, '2021-11-11 00:00:00', NULL, '2021-11-11 00:00:00', NULL, NULL, 3, 1, 'KPI その他 (1)', 17, 5, NULL, NULL, NULL, 1, NULL);


--
-- Data for Name: plan_measure_task_allocation; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_measure_task_assign; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_task_assign VALUES (1, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 3, 26, 1, 5, NULL);


--
-- Data for Name: plan_measure_task_cost_target_department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: plan_measure_task_cost_target_individual; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_task_cost_target_individual VALUES (1, 1, '2021-12-16 00:00:00', NULL, '2021-12-16 00:00:00', NULL, NULL, 5, 3, 26, 1, 5, 1, 17, NULL);


--
-- Data for Name: plan_measure_task_price; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.plan_measure_task_price VALUES (1, 2018, 11, 8947, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (2, 2018, 11, -1785, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (3, 2018, 9, -6341, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (4, 2018, 11, -6478, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (5, 2018, 8, 10949, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (6, 2018, 8, 679, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (7, 2018, 9, 9962, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (8, 2018, 9, -4242, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (9, 2018, 10, 9528, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (10, 2018, 11, -4285, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (11, 2018, 4, -2329, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (12, 2018, 5, 10033, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 19, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (13, 2018, 8, 6888, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (17, 2018, 5, 8113, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (18, 2018, 11, 4511, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (19, 2018, 11, 5092, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (20, 2018, 5, -6004, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (21, 2018, 11, -606, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (22, 2018, 8, -3881, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (23, 2018, 11, -6618, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 14, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (24, 2018, 10, -3452, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 14, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (25, 2018, 6, -6904, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (26, 2018, 10, -8861, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (27, 2018, 11, 3942, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (30, 2018, 5, 664, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (31, 2018, 11, 3203, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (32, 2018, 4, -3718, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (33, 2018, 4, -2705, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (34, 2018, 8, -3257, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (35, 2018, 9, 403, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (36, 2018, 9, -4437, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (37, 2018, 7, 9970, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (38, 2018, 11, -969, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (39, 2018, 4, -4570, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 24, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (42, 2018, 6, 8545, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 4, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (43, 2018, 7, 4209, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 4, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (44, 2018, 9, 8796, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (45, 2018, 10, 5140, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (46, 2018, 10, 5905, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (47, 2018, 6, 4794, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (48, 2018, 8, 5399, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (49, 2018, 8, -667, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (50, 2018, 11, 9451, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (51, 2018, 8, 6141, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (52, 2018, 9, 8001, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (53, 2018, 8, -6477, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (54, 2018, 8, -5884, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 18, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (55, 2018, 9, 8933, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 1, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (58, 2019, 10, -5379, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (59, 2019, 9, 2191, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (60, 2019, 10, -3797, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (61, 2019, 6, 9623, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (62, 2019, 4, 6681, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (63, 2019, 5, -5950, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (64, 2019, 10, 3645, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (65, 2019, 6, 1174, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (66, 2019, 7, 5362, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 19, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (67, 2019, 6, -9, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (70, 2019, 8, -6054, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (71, 2019, 9, 4730, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (72, 2019, 8, -758, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (73, 2019, 4, 7830, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (74, 2019, 6, 8354, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (75, 2019, 6, -3459, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (76, 2019, 9, 2545, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (77, 2019, 9, -6847, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (78, 2019, 11, 8914, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 14, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (79, 2019, 5, 7480, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (80, 2019, 9, 3843, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (81, 2019, 4, 4512, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (82, 2019, 10, 2523, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (87, 2019, 9, 7368, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (88, 2019, 11, 7405, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (89, 2019, 9, -545, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (90, 2019, 4, -6370, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (91, 2019, 11, 5412, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (92, 2019, 9, 128, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (93, 2019, 8, 8546, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (94, 2019, 5, 2754, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 24, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (95, 2019, 9, -5508, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 24, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (96, 2019, 8, -7877, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 24, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (98, 2019, 9, 7176, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 4, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (99, 2019, 4, -6449, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (100, 2019, 9, -5713, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (101, 2019, 9, -6309, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (102, 2019, 8, -7851, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (103, 2019, 6, -5693, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (104, 2019, 10, 8846, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (105, 2019, 6, -7045, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (106, 2019, 6, 2235, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (107, 2019, 5, 9043, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 18, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (108, 2019, 5, 3946, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (109, 2019, 8, 8802, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (110, 2019, 10, 10655, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 2, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (114, 2020, 4, 1349, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (115, 2020, 9, 3272, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (116, 2020, 8, 6994, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (117, 2020, 9, 7330, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (118, 2020, 4, -5260, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (119, 2020, 9, 6412, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (120, 2020, 4, 9645, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (121, 2020, 8, -6123, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (122, 2020, 7, 75, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (123, 2020, 8, -7409, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (124, 2020, 8, -4200, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 19, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (125, 2020, 6, 10353, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (126, 2020, 10, -1169, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (127, 2020, 9, 7419, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (130, 2020, 8, -3284, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (131, 2020, 5, -8234, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (132, 2020, 6, 3276, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (133, 2020, 4, -4073, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (134, 2020, 5, -6133, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (135, 2020, 7, 1067, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 14, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (136, 2020, 9, 7752, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (137, 2020, 7, 3015, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (138, 2020, 4, -723, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (144, 2020, 5, -3726, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (145, 2020, 4, -2524, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (146, 2020, 6, 2564, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (147, 2020, 11, -7136, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (148, 2020, 9, 7209, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (149, 2020, 7, 3968, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (150, 2020, 11, -8902, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (151, 2020, 4, 8231, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (152, 2020, 5, 6281, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (153, 2020, 5, -3044, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (154, 2020, 7, 10746, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (155, 2020, 8, -2196, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 24, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (159, 2020, 7, -892, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 4, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (160, 2020, 6, -6315, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (161, 2020, 6, 3763, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (162, 2020, 9, -2561, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (163, 2020, 8, 1294, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (164, 2020, 7, 122, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (165, 2020, 6, -5848, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 18, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (166, 2020, 8, 10369, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (167, 2020, 5, 8132, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (168, 2020, 11, -7581, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 3, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (171, 2021, 7, 909, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (172, 2021, 10, -7950, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (173, 2021, 6, -4734, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (174, 2021, 11, 5029, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (175, 2021, 9, -5252, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (176, 2021, 8, 6461, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (177, 2021, 4, 3222, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (178, 2021, 9, -4551, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (179, 2021, 7, -8498, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 19, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (180, 2021, 4, 1248, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 19, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (181, 2021, 7, -6850, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (182, 2021, 9, 7318, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (183, 2021, 6, 4404, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (186, 2021, 9, -8517, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (187, 2021, 8, 10936, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (188, 2021, 8, 1449, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (189, 2021, 10, 3116, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 14, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (190, 2021, 6, -8264, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (191, 2021, 7, 291, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (192, 2021, 6, -8996, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (197, 2021, 4, 1497, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (198, 2021, 5, 1717, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (199, 2021, 7, -5242, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (200, 2021, 9, 1584, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (201, 2021, 9, 4477, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (202, 2021, 9, -2039, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (203, 2021, 4, -8255, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (204, 2021, 7, 267, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (205, 2021, 6, 6164, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (206, 2021, 10, 2935, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (207, 2021, 8, 3970, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (208, 2021, 7, -5204, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 24, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (210, 2021, 5, -8415, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 4, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (211, 2021, 4, -8061, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (212, 2021, 7, -3260, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (213, 2021, 5, 6563, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (214, 2021, 5, 275, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (215, 2021, 10, 2353, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (216, 2021, 9, -212, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (217, 2021, 6, -4291, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 18, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (218, 2021, 8, -2769, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 18, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (219, 2021, 10, 2527, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 18, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (220, 2021, 8, -8777, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (221, 2021, 11, -63, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (222, 2021, 6, 7883, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 4, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (225, 2022, 8, -6477, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (226, 2022, 5, 751, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 1, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (227, 2022, 6, 7606, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 6, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (228, 2022, 5, 3182, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (229, 2022, 11, -8128, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (230, 2022, 8, 1559, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 7, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (231, 2022, 5, -5592, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 13, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (232, 2022, 4, 4490, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 19, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (233, 2022, 11, 6881, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 20, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (237, 2022, 10, -1545, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (238, 2022, 7, 7454, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 2, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (239, 2022, 7, 6061, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 8, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (240, 2022, 4, -7224, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 9, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (241, 2022, 7, 2518, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 14, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (242, 2022, 7, 2349, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 21, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (243, 2022, 9, -1240, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (244, 2022, 5, 8429, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 22, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (247, 2022, 7, -2859, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (248, 2022, 11, -8506, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 3, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (249, 2022, 11, 5245, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (250, 2022, 6, 7728, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 10, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (251, 2022, 9, 1636, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (252, 2022, 10, -7000, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (253, 2022, 5, -2470, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 15, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (254, 2022, 10, -5920, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (255, 2022, 7, 8279, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 16, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (256, 2022, 6, -90, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (257, 2022, 9, 1802, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (258, 2022, 10, -7250, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 23, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (259, 2022, 6, 7632, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 24, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (261, 2022, 4, 10174, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 4, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (262, 2022, 9, 2860, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 4, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (263, 2022, 11, -5785, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (264, 2022, 10, 5571, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (265, 2022, 8, 9239, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 5, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (266, 2022, 5, 6735, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (267, 2022, 6, -1161, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (268, 2022, 9, 10316, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 11, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (269, 2022, 5, 9001, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 12, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (270, 2022, 6, 4085, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (271, 2022, 7, -2006, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 17, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (272, 2022, 4, 5447, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 18, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (273, 2022, 7, 10335, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 25, 1, 5, NULL);
INSERT INTO demo.plan_measure_task_price VALUES (274, 2022, 9, 4, 1, '2021-11-04 00:00:00', NULL, '2021-11-04 00:00:00', NULL, NULL, 3, 26, 1, 5, NULL);


--
-- Data for Name: policy_consideration; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: price_unit; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.price_unit VALUES (1, 5, 1, '2022-01-05 23:20:34.85668', NULL, '2022-01-05 23:20:34.85668', NULL, NULL, 1);
INSERT INTO demo.price_unit VALUES (2, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 2);
INSERT INTO demo.price_unit VALUES (3, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 3);
INSERT INTO demo.price_unit VALUES (4, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 4);
INSERT INTO demo.price_unit VALUES (5, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 5);
INSERT INTO demo.price_unit VALUES (6, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 100);
INSERT INTO demo.price_unit VALUES (7, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 101);
INSERT INTO demo.price_unit VALUES (8, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 102);
INSERT INTO demo.price_unit VALUES (9, 4, 1, '2022-01-06 00:29:40.774027', NULL, '2022-01-06 00:29:40.774027', NULL, NULL, 103);


--
-- Data for Name: project_achievement_condition; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.project_achievement_condition VALUES (16, '達成条件1_2', 1, '2021-07-06 19:05:10.45144', NULL, '2021-07-06 19:05:10.45144', NULL, NULL, NULL, 1, 2);
INSERT INTO demo.project_achievement_condition VALUES (18, '達成条件2_1', 1, '2021-07-06 19:17:32.848296', NULL, '2021-07-06 19:17:32.848296', NULL, NULL, NULL, 2, 3);
INSERT INTO demo.project_achievement_condition VALUES (20, '達成条件2_2', 1, '2021-07-06 19:19:53.067904', NULL, '2021-07-06 19:19:53.067904', NULL, NULL, NULL, 2, 4);
INSERT INTO demo.project_achievement_condition VALUES (21, '達成条件1_1', 1, '2021-09-14 10:23:30.448819', 15, '2021-09-14 10:23:30.448819', 15, NULL, NULL, 1, 1);
INSERT INTO demo.project_achievement_condition VALUES (27, 'tes', 1, '2021-09-14 16:14:10.156323', 15, '2021-09-14 16:14:10.156323', 15, NULL, NULL, 1, 5);
INSERT INTO demo.project_achievement_condition VALUES (28, 'eeee', 1, '2021-09-15 19:25:10.871817', 5, '2021-09-15 19:25:10.871817', 5, NULL, NULL, 1, 6);
INSERT INTO demo.project_achievement_condition VALUES (29, 'eee', 1, '2021-09-15 19:26:04.41785', 5, '2021-09-15 19:26:04.41785', 5, NULL, NULL, 1, 7);


--
-- Data for Name: project_members_user_department; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.project_members_user_department VALUES (1, 4);
INSERT INTO demo.project_members_user_department VALUES (1, 5);
INSERT INTO demo.project_members_user_department VALUES (2, 1);
INSERT INTO demo.project_members_user_department VALUES (2, 2);
INSERT INTO demo.project_members_user_department VALUES (3, 33);
INSERT INTO demo.project_members_user_department VALUES (3, 32);
INSERT INTO demo.project_members_user_department VALUES (4, 31);
INSERT INTO demo.project_members_user_department VALUES (4, 32);
INSERT INTO demo.project_members_user_department VALUES (4, 33);


--
-- Data for Name: project_milestone; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.project_milestone VALUES (7, 'projectEndDate', '施策実施完了の期限', '2021-07-18', 1, '2021-07-06 19:14:42.956244', NULL, '2021-07-06 19:14:42.956244', NULL, NULL, NULL, 2, 3);
INSERT INTO demo.project_milestone VALUES (8, 'decisionDueDate', '施策決定の期限', '2021-07-25', 1, '2021-07-06 19:14:42.956244', NULL, '2021-07-06 19:14:42.956244', NULL, NULL, NULL, 2, 3);
INSERT INTO demo.project_milestone VALUES (9, 'others', 'マイルストーン2_1', '2021-08-01', 1, '2021-07-06 19:14:42.956244', NULL, '2021-07-06 19:14:42.956244', NULL, NULL, NULL, 2, 3);
INSERT INTO demo.project_milestone VALUES (10, 'projectEndDate', '施策実施完了の期限', '2021-08-08', 1, '2021-07-06 19:18:55.780019', NULL, '2021-07-06 19:18:55.780019', NULL, NULL, NULL, 2, 4);
INSERT INTO demo.project_milestone VALUES (11, 'decisionDueDate', '施策決定の期限', '2021-08-15', 1, '2021-07-06 19:18:55.780019', NULL, '2021-07-06 19:18:55.780019', NULL, NULL, NULL, 2, 4);
INSERT INTO demo.project_milestone VALUES (12, 'others', 'マイルストーン2_2', '2021-08-22', 1, '2021-07-06 19:18:55.780019', NULL, '2021-07-06 19:18:55.780019', NULL, NULL, NULL, 2, 4);
INSERT INTO demo.project_milestone VALUES (2, 'decisionDueDate', '施策決定の期限', '2021-10-01', 2, '2021-07-06 16:28:23.560222', NULL, '2021-08-20 18:55:06.52174', 5, NULL, NULL, 1, 1);
INSERT INTO demo.project_milestone VALUES (3, 'others', 'マイルストーン1_1', '2021-11-01', 2, '2021-07-06 16:28:23.560222', NULL, '2021-08-20 18:55:06.523406', 5, NULL, NULL, 1, 1);
INSERT INTO demo.project_milestone VALUES (5, 'decisionDueDate', '施策決定の期限', '2021-12-01', 2, '2021-07-06 19:01:02.481666', NULL, '2021-08-20 18:55:28.24278', 5, NULL, NULL, 1, 2);
INSERT INTO demo.project_milestone VALUES (6, 'others', 'マイルストーン1_2', '2022-01-01', 2, '2021-07-06 19:01:02.481666', NULL, '2021-08-20 18:55:28.244788', 5, NULL, NULL, 1, 2);
INSERT INTO demo.project_milestone VALUES (1, 'projectEndDate', '施策実施完了の期限', '2022-03-01', 3, '2021-07-06 16:28:23.560222', NULL, '2021-08-20 20:05:42.958581', 5, NULL, NULL, 1, 1);
INSERT INTO demo.project_milestone VALUES (4, 'projectEndDate', '施策実施完了の期限', '2022-05-01', 3, '2021-07-06 19:01:02.481666', NULL, '2021-08-20 20:05:42.988923', 5, NULL, NULL, 1, 2);
INSERT INTO demo.project_milestone VALUES (13, 'projectEndDate', '施策実施完了の期限', '2021-09-15', 1, '2021-09-14 16:10:48.35279', 15, '2021-09-14 16:10:48.35279', 15, NULL, NULL, 1, 5);
INSERT INTO demo.project_milestone VALUES (14, 'decisionDueDate', '施策決定の期限', '2021-09-09', 1, '2021-09-14 16:10:48.35279', 15, '2021-09-14 16:10:48.35279', 15, NULL, NULL, 1, 5);
INSERT INTO demo.project_milestone VALUES (15, 'others', NULL, NULL, 1, '2021-09-14 16:10:48.35279', 15, '2021-09-14 16:10:48.35279', 15, NULL, NULL, 1, 5);
INSERT INTO demo.project_milestone VALUES (16, 'projectEndDate', '施策実施完了の期限', '2021-09-06', 1, '2021-09-15 19:25:10.871817', 5, '2021-09-15 19:25:10.871817', 5, NULL, NULL, 1, 6);
INSERT INTO demo.project_milestone VALUES (17, 'decisionDueDate', '施策決定の期限', '2021-08-31', 1, '2021-09-15 19:25:10.871817', 5, '2021-09-15 19:25:10.871817', 5, NULL, NULL, 1, 6);
INSERT INTO demo.project_milestone VALUES (18, 'others', NULL, NULL, 1, '2021-09-15 19:25:10.871817', 5, '2021-09-15 19:25:10.871817', 5, NULL, NULL, 1, 6);
INSERT INTO demo.project_milestone VALUES (19, 'projectEndDate', '施策実施完了の期限', '2021-09-24', 1, '2021-09-15 19:26:04.41785', 5, '2021-09-15 19:26:04.41785', 5, NULL, NULL, 1, 7);
INSERT INTO demo.project_milestone VALUES (20, 'decisionDueDate', '施策決定の期限', '2021-09-02', 1, '2021-09-15 19:26:04.41785', 5, '2021-09-15 19:26:04.41785', 5, NULL, NULL, 1, 7);
INSERT INTO demo.project_milestone VALUES (21, 'others', NULL, NULL, 1, '2021-09-15 19:26:04.41785', 5, '2021-09-15 19:26:04.41785', 5, NULL, NULL, 1, 7);


--
-- Data for Name: project_progress_report; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: project_schedule; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: sequence; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.sequence VALUES (2, 'project', 2, 2, '2021-07-06 19:14:42.978609', NULL, '2021-07-06 19:18:55.803378', NULL, NULL, NULL);
INSERT INTO demo.sequence VALUES (4, 'measure', 4, 1, '2021-08-20 19:21:32.98486', 5, '2021-08-20 19:25:24.498544', 5, NULL, NULL);
INSERT INTO demo.sequence VALUES (3, 'task', 8, 1, '2021-07-16 12:55:41.728664', 15, '2021-09-14 16:16:25.641048', 15, NULL, NULL);
INSERT INTO demo.sequence VALUES (1, 'project', 5, 1, '2021-07-06 16:28:23.591601', 15, '2021-09-15 19:26:04.450004', 5, NULL, NULL);
INSERT INTO demo.sequence VALUES (5, 'approval_request', 12, 1, '2021-09-13 14:21:11', 5, '2021-09-17 10:30:51.731552', 5, NULL, NULL);
INSERT INTO demo.sequence VALUES (7, 'planMeasureRegReq', 1, 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', 5, NULL, NULL);
INSERT INTO demo.sequence VALUES (6, 'planMeasure', 17, 1, '2021-11-11 00:00:00', 5, '2021-11-11 00:00:00', 5, NULL, NULL);


--
-- Data for Name: study_content; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.study_content VALUES (3, 4, '検討内容1', 1, 5, 5, '2021-08-20 18:59:59.729934', '2021-08-20 18:59:59.729934', NULL, 1);


--
-- Data for Name: study_content_measures_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: system_measure_implementation_tasks_measure_implementation_task; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: target; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.target VALUES (2, 2, '目標1', 1, 5, 5, NULL, '2021-08-20 18:53:36.298337', '2021-08-20 18:53:36.298337', NULL, 1);


--
-- Data for Name: target_measures_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.target_measures_measure VALUES (2, 4);


--
-- Data for Name: todo; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--

INSERT INTO demo.todo VALUES (1, 3, '対応内容1', 1, 5, 5, '2021-08-20 18:51:31.802808', '2021-08-20 18:51:31.802808', NULL, NULL, 1);


--
-- Data for Name: todo_measures_measure; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Data for Name: typeorm_metadata; Type: TABLE DATA; Schema: demo; Owner: XXXuser
--



--
-- Name: access_control_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.access_control_id_seq', 10000, false);


--
-- Name: account_display_title_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.account_display_title_id_seq', 10000, false);


--
-- Name: account_title_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.account_title_id_seq', 10000, false);


--
-- Name: annual_plan_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.annual_plan_id_seq', 10000, true);


--
-- Name: approval_category_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_category_id_seq', 10000, false);


--
-- Name: approval_email_template_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_email_template_id_seq', 10000, false);


--
-- Name: approval_flow_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_flow_id_seq', 10000, true);


--
-- Name: approval_history_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_history_id_seq', 10000, false);


--
-- Name: approval_request_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_request_id_seq', 10000, true);


--
-- Name: approval_request_message_template_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_request_message_template_id_seq', 10000, false);


--
-- Name: approval_step_assignee_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_step_assignee_id_seq', 10000, true);


--
-- Name: approval_step_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_step_id_seq', 10000, true);


--
-- Name: approval_step_organization_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_step_organization_id_seq', 10000, false);


--
-- Name: approval_step_position_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approval_step_position_id_seq', 10000, false);


--
-- Name: approved_annual_plan_snapshot_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.approved_annual_plan_snapshot_id_seq', 10000, false);


--
-- Name: badget_GENERAL_ID_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo."badget_GENERAL_ID_seq"', 10000, false);


--
-- Name: business_year_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.business_year_id_seq', 10000, false);


--
-- Name: cause_condition_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.cause_condition_id_seq', 10000, true);


--
-- Name: cause_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.cause_id_seq', 10000, true);


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.client_id_seq', 10000, false);


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.company_id_seq', 10000, false);


--
-- Name: department_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.department_id_seq', 10000, true);


--
-- Name: department_level_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.department_level_id_seq', 76, true);


--
-- Name: investigation_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.investigation_id_seq', 10000, true);


--
-- Name: issue_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.issue_id_seq', 10000, true);


--
-- Name: it_asset_type_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.it_asset_type_id_seq', 10000, false);


--
-- Name: manhour_GENERAL_ID_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo."manhour_GENERAL_ID_seq"', 10000, false);


--
-- Name: measure_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.measure_id_seq', 10000, true);


--
-- Name: measure_implementation_effect_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.measure_implementation_effect_id_seq', 10000, true);


--
-- Name: measure_implementation_task_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.measure_implementation_task_id_seq', 10000, true);


--
-- Name: notification_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.notification_id_seq', 10000, true);


--
-- Name: notification_template_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.notification_template_id_seq', 10000, true);


--
-- Name: other_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.other_id_seq', 10000, true);


--
-- Name: plan_formulation_email_template_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_formulation_email_template_id_seq', 10000, true);


--
-- Name: plan_formulation_request_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_formulation_request_id_seq', 10000, false);


--
-- Name: plan_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_id_seq', 10000, true);


--
-- Name: plan_measure_cost_assign_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_cost_assign_id_seq', 10000, true);


--
-- Name: plan_measure_cost_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_cost_id_seq', 10000, true);


--
-- Name: plan_measure_cost_price_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_cost_price_id_seq', 10000, true);


--
-- Name: plan_measure_cost_target_department_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_cost_target_department_id_seq', 10000, false);


--
-- Name: plan_measure_cost_target_individual_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_cost_target_individual_id_seq', 10000, false);


--
-- Name: plan_measure_effect_sale_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_effect_sale_id_seq', 10000, true);


--
-- Name: plan_measure_effect_sale_price_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_effect_sale_price_id_seq', 10000, true);


--
-- Name: plan_measure_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_id_seq', 10000, true);


--
-- Name: plan_measure_registration_request_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_registration_request_id_seq', 10000, true);


--
-- Name: plan_measure_risk_assign_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_risk_assign_id_seq', 10000, true);


--
-- Name: plan_measure_risk_cost_target_department_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_risk_cost_target_department_id_seq', 10000, false);


--
-- Name: plan_measure_risk_cost_target_individual_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_risk_cost_target_individual_id_seq', 10000, false);


--
-- Name: plan_measure_risk_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_risk_id_seq', 10000, true);


--
-- Name: plan_measure_risk_price_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_risk_price_id_seq', 10000, true);


--
-- Name: plan_measure_task_allocation_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_task_allocation_id_seq', 10000, false);


--
-- Name: plan_measure_task_assign_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_task_assign_id_seq', 10000, false);


--
-- Name: plan_measure_task_cost_target_department_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_task_cost_target_department_id_seq', 10000, false);


--
-- Name: plan_measure_task_cost_target_individual_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_task_cost_target_individual_id_seq', 10000, false);


--
-- Name: plan_measure_task_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_task_id_seq', 10000, true);


--
-- Name: plan_measure_task_price_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.plan_measure_task_price_id_seq', 10000, true);


--
-- Name: policy_consideration_POLICY_CONSID_ID_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo."policy_consideration_POLICY_CONSID_ID_seq"', 10000, false);


--
-- Name: position_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.position_id_seq', 10000, true);


--
-- Name: price_unit_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.price_unit_id_seq', 9, true);


--
-- Name: project_achievement_condition_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.project_achievement_condition_id_seq', 10000, true);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.project_id_seq', 10000, true);


--
-- Name: project_milestone_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.project_milestone_id_seq', 10000, true);


--
-- Name: project_progress_report_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.project_progress_report_id_seq', 10000, false);


--
-- Name: project_schedule_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.project_schedule_id_seq', 10000, false);


--
-- Name: salary_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.salary_id_seq', 10000, false);


--
-- Name: sequence_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.sequence_id_seq', 10000, true);


--
-- Name: study_content_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.study_content_id_seq', 10000, true);


--
-- Name: system_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.system_id_seq', 10000, false);


--
-- Name: target_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.target_id_seq', 10000, true);


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.task_id_seq', 10000, true);


--
-- Name: todo_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.todo_id_seq', 10000, true);


--
-- Name: user_department_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.user_department_id_seq', 10000, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: demo; Owner: XXXuser
--

SELECT pg_catalog.setval('demo.users_id_seq', 10000, true);


--
-- PostgreSQL database dump complete
--

