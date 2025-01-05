/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : epos_mc

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 03/06/2024 11:44:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_role`;
CREATE TABLE `auth_group_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usergroup_id` bigint NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT 1,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1968 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auth_group_role
-- ----------------------------
INSERT INTO `auth_group_role` VALUES (1, 1, 'Group_menu', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (2, 1, 'Group_menu', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (3, 1, 'Group_menu', 'getDataMenu', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (4, 1, 'Change_pass', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (5, 1, 'Change_pass', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (6, 1, 'Group', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (7, 1, 'Group', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (8, 1, 'Group', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (9, 1, 'Group', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (10, 1, 'Group', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (11, 1, 'Home', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (18, 1, 'Group_menu', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (19, 1, 'Group_menu', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (20, 1, 'Group_menu', 'getMenu', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (21, 1, 'Menu', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (22, 1, 'Menu', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (23, 1, 'Menu', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (24, 1, 'Menu', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (25, 1, 'Menu', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (26, 1, 'Level', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (27, 1, 'Level', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (28, 1, 'Level', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (29, 1, 'Level', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (30, 1, 'Level', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (73, 1, 'User', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (74, 1, 'User', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (75, 1, 'User', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (76, 1, 'User', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (77, 1, 'User', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (78, 1, 'User', 'getUsergroup', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (79, 1, 'User', 'getUserlevel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (80, 1, 'User', 'getDataUser', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (81, 3, 'Change_pass', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (82, 3, 'Change_pass', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (85, 4, 'Change_pass', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (86, 4, 'Change_pass', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (113, 1, 'M_transaction', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (114, 1, 'M_transaction', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (115, 1, 'M_transaction', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (116, 1, 'M_transaction', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (117, 1, 'M_transaction', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (118, 1, 'M_company', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (119, 1, 'M_company', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (120, 1, 'M_company', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (121, 1, 'M_company', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (122, 1, 'M_company', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (124, 1, 'M_transaction_date', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (125, 1, 'M_transaction_date', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (126, 1, 'M_transaction_date', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (127, 1, 'M_transaction_date', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (128, 1, 'M_transaction_date', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (129, 1, 'M_transaction', 'getTransactionId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (789, 1, 'M_airport', 'getAirport', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (866, 1, 'User', 'getCreatedby', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (867, 1, 'User', 'getuserbyId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (873, 1, 'M_store', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (874, 1, 'M_store', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (875, 1, 'M_store', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (876, 1, 'M_store', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (877, 1, 'M_store', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (878, 1, 'M_store', 'getStore', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (999, 3, 'Stock', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1000, 3, 'Stock', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1002, 3, 'Stock', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1003, 3, 'Summary_by_date', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1004, 3, 'Summary_by_date', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1005, 3, 'Summary_by_date', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1006, 3, 'Summary_by_date', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1007, 3, 'Summary_by_month', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1008, 3, 'Summary_by_month', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1009, 3, 'Summary_by_month', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1010, 3, 'Summary_by_month', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1011, 3, 'Summary_by_year', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1012, 3, 'Summary_by_year', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1013, 3, 'Summary_by_year', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1014, 3, 'Summary_by_year', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1018, 3, 'Dttot', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1019, 3, 'Dttot', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1020, 3, 'Dttot', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1021, 3, 'Dttot', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1022, 3, 'Dttot', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1023, 3, 'M_airport', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1024, 3, 'M_airport', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1025, 3, 'M_airport', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1026, 3, 'M_airport', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1027, 3, 'M_airport', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1028, 3, 'M_airport', 'getAirport', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1045, 3, 'M_customer_data', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1046, 3, 'M_customer_data', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1047, 3, 'M_customer_data', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1048, 3, 'M_customer_data', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1049, 3, 'M_customer_data', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1050, 3, 'M_customer_data', 'getIdentitas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1051, 3, 'M_customer_type', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1052, 3, 'M_customer_type', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1053, 3, 'M_customer_type', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1054, 3, 'M_customer_type', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1055, 3, 'M_customer_type', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1056, 3, 'M_customer_type', 'getType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1057, 3, 'M_customer_work', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1058, 3, 'M_customer_work', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1059, 3, 'M_customer_work', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1060, 3, 'M_customer_work', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1061, 3, 'M_customer_work', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1062, 3, 'M_customer_work', 'getWork', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1063, 3, 'User', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1065, 3, 'User', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1066, 3, 'User', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1069, 3, 'User', 'getDataUser', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1070, 3, 'User', 'getCreatedby', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1071, 3, 'User', 'getuserbyId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1072, 3, 'Home', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1074, 3, 'Home', 'gettrxbymonth_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1075, 3, 'Home', 'gettrxbyyear_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1076, 3, 'Home', 'gettrxbymonth', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1077, 3, 'Home', 'gettrxbyytd_pivot', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1078, 3, 'M_nationality', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1079, 3, 'M_nationality', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1080, 3, 'M_nationality', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1081, 3, 'M_nationality', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1082, 3, 'M_nationality', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1083, 3, 'M_nationality', 'getNationality', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1084, 3, 'M_payment_type', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1085, 3, 'M_payment_type', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1086, 3, 'M_payment_type', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1087, 3, 'M_payment_type', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1088, 3, 'M_payment_type', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1089, 3, 'M_payment_type', 'getPaymentType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1090, 3, 'M_valas', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1091, 3, 'M_valas', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1092, 3, 'M_valas', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1093, 3, 'M_valas', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1094, 3, 'M_valas', 'getValas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1095, 3, 'M_valas', 'getvalasbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1097, 3, 'Nasabah', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1098, 3, 'Nasabah', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1099, 3, 'Nasabah_form', 'add_foto', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1100, 3, 'M_valas', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1101, 3, 'Nasabah_form', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1102, 3, 'Nasabah_form', 'generate_code', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1103, 3, 'Nasabah_form', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1104, 3, 'Nasabah_form', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1105, 3, 'Nasabah_form', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1106, 3, 'Nasabah_form', 'getByID', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1107, 3, 'Rate_daily', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1108, 3, 'Rate_daily', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1109, 3, 'Rate_daily', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1110, 3, 'Rate_daily', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1111, 3, 'Rate_daily', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1113, 3, 'User', 'getcountuserbyCompanyId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1145, 4, 'Home', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1147, 4, 'Home', 'gettrxbymonth_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1148, 4, 'Home', 'gettrxbyyear_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1149, 4, 'Home', 'gettrxbymonth', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1150, 4, 'Home', 'gettrxbyytd_pivot', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1157, 4, 'Dttot', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1158, 4, 'Dttot', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1159, 4, 'Nasabah', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1160, 4, 'Nasabah', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1161, 4, 'Nasabah_form', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1162, 4, 'Nasabah_form', 'generate_code', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1163, 4, 'Nasabah_form', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1164, 4, 'Nasabah_form', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1165, 4, 'Nasabah_form', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1166, 4, 'Nasabah_form', 'getByID', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1167, 4, 'Nasabah_form', 'add_foto', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1168, 4, 'M_payment_type', 'getPaymentType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1169, 4, 'M_airport', 'getAirport', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1171, 4, 'M_customer_work', 'getWork', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1172, 4, 'M_nationality', 'getNationality', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1173, 4, 'M_valas', 'getValas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1174, 4, 'M_store', 'getStore', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1175, 4, 'M_customer_type', 'getType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1177, 4, 'M_valas', 'getvalasbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1178, 4, 'Stock', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1179, 4, 'Stock', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1181, 4, 'Stock', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1182, 4, 'Summary_by_date', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1183, 4, 'Summary_by_date', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1184, 4, 'Summary_by_date', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1185, 4, 'Summary_by_date', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1186, 4, 'Summary_by_month', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1187, 4, 'Summary_by_month', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1188, 4, 'Summary_by_month', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1189, 4, 'Summary_by_month', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1190, 4, 'Summary_by_year', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1191, 4, 'Summary_by_year', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1192, 4, 'Summary_by_year', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1193, 4, 'Summary_by_year', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1194, 4, 'M_store', 'getStoryTrx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1196, 3, 'M_store', 'getStoryTrx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1197, 3, 'M_store', 'getStore', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1199, 2, 'Home', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1201, 2, 'Home', 'gettrxbymonth_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1202, 2, 'Home', 'gettrxbyyear_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1203, 2, 'Home', 'gettrxbymonth', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1204, 2, 'Home', 'gettrxbyytd_pivot', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1205, 2, 'Change_pass', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1206, 2, 'Change_pass', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1207, 2, 'Summary_by_date', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1208, 2, 'Summary_by_date', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1209, 2, 'Summary_by_date', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1210, 2, 'Summary_by_date', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1211, 2, 'Summary_by_month', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1212, 2, 'Summary_by_month', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1213, 2, 'Summary_by_month', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1214, 2, 'Summary_by_month', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1215, 2, 'Summary_by_year', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1216, 2, 'Summary_by_year', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1217, 2, 'Summary_by_year', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1218, 2, 'Summary_by_year', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1219, 2, 'Stock', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1220, 2, 'Stock', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1221, 2, 'Stock', 'generate_stock_pull', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1222, 2, 'Stock', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1231, 6, 'Home', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1233, 6, 'Home', 'gettrxbymonth_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1234, 6, 'Home', 'gettrxbyyear_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1235, 6, 'Home', 'gettrxbymonth', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1236, 6, 'Home', 'gettrxbyytd_pivot', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1237, 6, 'Change_pass', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1238, 6, 'Change_pass', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1241, 2, 'M_store', 'getStore', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1244, 6, 'M_store', 'getStore', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1245, 6, 'M_store', 'getStoryTrx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1328, 5, 'User', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1330, 5, 'User', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1332, 5, 'User', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1335, 5, 'User', 'getDataUser', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1336, 5, 'User', 'getCreatedby', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1337, 5, 'User', 'getuserbyId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1338, 5, 'User', 'getcountuserbyCompanyId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1363, 5, 'Summary_by_month', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1364, 5, 'Summary_by_month', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1365, 5, 'Summary_by_year', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1366, 5, 'Summary_by_year', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1367, 5, 'Summary_by_year', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1368, 5, 'Summary_by_year', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1375, 6, 'Nasabah', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1376, 6, 'Nasabah', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1377, 6, 'Nasabah_form', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1378, 6, 'Nasabah_form', 'generate_code', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1379, 6, 'Nasabah_form', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1380, 6, 'Nasabah_form', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1381, 6, 'Nasabah_form', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1382, 6, 'Nasabah_form', 'getByID', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1383, 6, 'Nasabah_form', 'add_foto', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1414, 6, 'Dttot', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1418, 6, 'M_airport', 'getAirport', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1419, 6, 'M_customer_data', 'getIdentitas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1420, 6, 'M_customer_type', 'getType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1421, 6, 'M_customer_work', 'getWork', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1422, 6, 'M_nationality', 'getNationality', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1423, 6, 'M_payment_type', 'getPaymentType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1424, 6, 'M_valas', 'getvalasbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1425, 6, 'M_valas', 'getValasjual', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1429, 2, 'M_customer_list', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1430, 2, 'M_customer_list', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1431, 2, 'M_customer_list', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1432, 3, 'M_customer_list', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1433, 3, 'M_customer_list', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1434, 3, 'M_customer_list', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1462, 1, 'M_company', 'getBranch', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1463, 1, 'M_company', 'getRegion', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1464, 2, 'M_company', 'getRegion', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1465, 3, 'M_company', 'getRegion', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1466, 4, 'M_company', 'getRegion', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1468, 6, 'M_company', 'getRegion', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1501, 5, 'Stock', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1502, 5, 'Stock', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1504, 5, 'Stock', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1505, 5, 'Summary_by_date', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1506, 5, 'Summary_by_date', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1507, 5, 'Summary_by_date', 'gettotal', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1508, 5, 'Summary_by_date', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1509, 5, 'Summary_by_month', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1510, 5, 'Summary_by_month', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1511, 5, 'Change_pass', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1512, 5, 'Change_pass', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1513, 5, 'Dttot', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1514, 5, 'Dttot', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1515, 5, 'Dttot', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1516, 5, 'Dttot', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1517, 5, 'Dttot', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1518, 5, 'M_airport', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1519, 5, 'M_airport', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1520, 5, 'M_airport', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1521, 5, 'M_airport', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1522, 5, 'M_airport', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1523, 5, 'M_airport', 'getAirport', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1524, 5, 'M_customer_data', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1525, 5, 'M_customer_data', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1526, 5, 'M_customer_data', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1527, 5, 'M_customer_data', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1528, 5, 'M_customer_data', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1529, 5, 'M_customer_data', 'getIdentitas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1530, 5, 'M_customer_list', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1531, 5, 'M_customer_list', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1532, 5, 'M_customer_list', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1533, 5, 'M_customer_type', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1534, 5, 'M_customer_type', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1535, 5, 'M_customer_type', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1536, 5, 'M_customer_type', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1537, 5, 'M_customer_type', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1538, 5, 'M_customer_type', 'getType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1539, 5, 'M_customer_work', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1540, 5, 'M_customer_work', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1541, 5, 'M_customer_work', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1542, 5, 'M_customer_work', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1543, 5, 'M_customer_work', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1544, 5, 'M_customer_work', 'getWork', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1545, 5, 'Home', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1547, 5, 'Home', 'gettrxbymonth_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1548, 5, 'Home', 'gettrxbyyear_piechart', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1549, 5, 'Home', 'gettrxbymonth', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1550, 5, 'Home', 'gettrxbyytd_pivot', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1551, 5, 'M_company', 'getRegion', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1552, 5, 'M_nationality', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1553, 5, 'M_nationality', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1554, 5, 'M_nationality', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1555, 5, 'M_nationality', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1556, 5, 'M_nationality', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1557, 5, 'M_nationality', 'getNationality', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1558, 5, 'M_payment_type', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1559, 5, 'M_payment_type', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1560, 5, 'M_payment_type', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1561, 5, 'M_payment_type', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1562, 5, 'M_payment_type', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1563, 5, 'M_payment_type', 'getPaymentType', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1564, 5, 'M_store', 'getStoryTrx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1565, 5, 'M_valas', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1566, 5, 'M_valas', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1567, 5, 'M_valas', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1568, 5, 'M_valas', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1569, 5, 'M_valas', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1570, 5, 'M_valas', 'getValas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1571, 5, 'M_valas', 'getvalasbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1573, 5, 'Rate_daily', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1574, 5, 'Rate_daily', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1575, 5, 'Rate_daily', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1576, 5, 'Rate_daily', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1577, 5, 'Rate_daily', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1578, 5, 'Nasabah', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1579, 5, 'Nasabah', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1580, 5, 'Nasabah_form', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1581, 5, 'Nasabah_form', 'generate_code', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1582, 5, 'Nasabah_form', 'insert', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1583, 5, 'Nasabah_form', 'update', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1584, 5, 'Nasabah_form', 'delete', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1585, 5, 'Nasabah_form', 'getByID', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1586, 5, 'Nasabah_form', 'add_foto', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1587, 6, 'Dttot', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1588, 3, 'Transaksi', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1589, 3, 'Transaksi', 'generate_code_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1590, 3, 'Transaksi', 'generate_code_confirm', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1591, 3, 'Transaksi', 'insert_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1592, 3, 'Transaksi', 'update_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1593, 3, 'Transaksi', 'insert_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1594, 3, 'Transaksi', 'delete_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1595, 3, 'Transaksi', 'tampil_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1596, 3, 'Transaksi', 'tampil_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1597, 3, 'Transaksi', 'tampil_nasabah', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1598, 3, 'Transaksi', 'getstockbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1599, 3, 'Transaksi', 'getratebyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1600, 3, 'Transaksi', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1601, 3, 'Transaksi', 'cancel_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1602, 3, 'Transaksi', 'confirm_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1603, 3, 'Transaksi', 'task_insert_tr_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1604, 3, 'Transaksi', 'task_insert_tr_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1605, 3, 'Transaksi_list', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1606, 3, 'Transaksi_list', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1614, 3, 'Transaksi_task', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1615, 3, 'Transaksi_task', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1632, 4, 'M_customer_data', 'getIdentitas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1642, 5, 'Transaksi', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1643, 5, 'Transaksi', 'generate_code_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1644, 5, 'Transaksi', 'generate_code_confirm', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1645, 5, 'Transaksi', 'insert_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1646, 5, 'Transaksi', 'update_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1647, 5, 'Transaksi', 'insert_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1648, 5, 'Transaksi', 'delete_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1649, 5, 'Transaksi', 'tampil_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1650, 5, 'Transaksi', 'tampil_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1651, 5, 'Transaksi', 'tampil_nasabah', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1652, 5, 'Transaksi', 'getstockbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1653, 5, 'Transaksi', 'getratebyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1654, 5, 'Transaksi', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1655, 5, 'Transaksi', 'cancel_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1656, 5, 'Transaksi', 'confirm_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1657, 5, 'Transaksi', 'task_insert_tr_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1658, 5, 'Transaksi', 'task_insert_tr_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1659, 5, 'Transaksi_list', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1660, 5, 'Transaksi_list', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1668, 5, 'Transaksi_task', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1669, 5, 'Transaksi_task', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1678, 6, 'Transaksi', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1679, 6, 'Transaksi', 'generate_code_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1680, 6, 'Transaksi', 'generate_code_confirm', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1681, 6, 'Transaksi', 'insert_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1682, 6, 'Transaksi', 'update_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1683, 6, 'Transaksi', 'insert_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1684, 6, 'Transaksi', 'delete_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1685, 6, 'Transaksi', 'tampil_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1686, 6, 'Transaksi', 'tampil_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1687, 6, 'Transaksi', 'tampil_nasabah', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1688, 6, 'Transaksi', 'getstockbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1689, 6, 'Transaksi', 'getratebyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1690, 6, 'Transaksi', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1691, 6, 'Transaksi', 'cancel_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1692, 6, 'Transaksi', 'confirm_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1693, 6, 'Transaksi', 'task_insert_tr_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1694, 6, 'Transaksi', 'task_insert_tr_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1695, 6, 'Transaksi_list', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1696, 6, 'Transaksi_list', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1704, 6, 'Transaksi_task', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1705, 6, 'Transaksi_task', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1710, 5, 'M_store', 'getStore', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1716, 3, 'Transaksi_show', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1717, 3, 'Transaksi_show', 'tampil_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1718, 3, 'Transaksi_show', 'tampil_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1719, 3, 'Transaksi_show', 'cancel_trx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1720, 3, 'Transaksi_show', 'generateRandomString', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1721, 3, 'Transaksi_show', 'printdotmatrix', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1722, 3, 'Transaksi_show', 'printpdf', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1723, 4, 'Transaksi_list', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1724, 4, 'Transaksi_list', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1725, 4, 'Transaksi_show', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1726, 4, 'Transaksi_show', 'tampil_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1727, 4, 'Transaksi_show', 'tampil_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1728, 4, 'Transaksi_show', 'cancel_trx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1729, 4, 'Transaksi_show', 'generateRandomString', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1730, 4, 'Transaksi_show', 'printdotmatrix', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1731, 4, 'Transaksi_show', 'printpdf', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1732, 4, 'Transaksi_task', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1733, 4, 'Transaksi', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1734, 4, 'Transaksi', 'generate_code_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1735, 4, 'Transaksi', 'generate_code_confirm', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1736, 4, 'Transaksi', 'insert_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1737, 4, 'Transaksi', 'update_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1738, 4, 'Transaksi', 'insert_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1739, 4, 'Transaksi', 'delete_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1740, 4, 'Transaksi', 'tampil_header_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1741, 4, 'Transaksi', 'tampil_detail_temp', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1742, 4, 'Transaksi', 'tampil_nasabah', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1743, 4, 'Transaksi', 'getstockbyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1744, 4, 'Transaksi', 'getratebyid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1745, 4, 'Transaksi', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1746, 4, 'Transaksi', 'cancel_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1747, 4, 'Transaksi', 'confirm_task', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1748, 4, 'Transaksi', 'task_insert_tr_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1749, 4, 'Transaksi', 'task_insert_tr_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1750, 4, 'Transaksi_task', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1751, 5, 'Transaksi_show', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1752, 5, 'Transaksi_show', 'tampil_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1753, 5, 'Transaksi_show', 'tampil_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1754, 5, 'Transaksi_show', 'cancel_trx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1755, 5, 'Transaksi_show', 'generateRandomString', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1756, 5, 'Transaksi_show', 'printdotmatrix', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1757, 5, 'Transaksi_show', 'printpdf', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1758, 6, 'Transaksi_show', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1759, 6, 'Transaksi_show', 'tampil_header', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1760, 6, 'Transaksi_show', 'tampil_detail', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1761, 6, 'Transaksi_show', 'cancel_trx', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1762, 6, 'Transaksi_show', 'generateRandomString', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1763, 6, 'Transaksi_show', 'printdotmatrix', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1764, 6, 'Transaksi_show', 'printpdf', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1774, 3, 'Store', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1775, 3, 'Store', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1776, 5, 'Store', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1777, 5, 'Store', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1778, 1, 'Api_ap1', 'ap1_sha1', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1779, 1, 'Api_ap1', 'ap1_encrypt_store', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1780, 1, 'Api_ap1', 'ap1_post_api', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1781, 1, 'Api_ap2', 'ap2_post_api', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1782, 1, 'Api_ap2', 'ap2_login', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1783, 1, 'Api_ap2', 'ap2_get_store', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1784, 3, 'Api_ap2', 'ap2_post_api', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1785, 3, 'Api_ap2', 'ap2_login', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1786, 3, 'Api_ap2', 'ap2_trx_reccord', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1787, 3, 'Api_ap2', 'ap2_trx_adjustment', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1788, 3, 'Api_ap2', 'ap2_trx_get', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1789, 3, 'Api_ap2', 'ap2_get_store', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1790, 3, 'Api_ap2_transaction_adjustment', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1791, 3, 'Api_ap2_transaction_adjustment', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1792, 3, 'Api_ap2_transaction_get', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1793, 3, 'Api_ap2_transaction_get', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1794, 3, 'Api_ap2_transaction_get', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1795, 4, 'Api_ap2', 'ap2_post_api', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1796, 4, 'Api_ap2', 'ap2_login', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1797, 4, 'Api_ap2', 'ap2_trx_reccord', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1798, 4, 'Api_ap2', 'ap2_trx_adjustment', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1799, 4, 'Api_ap2', 'ap2_trx_get', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1800, 4, 'Api_ap2', 'ap2_get_store', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1801, 4, 'Api_ap2_transaction_adjustment', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1802, 4, 'Api_ap2_transaction_adjustment', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1803, 4, 'Api_ap2_transaction_get', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1804, 4, 'Api_ap2_transaction_get', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1805, 4, 'Api_ap2_transaction_get', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1806, 5, 'Api_ap1', 'ap1_sha1', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1807, 5, 'Api_ap1', 'ap1_encrypt_store', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1808, 5, 'Api_ap1', 'ap1_encrypt_trx_reccord', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1809, 5, 'Api_ap1', 'ap1_encrypt_trx_advice', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1810, 5, 'Api_ap1', 'ap1_encrypt_trx_refund', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1811, 5, 'Api_ap1', 'ap1_post_api', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1812, 5, 'Api_ap1_transaction_advice', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1813, 5, 'Api_ap1_transaction_advice', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1814, 5, 'Api_ap1_transaction_refund', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1815, 5, 'Api_ap1_transaction_refund', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1816, 6, 'Api_ap1', 'ap1_sha1', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1817, 6, 'Api_ap1', 'ap1_encrypt_store', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1818, 6, 'Api_ap1', 'ap1_encrypt_trx_reccord', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1819, 6, 'Api_ap1', 'ap1_encrypt_trx_advice', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1820, 6, 'Api_ap1', 'ap1_encrypt_trx_refund', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1821, 6, 'Api_ap1', 'ap1_post_api', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1822, 6, 'Api_ap1_transaction_advice', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1823, 6, 'Api_ap1_transaction_advice', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1824, 6, 'Api_ap1_transaction_refund', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1825, 6, 'Api_ap1_transaction_refund', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1826, 3, 'Api_transaction_input', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1827, 3, 'Api_transaction_input', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1828, 4, 'Api_transaction_input', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1829, 4, 'Api_transaction_input', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1830, 5, 'Api_transaction_input', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1831, 5, 'Api_transaction_input', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1832, 6, 'Api_transaction_input', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1833, 6, 'Api_transaction_input', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1834, 5, 'Api_ap1', 'ap1_api_getresult', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1835, 6, 'Api_ap1', 'ap1_api_getresult', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1836, 6, 'User', 'getCreatedby', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1837, 6, 'User', 'getuserbyId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1838, 6, 'M_valas', 'getValas', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1840, 6, 'Stock', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1841, 6, 'Stock', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1842, 6, 'Stock', 'excel', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1843, 6, 'Transaksi_show', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1844, 5, 'Transaksi_show', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1845, 4, 'Transaksi_show', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1846, 3, 'Transaksi_show', 'getshowid', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1847, 4, 'User', 'getCreatedby', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1848, 4, 'User', 'getuserbyId', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1849, 2, 'Store', 'index', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1850, 2, 'Store', 'getData', NULL, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1851, 3, 'Stockcalculate', 'index', NULL, 1, '2024-04-01 20:23:25', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1852, 3, 'Stockcalculate', 'generate_stock_pull', NULL, 1, '2024-04-01 20:23:25', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1853, 3, 'Stockcalculate', 'generate_stock_average_price', NULL, 1, '2024-04-01 20:23:25', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1854, 4, 'Stockcalculate', 'index', NULL, 1, '2024-04-01 20:23:36', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1855, 4, 'Stockcalculate', 'generate_stock_pull', NULL, 1, '2024-04-01 20:23:36', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1856, 4, 'Stockcalculate', 'generate_stock_average_price', NULL, 1, '2024-04-01 20:23:36', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1857, 5, 'Stockcalculate', 'index', NULL, 1, '2024-04-01 20:23:51', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1858, 5, 'Stockcalculate', 'generate_stock_pull', NULL, 1, '2024-04-01 20:23:51', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1859, 5, 'Stockcalculate', 'generate_stock_average_price', NULL, 1, '2024-04-01 20:23:51', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1860, 6, 'Stockcalculate', 'index', NULL, 1, '2024-04-01 20:24:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1861, 6, 'Stockcalculate', 'generate_stock_pull', NULL, 1, '2024-04-01 20:24:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1862, 6, 'Stockcalculate', 'generate_stock_average_price', NULL, 1, '2024-04-01 20:24:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1863, 3, 'Settingprinter', 'index', '', 1, '2024-04-04 11:31:49', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1864, 3, 'Settingprinter', 'insert', '', 1, '2024-04-04 11:31:49', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1865, 3, 'Settingprinter', 'update', '', 1, '2024-04-04 11:31:49', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1866, 3, 'Settingprinter', 'delete', '', 1, '2024-04-04 11:31:49', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1867, 3, 'Settingprinter', 'getData', '', 1, '2024-04-04 11:31:49', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1868, 3, 'Settingprinter', 'setting_printer', '', 1, '2024-04-04 11:31:49', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1869, 4, 'Settingprinter', 'index', '', 1, '2024-04-04 11:31:58', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1870, 4, 'Settingprinter', 'insert', '', 1, '2024-04-04 11:31:58', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1871, 4, 'Settingprinter', 'update', '', 1, '2024-04-04 11:31:58', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1872, 4, 'Settingprinter', 'delete', '', 1, '2024-04-04 11:31:58', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1873, 4, 'Settingprinter', 'getData', '', 1, '2024-04-04 11:31:58', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1874, 4, 'Settingprinter', 'setting_printer', '', 1, '2024-04-04 11:31:58', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1875, 5, 'Settingprinter', 'index', '', 1, '2024-04-04 11:32:07', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1876, 5, 'Settingprinter', 'insert', '', 1, '2024-04-04 11:32:07', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1877, 5, 'Settingprinter', 'update', '', 1, '2024-04-04 11:32:07', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1878, 5, 'Settingprinter', 'delete', '', 1, '2024-04-04 11:32:07', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1879, 5, 'Settingprinter', 'getData', '', 1, '2024-04-04 11:32:07', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1880, 5, 'Settingprinter', 'setting_printer', '', 1, '2024-04-04 11:32:07', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1881, 6, 'Settingprinter', 'index', '', 1, '2024-04-04 11:32:20', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1882, 6, 'Settingprinter', 'insert', '', 1, '2024-04-04 11:32:20', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1883, 6, 'Settingprinter', 'update', '', 1, '2024-04-04 11:32:20', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1884, 6, 'Settingprinter', 'delete', '', 1, '2024-04-04 11:32:20', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1885, 6, 'Settingprinter', 'getData', '', 1, '2024-04-04 11:32:20', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1886, 6, 'Settingprinter', 'setting_printer', '', 1, '2024-04-04 11:32:20', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1887, 3, 'M_valas', 'getValasTrx', '', 1, '2024-04-05 05:09:23', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1888, 4, 'M_valas', 'getValasTrx', '', 1, '2024-04-05 05:09:57', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1889, 5, 'M_valas', 'getValasTrx', '', 1, '2024-04-05 05:10:17', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1890, 6, 'M_valas', 'getValasTrx', '', 1, '2024-04-05 05:10:30', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1891, 3, 'Stockcalculate', 'generate_stock_price_average', '', 1, '2024-04-19 12:12:35', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1892, 4, 'Stockcalculate', 'generate_stock_price_average', '', 1, '2024-04-19 12:12:45', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1893, 5, 'Stockcalculate', 'generate_stock_price_average', '', 1, '2024-04-19 12:12:53', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1894, 6, 'Stockcalculate', 'generate_stock_price_average', '', 1, '2024-04-19 12:13:02', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1895, 3, 'Stockprice', 'index', '', 1, '2024-04-19 13:44:59', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1896, 3, 'Stockprice', 'getData', '', 1, '2024-04-19 13:44:59', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1897, 3, 'Stockprice', 'excel', '', 1, '2024-04-19 13:44:59', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1901, 5, 'Stockprice', 'index', '', 1, '2024-04-19 13:45:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1902, 5, 'Stockprice', 'getData', '', 1, '2024-04-19 13:45:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1903, 5, 'Stockprice', 'excel', '', 1, '2024-04-19 13:45:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1907, 3, 'Stockprice', 'getValasStock', '', 1, '2024-04-20 22:51:20', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1908, 5, 'Stockprice', 'getValasStock', '', 1, '2024-04-20 22:51:29', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1909, 2, 'Stockcalculate', 'index', '', 1, '2024-04-20 22:52:09', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1910, 2, 'Stockcalculate', 'generate_stock_pull', '', 1, '2024-04-20 22:52:09', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1911, 2, 'Stockcalculate', 'generate_stock_price_average', '', 1, '2024-04-20 22:52:09', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1912, 2, 'Stockprice', 'index', '', 1, '2024-04-20 22:52:09', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1913, 2, 'Stockprice', 'getValasStock', '', 1, '2024-04-20 22:52:09', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1914, 2, 'Stockprice', 'getData', '', 1, '2024-04-20 22:52:09', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1915, 2, 'Stockprice', 'excel', '', 1, '2024-04-20 22:52:09', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1916, 5, 'Inventory', 'index', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1917, 5, 'Inventory', 'generate_code', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1918, 5, 'Inventory', 'insert_header', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1919, 5, 'Inventory', 'update_header', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1920, 5, 'Inventory', 'insert_detail', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1921, 5, 'Inventory', 'delete_detail', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1922, 5, 'Inventory', 'tampil_header', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1923, 5, 'Inventory', 'tampil_detail', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1924, 5, 'Inventory', 'cancel', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1925, 5, 'Inventory_list', 'index', '', 1, '2024-05-14 09:27:52', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1926, 5, 'Inventory_list', 'getData', '', 1, '2024-05-14 09:28:13', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1927, 3, 'Inventory', 'index', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1928, 3, 'Inventory', 'generate_code', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1929, 3, 'Inventory', 'insert_header', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1930, 3, 'Inventory', 'update_header', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1931, 3, 'Inventory', 'insert_detail', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1932, 3, 'Inventory', 'delete_detail', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1933, 3, 'Inventory', 'tampil_header', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1934, 3, 'Inventory', 'tampil_detail', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1935, 3, 'Inventory', 'cancel', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1936, 3, 'Inventory_list', 'index', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1937, 3, 'Inventory_list', 'getData', '', 1, '2024-05-14 09:29:01', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1938, 3, 'Inventory', 'stock', '', 1, '2024-05-16 10:15:34', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1939, 3, 'Inventory', 'confirm', '', 1, '2024-05-16 10:15:34', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1940, 5, 'Inventory', 'stock', '', 1, '2024-05-16 10:15:44', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1941, 5, 'Inventory', 'confirm', '', 1, '2024-05-16 10:15:44', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1942, 4, 'Inventory', 'index', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1943, 4, 'Inventory', 'generate_code', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1944, 4, 'Inventory', 'insert_header', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1945, 4, 'Inventory', 'update_header', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1946, 4, 'Inventory', 'insert_detail', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1947, 4, 'Inventory', 'stock', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1948, 4, 'Inventory', 'delete_detail', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1949, 4, 'Inventory', 'confirm', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1950, 4, 'Inventory', 'cancel', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1951, 4, 'Inventory', 'tampil_header', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1952, 4, 'Inventory', 'tampil_detail', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1953, 4, 'Inventory_list', 'index', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1954, 4, 'Inventory_list', 'getData', '', 1, '2024-05-27 17:01:03', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1955, 6, 'Inventory', 'index', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1956, 6, 'Inventory', 'generate_code', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1957, 6, 'Inventory', 'insert_header', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1958, 6, 'Inventory', 'update_header', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1959, 6, 'Inventory', 'insert_detail', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1960, 6, 'Inventory', 'stock', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1961, 6, 'Inventory', 'delete_detail', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1962, 6, 'Inventory', 'confirm', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1963, 6, 'Inventory', 'cancel', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1964, 6, 'Inventory', 'tampil_header', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1965, 6, 'Inventory', 'tampil_detail', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1966, 6, 'Inventory_list', 'index', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);
INSERT INTO `auth_group_role` VALUES (1967, 6, 'Inventory_list', 'getData', '', 1, '2024-05-27 17:01:16', 1, NULL, NULL);

-- ----------------------------
-- Table structure for auth_listmethod
-- ----------------------------
DROP TABLE IF EXISTS `auth_listmethod`;
CREATE TABLE `auth_listmethod`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auth_listmethod
-- ----------------------------
INSERT INTO `auth_listmethod` VALUES (1, 'Api_ap1', 'ap1_sha1', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (2, 'Api_ap1', 'ap1_encrypt_store', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (3, 'Api_ap1', 'ap1_encrypt_trx_reccord', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (4, 'Api_ap1', 'ap1_encrypt_trx_advice', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (5, 'Api_ap1', 'ap1_encrypt_trx_refund', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (6, 'Api_ap1', 'ap1_post_api', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (7, 'Api_ap1', 'ap1_api_getresult', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (8, 'Api_ap1_transaction_advice', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1_transaction_advice.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (9, 'Api_ap1_transaction_advice', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1_transaction_advice.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (10, 'Api_ap1_transaction_refund', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1_transaction_refund.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (11, 'Api_ap1_transaction_refund', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap1_transaction_refund.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (12, 'Api_ap2', 'ap2_post_api', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (13, 'Api_ap2', 'ap2_login', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (14, 'Api_ap2', 'ap2_trx_reccord', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (15, 'Api_ap2', 'ap2_trx_adjustment', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (16, 'Api_ap2', 'ap2_trx_get', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (17, 'Api_ap2', 'ap2_get_store', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (18, 'Api_ap2_transaction_adjustment', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2_transaction_adjustment.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (19, 'Api_ap2_transaction_adjustment', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2_transaction_adjustment.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (20, 'Api_ap2_transaction_get', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2_transaction_get.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (21, 'Api_ap2_transaction_get', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2_transaction_get.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (22, 'Api_ap2_transaction_get', 'excel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_ap2_transaction_get.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (23, 'Api_transaction_input', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_transaction_input.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (24, 'Api_transaction_input', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\api\\controllers\\Api_transaction_input.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (25, 'Home', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\home\\controllers\\Home.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (26, 'Home', 'gettrxbymonth_piechart', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\home\\controllers\\Home.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (27, 'Home', 'gettrxbyyear_piechart', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\home\\controllers\\Home.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (28, 'Home', 'gettrxbymonth', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\home\\controllers\\Home.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (29, 'Home', 'gettrxbyytd_pivot', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\home\\controllers\\Home.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (30, 'Inventory', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (31, 'Inventory', 'generate_code', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (32, 'Inventory', 'insert_header', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (33, 'Inventory', 'update_header', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (34, 'Inventory', 'insert_detail', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (35, 'Inventory', 'stock', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (36, 'Inventory', 'delete_detail', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (37, 'Inventory', 'confirm', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (38, 'Inventory', 'cancel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (39, 'Inventory', 'tampil_header', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (40, 'Inventory', 'tampil_detail', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (41, 'Inventory_list', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory_list.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (42, 'Inventory_list', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\inventory\\controllers\\Inventory_list.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (43, 'Dttot', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Dttot.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (44, 'Dttot', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Dttot.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (45, 'Dttot', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Dttot.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (46, 'Dttot', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Dttot.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (47, 'Dttot', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Dttot.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (48, 'M_airport', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_airport.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (49, 'M_airport', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_airport.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (50, 'M_airport', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_airport.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (51, 'M_airport', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_airport.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (52, 'M_airport', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_airport.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (53, 'M_airport', 'getAirport', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_airport.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (54, 'M_company', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_company.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (55, 'M_company', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_company.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (56, 'M_company', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_company.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (57, 'M_company', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_company.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (58, 'M_company', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_company.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (59, 'M_company', 'getBranch', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_company.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (60, 'M_company', 'getRegion', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_company.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (61, 'M_customer_data', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_data.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (62, 'M_customer_data', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_data.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (63, 'M_customer_data', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_data.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (64, 'M_customer_data', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_data.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (65, 'M_customer_data', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_data.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (66, 'M_customer_data', 'getIdentitas', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_data.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (67, 'M_customer_list', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_list.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (68, 'M_customer_list', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_list.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (69, 'M_customer_list', 'excel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_list.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (70, 'M_customer_type', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (71, 'M_customer_type', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (72, 'M_customer_type', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (73, 'M_customer_type', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (74, 'M_customer_type', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (75, 'M_customer_type', 'getType', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (76, 'M_customer_work', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_work.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (77, 'M_customer_work', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_work.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (78, 'M_customer_work', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_work.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (79, 'M_customer_work', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_work.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (80, 'M_customer_work', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_work.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (81, 'M_customer_work', 'getWork', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_customer_work.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (82, 'M_nationality', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_nationality.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (83, 'M_nationality', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_nationality.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (84, 'M_nationality', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_nationality.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (85, 'M_nationality', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_nationality.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (86, 'M_nationality', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_nationality.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (87, 'M_nationality', 'getNationality', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_nationality.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (88, 'M_payment_type', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_payment_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (89, 'M_payment_type', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_payment_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (90, 'M_payment_type', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_payment_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (91, 'M_payment_type', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_payment_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (92, 'M_payment_type', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_payment_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (93, 'M_payment_type', 'getPaymentType', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_payment_type.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (94, 'M_store', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (95, 'M_store', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (96, 'M_store', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (97, 'M_store', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (98, 'M_store', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (99, 'M_store', 'getStore', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (100, 'M_store', 'getStoryTrx', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (101, 'M_transaction', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (102, 'M_transaction', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (103, 'M_transaction', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (104, 'M_transaction', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (105, 'M_transaction', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (106, 'M_transaction', 'getTransactionId', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (107, 'M_transaction_date', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (108, 'M_transaction_date', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (109, 'M_transaction_date', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (110, 'M_transaction_date', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (111, 'M_transaction_date', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_transaction_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (112, 'M_valas', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (113, 'M_valas', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (114, 'M_valas', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (115, 'M_valas', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (116, 'M_valas', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (117, 'M_valas', 'getvalasbyid', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (118, 'M_valas', 'getValas', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (119, 'M_valas', 'getValasTrx', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\M_valas.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (120, 'Rate_daily', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Rate_daily.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (121, 'Rate_daily', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Rate_daily.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (122, 'Rate_daily', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Rate_daily.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (123, 'Rate_daily', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Rate_daily.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (124, 'Rate_daily', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Rate_daily.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (125, 'Settingprinter', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Settingprinter.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (126, 'Settingprinter', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Settingprinter.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (127, 'Settingprinter', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Settingprinter.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (128, 'Settingprinter', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Settingprinter.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (129, 'Settingprinter', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Settingprinter.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (130, 'Settingprinter', 'setting_printer', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Settingprinter.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (131, 'Store', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (132, 'Store', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\master_data\\controllers\\Store.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (133, 'Group_menu', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Group_menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (134, 'Group_menu', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Group_menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (135, 'Group_menu', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Group_menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (136, 'Group_menu', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Group_menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (137, 'Group_menu', 'getDataMenu', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Group_menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (138, 'Group_menu', 'getMenu', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Group_menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (139, 'Menu', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (140, 'Menu', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (141, 'Menu', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (142, 'Menu', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (143, 'Menu', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\menu\\controllers\\Menu.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (144, 'Stock', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stock.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (145, 'Stock', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stock.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (146, 'Stock', 'excel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stock.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (147, 'Stockcalculate', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stockcalculate.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (148, 'Stockcalculate', 'generate_stock_pull', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stockcalculate.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (149, 'Stockcalculate', 'generate_stock_price_average', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stockcalculate.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (150, 'Stockprice', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stockprice.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (151, 'Stockprice', 'getValasStock', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stockprice.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (152, 'Stockprice', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stockprice.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (153, 'Stockprice', 'excel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\stock\\controllers\\Stockprice.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (154, 'Summary_by_date', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (155, 'Summary_by_date', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (156, 'Summary_by_date', 'gettotal', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (157, 'Summary_by_date', 'excel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_date.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (158, 'Summary_by_month', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_month.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (159, 'Summary_by_month', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_month.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (160, 'Summary_by_month', 'gettotal', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_month.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (161, 'Summary_by_month', 'excel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_month.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (162, 'Summary_by_year', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_year.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (163, 'Summary_by_year', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_year.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (164, 'Summary_by_year', 'gettotal', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_year.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (165, 'Summary_by_year', 'excel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\summary\\controllers\\Summary_by_year.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (166, 'Nasabah', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (167, 'Nasabah', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (168, 'Nasabah_form', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah_form.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (169, 'Nasabah_form', 'generate_code', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah_form.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (170, 'Nasabah_form', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah_form.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (171, 'Nasabah_form', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah_form.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (172, 'Nasabah_form', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah_form.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (173, 'Nasabah_form', 'getByID', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah_form.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (174, 'Nasabah_form', 'add_foto', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Nasabah_form.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (175, 'Transaksi', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (176, 'Transaksi', 'generate_code_temp', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (177, 'Transaksi', 'generate_code_confirm', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (178, 'Transaksi', 'insert_header_temp', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (179, 'Transaksi', 'update_header_temp', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (180, 'Transaksi', 'insert_detail_temp', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (181, 'Transaksi', 'delete_detail_temp', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (182, 'Transaksi', 'tampil_header_temp', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (183, 'Transaksi', 'tampil_detail_temp', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (184, 'Transaksi', 'tampil_nasabah', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (185, 'Transaksi', 'getstockbyid', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (186, 'Transaksi', 'getratebyid', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (187, 'Transaksi', 'getshowid', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (188, 'Transaksi', 'cancel_task', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (189, 'Transaksi', 'confirm_task', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (190, 'Transaksi', 'task_insert_tr_header', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (191, 'Transaksi', 'task_insert_tr_detail', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (192, 'Transaksi_list', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_list.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (193, 'Transaksi_list', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_list.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (194, 'Transaksi_show', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (195, 'Transaksi_show', 'getshowid', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (196, 'Transaksi_show', 'tampil_header', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (197, 'Transaksi_show', 'tampil_detail', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (198, 'Transaksi_show', 'cancel_trx', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (199, 'Transaksi_show', 'generateRandomString', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (200, 'Transaksi_show', 'printdotmatrix', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (201, 'Transaksi_show', 'printpdf', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_show.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (202, 'Transaksi_task', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_task.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (203, 'Transaksi_task', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\transaksi\\controllers\\Transaksi_task.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (204, 'Change_pass', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Change_pass.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (205, 'Change_pass', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Change_pass.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (206, 'Group', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Group.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (207, 'Group', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Group.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (208, 'Group', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Group.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (209, 'Group', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Group.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (210, 'Group', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Group.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (211, 'Level', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Level.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (212, 'Level', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Level.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (213, 'Level', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Level.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (214, 'Level', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Level.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (215, 'Level', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\Level.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (216, 'User', 'index', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (217, 'User', 'insert', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (218, 'User', 'update', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (219, 'User', 'delete', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (220, 'User', 'getData', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (221, 'User', 'getUsergroup', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (222, 'User', 'getUserlevel', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (223, 'User', 'getDataUser', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (224, 'User', 'getCreatedby', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (225, 'User', 'getuserbyId', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);
INSERT INTO `auth_listmethod` VALUES (226, 'User', 'getcountuserbyCompanyId', '', 'E:\\server\\Apache24\\htdocs\\epos_mc\\ciweb-modules\\user\\controllers\\User.php', '2024-05-16 10:15:20', 1);

-- ----------------------------
-- Table structure for auth_menu
-- ----------------------------
DROP TABLE IF EXISTS `auth_menu`;
CREATE TABLE `auth_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auth_menu
-- ----------------------------
INSERT INTO `auth_menu` VALUES (1, 'Main', 'fa fa-gear', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (2, 'Method List', 'fa fa-minus-square-o', 'admin/listmethod', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (3, 'Role Setting', 'fa fa-minus-square-o', 'admin/role', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (4, 'Menu', 'fa fa-minus-square-o', 'menu', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (5, 'Group Menu', 'fa fa-minus-square-o', 'menu/group-menu', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (6, 'User Setting', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (7, 'User', 'fa fa-minus-square-o', 'user', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (8, 'User group', 'fa fa-minus-square-o', 'user/group', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (9, 'Menu Setting', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (10, 'Change Password', 'fa fa-unlock', 'user/change_pass', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (12, 'User Level', 'fa fa-minus-square-o', 'user/Level', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (16, 'Home', 'fa fa-home', '.', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (23, 'Transaction', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (40, 'Data', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (45, 'Trx New', 'fa fa-minus-square-o', 'transaksi/nasabah', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (46, 'Cust. Type', 'fa fa-minus-square-o', 'master_data/m_customer_type', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (48, 'Cust. Identity Type', 'fa fa-minus-square-o', 'master_data/m_customer_data', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (51, 'Cust. Work', 'fa fa-minus-square-o', 'master_data/m_customer_work', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (52, 'Nationality', 'fa fa-minus-square-o', 'master_data/m_nationality', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (53, 'Summary', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (55, 'Currency', 'fa fa-minus-square-o', 'master_data/m_valas', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (57, 'Rate by Date', 'fa fa-minus-square-o', 'master_data/rate_daily', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (59, 'Suspected Terrorist', 'fa fa-minus-square-o', 'master_data/dttot', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (60, 'Cust. Act On', 'fa fa-minus-square-o', 'master_data/m_customer_action', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (61, 'Transaction List', 'fa fa-minus-square-o', 'master_data/m_transaction', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (63, 'Branch', 'fa fa-minus-square-o', 'master_data/m_company', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (64, 'Transaction Date', 'fa fa-minus-square-o', 'master_data/m_transaction_date', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (65, 'Transaction Setting', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (66, 'Trx List', 'fa fa-minus-square-o', 'transaksi/transaksi_list', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (67, 'Stock', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, '2024-04-19 12:21:12', 1);
INSERT INTO `auth_menu` VALUES (68, 'Trx Task', 'fa fa-minus-square-o', 'transaksi/transaksi_task', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (69, 'Trx by Date', 'fa fa-minus-square-o', 'summary\\summary_by_date', 1, '2024-04-01 10:00:00', NULL, '2024-04-19 12:27:55', 1);
INSERT INTO `auth_menu` VALUES (70, 'Trx by Month', 'fa fa-minus-square-o', 'summary\\summary_by_month', 1, '2024-04-01 10:00:00', NULL, '2024-04-19 12:28:02', 1);
INSERT INTO `auth_menu` VALUES (71, 'Trx by Year', 'fa fa-minus-square-o', 'summary\\summary_by_year', 1, '2024-04-01 10:00:00', NULL, '2024-04-19 12:28:11', 1);
INSERT INTO `auth_menu` VALUES (72, 'Location', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (75, 'Store', 'fa fa-minus-square-o', 'master_data/m_store', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (76, 'Airport', 'fa fa-minus-square-o', 'master_data/m_airport', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (77, 'Payment Type', 'fa fa-minus-square-o', 'master_data/m_payment_type', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (78, 'API', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (80, 'API - Get Data Trx', 'fa fa-minus-square-o', 'api/api_ap2_transaction_get', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (81, 'API - Trx Input', 'fa fa-minus-square-o', 'api/api_transaction_input', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (82, 'API - Trx Adjustment', 'fa fa-minus-square-o', 'api/api_ap2_transaction_adjustment', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (83, 'Cust. List', 'fa fa-minus-square-o', 'master_data/m_customer_list', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (84, 'API - Trx Advice ', 'fa fa-minus-square-o', 'api/api_ap1_transaction_advice', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (85, 'API - Trx Refund', 'fa fa-minus-square-o', 'api/api_ap1_transaction_refund', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (86, 'API - Trx Record', 'fa fa-minus-square-o', 'api/api_transaction_input', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (87, 'Store', 'fa fa-minus-square-o', 'master_data/store', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu` VALUES (88, 'Transaction', 'fa fa-folder-open-o', '#', 1, '2024-04-01 10:00:00', NULL, '2024-04-19 13:46:39', 1);
INSERT INTO `auth_menu` VALUES (89, 'Stock in Nominal', 'fa fa-minus-square-o', 'stock/stock', 1, '2024-04-19 12:21:31', 1, '2024-04-19 15:06:59', 1);
INSERT INTO `auth_menu` VALUES (90, 'Stock in Avg Rate', 'fa fa-minus-square-o', 'stock/stockprice', 1, '2024-04-19 12:21:59', 1, '2024-04-19 15:11:18', 1);
INSERT INTO `auth_menu` VALUES (91, 'Inventory', 'fa fa-folder-open-o', '#', 1, '2024-05-14 09:05:51', 1, '2024-05-14 09:31:20', 1);
INSERT INTO `auth_menu` VALUES (92, 'Inv New', 'fa fa-minus-square-o', 'inventory/inventory', 1, '2024-05-14 09:30:48', 1, '2024-05-14 13:49:29', 1);
INSERT INTO `auth_menu` VALUES (93, 'Inv List', 'fa fa-minus-square-o', 'inventory/inventory_list', 1, '2024-05-14 09:31:03', 1, '2024-05-14 13:49:24', 1);

-- ----------------------------
-- Table structure for auth_menu_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_menu_group`;
CREATE TABLE `auth_menu_group`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usergroup_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  `menuorder` int NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_auth_menu_grup`(`menu_id`, `usergroup_id`) USING BTREE,
  CONSTRAINT `Fk_auth_menux` FOREIGN KEY (`menu_id`) REFERENCES `auth_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auth_menu_group
-- ----------------------------
INSERT INTO `auth_menu_group` VALUES (1, 1, 1, 0, 2, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (2, 1, 2, 1, 3, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (3, 1, 3, 1, 4, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (4, 1, 9, 1, 5, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (5, 1, 4, 9, 6, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (6, 1, 5, 9, 7, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (7, 1, 6, 1, 8, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (8, 1, 7, 6, 9, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (9, 1, 8, 6, 10, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (10, 1, 16, 0, 1, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (11, 1, 12, 6, 11, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (12, 3, 16, 0, 1, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (13, 3, 40, 0, 18, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (14, 3, 7, 40, 29, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (15, 1, 61, 65, 16, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (16, 1, 63, 72, 13, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (17, 1, 64, 65, 17, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (18, 1, 65, 0, 15, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (19, 3, 23, 0, 2, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (20, 3, 45, 23, 3, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (21, 3, 55, 40, 20, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (22, 3, 57, 40, 27, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (23, 3, 66, 23, 5, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (24, 3, 67, 53, 11, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (25, 4, 16, 0, 1, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (26, 4, 23, 0, 2, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (27, 4, 45, 23, 3, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (28, 4, 66, 23, 5, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (29, 4, 67, 53, 11, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (30, 3, 68, 23, 4, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (31, 4, 68, 23, 4, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (32, 3, 53, 0, 10, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (33, 3, 69, 88, 15, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (34, 3, 70, 88, 16, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (35, 3, 71, 88, 17, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (36, 4, 53, 0, 10, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (37, 4, 69, 88, 14, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (38, 4, 70, 88, 15, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (39, 4, 71, 88, 16, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (40, 3, 52, 40, 25, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (41, 1, 72, 0, 12, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (42, 1, 75, 72, 14, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (43, 3, 76, 40, 19, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (46, 3, 78, 0, 6, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (47, 3, 80, 78, 9, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (48, 4, 78, 0, 6, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (49, 4, 80, 78, 9, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (50, 3, 81, 78, 7, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (51, 3, 82, 78, 8, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (52, 4, 81, 78, 7, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (53, 4, 82, 78, 8, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (54, 3, 77, 40, 26, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (55, 3, 51, 40, 24, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (56, 3, 46, 40, 23, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (57, 1, 48, 40, 18, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (58, 3, 48, 40, 21, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (59, 5, 16, 0, 1, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (60, 5, 40, 0, 18, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (61, 5, 7, 40, 29, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (62, 5, 23, 0, 2, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (63, 5, 45, 23, 3, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (64, 5, 55, 40, 20, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (65, 5, 57, 40, 27, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (66, 5, 66, 23, 5, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (67, 5, 67, 53, 11, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (68, 5, 68, 23, 4, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (69, 5, 53, 0, 10, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (70, 5, 69, 88, 15, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (71, 5, 70, 88, 16, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (72, 5, 71, 88, 17, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (73, 5, 52, 40, 25, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (74, 5, 76, 40, 19, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (75, 5, 78, 0, 6, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (78, 5, 77, 40, 26, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (79, 5, 51, 40, 24, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (80, 5, 46, 40, 23, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (81, 5, 48, 40, 21, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (82, 2, 16, 0, 0, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (83, 2, 53, 0, 1, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (84, 2, 67, 53, 2, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (85, 2, 69, 88, 6, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (86, 2, 70, 88, 7, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (87, 2, 71, 88, 8, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (88, 6, 16, 0, 1, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (89, 6, 23, 0, 2, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (90, 6, 45, 23, 3, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (91, 6, 66, 23, 5, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (92, 6, 67, 53, 11, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (93, 6, 68, 23, 4, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (94, 6, 53, 0, 10, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (95, 6, 69, 88, 14, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (96, 6, 70, 88, 15, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (97, 6, 71, 88, 16, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (98, 6, 78, 0, 6, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (101, 3, 83, 40, 22, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (102, 5, 83, 40, 22, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (103, 2, 83, 40, 12, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (105, 2, 40, 0, 10, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (106, 5, 84, 78, 8, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (107, 5, 85, 78, 9, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (108, 6, 84, 78, 8, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (109, 6, 85, 78, 9, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (110, 5, 86, 78, 7, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (111, 6, 86, 78, 7, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (112, 3, 87, 40, 28, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (113, 5, 87, 40, 28, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (114, 3, 88, 53, 14, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (115, 4, 88, 53, 13, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (116, 5, 88, 53, 14, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (117, 6, 88, 53, 13, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (118, 2, 88, 53, 5, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (119, 2, 87, 40, 13, 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (120, 3, 89, 67, 12, 1, '2024-04-19 12:22:32', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (121, 3, 90, 67, 13, 1, '2024-04-19 12:22:50', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (122, 4, 89, 67, 12, 1, '2024-04-19 12:23:16', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (124, 5, 89, 67, 12, 1, '2024-04-19 12:24:28', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (125, 5, 90, 67, 13, 1, '2024-04-19 12:24:42', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (126, 6, 89, 67, 12, 1, '2024-04-19 12:25:08', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (128, 2, 89, 67, 3, 1, '2024-04-20 22:53:22', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (129, 2, 90, 67, 4, 1, '2024-04-20 22:53:43', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (130, 3, 91, 0, 30, 1, '2024-05-14 09:06:30', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (131, 5, 91, 0, 30, 1, '2024-05-14 09:06:54', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (132, 3, 92, 91, 31, 1, '2024-05-14 09:31:39', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (134, 5, 92, 91, 31, 1, '2024-05-14 09:32:15', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (135, 3, 93, 91, 32, 1, '2024-05-14 09:32:24', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (136, 5, 93, 91, 32, 1, '2024-05-14 09:33:10', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (137, 4, 91, 0, 17, 1, '2024-05-27 17:01:34', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (138, 4, 92, 91, 18, 1, '2024-05-27 17:01:46', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (139, 4, 93, 91, 19, 1, '2024-05-27 17:01:55', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (140, 6, 91, 0, 17, 1, '2024-05-27 17:02:12', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (141, 6, 92, 91, 18, 1, '2024-05-27 17:02:28', 1, NULL, NULL);
INSERT INTO `auth_menu_group` VALUES (142, 6, 93, 91, 19, 1, '2024-05-27 17:02:42', 1, NULL, NULL);

-- ----------------------------
-- Table structure for auth_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `auth_usergroup`;
CREATE TABLE `auth_usergroup`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usergroupname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auth_usergroup
-- ----------------------------
INSERT INTO `auth_usergroup` VALUES (1, '00 - App', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_usergroup` VALUES (2, '00 - Konsolidasi', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_usergroup` VALUES (3, 'AP2 - Admin', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_usergroup` VALUES (4, 'AP2 - User', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_usergroup` VALUES (5, 'AP1 - Admin', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_usergroup` VALUES (6, 'AP1 - User', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for auth_userlevel
-- ----------------------------
DROP TABLE IF EXISTS `auth_userlevel`;
CREATE TABLE `auth_userlevel`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userlevelname` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auth_userlevel
-- ----------------------------
INSERT INTO `auth_userlevel` VALUES (1, 'Admin', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);
INSERT INTO `auth_userlevel` VALUES (2, 'User', 1, '2024-04-01 10:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for auth_users
-- ----------------------------
DROP TABLE IF EXISTS `auth_users`;
CREATE TABLE `auth_users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `region` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `usergroup_id` bigint NOT NULL,
  `userlevel_id` bigint NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `celluler` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `lastlog` datetime NULL DEFAULT NULL,
  `chgpass` smallint NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_users_usergroup`(`usergroup_id`) USING BTREE,
  INDEX `FK_users_userlevel`(`userlevel_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auth_users
-- ----------------------------
INSERT INTO `auth_users` VALUES (1, '8989', 'f794bdbef7990b5112e526b5cd4ea67f4a35af21', 0, NULL, 1, 1, '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (2, 'konsolidasi', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, '1,2,3', 2, 1, 'User Konsolidasi', '', '', '2024-04-21 00:30:21', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (3, 'cgk1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, NULL, 3, 1, 'User 1', NULL, NULL, '2024-05-15 15:59:13', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (4, 'cgk2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, NULL, 4, 2, 'User 2', NULL, NULL, '2024-04-21 08:04:55', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (5, 'cgk3', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, NULL, 4, 2, 'User 3', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (6, 'cgk4', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, NULL, 4, 2, 'User 4', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (7, 'cgk5', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, NULL, 4, 2, 'User 5', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (8, 'cgk6', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, NULL, 3, 1, 'User 1', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (9, 'cgk7', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, NULL, 4, 2, 'User 2', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (10, 'cgk8', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, NULL, 4, 2, 'User 3', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (11, 'cgk9', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, NULL, 4, 2, 'User 4', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (12, 'cgk10', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, NULL, 4, 2, 'User 5', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (13, 'sub1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, NULL, 5, 1, 'User 1', NULL, NULL, '2024-05-16 14:53:35', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (14, 'arum1', 'bc3fa85725faafb899d3cd087484ecd09d05d8ce', 3, NULL, 6, 2, 'Arum1', '', '', '2024-05-27 17:02:52', NULL, 1, NULL, NULL, '2024-05-16 14:47:56', 13);
INSERT INTO `auth_users` VALUES (15, 'arum2', 'bc3fa85725faafb899d3cd087484ecd09d05d8ce', 3, NULL, 6, 2, 'Arum2', '', '', NULL, NULL, 1, NULL, NULL, '2024-05-16 14:48:33', 13);
INSERT INTO `auth_users` VALUES (16, 'sub4', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, NULL, 6, 2, 'User 4', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `auth_users` VALUES (17, 'sub5', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, NULL, 6, 2, 'User 5', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dttot
-- ----------------------------
DROP TABLE IF EXISTS `dttot`;
CREATE TABLE `dttot`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `deskripsi` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `terduga` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `kode_densus` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `tpt_lahir` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `tgl_lahir` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `warga_negara` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `alamat` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 539 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dttot
-- ----------------------------
INSERT INTO `dttot` VALUES (1, 'Negara Islam Indonesia alias NII', ' -\' didirikan pada tahun 1949 oleh Sekarmadji Maridjan Kartosoewirjo; - beberapa anggota NII terbukti secara sah melakukan tindak pidana terorisme dan tindak pidana pendanaan terorisme; \n- dalam putusan pengadilan terkait individu Nll, diketahui bahwa terdapat perintah kepada para anggota NII untuk mempercepat persiapan pencapaian visi dan misi NII untuk mengganti ideologi negara lndonesia dengan cara melakukan perbuatan teror', 'Korporasi', 'EDD-025', NULL, NULL, NULL, 'Indonesia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (2, 'Yudi Lukito Kurniawan alias Abu Talhah Al Filipini alias Yudi Lukito Kurniawan alias Yudi Lukito alias Yuli Lukito alias Abdur Rochim alias Abdul Rohman', '- NIK nomor : 5108060401730004\n\'- paspor nomor: A6889028\n\'- pekerjaan: karyawan swasta', 'Orang', 'IDD-028', 'Surabaya', '4 Januari1973/4 November 1974/4 November 1973', 'Indonesia', 'Jalan A. Yani No. 120 Sgr, RT/RW 003/000, Kel. Banyusari, Kec. Buleleng, Kab/Kota Buleleng, Prov Bali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (3, 'Fatkhi Umar Bajuber alias Fnu Abu Ahmad Al Andalusia alias Fnu Abu alias Ahmad Al Indonesi alias Fnu Abu Ahmad Indunisi Al Indonesi Abu Ahmad alias Abu Ahmad Al Andalusi alias Abu Ahmad Al Andalusia alias Abu Ahmad Al Andaunusi alias Ahmad Al Andunisi alias Abu Ahmad Al Indoinesi alias Abu Ahmad Al Indonesi alias Ibrahim Al Indonesi alias Abu Ahmad Al Indonesia alias Abu Ahmad Al Indonisi alias Abu Ahmad Al Indunisi alias Ahmad Al Indunisi alias Ibrahim Al Indunisi alias Habib Al Jawi alias Talqah Al Sanani alias Abu Ahmad Al Undunisi alias Abu Ahmad Andunisi alias Fadhi Badjuber alias Fathi Bajaber alias Fathi Umar Bajuber alias Fatkhi Umar Bajuber alias Muhammad Djamchali alias Abu Ahmad Indunisi alias Fatkhi Umar Mubarak alias Fatkhi Umar', '- NIK nomor: 3573010104610006\n\'- paspor nomor: S249691\n\'- pekerjaan: karyawan swasta', 'Orang', 'IDD-029', 'Surabaya', '28583', 'Indonesia', 'Jalan Getis Gg.III/95A, RT/RW. 013/003, Kel. Lemah Putro, Kec. Sidoarjo, Kab/Kota. Sidoarjo, Prov. Jawa Timur', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (4, 'Edi Suchannur Rochim', '- NIK nomor: 3573010104610006\n\'- paspor nomor: A0898430\n\'- pekerjaan: karyawan swasta', 'Orang', 'IDD-030', 'Malang', '22372', 'Indonesia', 'Jalan R. Tumenggung Suryo 62, RT.8, Rw 3, Kel. Bunulrejo, Kec. Blimbing, Kab/Kota. Malang, Prov. Jawa Timur', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (5, 'Heru Siswanto alias Fnu Abu Ahmad Al Indonesi alias Abu Ahmad Al Indonesi alias Musa Al Indonesi alias Ustad Heru alias Heru Siswanto alias Ustad Heru Siswanto alias Ustadz Heru Siswanto Ustaz Siswanto alias Heru Siswanto alias Soepardi alias Heru Siswanto Soepardi alias Heru Sisvvanto Soepardi alias Heru Siswanto Soepardi alias Heru Siswanto Surabaya alias Heru Suranto alias Heri alias Susanto alias Heru Susanto alias Ustad Heri Susanto', '- NIK nomor: 3578110506730004\n\'- paspor nomor: S835649 dan A7412221\n\'- pekerjaan: karyawan swasta', 'Orang', 'IDD-031', 'Surabaya', '5 Juni 1973/6 Juni 1973/5 Desember 1973', 'Indonesia', 'Tambak Segaran, RT.03/RW.03, Dusun Tambak Segaran, Kec. Simokerto, Kab. Surabaya, Prov. Jawa Timur', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (6, 'Maulawi Rajab alias Maulawi Rajab Salahudin', ' - pemimpin senior Negara Islam di Irak dan Levant – Khorasan \n(ISIL-K) (Qde. 161);\n - terdaftar pada 26 April 2023', 'Orang', 'ILQ-303', 'Afghanistan', '1976', 'Afghanistan', ' Distrik Paghman, Prov. Kabul, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (7, ' Sultan Aziz Azam', '=A10', 'Orang', 'ILQ-304', 'Afghanistan', '1985', 'Afghanistan', 'Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (8, 'AMIN KOBAITRI', '- relawan The One Banner Project Incorporated;\n- paspor PA2564100 (Dikeluarkan oleh Australia);\n- media sosial – Facebook:\nhttps://www.facebook.com/andrew.baderski.9\nhttps://www.facebook.com/chris.nedeski\nhttps://www.facebook.com/ayy.kay.129.', 'Orang', 'ILD-002', 'Campsie – NSW', '29 Juli 1983', NULL, NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (9, 'The One Banner Project Incorporated (TOBPI) ', '- kegiatan Amal (Charity);\n- no. Kartu ldentitas: ABN 67 797 096 394,\nterdaftar pada Australian Charities and Not-forprofits\nCommission (ACNC) sejak 2 November 2018;\n- website: https://theonebannerproject.org.au/,\ntheonebannerproject@gmail.com;\n- telp: +61 436382249;\n- media social:\n1. lnstagram: https://www.instagram.com/the_one_banner_project/\n2. Facebook: https://www.facebook.com/OBP.ORG/.', 'Korporasi', 'ELD-001', NULL, NULL, 'Australia', '34 Maubeuge St, South Granville NSW 2142, Australia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (10, 'lslamic State ln Iraq And The Levant ln South-East Asia (ISIL-SEA, ISIL-South East Asia) alias Islamic State East Asia Division alias Dawlatul lslamiyah Waliyatul Mashriq', '- dibentuk bulan Juni 2016 oleh Isnilon Hapilon;\n- berafiliasi dengan ISIS di Suriah (Islamic State in Iraq and the Levant);\n- terdaftar 27 Januari 2023.', 'Korporasi', 'ELQ-088', NULL, NULL, 'Asia Tenggara', NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (11, 'World Human Care (WHC) alias Yayasan Orang Tua Asuh (YOTA)', '- nomor Badan Hukum AHU-09365.50.10.2014 tanggal 20 November 2014;\n- telp 0812-9375-1696 / 0877-8646-4009;\n- Media sosial:\na) Twitter: @worldhumancare1 ;\nb) lnstagram : worldhumancare;\nc) Facebook: World Human Care.', 'Korporasi', 'EDD-024', NULL, NULL, 'Indonesia', 'Kompleks Setia Bina Sarana, AB 3/9, Harapan Jaya, Bekasi Utara', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (12, 'Muhammad Dandi Adhiguna Alias Adhiguna Lesmana Alias Mhd Dandi Adhiguna', '- NIK 1271183007960001;\n- nomor KK 3203130202170004;\n- paspor B 0547698;\n- fasilitator keberangkatan ke Luar Negeri untuk bergabung dengan lSlS;\n- tanggal 21 Juni 2017 menuju Riyadh, Arab Saudi;\n- diduga berada di Suriah;', 'Orang', 'IDD-027', 'Jakarta', '30 Juli 1996', 'Indonesia', 'Kp. Cipadali 1/4 Sukaresmi, Cianjur, Jawa Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (13, 'Dini Ramadhani', ' - pegawai swasta PT Orientasari Mahkota;\n- NIK 3376025003930003;\n- paspor B 4286562;\n- no. telepon :08974831257;\n- fasilitator keberangkatan ke Luar Negeri untuk bergabung dengan lSlS;\n- tanggal 3 September 2017 menuju Bangkok, Thailand;\n- diduga berada di Suriah;', 'Orang', 'IDD-026', 'Tegal', '10 Maret 1993', 'Indonesia', 'Jalan Nakula RT 006 RW 006, Slerok, Tegal Timur, Kota Tegal, Jawa Tengah\n52125', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (14, 'Dwi Dahlia Susanti, S. Kep., Sp. Mat', '- NIK 3278086807760006;\n- paspor no B 3306967 (dikeluarkan oleh Kantor lmigrasi Kelas ll Tasikmalaya pada 15 Maret 2016);\n- Pegawai Negeri Sipil di Poltekes Tasikmalaya;\n- rekening Bank Mandiri no: 170000418985;\n- no. telepon: 0265314206, 0265331933, 081387497775, 081770260211, dan 08170260211;\n- fasilitator keuangan;\n- fasilitator keberangkatan ke Luar Negeri untuk bergabung dengan lSlS;\n- tanggal 12 November 2011 kembali dari Jeddah, Arab Saudi;\n- tanggal 26 Juni 2016 menuju Dubai, Uni Emirat Arab;\n- saat ini diduga berada di Suriah;', 'Orang', 'IDD-025', 'Tasikmalaya', '28 Juli 1976', 'Indonesia', '- Perum Winayajaya Blok A42, RT 003 RW 003, Sambongjaya, Mangkubumi,\nTasikmalaya, Jawa Barat Kode Pos 46181;\n- Kp. Linggasari RT 01 RW 16, Desa Singasari, Singaparna, Tasikmalaya, Jawa\nBarat; ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (15, 'Abdul Rehman Makki Alias Abdur Rehman Makki Alias Abdur Rahman Makki Alias Abdul Rahman Makki Alias Hafiz Abdul Rahman Makki Alias Hafiz Abdul Rehman Makki Alias Hafiz Abdul Rehman;\n\n', '- Pakistan nomor paspor C13601334 terbit tanggal 2 November 2007;\n- Paskistan nomor paspor A5199819; \n- identitas kewarganegaraan Pakistan nomor 6110111883885 dan Pakistan nomor 34454009709;\n- Jamaat-Ud-Dawa (JUD) dan Kepala Urusan Politik Wing JUD/LET;\n- menjabat sebagai Kepala Departemen Hubungan Luar Negeri LET dan anggota Shura (badan pengatur);\n- anak dari Hafiz Abdullah Bahwalpuri;\n- Wakil Amir/Ketua Lashkar-E-Tayyiba (LET) (QDe.118);\n- yang bersangkutan merupakan ipar Ketua JUD/LET yaitu Hafiz Muhammad Saeed (Qdi.263).', 'Orang', 'ILQ-302', 'Bahawalpar, Punjab Province, Pakistan', '10 Desember 1954', 'Pakistan', 'Tayyiba Markaz, Muridke, Punjab Province, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (16, 'Khatiba Al-Tawhid Wal-Jihad (KTJ) alias Катиба ат-Таухид валь-Джихад Alias Jannat Oshiklari Alias Jama`at al-Tawhid wal-Jihad\nAlias Jannat Oshiklari -;', '- bekerja sama dengan organisasi teroris seperti Khatiba Imam al-Bukhari (QDe.158);\n- orgarisisiteroris yang beroperasi di bar& pryung orgarissiteroris internasional Front\nAl-Nusrah untuk Rakyat Lorant (Q0e.137).', 'Korporasi', 'ELQ-087', NULL, NULL, NULL, NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (17, 'JUND AL-KHALIFAH IN TUNISIA (JAK-T) جند الخلافة في تونس alias ISIL-TUNISIA alias ISIL-TUNISIA PROVINCE alias SOLDIERS OF THE CALIPHATE alias JUND AL-KHILAFA alias JUND AL KHILAFAH alias JUND AL-KHILAFAH FI TUNIS alias SOLDIERS OF THE CALIPHATE IN TUNISIA alias TALA I JUND AL-KHILAFAH alias VANGUARDS OF THE SOLDIERS OF THE CALIPHATE alias DAESH TUNISIA alias AJNAD-;', 'terdaftar pada tanggal 29 Desember 2021;\n- dibentuk pada bulan November 2014 dimana terkait dengan negara islam di Iraq dan Levent, serta terdaftar sebagai Al Qaida di Iraq (QDe.115).', 'Korporasi', 'ELQ-086', NULL, NULL, NULL, NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (18, 'ASHRAF AL-GIZANI أشرف القيزاني alias ASHRAF AL-GIZANI alias ABU ‘UBAYDAH AL-KAFI alias ACHREF BEN FETHI BEN MABROUK GUIZANI ALIAS ACHRAF BEN FATHI BEN MABROUK GUIZANI;', 'identitas kewarganegaraan 13601334;\n- Direkrut untuk ISIL dan menginstruksikan individu untuk melakukan tindakan teroris melalui video online;\n- anggota senior di Negara Islam di Irak dan Levant (ISIL), serta terdaftar sebagai Al Qaida di Iraq (QDe.115);', 'Orang', 'ILQ-301', 'El Gouazine, Dahmani, Governorate dari Le Kef, Tunisia,', '5 Oktober 1991;', 'Tunisia', NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (19, 'Dr. Sanullah Ghafari alias Dr. Shahab Al Muhajir alias Shahab Muhajer alias Shahab Mohajir alias Shahab Mahajar alias Shihab Al Muhajir alias Shihab Muhajer alias Shihab Mohajir alias Shihab Mahajar;', 'pimpinan dari Negara Islam di Irak dan Levant-Khorasan (ISIL-K) (QDe.161).', 'Orang', 'ILQ-300', 'Afganistan', '28 Oktober 1994;', 'Afganistan', 'Afganistan dan Kunduz, Afganistan;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (20, 'LAZ ABA KPP NTB', 'telp: 0878 6465 0558;', 'Korporasi', 'EDD-023', NULL, NULL, 'Indonesia', 'jalan P. Gili Air no. 19 BTN Griya Indah RT. 004 RW. 100, Desa Pagutan Barat, Kec. Mataram Kodya, Mataram Nusa Tenggara Barat;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (21, 'LAZ ABA KPP SEMARANG alias YAYASAN ABDURRAHMAN BIN AUF SEMARANG;', 'telp: 0821 3360 0580;', 'Korporasi', 'EDD-022', NULL, NULL, 'Indonesia', 'Jl. Tanggul Rejo RT 04/VII Banjardowo Genuk Semarang, Jawa Tengah;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (22, 'LAZ ABA KPP PATI alias BAITUL MAAL ABA PATI;', 'telp: 0341-4378 511, 081 333552 808;\nrekenig atas nama Eko Qq. Baitul Maal ABA Pati;', 'Korporasi', 'EDD-021', NULL, NULL, 'Indonesia', 'Desa Panggungroyom RT. 02 RW 01, Wedarijaksa, Kab. Pati Jawa Tengah;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (23, 'LAZ ABA KPP MALANG alias YAYASAN ABDURRAHMAN BIN AUF MALANG ALIAS BM ABA MALANG;', 'telp: 0341-4378 511, 081 333552 808;', 'Korporasi', 'EDD-020', NULL, NULL, 'Indonesia', 'Jl. Simpang L.A Sucipto Perumahan SUlfat Garden Ruko Kav.2 Pandanwangi Blimbing Malang Kora Jawa Timur;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (24, 'LAZ ABA KPP YOGYAKARTA alias  YAYASAN ABDURRAHMAN BIN AUF SOLO ALIAS BM ABDURRAHMAN BIN AUF YOGYAKARTA;', 'telp: 0821 3778 2373;', 'Korporasi', 'EDD-019', NULL, NULL, 'Indonesia', 'Gandu RT. 06/08, Sedang Tirta Berbah Sleman Yogyakarta;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (25, 'LAZ ABA KPP SOLORAYA alias YAYASAN ABDURRAHMAN BIN AUF SOLO ALIAS BM ABA SOLORAYA;', 'telp: 085291915777;', 'Korporasi', 'EDD-018', NULL, NULL, 'Indonesia', 'Jl. Raya Songgolongit Gentan no. 56 Baki Sukoharjo, Jawa Tengah;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (26, 'LAZ ABA KPP LAMPUNG alias BM ABA LAMPUNG;', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- Nomor akta pendirian: no 22 tahun 2004;\n- telp: 0811728656, 081369005972, 021- 8013447;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-017', NULL, NULL, 'Indonesia', 'Jalan Mahoni 01 no. 29 Way Halim Bandar Lampung, Lampung;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (27, 'LAZ ABA KPP SURABAYA alias YAYASAN ABDURRAHMAN BIN AUF-SBY ALIAS BAITUL MAAL ABDURRAHMAN BIN AUF SURABAYA;', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- akta pendirian: KEPMENHUMHAM C-701 H;\n- tanggal pendirian: 21 Oktober 2004;\n- Nomor identitas: Nomor 22 tgl 21-10-2004;\n- telp: 0318420426, 085730453721, 6281249112091;\n- NPWP 1: 02388841506000;\n- NPWP 2: 02388841561000;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-016', NULL, NULL, 'Indonesia', 'jalan Sedati Gede Nomor 77 RT.001 RW. 001, Desa Sedati Gede Kecamatan Sedati Kabupaten Sidoarjo, Jawa Timur;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (28, 'LAZ ABA KPP SUMUT alias YAYASAN BAITUL MAAL ABDURRAHMAN BIN AUF ALIAS ABDURRAHMAN BIN AUF SUMUT YYS MEDAN;', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- akta pendirian: 22/21 Oktober 2004;\n- tanggal pendirian: 21 Oktober 2004;\n- telp: 6285359550215;\n- NPWP: 023888415061000;\n- email: bmabasumut@gmail.com;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-015', NULL, NULL, 'Indonesia', 'jalan Kakap LK XII Belawan Bahagia Medan Belawan, Sumatera Utara;\n- jalan Selangat/Kakap Pojok Baru, Kelurahan Belawan Bahagia, Kab. Medan Belawan, Sumut;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (29, 'LAZ ABA KPP MAGETAN alias YAYASAN ABDURRAHMAN BIN AUF ALIAS LAZ YAYASAN ABDURRAHMAN BIN AUF MAGETAN ALIAS YAYASAN ABDURRAHMAN BIN AUF (BM ABA) MAGETAN;', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- Nomor akta pendirian: no: 22/tgl 21-10-2004;\n- tanggal pendirian: 21 Oktober 2004;\n- NPWP: 023888415061000;\n- email: aba.baitulmaal3@gmail.com;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-014', NULL, NULL, 'Indonesia', 'Dukuh Landangan RT 09 RW 03, Kel. Takeran, Kec. Takeran, Magetan, Jawa Tengah;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (30, 'YAYASAN ABDURRAHMAN SEMARANG CQ. ALFIAN', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- tempat tanggal lahir an. Alfian: 14 Maret 1983;\n- Nomor KTP an. Alfian; 33.7413.140383.0001;\n- telp: 627618641, 6270171050;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-013', NULL, NULL, 'Indonesia', 'jalan. WR Supratman Semarang Jawa Tengah;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (31, 'YAYASAN ABDURRAHMAN BIN AUF (BM ABA) BEKASI', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- SIUP: 420/157/KTM/VII/2017;\n- Nomor akta pendirian: akta pendirian;\n- Nomor ijin usaha: akta pendirian no, 18;\n- telp: 081286285442 (hp Junaedi-Ketua Umum);\n- NPWP: 824395651435000;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-012', NULL, NULL, 'Indonesia', 'Kampung Islam Thoyibah Blok H no. 23-24 RT. 004 RW. 005 Desa Kertamukti Cibitung, Kab. Bekasi Barat;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (32, 'LAZ ABA KKP TEMANGGUNG alias YAYASAN ABDURRAHMAN BIN AUF ALIAS YAYASAN ABDURRAHMAN BIN AUF (BM ABA) TEMANGGUNG;', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- uraian bidang usaha: Penampung dana zakat dan shodaqoh;\n- Nomor akta pendirian: C-701.HT.01.02;\n- tanggal pendirian: 13 Mei 2005;\n- Nomor identitas: KEP.04/YABA/1/2012;\n- telp: 085640202245, 0822 9828 3642;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-011', NULL, NULL, 'Indonesia', 'Desa Butuh RT. 02 RW. 01, Kel. Butuh, Kec. Temanggung, Kab. Temanggung, Jawa Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (33, 'ABDURRAHMAN BIN AUF YAYASAN', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- tanggal pendirian: 18 Agustus 2017;\n- telp: 6217292987, 021 33762323, 081288387149;\n- NPWP: 829727346453000;\n- email: HIDUPJAYA2007@YAHOO.CO.ID dan info@baitul-maal.com;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-010', NULL, NULL, 'Indonesia', 'Gedung Pesona Lt 2 Suite 215 Jl Ciputat Raya no. 20 Kebayoran Lama Jakarta Selatan;\n- jalan Merpati Raya 47 RT.004 RW 003, Desa Sawah Bar Ciputat Tangerang-Banten;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (34, 'Yayasan Abdurrahman Bin Auf (BM ABA)', 'bidang usaha: Yayasan (sosial dan keagamaan);\n- Nomor rekomendasi BAZNAS: 188/PH/BAZNASNI1/2016;\n- tanggal pendirian: 21 Oktober 2004;\n- NPWP 1: 025136952245621;\n- NPWP 2: 02.388.841.5.06;\n- surat HA PPATK nomor R-/47/1/RES.6.1./2021;\n- surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-009', NULL, NULL, 'Indonesia', '1. jalan H. Samali no. 95 C RT 019 RW 001 Pejaten Barat Pasar Minggu Jakarta Selatan;\n2. jalan Rahayu I no. 5 Kramat Jati Jakarta Timur;;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (35, 'LAZ ABA KPP JAKARTA RAYA alias YAYASAN ABDURRAHMAN BIN AUF BEKASI ALIAS BAILTUL MAAL ABDURRAHMAN BIN AUF (BM ABA);', '1. rekomendasi ijin BAZNAS: no. 188/PH/BAZNAS/VII/2016;\n2. ijin operasional Kemenag: no. 2432 tahun 2016;\n3. surat pendaftaran (Kementerian Hukum dan HAM) Nomor: c-701.HT.01.02.TH tanggal 13 Mei 2015;\n4. surat keterangan terdaftar kantor pajak no: PEM-048/WPJ_04/KP_0803/2005 NPWP: 02.388.841.5.061.000 KLU: 8531-PANTI WREDA SWASTA tanggal 31 Januari 2005;\n5. surat keterangan domisili Nomor: 4049/27.1.0/31.74.051001/-1755.13/2015 tanggal: Jakarta 30 Juli 2015;6. surat keterangan suku dinas sosial Nomor: 153/1.841.8 tanggal: Jakarta 21 Mei 2004;\n6. didirikan pada tahun 2004;\n7. HA PPATK nomor R-1027/XII/2021;\n8. surat PPATK Nomor HA-218 s.d Nomor HA-225/AP.II/05/21/SR-M;', 'Korporasi', 'EDD-008', NULL, NULL, 'Indonesia', '1.jalan Griya Utama/Mahoni I, Way Halim Permai, Kec. Sukarame, Bandar Lampung;\n2. jalan Makrik, RT. 004, RW. 025, Bojong Rawalumbu, Kec. Rawalumbu, Kota Bekasi, Jawa Barat 17116;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (36, 'Syam Organizer (SO) alias YAYASAN AMAL SYAM ABADI;', '1. Nomor badan hukum AHU-AH-01.06.0006744 tahun 2017;\n2. NPWP: 03.348.924.6-543.000;\n3. email: admin@syamorganizer.org;\n4. bergerak di bidang penggalangan dana untuk program bantuan bencana alam dan bantuan social (Kesehatan, Pendidikan, dan ekonomi); \n5. HA PPATK nomor R-1027/XII/20218', 'Korporasi', 'EDD-007', NULL, NULL, 'Indonesia', '1. jalan Suryodiningratan No. 605, Mantrijeron, Yogyakarta\n2. jalan Pleret Km 01 Tegalmaggisan Baturetno Bantul Banguntapan Yogyakarta 551978\n3.telp 0822-4359-1333 / (0274) 428146;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (37, 'Emraan Ali a.k.a. Abu Jihad TNT', '1. paspor nomor: Trinidad dan Tobago TB162181 (terbit tanggal 27 Januari 2015,\nhabis tanggal 26 Januari 2020);\n2. paspor nomor: Amerika Serikat 420985453 (habis tanggal 6 Februari 2017);\n3. anggota senior dari Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al-\nQaida di Irak (QDe.115);\n4. Direkrut untuk ISIL dan menginstruksikan individu untuk melakukan tindakan\nteroris melalui video online;\n5. fisik: tinggi 176 cm, berat 73 kg, bertubuh sedang, warna mata coklat, warna\nrambut hitam/botak, kulit berwarna coklat;\n6. berbicara bahasa Inggris.', 'Orang', 'ILQ-299', 'Rio Claro, Trinidad and Tobaga,', '14 Juli 1967;', 'Trinidad and Tobaga;', '1. Amerika Serikat (sebagai tahanan di pusat penahanan Federal – Miami nomor\nregister: 10423-509);\n2. jalan Rio Claro Mayaro, Rio Claro Trinidad;\n3. jalan Guayaguayare, Rio Claro, Trinidad;\n4. Amerika Serikat;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (38, 'MOHAMMAD ALI AL HABBO alias MOHAMAD ABDULKARIM alias MUHAMMAD ABD-AL-KARIM', '1. Kartu Identifikasi Nasional Republik Suriah Nomor 10716775\n2. Kartu Identifikasi Nasional Republik Suriah Nomor 2020316097\n3. Kartu Identifikasi Nasional Republik Suriah Nomor 2020409266\n4. Fasilitator berbasis di Turki yang menyediakan layanan keuangan untuk atau mendukung negara islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QQDe.115)', 'Orang', 'ILQ-298', 'Raqqa, Republik Arab Suriah', '1 Oktober 1983 atau\n15 Maret 1983 atau\n1 Januari 1980', 'Republik Arab Suriah', '- Gazantiep, Turkey (Sejak 2016)\n- Raqqa, Republik Arab Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (39, 'JAMAL HUSSEIN HASSAN ZEINIYE ALIAS JAMAL HUSAYN ZAYNIYAH', '1. pemimpin AL-NUSRAH untuk orang-orang Levant (QDe.137) di Kalamoun Barat, Republik Arab Syria;\n2. paspor: Syria nomor paspor: 3987189\n3. nomor identifikasi nasional: 13080011550;\n4. kartu identifikasi Syria nomor: 5877002 dikeluarkan 25 Mei 2011\n', 'Orang', 'ILQ-297', 'Benghazi, Libya/Al Tall, Syrian Arab Republik/ Tell Mnin, Syria Arab Republik', '17  Agustus 1972 atau 1 Januari 1972', 'Republik  Arab Syria', 'Republik Arab Syria, Arsal, Bekaa, Lebanon', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (40, 'NOOR WALI MEHSUD ALIAS ABU MANSHOOR ASIM', 'Pemimpin tehrik-e Taliban Pakistan (TTP) (QDE.132)', 'Orang', 'ILQ-296', 'Gurguray, Pakistan', '28667', 'Pakistan', 'N/A', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (41, 'GASHIBU', '1. tidak berbadan hukum; \n2. menggalang dana via media sosial;\n3, facebook: GASHIBU PROJECT;\n4. donasi untuk keluarga dan mujahidin;\n5. memiliki afiliasi dengan MEI EKOWATI dan SUTOMO ALIAS YASIN;\n6. dikendalikan oleh AGUNG SETYADI;\n', 'Korporasi', 'EDD-006', NULL, NULL, NULL, 'Semarang, Jawa Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (42, 'RQ SAMA TAAT', '1. tidak berbadan hukum; \n2. menggalang dana via media sosial;\n3. akun telegram @ADM_SAMATAAT;\n4. terkait dengan MARIFAH HASANAH;\n', 'Korporasi', 'EDD-005', NULL, NULL, NULL, NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (43, 'ASEER CRUEE CENTER ALIAS ALIF INFAQ SODAQOH ALIAS AL-FATH ALIAS AL-FATIH CENTER ALIAS INFAQ DAN SHODAQOH CENTRE ALIAS ALIF INFAQ DAN SODAQOH CENTER;', '1. tidak berbadan hukum;\n2. menggalang dan via media social;\n3. akun Instagram @team_aseer;\n4. memiliki afiliasi NUR FAZILAH (sudah ditangkap) terkait penyediaan tempat DPO a.n. ABU MUSLIM dan terkait EDI SISWANTO              (WNI tertangkap di Singapura);\n', 'Korporasi', 'EDD-004', NULL, NULL, NULL, NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (44, 'ZULFIQAR RAHMAN IS', '1. NIK 3201132601770003; \n2. tergabung dalam kartu keluarga no. 3579021706150001;\n', 'Orang', 'IDD-023', 'Ambon', '26/01/1977', 'Indonesia', '1. Dsn. Tegalsari, Tulungrejo, Bumiaji, Batu, Jawa Timur;\n2. Kp. Pondok Manggis RT, 005/002, Bojongbaru, Bojonggede, Cibinong 16320;\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (45, 'EDI SISWANTO ALIAS ZUBAIR', '1. NIK 3276040508860003; \n2. tergabung dalam kartu keluarga no. 3174090602170006;\n3. terkait dengan ASEER CRUE CENTER\n', 'Orang', 'IDD-022', 'Nganjuk\n', '05/08/1986', 'Indonesia', 'Jalan Moch Khafi 1, Gg. H. Tohir 2 no. 8, Jagakarsa, jagakarsa, Kota Adm, Jakarta Selatan, DKI Jakarta', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (46, 'JARWADI', '1. NIK 3173061401750014; \n2. tergabung dalam kartu keluarga no. 3173061602100050;\n3. suami dari ARYI SUSANTI\n', 'Orang', 'IDD-021', 'Jakarta', '14/01/1975', 'Indonesia', '1. Rawa Lele, Pegadungan, kalideres, Kota Adm. Jakarta Barat, DKI Jakarta;\n2. Jalan Peta Barat, Gg. Langgar No. 26, Pegadungan Patokan masjid Baitul Mamun, Kalideres, Jakarta Barat\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (47, 'MEI EKOWATI ALIAS SITI AISYAH ALIAS AISYAH', '1. NIK 7202014805730001; \n2. terdapat NIK yang sama dengan nama AISYAH;\n3. tergabung dalam kartu keluarga no. 7202011806100002;\n4. terkait dengan Gashibu melalui ABDUL AZIZ;\n5. istri dari SUTOMO alias YASIN\n', 'Orang', 'IDD-020', 'Semarang', '08/05/1973', 'Indonesia', 'Jalan. P. Nias Blakang SMA 4, Kayamanya Sentral, Poso Kota, Poso, Sulawesi Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (48, 'SUTOMO ALIAS YASIN ALIAS M. YASIN ALIAS SUTOMO BIN SUDARTO ALIAS MOHAMMAD YASIN ALIAS YASINO BIN SUDARTO', '1. NIK 720210607650001; \n2. tergabung dalam kartu keluarga no. 7202011806100000;\n3. suami dari MEI EKOWATI dan memiliki keterkaitan transaksi dengan MEI EKOWATI\n', 'Orang', 'IDD-019', 'Semarang', '06/07/1965', 'Indonesia', 'Jalan P. Nias Blakang SMA 4, Kayamanya Sentral, Poso Kota, Poso, Sulawesi Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (49, 'ABDUL AZIZ ALIAS ABDUL AZIZ ABU BAKAR ALIAS MAS DIM', '1. NIK 33750225090750004; \n2. no. paspor A 9573282 (berlaku sampai dengan 2 Desember 2019);\n3. tergabung dalam kartu keluarga no. 3375022509070203;\n4. terkait dengan Gashibu (rekening yang bersangkutan digunakan untuk penerimaan donasi Gerakan Sehari Seribu dan Gashibu Project);\n', 'Orang', 'IDD-018', 'Pekalongan', '16/09/1975', 'Indonesia', 'Poncol,  Gg. 3 No. 10 RT, 002 RW, 003, Poncol, Kec. Pekalongan Timur, Pekalongan, Jawa Tengah;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (50, 'AGUNG SETYADI ALIAS ABU IBNIHI ALIAS ABU JUNDI ALIAS ABU ANNISA ALIAS ABU SAIF AL BATTAR ALIAS DEN BAGUS ALIAS TUKANG SAPU GASHIBU ALIAS PAK NE ALIAS SALAFUL JIHAD', '1. NIK 3374081804750003; \n2. no. paspor A 9573282 (berlaku sampai dengan 31 Oktober 2018);\n3. tergabung dalam kartu keluarga no. 3374081412054002;\n4. terkait dengan Gashibu\n', 'Orang', 'IDD-017', 'Semarang', '18/04/1975', 'Indonesia', 'Genuk Karanglo RT 004 RW 001, Candisari, Semarang, Jawa Tengah 50251', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (51, 'HASNAH alias UMI MURTAFI\'AH alias MUTIA', '1. NIK 7206056810800002;\n2. tergabung dalam kartu keluarga no. 7202011710190000\n', 'Orang', 'IDD-016', 'Sakita', '28/10/1980', 'Indonesia', '1. Kayamanya, Kayamanya, Poso Kota, Poso Sulawesi Tengah;\n2. Sakita, Bungku Tengah, Kab. Morowali, Sulawesi Tengah 94673;\n3. Ds. Sakita, Kec. Bungku Tengah, Kec. Bun, Morowali, Bungku Tengah Morowali, Sulawesi Tengah 94914\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (52, 'ARYI SUSANTI', '1. NIK 3173065911761001;\n2. no. paspor A 9422189 (berlaku sampai dengan 21 November 2019);\n3. tergabung dalam kartu keluarga no. 3173061602100052;\n4. istri dari JAWARDI;\n5. terkait dengan RQ Sama Taat;', 'Orang', 'IDD-014', 'Jakarta', '19/11/1976', 'Indonesia', 'Rawa Lele RT 009 RW 001, Pegadungan, Kalideres, Jakarta Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (53, 'YUYUN IPA', '1.  NIK 8109027011950001; \n2. tergabung dalam kartu keluarga no. 81040413030381340;\n3. memiliki hubungan dengan ISHAK IPA alias ALI KALORA (pimpinan MIT di Poso);\n4. akun facebook https://m.facebook.com/profile.php?id=1000035212\n								44658&ref=content_filter;\n', 'Orang', 'IDD-013', 'Waelikut', '30/11/1995', 'Indonesia', 'Ds. Wailikut, Waelikut, Waesama, Buru Selatan, Maluku', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (54, 'MUHAMAD ARSYADANA AHSANA alias MUHAMMAD ARSYADANA AHSANA JUNDI', '1. NIK 3275110504960002\n2. no. paspor B 2800961 (berlaku sampai dengan 21 April 2021)\n3. terkait dengan oleh Aseer Cruee Center\n4. tergabung dalam kartu keluarga no. 3275110410130005\n5. akun facebook https://m.facebook.com/profile.php?id=100007425578816&ref=content_filter\n', 'Orang', 'IDD-012', 'Cirebon', '05/04/1996', 'Indonesia', 'Kp. Kelapa Dua RT 001/007, Ds. Padurenan, Kel. Mustika Jaya, Kota Bekasi, Jawa Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (55, 'Amir Muhammad Sa\'id Abdal-Rahman al-Mawla ALIAS ABU IBRAHIM AL-HASHIMI AL-QURASHI ALIAS HAJJI ABDALLAH ALIAS ABU ‘UMAR AL-TURKMANI ALIAS ABDULLAH QARDASH ALIAS ABU ‘ABDULLAH QARDASH ALIAS AL-HAJJ ABDULLAH QARDASH ALIAS HAJJI ABDULLAH AL-AFARI ALIAS ‘ABDUL AMIR MUHAMMAD SA’ID SALBI ALIAS MUHAMMAD SA’ID ‘ABD-AL-RAHMAN AL-MAWLA ALIAS AMIR MUHAMMAD SA’ID ‘ABD-AL-RAHMAN MUHAMMAD AL-MULA;', 'pemimpin negara Islam (ISIS) di Iraq dan Levant, terdaftar sebagai Al-Qaida Iraq', 'Orang', 'IDQ-296', 'Tall \'Afar, Iraq atau mosul', '05/10/1976 atau 01/10/1976', NULL, NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (56, 'ISLAMIC STATE IN IRAQ AND THE LEVANT - YEMEN alias Islamic State of Iraq and the Levant of Yemen alias Islamic State in Yemen alias ISIL in Yemen alias ISIS in Yemen alias Wilayat al-Yemen, Province of Yemen', 'Didirikan pada bulan November 2014 dan telah diambil sumpahnya oleh Abu Bakr Al-Baghdadi dan didirikan oleh Ibrahim Awwad Ibrahim Ali Al-Badri Al-Samarrai yang identitasnya telah tercantum dalam daftar PBB.\n\nTerasosiasi dengan Islamic State di Irak dimana entitas tersebut telah tercantum dalam daftar PBB dengan nama Al-Qaida di Iraq.', 'Korporasi', 'ELQ-085', NULL, NULL, 'Yaman', 'N/A', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (57, 'ISLAMIC STATE IN IRAQ AND THE LEVANT - LIBYA alias Islamic state of Iraq and the Levant in Libya alias Wilayat Barqa alias Wilayat Fezzan alias Wilayat Tripolitania alias Wilayat Tarablus alias Wilayat Al?Tarablus', 'Dibentuk pada bulan November 2014 dan diumumkan oleh Abu Bakr Al-Baghdadi, dan didirikan oleh Ibrahim Awwad Ibrahim Ali Al-Badri Al-Samarrai yang telah masuk dalam daftar PBB.\n\nTerasosiasi dengan Islamic State di Iraq dimana entitas tersebut telah tercantum dalam daftar PBB dengan nama Al-Qaida di Iraq', 'Korporasi', 'ELQ-084', NULL, NULL, 'Libya', 'N/A', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (58, 'JAMAAH ANSHARUT DAULAH alias Jemaah Anshorut Daulah alias Jamaah Ansharut Daulat', 'Didirikan pada Tahun 2015 sebagai organisasi utama dari grup ekstrimisme di Indonesia yang berafiliasi dengan pimpinan ISIL, yaitu Abu Bakr al-Baghdadi.\n\nEntitas ini berasosiasi dengan ISIL yang telah  dimasukan ke \n dalam daftar PBB dengan nama Al Qaida di Irak. ', 'Korporasi', 'EDQ-006', NULL, NULL, NULL, 'N/A', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (59, 'MUSLIMAH BIMA PEDULI MAMA CHARITY ALIAS MUSLIM BIMA PEDULI (MBP)', '- Perizinan Kementerian Hukum dan HAM nomor AHU-0003653.AH.01.04. Tanggal 15 Maret 2018\n- Rekening atas nama MUSLIMAH BIMA PEDULI MAMA CHARITY digunakan untuk mengumpulkan dana bagi ABU AHMED FOUNDATION (AAF) \n- NPWP 180850180010309', 'Korporasi', 'EDD-003', NULL, NULL, 'Indonesia', 'Jl. Dam Rontu No. 23 Rt. 006 Rw. 002 Rabangodu Selatan, Kec. Rasane Timur, Kota Bima Nusa Tenggara Barat.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (60, 'ABU AHMED FOUNDATION (AAF) ALIAS ABU AHMAD FOUNDATION ALIAS ABU FOUNDATION ALIAS NEW AAF MEDIA CENTRE', 'AAF terafiliasi dengan Hayat Tahrir Al- Sham a.k.a Jabhat Al-Nusrah a.k.a Jabhat Fath Asy Syam a.k.a Al Nusrah Front for The People of Levant yang merupakan salah satu entitas yang tercantum dalam Resolusi Dewan Kemananan PBB 1267 dan DTTOT', 'Korporasi', 'EDD-002', NULL, NULL, 'Indonesia', 'Jawa Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (61, 'MUASIH', '- NIK 5272026202890003 atas nama MUASIH\n- Pendidikan SLTA/Sederajat\n- Yang bersangkutan tercatat di Kemenerian Hukum dan Ham sebagai Bendahara Muslim Bima Penduli Mama Charity', 'Orang', 'IDD-014', 'Kendal', '22/02/1989', 'Indonesia', 'Rt. 2 Rw. 1 Kel. Rabangodu Selatan, Kota. Bima, Nusa Tenggara Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (62, 'PARMILA ZULFADIYANTI ALLIAS PARMILA ALIAS LALA ALIAS BIDAN MILA', '- NIK 5272024901750004 atas Parmila Zulfadiyanti\n- Pendidikan Diploma IV/Stata I\n- Yang bersangkutan tercatat di Kementerian Hukum dan HAM sebagai Pendiri dan ketua Musli Bima Penduli Mama Charity', 'Orang', 'IDD-013', 'Bima', '09/01/1975', 'Indonesia', 'Rt. 6 Rw. 2, Kel. Rabangodu Selatan, Kota. Bima, Nusa Tenggara Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (63, 'YAYAN YULIANTO ALIAS YAYAN YULIANTO MARGINO ALIAS ABU ALI', '- NIK 3311092209840003 atas nama YAYAN YULIANTO\n- No. Passport A7831667 atas nama YAYAN YULIANTO MARGINO berlaku sampai dengan 4 April 2019\n- Pekerjaan Swasta\n- Pendidikan SLTA/Sederajat\n- Nomor Kartu Keluarga 3311091405056795\n- Telah menikah ppada tahun 2009\n- Yang bersangkutan perwakilan ABU AHMED FOUNDATION (AFF) di Suriah\n', 'Orang', 'IDD-012', 'Sukoharjo', '22/09/1984', 'Indonesia', 'Jati Rt. 001 Rw. 004, Kel. Cemani, Kec. Grogol, Kab. Sukoharjo, Jawa Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (64, 'EDI SUSANTO', '- NIK 3376042404790003 atas nama EDI SUSANTO\n- Pekerjaan karyawan swasta\n- Pendidikan Diploma IV/Strata I\n- Rekening yang bersangkutan  digunakan oleh ABU AHMED FOUNDATION (AAF) untuk mengumpulkan dana\n- Pengurus ABU AHMED FOUNDATION (AAF)', 'Orang', 'IDD-011', 'Tegal', '24/04/1979', 'Indonesia', 'Desa Dukuhturi, Kec. Dukuh turi, Kab. Tegal, Jawa Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (65, 'ACEP AHMAD SETIAWAN ALIAS ABU AHMED AL INDUNISY', '- NIK 3278042806780001 atas nama Acep Ahmad Setiawan\n- No. Passport A6036386 berlaku sampai dengan 11 Juli 2018\n- Pekerjaan Swasta\n- Pendidikan SLTA/Sederajat\n- Ybs merupakan suami dari AISYAH HUMAIRA', 'Orang', 'IDD-010', 'Tasikmalaya', '28/06/1978', 'Indonesia', '1. Jl. Ir. H. Juanda No. 10 Rt 003/003, Desa/Kel. Panyingkiran, Kec. Indihiang\n2. Kel. Panyingkiran, Kec. Indihiang, Tasikmalaya, Jawa  Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (66, 'TAZNEEM MIRIAM SAILAR ALIAS TAZNIEM ALIAS ASIYAH HUMAIRA ALIAS  UMMU YASMIN', '- Pendidikan SLTA/Sederajat\n- NIK 3278046002800009 atas nama AISYAH HUMAIRA\n- No. Passport 761204241 atas nama TAZNEEM MIRIAM SAILAR berlaku sampai dengan 18 Januari 2018', 'Orang', 'ILD-001', 'Manchester atau Bekasi 20 Februari 1980', '20/02/1973', 'Inggris', 'Kel. Panyingkirian, Kec. Indihiang, Tasikmalaya, Jawa Barat ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (67, 'ISLAMIC STATE IN THE GREATER SAHARA (ISGS)', 'a) Negara Islam di Irak dan Suriah - Sahara Besar (ISIS-GS) b) Negara Islam Irak dan Suriah - Sahara Besar (ISIS-GS) c) Negara Islam Irak dan Levant - Sahara Besar (ISIL-GS) d ) Negara Islam Sahel Besar e) ISIS di Sahel Besar f) ISIS di Sahara Besar g) ISIS di Sahel Islam Fka: na Alamat: na Terdaftar pada: 23 Februari 2020 Informasi lain: Dibentuk pada Mei 2015 oleh Adnan Abu Walid al-Sahraoui (QDi.415). Terkait dengan Negara Islam di Irak dan Levant (terdaftar sebagai Al-Qaeda di Irak (QDe.115)). Kelompok sempalan Al-Mourabitoun (QDe.141). Melakukan serangan teroris di Mali, Niger dan Burkina Faso', 'Korporasi', 'ELQ-083', NULL, NULL, NULL, 'N/A', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (68, 'ISLAMIC STATE WEST AFRICA PROVINCE (ISWAP)', 'a) Negara Islam di Irak dan Levant - Afrika Barat (ISIL-WA) b) Negara Islam Irak dan Suriah - Afrika Barat (ISIS-WA) c) Negara Islam Irak dan Suriah Provinsi Afrika Barat (ISISWAP) d) Islam Negara Irak dan Levant - Afrika Barat Fka: na Alamat: na Terdaftar pada: 23 Februari 2020 Informasi lain: Terkait dengan Negara Islam di Irak dan Levant (terdaftar sebagai Al-Qaida di Irak (QDe.115)). Dibentuk pada bulan Maret 2015 oleh Abubakar Shekau (QDi.322). Kelompok sempalan Jama\'atu Ahlis Sunna Lidda\'Awati Wal-Jihad (Boko Haram) (QDe.138). Melakukan serangan teroris di Nigeria', 'Korporasi', 'ELQ-082', NULL, NULL, NULL, 'N/A', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (69, 'Amadou Koufa ALIAS Amadou Barry ALIAS  Amadou Kouffa ALIAS Hamadoun Koufa ALIAS Hamadoun Kouffa ALIAS Hamadou Koufa ALIAS Hamadou Kouffa', 'Tahun lahir 1958. Pendiri Katiba Macina of Jama\'a Nusrat ul-Islam wa al-Muslimin (JNIM) serta merupakan Pimpinan dari Organization of Al-Qaida in the Islamic Maghreb (AQIM)', 'Orang', 'ILQ-295', 'Koufa, Mali', NULL, NULL, 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (70, 'Bah Ag Moussa ALIAS Ag Mossa ALIAS Ammi Salim', 'Anggota pendiri Ansar Eddine (QDe.135), pimpinan operasional Jama\'a Nusrat ul-Islam wa al-Muslimin (JNIM). ', 'Orang', 'ILQ-294', 'N/A', NULL, 'Mali', 'N/A', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (71, 'Ali  Maycho ALIAS Abderahmane al Maghrebi ALIAS Abderrahmane le Marocain ALIAS Abou Abderahmane Sanhaji', 'Nomor Paspor Maroko : V06359364 Nomor Identitas Nasional Maroko :  AB704306 \nAnggota Al Qaida in the Islamic Maghreb (AQIM), Ansar Eddine, and Jama\'a Nusrat ul-Islam wa al-Muslimin (JNIM).\n', 'Orang', 'ILQ-293', 'Taza, Maroko ', '25/05/1983', 'Maroko', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (72, 'ISLAMIC STATE IN IRAQ AND THE LEVANT - KHORASAN (ISIL- K) alias  ISIL KHORASAN alias ISLAMIC STATE’S KHORASAN PROVINCE alias ISIS WILAYAT KHORASAN alias ISIL’S SOUTH ASIA BRANCH alias SOUTH ASIAN CHAPTER OF ISIL', 'Islamic State of Iraq and the Levant - Khorasan (ISIL - K) dibentuk pada 10 Januari 2015 oleh mantan komandan  Tehrik-e Taliban Pakistan (TTP) dan mantan komandan Taliban yang bersumpah untuk bersekutu dengan Islamic State of Iraq and the Levant/Al-Qaida in Iraq. ISIL-K mengklaim tanggung jawab atas beberapa serangan di Afganistan dan Pakistan. \n\n', 'Korporasi', 'ELQ-081', NULL, NULL, NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (73, 'Mohammed Masood Azhar Alvi alias Masud Azhar alias Wali Adam Isah alias Wali Adam Esah', 'Pendiri  Jaish-i-Mohammed.\n\nTanggal lahir lainnya: 10 Juni 1968 ', 'Orang', 'ILQ-027', 'Bahawalpur, Punjab, Pakistan ', '10/07/1968', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (74, 'TARIQ GIDAR GROUP (TGG) alias TEHRIK-E-TALIBAN-TARIQ GIDAR GROUP alias TTP-TARIQ GIDAR GROUP alias TEHREEK-I-TALIBAN PAKISTAN GEEDAR GROUP alias TTP GEEDAR GROUP alias TARIQ GEEDAR GROUP alias COMMANDER TARIQ AFRIDI GROUP alias TARIQ AFRIDI GROUP alias TARIQ GIDAR AFRIDI GROUP alias THE ASIAN TIGERS', 'Merupama  pecahan kelompok Tehrik-e Taliban Pakistan (TTP).  Kelompok tersebut didirikan di Darra Adam Khel, Federally Administered Tribal Area (FATA), Pakistan, pada tahun 2007.', 'Korporasi', 'ELQ-080', NULL, NULL, NULL, 'Perbatasan wilayah Afghanistan/Pakistan.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (75, 'HAMZA USAMA MUHAMMAD BIN LADEN ', 'Anak dari Usama bin Laden (alm). Diumumkan oleh Aiman Muhammed Rabi al-Zawahiri sebagai anggota resmi Al-Qaida. Ybs mengajak pangikut Al-Qaida untuk melakukan serangan teror, penerus dari al-Zawahiri.', 'Orang', 'ILQ-291', 'Jeddah, Saudi Arabia', '09/05/1989', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (76, 'HAJJ \'ABD AL-NASIR alias HAJJI ABDELNASSER alias HAJJI ABD AL-NASR alias TAHA AL-KHUWAYT', 'Pimpinan militer ISIL di Suriah, dan menjadi  ketua ISIL Delegated Committee, yang melakukan pengawasan administratif ISIL. ', 'Orang', 'ILQ-290', 'Tall \'Afar, Irak', NULL, 'Irak', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (77, 'Anjem Choudary', NULL, 'Orang', 'ILQ-289', 'Welling, London, United Kingdom of Great Britain and Northern Ireland', '18/01/1967', 'Inggris', 'Frankland Prison, United Kingdom of Great Britain and Northern Ireland', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (78, 'Jama’a Nusrat ul-Islam wa al-Muslimin (JNIM)', 'Beroperasi di Mali dan Burkina Faso', 'Korporasi', 'ELQ-079', NULL, NULL, NULL, NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (79, 'Muhammed Reza Lahaman Kiram ALIAS Abdul Rahman ALIAS Abu Abdul Rahman al Filipini ALIAS Abtol Rahman', 'Nomor paspor Filipina XX3966391(masa berlaku s.d. 24 Februari 2020); EC3524065\n\nAnggota ISIL senior, direkrut untuk ISIL dan memerintahkan individu untuk melakukan aksi terror via video online\n', 'Orang', 'ILQ-288', 'Zamboanga City, Zamboanga del Sur, Filipina', '03/03/1990', 'Filipina', 'Brgy Recodo, Zamboanga City, Western Mindanao, Filipina & 96 IlangIlang, Sarmiento Subdivision, Panabo, Davao City, Eastern Mindanao, Filipina (alamat sebelumnya)\n\nSuriah (sejak tahun 2015) \n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (80, 'Mohamad Rafi bin Udin ALIAS Mohd Radi Bin Udin ALIAS Abu Awn al Malizi ALIAS Muhammad Ratin ALIAS Muhammad Rafiuddin ALIAS Abu Una al Malayzie ALIAS Mhammad Rahim Bin Udin ALIAS Abu Ayn Tok Cit ALIAS Muhammad Ratin Bin Nurdin', 'Nomor paspor Malaysia A31142734 (masa berlaku s.d. 6 November 2015)\n\nNomor identitas Malaysia 660603-05-5267\n\nAnggota ISIL senior, direkrut untuk ISIL dan memerintahkan individu untuk melakukan aksi terror via video online\n', 'Orang', 'ILQ-287', 'Negri Sembilan, Malaysia', '03/06/1966', 'Malaysia', 'B-3B-19 Glenview Villa, Jalan 49 Off Jalan Kuari, Taman Pinggiran Cheras, 56000, Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia (per 30 Januari 2014)\n\n90-00-04 Flat Sri Kota, Bandar Tun Razak, 56100, Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia (per 23 Apil. 2010) \n\n96-06-06 Flat Sri Kota, Bandar Tun Razak, 56100, Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia (per 6 April 2007) \n\nSuriah (sejak tahun 2014)\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (81, 'MUHAMMAD SYAIFUDDIN alias MUHAMMAD SYAFIUDIN alias SAIFUDDIN alias MOHAMMED YUSOP KARIM\nFAIS alias FAIS alias ABU WALID AI INDUNISY', '- Diduga saat ini berada di Suria/Irak dan bergabung dengan ISIS, dan sudah mengatur beberapa tindak pidana terorisme yang terjadi di Indonesia.\nAnggota ISIL senior, direkrut untuk ISIL dan memerintahkan individu - untuk melakukan aksi terror via video online.', 'Orang', 'IDQ-024', 'Sukoharjo', '11/10/1978', 'Indonesia', 'Suriah (2015)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (82, 'Adnan Abou Walid Al-Sahraoui ', 'Mantan juru bicara the Mouvement pour I’Unification et el Jihad en Afrique de I’Ouest (MUJJAO)', 'Orang', 'ILQ-286', 'Laayoune', '16/02/1973', NULL, 'Ménaka, Gao Region, Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (83, 'ABDULPATTA ESCALON ABUBAKAR', 'Fasilitator untuk ISIL\n\nNomor paspor Filipina EC6530802, EB2778599 Nomor identitas nasional Arab Saudi 2135314355, 202112421\n\nTanggal lahir lainnya:\n1 Januari 1965\n11 Januari 1965', 'Orang', 'ILQ-285', 'Tuburan, Provinsi Basilan , Filipina', '03/03/1965', 'Filipina', 'Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (84, 'MYRNA AJIJUL MABANZA', 'Fasilitator untuk ISIL, Nomor identitas nasional: Voter 73320881AG1191MAM20000, Pelajar 200801087, lainnya 140000900032', 'Orang', 'ILQ-284', '-', '11/07/1991', 'Filipina', 'Basilan Province, Philippines', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (85, 'AL-KAWTHAR MONEY EXCHANGE alias AL KAWTHAR CO alias AL KAWTHAR COMPANY alias AL-KAWTHAR HAWALA', NULL, 'Korporasi', 'ELQ-077', NULL, NULL, 'Irak', NULL, 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (86, 'UMAR  MAHMUD IRHAYYIM AL-KUBAYSI alias UMAR MAHMUD RAHIM AL-KUBAYSI alias OMAR MAHMOOD IRHAYYIM AL-FAYYADH alias UMAR MAHMUD RAHIM alias UMAR MAHMUD RAHIM AL-QUBAYSI', NULL, 'Orang', 'ILQ-283', 'Irak', '16/06/1967', 'Irak', 'Al-Qaim, Al-Anbar, Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (87, 'SALIM  MUSTAFA MUHAMMAD AL-MANSUR', 'SALIM MUSTAFA MUHAMMAD MANSUR AL-IFRI alias SALEEM AL-IFRI alias SALIM MANSUR MUSTAFA alias SALIM MANSUR alias HAJJI SALIM AL-SHAKLAR', 'Orang', 'ILQ-282', 'Bagdad, Irak', '20/02/1962', 'Irak', 'Mosul, Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (88, 'Khatiba Imam Al-Bukhari (KIB)', 'berasosiasi dengan Al-Nusrah Front for The People Of The Levant', 'Korporasi', 'ELQ-078', NULL, NULL, NULL, 'a) Perbatasan Afghanistan/Pakistan (lokasi sebelumnya) b) Khan?Shaykhun, Suriah (53 km dari Idlib, lokasi bulan Maret 2018) c) Idlib, Aleppo dan Khama, Suriah (zona operasi)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (89, 'AHMAD JAN AKHUNDZADA SHUKOOR AKHUNDZADA alias AHMAD JAN AKHUNZADA alias AHMAD JAN AKHUND ZADA  ', NULL, 'Orang', 'ILT-030', ') Lablan village, Dehrawood, Uruzgan, Afghanistan b) Zurmat, Paktia, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (90, 'LASHKAR-E-TAYYIBA alias LASHKAR-E-TOIBA alias LASHKAR-I-TAIBA alias AL MANSOORIAN alias AL MANSOOREEN alias ARMY OF THE PURE alias ARMY OF THE RIGHTEOUS alias ARMY OF THE PURE AND RIGHTEOUS alias PAASBAN-E-KASHMIR alias PAASBAN-I-AHLE-HADITH alias PASBAN-E-KASHMIR alias PASBAN-E-AHLE-HADITH alias PAASBAN-E-AHLE-HADIS alias PASHAN-E-AHLE HADIS alias LASHKAR E TAYYABA alias LET alias JAMAAT-UD-DAWA alias JUD alias JAMA\'AT AL-DAWA alias JAMAAT UD-DAAWA alias JAMAAT UL-DAWAH alias JAMAAT-UL-DAWA alias JAMA\'AT-I-DAWAT alias JAMAIAT-UD-DAWA alias JAMA\'AT-UD-DA\'AWAH alias JAMA\'AT-UD-DA\'AWA alias JAMAATI-UD-DAWA alias FALAH-I-INSANIAT FOUNDATION (FIF)', NULL, 'Korporasi', 'ELQ-047', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (91, 'AL-QAIDA IN THE ARABIAN PENINSULA (AQAP) alias AL-QAIDA OF JIHAD ORGANIZATION IN THE ARABIAN PENINSULA alias TANZIM QA\'IDAT AL-JIHAD FI JAZIRAT AL-ARAB alias AL-QAIDA ORGANIZATION IN THE ARABIAN PENINSULA (AQAP) alias AL-QAIDA IN THE SOUTH ARABIAN PENINSULA alias ANSAR AL-SHARI\'A (AAS)', NULL, 'Korporasi', 'ELQ-025', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (92, 'AL-QAIDA alias \'THE BASE\' alias AL QAEDA alias ISLAMIC SALVATION FOUNDATION alias THE GROUP FOR THE PRESERVATION OF THE HOLY SITES alias THE ISLAMIC ARMY FOR THE LIBERATION OF HOLY PLACES alias THE WORLD ISLAMIC FRONT FOR JIHAD AGAINST JEWS AND CRUSADERS alias USAMA BIN LADEN NETWORK alias USAMA BIN LADEN ORGANIZATION alias AL QA\'IDA alias AL QA\'IDA/ISLAMIC ARMY', NULL, 'Korporasi', 'ELQ-023', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (93, 'AL FURQAN alias DZEMILIJATI FURKAN alias DZEM\'IJJETUL FURQAN alias ASSOCIATION FOR CITIZENS RIGHTS AND RESISTANCE TO LIES alias DZEMIJETUL FURKAN alias ASSOCIATION OF CITIZENS FOR THE SUPPORT OF TRUTH AND SUPRESSION OF LIES alias SIRAT alias ASSOCIATION FOR EDUCATION, CULTURE AND BUILDING SOCIETY-SIRAT alias ASSOCIATION FOR EDUCATION, CULTURAL, AND TO CREATE SOCIETY-SIRAT alias ISTIKAMET alias IN SIRATEL alias CITIZEN\' ASSOCIATION FOR SUPPORT AND PREVENTION OF LIES - FURQAN ', NULL, 'Korporasi', 'ELQ-004', NULL, '00/00/0000', 'Bosnia Herzegovina', 'a) 30a Put Mladih Muslimana (ex Pavla Lukaca Street), 71 000 Sarajevo, Bosnia and Herzegovina \nb) 72 ul. Strossmajerova, Zenica, Bosnia and Herzegovina \nc) 42 Muhameda Hadzijahica, Sarajevo, Bosnia and Herzegovina\nd) 70 and 53 Strosmajerova Street, Zenica, Bosnia and Herzegovina \ne) Zlatnih Ljiljana Street, Zavidovici, Bosnia and Herzegovina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (94, 'SHAFI SULTAN MOHAMMED AL-AJMI alias SHAFI AL-AJMI alias SHEIKH SHAFI AL-AJMI alias SHAYKH ABU-SULTAN', NULL, 'Orang', 'ILQ-211', 'Warah, Kuwait', '01/01/1973', 'Kuwait', 'Area 3, Street 327, Building 41, Al-Uqaylah, Kuwait', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (95, 'MAYSAR ALI MUSA ABDALLAH AL-JUBURI  alias MUYASSIR AL-JIBURI  alias MUYASSIR HARARA alias MUYASSIR AL-SHAMMARI alias MUHAMMAD KHALID HASSAN alias AL-SHAMMARI alias MUS\'AB AL-QAHTANI alias ABU MARIA AL-QATANI\n', NULL, 'Orang', 'ILQ-210', 'a) Al-Shura, Mosul, Iraq b) Harara, Ninawa Province, Iraq', '01/06/1976', 'Irak', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (96, 'AHMED JAN AKHUNDZADA WAZIR alias HAJI AHMAD JAN alias AHMED JAN AKHUND ', NULL, 'Orang', 'ILT-127', 'Kandahar Province, Afghanistan atau Tirin Kot District, Uruzgan Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (97, 'SALAH EDDINE GASMI alias ABOU MOHAMED SALAH alias BOUNOUADHER  ', NULL, 'Orang', 'ILQ-118', 'Zeribet El Oued, Wilaya of Biskra, Aljazair', '13/04/1971', 'Aljazair', 'Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (98, 'ZAKARYA ESSABAR alias ZAKARIYA ESSABAR  ', NULL, 'Orang', 'ILQ-116', 'Essaouria, Maroko', '03/04/1977', 'Maroko', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (99, 'MOUSSA BEN OMAR BEN ALI ESSAADI alias DAH DAH alias ABDELRAHMMAN alias BECHIR  ', NULL, 'Orang', 'ILQ-115', 'Tabarka, Tunisia', '04/12/1964', 'Tunisia', 'Tunisia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (100, 'QASIM MOHAMED MAHDI AL-RIMI alias QASIM AL-RIMI alias QASIM AL-RAYMI alias  QASSIM AL-RAYMI alias QASIM AL-RAMI alias QASIM MOHAMMED MAHDI AL REMI  alias QASSIM MOHAMMAD MAHDI AL RIMI alias QASIM YAHYA MAHDI \'ABD AL-RIMI alias ABU HURAYAH AL-SANA\'AI alias ABU \'AMMAR alias ABU HURAYRAH ', NULL, 'Orang', 'ILQ-062', 'Desa Raymah, Sanaa, Yaman', '05/06/1978', 'Yaman', 'Yaman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (101, 'MOHAMMED AL GHABRA alias MOHAMMED EL\' GHABRA alias DANIAL ADAM', NULL, 'Orang', 'ILQ-037', 'Damaskus, Suriah', '01/06/1980', 'Inggris', 'London Timur, Inggris', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (102, 'JAMAAT-UL-AHRAR (JuA) alias JAMAAT-E-AHRAR alias TEHRIK-E TALIBAN PAKISTAN JAMAAT UL AHRAR alias AHRAR-UL-HIND', NULL, 'Korporasi', 'ELQ-076', NULL, '00/00/0000', NULL, 'a) Lalpura, Nangarhar, Afghanistan dan wilayah perbatasan Afghanistan/Pakistan\nb) Mohmand Agency, Pakistan ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (103, 'JUND AL AQSA alias THE SOLDIERS OF AQSA alias SOLDIERS OF AQSA alias SARAYAT AL QUDS', NULL, 'Korporasi', 'ELQ-075', NULL, '00/00/0000', 'Suriah', '- Idlib, Suriah;\n- Hama, Suriah.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (104, 'JAYSH KHALID IBN AL WALEED alias KHALID IBN AL-WALID ARMY alias LIWA SHUHADA AL-YARMOUK alias HARAKAT AL-MUTHANNA AL-ISLAMIA', NULL, 'Korporasi', 'ELQ-074', NULL, '00/00/0000', 'Suriah', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (105, 'SELSELAT AL-THAHAB alias SILSILET AL THAHAB alias SELSELAT AL THAHAB FOR MONEY EXCHANGE alias SILSILAT MONEY EXCHANGE COMPANY alias SILSILAH MONEY EXCHANGE COMPANY  alias AL SILSILAH AL DHAHABA alias SILSALAT AL DHAB', NULL, 'Korporasi', 'ELQ-073', NULL, '00/00/0000', 'Irak', '- Al-Kadhumi Complex, Al-Harthia, Baghdad, Iraq;\n- Al-Abbas Street, Karbala, Iraq;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (106, 'HANIFA MONEY  EXCHANGE  OFFICE  (BRANCH LOCATED IN ALBU KAMAL, SYRIAN ARAB REPUBLIC) alias HANIFAH CURRENCY EXCHANGE alias HANIFEH EXCHANGE alias HANIFA EXCHANGE alias HUNAIFA OFFICE alias HANIFAH EXCHANGE COMPANY alias HANIFA MONEY EXCHANGE OFFICE', NULL, 'Korporasi', 'ELQ-072', NULL, '00/00/0000', 'Suriah', 'Albu Kamal (Al-Bukamal), Suria.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (107, 'SAID JAN \'ABD AL-SALAM alias SA\'ID JAN \'ABD-AL-SALAM alias DILAWAR KHAN ZAIN KHAN alias QAZI \'ABDALLAH alias QAZI ABDULLAH alias IBRAHIM WALID alias QASI SA\'ID JAN alias SAID JHAN alias FARHAN KHAN alias AZIZ CAIRO alias NANGIALI', NULL, 'Orang', 'ILQ-004', '-', '05/02/1981', 'Afganistan', '- ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (108, 'FARED SAAL alias ABU LUQMAAN AL ALMANI alias ABU LUGMAAN', NULL, 'Orang', 'ILQ-279', 'Bonn, Jerman', '18/02/1989', 'Aljazair,Jerman', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (109, 'GHALIB ABDULLAH AL-ZAIDI  alias GHALIB ABDALLAH AL-ZAYDI alias GHALIB ABDALLAH ALI AL-ZAYDI alias GHALIB AL ZAYDI', NULL, 'Orang', 'ILQ-277', 'Raqqah Region, Yaman', '00/00/0000', 'Yaman', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (110, ' IYAD NAZMI SALIH KHALIL alias AYYAD NAZMI SALIH KHALIL alias  EYAD NAZMI SALEH KHALIL alias IYAD AL-TOUBASI alias IYAD AL-TUBASI alias ABU AL-DARDA\' alias ABU-JULAYBIB AL-URDUNI alias ABU-JULAYBIB', NULL, 'Orang', 'ILQ-276', 'Suriah ', '00/00/0000', 'Yordania', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (111, 'BASSAM AHMAD AL-HASRI alias BASSAM AHMAD HUSARI alias ABU AHMAD AKHLAQ alias ABU AHMAD AL-SHAMI', NULL, 'Orang', 'ILQ-275', 'Qalamun, Damascus, Suriah atau Ghutah, Damascus , Suriah ', '01/01/1969', 'Palestina,Suriah', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (112, 'ABU UBAYDAH YUSUF AL-ANABI  alias ABOU OBEIDA YOUSSEF AL-ANNABI alias ABU-UBAYDAH YUSUF AL-INABI alias MEBRAK YAZID alias YOUCEF ABU OBEIDA alias MIBRAK YAZID alias YOUSIF ABU OBAYDA YAZID alias YAZID MEBRAK alias YAZID MABRAK alias YUSUF ABU UBAYDAH alias ABOU YOUCEF  \n', NULL, 'Orang', 'ILQ-280', NULL, '07/02/1969', 'Aljazair', 'Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (113, 'SHANE DOMINIC CRAWFORD alias ASADULLAH alias ABU SA\'D AT-TRINIDADI alias ASAD', NULL, 'Orang', 'ILQ-274', 'Mount Hope, Trinidad and Tobago', '22/02/1986', 'Trinidad Tobago', 'a) Suriah (sejak Mei 2014) \nb) Reyhanli, Hatay, Turki (2013 to May 2014)\n c) 349 Dass Branch Trace, Dass Trace, Enterprise Chaguanas, Trinidad and Tobago (sejak lahir sampai 27 November 2013) \nd) LP# 41 Ballisier Road, Smith Field Lands, Wallerfield, County of St. George East, Trinidad\nand Tobago (lokasi alternatif per September 2011)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (114, 'ELSHAFEE EL SHEIKH alias EL SHAFEE ELSHEIKH alias ALSHAFEE EL-SHEIKH', NULL, 'Orang', 'ILQ-273', 'London', '16/07/1988', 'Inggris', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (115, 'ALEXANDA AMON KOTEY alias ALEXE KOTEY alias ALEXANDA KOTE', NULL, 'Orang', 'ILQ-272', 'London', '13/12/1983', 'Inggris', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (116, 'MURAD IRAKLIEVICH MARGOSHVILI alias ZURAB IRAKLIEVICH MARGOSHVILI alias MURAD AKHMENDOVICH MADAYEV alias LOVA MADAYEV alias ABU-MUSLIM AL-SHISHANI alias MUSLIM alias LAVA alias JOHN alias GEORGE alias ARTHUR alias SEDOY', NULL, 'Orang', 'ILQ-271', 'Grozny, Chechen Republic, Federasi Rusia', '15/01/1970', 'Georgia,Rusia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (117, 'MALIK RUSLANOVICH BARKHANOEV alias SAIFUDDIN alias SAIFUDDIN AL-INGUSHI alias SAIFUDDIN INGUSHI', NULL, 'Orang', 'ILQ-270', 'Ordzhonikidzevskaya, Sunzhenskiy district, Ingushetia, Federasi Rusia', '14/03/1992', 'Rusia', 'Mosul, Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (118, 'OMAN ROCHMAN alias AMAN ABDURAHMAN alias ABU SULAIMAN bin ADE SUDARMA', 'Tokoh Jemaah Anshorut Daulah (JAD) dan terlibat dalam aksi-aksi terorisme yang dilakukan oleh pendukung JAD, karena selalu memberikan motivasi, saat ini sedang menjalani proses sidang.', 'Orang', 'IDQ-023', 'Sumedang', '05/01/1972', 'Indonesia', 'Kampung Panteneun, RT 02 RW 07, Desa Licin, Kecamatan Cimalaka, Sumedang, Jawa Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (119, 'ABDUL-HAQ WASSIQ alias ABDUL-HAQ WASEEQ alias ABDUL HAQ WASIQ ', 'Dalam masa penahanan Amerika Serikat, tahun lahir 1971', 'Orang', 'ILT-126', 'Gharib, Khogyani, Ghazni, Afganistan', '00/00/0000', 'Afganistan', 'Qatar', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (120, 'ATIQULLAH WALI MOHAMMAD alias ATIQULLAH', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan, tahun lahir 1962', 'Orang', 'ILT-125', 'Tirin Kot, Uruzgan, Afganistan atau Khwaja Malik, Arghandab, Kandahar, Afg', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (121, 'MOHAMMAD SADIQ alias AMIR MOHAMMAD', NULL, 'Orang', 'ILT-035', 'Ghazni, Afghanistan atau Logar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (122, 'BACHRUN NAIM alias MUHAMMAD BAHRUNNAIM alias MUHAMMAD BAHRUN NAIM ANGGIH TAMTOMO alias NAIM alias ABU AISYAH', 'Diduga saat ini berada di Suriah/Irak dan bergabung dengan ISIS, dan sudah mengatur beberapa tindak pidana terorisme yang terjadi di Indonesia', 'Orang', 'IDD-003', 'Pekalongan', '06/09/1983', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (123, 'SALIM MUBARAK ATTAIMI alias SALIM MUBAROQ ATAMIMI alias ABU JANDAL alias SALIM PENCENG', 'Diduga saat ini berada di Suriah/Irak dan bergabung dengan ISIS, dan sudah mengatur beberapa tindak pidana terorisme yang terjadi di Indonesia.', 'Orang', 'IDD-004', 'Pasuruan', '25/08/1977', 'Indonesia', 'Sengkali, Kota Malang, Jawa Timur ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (124, 'ALI AHMAD alias ALI AHMAD KALORA alias ALI KALORA', '- Merupakan anggota kelompok Mujahidin Indonesia Timur (MIT);\n- Diduga saat ini berada di Poso, Sulawesi Tengah;\n', 'Orang', 'IDD-006', 'Desa Kalora Poso Pesisir Utara, Poso, Sulawesi Tengah', NULL, 'Indonesia', 'Sulawesi Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (125, 'USMAN BACHRUMSYAH MENNOR alias SYAH BAHRUM alias BACHRUMSHAH alias BACHRUMSYAH alias BAHRUMSYAH alias IBRAHIM ABU alias ABU MUHAMMAD AL-ANDUNISIY alias ABU MUHAMMAD AL-INDONESI alias ABU MUHAMMAD AL-INDUNISI alias ABU SHABRINA', 'Diduga saat ini berada di Suriah/Irak dan bergabung dengan ISIS, dan sudah mengatur beberapa tindak pidana terorisme yang terjadi di Indonesia', 'Orang', 'IDD-002', 'Bogor', '23/07/1984', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (126, 'SA\'D BIN SA\'D MUHAMMAD SHARIYAN AL-KA\'BI alias SA\'D BIN SA\'D MUHAMMAD SHIRYAN AL-KA\'BI alias SA\'D SA\'D MUHAMMAD SHIRYAN AL-KA\'BI alias SA\'D AL-SHARYAN AL-KA\'BI alias ABU HAZA\' alias ABU HAZZA\' alias UMAR AL-AFGHANI alias ABU SA\'D alias ABU SUAD', 'Fasilitator dari Qatar untuk yang menyediakan jasa keuangan kepada, atau untuk mendukung Al-Nusrah Front for the People of the Levant', 'Orang', 'ILQ-229', '-', '15/02/1972', 'Qatar', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (127, 'IBRAHIM \'ISA HAJJI MUHAMMAD AL-BAKR alias  IBRAHIM \'ISSA HAJI MUHAMMAD AL-BAKAR alias IBRAHIM \'ISA HAJI AL-BAKR alias IBRAHIM ISSA HIJJI MOHD ALBAKER alias IBRAHIM ISSA HIJJI MUHAMMAD AL-BAKER alias IBRAHIM \'ISSA AL-BAKAR alias IBRAHIM AL-BAKR alias ABU-KHALIL', 'Fasilitator yang memberikan dukungan keuangan untuk Al-Qaida', 'Orang', 'ILQ-217', 'Qatar', '12/07/1977', 'Qatar', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (128, 'ASHRAF MUHAMMAD YUSUF \'UTHMAN \'ABD AL-SALAM alias ASHRAF MUHAMMAD YUSIF \'UTHMAN \'ABD AL-SALAM alias ASHRAF MUHAMMAD YUSUF \'ABD-AL-SALAM alias ASHRAF MUHAMMAD YUSIF \'ABD AL-SALAM alias KHATTAB alias IBN AL-KHATTAB ', 'DOB: 1984. Pemberi dukungan keuangan dan dukungan teknologi untuk Al-Qaida', 'Orang', 'ILQ-216', 'Irak', '00/00/0000', 'Yordania', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (129, '\'ABD AL-RAHMAN BIN \'UMAYR AL-NU\'AYMI alias ABD AL-RAHMAN BIN \'AMIR AL-NA\'IMI alias \'ABD AL-RAHMAN AL-NU\'AIMI alias \'ABD AL-RAHMAN BIN \'AMIR AL-NU\'IMI alias \'ABD AL-RAHMAN BIN \'AMIR AL-NU\'AYMI alias \'ABDALLAH MUHAMMAD AL-NU\'AYMI alias \'ABD AL-RAHMAN AL-NUA\'YMI alias A. RAHMAN AL-NAIMI alias ABDELRAHMAN IMER AL JABER AL NAIMEH alias A. RAHMAN OMAIR J ALNAIMI alias ABDULRAHMAN OMAIR AL NEAIMI', 'Pendukung dana dan fasilitator Al-Qaida', 'Orang', 'ILQ-207', 'Doha, Qatar', '00/00/0000', 'Qatar', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (130, 'JAM\'YAH TA\'AWUN AL-ISLAMIA alias SOCIETY OF ISLAMIC COOPERATION alias JAM\'IYAT AL TA\'AWUN AL ISLAMIYYA alias JIT ', 'na', 'Korporasi', 'ELQ-046', NULL, '00/00/0000', 'Afganistan', 'Kandahar City, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (131, 'JAMA\'ATU AHLIS SUNNA LIDDA\'AWATI WAL-JIHAD alias JAMA\'ATU AHLUS-SUNNAH LIDDA\'AWATI WAL JIHAD alias JAMA\'ATU AHLUS-SUNNA LIDDA\'AWATI WAL JIHAD alias BOKO HARAM alias WESTERN EDUCATION IS A SIN', 'dipimpin oleh Abubakar Shekau, Afiliasi Al-Qaida (QDe.004), dan Organisasi Al-Qaida dalam Islam Maghreb (AQIM) (QDe.014). Terkait dengan Jama\'atu Ansarul Muslimina Fi Biladis-Sudan (Ansaru).', 'Korporasi', 'ELQ-045', NULL, '00/00/0000', 'Nigeria', 'Nigeria', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (132, 'BENEVOLENCE INTERNATIONAL FOUNDATION alias AL BIR AL DAWALIA alias BIF alias BIF-USA alias MEZHDUNARODNYJ BLAGOTVORITEL\'NYL FOND', 'Nomor Identifikasi (Amerika Serikat): 36-3823186', 'Korporasi', 'ELQ-032', NULL, '00/00/0000', 'Amerika Serikat', '- 8820 Mobile Avenue, Ia, Oak Lawn, Illinois, 60453, Amerika Serikat;\n- P.O. Box 548, Worth, Illinois, 60482, Amerika Serikat;\n- 9838 S. Roberts Road, Suite 1W, Palos Hills, Illinois, 60465, Amerika Serikat;\n- 20-24 Branford Place, Suite 705, Newark, New Jersey, 07102, Amerika Serikat;\n- P.O. Box 1937, Khartoum, Sudan;\n- Banglades;\n- Jalur Gaza;\n- Yaman;	', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (133, 'ANSARUL MUSLIMINA FI BILADIS SUDAN alias ANSARU alias ANSARUL MUSLIMINA FI BILADIS SUDAN alias JAMA\'ATU ANSARIL MUSLIMINA FI BILADIS SUDAN (JAMBS) alias JAMA\'ATU ANSARUL MUSLIMINA FI BILADIS-SUDAN (JAMBS) alias JAMMA\'ATU ANSARUL MUSLIMINA FI BILADIS-SUDAN (JAMBS) alias VANGUARDS FOR THE PROTECTION OF MUSLIMS IN BLACK AFRICA alias VANGUARD FOR THE PROTECTION OF MUSLIMS IN BLACK AFRICA ', 'Teroris dan paramiliter Kelompok yang didirikan pada tahun 2012 dan beroperasi di Nigeria. Terkait dengan Organisasi Al-Qaida dalam Islam Maghreb (AQIM) (QDe.014), Jama\'atu Ahlis Sunna Lidda\'Awati Wal-Jihad (Boko Haram) (QDe.138) dan Abubakar Mohammed Shekau (QDi322).', 'Korporasi', 'ELQ-029', NULL, '00/00/0000', 'Nigeria', 'Nigeria', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (134, 'AL-QAIDA IN IRAQ alias AQI alias AL-TAWHID alias THE MONOTHEISM AND JIHAD GROUP alias QAIDA OF THE JIHAD IN THE LAND OF THE TWO RIVERS alias AL-QAIDA OF JIHAD IN THE LAND OF THE TWO RIVERS alias THE ORGANIZATION OF JIHAD\'S BASE IN THE COUNTRY OF THE TWO RIVERS alias THE ORGANIZATION BASE OF JIHAD/COUNTRY OF THE TWO RIVERS alias THE ORGANIZATION BASE OF JIHAD/MESOPOTAMIA alias TANZIM QA\'IDAT AL-JIHAD FI BILAD AL-RAFIDAYN alias TANZEEM QA\'IDAT AL JIHAD/BILAD AL RAAFIDAINI alias JAMA\'AT AL-TAWHID WA\'AL-JIHAD alias JTJ alias ISLAMIC STATE OF IRAQ alias ISI alias AL-ZARQAWI NETWORK alias ISLAMIC STATE IN IRAQ AND THE LEVANT', 'na', 'Korporasi', 'ELQ-024', NULL, '00/00/0000', 'Irak', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (135, 'OMAR ALI HUSSAIN alias ABU-SA\'ID AL BRITANI', 'na', 'Orang', 'ILQ-235', 'High Wycombe, Buckinghamshire,Inggris', '21/03/1987', 'Inggris', '- Suriah (per Januari 2014)\n- Sebelumnya di Inggris s.d. Januari 2014  ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (136, 'MU\'TASSIM YAHYA \'ALI AL-RUMAYSH alias RAYHANAH alias ABU-RAYHANAH alias HANDALAH alias ABU-RAYHANAH AL-\'ANSARI AL-JEDDAWI ', 'Fasilitator dan penyandang dana ISIL, Nomor Paspor 01055336, Nomor identifikasi nasional 2054275397, terdaftar sebagai Al-Qaida di Irak (QDe.115). Anggota Al-Qaida di Arab Peninsula (AQAP) (QDe.129) sejak paling sedikit pada bulan Juni 2014', 'Orang', 'ILQ-238', 'Jeddah, Arab Saudi', '04/01/1973', 'Yaman', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (137, 'RADI ABD EL SAMIE ABOU EL YAZID EL AYASHI alias MERA\'I ', 'Dihukum sepuluh tahun penjara oleh Pengadilan Tingkat Pertama Milan 21 September 2006. Dalam tahanan di Italia. Karena dilepas pada tanggal 6 Januari 2012. Tunduk pada pengusiran dari Italia ', 'Orang', 'ILQ-110', 'El Gharbia, Mesir', '02/01/1972', 'Mesir', 'Via Cilea 40, Milan, Italia.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (138, 'RAMZI MOHAMED ABDULLAH BINALSHIBH alias BINALSHEIDAH, RAMZI MOHAMED ABDULLAH alias BIN AL SHIBH, RAMZI alias OMAR, RAMZI MOHAMED ABDELLAH alias MOHAMED ALI ABDULLAH BAWAZIR alias BINALSHIBH RAMZI MOHAMMED ABDULLAH alias RAMZI BINALSHIB alias RAMZI MOHAMED ABDELLAH OMAR HASSAN ALASSIRI alias BINALSHIBH RAMSI MOHAMED ABDULLAH alias ABU UBAYDAH alias \'UMAR MUHAMMAD \'ABDALLAH BA\' AMAR alias RAMZI OMAR', 'Nomor Pasport 00085243, Ditangkap di Karachi, Pakistan, 30 September 2002. Dalam tahanan Amerika Serikat, pada Mei 2010', 'Orang', 'ILQ-089', 'Gheil Bawazir, Hadramawt, Yaman atau Khartoum, Sudan', '01/05/1972', 'Yaman', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (139, 'MAHMOUD MOHAMMAD AHMED BAHAZIQ alias BAHAZIQ MAHMOUD alias ABU ABD AL-\'AZIZ alias ABU ABDUL AZIZ alias SHAYKH SAHIB', 'Nomor Identifikasi Nasional 4-6032-0048-1, Pemodal Lashkar-e-Tayyiba (terdaftar di bawah nomor referensi tetap QDe.118). Telah menjabat  sebagai Pemimpin Lashkar-e-Tayyiba di Arab Saudi, Tahun lahir lainnya 1944 ', 'Orang', 'ILQ-082', 'India', '17/08/1943', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (140, 'MUHSIN FADHIL AYED ASHOUR AL-FADHLI alias MUHSIN FADHIL \'AYYID AL FADHLI alias MUHSIN FADIL AYID A SHUR AL FADHLI alias ABU MAJID SAMIYAH alias ABU SAMIA', 'Nomor Pasport 106261543 dan 420529, Dicari oleh\nOtoritas Keamanan Kuwait. Dicari oleh pasukan keamanan Saudi. Buronan per Jul 2008\n', 'Orang', 'ILQ-077', 'Kuwait', '24/04/1981', 'Kuwait', 'Blok Empat, Jalan 13, Rumah # 179, Kota Kuwait, Al-Riqqa, Kuwait\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (141, 'ABD-AL-MAJID AZIZ AL-ZINDANI alias ABDELMAJID AL-ZINDANI alias SHAYKH \'ABD AL-MAJID AL-ZINDANI alias SHEIKH ABD AL-MEGUID AL-ZANDANI', 'Tahun lahir 1950', 'Orang', 'ILQ-074', 'Yaman', '00/00/0000', 'Yaman', 'P.O. Box 8096, Sana\'a, Yaman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (142, 'IBRAHIM AWWAD IBRAHIM ALI AL-BADRI AL-SAMARRAI alias Dr. IBRAHIM \'AWWAD IBRAHIM \'ALI AL-BADRI AL-SAMARRAI\' alias ABU DUA\' alias ABU DUAA\' alias Dr. IBRAHIM alias ABU BAKR AL-BAGHDADI AL-HUSAYNI AL-QURAISHI alias ABU BAKR AL-BAGHDADI', 'Pemimpin Al-Qaida In Iraq, Tinggi: 1,65 m. Berat: 85 kg. Rambut dan mata hitam. Putih kulit. Pemimpin Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (AQI) (QDe.115). Saat ini berbasis di Jakarta Irak dan Suriah Menyatakan dirinya \"khalifah\" di Mosul pada tahun 2014. Bertanggung jawab untuk mengelola dan mengarahkan AQI dalam skala besar operasi. Nama istri: Saja Hamid al-Dulaimi. Nama istri: Asma Fawzi Mohammed al-Kubaissi. Dicari oleh Pasukan keamanan Irak', 'Orang', 'ILQ-044', 'Samarra, Irak', '00/00/0000', 'Irak', '- Irak\n- Suriah ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (143, 'MUHANNAD AL-NAJDI alias \'LI MANAHI \'ALI AL-MAHAYDALI AL-\'UTAYBI alias GHASSAN AL-TAJIKI', 'Fasilitator Al-Qaida (QDe.004) berbasis di Suriah. Terlibat dalam pengembangan alat peledak improvisasi untuk digunakan di Afghanistan dan Republik Arab Suriah sejak setidaknya tahun 2010', 'Orang', 'ILQ-252', 'Al-Duwadmi, Arab Saudi', '19/05/1984', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (144, 'HANI AL-SAYYID AL-SEBAI YUSIF alias HANI YOUSEF AL-SEBAI alias HANI YOUSSEF alias HANY YOUSEFF alias HANI YUSEF alias HANI AL-SAYYID AL-SABAI alias HANI AL-SAYYID EL SEBAI alias HANI AL-SAYYID AL SIBA\'I alias HANI AL-SAYYID EL SABAAY alias EL-SABABT alias ABU TUSNIN alias ABU AKRAM alias HANI EL SAYYED ELSEBAI YUSEF alias ABU KARIM alias HANY ELSAYED YOUSSEF', 'DOB tambahan: 16 Juni 1960. Nama ayah adalah Mohamed Elsayed Elsebai. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan Pada 29 Juli 2010.', 'Orang', 'ILQ-191', 'Qaylubiyah, Mesir', '01/03/1961', 'Mesir', 'London, Britania Raya dan Irlandia  ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (145, 'MOHAMMED SALAHALDIN ABD EL HALIM ZIDANE alias SAYF-AL ADL alias MUHAMAD IBRAHIM MAKKAWI alias IBRAHIM AL-MADANI alias SAIF AL-\'ADIL alias SEIF AL ADEL', 'DOB lainnya 11 April 1960. \nBertanggung jawab atas keamanan Osama bin Laden (almarhum).', 'Orang', 'ILQ-177', 'Monufia Governate, Mesir', '11/04/1963', 'Mesir', 'na', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (146, 'ABDUL HAQ alias MAIMAITIMING MAIMAITI alias ABDUL HEQ alias ABUDU HAKE alias ABDUL HEQ JUNDULLAH alias \'ABD AL-HAQ alias MEMETIMING MEMETI alias MEMETIMING AXIMU alias MEMETIMING QEKEMAN alias MAIUMAITIMIN MAIMAITI alias ABDUL SAIMAITI alias MUHAMMAD AHMED KHALIQ alias MAIMAITI IMAN alias MUHELISI alias QERMAN alias SAIFUDING', 'Na', 'Orang', 'ILQ-125', 'Hetian Area, Xinjiang Uighur Autonomous Region, Cina', '10/10/1971', 'Cina', '- Afganistan;\n- Pakistan;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (147, 'MUTHANNA HARITH AL-DARI alias DR. MUTHANNA AL DARI alias MUTHANA HARITH AL DARI alias MUTHANNA HARITH SULAYMAN AL-DARI alias MUTHANNA HARITH SULAYMAN AL-DHARI alias MUTHANNA HARETH AL-DHARI alias MUTHANA HARIS AL-DHARI alias DOCTOR MUTHANNA HARITH SULAYMAN AL DARI AL-ZAWBA\' alias MUTHANNA HARITH SULAYMAN AL-DARI AL-ZOBAI alias MUTHANNA HARITH SULAYMAN AL-DARI AL-ZAWBA\'I alias MUTHANNA HARETH AL-DARI alias MUTHANA HARIS AL-DARI alias DOCTOR MUTHANNA AL-DARI alias DR. MUTHANNA HARITH AL-DARI AL-ZOWBAI', 'Nama ibu Heba Khamis Dari. Memberikan panduan operasional dukungan keuangan dan layanan lainnya kepada atau untuk mendukung Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (AQI) (QDe.115). Terlibat dalam penyelundupan minyak. Dicari oleh pasukan keamanan Irak.', 'Orang', 'ILQ-034', 'Irak', '16/06/1969', 'Irak', '- Amman, Yordania\n- Khan Dari, Irak \n- Asas Village, Abu Ghurayb, Irak  \n- Mesir', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (148, 'IBRAHIM HASSAN TALI AL-ASIRI alias IBRAHIM HASSAN TALI ASIRI alias IBRAHIM HASAN TALEA ASEERI alias IBRAHIM HASSAN AL-ASIRI alias IBRAHIM HASAN TALI ASIRI alias IBRAHIM HASSAN TALI ASSIRI alias IBRAHIM HASAN TALI\'A \'ASIRI alias IBRAHIM HASAN TALI AL-\'ASIRI alias IBRAHIM AL-\'ASIRI alias IBRAHIM HASSAN AL ASIRI alias ABU SALEH alias ABOSSLAH alias ABU-SALAAH', 'nomor paspor F 654645; Operatif dan pembuat bom utama Al - Qaida di Indonesia Semenanjung Arab (AQAP) (QDe.129). Dipercaya bersembunyi di Yaman pada Mar. 2011. Dicari oleh Arab Saudi. Juga terkait dengan \'abd al-Karim\' Nasir Abdullah Al-Wahishi (QDi.274), Qasim Yahya Mahdi al-Rimi (QDi.282), Dan Anwar Nasser Abdulla Al-Aulaqi (QDi.283), tanggal lahir lainnya 18 April 1982, 24/06/1402 Kalender Hijariah', 'Orang', 'ILQ-028', 'Riyadh, Arab Saudi', '19/04/1982', 'Arab Saudi', 'Yaman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (149, 'HAMID ABDALLAH AHMAD AL-ALI alias Dr. HAMED ABDULLAH AL-ALI alias HAMED AL-\'ALI alias HAMED BIN \'ABDALLAH AL-\'ALI alias HAMID \'ABDALLAH AL-\'ALI alias HAMID \'ABDALLAH AHMAD AL-\'ALI alias HAMID BIN ABDALLAH AHMED AL-ALI alias HAMID ABDALLAH AHMED AL-ALI alias ABU SALIM', 'na', 'Orang', 'ILQ-024', 'Kuwait', '20/01/1960', 'Kuwait', 'Kuwait', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (150, 'ZAKI EZAT ZAKI AHMED alias RIF\'AT SALIM alias ABU USAMA ', NULL, 'Orang', 'ILQ-020', 'Sharqiyah, Mesir atau Zaqaziq, Mesir', '21/04/1960', 'Mesir', 'Diperkirakan di perbatasan Pakistan-Afganistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (151, 'JABER ABDALLAH JABER AHMAD AL-JALAHMAH alias JABER AL-JALAMAH alias ABU MUHAMMAD AL-JALAHMAH alias JABIR ABDALLAH JABIR AHMAD JALAHMAH alias JABIR \'ABDALLAH JABIR AHMAD AL-JALAMAH alias JABIR AL-JALHAMI', 'Nomor Pasport 101423404 , Kuwait number 2541451', 'Orang', 'ILQ-018', 'Al-Khitan, Kuwait', '24/09/1959', 'Kuwait', 'Kuwait', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (152, 'ABD AL-LATIF BIN ABDALLAH SALIH MUHAMMAD AL-KAWARI alias ABD-AL-LATIF ABDALLAH SALIH AL-KAWARI alias ABD-AL-LATIF ABDALLAH SALIH AL-KUWARI alias ABD-AL-LATIF ABDALLAH AL-KAWWARI alias ABD-AL-LATIF ABDALLAH AL-KAWARI alias ABU ALI AL-KAWARI', 'Fasilitator dari Qatar untuk yang menyediakan jasa keuangan kepada atau untuk mendukung Al-Qaida', 'Orang', 'ILQ-227', '-', '28/09/1973', 'Qatar', 'Al-Laqtah, Qatar', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (153, 'HAJI BASIR AND ZARJMIL COMPANY HAWALA alias HAJI BASHIR AND ZARJMIL HAWALA COMPANY alias HAJI ABDUL BASIR AND ZAR JAMEEL HAWALA alias HAJI BASIR HAWALA alias HAJI BASEER HAWALA alias HAJI ABDUL BASIR EXCHANGE SHOP alias HAJI BASIR AND ZARJAMIL CURRENCY EXCHANGE alias HAJI ZAR JAMIL, HAJI ABDUL BASEER MONEY CHANGER', 'Penyedia layanan keuangan yang digunakan untuk mengirim/mentransfer dana.', 'Korporasi', 'ELT-005', NULL, '00/00/0000', 'Pakistan', 'Kantor cabang 1: \nSanatan (variant Sanatin) Bazaar, Sanatan Bazaar Street, near Trench (variant Tranch) Road, Chaman, Baluchistan, Pakistan \nKantor cabang 2:\nQuetta, Pakistan \nKantor cabang 3: \nLahore, Pakistan\nKantor cabang 4:\nPeshawar, Pakistan \nKantor cabang 5:\nKarachi, Pakistan \nKantor cabang 6:\nIslamabad, Pakistan \nKantor cabang 7:\nKandahar, Afghanistan \nKantor cabang 8:\nHerat, Afghanistan \nKantor cabang 9:\nHelmand, Afghanistan \nKantor cabang 10:\nDubai, United Arab Emirat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (154, 'AL-NUSRAH FRONT FOR THE PEOPLE OF THE LEVANT alias JABHAT AL-NUSRAH alias JABHET AL-NUSRA alias AL-NUSRAH FRONT alias AL-NUSRA FRONT alias JABHAT FATH AL SHAM alias JABHAT FATH AL-SHAM alias JABHAT FATAH AL-SHAM alias JABHAT FATEH AL-SHAM alias FATAH AL-SHAM FRONT alias FATEH AL-SHAM FRONT alias CONQUEST OF THE LEVANT FRONT alias THE FRONT FOR THE LIBERATION OF AL SHAM alias FRONT FOR THE CONQUEST OF SYRIA/THE LEVANT alias FRONT FOR THE LIBERATION OF THE LEVANT alias FRONT FOR THE CONQUEST OF SYRIA alias ANSAR AL-MUJAHIDEEN NETWORK (SUB-UNIT NAME) alias LEVANTINE MUJAHIDEEN ON THE BATTLEFIELDS OF JIHAD (SUB-UNIT NAME)', 'beroperasi di Suriah dan mendukung jaringan di Irak;', 'Korporasi', 'ELQ-022', NULL, '00/00/0000', 'Suriah', '- Suriah\n- Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (155, 'HARAKAT SHAM AL-ISLAM alias HARAKET SHAM AL-ISLAM alias SHAM AL-ISLAM alias SHAM AL-ISLAM MOVEMENT', 'Beroperasi di Suriah dan berhubungan dengan AI Nusrah Front for the People of the Levant;', 'Korporasi', 'ELQ-071', NULL, '00/00/0000', 'Suriah', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (156, 'AL MOURABITOUN alias LES SENTINELLES alias THE SENTINELS', 'dipimpin oleh Mokhtar Belmokhtar', 'Korporasi', 'ELQ-021', NULL, '00/00/0000', 'Mali', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (157, 'AL MOULATHAMOUN alias LES ENTURBANNÉS alias THE VEILED', 'na', 'Korporasi', 'ELQ-020', NULL, '00/00/0000', NULL, '-Mali;\n-Nigeria;\n-Alzajair;	\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (158, 'SPECIAL PURPOSE ISLAMIC REGIMENT (SPIR) alias THE ISLAMIC SPECIAL PURPOSE REGIMENT alias THE AL-JIHAD-FISI-SABILILAH SPECIAL ISLAMIC REGIMENT alias ISLAMIC REGIMENT OF SPECIAL MEANING', 'berhubungan dengan the Islamic International Brigade (IIB) dan the Riyadus-Salikhin Reconnaissance and Sabotage Battalion of Chechen Martyrs (RSRSBCM);', 'Korporasi', 'ELQ-070', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (159, 'AL MOUAKAOUNE BIDDAM alias LES SIGNATAIRES PAR LE SANG alias CEUX QUI SIGNENT AVEC LE SANG alias THOSE WHO SIGN IN BLOOD', 'terkait dengan Al-Qaida dan dipimpin oleh Mokhtar Belmokhtar', 'Korporasi', 'ELQ-019', NULL, '00/00/0000', 'Mali', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (160, 'AL-ITIHAAD AL-ISLAMIYA (AIAI)', '-dilaporkan telah beroperasi di Somalia dan Ethiopia dan telah bergabung dengan Harakat Al-Shabaab Al-Mujaahidiin (Al-Shabaab);\n-diterima berafiliasi dengan Al-Qaida oleh Aiman Muhammad Rabi al-Zawahiri pada Februari 2012\n', 'Korporasi', 'ELQ-018', NULL, '00/00/0000', 'Somalia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (161, 'JUND AL-KHILAFAH IN ALGERIA (JAK-A) alias JUND AL KHALIFA alias JUND AL-KHILAFAH FI ARD AL-JAZA’IR alias JUND AL-KHALIFA FI ARD AL-JAZAYER alias SOLDIERS OF THE CALIPHATE IN ALGERIA alias SOLDIERS OF THE CALIPHATE IN THE LAND OF ALGERIA ', 'Muncul pada 13 Sep. 2014. Sebagian besar dikenal karena penculikan dan pemenggalan kepala pemelihara herve Gourdel nasional Prancis. Bertanggung jawab atas menyerang polisi dan gendarm di Aljazair dan terus merencanakan serangan di masa depan.\n\n', 'Korporasi', 'ELQ-069', NULL, '00/00/0000', 'Aljazair', 'Kabylie region, Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (162, 'AL-HARAMAYN FOUNDATION (TANZANIA) ', 'na', 'Korporasi', 'ELQ-017', NULL, '00/00/0000', 'Tanzania; officially the United Republic of Tanzania', '- P.O. Box 3616, Dar Es Salaam, Tanzania;\n- Tanga, Tanzania;\n- Singida, Tanzania;	\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (163, 'THE ARMY OF EMIGRANTS AND SUPPORTERS alias BATTALION OF EMIGRANTS AND SUPPORTERS alias ARMY OF EMIGRANTS AND SUPPORTERS ORGANIZATION alias BATTALION OF EMIGRANTS AND ANSAR alias JAYSH AL-MUHAJIRIN WAL-ANSAR (JAMWA)', 'berafiliasi dengan Islamic State in Iraq and the Levant; berafiliasi dengan AI-Nusrah Front for the People of the Levant.', 'Korporasi', 'ELQ-068', NULL, '00/00/0000', NULL, 'Jabal Turkuman area, Lattakia Governorate, Suriah, ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (164, 'ANSAR AL CHARIA BENGHAZI alias ANSAR AL-CHARIA alias ANSAR AL CHARIA  alias ANSAR AL-SHARIA alias ANSAR AL-CHARIA BENGHAZI alias ANSAR AL-SHARIA BENGHAZI alias ANSAR AL CHARIA IN LIBYA alias KATIBAT ANSAR AL CHARIA alias ANSAR AL SHARIA', 'menjalankan kamp pelatihan untuk para teroris yang datang ke Suriah, Irak dan Mali; Terkait dengan Organisasi Al-Qaida di Maghreb Islam (QDe.014), Al Mourabitoun (QDe.141), Ansar al-Syari\'ah di Tunisia (AAS-T) (QDe.143), dan Ansar al Charia Derna (QDe.145). Pemimpinnya adalah Mohamed al-Zahawi (tidak terdaftar).\n\n', 'Korporasi', 'ELQ-067', NULL, '00/00/0000', NULL, '- Benghazi, Libya;  \n- Tunisia; ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (165, 'ANSAR AL CHARIA DERNA alias ANSAR AL-CHARIA DERNA alias ANSAR AL-SHARIA DERNA alias ANSAR AL CHARIA alias ANSAR AL-SHARIA alias ANSAR AL SHARIA', 'menjalankan tempat pelatihan untuk para teroris yang datang ke Suriah dan Irak. Terkait dengan Organisasi Al-Qaida di Maghreb Islam (QDe.014), Ansar al-Syari\'ah di Tunisia (AAS-T) (QDe.143) dan Ansar al Charia Benghazi\n\n', 'Korporasi', 'ELQ-066', NULL, '00/00/0000', 'Libya', 'Derna dan Jebel, Libya;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (166, 'ABDALLAH AZZAM BRIGADES alias ABDULLAH AZZAM BRIGADES alias ZIYAD AL-JARRAH BATTALIONS OF THE ABDALLAH AZZAM  BRIGADES alais YUSUF AL-\'UYAYRI BATTALIONS OF THE ABDALLAH AZZAM BRIGADES', 'kelompok bersenjata yang bergabung menyerang bersama Al-Nusra', 'Korporasi', 'ELQ-065', NULL, '00/00/0000', NULL, '- Libanon\n- Suriah \n- Semenanjung Arab', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (167, 'ANSAR AL-SHARI\'A IN TUNISIA (AAS-T) alias ANSAR AL-SHARIA IN TUNISIA alias ANSAR AL- SHARI\'AH IN TUNISIA alias ANSAR AL-SHARI\'AH N alias ANSAR AL-SHARIA alias SUPPORTERS OF ISLAMIC LAW alias AL-QAYRAWAN MEDIA FOUNDATION ', 'kelompok bersenjata Tunisia yang berasosiasi dengan Al-Qaida; pimpinan Seifallah ben Hassine;', 'Korporasi', 'ELQ-064', NULL, '00/00/0000', NULL, 'Tunisia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (168, 'ROSHAN MONEY EXCHANGE alias ROSHAN SARAFI alias ROSHAN TRADING COMPANY alias RUSHAAN TRADING COMPANY alias ROSHAN SHIRKAT alias MAULAWI AHMED SHAH HAWALA alias MULLAH AHMED SHAH HAWALA alias HAJI AHMAD SHAH HAWALA alias AHMAD SHAH HAWALA', 'ROSHAN MONEY EXCHANGE merupakan tempat untuk mentransfer dana yang digunakan sebagai pendukung operasi militer Taliban dan perdagangan narkotika di Afganistan yang dimiliki oleh Ahmed Shah Noorzai Obaidullah', 'Korporasi', 'ELT-004', NULL, '00/00/0000', 'Afganistan', 'kantor cabang 1: \n- Shop number 1584, Furqan (variant Fahr Khan) Center, Chalhor Mal Road, Quetta, Baluchistan, Pakistan;\n- Flat number 4, Furqan Center, Jamaluddin Afghani Road, Quetta, Baluchistan, Pakistan;\n- Office number 4, 2nd Floor, Muslim Plaza Building, Doctor Banu Road, Quetta, Baluchistan, Pakistan; \n- Cholmon Road, Quetta, Baluchistan, Pakistan; \n- Munsafi Road, Quetta, Baluchistan, Pakistan; \n- Shop number 1, 1st Floor, Kadari Place, Abdul Samad Khan Street (next to Fatima Jen', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (169, 'RAHAT LTD. alias RAHAT TRADING COMPANY alias HAJI MUHAMMAD QASIM SARAFI alias NEW CHAGAI TRADING alias MUSA KALIM HAWALA', '	Rahat Ltd digunakan oleh pimpinan Taliban untuk mentransfer dana yang berasal dari donor eksternal dan perdagangan narkotika untuk membiayai kegiatan Taliban pada 2011 dan 2012. Dimiliki oleh Mohammed Qasim Mir Wali Khudai Rahim, juga terkait Mohammad Naim Barich Khudaidad;', 'Korporasi', 'ELT-003', NULL, '00/00/0000', NULL, '- kantor cabang 1, Room number 33, 5th Floor, Sarafi Market, Kandahar city, Kandahar, Afganistan; \n- kantor cabang 2, Shop number 4, Azizi Bank, Haji Muhammad Isa Market, Wesh, Spin Boldak, Kandahar, Afganistan; \n- kantor cabang 3, Safaar Bazaar, Garmser, Helmand, Afganistan; \n- kantor cabang 4, Lashkar Gah, Helmand, Afganistan; \n- kantor cabang 5, Gereshk, Helmand, Afganistan;\n- kantor cabang 6, Zaranj, Nimroz, Afganistan; \n- kantor cabang 7, Dr Barno Road, Quetta, Pakistan, Haji Mohammed', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (170, 'AL-HARAMAYN FOUNDATION (KENYA)', NULL, 'Korporasi', 'ELQ-016', NULL, '00/00/0000', 'Kenya', '- Nairobi, Kenya;\n- Garissa, Kenya; \n- Dadaab, Kenya;	\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (171, 'HAQQANI NETWORK alias HQN', 'jaringan pejuang Taliban berpusat di sekitar perbatasan antara Khost, Afganistan dan Waziristan Utara, Pakistan;pendiri Jalaluddin Haqqani; bertanggung jawab atas serangan bunuh diri dan pembunuhan yang ditargetkan serta penculikan di Kabul dan provinsi lain di Afganistan. Terkait dengan Al-Qaida, Gerakan Islam Uzbekistan, Tehrik-e Taliban Pakistan, Lashkar I Jhangvi, dan Jaish-IMohammed;', 'Korporasi', 'ELT-002', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (172, 'AL-HARAMAIN: THE NETHERLANDS BRANCH alias STICHTING AL HARAMAIN HUMANITARIAN AID', 'pendiri dan pemimpin Aqeel Abdulaziz Aqeel al-Aqeel;', 'Korporasi', 'ELQ-015', NULL, '00/00/0000', 'Belanda', 'Jan Hanzenstraat 114, 1053SV, Amsterdam, Belanda;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (173, 'HAJI KHAIRULLAH HAJI SATTAR MONEY EXCHANGE alias HAJI KHAIRULLAH-HAJI SATTAR SARAFI alias HAJI KHAIRULLAH AND ABDUL SATTAR AND COMPANY alias HAJI KHAIRULLAH MONEY EXCHANGE alias HAJI KHAIR ULLAH MONEY SERVICE alias HAJI SALAM HAWALA alias HAJI HAKIM HAWALA alias HAJI ALIM HAWALA alias SARAFI-YI HAJI KHAIRULLAH HAJI SATAR HAJI ESMATULLAH', 'Telepon	:+93-202-103386, +93-202-101714, 0202-104748, +93-797-059059, +93-702-222222;E-mail 	:helmand_exchange_msp@yahoo.com\n', 'Korporasi', 'ELT-001', NULL, '00/00/0000', 'Afganistan', 'kantor cabang 1: \n- Chohar Mir Road, Kandahari Bazaar, Quetta City, Baluchistan, Pakistan; \n- Room number 1, Abdul Sattar Plaza, Hafiz Saleem Street, Munsafi Road, Quetta, Baluchistan, Pakistan;\n- Shop number 3, Dr. Bano Road, Quetta, Baluchistan, Pakistan;\nkantor cabang 2: \n- Peshawar, Khyber Paktunkhwa, Pakistan;\nkantor cabang 3: \n- Moishah Chowk Road, Lahore, Punjab, Pakistan; \nkantor cabang 4: \n- Karachi, Sindh, Pakistan;\nkantor cabang 5: \n- Larran Road number 2, Chaman, Baluchist', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (174, 'AL-HARAMAIN FOUNDATION (UNION OF THE COMOROS)', 'na', 'Korporasi', 'ELQ-011', NULL, '00/00/0000', 'Comoros', 'B/P: 1652 Moroni, Union Of The Comoros', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (175, 'AL-HARAMAIN FOUNDATION (PAKISTAN) ', 'na', 'Korporasi', 'ELQ-010', NULL, '00/00/0000', 'Pakistan', 'House #279, Nazimuddin Road, F-10/1, Islamabad, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (176, 'AL-HARAMAIN: ETHIOPIA BRANCH ', 'na', 'Korporasi', 'ELQ-009', NULL, '00/00/0000', 'Etiopia', 'Woreda District 24 Kebele Section 13, Addis Ababa, Ethiopia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (177, 'WAFA HUMANITARIAN ORGANIZATION alias AL WAFA alias AL WAFA ORGANIZATION alias WAFA AL-IGATHA AL-ISLAMIA ', 'Alamat lain di Saudi Arabia, Kuwait, Afghanistan. Markas Besar berada di Kandahar, Afghanistan pada tahun 2001. Wafa adalah komponen Al-Qaeda (QDe.004) pada tahun 2001', 'Korporasi', 'ELQ-063', NULL, '00/00/0000', NULL, '- Jordan House no. 125, street 54, phase ii hayatabad, Peshawar, Pakistan;\n- Saudi Arabia;\n- Kuwait;\n- Afganistan;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (178, 'AL-HARAMAIN: BANGLADESH BRANCH ', NULL, 'Korporasi', 'ELQ-008', NULL, '00/00/0000', 'Banglades', 'House 1, Road 1, S-6, Uttara, Dhaka, Bangladesh;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (179, 'AL-HARAMAIN & AL MASJED AL-AQSA CHARITY FOUNDATION alias AL HARAMAIN AL MASJED AL AQSA alias AL HARAMAYN AL MASJID AL AQSA alias AL-HARAMAYN AND AL MASJID AL AQSA CHARITABLE FOUNDATION alias AL HARAMMEIN AL MASJED AL-AQSA CHARITY FOUNDATION', 'na', 'Korporasi', 'ELQ-007', NULL, '00/00/0000', 'Bosnia Herzegovina', '- Cabang: 2A Hasiba Brankovica, Sarajevo, Bosnia And Herzegovina;\n- 14 Bihacka Street, Sarajevo, Bosnia And Herzegovina;\n- 64 Potur Mahala Street, Travnik, Bosnia And Herzegovina;\n- Zenica, Bosnia And Herzegovina;	\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (180, 'AL-HARAMAIN: ALBANIA BRANCH ', 'na', 'Korporasi', 'ELQ-006', NULL, '00/00/0000', 'Albania', 'Jalan Irfan Tomini, # 58, Tirana, Albania', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (181, 'AL-HARAMAIN: AFGHANISTAN BRANCH ', 'na', 'Korporasi', 'ELQ-005', NULL, '00/00/0000', 'Afganistan', 'Afganistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (182, 'UMMAH TAMEER E-NAU alias UTN', 'Asal negara Pakistan. Tambahan alamat Pakistan. Dirinya termasuk Mahmood Sultan Bashir-Ud-Din (QDi.055), Majeed Abdul Chaudhry (QDi.054) dan Mohammed Tufail (QDi.056). Dilarang di Pakistan', 'Korporasi', 'ELQ-062', NULL, '00/00/0000', 'Pakistan', '- Street 13, Wazir Akbar Khan, Kabul, Afghanistan;\n- Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (183, 'TUNISIAN COMBATANT GROUP alias GROUPE COMBATTANT TUNISIEN alias GROUPE ISLAMISTE COMBATTANT TUNISIEN alias GICT', 'Asal Negara Tunisia. berasosiasi dengan Al-Qaida In The Islamic Maghreb;', 'Korporasi', 'ELQ-061', NULL, '00/00/0000', 'Tunisia', 'Tunisia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (184, 'AL-AKHTAR TRUST INTERNATIONAL alias AL AKHTAR TRUST alias AL-AKHTAR MEDICAL CENTRE alias AKHTARABAD MEDICAL CAMP alias PAKISTAN RELIEF FOUNDATION alias PAKISTANI RELIEF FOUNDATION alias AZMAT-E-PAKISTAN TRUST alias AZMAT PAKISTAN TRUST', 'na', 'Korporasi', 'ELQ-003', NULL, '00/00/0000', 'Pakistan', '- ST-1/A, Gulsahne-Iqbal, Block 2, Karachi, 25300, Pakistan;\n- Gulistan-E-Jauhar, Block 12, Karachi, Pakistan;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (185, 'THE ORGANIZATION OF AL-QAIDA IN THE ISLAMIC MAGHREB alias AQIM alias AL QAIDA AU MAGHREB ISLAMIQUE (AQMI) alias LE GROUPE SALAFISTE POUR LA PRÉDICATION ET LE COMBAT (GSPC) alias SALAFIST GROUP FOR CALL AND COMBAT', 'dipimpin oleh Abdelmalek Droukdel. Alamat tambahan Mali, Mauritania, Maroko, Nigeria, Tunisia. Dipimpin oleh Abdelmalek Droukdel (QDi.232). Zona operasi meliputi Aljazair dan sebagian Mali, Mauritania, Niger, Tunisia dan Maroko.', 'Korporasi', 'ELQ-060', NULL, '00/00/0000', NULL, '- Aljazair;\n- Mali;\n- Mauritania;\n- Maroko;\n- Nigeria;\n- Tunisia;\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (186, 'ABU SAYYAF GROUP alias AL HARAKAT AL ISLAMIYYA', 'berkaitan dengan Jemaah Islamiyah (JI), dipimpin Radulan Sahiron;', 'Korporasi', 'ELQ-001', NULL, '00/00/0000', 'Filipina', 'Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (187, 'AFGHAN SUPPORT COMMITTEE (ASC)  alias LAJNAT UL MASA EIDATUL AFGHANIA alias JAMIAT AYAT-UR-RHAS AL ISLAMIAC alias JAMIAT IHYA UL TURATH AL ISLAMIA alias AHYA UL TURAS', 'berhubungan dengan the Revival of Islamic Heritage Society ', 'Korporasi', 'ELQ-002', NULL, '00/00/0000', NULL, '- G.T. Road (probably Grand Trunk Road), near Pushtoon Garhi Pabbi, Peshawar, Pakistan;\n- Cheprahar Hadda, Mia Omar Sabaqah School, J alabad, Afghanistan;		', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (188, 'MUJAHIDIN INDONESIAN TIMUR (MIT) alias MUJAHIDIN OF EASTERN INDONESIA alias EAST INDONESIA MUJAHIDEEN', '-Grup teroris yang berhubungan dengan Islamic State in Iraq and the Levant (ISIL), Jemaah Islamiyah (JI), dan Jemmah Anshorut Tauhid (JAT);\n-Beroperasi di Sulawesi Indonesia;\n-Dipimpin oleh ABU WARDAH aliasSANTOSO\n', 'Korporasi', 'EDQ-005', NULL, '00/00/0000', 'Indonesia', 'Indonesia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (189, 'TEHRIK-E TALIBAN PAKISTAN (TTP) alias TEHRIK-I-TALIBAN PAKISTAN alias TEHRIK-E-TALIBAN alias PAKISTANI TALIBAN alias TEHREEK-E-TALIBAN', 'Tehrik-e Taliban berbasis di daerah kesukuan di sepanjang perbatasan Afghanistan / Pakistan. Dibentuk pada tahun 2007, pemimpinnya adalah Maulana Fazlullah', 'Korporasi', 'ELQ-059', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (190, 'HILAL AHMAR SOCIETY INDONESIA alias HASI alias YAYASAN HILAL AHMAR alias INDONESIA HILAL AHMAR SOCIETY FOR SYRIA;', 'Menggunakan kedok sebagai yayasan kemanusiaan Jemaah Islamiyah;beroperasi di Lampung, Jakarta, Semarang, Yogyakarta, Solo, Surabaya dan Makassar, Indonesia; telah merekrut, mendanai dan memfasilitasi perjalanan pengikut-pengikutnya (FTF: Foreign Terrorist Fighters) ke Suriah;\n', 'Korporasi', 'EDQ-004', NULL, '00/00/0000', 'Indonesia', 'Indonesia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (191, 'JEMAAH ANSHORUT TAUHID alias JAT ', '-', 'Korporasi', 'EDQ-003', NULL, NULL, 'Indonesia', 'Jalan Semenromo No. 58, Ngruki, Cemani, Grogol, Sukoharjo, Jawa Tengah, Indonesia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (192, 'TAIBAH INTERNATIONAL-BOSNIA OFFICES alias TAIBAH INTERNATIONAL AID AGENCY alias TAIBAH INTERNATIONAL AID ASSOCIATION alias AL TAIBAH, INTL. alias TAIBAH INTERNATIONAL AIDE ASSOCIATION', 'Tambahan alamat di 26 Jalan Tabhanska, Visoko, Boznia Herzegovina; 3 Velika Cilna Ulica, Visoko, Boznia Herzegovina; 26 Jalan Tabhanska, Visoko, Boznia Herzegovina. Pada tahun 2002-2004, kantor Taibah Internasional - Bosnia menggunakan lokasi dari Rumah Budaya di Hadzici, Sarajevo, Bosnia dan Herzegovina. Organisasi tersebut secara resmi terdaftar di Bosnia dan Herzegovina sebagai cabang Asosiasi Bantuan Internasional Taibah di bawah nomor registri 7. Taibah International - kantor Bosnia menghen', 'Korporasi', 'ELQ-058', NULL, '00/00/0000', 'Bosnia Herzegovina', '- 6 Avde Smajlovica Street, Novo Sarajevo, Boznia Herzegovina;\n- 26 Tabhanska Street, Visoko, Boznia Herzegovina;\n- 3 Velika Cilna Ulica, Visoko, Boznia Herzegovina;\n- 26 Tabhanska Street, Visoko, Boznia Herzegovina;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (193, 'RIYADUS-SALIKHIN RECONNAISSANCE AND SABOTAGE BATTALION OF CHECHEN MARTYRS (RSRSBCM) alias RIYADUS-SALIKHIN RECONNAISSANCE AND SABOTAGE BATTALION alias RIYADH-AS-SALIHEEN alias THE SABOTAGE AND MILITARY SURVEILLANCE GROUP OF THE RIYADH AL-SALIHIN MARTYRS alias FIRQAT AL-TAKHRIB WA AL-ISTITLA AL-ASKARIYAH LI SHUHADA RIYADH AL-SALIHIN alias RIYADUS-SALIKHIN RECONNAISSANCE AND SABOTAGE BATTALION OF SHAHIDS (MARTYRS)', 'Terkait dengan Brigade Internasional Islam (IIB) (QDe.099), Resimen Khusus Satuan Khusus (SPIR) (QDe.101) dan Emarat Kavkaz (QDe.131). Review sesuai resolusi Dewan Keamanan 1822 (2008) ditutup pada 17 Mei 2010', 'Korporasi', 'ELQ-057', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (194, 'JEMAAH ISLAMIYAH alias JEMA’AH ISLAMIYAH alias JEMAAH ISLAMIYA alias JEMAAH ISLAMIAH alias JAMAAH ISLAMIYAH alias JAMA’AH ISLAMIYAH', 'Sudah ditetapkan sebagai organisasi terlarang berdasarkan putusan PN Jakarta Selatan, no. 2189/Pid.B/2007/PN.Jkt.Sel,  tanggal   21 April 2008,  menetapkan             Al  Jamaah  Al Islamiyah    selaku   korporasi   yang   salah   satu pengurusnya adalah terdakwa dan dinyatakan sebagai korporasi terlarang dan beberapa tersangkanya sudah tertangkap, antara lain: ABU DUJANA dan ZARKASIH aliasMBAH aliasABU IRSYAD;', 'Korporasi', 'EDQ-001', NULL, '00/00/0000', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (195, 'REVIVAL OF ISLAMIC HERITAGE SOCIETY alias REVIVAL OF ISLAMIC SOCIETY HERITAGE ON THE AFRICAN CONTINENT alias JAMIA IHYA UL TURATH alias RIHS alias JAMIAT IHIA AL-TURATH AL-ISLAMIYA alias AL-FURQAN FOUNDATION WELFARE TRUST alias AL-FURQAN WELFARE FOUNDATION', 'Asal negara Pakistan. Alamat tambahan Afganistan. CATATAN: Hanya kantor-kantor cabang Pakistan dan Afghanistan yang ditunjuk. Terkait dengan Abu Bakr al-Jaziri (QDi.058) dan Komite Bantuan Afghanistan (AS) (QDe.069).', 'Korporasi', 'ELQ-056', NULL, '00/00/0000', 'Pakistan', '- Pakistan\n-Afganistan ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (196, 'RAJAH SOLAIMAN MOVEMENT alias RAJAH SOLAIMAN ISLAMIC MOVEMENT alias RAJAH SOLAIMAN REVOLUTIONARY MOVEMENT', 'asal negara Filipina. Tambahan alamat di Sitio Dueg, Barangay Maasin, San Clemente, Tarlac, Filipina dan number 50, Purdue street, Cubao, Quezon city, Filipina. Didirikan dan dipimpin oleh Hilarion Del Rosario Santos III (QDi.244). Terkait dengan Kelompok Abu Sayyaf (QDe.001), Jemaah Islamiyah (QDe.092) dan Khadafi Abubakar Janjalani (QDi.180).\n\n', 'Korporasi', 'ELQ-055', NULL, '00/00/0000', 'Filipina', '- Barangay Mal-Ong, Anda, Pangasinan, Filipina;\n- Sitio Dueg, Barangay Maasin, San Clemente, Tarlac, Filipina;\n- number 50, jalan Purdue, Cubao, Quezon city, Filipina;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (197, 'LIBYAN ISLAMIC FIGHTING GROUP alias LIFG', 'bergabung dengan Al-Qaida pada bulan November 2007 asal negara Libya', 'Korporasi', 'ELQ-049', NULL, '00/00/0000', 'Libya', 'Libya', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (198, 'RABITA TRUST ', 'Alamat tambahan di Wares Colony, Lahore, Pakistan. Dilarang di Pakistan. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 21 Jun 2010.', 'Korporasi', 'ELQ-054', NULL, '00/00/0000', NULL, '- Kamar 9a, lantai 2, jalan Wahdat, kota Education, Lahore, Pakistan;	\n- Wares Colony, Lahore, Pakistan;\n ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (199, 'LASHKAR I JHANGVI (LJ) ', 'Berbasis di wilayah Punjab Pakistan dan di kota Karachi. Aktif di Pakistan meski dilarang sejak 2010', 'Korporasi', 'ELQ-048', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (200, 'MUHAMMAD JAMAL NETWORK (MJN) alias MUHAMMAD JAMAL GROUP alias JAMAL NETWORK alias  ABU AHMED GROUP alias AL-QAIDA IN EGYPT (AQE)', 'Asal negara: Mesir. Alamat lain berada di Libya dan Mali. Kelompok teroris dan paramiliter yang didirikan oleh Muhammad Jamal al Kashif (QDi.318) pada tahun 2011 dan terkait dengan Al-Qaida (QDe.004), Aiman al-Zawahiri (QDi.006), dan kepemimpinan Al-Qaida di Jazirah Arab (AQAP) (QDe.129) dan Organisasi Al-Qaida di Maghreb Islam (AQIM) (QDe.014). Didanai dan didukung oleh AQAP. Beberapa kamp pelatihan teroris di Mesir dan Libya. Dilaporkan memperoleh senjata, melakukan pelatihan dan membangun kel', 'Korporasi', 'ELQ-053', NULL, '00/00/0000', 'Mesir', '- Mesir\n- Libya\n- Mali ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (201, 'MOUVEMENT POUR L’UNIFICATION ET LE JIHAD EN AFRIQUE DE L’OUEST (MUJAO) ', 'Alamat lain di Aljazair. Terkait dengan Organisasi Al-Qaida di Maghreb Islam (QDe.014) dan Mokhtar Belmokhtar (QDi.136). Aktif di Sahel Wilayah Sahara', 'Korporasi', 'ELQ-052', NULL, '00/00/0000', NULL, '- Mali;\n- Aljazair; ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (202, 'JAISH-I-MOHAMMED alias ARMY OF MOHAMMED', 'Berbasis di Peshawar dan Muzaffarabad, Pakistan Terkait dengan Harakat ul-Mujahidin / HUM (QDe.008), Lashkar-e-Tayyiba (QDe.118), Al-Akhtar Trust International (QDe.121), dan Harakat-ul Jihad Islami (QDe.130). Dilarang di Pakistan', 'Korporasi', 'ELQ-044', NULL, '00/00/0000', NULL, 'Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (203, 'MOROCCAN ISLAMIC COMBATANT GROUP alias GROUPE ISLAMIQUE COMBATTANT MAROCAIN alias GICM', 'Asal Negara: Maroko. Terkait dengan Organisasi Al-Qaida dalam Islam Maghreb ', 'Korporasi', 'ELQ-051', NULL, '00/00/0000', 'Maroko', 'Maroko', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (204, 'ISLAMIC MOVEMENT OF UZBEKISTAN alias IMU', 'Terkait dengan Gerakan Islam Turkistan Timur (QDe.088), Islamic Jihad Group (QDe.119) dan Emarat Kavkaz (QDe.131). Aktif di wilayah perbatasan Afghanistan / Pakistan, Afghanistan utara dan Asia Tengah', 'Korporasi', 'ELQ-043', NULL, '00/00/0000', 'Uzbekistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (205, 'MAKHTAB AL-KHIDAMAT alias MAK alias AL KIFAH', 'Termasuk ke dalam Al-Qaida ', 'Korporasi', 'ELQ-050', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (206, 'ISLAMIC JIHAD GROUP alias JAMA’AT AL-JIHAD alias LIBYAN SOCIETY alias KAZAKH JAMA’AT alias JAMAAT MOJAHEDIN alias JAMIYAT alias JAMIAT AL-JIHAD AL-ISLAMI alias DZHAMAAT MODZHAKHEDOV alias ISLAMIC JIHAD GROUP OF UZBEKISTAN alias AL-DJIHAD AL-ISLAMI alias ZAMAAT MODZHAKHEDOV TSENTRALNOY ASII alias ISLAMIC JIHAD UNION', '- pendiri dan penemu adalah Najmiddin Kamolitdinovich Jalolov dan Suhayl Fatilloevich Buranov;\n- berasosiasi dengan Islamic Movement of Uzbekistan dan Emarat Kavkaz;\n- aktif di daerah perbatasan Afganistan/Pakistan, Asia Tengah, Wilayah Asia Selatan dan beberapa negara Eropa', 'Korporasi', 'ELQ-042', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (207, 'ISLAMIC INTERNATIONAL BRIGADE (IIB) alias THE ISLAMIC PEACEKEEPING BRIGADE alias THE ISLAMIC PEACEKEEPING ARMY alias THE INTERNATIONAL BRIGADE alias ISLAMIC PEACEKEEPING BATTALION alias INTERNATIONAL BATTALION alias ISLAMIC PEACEKEEPING INTERNATIONAL BRIGADE ', 'terhubung dengan Riyadus-Salikhin Reconnaissance and Sabotage Battalion of Chechen Martyrs (RSRSBCM)', 'Korporasi', 'ELQ-041', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (208, 'ISLAMIC ARMY OF ADEN ', 'Na', 'Korporasi', 'ELQ-040', NULL, '00/00/0000', 'Yaman', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (209, 'ABDUL BASIR NOORZAI alias HAJI ABDUL BASIR alias Haji ‘ABD AL-BASIR alias HAJI BASIR NOORZAI alias ABDUL BASEER alias ABDUL BASIR', 'Gelar: Haji. Tanggal lahir 1965, 1960, 1963. Nomor paspor AA3829182. Nomor identifikasi nasional 5420124679187. Pemilik Haji Basir dan Zarjmil Company Hawala (TAe.014), yang mana memberikan layanan keuangan kepada Taliban di wilayah tersebut.', 'Orang', 'ILT-136', 'Baluchistan, Pakistan', '00/00/0000', 'Afganistan', 'Chaman, Baluchistan Province, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (210, 'HARAKAT UL-MUJAHIDIN / HUM alias AL-FARAN alias AL-HADID alias AL-HADITH alias HARAKAT UL-ANSAR  alias HUA alias HARAKAT UL-MUJAHIDEEN', '- berasosiasi dengan Jaish-I-Mohammed, Lashkar I Jhangvi dan Lashkar-E-Tayyiba;\n- aktif di Pakistan dan Afganistan\n', 'Korporasi', 'ELQ-039', NULL, '00/00/0000', NULL, 'Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (211, 'AYRAT NASIMOVICH VAKHITOV alias SALMAN BULGARSKIY', 'Mungkin menggunakan paspor palsu dari warga Suriah atau Irak. Anggota Front Al-Nusrah untuk People of the Levant (ANF) (QDe.137), \"Bulgar Group\", memimpin sekelompok 100 pejuang', 'Orang', 'ILQ-269', 'Naberezhnye Chelny, Republic of Tatarstan, Federasi Rusia', '27/03/1977', 'Rusia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (212, 'HARAKAT-UL JIHAD ISLAMI alias HUJI alias MOVEMENT OF ISLAMIC HOLY WAR alias HARKAT-UL-JIHAD-AL ISLAMI alias HARKAT-AL-JIHAD-UL ISLAMI alias HARKATUL-JEHAD-AL-ISLAMI alias HARAKAT UL JIHAD-E-ISLAMI alias HARAKAT-UL-ANSAR alias HUA', 'Didirikan di Afghanistan pada tahun 1980. Pada tahun 1993, Harakat-ul Jihad Islami bergabung dengan Harakat ul-Mujahidin (QDe.008) untuk membentuk Harakat ul-Ansar. Pada tahun 1997, Harakat-ul Jihad Islami berpisah dari Harakat ul-Ansar dan dilanjutkan dengan menggunakan nama aslinya. Operasi di India, Pakistan dan Indonesia Afganistan. Dilarang di Pakistan', 'Korporasi', 'ELQ-038', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (213, 'GLOBAL RELIEF FOUNDATION (GRF) ', 'Lokasi Asing Lainnya: Afghanistan, Bangladesh, Eritrea, Ethiopia, India, Irak, Tepi Barat dan Gaza, Somalia dan Suriah. Nomor Identifikasi Pengusaha Federal (United Amerika Serikat): 36-3804626', 'Korporasi', 'ELQ-037', NULL, '00/00/0000', 'Amerika Serikat', '- 9935 South 76th Avenue, Unit 1, Bridgeview, Illinois, 60455, Amerika Serikat;\n- P.O. Box 1406, Bridgeview, Illinois, 60455, Amerika Serikat;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (214, 'EMARAT KAVKAZ ', 'aktif di Rusia, Afganistan dan Pakistan', 'Korporasi', 'ELQ-036', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (215, 'EGYPTIAN ISLAMIC JIHAD alias EGYPTIAN AL-JIHAD alias JIHAD GROUP alias NEW JIHAD alias AL-JIHAD alias  EGYPTIAN ISLAMIC MOVEMENT', 'pendiri dan pemimpin Aiman Muhammed Rabi al-Zawahiri', 'Korporasi', 'ELQ-035', NULL, '00/00/0000', 'Mesir', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (216, 'EASTERN TURKISTAN ISLAMIC MOVEMENT (ETIM) alias THE EASTERN TURKISTAN ISLAMIC PARTY alias THE EASTERN TURKISTAN ISLAMIC PARTY OF ALLAH alias ISLAMIC PARTY OF TURKESTAN alias DJAMAAT TURKISTAN', 'aktif di China, Asia Selatan dan Asia Tengah;', 'Korporasi', 'ELQ-034', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (217, 'MOHAMMED ABDEL-HALIM HEMAIDA SALEH alias MUHAMMAD HAMEIDA SALEH alias MUHAMMAD ABD-AL-HALIM HUMAYDAH alias FARIS BALUCHISTAN', 'Tambahan tanggal lahir 22 Sep. 1989. Anggota Al-Qaida (QDe.004). Terlibat dalam merekrut pelaku bom bunuh diri untuk pergi ke Republik Arab Suriah dan merencanakan kegiatan teroris melawan sasaran di Eropa. Ditangkap di Kairo, Mesir pada 2013', 'Orang', 'ILQ-267', 'Aleksandria, Mesir', '22/09/1988', 'Mesir', 'Mesir', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (218, 'ASBAT AL-ANSAR ', 'aktif di Irak Utara, Terkait dengan Al-Qaeda di Irak', 'Korporasi', 'ELQ-031', NULL, '00/00/0000', 'Lebanon', 'Ein el-Hilweh camp, Libanon;	', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (219, 'MOHAMED LAKHAL alias LASED BEN HENI alias AL-AS’AD BEN HANI alias MOHAMED BEN BELGACEM AWANI alias MOHAMED AOUANI alias MOHAMED ABU ABDA alias ABU OBEIDA', 'Tambahan tempat tanggal lahir: 5 Feb. 1969 in Tripoli, Libya, 5 Feb. 1969 in Tripoli, Libya, 5 Feb. 1970 in Tunis, Tunisia. Nomor identifikasi nasional W374031. Profesor Kimia. Dideportasi dari Italia ke Tunisia pada 27 Agustus. 2006. Nama keluarga yang diubah secara hukum dari Aouani ke Lakhal pada tahun 2014. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 22 April 2010.', 'Orang', 'ILQ-266', 'Tunis, Tunisia', '05/02/1970', 'Tunisia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (220, 'ARMED ISLAMIC GROUP alias AL JAMM’AH AL-ISLAMIAH AL-MUSALLAH alias GIA alias GROUPE ISLAMIQUE ARMÉ', 'Na', 'Korporasi', 'ELQ-030', NULL, '00/00/0000', 'Aljazair', 'Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (221, 'MORAD LAABOUDI alias ABU ISMAIL alias ABU ISMAIL AL-MAGHRIBI', 'Nomor paspor UZ6430184. Nomor identifikasi nasional CD595054. Fasilitator untuk perjalanan pejuang teroris asing untuk bergabung dengan Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QDe.115), di Arab Suriah Republik', 'Orang', 'ILQ-265', 'Maroko', '26/02/1993', 'Maroko', 'Turki', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (222, 'ANSAR EDDINE alias ANSAR DINE', 'berdiri pada Desember 2011, didirikan oleh Iyad Ag Ghali, Terkait dengan Organisasi Al-Qaida di Maghreb Islam (QDe.014) dan Mouvement pour l\'Unification et le Jihad en Afrique de l\'Ouest (MUJAO) (QDe.134). Berkaitan dengan Abdelmalek Droukdel (QDi.232).', 'Korporasi', 'ELQ-028', NULL, '00/00/0000', 'Mali', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (223, 'ANSAR AL-ISLAM alias DEVOTEES OF ISLAM alias JUND AL-ISLAM alias SOLDIERS OF ISLAM alias KURDISTAN SUPPORTERS OF ISLAM alias SUPPORTERS OF ISLAM IN KURDISTAN alias FOLLOWERS OF ISLAM IN KURDISTAN alias KURDISH TALIBAN alias SOLDIERS OF GOD alias ANSAR AL-SUNNA ARMY alias JAISH ANSAR AL-SUNNA alias ANSAR AL-SUNNA', 'pendiri Najmuddin Faraj Ahmad, Terkait dengan Al-Qaida di Irak (QDe.115). Terletak dan terutama aktif di Irak utara tapi Mempertahankan kehadiran di Irak barat dan tengah.', 'Korporasi', 'ELQ-027', NULL, '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (224, 'GULMUROD KHALIMOV  ', 'Tambahan tanggal lahir sekitar 1975. Tambahan tempat lahir Dushanbe, Pakar militer, anggota dan perekrut negara Islam Suriah yang bermarkas di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QDe.115). Dicari oleh Pemerintah Tajikistan.', 'Orang', 'ILQ-264', 'Varzob area, Tajikistan atau Dushanbe, Tajikistan', '14/05/1975', 'Tajikistan', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (225, 'HUSAYN JUAYTHINI alias HUSSEIN MOHAMMED HUSSEIN ALJEITHNI alias HUSAYN MUHAMMAD AL-JUAYTHINI alias HUSAYN MUHAMMAD HUSAYN AL-JUAYTHINI alias HUSAYN MUHAMAD HUSAYN AL-JUAYTHINI alias HUSAYN MUHAMMAD HUSAYN JUAYTHINI alias ABU MUATH AL-JUAITNI ', 'Nomor paspor 0363464. Punya hubungan antara Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al-Qaida di Irak (QDe.115), pemimpin Abu Bakr al-Baghdadi, terdaftar sebagai Ibrahim Awwad Ibrahim Ali al-Badri al-Samarrai (QDi.299) , Dan kelompok bersenjata di Gaza. Menggunakan uang untuk membangun ISIL di Gaza', 'Orang', 'ILQ-263', 'Kamp Pengungsi Nuseirat, Palestina', '03/05/1977', 'Palestina', 'Gaza Strip, Palestinian Territories', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (226, 'AL RASHID TRUST alias AL-RASHEED TRUST alias AL RASHEED TRUST alias AL-RASHID TRUST alias AID ORGANIZATION OF THE ULEMA, PAKISTAN alias AL AMIN WELFARE TRUST alias AL AMIN TRUST alias AL AMEEN TRUST alias AL-AMEEN TRUST alias AL MADINA TRUST alias AL-MADINA TRUST', 'Markas besar berada di Pakistan. Operasi di Afghanistan: Herat Jalalabad, Kabul, Kandahar, Mazar Sherif. Juga beroperasi di Kosovo, Chechnya. Terlibat dalam Pembiayaan Al-Qaida dan Taliban. Sampai 21 Oktober 2008, entitas ini juga hadir sebagai \"Organisasi Bantuan Ulama, Pakistan \"(QDe.073), terdaftar pada 24 April 2002 dan diubah pada 25 Juli 2006. Dua entri Al Rashid Trust (QDe.005) dan Organisasi Bantuan Ulama, Pakistan (QDe.073) dikonsolidasikan ke dalam entitas ini 21 Oct. 2008. Didirikan o', 'Korporasi', 'ELQ-026', NULL, '00/00/0000', 'Pakistan', '- Kitas Ghar, Nazimabad 4, Dahgel-Iftah, Karachi, Pakistan, Kitas Ghar, Nazimabad 4, Dahgel-Iftah, Karachi, Pakistan;\n- Jamia Maajid, Sulalman Park, Melgium Pura, Lahore, Pakistan, Jamia Maajid, Sulalman Park, Melgium Pura, Lahore, Pakistan;\n- Dha’rbi-M’unin, Opposite Khyber Bank, Abbottabad Road, Mansehra, Pakistan;\n- Dha’rbi-M’unin ZR Brothers, Katcherry Road, Chowk Yadgaar, Peshawar, Pakistan;\n- Dha’rbi-M’unin, Rm No. 3, Moti Plaza, Near Liaquat Bagh, Muree Road, Rawalpindi, Pakistan;\n- ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (227, 'NUSRET IMAMOVIC alias NUSRET SULEJMAN IMAMOVIC', 'Nomor paspor Boznia Herzegovina 349054, 3490054. \nDOB lainnya: 26 September 1977. \nDipercaya berperang bersama Al-Nusrah Front for the People of the Levant (QDe.137) di Republik Arab Suriah dan dilaporkan menjadi pemimpin dalam kelompok tersebut pada bulan April 2015. ', 'Orang', 'ILQ-262', 'Miljanovci, Kalesija Municipality, Bosnia', '26/09/1971', 'Bosnia Herzegovina', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (228, 'TARKHAN ISMAILOVICH GAZIEV alias RAMZAN ODUEV alias TARKHAN ISAEVICH GAZIEV alias HUSAN ISAEVICH GAZIEV alias UMAR SULIMOV alias WAINAKH alias SEVER alias ABU BILAL alias ABU YASIR alias ABU ASIM alias HUSAN alias AB-BILAL alias ABU-NASER', 'Pemimpin Jamaat Tarkhan, sebuah kelompok teroris yang terbentuk Bagian dari Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QDe.115). Dicari oleh pihak berwenang Federasi Rusia untuk kejahatan teroris yang dilakukan di wilayahnya, termasuk melalui surat perintah penahanan internasional.', 'Orang', 'ILQ-245', 'Itum-Kale, Itum-Kalinskiy District, Republic of Chechnya, Federasi Rusia', '11/11/1965', 'Rusia', 'Suriah atau Iraq ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (229, 'AKHMED RAJAPOVICH CHATAEV alias AKHMAD SHISHANI alias DAVID MAYER alias ELMIR SENE alias ODNORUKIY', 'Salah satu pemimpin Islamic State in Iraq and the Levant (ISIL), Paspor nasional Federasi Rusia 9600133195, Terdaftar Sebagai Al-Qaeda di Irak (QD.115), yang memimpin langsung 130 militan Dicurigai oleh pihak berwenang Federasi Rusia atas kejahatan teroris dilakukan di wilayahnya', 'Orang', 'ILQ-244', 'Vedeno Village, Vedenskiy District, Republic of Chechnya, Federasi Rusia', '14/07/1980', 'Rusia', 'Suriah atau Iraq', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (230, 'ASLAN AVGAZAROVICH BYUTUKAEV alias AMIR KHAZMAT alias ABUBAKAR', '	Dicurigai oleh pihak berwenang Federasi Rusia atas kejahatan teroris. Memerintahkan sebuah batalyon untuk bunuh diri dari Riyadus-Salikhin Reconnaissance dan Sabotage Battalion of Chechen Martyrs (RSRSBCM) (QDe.100).\n\n', 'Orang', 'ILQ-260', 'Kitaevka, Novoselitskiy District, Stavropol Region, Federasi Rusia', '22/10/1974', 'Rusia', 'Akharkho Street, 11, Katyr-Yurt, Achkhoy-Martanovskiy District, Republic of Chechnya, Federasi Rusia.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (231, 'ISLAM SEIT-UMAROVICH ATABIEV alias ABU JIHAD ', 'Nomor paspor perjalanan luar negeri Rusia 620169661, Paspor nasional 9103314932, Emir militan berbahasa Rusia di Negara Islam Irak dan Irak Levant (ISIL), terdaftar sebagai Al-Qaida di Irak (QDe.115). Mengontrol kota-kota Arab Suriah Al Dana dan Idlib Sebagai kepala ISIL. Dicurigai oleh pihak berwenang Federasi Rusia atas kejahatan teroris yang dilakukan di wilayahnya', 'Orang', 'ILQ-243', 'Ust-Dzheguta, Republic of Karachayevo- Cherkessia, Federasi Rusia', '29/09/1983', 'Rusia', '- Moscovskiy Microrayon 6, App. 96, Ust- Dzheguta, Republic of Karachayevo-Cherkessia, Russia\n- Suriah\n- Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (232, 'SALIM BENGHALEM ', 'Ekstremis dan ekstremis kekerasan berbasis di Suriah Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QDe.115). Tergantung pada sebuah Arrest Arred Eropa.', 'Orang', 'ILQ-259', 'Bourg la Reine, Perancis', '06/07/1980', 'Perancis', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (233, 'MAGHOMED MAGHOMEDZAKIROVICH ABDURAKHMANOV alias ABU BANAT alias ABU AL BANAT', 'Pemimpin organisasi Jamaat Abu Banat terrorist, Nomor Paspor 8200203535, Pemimpin teroris Jamaat Abu Banat Kelompok, yang merupakan bagian dari Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al-Qaida di Irak (QDe.115), dan Beroperasi di pinggiran kota Republik Arab Suriah Aleppo dan Idlib, memeras dana dan pelaksanaannya Penculikan dan eksekusi publik terhadap warga Suriah setempat., ', 'Orang', 'ILQ-242', 'Khadzhalmahi Village, Levashinskiy District, Republic of Dagestan, Federasi Russia', '24/11/1974', 'Rusia', 'Turki atau Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (234, 'NAZIRULLAH HANAFI WALIULLAH alias NAZIRULLAH AANAFI WALIULLAH', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan  tanggal lahir 1962', 'Orang', 'ILT-124', 'Spin Boldak, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (235, 'ASEEL MUTHANA ', 'Nomor Paspor 516088643, Pejuang teroris asing dengan Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QDe.115), di Suriah Republik Arab Dicari oleh pihak berwenang Inggris Raya.', 'Orang', 'ILQ-241', 'Cardiff, Inggris', '22/11/1996', 'Inggris', 'a) Suriah (sejak Februari 2014) \nb) Inggris (alamat sebelumnya)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (236, 'ABDUL JALIL HAQQANI WALI MOHAMMAD alias ABDUL JALIL AKHUND alias  AKHTER MOHMAD SON OF NOOR MOHMAD alias HAJI GULAB GUL alias ABDUL JALIL HAQQANI alias NAZAR JAN', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan; Dipercaya berada di wilayah perbatasan Afghanistan / Pakistan. Anggota Dewan Tertinggi Taliban pada Mei 2007. Anggota Komisi Keuangan Dewan Taliban. Bertanggung jawab atas logistik bagi Taliban dan juga aktif sebagai pebisnis dalam kapasitas pribadinya seperti pada pertengahan 2013. Milik suku Alizai. Saudara Atiqullah Wali Mohammad (TAi.070). Review sesuai resolusi Dewan Keamanan 1822 (2008) ditutup pada 21 Jul. 2010.tanggal lahir 1963', 'Orang', 'ILT-123', 'Khwaja Malik, Arghandab, Kandahar, Afganistan atau Kandahar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (237, 'MOUNIR BEN DHAOU BEN BRAHIM BEN HELAL alias MOUNIR HELEL alias MOUNIR HILEL alias ABU RAHMAH alias ABU MARYAM AL-TUNISI', 'Fasilitator tempur teroris asing berpengalaman dalam membangun dan mengamankan rute perjalanan. Sangat terlibat dalam penyediaan material Dukungan kepada Organisasi Al-Qaida di Maghreb Islam (QDe.014) di Afrika Utara. Membantu perjalanan pejuang teroris asing di seluruh Afrika Utara dan ke Republik Arab Suriah untuk bergabung dengan Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QDe.115)', 'Orang', 'ILQ-258', 'Ben Guerdane, Tunisia', '10/05/1983', 'Tunisia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (238, 'WALIJAN ', 'Anggota Taliban Gerd-e-Jangal Shura, Kepala Tahanan Taliban dan Komite Pengungsi, Gubernur Provinsi Jawzjan di bawah rezim Taliban tanggal lahir 1968', 'Orang', 'ILT-122', 'Quetta, Pakistan atau  Nimroz, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (239, 'QARI SAIFULLAH TOKHI alias QARI SAIFULLAH alias QARI SAIFULLAH AL TOKHI alias SAIFULLAH TOKHI alias QARI SAHAB', 'Dipercaya berada di wilayah perbatasan Afghanistan / Pakistan. Wakil Demonstrasi Bayangan Taliban dan komandan operasional di Provinsi Zabul, Afghanistan, bertanggung jawab atas peletakan alat peledak improvisasi dan pengorganisasian serangan bunuh diri. tanggal lahir 1964', 'Orang', 'ILT-121', 'Daraz, Jaldak wa Tarnak, Zabul, Afganistan', '00/00/0000', 'Afganistan', 'Chalo Bawari area, Quetta, Baluchistan, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (240, 'ABD AL-BASET AZZOUZ alias ABDELBASSED AZOUZ alias ABDUL BASET AZOUZ alias AA (inisial)', 'Nomor paspor Libya 223611, British C00146605. Kunci operasi di Al-Qaida (QDe.004). Di bawah arahan Aiman al-Zawahiri (QDi.006), merekrut 200 militan di bagian timur Libya', 'Orang', 'ILQ-257', 'Doma, Libya', '07/02/1966', 'Libya', 'Libya', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (241, 'ABDUL RAQIB TAKHARI ', 'Anggota Taliban Dewan Agung yang bertanggung jawab untuk wilayah Takhar dan Badakhshan 2009. Dikonfirmasi tewas pada tanggal 17 Februari   di Peshawar, Pakistan, dan dimakamkan di Takhar, Afganistan, Menteri Pemulangan di bawah rezim Taliban tanggal lahir 1968', 'Orang', 'ILT-120', 'Zardalu Darra, Kalafgan, Takhar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (242, 'TARAD MOHAMMAD ALJARBA  alias TARAD ALJARBA alias ABU-MUHAMMAD AL-SHIMALI', 'Pemimpin perbatasan negara ISIL, Nomor Paspor E704088, Berbatasan Emir Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al-Qaida di Irak (QDe.115) pada April 2015, dan ISIL\'s Pemimpin operasi di luar Republik Arab Suriah dan Irak pada pertengahan 2014. Memfasilitasi perjalanan dari Turki Ke Republik Arab Suriah calon pejuang ISIL dari Australia, Eropa, dan Timur Tengah. Dikelola ISIL\'s Wisma di Azaz, Republik Arab Suriah pada tahun 2014.', 'Orang', 'ILQ-239', 'Irak', '20/11/1979', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (243, 'HAMDULLAH SUNANI alias SANANI', 'Dikabarkan meninggal Tahun 2001, Kepala Dar-ul-Efta (Departemen Fatwa) Mahkamah Agung di bawah rezim Taliban tgl lahir 1923', 'Orang', 'ILT-119', 'Dai Chopan, Zabul, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (244, 'RUSTAM MAGOMEDOVICH ASELDEROV alias ABU MUHAMMAD alias ABU MUHAMMAD AL-KADARI alias MUHAMADMUHTAR', 'Nomor paspor Rusia 555627. Dicurigai oleh pihak berwenang Federasi Rusia atas kejahatan teroris. Memimpin sekelompok lebih dari 160 pejuang teroris, yang beroperasi di Republics of Dagestan, Chechnya dan Ingushetia, Federasi Rusia.', 'Orang', 'ILQ-256', 'Iki-Burul Village, Republic of Kalmykia, Federasi  Rusia', '09/03/1981', 'Rusia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (245, 'ABDUL GHAFAR SHINWARI  ', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan', 'Orang', 'ILT-118', 'Nangarhar, Afganistan', '29/03/1965', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (246, 'HAMIDULLAH AKHUND SHER MOHAMMAD alias JANAT GUL alias HAMIDULLAH AKHUND ', 'bagian dari suku ghilzai, kepala Ariana afghan airlines dibawah rezim taliban', 'Orang', 'ILT-117', 'Sarpolad, Washer, Helmand, Afganistan atau Arghandab, Kandahar, Afghanistan', '00/00/0000', 'Afganistan', 'Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (247, 'AMRU AL-ABSI alias AMR AL ABSI alias ABU AL ATHIR AMR AL ABSI alias ABU AL-ATHIR alias ABU AL-ASIR alias ABU ASIR alias ABU AMR AL SHAMI alias ABU AL-ATHIR AL-SHAMI alias ABU-UMAR AL-ABSI', 'Anggota dewan Syura Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (AQI) (QDe.115) dan di Bertanggung jawab atas lengan media ISIL. Pemimpin provinsi ISIL untuk Homs, Republik Arab Suriah pada pertengahan 2014. Dijuluki sebagai \"Penculik\" sang ISIL\" Tahun Lahir 1979', 'Orang', 'ILQ-237', 'Arab Saudi', '00/00/0000', NULL, 'Homs, Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (248, 'FAYSAL AHMAD BIN ALI AL-ZAHRANI alias FAISAL AHMED ALI ALZAHRANI alias ABU SARAH AL-SAUDI alias ABU SARA ZAHRANI', 'Nomor paspor Saudi Arabia K142736, G579315. Adalah pejabat divisi minyak dan gas terkemuka di Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al-Qaida di Irak (QDe.115), untuk Gubernur Al Barakah, Republik Arab Suriah, pada Mei 2015.', 'Orang', 'ILQ-255', '-', '19/01/1986', 'Arab Saudi', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (249, 'SHAMSUDDIN alias PAHLAWAN SHAMSUDIN', 'Diyakini berada di wilayah perbatasan Pakistan dan Iran, Gubernur Provinsi Wardak (Maidan) di bawah rezim Taliban tahun lahir 1968', 'Orang', 'ILT-116', 'Keshim, Badakhshan, Afganistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (250, 'SALLY-ANNE FRANCES JONES alias UMM HUSSAIN AL-BRITANI alias SAKINAH HUSSAIN', 'Perekrut anggota Islamic State in Iraq and the Levant, Nomor Paspor 519408086, Terdaftar sebagai Al-Qaeda di Irak (QDe.115), di Republik Arab Suriah. Nama suami Junaid Hussain', 'Orang', 'ILQ-236', 'Greenwich, London, Inggris', '17/11/1968', 'Inggris', '- Suriah (per 2013) \n- Sebelumnya di Inggris s.d. 2013', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (251, 'HASAN AL-SALAHAYN SALIH AL-SHA’ARI alias HUSAYN AL-SALIHIN SALIH AL-SHA’IRI alias ABU HABIB AL-LIBI alias HASAN ABU HABIB ', 'Tambahan tanggal lahir pada 1975. Nomor paspor Libya 542858. Nomor identifikasi nasional 55252. Fasilitator untuk Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al-Qaeda di Irak (QDe.115).', 'Orang', 'ILQ-254', 'Derna, Libya', '00/00/0000', 'Libya', 'Libya', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (252, 'AKHTAR MOHAMMAD MANSOUR SHAH MOHAMMED alias AKHTAR MOHAMMAD MANSOUR KHAN MUHAMMAD alias AKHTAR MUHAMMAD MANSOOR alias AKHTAR MOHAMMAD MANSOOR', '	Terlibat dalam perdagangan narkoba pada 2011, terutama melalui Gerd-e- Jangal, Afganistan. Aktif di provinsi Khost, Paktia dan Paktika, Afganistan pada Mei 2007. Bertanggung jawab atas empat provinsi selatan Afganistan. Setelah penangkapan Mullah Baradar pada bulan Februari 2010 ia sementara menggantikan menjadi Dewan Tertinggi Taliban. Diyakini berada di wilayah perbatasan Afganistan/Pakistan tanggal lahir 1960;', 'Orang', 'ILT-115', 'Band-e-Timur, Maiwand, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (253, 'ALI MUSA AL-SHAWAKH alias \'ALI MUSA AL-SHAWAGH alias ALI AL-HAMOUD AL-SHAWAKH alias IBRAHIM AL-SHAWWAKH alias MUHAMMAD ‘ALI AL-SHAWAKH alias ABU LUQMAN alias ABU HAMMUD alias ABDULLAH SHUWAR AL-AUJAYD alias ALI AWAS alias \'ALI DERWISH alias \'ALI AL-HAMUD alias ABU LUQMAN AL-SAHL alias ABU LUQMAN AL-SURI alias ABU AYYUB', 'Tambahan tanggal lahir 1973. Salah satu pemimpin Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al-Qaida di Irak (QDe.115). Pada Juni 2015, al-Shawakh adalah gubernur ISIL Aleppo', 'Orang', 'ILQ-253', 'Sahl Village, Raqqa, Suriah', '00/00/0000', 'Suriah', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (254, 'SAID AHMED SHAHIDKHEL ', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan; tahun lahir 1975', 'Orang', 'ILT-114', 'Spandeh (Espandi ‘Olya), Andar, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (255, 'ABDUL WAHED SHAFIQ ', 'DOB: 1968', 'Orang', 'ILT-113', 'Nangarhar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (256, 'ABDUL WALI SEDDIQI ', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan, Sekretaris Ketiga, Konsulat Jenderal Taliban, Peshawar, Pakistan no passport D 000769 tanggal lahir 1974\n\n', 'Orang', 'ILT-112', 'Zilzilay, Andar, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (257, 'SADUDDIN SAYYED alias SADUDIN SAYED alias SADRUDDIN', 'Penasihat Dewan Tertinggi Taliban 2013. Diyakini berada di wilayah perbatasan Afganistan/Pakistan, Wakil Menteri Urusan Sosial dan Kerja di bawah rezim Taliban, Walikota Kabul City di bawah rezim Taliban tanggal lahir  1968', 'Orang', 'ILT-111', 'a. Distrik Chaman, Pakistan   b. Distrik Spin Boldak, Kandahar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (258, 'ABDULLAH AHMED ABDULLAH EL ALFI alias ABU MARIAM alias AL-MASRI, ABU MOHAMED alias SALEH', 'Afganistan', 'Orang', 'ILQ-109', 'Gharbia, Mesir', '06/06/1963', 'Mesir', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (259, 'NOOR MOHAMMAD SAQIB ', 'Anggota Taliban Dewan Agung dan Ketua Komite agama Taliban; Ketua Mahkamah Agung di bawah rezim Taliban lahir tahun 1958', 'Orang', 'ILT-110', 'a. Bagrami, Kabul , Afganistan.   b. Tarakhel, Distrik Deh Sabz, Kabul, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (260, 'ABDULHAI SALEK ', 'Dikabarkan meninggal di Afganistan pada tahun 1999, Gubernur Provinsi Uruzgan di bawah rezim Taliban tanggal lahir : 1965', 'Orang', 'ILT-109', 'Awlyatak, Gardan Masjid Area, Chaki Wardak, Maidan Wardak, Afganistan,', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (261, 'HABIBULLAH RESHAD ', 'Dikabarkan meninggal di Afganistan pada tahun 1999, Gubernur Provinsi Uruzgan di bawah rezim Taliban tanggal lahir : 1965', 'Orang', 'ILT-108', 'Waghaz, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (262, 'NAJMUDDIN FARAJ AHMAD alias MULLAH KREKAR alias FATEH NAJM EDDINE FARRAJ alias FARAJ AHMAD NAJMUDDIN', 'Nomor kartu ration 075258. Tambahan tempat tanggal lahir: 17 Jun 1963. Nama ibu: Masouma Abd al-Rahman. Foto tersedia untuk dimasukkan dalam Pemberitahuan Khusus Dewan Keamanan INTERPOL-PBB. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 20 Mei 2010.', 'Orang', 'ILQ-250', 'Olaqloo Sharbajer, Iraq', '07/07/1956', 'Irak', 'Heimdalsgate 36-V, Oslo, 0578, Norway', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (263, 'LIONEL DUMONT alias JACQUES BROUGERE alias ABU HAMZA alias DI KARLO ANTONIO alias MERLIN OLIVER CHRISTIAN RENE alias ARFAUNI IMAD BEN YOUSSET HAMZA alias IMAM BEN YUSSUF ARFAJ alias ABOU HAMZA alias ARFAUNI IMAD alias BILAL alias HAMZA alias KOUMKAL alias KUMKAL alias MERLIN alias TINET alias BRUGERE alias DIMON', 'Dalam tahanan di Prancis pada Mei 2004. Dijatuhi hukuman 25 tahun penjara Di Prancis pada tahun 2007. Hukumannya akan berakhir pada 13 Juli 2023 dan penahanan tanpa syarat berakhir pada 13 Agustus 2020', 'Orang', 'ILQ-107', 'Roubaix, Prancis', '21/01/1971', 'Perancis', 'Prancis', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (264, 'RAHMATULLAH SHAH NAWAZ  alias QARI RAHMAT alias KARI RAHMAT', 'Seorang komandan Taliban sejak Februari 2010. Mengumpulkan pajak dan suap atas nama Taliban. Menyediakan koperasi Taliban di Provinsi Nangarhar, Afganistan, dengan informasi, bimbingan, perumahan dan senjata dan telah membuat alat peledak IED dan melakukan serangan terhadap Pasukan Bantuan Keamanan Internasional (ISAF) dan pasukan Afganistan; alias 1981', 'Orang', 'ILT-107', 'Shadal Bazaar, Achin, Nangarhar, Afganistan', '00/00/0000', 'Afganistan', '- Kamkai, Achin, Nangarhar, Afghanistan\n- Surkhel, Achin, Nangarhar, Afghanistan\n- Batan, Achin, Nangarhar, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (265, 'ABDELMALEK DROUKDEL alias ABOU MOSSAAB ABDELOUADOUD', 'Kepala Organisasi Al-Qaida di Maghreb Islam (QDe.014). Dihukum absen dalam penjara seumur hidup di Indonesia Aljazair pada tanggal 21 Maret 2007. Nama ayah adalah Rabah Droukdel. Nama Ibu Z\'hour Zdigha', 'Orang', 'ILQ-106', 'Meftah, Wilaya of Blida  Alzajair', '20/04/1970', 'Aljazair', 'Alzajair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (266, 'MOHAMMAD HASAN RAHMANI alias GUD MULLAH MOHAMMAD HASSAN', ' Anggota Taliban Dewan Tertinggi 2013, bertindak sebagai wakil dari Mullah Mohammed Omar Maret 2010. Diyakini berada di wilayah perbatasan Afganistan/Pakistan;gubernur provinsi Kandahar tanggal lahir 1963', 'Orang', 'ILT-106', 'Deh Rawud, Uruzgan, Afganistan atau  Chora, Uruzgan, Afganistan atau Charchino, Uruzgan, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (267, 'YAR MOHAMMAD RAHIMI ', 'Anggota Taliban Dewan Tertinggi 2009. Diyakini di wilayah perbatasan Afganistan/Pakistan, menteri komunikasi dibawah rezim Taliban tahun lahir 1953 ', 'Orang', 'ILT-105', 'Taluqan, Panjwai, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (268, 'YAHIA DJOUADI alias YAHIA ABOU AMMAR alias ABOU ALA', 'Milik pimpinan Organisasi Al-Qaida di Maghreb Islam (terdaftar di bawah Nomor referensi tetap QDe.014). Terletak di Northern Mali mulai Juni 2008. Nama ibu  Zohra Fares. Nama ayah Mohamed', 'Orang', 'ILQ-105', 'M\'Hamid, Wilaya, Sidi Bel Abbes, Alzajair', '01/01/1967', 'Aljazair', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (269, 'FAZL RABI alias FAZL RABBI alias FAZAL RABI alias FAISAL RABBI ', 'Mewakili dan pemberi dukungan keuangan dan logistik untuk Jaringan Haqqani, yang berbasis di wilayah perbatasan Afganistan/Pakistan. Anggota Dewan Keuangan Taliban. Telah melakukan perjalanan ke luar negeri untuk menggalang dana atas nama Sirajuddin Haqqani Jallaloudine, Jalaluddin Haqqani, Jaringan Haqqani dan Taliban. Diyakini berada di wilayah perbatasan Afganistan/Pakistan, Pejabat senior di Provinsi Konar selama rezim Taliban tahun lahir: 1972', 'Orang', 'ILT-104', 'Kohe Safi, Parwan, Afganistan atau Kapisa, Afghanistan atau Nangarhar, Afghanistan  ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (270, 'KAMEL DJERMANE alias BILAL alias ADEL alias FODHIL alias ABOU ABDELJALIL', 'Dalam penahanan di Aljazair pada April 2010. Surat perintah penahanan yang dikeluarkan oleh pihak berwenang Jerman pada 9 Oktober 2003 Untuk terlibat dalam penculikan. Mantan anggota Katib Tarek Ibn Ziad dari Organisasi Al-Qaida di Maghreb Islam (QDe.014).', 'Orang', 'ILQ-104', 'Oum El Bouaghi, Alzajair', '12/10/1965', 'Aljazair', 'Alzajair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (271, 'ABDUL SALAM HANAFI ALI MARDAN QUL alias ABDUSSALAM HANIFI alias HANAFI SAHEB\n\n ', 'Anggota Taliban yang bertanggungjawab di wilayah Jawzjan utara Afganistan 2008. Terlibat dalam perdagangan narkoba. Diyakini berada di wilayah perbatasan Afganistan/Pakistan, wakil mentri pendidikan dibawah rezim taliban tanggal lahir 1968', 'Orang', 'ILT-103', 'Darzab , Faryab, Afganistan atau Qush Tepa District, Jawzjan Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (272, 'AMINULLAH AMIN QUDDUS alias MUHAMMAD YUSUF alias AMINULLAH AMIN', 'Anggota dewan Taliban, Gubernur Provinsi Saripul di bawah rezim Taliban tanggal lahir 1973', 'Orang', 'ILT-102', 'Loy Karez, Spin Boldak, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (273, 'PIO ABOGNE DE VERA alias ISMAEL DE VERA alias KHALID alias ISMAEL alias ISMAIL alias MANEX alias TITO ART alias DAVE alias LEO', 'Anggota Gerakan Rajah Solaiman (QDe.128), Kelompok Abu Sayyaf (QDe.001) dan Jemaah Islamiyah (QDe.092). Nama ayah Honorio Devera. Nama ibu Fausta Abogne. Dalam penahanan di Filipina per Mei 2011', 'Orang', 'ILQ-103', 'Bagac, Bagamanok, Catanduanes, Filipina', '19/12/1969', 'Filipina', 'Concepcion, Zaragosa, Nueva Ecija, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (274, 'TOREK AGHA alias SAYED MOHAMMED HASHAN alias TORAK AGHA alias TORIQ AGHA alias TORIQ AGHA SAYED', 'Tambahan tanggal lahir: 1960, 1962, 1965. Tambahan tempat lahir: Pishin, Pakistan. Nomor identifikasi nasional: 5430312277059. Komandan untuk dewan militer Taliban terlibat dalam penggalangan dana dari donor berbasis Teluk. Foto tersedia untuk dimasukkan dalam Pemberitahuan Khusus Dewan Keamanan INTERPOL-PBB.', 'Orang', 'ILT-135', 'Kandahar, Afganistan atau Pishin, Baluchistan, Pakistan', '00/00/0000', NULL, 'Pashtunabad, Quetta, Baluchistan, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (275, 'NOORUDDIN TURABI MUHAMMAD QASIM alias NOOR UD DIN TURABI alias HAJI KARIM', 'Wakil Mullah Mohammed Omar tanggal lahir 1963', 'Orang', 'ILT-101', 'Spin Boldak, Kandahar, Afganistan atau  Chora, Uruzgan, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (276, 'SHER MOHAMMAD ABBAS STANEKZAI PADSHAH KHAN ', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan; Wakil Menteri Kesehatan Masyarakat di bawah rezim Taliban, Wakil Menteri Luar Negeri di bawah rezim Taliban tanggal lahir:1963', 'Orang', 'ILT-100', 'Qala-e-Abbas, Shah Mazar area, Baraki Barak, Logar, Afganistan', '00/00/0000', 'Albania', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (277, 'SHAMIL MAGOMEDOVICH ISMAILOV alias SHAMIL MAGOMEDOVICH ALIEV alias ABU HANIFA', 'Nomor paspor Rusia 514448632. Nomor identifikasi nasional 1200075689. Alamat tamabah di Irak. Pemimpin Jamaat Abu Hanifah, sebuah kelompok teroris yang merupakan bagian dari Front Al-Nusrah untuk Rakyat Levant (QDe.137)\n\n', 'Orang', 'ILQ-247', 'Astrakhan,  Federasi Rusia', '29/10/1980', 'Rusia', 'Suriah atau Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (278, 'MOHAMMAD IBRAHIM OMARI alias IBRAHIM HAQQANI', 'DOB: 1958. Kakak Jalaluddin Haqqani. Diyakini berada di wilayah perbatasan Afganistan/Pakistan', 'Orang', 'ILT-099', 'Garda Saray, Waza Zadran, Paktia, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (279, 'FELICIANO SEMBORIO DELOS REYES JR alias ABUBAKAR ABDILLAH alias ABDUL ABDILLAH', 'Anggota Gerakan Rajah Solaiman (QDe.128). Nama ayah Feliciano Delos Reyes Nama Sr. adalah Aurea Semborio. Dalam penahanan di Filipina per Mei 2011', 'Orang', 'ILQ-101', 'Arco, Lamitan, Basilan, Filipina', '04/11/1963', 'Filipina', 'Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (280, 'ABDUL JABBAR OMARI alias MULLAH JABBAR alias MUAWIN JABBAR', 'Gubernur Propinsi Baghlan di bawah rezim Taliban Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 1 Jun 2010 tanggal lahir 1958', 'Orang', 'ILT-098', 'Zabul, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (281, 'ZAURBEK SALIMOVICH GUCHAEV alias BACH alias FACKIH alias VOSTOCHNIY alias MUSLIM alias AZIZ alias ABDUL AZIZ', 'Tambahan alamat Iraq. Seperti pada Agustus 2015, salah satu pemimpin Tentara Imigran dan Pendukung (QDe.148). Dicurigai oleh pihak berwenang Federasi Rusia atas kejahatan teroris yang dilakukan di wilayahnya. Foto tersedia untuk dimasukkan dalam Pemberitahuan Khusus Dewan Keamanan INTERPOL-PBB', 'Orang', 'ILQ-246', 'Chegem-1 Village; Republik Kabardino-Balkaria, Federasi Rusia', '07/09/1975', 'Rusia', 'Suriah atau Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (282, 'REDENDO CAIN DELLOSA alias ABU ILONGGO alias BRANDON BERUSA alias ABU MUADZ alias ARNULFO ALVARADO alias HABIL AHMAD DELLOSA alias DODONG alias TROY alias UTHMAN', 'Anggota Gerakan Rajah Solaiman (QDe.128) dan terkait dengan Abu Sayyaf Grup (QDe.001). Nama ayah Fernando Rafael Dellosa. Nama Ibu adalah Editha Parado Cain. Dalam tahanan Di Filipina per Januari 2010', 'Orang', 'ILQ-100', 'Punta, Santa Ana, Manila, Filipina', '15/05/1972', 'Filipina', '3111, Ma. Bautista, Punta, Santa Ana, Manila, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (283, 'AHMED SHAH NOORZAI OBAIDULLAH alias MULLAH AHMED SHAH NOORZAI alias HAJI AHMAD SHAH alias HAJI MULLAH AHMAD SHAH alias MAULAWI AHMED SHAH alias MULLAH MOHAMMED SHAH', 'pemilik dan pengelola Roshan Money Exchange. Memberikan layanan keuangan kepada Gul Agha Ishaqzai dan Taliban lainnya di Provinsi Helmand. Judul alternatifnya adalah Maulvi, WN:NA', 'Orang', 'ILT-097', 'Quetta, Pakistan', '01/01/1985', NULL, 'Quetta, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (284, 'AHMED DEGHDEGH ABD EL ILLAH alias ABD EL ILLAH alias ABDELLILLAH DIT ABDELLAH AHMED DIT SAID', 'Milik kepemimpinan dan merupakan kepala keuangan Organisasi Al Qaida di Indonesia Maghreb Islam (QDe.014). Nama ibu adalah Zakia Chebira. Nama ayah adalah Lakhdar', 'Orang', 'ILQ-099', 'Anser, Wilaya Of Jijel, Aljazair', '17/01/1967', 'Aljazair', 'Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (285, 'ABDUL MANAN NYAZI alias ABDUL MANAN NAYAZI alias ABDUL MANAN NIAZI alias BARYALY alias BARYALAI\n\n', 'Anggota Taliban yang bertanggung jawab di wilayah Herat, Farah dan Nimroz pada pertengahan 2013. Anggota Dewan Tertinggi Taliban dan Quetta Shura. Diyakini berada di wilayah perbatasan Afganistan/Pakistan, Gubernur Provinsi Kabul di bawah rezim Taliban, Gubernur Provinsi Balk di bawah rezim Taliban, tanggal lahir : 1968', 'Orang', 'ILT-096', 'Pashtoon Zarghoon, Herat, Afganistan atau Desa Sardar, Kohsan, Herat, Afghanistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (286, 'MAXAMED CABDULLAAH CIISE alias MAXAMED CABDULLAAHI CIISE alias MAXAMMED CABDULLAAHI alias CABDULLAH MAYAMED CIISE', 'Hadir di Somalia Per April 2009 menyusul transfer dari Inggris.', 'Orang', 'ILQ-098', 'Kismaayo, Somalia', '08/10/1974', 'Somalia', 'Somalia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (287, 'NURULLAH NURI alias NORULLAH NOORI', 'Anggota suku Tokhi. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 29 Jul 2010, Milik Tokhi. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 29 Juli 2010 \n\n', 'Orang', 'ILT-095', 'Shahjoe, Zabul Afganistan', '01/01/1967', 'Afganistan', 'Qatar', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (288, 'ABDELRAHMAN MOUHAMAD ZAFIR AL DABIDI AL JAHANI alias ABD AL-RAHMAN MUHAMMAD ZAFIR AL-DUBAYSI AL-JUHNI alias ABD AL-RAHMAN MUHAMMAD ZAFIR AL-DUBAYSI AL-JAHNI alias ABD AL-RAHMAN MUHAMMAD ZAFIR AL-DUBAYSI AL-JAHANI alias ABD AL-RAHMAN MUHAMMAD ZAFIR AL-DUBAYSI AL-JUHANI alias ABDULRHMAN MOHAMMED D. ALJAHANI alias ABU AL-WAFA’ alias ABU ANAS alias ABD AL-RAHMAN MUHAMMAD ZAFIR AL-DABISI AL-JAHANI alias ABU WAFA AL-SAUDI alias ABU AL-WAFA alias ABD AL-RAHMAN MUHAMMAD THAFIR AL-JAHNI alias ABD AL-RAHMAN MUHAMMAD AL-JUHANI alias ABDELRAHMAN MOUHAMAD ZAFIR AL DABISSI JUHAN alias ABDELRAHMAN MOUHAMAD ZAFIR AL DABISSI JUHANI alias ABOU WAFA AL SAOUDI', 'Tambahan tanggal lahir: 1977. nomor paspor Arab Saudi F 508591. Nomor Identifikasi nasional: 1027508157. Seorang anggota dan komandan regional Jabhat al-Nusra, tercatat sebagai Front Al-Nusrah untuk Rakyat Levant (QDe.137) dan seorang fasilitator rekrutan asing untuk kelompok tersebut', 'Orang', 'ILQ-199', 'Kharj, Arab Saudi', '04/12/1971', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (289, 'YASSIN CHOUKA alias ABU IBRAHEEM', 'Nomor Pasport 5204893014, Nomor Identifikasi Nasional 5209445304, Terkait dengan Gerakan Islam Uzbekistan (QDe.010). Saudara dari Monir Chouka (QDi.300). Perintah Penangkapan Dikeluarkan oleh hakim investigasi dari Pengadilan Federal Jerman pada tanggal 5 Oktober 2010 . Kewarganegaan lainnya Moroko', 'Orang', 'ILQ-097', 'Bonn, Jerman', '11/12/1984', 'Jerman,Maroko', 'Karl-Barth-Straße 14, Bonn, 53129, Jerman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (290, 'ABDUL MOHSEN ABDALLAH IBRAHIM AL-CHAREK alias ABDUL MOHSEN ABDULLAH IBRAHIM AL-SHARIKH alias SANAFI AL-NASR', 'Pemimpin regional Jabhat Al-Nusrah. Seorang fasilitator dan pemodal yang telah lama bekerja untuk Al-Qaida (QDe.004), ditunjuk sebagai pemimpin regional Jabhat al-Nusrah, tercatat sebagai Front Al-Nusrah untuk Orang-orang Lewi (QDe.137)', 'Orang', 'ILQ-198', 'Saqra, Arab Saudi', '13/07/1985', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (291, 'MALIK NOORZAI alias HAJJI MALIK NOORZAI alias HAJJI MALAK NOORZAI alias HAJI MALEK NOORZAI alias ALLAH MUHAMMAD alias HAJI MALUK alias HAJI AMINULLAH', 'Donatur taliban pada tahun 2009, Fasilitator kegiatan Taliban, termasuk perekrutan dan pemberian dukungan logistik. Diyakini berada di wilayah perbatasan Afganistan/Pakistan', 'Orang', 'ILT-094', 'perbatasan kota Chaman, Pakistan atau Pishin, Baluchistan, Pakistan', '01/01/1963', 'Afganistan', '- Jalan Boghra, Miralzei, Chaman, Baluchistan, Pakistan;\n- Kalay Rangin, Spin Boldak, Kandahar, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (292, 'MONIR CHOUKA alias ABU ADAM ', 'Nomor Pasport 5208323009, Nomor Identifikasi Nasional 5209530116, Terkait dengan Gerakan Islam Uzbekistan (QDe.010). Saudari Yassin Chouka (QDi.301) Surat perintah penahanan yang dikeluarkan oleh hakim investigasi Pengadilan Keadilan Federal Jerman pada tanggal 5 Oktober 2010. Kewarganegaraan lainnya Moroko', 'Orang', 'ILQ-096', 'Bonn, Jerman', '30/07/1981', 'Jerman,Maroko', 'Ungartenstraße 6, Bonn, 53229, Jerman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (293, 'HAMID HAMAD HAMID AL-\'ALI', 'Tambah Tempat lahir di Qatar. nomor paspor Kuwait 001714467, 101505554. Seorang pemodal, perekrut dan fasilitator Kuwait untuk negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (QDe.115), dan Jabhat al-Nusrah, tercatat sebagai Front Al-Nusrah untuk Orang-orang dari Levant ( QDe.137). Terkait dengan Ibrahim Awwad Ibrahim Ali al-Badri al-Samarrai (QDi.299) dan Abu Mohammed al-Jawlani (QDi.317).', 'Orang', 'ILQ-197', 'Kuwait atau Qatar', '17/11/1960', 'Kuwait', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (294, 'MOHAMMAD ALEEM NOORANI ', 'Review sesuai resolusi Dewan Keamanan 1822 (2008) ditutup pada 29 Juli 2010. Sekretaris Pertama,Konsulat Jenderal Taliban, Karachi, Pakistan tanggal lahir 1963', 'Orang', 'ILT-093', 'Ghazni Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (295, 'YASSINE CHEKKOURI ', 'Nomor Pasport F46947, Nomor identifikasi nasional H-135467, Nama Ibu Feue Hlima Bent Barka dan nama ayah Abderrahmane Mohammed Ben Azzouz. Dideportasi dari Italia ke Maroko pada tanggal 26 Feb. 2004', 'Orang', 'ILQ-095', 'Safi, Maroko', '06/10/1966', 'Maroko', 'Jalan 7, Nomor 7, Hay Anas Safi, Maroko', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (296, 'HAMDULLAH NOMANI ', 'Anggota Dewan Tertinggi Taliban. Diyakini berada di wilayah perbatasan Afganistan/Pakistan, Anggota Dewan Tertinggi Taliban. Dipercaya berada di wilayah perbatasan Afghanistan / Pakistan. Review sesuai resolusi Dewan Keamanan 1822 (2008) ditutup pada 23 Juli 2010, Menteri Pendidikan Tinggi di bawah rezim Taliban Walikota Kabul City di bawah rezim Taliban, tanggal lahir 1968', 'Orang', 'ILT-092', 'Sipayaw, Andar, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (297, 'HAJJAJ BIN FHAD AL AJMI alias HIJAJ FAHID HIJAJ MUHAMMAD SAHIB AL-AJMI alias HICAC FEHID HICAC MUHAMMED SEBIB AL-ACMI alias HAJJAJ BIN-FAHAD AL-AJMI alias SHEIKH HAJAJ AL-AJAMI alias HAJAJ AL-AJAMI alias AJAJ AJAMI', 'Seorang fasilitator Kuwait yang bertanggung jawab atas \'komite zakat\' dan pemodal untuk Front Al-Nusrah untuk Orang-orang dari Levant (QDe.137)', 'Orang', 'ILQ-196', 'Kuwait', '10/08/1987', 'Kuwait', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (298, 'AAMIR ALI CHAUDHRY alias AAMIR ALI CHAUDARY alias AAMIR ALI CHOUDRY alias AMIR ALI CHAUDRY alias HUZAIFA ', 'Nomor Pasport 4196361, Nomor identifikasi nasional 33202-7126636-9, Elektronik dan ahli bahan peledak untuk Tehrik-e Taliban Pakistan (TTP) (QDe.132). Terlibat dalam perencanaan serangan untuk TTP. Memberikan dukungan finansial dan logistik untuk TTP dan Berpartisipasi dalam pelatihan militan yang disponsori oleh TTP', 'Orang', 'ILQ-094', '-', '03/08/1986', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (299, 'ABOU MOHAMED AL ADNANI alias YASER KHALAF NAZZAL ALRAWI alias JABER TAHA FALAH alias ABOU KHATTAB alias ABOU SADEQ ALRAWI alias TAH AL BINCHI alias ABU MOHAMMED AL-ADNANI alias TAHA SOBHI FALAHA alias YASSER KHALAF HUSSEIN NAZAL AL-RAWI alias ABU BAKER AL-KHATAB alias ABU SADEK AL-RAWI alias TAHA AL-BANSHI alias ABU MOHAMED AL-ADNANI alias ABU-MOHAMMAD AL-ADNANI AL-SHAMI alias HAJJ IBRAHIM', 'Tanggal lahir tambahan pada 1977. Juru bicara resmi Negara Islam di Irak dan Levant (ISIL), terdaftar sebagai Al Qaida di Irak (QDe.115), dan emir ISIL di Suriah, terkait erat dengan Abu Mohammed al-Jawlani (QDi.317) dan Abu Bakr al-Baghdadi, terdaftar sebagai Ibrahim Awwad Ibrahim Ali al-Badri al-Samarrai (QDi.299).\n\n', 'Orang', 'ILQ-195', 'Binnish, Suriah', '00/00/0000', 'Irak', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (300, 'HAMADI BEN ABDUL AZIZ BEN ALI BOUYEHIA alias GAMEL MOHAMED alias ABD EL WANIS ABD GAWWAD ABD EL LATIF BAHAA alias MAHMOUD HAMID', 'Nomor Pasport L723315, Di penjara di Italia sampai 28 Jul 2011, Tanggal lahir lainnya 9 May 1986 , tempat lahir lainnya Moroko dan Mesir', 'Orang', 'ILQ-093', 'Tunis, Tunisia', '29/05/1966', 'Tunisia', 'Corso Xxii Marzo Nomor 39, Milan, Italia.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (301, 'NAJIBULLAH MUHAMMAD JUMA alias NAJIB ULLAH ', 'Anggota Dewan Militer Taliban Peshawar 2010. Diyakini di wilayah perbatasan Afganistan/Pakistan, Konsul Jenderal, Konsulat Jenderal Taliban, Peshawar, Pakistan ', 'Orang', 'ILT-091', 'Zere Kohi area, Shindand, Farah, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (302, 'MERAI ABDEFATTAH KHALIL ZOGHBI alias MOHAMED LEBACHIR alias MERI ALBDELFATTAH ZGBYE alias ZOGHBAI MERAI ABDUL FATTAH alias LAZRAG FARAJ alias LAZRG BEN ILA alias MUHAMMED EL BESIR alias MERAI ZOGHBAI alias F’RAJI DI SINGAPORE alias F’RAJI IL LIBICO alias FARAG alian FREDJ', 'Tanggal lahir tambahan 4 April 1960, 4 Juni 1960, 13 November 1960, 11 Augustus 1960. Dianggap sebagai buronan dari pengadilan oleh pihak berwenang Italia dan dijatuhi hukuman absen selama 6 tahun penjara pada 20 November 2008. Anggota Kelompok Pertarungan Islam Libya (QDe.011). Anak Wanisa Abdessalam. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 20 Juli 2009', 'Orang', 'ILQ-194', 'Bengasi, Libya', '04/04/1969', 'Libya', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (303, 'MOHAMMAD MOSLIM HAQQANI MUHAMMADI GUL alias MOSLIM HAQQANI', '	Diyakini berada di wilayah perbatasan Afganistan/Pakistan; Suku Pashtun dari Propinsi Baghlan. Dipercaya berada di wilayah perbatasan Afghanistan / Pakistan. fasih berbahasa Inggris, bahasa Urdu dan Arab. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 29 Juli 2010. Wakil Menteri Haji dan Agama di bawah rezim Taliban, Wakil Menteri Pendidikan Tinggi di bawah rezim Taliban tanggal lahir: 1966', 'Orang', 'ILT-090', 'Gawargan, Pul-e-Khumri, Baghlan, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (304, 'ALLAH DAD TAYEB WALI MUHAMMAD alias ALLAH DAD TAYYAB alias ALLAH DAD TABEEB \n', 'Suku Pashtun dari Propinsi Baghlan. Dipercaya berada di wilayah perbatasan Afghanistan / Pakistan. Berbicara fasih berbahasa Inggris, bahasa Urdu dan Arab. Ulasan sesuai dengan Dewan Keamanan Resolusi 1822 (2008) disimpulkan pada 29 Juli 2010, Wakil Menteri Komunikasi di bawah rezim Taliban tanggal lahir 1963\n\n', 'Orang', 'ILT-089', 'Ghorak, Kandahar, Afganistan atau  Nesh, Uruzgan, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (305, 'FAYCAL BOUGHANEMI alias FAICAL BOUGHANMI alias FAYSAL AL-BUGHANIMI', 'Kode Fiskal Italia: BGHFCL66R28Z352G. Dihukum 7 orang Tahun penjara di Italia pada 29 Juni 2007 oleh Pengadilan Banding Kedua Brescia. Dalam tahanan di Italia seperti di Jun 2009', 'Orang', 'ILQ-092', 'Tunis, Tunisia', '28/10/1966', 'Tunisia', 'Nomor 5/B viale Cambonino, Cremona, Italia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (306, 'ABDULHAI MOTMAEN alias ABDUL HAQ SON OF M. ANWAR KHAN  ', 'Anggota Dewan Tertinggi Taliban dan juru bicara Mullah Mohammed Omar Pada tahun 2007. Diyakini berada di wilayah perbatasan Afganistan/Pakistan, Direktur Departemen Informasi dan Kebudayaan di Provinsi Kandahar di bawah rezim Taliban, Juru Bicara rezim Taliban no passport: OA462456 tanggal lahir: 1973\n\n', 'Orang', 'ILT-088', 'Shinkalai, Nad-e-Ali, Helmand, Afganistan atau Zabul, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (307, 'AMIR KHAN MOTAQI alias AMIR KHAN MUTTAQI\n\n', 'Anggota Dewan Tertinggi Taliban per Juni 2007. Diyakini di wilayah perbatasan Afganistan/Pakistan; Menteri Pendidikan di bawah rezim Taliban, perwakilan Taliban dalam perundingan yang dipimpin PBB di bawah rezim Taliban, tanggal lahir 1968', 'Orang', 'ILT-087', 'Zurmat, Paktia, Afganistan atau Shin Kalai village, Nad-e-Ali, Helmand, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (308, 'IMED BEN MEKKI ZARKAOUI alias DOUR NADRE alias DAOUR NADRE alias IMAD BEN AL-MEKKI BEN AL-AKHDAR AL-ZARKAOUI alias ZARGA alias NADRA', 'Paspor nomor Tunisia M174950. tambahan tempat tanggal lahir: 15 Januari 1974 Moroko, 15 Januari 1973 in Morocco, 31 Mar. 1975 di Aljazair. Nama ibu adalah Zina al-Zarkaoui. Dipenjara di Prancis sejak 1 Februari 2010 atas tuduhan melakukan persekongkolan kriminal terkait dengan organisasi teroris. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 6 Mei 2010\n\n', 'Orang', 'ILQ-192', 'Tunis, Tunisia', '15/01/1973', 'Tunisia', '41-45, Rue Estienne D’orves, Pré Saint Gervais, Prancis', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (309, 'MOHAMMAD YAQOUB  \n\n', 'Anggota Komisi Kebudayaan Taliban. Mengarahkan \"front\" Taliban dan mengkoordinasikan semua aktivitas militer pasukan Taliban di Distrik Maiwand, Provinsi Kandahar, Afghanistan pada pertengahan 2013. Dipercaya berada di wilayah perbatasan Afghanistan / Pakistan. Sepihak Kharoti (Taraki). Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 23 Juli 2010, Kepala Badan Informasi Bakhtar (BIA) di bawah rezim Taliban tanggal lahir: 1966', 'Orang', 'ILT-086', 'Shahjoi, Zabul, Afganistan atau Janda, Ghazni, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (310, 'BILAL BIN MARWAN ', 'Letnan  senior UBL, Tahun Lahir 1947', 'Orang', 'ILQ-090', '-', '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (311, 'MOHAMMAD SARWAR SIDDIQMAL MOHAMMAD MASOOD alias MOHAMMAD SARWAR SIDDIQMAL ', 'anggota suku Mangal. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 29 Juli 2010 tanggal lahir 1963', 'Orang', 'ILT-085', 'Jani Khel, Paktia, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (312, 'ADEM YILMAZ alias TALHA', 'Nomor paspor Turkey TR-P 614 166. Alamat tambahan Südliche Ringstrasse 133, Langen, 63225, Jerman. Terkait dengan Jihad Islam (IJU), juga dikenal sebagai Islamic Jihad Group (QDe.119). Terkait dengan Fritz Martin Gelowicz (QDi.259). Dalam tahanan di Jerman mulai Juni 2010', 'Orang', 'ILQ-189', 'Bayburt, Turki', '04/11/1978', 'Turki', '- Südliche Ringstrasse 133, Langen, 63225, Jerman. \n- Di penjara di Jerman sejak 2007.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (313, 'ABDULLAH HAMAD MOHAMMAD KARIM alias AL-HAMMAD', 'Diyakini berada di wilayah perbatasan Afganistan/Pakistan; no passport D 000857', 'Orang', 'ILT-084', 'Darweshan, Hazar Juft area, Garmser, Helmand, Afganista', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (314, 'HAFIZ ABDUL SALAM BHUTTAVI alias HAFIZ ABDUL SALAM BHATTVI alias HAFIZ ABDUSALAM BUDVI alias HAFIZ ABDUSSALAAM BHUTVI alias ABDUL SALAM BUDVI alias ABDUL SALAM BHATTWI alias ABDUL SALAM BHUTVI alias MULLAH ABDUL SALAAM BHATTVI alias MOLVI ABDURSALAM BHATTVI', 'Anggota pendiri Lashkar-e-Tayyiba (QDi.118) dan wakilnya, Pemimpin Lashkar-e-Taiba Hafiz Muhammad Saeed (QDi.263). Tahun lahir 1940', 'Orang', 'ILQ-088', 'Gujranwala, Punjab, Pakistan', '00/00/0000', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (315, 'ABDUL RAHMAN YASIN alias TAHA, ABDUL RAHMAN S. alias TAHER, ABDUL RAHMAN S. alias YASIN, ABDUL RAHMAN SAID alias YASIN, ABOUD', 'nomor identitas Amerika Serikat SSN 156-92-9858. Nomor paspor 27082171. Abdul Rahman Yasin ada di Irak. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 21 Jun 2010', 'Orang', 'ILQ-188', 'Bloomington, Indiana, Amerika Serikat', '10/04/1960', 'Amerika Serikat', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (316, 'ABDUL KABIR MOHAMMAD JAN alias A. KABIR', 'Aktif dalam operasi teroris di Afganistan Timur. Mengumpulkan uang dari pengedar narkoba. Diyakini berada di wilayah perbatasan Afganistan/Pakistan tanggal lahir 1963', 'Orang', 'ILT-083', 'Pul-e-Khumri or Baghlan Jadid, Baghlan, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (317, 'ADEL BEN AL-AZHAR BEN YOUSSEF HAMDI alias ADEL BEN AL-AZHAR BEN YOUSSEF BEN SOLTANE alias ZAKARIYA', 'Nomor Pasport M408665, Nomor identitas nasional Tunisia W334061, Kode Fiskal Italia BNSDLA70L14Z352B, Dideportasi dari Italia ke Tunisia pada tanggal 28 Februari 2004. Melayani 12 tahun Hukuman penjara di Tunisia untuk keanggotaan dalam sebuah organisasi teroris di luar negeri pada Januari 2010. Ditangkap di Tunisia Pada tahun 2013. Nama keluarga yang diubah secara hukum dari Ben Soltane ke Hamdi pada tahun 2014.', 'Orang', 'ILQ-087', 'Tunis, Tunisia', '14/07/1970', 'Tunisia', 'Tunisia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (318, 'OMAR MAHMOUD UTHMAN alias AL-SAMMAN UTHMAN alias UMAR UTHMAN alias OMAR MOHAMMED OTHMAN alias ABU QATADA AL-FILISTINI alias ABU UMR TAKFIRI alias ABU OMAR ABU UMAR alias ABU UMAR UMAR alias ABU ISMAIL', 'DOB tambahan 30 Desember 1960. Terkait dengan kelompok yang terkait dengan Al-Qaida di Inggris dan negara-negara lain. Dihukum in absentia di Yordania untuk keterlibatan dalam aksi teroris pada tahun 1998. Ditangkap pada bulan Februari 2001 di Inggris, ditahan lebih lanjut di antara keduanya Oktober 2002 dan Mar. 2005 dan antara Agustus 2005 dan Juni 2008. Dalam tahanan sejak Desember 2008. Dideportasi ke Yordania Dari Inggris pada tanggal 7 Juli 2013 untuk menghadapi tuduhan terorisme. Review s', 'Orang', 'ILQ-187', 'Bethlehem, Palestina', '30/12/1960', 'Yordania', 'Jordania', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (319, 'MOKHTAR BELMOKHTAR alias ABOU ABBES KHALED alias BELAOUAR KHALED ABOU EL ABASS alias BELAOUER KHALED ABOU EL ABASS alias BELMOKHTAR KHALED ABOU EL ABES alias KHALED ABOU EL ABASS alias KHALED ABOU EL ABBES alias KHALED ABOU EL ABES alias KHALED ABULABBAS NA OOR alias MUKHTAR BELMUKHTAR alias BELAOUA alias BELAOUR', 'Nama ayah Mohamed. Nama ibu Zohra Chemkha. Anggota Dewan Organisasi Al-Qaida di Maghreb Islam (QDe.014) (AQIM). Kepala Al Mouakaoune Biddam (QDe.139), Al Moulathamoun (QDe.140) dan Al Mourabitoun (QDe.141).', 'Orang', 'ILQ-086', 'Ghardaia, Alzajair', '01/06/1972', 'Aljazair', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (320, 'MOHAMED BELKALEM alias ABDELALI ABOU DHER alias EL HARRACHI', 'Dihukum in absentia oleh pengadilan Aljazair pada tanggal 28 Maret 1996. Surat perintah penangkapan internasional Aljazair Nomor 03/09 6 Jun 2009 dikeluarkan oleh Pengadilan Sidi Mhamed, Aljazair, Aljazair. Permintaan ekstradisi Aljazair Nomor 2307/09 dari 3 Sep. 2009, dipresentasikan ke otoritas Malian. Nama ayah Ali Belkalem. Nama ibu Fatma Saadoudi. Anggota Organisasi Al-Qaida di Maghreb Islam (QDe.014)', 'Orang', 'ILQ-085', 'Hussein Dey, Algiers, Alzajair', '19/12/1969', 'Aljazair', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (321, 'DOKU KHAMATOVICH UMAROV alias LOM-ALI BUTAYEV alias DOKKA UMAROV ', 'Tambahan DOB dan POB: 13 Apr. 1965, 12 May 1964, 1955, 13 April 1964', 'Orang', 'ILQ-186', 'Desa Kharsenoy, Shatoyskiy, Chechenskaya, Russia', '13/04/1964', 'Rusia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (322, 'MAHMOOD SULTAN BASHIR-UD-DIN alias MAHMOOD, SULTAN BASHIRUDDIN alias MEHMOOD, Dr. BASHIR UDDIN alias MEKMUD, SULTAN BAISHIRUDDIN', 'Tahun lahir	1937,  1938, 1939, 1940, 1941, 1942, 1943, 1944, 1945', 'Orang', 'ILQ-084', '-', '00/00/0000', NULL, 'Jalan 13, Wazir Akbar Khan, Kabul, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (323, 'MOHAMMED TUFAIL alias TUFAIL, S.M. alias TUFFAIL, SHEIK MOHAMMED', 'Dilayani sebagai direktur Ummah Tameer e-Nau (UTN) (QDe.068). Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 1 Jun 2010', 'Orang', 'ILQ-185', '-', '05/05/1930', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (324, 'AYYUB BASHIR alias ALHAJ QARI AYUB BASHAR alias QARI MUHAMMAD AYUB', 'Anggota dewan pimpinan sejak awal 2010 Dan kepala keuangan untuk Gerakan Islam Uzbekistan (QDe.010). Dukungan keuangan dan logistik terkoordinasi Untuk Gerakan Islam Uzbekistan di Afghanistan dan Pakistan antara tahun 2009-2012. Ditransfer dan dikirim Dana untuk Fazal Rahim (QDi.303). Tahun Lahir 1966, 1964, 1969, 1971, Kewarganegaraan lainnya Afganistan', 'Orang', 'ILQ-083', '-', '00/00/0000', 'Afganistan,Uzbekistan', 'Mir Ali, Badan Waziristan Utara, Administrasi Federal\nDaerah kesukuan, Pakistan\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (325, 'ANGELO RAMIREZ TRINIDAD alias CALIB TRINIDAD alias KALIB TRINIDAD alias ABDUL KHALIL alias ABDULKAHLIL alias ABU KHALIL alias ANIS', 'Membedakan tanda termasuk bekas luka di kedua kaki. Anggota Gerakan Rajah Solaiman (QDe.128), dan terkait dengan Kelompok Abu Sayyaf (QDe.001) dan Jemaah Islamiyah (QDe.092). Dalam penahanan di Filipina per Mei 2011. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 13 Mei 2010', 'Orang', 'ILQ-184', 'Gattaran, Cagayan, Filipina', '20/03/1978', 'Filipina', '3111 Ma. Bautista, Punta, Santa Ana, Manila, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (326, 'IBRAHIM ALI ABU BAKR TANTOUSH alias 	ABD AL-MUHSIN alias IBRAHIM ALI MUHAMMAD ABU BAKR alias ABDUL RAHMAN alias ABU ANAS alias IBRAHIM ABUBAKER TANTOUCHE alias IBRAHIM ABUBAKER TANTOUSH alias \'ABD AL-MUHSI alias \'ABD AL-RAHMAN alias ABDEL ILAH SABRI alias AL-LIBI', 'nomor paspor Libya 203037; Berkaitan dengan Komite Dukungan Afganistan (ASC) (QDe.069), Kebangkitan Masyarakat Warisan Islam (RIHS) (QDe.070) dan Libya Kelompok Pertarungan Islam (LIFG) (QDe.011).', 'Orang', 'ILQ-183', 'Al Aziziyya, Libya', '02/02/1966', 'Libya', 'Tripoli, Libya', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (327, 'SAID BAHAJI alias ZOUHEIR AL MAGHRIBI alias MOHAMED ABBATTAY alias ABDERRAHMANE AL MAGHRIBI', 'Nomor Pasport Jerman 28642163, Nomor Pasport Moroko 54242, Wakil ketua panitia media Al-Qaida (QDe.004) sebagai\nPada bulan Apr. 2010. Otoritas Jerman mengeluarkan surat perintah penangkapan untuknya pada tanggal 21 September 2001. Review berdasarkan Security\nResolusi dewan 1822 (2008) ditutup pada 20 Mei 2010. Kabarnya meninggal pada bulan September 2013 di Jakarta\nWilayah perbatasan Afghanistan / Pakistan, Kewarganegaraan lainnya Moroko', 'Orang', 'ILQ-081', 'Haselünne, Lower Saxony, Jerman', '15/07/1975', 'Jerman,Maroko', 'dahulu tinggal di Bunatwiete 23, 21073 Hamburg, Jerman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (328, 'RICARDO PEREZ AYERAS alias ABDUL KAREEM AYERAS alias ABDUL KARIM AYERAS alias RICKY AYERAS alias JIMBOY alias ISAAC JAY GALANG PEREZ alias ABDUL MUJIB', 'Anggota Gerakan Rajah Solaiman (QDe.128). Ditangkap oleh otoritas Filipina pada 14 Mar. 2011.', 'Orang', 'ILQ-080', '24 Paraiso Street, Barangay Poblacion, Mandaluyong, Filipina', '15/09/1973', 'Filipina', 'Barangay Mangayao, Tagkawayan, Quezon, Filipina atau Barangay Tigib, Ayungon, Negros Oriental, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (329, 'ABDUL MANAN MOHAMMAD ISHAK ', 'tanggal lahir 1940/1941', 'Orang', 'ILT-082', 'Siyachoy, Panjwai, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (330, 'YAZID SUFAAT alias JOE alias ABU ZUFAR', 'Nomor paspor A 10472263. Anggota pendiri Jemaah Islamiyah (JI) (QDe.092) yang mengerjakan program senjata biologis Al-Qaida (QDe.004), memberikan dukungan kepada mereka yang terlibat dalam serangan 11 September 2001 di Al-Qaeda di Amerika Serikat, dan Terlibat dalam operasi pengeboman JI. Ditahan di Malaysia dari tahun 2001 sampai 2008. Ditangkap di Malaysia pada tahun 2013 dan dijatuhi hukuman 7 tahun pada Januari 2016 karena gagal melaporkan informasi yang berkaitan dengan tindakan teroris. Ka', 'Orang', 'ILQ-182', 'Johor, Malaysia', '20/01/1964', 'Malaysia', '- Taman Bukit Ampang, Selangor, Malaysia\n- Penjara di Malaysia sejak 2013', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (331, 'MOHAMMAD SHAFIQ MOHAMMADI', 'tanggal lahir 1948, Pengawas dua pusat pelatihan militer Taliban pada pertengahan 2013. Diyakini berada di wilayah perbatasan Afganistan/Pakistan', 'Orang', 'ILT-081', 'Tirin Kot, Uruzgan, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (332, 'MOHAMMAD WALI MOHAMMAD EWAZ alias MOHAMMAD WALI\n\n', 'tanggal lahir 1948,Dikabarkan meninggal pada Desember 2006 dan dimakamkan di Panjwai;', 'Orang', 'ILT-080', 'Jelawur, Arghandab, Kandahar, Afghanistan atau Siyachoy village, Panjwai, Kandahar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (333, 'THARWAT SALAH SHIHATA alias TARWAT SALAH ABDALLAH alias SALAH SHIHATA THIRWAT alias SHAHATA THIRWAT alias THARWAT SALAH SHIHATA ALI', 'Review berdasarkan resolusi Dewan Keamanan 1822 (2008) Disimpulkan pada tanggal 15 Jun 2010', 'Orang', 'ILQ-181', 'Mesir', '29/06/1960', 'Mesir', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (334, 'HASSAN DAHIR AWEYS alias ALI, SHEIKH HASSAN DAHIR AWEYS alias AWES, SHAYKH HASSAN DAHIR alias HASSEN DAHIR AWEYES alias AHMED DAHIR AWEYS alias MOHAMMED HASSAN IBRAHIM alias AWEYS HASSAN DAHIR alias HASSAN TAHIR OAIS alias HASSAN TAHIR UWAYS alias HASSAN DAHIR AWES alias SHEIKH AWEYS  alias SHEIKH HASSAN alias SHEIKH HASSAN DAHIR AWEYS', 'Latar belakang keluarga: dari Hawiye\'s Habergidir, Ayr\nklan. Pemimpin senior Al-Itihaad Al-Islamiyah (AIAI) (QDe.002) dan Hizbul Islam di Somalia. Sejak 12 April 2010, juga\nTunduk pada sanksi yang ditetapkan dalam resolusi Dewan Keamanan 1844 (2008) mengenai Somalia dan Eritrea, Tahun lahir 1935\n', 'Orang', 'ILQ-079', 'Somalia', '00/00/0000', 'Somalia', 'Somalia Selatan atau Eritrea', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (335, 'FAZL MOHAMMAD MAZLOOM alias MOLAH FAZL alias FAZEL MOHAMMAD MAZLOOM', 'tanggal lahir 1963, Dalam masa penahanan Amerika Serikat sejak pertengahan 2013', 'Orang', 'ILT-079', 'Uruzgan, Afganistan', '00/00/0000', 'Afganistan', 'Qatar', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (336, 'ABDUL QUDDUS MAZHARI alias AKHTAR MOHAMMAD MAZ-HARI', 'tanggal lahir 1970', 'Orang', 'ILT-078', 'Kunduz, Afganistan', '00/00/0000', 'Afganistan', 'Kushal Khan Mena,  Number 5, Kabul, Afganistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (337, 'RAED MUHAMMAD HASAN MUHAMMAD HIJAZI alias RAED M. HIJAZI alias RI\'AD MUHAMMAD HASAN MUHAMMAD HIJAZI alias RASHID AL-MAGHRIBI (THE MOROCCAN) alias ABU-AHMAD AL-AMRIKI (THE AMERICAN) alias ABU-AHMAD AL-HAWEN alias ABU-AHMAD AL-SHAHID', 'Kewarganegaraan (informasi lain) : Amerika Serikat\nNomor identitas nasional :\na) Amerika Serikat (Social Security Number) 548-91-5411 \nb) Yordania (National Number) 9681029476\n\nBerada dalam tahanan di Yordania sejak tanggal 26 Februari 2015, atas rekrutmen dan dukungan terhadap ISIL. Nama ayah adalah Mohammad Hijazi, nama ibu adalah Sakina.', 'Orang', 'ILQ-127', 'California, Amerika Serikat', '30/12/1968', 'Yordania,Amerika Serikat', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (338, 'MATIULLAH ', 'tanggal lahir 1973', 'Orang', 'ILT-077', 'Daman, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (339, 'HAJI MUHAMMAD ASHRAF alias HAJI M. ASHRAF alias MUHAMMAD ASHRAF MANSHAH alias MUHAMMAD ASHRAF MUNSHA', 'Nomor Pasport AT0712501 dan A-374184, Nomor Identifikasi Nasional 6110125312507 dan 24492025390, Kepala keuangan Lashkar-e-\nTayyiba (QDe.118). Nama ayahnya adalah Noor Muhammad. Tahun lahir lainnya 1955', 'Orang', 'ILQ-078', 'Faisalabad, Pakistan', '01/03/1965', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (340, 'ALLAH DAD MATIN alias ALLAHDAD alias SHAHIDWROR alias AKHUND', 'tanggal lahir 1953, diyakini berada di wilayah perbatasan Afganistan/Pakistan;\n\n', 'Orang', 'ILT-076', 'Kadani, Spin Boldak, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (341, 'ABUBAKAR MOHAMMED SHEKAU alias ABUBAKAR SHEKAU alias ABU MOHAMMED ABUBAKAR BIN MOHAMMED alias ABU MUHAMMED ABUBAKAR BI MOHAMMED alias SHEKAU alias SHEHU alias SHAYKU alias IMAM DARUL TAUHID alias IMAM DARUL TAWHEED', 'DOB 1969. Anggota suku Kanuri. Dalam Pemberitahuan Khusus Dewan Keamanan INTERPOL-UN. Pemimpin Jama\'atu Ahlis Sunna Lidda\'Awati Wal-Jihad (Boko Haram) (QDe.138). Di bawah kepemimpinan Shekau, Boko Haram telah bertanggung jawab atas serangkaian masalah besar serangan teroris', 'Orang', 'ILQ-180', 'Desa Shekau, Yobe, Nigeria', '00/00/0000', 'Nigeria', 'Nigeria', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (342, 'MOHAMMADULLAH MATI alias MAWLAWI NANAI ', 'tanggal lahir 1961,Pemimpin Interim Dewan Tertinggi Taliban sejak Februari hingga April 2010. Bertanggung jawab dalam kegiatan perekrutan anggota pada pertengahan 2013. Diyakini berada di wilayah perbatasan Afganistan/Pakistan;', 'Orang', 'ILT-075', 'Arghandab, Kandahar, Afganistan,', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (343, 'ABDUL LATIF MANSUR alias ABDUL LATIF MANSOOR alias WALI MOHAMMAD', 'tanggal lahir 1968', 'Orang', 'ILT-074', 'Zurmat, Paktia, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (344, 'ZIA-UR-RAHMAN MADANI alias 	ZIAURRAHMAN MADANI alias ZAIA U RAHMAN MADANI alias MADANI SAHEB alias DIYA’ AL-RAHMAN MADANI\n\n', 'tanggal lahir 1960,Terlibat dalam perdagangan narkoba. Sebagai anggota Taliban yang bertanggung jawab untuk urusan militer di provinsi Takhar, Afganistan, pada Mei 2007. Memfasilitasi penggalangan dana di Teluk atas nama Taliban sejak tahun \n2003. Memfasilitasi pertemuan antara pejabat Taliban dan pendukung serta mengatur banyak orang untuk bepergian ke Kabul, Afganistan, untuk serangan bunuh diri. Diyakini berada di kawasan Teluk;\n', 'Orang', 'ILT-073', 'Paliran, Namakab, Takhar, Afganistan atau Taluqan, Takhar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (345, 'SAIFI AMMARI alias EL PARA alias ABDERREZAK LE PARA alias ABOU HAIDARA alias EL OURASSI alias ABDERREZAK ZAIMECHE alias ABDUL RASAK AMMANE ABU HAIDRA alias ABDALARAK', 'Dalam penahanan di Aljazair sejak Oktober 2004. Mantan\nAnggota GSPC terdaftar sebagai Organisasi Al-Qaida di Maghreb Islam ', 'Orang', 'ILQ-075', 'Kef Rih, Aljazair atau Guelma, Aljazair', '01/01/1968', 'Aljazair', 'Alzajair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (346, 'HILARION DEL ROSARIO SANTOS alias AKMAD SANTOS alias AHMED ISLAM alias AHMAD ISLAM SANTOS alias HILARION SANTOS III alias HILARION DEL ROSARIO SANTOS III alias ABU ABDULLAH SANTOS alias FAISAL SANTOS alias LAKAY alias AQI alias AKI alias ABU HAMSA \n\n	', 'Nomor Paspor Philippines AA780554. Pendiri dan pemimpin Gerakan Rajah Solaiman (QDe.128) dan terhubung dengan Abu Sayyaf Grup (QDe.001). Dalam penahanan di Filipina per Mei 2011. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 13 Mei 2010.', 'Orang', 'ILQ-176', '686 Jalan A. Mabini, Sangandaan, Caloocan, Filipina', '12/03/1966', 'Filipina', '50, Jalan Purdue, Cubao, Quezon, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (347, 'ABDUL RAZAQ AKHUND LALA AKHUND', 'tanggal lahir na Anggota Dewan Taliban sejak 2008', 'Orang', 'ILT-072', 'Spin Boldak, Kandahar, Afganistan, in the area bordering Chaman, Quetta, Pakistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (348, 'AIMAN MUHAMMED RABI AL-ZAWAHIRI alias AYMAN AL-ZAWAHARI alias AHMED FUAD SALIM alias AL ZAWAHRY AIMAN MOHAMED RABI ABDEL MUAZ alias AL ZAWAHIRI AYMAN alias ABDUL QADER ABDUL AZIZ ABDUL MOEZ AL DOCTOR alias AL ZAWAHRY AIMAN MOHAMED RABI alias AL ZAWAHRY AIMAN MOHAMED RABIE alias AL ZAWAHRY AIMAN MOHAMED ROBI alias DHAWAHRI AYMAN alias EDDAOUAHIRI AYMAN alias NUR AL DEEN ABU MOHAMMED alias AYMAN AL ZAWAHARI alias AHMAD FUAD SALIM alias ABU FATMA alias ABU MOHAMMED', 'Pimpinan Al-Qaeda, orang dekat Usama Bin Laden, dipercaya ada di Afganistan, Nomor Pasport 1084010 dan 19820215, Mantan pemimpin operasional dan militer Islam Mesir Jihad', 'Orang', 'ILQ-073', 'Giza, Mesir', '19/06/1951', 'Mesir', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (349, 'MOHAMMED QASIM MIR WALI KHUDAI RAHIM alias MUHAMMAD QASIM alias ABDUL SALAM', 'tanggal lahir 1975,Terlibat dalam penyediaan senjata untuk Taliban, termasuk alat peledak improvisasi (IED);', 'Orang', 'ILT-071', 'Minar, Garmser, Helmand, Afganistan', '00/00/0000', 'Afganistan', '- Wesh, Spin Boldak, Kandahar, Afganistan\n- Safaar Bazaar, Garmser, Helmand, Afghanistan\n- Ruang nomor 33, Pasar Sarafi Lantai 5, Kandahar,\nAfghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (350, 'KHAIRULLAH BARAKZAI KHUDAI NAZAR alias HAJI KHAIRULLAH alias HAJI KHAIR ULLAH alias HAJI KHEIRULLAH alias HAJI KARIMULLAH alias  HAJI KHAIR MOHAMMAD', 'TANGGAL LAHIR :1965 Pemilik Pertukaran Uang Khairullah Haji Sattar;\n\n', 'Orang', 'ILT-070', 'Zumbaleh, Nahr-e Saraj, Helmand, Afganistan', '00/00/0000', NULL, 'Abdul Manan Chowk, Pashtunabad, Quetta, Baluchistan, Pakistan.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (351, 'MAHFOUZ OULD AL-WALID alias ABU HAFS THE MAURITANIAN alias KHALID AL-SHANQITI alias MAFOUZ WALAD AL-WALID', 'Na', 'Orang', 'ILQ-071', 'Mauritania', '01/01/1975', 'Mauritania', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (352, 'NESSIM BEN ROMDHANE SAHRAOUI alias DASS alias NASIM AL-SAHRAWI', 'Dianggap sebagai buronan dari pengadilan oleh penguasa Italia dan dijatuhi hukuman secara in absentia sampai 6 tahun ditahan pada usia 20 tahun November 2008. Dihukum di Tunisia sampai 4 tahun penjara karena aktivitas teroris dan penahanan di Tunisia pada Juni. 2009. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 20 Juli 2009', 'Orang', 'ILQ-174', 'Bizerta, Tunisia', '03/08/1973', 'Tunisia', 'Tunisia ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (353, 'RADULAN SAHIRON alias RADULLAN SAHIRON alias RADULAN SAHIRUN alias RADULAN SAJIRUN alias COMMANDER PUTOL', 'DOB 1955. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 8 Jun. 2010', 'Orang', 'ILQ-173', 'Kaunayan, Patikul, Pulau Jolo, Filipina', '00/00/0000', 'Filipina', 'Sulu, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (354, 'HAFIZ MUHAMMAD SAEED alias HAFIZ MOHAMMAD SAHIB alias HAFIZ MOHAMMAD SAYID alias HAFIZ MUHAMMAD alias HAFIZ SAEED alias HAFEZ MOHAMMAD SAEED alias HAFIZ MOHAMMAD SAYEED alias TATA MOHAMMAD SYEED alias MOHAMMAD SAYED alias MUHAMMAD SAEED alias HAFIZ JI', 'Muhammad Saeed adalah pemimpin Lashkar-e-Tayyiba (QDe.118)', 'Orang', 'ILQ-172', 'Sargodha, Punjab, Pakistan', '05/06/1950', 'Pakistan', 'Rumah No. 116E, Mohalla Johar, Lahore, Tehsil, Kota Lahore, Distrik Lahore, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (355, 'MOHAMMAD HAMDI MOHAMMAD SADIQ AL-AHDAL alias AL-HAMATI, MUHAMMAD alias MUHAMMAD MUHAMMAD ABDULLAH AL-AHDAL alias MOHAMED MOHAMED ABDULLAH AL-AHDAL alias ABU ASIM AL-MAKKI alias AHMED', '	Nomor Paspor Yemen  541939. Bertanggung jawab atas Keuangan Al-Qa\'ida (QDe.004) di Yaman. Dituduh terlibat dalam serangan terhadap USS Cole pada tahun 2000. Ditangkap Di Yaman pada November 2003. Dihukum tiga tahun dan satu bulan dipenjara oleh pengadilan pidana khusus Contoh pertama di Yaman. Dirilis pada tanggal 25 Desember 2006 setelah selesainya vonisnya. Review sesuai dengan Resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 8 Jul 2010\n\n', 'Orang', 'ILQ-171', 'Madinah, Arab Saudi', '19/11/1971', 'Yaman', 'Jalan Jamal, gang Al-Dahima, Al-Hudaydah, Yaman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (356, 'ANAS HASAN KHATTAB alias SAMIR AHMED AL-KHAYAT alias HANI alias ABU HAMZAH alias ABU-AHMAD HADUD', 'Amir administratif untuk Al-Nusrah Front for the People of the Levant', 'Orang', 'ILQ-209', 'Damaskus, Suriah', '07/04/1986', 'Suriah', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (357, 'MOHAMMAD NAIM BARICH KHUDAIDAD alias MULLAH NAEEM BARECH alias MULLAH NAEEM BARAICH alias MULLAH NAIMULLAH alias MULLAH NAIM BAREH alias MOHAMMAD NAIM alias MULLAH NAIM BARICH alias MULLAH NAIM BARECH alias MULLAH NAIM BARECH AKHUND alias MULLAH NAEEM BARIC alias NAIM BERICH alias HAJI GUL MOHAMMED NAIM BARICH alias GUL MOHAMMAD alias HAJI GHUL MOHAMMAD alias GUL MOHAMMAD KAMRAN alias MAWLAWI GUL MOHAMMAD alias SPEN ZRAE', 'tanggal lahir 1975, Anggota Komisi Militer Taliban pada 2013. Diyakini berada di Afganistan/Pakistan wilayah perbatasan', 'Orang', 'ILT-069', 'Lakhi village, Hazarjuft Area, Garmsir District, Helmand Province, Afghanistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (358, 'AMIN MUHAMMAD UL HAQ SAAM KHAN alias AL-HAQ, AMIN alias AMIN, MUHAMMAD alias Dr. AMIN alias UL HAQ, Dr. AMIN', 'DOB 1960. Koordinator keamanan Osama bin Laden (almarhum). Repatriasi ke Afghanistan pada bulan Februari 2006. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 15 Jun 2010.', 'Orang', 'ILQ-170', 'Nangarhar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (359, 'FAZEEL-A-TUL SHAYKH ABU MOHAMMED AMEEN AL-PESHAWARI alias SHAYKH AMINULLAH alias SHEIK AMINULLAH alias ABU MOHAMMAD AMINULLAH PESHAWARI alias ABU MOHAMMAD AMIN BISHAWRI alias ABU MOHAMMAD SHAYKH AMINULLAH AL-BISHAURI alias SHAYKH ABU MOHAMMED AMEEN AL-PESHAWARI alias SHAYKH AMINULLAH AL-PESHAWARI', 'Berhubungan dengan Al-Qaida (QDe.004). Kepala Ganj madrasa, a.k.a. Madrasa Jamia Taleemul Quran wal Hadith, a.k.a. Madrasa Taleemul Quran wal Sunnah, terletak di Ganj Ganj, Jalan Phandu, Peshawar, Pakista, Tahun lahir 1967 atau 1961', 'Orang', 'ILQ-061', 'Desa Shunkrai, Kecamatan Sarkani, Provinsi Konar, Afghanistan ', '00/00/0000', 'Afganistan', 'Distrik Ganj, Peshawar, Pakistan\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (360, 'AL-AZHAR BEN KHALIFA BEN AHMED ROUINE  alias SALMANE alias LAZHAR', 'Nomor paspor Tunisia P182583. Dihukum enam tahun sepuluh bulan penjara karena keanggotaan asosiasi teroris oleh Pengadilan Banding Milan, Italia, pada tanggal 7 Februari 2008. Dipenjara di Penjara Sfax pada tanggal 5 Juni 2007 berdasarkan perintah Dikeluarkan oleh Pengadilan Banding di Tunisia karena bergabung dengan sebuah organisasi yang terkait dengan kejahatan teroris (kasus No.9301 / 207). Dihukum dua tahun dan 15 hari dipenjara dan dibebaskan pada tanggal 18 Juni 2008.U Dianggap sebagai bu', 'Orang', 'ILQ-169', 'Sfax, Tunisia', '20/11/1975', 'Tunisia', 'No.2 89t, Jalan Zehrouni, Tunis, Tunisia	', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (361, '\'ABD AL-RAHMAN KHALAF \'UBAYD JUDAY\' AL-\'ANIZI alias \'ABD AL-RAHMAN KHALAF AL-ANIZI alias \'ABD AL-RAHMAN KHALAF AL-\'ANZI alias ABU USAMAH AL-RAHMAN alias ABU SHAIMA\' KUWAITI alias ABU USAMAH AL-KUWAITI alias ABU USAMA alias YUSUF', 'Memberikan dukungan untuk Al-Qaida dan ISIL', 'Orang', 'ILQ-208', '-', '06/03/1973', 'Kuwait', 'Suriah (sejak tahun 2013 )', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (362, 'ABDELHALIM HAFED ABDELFATTAH REMADNA alias ABDELHALIM REMADNA alias JALLOUL', 'Dideportasi dari Italia ke Aljazair pada 12 Agustus 2006. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 8 Desember 2009', 'Orang', 'ILQ-168', 'Biskra, Aljazair', '02/04/1966', 'Aljazair', 'Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (363, 'ISAM ALI MOHAMED ALOUCHE alias MANSOUR THAER', 'Dideportasi dari Jerman ke Yordania pada bulan Februari 2005. Review berdasarkan resolusi Dewan Keamanan\n1822 (2008) disimpulkan pada tanggal 21 Juni 2010.\n', 'Orang', 'ILQ-060', 'Baghdad, Irak', '21/03/1974', 'Yordania', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (364, 'EZATULLAH HAQQANI KHAN SAYYID alias EZATULLAH HAQQANI ', 'tanggal lahir : 1957 , Anggota Taliban Peshawar Shura pada 2008. Diyakini berada di wilayah perbatasan Afganistan/Pakistan', 'Orang', 'ILT-068', 'Alingar, Laghman, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (365, 'FAZAL RAHIM alias FAZEL RAHIM alias FAZIL RAHIM alias FAZIL RAHMAN', ': DOB tambahan 1977, 1975, 24 Januari 1973. Alamat tambahan A2, City Computer Plaza, Shar-e-Now, Kabul, Afghanistan, Microrayan 3rd, Apt. 45, block 21, Kabul, Afghanistan. Adalah fasilitator keuangan untuk Gerakan Islam Uzbekistan (QDe.010) dan Al-Qaida (QDe.004). Terkait dengan Tohir Abdulkhalilovich Yuldashev. Sampai akhir 2010, dalam tahanan otoritas Pakistan. Nama ayah adalah Fazal Ahmad', 'Orang', 'ILQ-165', 'Kabul Afghanistan', '24/01/1974', 'Afganistan', '- perbatasan Afghanistan/Pakistan; \n- A2, City Computer Plaza, Shar-e-Now, Kabul, Afghanistan, Microrayan 3rd, Apt. 45, blok 21, Kabul, Afghanistan.', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (366, 'GHAZY FEZZA HISHAN AL-MAZIDIH alias GHAZY FEZZAA HISHAN alias MUSHARI ABD AZIZ SALEH SHLASH alias ABU FAYSAL alias ABU GHAZZY', 'Dia adalah sepupu Akram Turki Hishan Al Mazidih (QDi.276). Serangan teroris\nPenyelenggara untuk Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (AQI) (QDe.115) pada tahun 2015. Tahun Lahir antara 1974 dan 1975', 'Orang', 'ILQ-059', '-', '00/00/0000', NULL, '- Suriah\n- Iraq', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (367, 'KHAIRULLAH KHAIRKHWAH alias MULLAH KHAIRULLAH KHAIRKHWAH alias KHIRULLAH SAID WALI KHAIRKHWA\n', 'tanggal lahir 1963', 'Orang', 'ILT-067', ' Poti village, Arghistan district, Kandahar province, Afghanistan', '00/00/0000', 'Afganistan', 'Qatar', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (368, 'ARIF QASMANI alias MUHAMMAD ARIF QASMANI alias MUHAMMAD ‘ARIF QASMANI alias MOHAMMAD ARIF QASMANI alias ARIF UMER alias QASMANI BABA alias MEMON BABA alias BABA JI', 'Terkait dengan Lashkar-e-Tayyiba (QDe.118) dan Al-Qaeda (QDe.004). Ditahan pada Juni 2009', 'Orang', 'ILQ-163', 'Pakistan', '00/00/0000', 'Pakistan', 'Rumah nomor 136, KDA Scheme No. 1, Jalan Tipu Sultan, Karachi, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (369, 'ABDUL RAUF KHADEM alias MULLAH ABDUL RAUF ALIZA\n\n', NULL, 'Orang', 'ILT-066', ' Azan, Kajaki, Helmand, Afghanistan atau Spin Boldak, Kandahar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (370, 'SEIFALLAH BEN OMAR BEN MOHAMED BEN HASSINE alias SEIF ALLAH BEN HOCINE alias SAIFALLAH BEN HASSINE alias SAYF ALLAH ‘UMAR BIN HASSAYN alias SEIFALLAH BEN AMOR BEN HASSINE alias SAYF ALLAH BIN HUSSAYN alias ABU IYYADH AL-TUNISI alias ABOU IYADH EL-TOUNSI alias ABU AYYAD AL-TUNISI alias ABOU AAYADH alias ABOU IYADH \n', 'Pendiri grup pejuang Tunisia dan pemimpin Anshar Al-Syariah di Tunisia. Perintah penangkapan telah dikeluarkan oleh pemerintah Tunisia sejak tanggal 23 Agustus 2013.', 'Orang', 'ILQ-206', 'Tunis, Tunisia', '08/11/1965', 'Tunisia', 'a) 60 Rue de la Libye, Hammam Lif, Ben Arous, Tunisia \nb) Libya', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (371, 'AKRAM TURKI HISHAN AL-MAZIDIH alias AKRAM TURKI AL-HISHAN alias ABU JARRAH alias ABU AKRAM\n', 'Kemungkinan tahun kelahiran lainnya 1979 dan 1975 . Dia adalah sepupu Ghazy Fezza Hishan\nAl Mazidih (QDi.277). Fasilitator keuangan Negara Islam di Irak dan Levant, terdaftar sebagai Al-Qaida di Irak (AQI)\n(QDe.115) sampai tahun 2015.\n', 'Orang', 'ILQ-058', '-', '00/00/0000', NULL, '- Deir ez-Zor Governorate, Suriah\n- Iraq', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (372, 'RAHMATULLAH KAKAZADA alias REHMATULLAH alias KAKAZADA alias MULLAH NASIR', 'tanggal lahir : 1968,Anggota Taliban yang bertanggung jawab di wilayah Provinsi Ghazni, Afganistan, pada Mei 2007. Kepala jaringan intelijen Taliban. Diyakini berada di wilayah perbatasan Afganistan/Pakistan;\n\n', 'Orang', 'ILT-065', 'Zurmat, Paktia, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (373, 'DINNO AMOR ROSALEJOS PAREJA alias JOHNNY PAREJA alias KHALIL PAREJA alias MOHAMMAD alias AKMAD alias MIGHTY alias RASH ', 'Anggota Gerakan Rajah Solaiman (QDe.128). Nama ayah adalah Amorsolo Jarabata Pareja. Nama Ibu Leonila Cambaya Rosalejos. Ulasan Sesuai dengan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 13 Mei 2010', 'Orang', 'ILQ-162', 'Cebu City, FIlipina', '19/07/1981', 'Filipina', 'Atimonana, Quezon, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (374, 'ABD AL-RAHMAN OULD MUHAMMAD AL-HUSAYN OULD MUHAMMAD SALIM alias ABDARRAHMANE OULD MOHAMED EL HOUCEIN OULD MOHAMED SALEM alias YUNIS AL-MAURITANI alias YOUNIS AL MAURITANI alias SHEIKH YUNIS AL-MAURITANI alias SHAYKH YUNIS THE MAURITANIAN alias SALIH THE MAURITANIAN alias MOHAMED SALEM alias YOUSSEF OULD ABDEL JELIL alias EL HADJ OULD ABDEL GHADER alias ABDEL KHADER alias ABOU SOULEIMANE alias CHINGHEITY', 'DOB: 1981. Pemimpin senior Al-Qaida (QDe.004) yang berbasis di Pakistan juga terkait dengan The Organisasi Al-Qaida di Maghreb Islam (QDe.014). Dicari oleh otoritas Mauritania', 'Orang', 'ILQ-161', 'Arab Saudi', '00/00/0000', 'Mauritania', '-na', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (375, 'SAIDULLAH JAN alias ABID KHAN', 'tanggal lahir :1982 ,Anggota senior jaringan Haqqani 2013, perekrut anggota, memberikan dukungan berupa transportasi pengangkut amunisi HQN ', 'Orang', 'ILT-064', 'Giyan, Paktika, Afganistan', '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (376, 'IBRAHIM SULEIMAN HAMAD AL-HABLAIN  alias BARAHIM SULIMAN H. AL HBLIAN alias ABU JABAL alias ABU-JABAL ', 'Nomor paspor Saudi Arabia F800691.\n\nYbs adalah ahli peledakan dan beroperasi untuk Abdallah Azzam Brigades. Dicari oleh pemerintah Saudi Arabia karena kejahatan terorisme. ', 'Orang', 'ILQ-205', 'Buraidah, Saudi Arabia ', '17/12/1984', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (377, 'QUDRATULLAH JAMAL alias HAJI SAHIB', 'dob 1963, Anggota Taliban Dewan Agung dan anggota Komisi Budaya Taliban pada 2010. Diyakini berada di wilayah perbatasan Afganistan/Pakistan;', 'Orang', 'ILT-063', 'Gardez, Paktia, Afganistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (378, 'ABD-AL-HAMID AL-MASLI alias ABD AL-HAMID MUHAMMAD ABD-AL-HAMID AL-MASLI alias ABD-AL-HAMID MUSALLI alias HAMID MASLI alias HAMZA AL-DARNAWI alias  HAMZAH AL-DARNAWI alias HAMZA DARNAWI alias HAMZAH DARNAWI alias HAMZAH DIRNAWI alias HAMZA DARNAVI alias HAMZA AL-DARNAVI alias ABDULLAH DARNAWI alias ABU-HAMZAH AL-DARNAWI', 'Pemimpin dan pelatih elektronika Al-Qaida dan\nBengkel bahan peledak yang memproduksi komponen alat peledak improvisasi\n', 'Orang', 'ILQ-057', 'Darnah, Libya atau Danar, Libya', '00/00/0000', 'Libya', 'Waziristan, Tribal yang dikelola secara federal, Pakistan\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (379, 'ANDERS CAMEROON OSTENSVIG DALE alias MUSLIM ABU ABDURRAHMAN alias ABU ABDURRAHMAN THE NORWEGIAN alias ABU ABDURRAHMAN THE MOROCCAN ', 'Anggota Al-Qaida di Semenanjung Arabia (Arabian Peninsula)', 'Orang', 'ILQ-204', 'Oslo, Norwegia', '19/10/1978', 'Norwegia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (380, 'GUL AGHA ISHAKZAI alias MULLAH GUL AGHA alias MULLAH GUL AGHA AKHUND alias HIDAYATULLAH alias HAJI HIDAYATULLAH alias HAYADATULLAH', 'dob 1972 Anggota Dewan Taliban yang mengkoordinasikan pengumpulan zakat dari Provinsi Baluchistan, Pakistan. Kepala Taliban Komisi Keuangan pertengahan 2013. Terkait dengan Mullah Mohammed Omar', 'Orang', 'ILT-062', 'Band-e Temur, Maiwand, Kandahar, Afganistan', '00/00/0000', NULL, 'Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (381, 'JAN MOHAMMAD MADANI IKRAM ', 'dob 1954-1955, Diyakini berada di wilayah perbatasan Afganistan/Pakistan', 'Orang', 'ILT-061', 'Siyachoy, Panjwai, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (382, 'TAREK BEN HABIB BEN AL-TOUMI AL-MAAROUFI alias ABU ISMAIL alias ABOU ISMAIL EL JENDOUBI alias ABOU ISMAIL AL DJOUNDOUBI', 'Nomor Pasport E590976, Kebangsaan Belgia ditarik pada 26 Januari 2009. Dalam tahanan di Nivelles, Belgia, pada 20 Oktober', 'Orang', 'ILQ-056', 'Ghardimaou, Tunisia ', '23/11/1965', 'Tunisia', 'Rue Léon Théodore Nomor 107/1, 1090 Jette, Brussels, Belgia;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (383, 'ABDUL RAHMAN AHMAD HOTTAK alias HOTAK SAHIB', 'pob 1957, Diyakini berada di perbatasan Afganistan dan Pakistan;\n\n', 'Orang', 'ILT-060', 'Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (384, 'HAMADA OULD MOHAMED EL KHAIRY alias HAMADA OULD MOHAMED LEMINE OULD MOHAMED EL KHAIRY alias OULD KHEIROU alias HAMAD EL KHAIRY alias ABOU QUMQUM', 'DOB: 1970. Kewarganegaraan tambahan: Mali. Nomor Paspor Mali A1447120. Pemimpin tawanan Mouvement L\'Unification et le Jihad en Afrique de l\'Ouest (MUJAO) (QDe.134). Telah memberikan dukungan logistik kepada Sahelian Kelompok Al Moulathamine, terkait dengan Organisasi Al-Qaida di Maghreb Islam (QDe.014). Internasional Surat perintah penahanan yang dikeluarkan oleh Mauritania. Nama ibu adalah Tijal Bint Mohamed Dadda', 'Orang', 'ILQ-160', 'Nouackchott, Mauritania', '00/00/0000', 'Mali,Mauritania', 'Gao, mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (385, 'AZZAM ABDULLAH ZUREIK AL-MAULID AL-SUBHI alias MANSUR AL-HARBI alias AZZAM AL-SUBHI alias AZAM ABDALLAH RAZEEQ AL MOULED ALSBHUA alias ABU MUSLEM AL-MAKY alias ABU SULIMAN AL-HARBI alias ABU ABDALLA AL-HARBI alias AZAM A.R. ALSBHUA', 'Nomor paspor Saudi Arabia C389664, diterbitkan tanggal 15 September 2000. \n\n\nTerkait dengan sebagian pemimpin senior Al-Qaida. Dicari oleh pemerintah Saudi Arabia karena kejahatan terorisme. Nama ayah adalah Abdullah Razeeq al Mouled al Sbhua. \n', 'Orang', 'ILQ-203', 'Al Baraka, Saudi Arabia ', '12/04/1976', 'Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (386, 'NAJIBULLAH HAQQANI HIDAYATULLAH alias NAJIBULLAH HAQANI', 'dob 1971, 	Sepupu Moulavi Noor Jalal, Diyakini berada di perbatasan Afganistan dan Pakistan', 'Orang', 'ILT-059', 'Moni, Shigal, Kunar', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (387, 'ABDERRAHMANE OULD EL AMAR alias AHMED EL TILEMSI alias ABDERRAHMANE OULD EL AMAR OULD SIDAHMED LOUKBEITI alias AHMAD OULD AMAR', 'DOB: antara 1977-1982. Alamat tambahan: Tabankort, Mali; In Khalil, Mali. 	Pemimpin tawanan Mouvement L\'Unification et le Jihad en Afrique de l\'Ouest (MUJAO) (QDe.134). Anggota Organisasi Al-Qaida di Maghreb Islam (QDe.014). Ditangkap pada bulan April 2005 di Mauritania, melarikan diri dari penjara Nouakchott pada tanggal 26 April 2006. Ditangkap kembali pada September 2008 di Mali dan dirilis pada tanggal 15 April 2009. Terkait dengan Mokhtar Belmokhtar (QDi.136).', 'Orang', 'ILQ-159', 'Tabankort, Mali', '00/00/0000', 'Mali', '- Gao, Mali\n- Tabankort, Mali \n- In Khalil, Mali \n- Al Moustarat, Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (388, 'HABIB BEN AHMED AL-LOUBIRI  alias AL-HABIB BEN AHMAD BEN AL-TAYIB AL-LUBIRI', NULL, 'Orang', 'ILQ-055', 'Manzal Tmim, Nabul, Tunisia', '17/11/1961', 'Tunisia', 'Salam Marnaq Ben Arous district, Sidi Mesoud, Tunisia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (389, 'HIDAYATULLAH alias ABU TURAB', 'dob 1968 ', 'Orang', 'ILT-058', 'Arghandab, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (390, 'TAYEB NAIL alias DJAAFAR ABOU MOHAMED alias ABOU MOUHADJIR alias MOHAMED OULD AHMED OULD ALI', 'DOB:1972. Dihukum in absentia oleh Pengadilan Aljazair pada tanggal 28 Mar. 1996. Surat perintah penangkapan internasional Aljazair nomor 04/09 dari 6 Jun 2009. 2009 yang dikeluarkan oleh Pengadilan Sidi Mhamed, Aljazair, Aljazair. Permintaan ekstradisi Aljazair nomor 2307/09 dari 3 Sep. 2009, dipaparkan Ke otoritas Malian. Nama ayah adalah Benazouz Nail. Nama Ibu adalah Belkheiri Oum El Kheir. Anggota The Organisasi Al-Qaida di Maghreb Islam (QDe.014)', 'Orang', 'ILQ-158', 'Faidh El Batma, Djelfa, Aljazair', '00/00/0000', 'Aljazair', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (391, 'YAHYA HAQQANI alias YAYA alias QARI SAHAB', 'dob 1978/1982 pob na', 'Orang', 'ILT-057', '-', '00/00/0000', 'Afganistan', 'Haqqani Madrassa di wilayah perbatasan Afghanistan/Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (392, 'MUHAMMAD JAMAL ABD-AL RAHIM AHMAD AL-KASHIF alias MUHAMMAD JAMAL ABDO AL-KASHIF alias MUHAMMAD JAMAL ABDO AL KASHEF alias MUHAMMAD JAMAL ABD-AL RAHIM AHMAD AL-KASHIF alias  MUHAMMAD JAMAL ABD-AL RAHIM AL-KASHIF alias MUHAMMAD JAMAL ABDU alias MUHAMMAD JAMAL alias MUHAMMAD JAMAL ABU AHMAD alias ABU AHMAD alias ABU JAMAL alias MUHAMMAD GAMAL ABU AHMED alias MOHAMMAD JAMAL ABDO AHMED alias MUHAMMAD JAMAL ABDUH alias MUHAMMAD JAMAL AHMAD ABDU alias RIYADH ', 'Belajar membuat bomdi Afganistan pada tahun 1980 dengan Al-Qaeda, dan juga sebagai komadan lapangan milter Egyptian Islamic Jihad, Nomor Pasport 6487, Mendirikan Jaringan Muhammad Jamal (MJN) (QDe.136) dan kamp pelatihan teroris di Mesir dan Libya. Melaksanakan kegiatan teroris MJN dengan dukungan dari Al-Qaida di Jazirah Arab (AQAP) (QDe.129). Dilaporkan terlibat dalam penyerangan Misi Amerika Serikat di Benghazi, Libya, pada 11 Sep. 2012. Dipimpin Sel teroris Nasr City di Mesir pada tahun 2012', 'Orang', 'ILQ-052', 'Kairo Mesir', '01/01/1964', 'Mesir', 'Mesir', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (393, 'AHMED ABDULLAH SALEH AL-KHAZMARI AL-ZAHRANI alias ABU MARYAM AL-ZAHRANI alias ABU MARYAM AL-SAUDI alias AHMED ABDULLAH S AL-ZAHRANI alias AHMAD ABDULLAH SALIH AL-ZAHRANI alias ABU MARYAM AL-AZADI alias AHMED BIN ABDULLAH SALEH BIN AL-ZAHRANI alias AHMED ABDULLAH SALEH AL-ZAHRANI AL-KHOZMRI', 'Nomor paspor Saudi Arabia E126785, dikeluarkan tanggal 27 Mei 2002 (daluarsa pada tanggal April 2007).\n \n\n\nAnggota senior Al-Qaida. Ybs masuk dalam pencarian pemerintah Saudi Arabia karena kejahatan terorisme. Nama ayah ybs adalah Abdullah Saleh al Zahrani. ', 'Orang', 'ILQ-202', 'Dammam, Saudi Arabia ', '15/09/1978', 'Arab Saudi', 'Suriah  ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (394, 'BOUBEKEUR BOULGHITI alias BOUBAKEUR BOULGHIT alias ABU BAKR AL-JAZIRI alias ABOU BAKR AL DJAZAIRI alias ABOU YASSER EL DJAZAIRI alias YASIR AL-JAZARI alias ABOU YASSER AL-JAZIRI', 'Kepala komite pendukung Al-Qaida;\nfasilitator Al-Qaida;\n', 'Orang', 'ILQ-049', 'Rouiba, Algiers, Aljazair', '13/02/1970', 'Aljazair,Palestina', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (395, 'ALI SAYYID MUHAMED MUSTAFA BAKRI alias ALI SALIM alias ABD AL-AZIZ AL-MASRI', 'Anggota Dewan Syura Al-Qaeda (QDe.004) dan Jihad Islam Mesir (QDe.003). Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 1 Juni 2010', 'Orang', 'ILQ-157', 'Beni-Suef, Mesir', '18/04/1966', 'Mesir', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (396, 'SIRAJUDDIN JALLALOUDINE HAQQANI alias SIRAJ HAQQANI alias SERAJUDDIN HAQANI alias SARAJ HAQANI alias KHALIFA', 'dob 1977', 'Orang', 'ILT-056', 'Danda, Miramshah, North Waziristan, Pakistan atau Khost, Afghanistan atau Neka, Paktika, Afganistan ', '00/00/0000', NULL, ' - Kela neighborhood/Danda neighborhood, Miramshah, North Waziristan, Pakistan;\n- Manba\'ul uloom Madrasa, Miramshah, North Waziristan, Pakistan;\n- Dergey Manday Madrasa, Miramshah, North Waziristan, Pakistan;\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (397, 'ABDUL HAKIM MURAD alias MURAD, ABDUL HAKIM HASIM alias MURAD, ABDUL HAKIM ALI HASHIM alias MURAD, ABDUL HAKIM AL HASHIM alias SAEED AKMAN alias SAEED AHMED alias HAKIM ALI AL-HASHEM MURAD', 'Nama ibu adalah Aminah Ahmad Sher al-Baloushi. Dalam tahanan Amerika Serikat. Review menurut Resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 25 Mei 2010', 'Orang', 'ILQ-156', 'Kuwait', '11/04/1968', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (398, 'ABU MOHAMMED AL-JAWLANI alias ABU MOHAMED AL-JAWLANI alias ABU MUHAMMAD AL-JAWLAN alias ABU MOHAMMED AL-JULANI alias ABU MOHAMMED AL-GOLANI alias ABU MUHAMMAD AL-GOLANI alias ABU MUHAMMAD ALJAWLANI alias MUHAMMAD AL-JAWLANI alias AMJAD MUZAFFAR HUSSEIN ALI AL-NAIMI alias SHAYKH AL-FATIH alias ABU ASHRAF', 'Warna kulit gelap. Tinggi: 1,70 m. Sejak Januari 2012, dia adalah Pemimpin Front Al-Nusrah untuk Rakyat Levant (QDe.137), sebuah kelompok yang berbasis di Suriah Terdaftar pada bulan Mei 2014, dan sebelumnya terdaftar sebagai alias Al-Qaida di Irak (AQI) (QDe.115) antara 30 Mei 2013 dan 13 Mei 2014. Berkaitan dengan Aiman Muhammed Rabi al-Zawahiri (QDi.006). Tahun lahir antara 1975-1979', 'Orang', 'ILQ-048', 'Suriah', '00/00/0000', 'Suriah', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (399, 'MOHAMMED YAHYA MUJAHID alias MOHAMMAD YAHYA AZIZ', 'Terkait dengan Lashkar-e- Tayyiba (QDe.118). Ditahan pada Juni 2009.', 'Orang', 'ILQ-155', 'Lahore, Punjab, Pakistan', '12/03/1961', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (400, 'MATI UR-REHMAN ALI MUHAMMAD alias MATI-UR REHMAN alias MATI UR REHMAN alias  MATIUR RAHMAN alias MATIUR REHMAN alias MATTI AL-REHMAN alias ABDUL SAMAD alias SAMAD SIAL alias ABDUL SAMAD SIAL alias USTAD TALHA alias QARI MUSHTAQ alias TARIQ alias HUSSAIN', 'Tinggi 157,4 cm Nama ayah: Ali Muhammad. Komandan operasional utama Lashkar i Jhangvi (LJ) (QDe.096). Terkait dengan Harakat-ul Jihad Islami. Tahun lahir 1977', 'Orang', 'ILQ-045', 'Chak number 36/DNB, Rajkan, Madina Colony, Bahawalpur District, Punjab Province, Pakistan', '00/00/0000', 'Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (401, 'FAIZULLAH KHAN NOORZAI alias HAJI FAIZULLAH NOOR alias FAIZULLAH NOORZAI AKHTAR MOHAMMED MIRA KHAN alias HAJJI FAIZULLAH KHAN NOORZAI alias HAJI FAIZUULAH KHAN NOREZAI alias HAJI FAIZULLAH KHAN alias HAJI FIAZULLAH alias HAJI FAIZULLAH NOORI alias HAJI PAZULLAH NOORZAI alias HAJI MULLAH FAIZULLAH', 'Tahun lahir:\na) 1966 \nb) 1961 \nc) antara tahun 1968 and 1970 \nd) 1962\n\nAlamat (informasi lainnya):\nKalay Rangin, Distrik Spin Boldak, Propinsi Kandahar, Afghanistan\n\nPendana Taliban terkemuka. Pada pertengahan tahun 2009 menyediakan senjata, amunisi, bahan peledak dan perlengkapan medis untuk pejuang Taliban, serta menggalang dana untuk Taliban, dan memberikan pelatihan untuk mereka, di wilayah perbatasan Afganistan/Pakistan. Sebelumnya pernah mengorganisir dan mendanai operasi Taliban ', 'Orang', 'ILT-134', 'Lowy Kariz, Distrik Spin Boldak, Propinsi Kandahar, Afghanistan', '00/00/0000', 'Afganistan', '- Jalan Boghra, Desa/Kampung Miralzei, Chaman, Propinsi Baluchistan, Pakistan \n- Kalay Rangin, Spin Boldak District, Kandahar Province, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (402, 'ABDUL RAUF ZAKIR alias QARI ZAKIR ', 'Tanggal lahir: antara tahun 1969 dan 1971 \n\nKepala operasi bunuh diri jaringan Haqqani, dibawah kepemimpinan Sirajuddin Jallaloudine Haqqani dan bertanggung jawab atas semua operasi di propinsi Kabul, Kunduz dan Baghlan. Ybs mengikuti pelatihan di luar negeri terkait serangan bunuh diri dan memberikan instruksi pembuatan perangkat peledak improvisasi (IED).', 'Orang', 'ILT-133', 'Propinsi Kabul, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (403, 'MOHAMMAD ZAHID alias JAN AGHA AHMADZAI alias ZAHID AHMADZAI ', 'Tanggal lahir: sekitar tahun 1971\n\nDiyakini berada di wilayah perbatasan Afganistan/Pakistan.', 'Orang', 'ILT-132', 'Propinsi Logar, Afghanistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (404, 'ABDUL RAHMAN ZAHED alias ABDUL REHMAN ZAHID ', 'Tanggal lahir:\nSekitar tahun 1963\n\nDiyakini berada di wilayah perbatasan Afganistan/Pakistan.', 'Orang', 'ILT-131', 'Distrik Kharwar, Propinsi Logar, Afghanistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (405, 'MUHAMMAD OMAR ZADRAN alias MOHAMMAD-OMAR JADRAN ', 'Tanggal lahir : 1958\n \nYbs merupakan pemimpin jaringan Haqqani (HQN) yang membawahi lebih dari 100 militan aktif di propinsi Khost, Afganistan per tahun 2013. Ybs terlibat dalam persiapan serangan terhadap pasukan Afghanistan dan pasukan internasional di Afganistan.', 'Orang', 'ILT-130', 'Desa Sultan Kheyl, Distrik Spera, Propinsi Khost, Afghanistan. ', '00/00/0000', NULL, 'Daerah perbatasan Afghanistan/Pakistan ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (406, 'UBAIDULLAH AKHUND YAR MOHAMMAD AKHUND alias OBAIDULLAH AKHUND alias OBAID ULLAH AKHUND    ', 'Tanggal lahir:\na) Sekitar tahun 1968 \nb) 1969\n\nTempat Lahir (Informasi lainnya):\na) Distrik Arghandab, Propinsi Kandahar, Afghanistan \nb) Distrik Zheray, Propinsi Kandahar, Afghanistan \n\nbs merupakan salah satu deputi dari Mullah Mohammed Omar dan anggota supreme council Taliban yang bertanggung jawab atas operasi militer. Ybs ditangkap pada tahun 2007 dan ditahan di Pakistan. Terkonfirmasi bahwa ybs meninggal pada bulan Maret 2010 dan dimakankan di Karachi, Pakistan. Ybs merupakan suku ', 'Orang', 'ILT-129', 'Sangisar village, Panjwai District, Kandahar Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (407, 'ENCEP NURJAMAN alias RIDUAN ISMUDIN alias HAMBALI', NULL, 'Orang', 'IDQ-001', NULL, '00/00/0000', 'Indonesia', 'Pamokolan Rt 2/Rw 4, desa Sukamanah, kecamatan Karangtengah, Cianjur, Jawa Barat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (408, 'SULAIMAN JASSEM SULAIMAN ALI ABO GHAITH alias ABO GHAITH', 'Nomor Pasport 849594, Meninggalkan Kuwait ke Pakistan pada 2001', 'Orang', 'ILQ-043', 'Kuwait', '14/12/1965', 'Kuwait', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (409, 'MUBARAK MUSHAKHAS SANAD MUBARAK AL-BATHALI alias MUBARAK MISHKHIS SANAD AL-BATHALI alias MUBARAK MISHKHIS SANAD AL-BADHALI alias MUBARAK AL-BATHALI alias MUBARAK MISHKHAS SANAD AL-BATHALI alias MUBARAK MISHKAS SANAD AL-BAZALI alias MOBARAK MESHKHAS SANAD AL-BTHALY alias ABU ABDULRAHMAN', 'Nomor paspor Kuwait Kuwait number 101856740, 002955916. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 14 Sep. 2009.', 'Orang', 'ILQ-154', 'Kuwait', '01/10/1961', 'Kuwait', 'Al-Salibekhat area, Kuwait (tempat tinggal pada Maret 2009)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (410, 'MOHAMMAD JAWAD WAZIRI ', 'Tanggal lahir: 1960\nTempat lahir (informasi lainnya): Sharana District, Paktia Province,\nAfghanistan \n\nDiyakini berada di wilayah perbatasan Afganistan/Pakistan, dan ybs merupakan suku wazir.', 'Orang', 'ILT-128', 'Jaghatu District, Maidan Wardak Province, Afghanistan atau Sharana, Paktia, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (411, 'KAMAL BEN MAOELDI BEN HASSAN AL-HAMRAOUI alias HAMROUI KAMEL BEN MOULDI alias HAMRAOUI KAMEL alias KAMEL alias KIMO', 'Nama ibu Khamisah al-Kathiri. Tunduk pada sebuah dekrit pengusiran, ditangguhkan pada 17 April 2007 oleh Pengadilan Manusia Eropa Hak Ditangkap kembali di Italia pada tanggal 20 Mei 2008. Tidak dapat diterima di wilayah Schengen, tanggal lahir lainnya 21 November 1977', 'Orang', 'ILQ-040', 'Tunisia', '21/10/1977', 'Tunisia', '- Via Bertesi Number 27, Cremona, Italia\n- Via Plebiscito Number, Cremona, Italia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (412, 'MOHAMMAD ESSA AKHUND ', 'dob 1958', 'Orang', 'ILT-029', 'Mial area, Spin Boldak, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (413, 'MOHAMMAD ABBAS AKHUND ', 'dob 1963', 'Orang', 'ILT-028', 'Khas Uruzgan, Uruzgan, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (414, 'MOHAMMAD HASSAN AKHUND', 'dob 1955-1958', 'Orang', 'ILT-027', 'Pashmul, Panjwai, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (415, 'OTHMAN AHMED OTHMAN AL-GHAMDI alias OTHMAN AL-GHAMDI alias UTHMAN AL-GHAMDI alias UTHMAN AL-GHAMIDI alias OTHMAN BIN AHMED BIN OTHMAN ALGHAMDI alias OTHMAN AHMED OTHMAN AL OMAIRAH alias UTHMAN AHMAD UTHMAN AL-GHAMDI alias OTHMAN AHMED OTHMAN AL-OMIRAH alias AL UMAIRAH AL-GHAMDI alias OTHMAN BIN AHMED BIN OTHMAN', 'nomor induk kependudukan Arab Saudi 1089516791;\nPanglima operasional Al-Qaida di Semenanjung Arab;\nterlibat dalam pengumpulan dana dan penimbunan senjata untuk operasi AQAP dan aktivitas di Yaman;\n', 'Orang', 'ILQ-038', 'Arab Saudi', '27/05/1979', 'Arab Saudi', 'Yaman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (416, 'MOHAMMAD AMAN AKHUND alias MOHAMMED AMAN alias MULLAH MOHAMMED OMAN alias MULLAH MOHAMMAD AMAN USTAD NOORZAI alias MULLAH MAD AMAN USTAD NOORZAI alias SANAULLAH', 'dob 1970', 'Orang', 'ILT-026', 'Bande Tumur, Maiwand, Kandahar, Afganistan', '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (417, 'DJAMEL MOUSTFA alias KALAD BELKASAM alias MOSTAFA DJAMEL alias MOSTEFA DJAMEL alias MUSTAFA DJAMEL alias BALKASAM KALAD alias BEKASAM KALAD alias BELKASAM KALAD alias DAMEL MOSTAFA alias DJAMAL MOSTAFA alias DJAMEL MOSTAFA alias FJAMEL MOUSTFA alias DJAMEL MUSTAFA alias ALI BARKANI alias MUSTAFA', 'Nama ayah adalah Djelalli Moustfa. Nama ibu Kadeja Mansore. Dideportasi dari Jerman ke Aljazair pada September 2007. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 19 Oktober 2009.\n149.	\n', 'Orang', 'ILQ-153', 'Tiaret, Alzajair', '28/09/1973', 'Aljazair', 'Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (418, 'ATTIQULLAH AKHUND ', 'dob 1953', 'Orang', 'ILT-025', 'Shah Wali Kot, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (419, 'ABDUL BARI AKHUND alias HAJI MULLAH SAHIB alias ZAKIR', 'dob 1953', 'Orang', 'ILT-024', 'Baghran, Helmand, Afganistan atau distrik Now Zad, Helmand, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (420, 'MOHAMED AMIN MOSTAFA ', 'Di bawah kontrol administratif di Italia dijadwalkan akan berakhir pada 15 Januari 2012. Review sesuai Resolusi Dewan Keamanan 1822 (2008) ditutup pada 21 Jun 2010', 'Orang', 'ILQ-152', 'Kirkuk, Irak', '11/10/1975', 'Irak', 'Via della Martinella 132, Parma, Italia (domisili)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (421, 'KHALID ABD AL-RAHMAN HAMD AL-FAWAZ alias KHALED AL-FAUWAZ alias KHALED A.\nAL-FAUWAZ alias KHALID AL-FAWWAZ alias KHALIK AL FAWWAZ alias KHALED AL-FAWWAZ alias KHALED AL FAWWAZ   alias KHALID ABDULRAHMAN H. AL FAWAZ', 'Nomor Pasport 456682, Diekstradisi Dari Inggris ke Amerika Serikat pada tanggal 5 Oktober 2012.', 'Orang', 'ILQ-036', 'Kuwait', '24/08/1962', 'Arab Saudi', 'United States of America', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (422, 'SALEH MOHAMMAD KAKAR AKHTAR MUHAMMAD ', 'dob 1961/1962', 'Orang', 'ILT-023', 'Nalghan, Panjwai, Kandahar, Afganistan', '00/00/0000', 'Afganistan', 'Daman, Kandahar, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (423, 'YUNOS UMPARA MOKLIS alias MUKLIS YUNOS alias MUKHLIS YUNOS alias SAIFULLAH MUKHLIS YUNOS alias SAIFULLA MOKLIS YUNOS alias HADJI ONOS', 'Dihukum mati tanpa pembebasan bersyarat di Filipina pada 23 Januari 2009 atas keterlibatannya dalam pemboman 30 Desember. 2000 di Manila, Filipina. Review berdasarkan resolusi Dewan Keamanan 1822 (2008) disimpulkan 25 Mei 2010.', 'Orang', 'ILQ-151', 'Lanao Del Sur, Filipina', '07/07/1966', 'Filipina', 'Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (424, 'AHMED JAN WAZIR AKHTAR MOHAMMAD alias AHMED JAN KUCHI alias AHMED JAN ZADRAN', 'dob 1963', 'Orang', 'ILT-022', 'Barlach, Qareh Bagh, Ghazni, Afganistan', '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (425, 'NOUREDDINE BEN ALI BEN BELKASSEM AL-DRISSI alias DRISSI NOUREDDINE alias ABOU ALI alias FAYCAL', 'Nomor Pasport L851940, Dibawah Kontrol administratif di Italia sampai 5 Mei 2010. Tidak dapat diterima di wilayah Schengen. Nama ibu Khadijah al-Drissi', 'Orang', 'ILQ-035', 'Tunis, Tunisia', '30/04/1964', NULL, 'Via Plebiscito 3, Cermona, Italy', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (426, 'MOHAMMAD AHMADI ', 'dob 1963', 'Orang', 'ILT-020', 'Distrik Daman Kandahar, Afganistan atau Pashmul, Panjwai, Kandahar, Afganistan  ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (427, 'DJAMEL LOUNICI alias JAMAL LOUNICI', 'Nama ayah adalah Abdelkader. Nama Ibu adalah Johra Birouh. Kembali dari Italia ke Aljazair dimana dia tinggal sejak November. 2008. Putra dalam hukum Othman Deramchi (QDi.164). Review sesuai resolusi Dewan Keamanan 1822 (2008) tersebut Disimpulkan pada tanggal 27 Juli 2010', 'Orang', 'ILQ-147', 'Algiers, Alzajair', '01/02/1962', 'Aljazair', 'Aljazair', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (428, 'SALEM NOR ELDIN AMOHAMED AL-DABSKI alias ABU AL-WARD alias  ABDULLAH RAGAB alias ABU NAIM alias ABDALLAH AL- MASRI', 'Nomor Pasport 345751, Nama Ibu Kalthoum Abdul Salam al-Shaftari. Anggota senior Kelompok Pertarungan Islam Libya (QDe.011) Dan anggota Al-Qaida (QDe.004). DOB : 1963', 'Orang', 'ILQ-032', 'Tripoli, Libya', '00/00/0000', 'Libya', 'Bab Ben Ghasheer, Tripoli, Libyan Arab Jamahiriya', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (429, 'ANWAR NASSER ABDULLA AL-AULAQI alias ANWAR AL-AULAQI alias ANWAR AL-AWLAKI alias ANWAR AL-AWLAQI alias ANWAR NASSER AULAQI alias ANWAR NASSER ABDULLAH AULAQI alias ANWAR NASSER ABDULLA AULAQI', 'dikabarkan sudah meninggal pada 30 September 2011 di Yaman;', 'Orang', 'ILQ-029', 'Las Cruces, New Mexico, United States of America', '21/04/1971', 'Amerika Serikat,Yaman', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (430, 'MOHAMED BEN BELGACEM BEN ABDALLAH AL-AOUADI alias MOHAMED BEN BELKACEM AOUADI alias FATHI HANNACHI', 'nomor paspor l 191609;\nnomor kartu penduduk 04643632;\nKepala keamanan Sayap Ansar al-Syari\'ah di Tunisia (AAS-T) (QDe.143). Nama Ibu adalah Ourida Bint Mohamed. Dideportasi dari Italia ke Tunisia pada 1 Desember 2004. Ditangkap di Tunisia pada Agustus 2013. Dipenjara di penjara sipil Burj al-\'Amiri Pada 13 Sep. 2013\n', 'Orang', 'ILQ-026', 'Tunis, Tunisia', '11/12/1974', 'Tunisia', '50th street, number 23, Zehrouni, Tunis, Tunisia;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (431, 'RUBEN PESTANO lS LAVILLA JR alias REUBEN LAVILLA alias SHEIK OMAR alias MILE D LAVILLA alias REYMUND LAVILLA alias RAMO LAVILLA alias MIKE DE LAVILLA alias ABDULLAH MUDDARIS alias ALI OMAR alias OMAR LAVILLA alias OMAR LABELLA alias SO alias ESO alias JUNJUN', 'nomor paspor Filipina MM611523; EE947317; P421967. Pemimpin spiritual Gerakan Rajah Solaiman (QDe.128). Terkait dengan Khadafi Abubakar Janjalani (QDi.180). Dalam penahanan di Filipina per Mei 2011. Review sesuai dengan Dewan Keamanan Resolusi 1822 (2008) ditutup pada 13 Mei 2010', 'Orang', 'ILQ-146', 'Sitio Banga Maiti, Barangay Tranghawan, Lambunao, Iloilo, Filipina', '04/10/1972', 'Filipina', '10th Avenue, Caloocan City, Philippines', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (432, 'MEHREZ BEN MAHMOUD BEN SASSI AL-AMDOUNI alias FABIO FUSCO alias MOHAMED HASSAN alias MEHEREZ HAMDOUNI alias AMDOUNI MEHREZ BEN TAH alias MEHEREZ BEN AHDOUD BEN AMDOUNI alias ABU THALE', 'Nama ayah adalah Mahmoud ben Sasi. Nama ibu adalah Maryam binti Al-Tijani Tidak dapat diterima di daerah Schengen, Pasport Tunisia G737411 , tanggal lahir lainnya 25 Mei 1968, 14 Juli 1969', 'Orang', 'ILQ-025', 'Asima-Tunis, Tunisia', '18/12/1969', 'Tunisia', 'Italia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (433, 'ZAKI-UR-REHMAN LAKHVI alias ZAKIR REHMAN LAKVI alias ZAKI UR-REHMAN LAKVI alias KAKI UR-REHMAN alias ZAKIR REHMAN alias ABU WAHEED IRSHAD AHMAD ARSHAD alias CHACHAJEE', 'Alamat tambahan adalah Chak No. 18/IL, Rinala Khurd, Tehsil Rinala Khurd, District Okara, Pakistan. Kepala operasi Lashkar-e-Tayyiba (terdaftar di bawah nomor referensi tetap (QDe.118)', 'Orang', 'ILQ-145', 'Okara, Pakistan', '30/12/1960', 'Pakistan', '- Barahkoh, P.O. DO, Tehsil and District Islamabad, Pakistan.\n- Chak No. 18/IL, Rinala Khurd, Tehsil Rinala Khurd, District Okara, Pakistan. ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (434, 'MOHAMED LAHBOUS alias MOHAMED ENNOUINI alias HASSAN alias HOCINE', 'DOB: tahun 1978. \nAnggota dari Mouvement pour l\'Unification et le Jihad en Afrique de L\'Ouest (MUJAO). Dilaporkan meninggal pada tanggal 14 Februari 2018. ', 'Orang', 'ILQ-144', 'Mali', NULL, 'Mali', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (435, 'ABDUR REHMAN alias ABDUL REHMAN alias ABD UR-REHMAN alias ABDUR RAHMAN alias ABDUL REHMAN SINDHI alias ABDUL REHMAN AL-SINDHI alias ABDUR RAHMAN AL-SINDHI alias ABDUR REHMAN SINDHI alias ABDURAHMAN SINDHI alias ABDULLAH SINDHI alias ABDUR REHMAN MUHAMMAD YAMIN', 'nomor Passport Pakistan CV9157521, Telah menyediakan fasilitasi dan keuangan Layanan ke Al-Qaida (QDe.004). Terkait dengan Harakatul Jihad Islami (QDe.130), Jaish-I-Mohammed (QDe.019), Dan Al-Akhtar Trust International (QDe.121)', 'Orang', 'ILQ-011', 'Mirpur Khas, Pakistan', '03/10/1965', 'Pakistan', 'Karachi, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (436, 'ABDELKADER LAAGOUB alias RACHID', 'nomor paspor Maroko D-379312. Kode Fiskal Italia: LGBBLK66D23Z330U. \nNama ayah adalah Mamoune Mohamed. Nama ibu adalah Fatna Ahmed.  Review menurut Resolusi Dewan Keamanan 1822 (2008) disimpulkan pada tanggal 8 Juni 2010.\n\n', 'Orang', 'ILQ-143', 'Casablanca, Maroko', '23/04/1966', 'Maroko', 'Number 4, Via Europa, Paderno Ponchielli, Cremona, Italia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (437, 'MUSTAFA HAJJI MUHAMMAD KHAN alias HASSAN GHUL alias HASSAN GUL alias HASAN GUL alias KHALID MAHMUD alias AHMAD SHAHJI alias MUSTAFA MUHAMMAD alias ABU GHARIB AL-MADANI alias ABU-SHAIMA alias ABU SHAYMA', 'DOB 1977. 	Tempat tanggal lahir tambahan di Sangrar, Sindh Province, Pakistan 1976. Kewarganegaraan tambahan adalah Arab Saudi. Fasilitator, kurir, dan al Qaida (QDe.004) Operasi Pada tahun 2010, kegiatan difasilitasi untuk operasi Al-Qaeda yang berbasis di Pakistan\n\n', 'Orang', 'ILQ-141', 'Al-madinah, Arab Saudi atau Sangrar, Sindh, Pakistan ', '00/00/0000', 'Pakistan,Arab Saudi', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (438, 'DJAMEL AKKACHA alias YAHIA ABOU EL HOUMMAM alias YAHIA ABOU EL HAMMAM', 'Koordinator kelompok organisasi Al-Qaeda di Maghreb Islam Mali utara, nama ayah Slimane, nama ibu Akroif Khadidja', 'Orang', 'ILQ-022', 'Alzajair', '09/05/1978', 'Aljazair', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (439, 'DAWOOD IBRAHIM KASKAR alias DAWOOD EBRAHIM alias SHEIKH DAWOOD HASSAN alias ABDUL HAMID ABDUL AZIZ alias ANIS IBRAHIM alias AZIZ DILIP alias DAUD HASAN SHAIKH IBRAHIM KASKAR alias DAUD IBRAHIM MEMON KASKAR alias DAWOOD HASAN IBRAHIM KASKAR alias DAWOOD IBRAHIM MEMON alias DAWOOD SABRI alias KASKAR DAWOOD HASAN alias SHAIKH MOHD ISMAIL ABDUL REHMAN alias DOWOOD HASSAN SHAIKH IBRAHIM alias DAWOOD BHAI alias IBRAHIM SHAIKH MOHD ANIS alias SHAIKH ISMAIL ABDUL alias HIZRAT alias SHEIKH FAROOQI alias BADA SETH alias BADA BHAI alias IQBAL BHAI alias MUCCHAD alias HAJI SAHAB', 'alamat tambahan House Nu 37 - 30th Street - defence, Housing Authority, Karachi, Pakistan, Palatial bungalow in the hilly area of Noorabad in Karachi, Pakistan. Nomor paspor India K560098, M110522, F823692, A501801, K560098, V57865, P537849, A717288. Nomor Paspor Pakistan  G866537, C-267185, H-123259, G-869537, KC-285901', 'Orang', 'ILQ-140', 'Kher, Ratnagiri, Maharashtra, India', '26/12/1955', 'India', '- Karachi, Pakistan (White House, Near Saudi Mosque, Clifton)\n- House Nu 37 - 30th Street - defence, Housing Authority, Karachi, Pakistan, Palatial bungalow in the hilly area of Noorabad in Karachi, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (440, 'SAYYED GHIASSOUDDINE AGHA alias SAYED GHIAS alias SAYED GHIASUDDIN SAYED GHOUSUDDIN alias SAYYED GHAYASUDIN', 'dob 1961', 'Orang', 'ILT-019', 'Kohistan, Faryab, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (441, 'TARIQ ANWAR EL SAYED AHMED alias HAMDI AHMAD FARAG alias AMR AL-FATIH FATHI alias TAREK ANWAR EL SAYED AHMAD', NULL, 'Orang', 'ILQ-019', 'Alexandria, Mesir', '15/03/1963', 'Mesir', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (442, 'SAYED MOHAMMAD AZIM AGHA alias SAYED MOHAMMAD AZIM AGHA alias AGHA SAHEB', 'dob 1966/1969', 'Orang', 'ILT-018', 'Panjwai, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (443, 'JANAN AGHA alias ABDULLAH JAN AGHA ', 'dob 1953/1958', 'Orang', 'ILT-017', 'Tirin Kot, Uruzgan, Afganistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (444, 'MEHDI BEN MOHAMED BEN MOHAMED KAMMOUN alias SALMANE', 'Nomor Passport Tunisia M307707. Kode Fiskal Italia: KMMMHD68D03Z352N. Dideportasi dari Italia ke Tunisia pada tanggal 22 Juli 2005. Melayani hukuman delapan tahun penjara di Tunisia untuk keanggotaan Sebuah organisasi teroris di luar negeri pada Januari 2010. Review sesuai resolusi Dewan Keamanan 1822 (2008) tersebut Disimpulkan pada 21 Jun 2010', 'Orang', 'ILQ-138', 'Tunis, Tunisia', '03/04/1968', 'Tunisia', 'Visa Masina Number 7, Milan, Italia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (445, 'AHMAD ZIA AGHA alias ZIA AGHA alias NOOR AHMAD alias NOOR AHMED alias SIA AGHA SAYEED ', 'dob 1974', 'Orang', 'ILT-016', 'Maiwand, Kandahar, Afganistan', '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (446, 'ABDUL RAHMAN AGHA ', 'dob 1958', 'Orang', 'ILT-015', 'Arghandab, Kandahar, Afganistan', '00/00/0000', 'Afganistan,Pakistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (447, 'SALIM Y SALAMUDDIN JULKIPLI alias KIPLI SALI alias JULKIPLI SALIM', 'Dalam penahanan di Filipina pada Mei 2011. Review sesuai resolusi Dewan Keamanan 1822 (2008) tersebut Disimpulkan pada tanggal 25 Mei 2010', 'Orang', 'ILQ-137', 'Tulay, Jolo Sulu, Filipina', '20/06/1967', 'Filipina', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (448, 'ADAM KHAN ACHEKZAI alias MAULAVI ADAM KHAN alias MAULAVI ADAM ', 'dob:1970/1971/1972/1973/1974', 'Orang', 'ILT-014', 'Kandahar, Afganistan ', '00/00/0000', 'Pakistan', 'Chaman, Baluchistan, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (449, 'FARHAD KANABI AHMAD alias KAUA OMAR ACHMED alias KAWA HAMAWANDI alias KAWA OMAR AHMED', 'Nomor Pasport Jerman A 0139243, nama ibu Farida Hussein Khadir', 'Orang', 'ILQ-017', 'Arbil, Irak', '01/07/1971', 'Irak', 'Arbil – Qushtuba – house no. SH 11, alley 5380, Iraq;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (450, 'ABDUL SAMAD ACHEKZAI alias ABDUL SAMAD', 'dob 1970', 'Orang', 'ILT-013', 'Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (451, 'SHAMS UR-RAHMAN ABDUL ZAHIR alias SHAMSURRAHMAN alias SHAMS-U-RAHMAN alias SHAMSURRAHMAN ABDURAHMAN alias SHAMS UR-RAHMAN SHER ALAM', 'dob 1969', 'Orang', 'ILT-012', 'Waka Uzbin,Sarobi, Kabul, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (452, 'IYAD AG GHALI  alias SIDI MOHAMED ARHALI', 'pendiri dan pemimpin ansar Eddine;\nanggota tuareg ifogas tribe;\nTerkait dengan organisasi al - Qaeda di Maghreb;\nMouvement pour l\'Unification et le Jihad en Afrique de l\'Ouest (MUJAO) (QDe.134). Nama ayah adalah Ag Bobacer Arhali, nama ibu adalah Rhiachatou Wallet Sidi\nTahun lahir lainnya 1954\n', 'Orang', 'ILQ-016', 'Abeibara, Kidal, Mali', '01/01/1958', 'Mali', 'Mali', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (453, 'SAYED ESMATULLAH ASEM ABDUL QUDDUS alias ESMATULLAH ASEM alias ASMATULLAH ASEM alias SAYED ESMATULLAH ASEM  ', NULL, 'Orang', 'ILT-011', 'Qalayi Shaikh, Chaparhar District, Nangarhar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (454, 'AHMAD TAHA KHALID ABDUL QADIR ', NULL, 'Orang', 'ILT-010', 'Nangarhar, Afghanistan atau Khost, Afganistan atau Siddiq Khel, Naka, Paktia, Afganistan  ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (455, 'ABDUL HAI HAZEM ABDUL QADER alias ABDUL HAI HAZEM', 'dob 1971', 'Orang', 'ILT-009', 'Pashawal Yargatoo, Andar, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '- Iltifat, Shakardara, Kabul, Afganistan\n- Puli Charkhi Area, Nomor 9, Kabul', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (456, 'ABDUL SATAR ABDUL MANAN  alias HAJI ABDUL SATTAR BARAKZAI alias HAJI ABDUL SATAR alias HAJI SATAR BARAKZAI alias ABDULASATTAR', 'dob 1964', 'Orang', 'ILT-008', 'Mirmandaw, Nahr-e Saraj, Helmand, Afganistan', '00/00/0000', NULL, '- Kachray Road, Pashtunabad, Quetta, Baluchistan, Pakistan\n- Nasrullah Khan Chowk, Pashtunabad Area, Baluchistan, Pakistan\n- Chaman, Baluchistan, Ayno Mina 0093, Kandahar, Afganistan\n- Abdul Satar Food Shop, Ayno Mina 0093, Kandahar, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (457, 'ALY SOLIMAN MASSOUD ABDUL SAYED alias IBN EL QAIM alias MOHAMED OSMAN alias ADAM', 'Anggota Kelompok Pertarungan Islam Libya (QDe.011). Nomor Pasport No. 96/184442', 'Orang', 'ILQ-010', 'Tripoli, Libya', '00/00/0000', 'Libya', 'Ghout El Shamal, Tripoli, Libyan Arab Jamahiriya;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (458, 'AMIR ABDULLAH alias AMIR ABDULLAH SAHIB', 'dob 1972', 'Orang', 'ILT-007', 'Paktika, Afganistan', '00/00/0000', 'Afganistan', 'Karachi, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (459, 'ABDUL MANAN AGHA alias ABDUL MANAN alias ABDUL MAN\'AM SAIYID alias SAIYID ABD AL-MAN', 'Pakistan', 'Orang', 'ILQ-009', '-', NULL, 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (460, 'ABDUL GHAFAR QURISHI ABDUL GHANI alias ABDUL GHAFFAR QURESHI', 'dob: 1970/1967', 'Orang', 'ILT-006', 'Turshut, Wursaj, Takhar, Afganistan', '00/00/0000', 'Afganistan', 'Khairkhana Section Nomor 3, Kabul, Afganistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (461, 'ZAFAR IQBAL alias ZAFFER IQBAL alias MALIK ZAFAR IQBAL SHEHBAZ alias MALIK ZAFAR IQBAL SHAHBAZ alias MALIK ZAFAR IQBAL alias ZAFAR IQBAL CHAUDHRY alias MUHAMMAD ZAFAR IQBAL', 'Pemimpin senior dan pendiri Lashkar-e-Tayyiba (QDe.118) (LeT) yang mana Telah memegang berbagai posisi pemimpin senior di LeT dan organisasi terdepannya, Jamaat-ud-Dawa (JUD) (terdaftar sebagai Alias dari LeT). Sampai tahun 2010, membawahkan departemen keuangan LeT / JUD, direktur departemen pendidikan dan Presiden sayap medisnya. Judul lainnya: Profesor', 'Orang', 'ILQ-132', '-', '04/10/1953', 'Pakistan', 'Masjid Al-Qadesia, 4 Lake Road, Lahore, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (462, 'NAZIR MOHAMMAD ABDUL BASIR alias NAZAR MOHAMMAD', 'dob 1954', 'Orang', 'ILT-005', 'Malaghi, Kunduz, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (463, 'MOSTAFA KAMEL MOSTAFA IBRAHIM alias MUSTAFA KAMEL MUSTAFA alias ADAM RAMSEY EAMAN alias KAMEL MUSTAPHA MUSTAPHA alias MUSTAPHA KAMEL MUSTAPHA alias ABU HAMZA alias MOSTAFA KAMEL MOSTAFA alias ABU HAMZA AL-MASRI alias ABU HAMZA alias ABU HAMZA AL-MISRI', '	Diekstradisi dari Inggris ke Amerika Amerika Serikat pada tanggal 5 Oktober 2012. Dihukum karena tuduhan terorisme oleh pengadilan di Amerika Serikat pada bulan Mei 2014. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 22 Apr. 2010', 'Orang', 'ILQ-131', 'Alexandria, Mesir', '15/04/1958', 'Inggris', 'Amerika Serikat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (464, 'ABDUL QADEER BASIR ABDUL BASEER alias ABDUL QADIR alias AHMAD HAJI alias ABDUL QADIR HAQQANI alias ABDUL QADIR BASIR', NULL, 'Orang', 'ILT-004', 'Surkh Rod, Nangarhar, Afganistan atau Hisarak, Nangarhar, Afganistan ', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (465, 'MAJEED ABDUL CHAUDHRY alias MAJEED, ABDUL alias MAJEED CHAUDHRY ABDUL alias MAJID, ABDUL', 'Tahun lahir lainnya 1938', 'Orang', 'ILQ-006', '-', '15/04/1939', 'Pakistan', '- ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (466, 'ABD ALLAH MOHAMED RAGAB ABDEL RAHMAN  alias ABU AL-KHAYR alias AHMAD HASAN alias ABU JIHAD', 'Anggota Jihad Islam Mesir (QDe.003). Review sesuai dengan Dewan Keamanan Resolusi 1822 (2008) disimpulkan pada tanggal 1 Juni 2010', 'Orang', 'ILQ-005', 'Kafr Al-Shaykh, Mesir ', '03/11/1957', 'Mesir', 'Diyakini di Pakistan atau Afganistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (467, 'ISNILON TOTONI HAPILON alias ISNILON HAPILUN alias ISNILUN HAPILUN alias TUAN ISNILON alias ABU MUSAB alias SALAHUDIN ', 'Tambahan tanggal lahir 10 Mar. 1967. Review sesuai resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 8 Jun. 2010.', 'Orang', 'ILQ-124', 'Bulanza, Lantawan, Basilan, Filipina', '18/03/1966', 'Filipina', '- Basilan, Filipina \n- Lanao del Sur, Filipina', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (468, 'ABDUL GHANI BARADAR ABDUL AHMAD TURK alias MULLAH BARADAR AKHUND alias ABDUL GHANI BARADAR', 'dob:1968\n - Ditangkap pada Februari 2010, dan ditahan di Pakistan;\n- Komandan militer Taliban dan anggota dewan Taliban Quetta pada Mei 2007.\n', 'Orang', 'ILT-003', 'Yatimak, Dehrawood, Uruzgan, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (469, 'MOHAMMAD TAHIR HAMMID HUSSEIN alias ABDELHAMID AL KURDI', 'perintah deportasi dikeluarkan oleh otoritas Italia pada tanggal 18 Oktober 2004. Otoritas Italia menetapkan ybs sebagai buronan pada bulan September 2007.', 'Orang', 'ILQ-123', 'Poshok, Irak', '01/11/1975', 'Irak', 'Sulaymaniya, Irak', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (470, 'NASHWAN ABD AL-RAZZAQ ABD AL-BAQI  alias ABDAL AL-HADI AL-IRAQI alias ABD AL-HADI AL-IRAQI alias OMAR UTHMAN MOHAMMED alias ABDUL HADI ARIF ALI alias ABU ABDALLAH alias ABDUL HADI AL-TAWEEL alias ABD AL-HADI AL-ANSARI alias ABD AL-MUHAYMAN alias ABU AYUB', 'Bergabung dengan Al-Qaida pada tahun 1996 dan pada saat itu menjadi penghubung penting Taliban di Afghanistan. Menerima uang dari Ansar al-Islam (QDe.098) untuk melakukan serangan di Kirkuk Dan Ninveh di Irak selama musim semi dan musim panas 2005. Pejabat senior Al-Qaida. Dalam tahanan Amerika Serikat, sampai Agustus 2014. Nama ayah: Abd al-Razzaq Abd al-Baqi. Nama Ibu: Nadira Ayoub Asaad. DOB : 1961', 'Orang', 'ILQ-001', 'Mosul, Irak', '00/00/0000', 'Irak', '- ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (471, 'AZIZIRAHMAN ABDUL AHAD  ', 'DOB: 1972', 'Orang', 'ILT-002', 'Shega, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (472, 'SALIM AHMAD SALIM HAMDAN alias SAQR AL-JADDAWI alias SAQAR AL JADAWI alias SAQAR ALJADAWI alias SALEM AHMED SALEM HAMDAN', 'DOB 1965. Tambahan tempat lahir Al-Mukala, Yemen . nomor paspor Yaman 00385937; Sopir dan Pengawal pribadi ke Usama bin Laden (almarhum) dari tahun 1996 sampai 2001. Ditransfer dari tahanan Amerika Serikat Ke Yaman pada November 2008. Tinjauan sesuai dengan resolusi Dewan Keamanan 1822 (2008) disimpulkan pada 8 Juli 2010', 'Orang', 'ILQ-122', 'Al-Mukalla atau Al-Mukala, Yaman', '00/00/0000', 'Yaman', 'Shari Tunis, Sana\'a, Yemen', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (473, 'MUHAMMAD SHOLEH IBRAHIM alias MOHAMMAD SHOLEH IBRAHIM\n', '- Menjabat sebagai Amir JAT (JAT), dan mendukung Islamic State in Iraq and the Levant (ISIL);\n- Ybs lahir pada tahun 1958', 'Orang', 'IDQ-022', 'Demak', NULL, 'Indonesia', '- ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (474, 'AMOR MOHAMED GHEDEIR alias ABDELHAMID ABOU ZEID alias YOUCEF ADEL alias ABOU ABDELLAH alias ABID HAMMADOU', 'DOB lainnya: tahun lahir 1958.\nTerkait dengan Organisasi Al-Qaida di Maghreb Islam (QDe.014). Lokasi ybs di Northern  per bulan Juni 2008. Nama Ibu Benarouba Bachira. Nama ayah Mabrouk. Dia menggunakan identitas Abid Hammadou, yang diduga meninggal di Chad pada tahun 2004. Dilaporkan meninggal pada tanggal 24 Februari 2013. ', 'Orang', 'ILQ-121', 'Deb-Deb, Amenas, Wilaya of Illizi, Aljazair', '12/12/1965', 'Aljazair', 'NA', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (475, 'ABDUL ROSYID RIDHO BAASYIR ', 'anak dari Abu Bakar Baasyir yang merupakan pendiri Jemaah Islamiyah (JI) dan Jemaah Anshorut Tauhid (JAT) yang saat ini menjadi Napi tindak pidana terorisme di LP Nusakambangan. ', 'Orang', 'IDQ-009', 'Sukoharjo', '31/01/1974', 'Indonesia', 'Pondok Pesantren Al Wayain Ngrandu, Sumber Agung, Magetan, Jawa Timur, Indonesia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (476, 'ABDUL AZIZ ABBASIN alias ABDUL AZIZ MAHSUD  ', 'Komandan utama di Jaringan Haqqani (TAe.012) di bawah Sirajuddin Jallaloudine Haqqani (TAi.144).\nGubernur Bayangan Taliban untuk Distrik Orgun, Provinsi Paktika pada awal 2010. \nMengoperasikan sebuah kamp pelatihan untuk non-\nPejuang Afghanistan di Provinsi Paktika. \nTelah terlibat dalam pengangkutan senjata ke Afghanistan.', 'Orang', 'ILT-001', 'Sheykhan, Pirkowti Area, Orgun, Paktika, Afganistan', '00/00/0000', NULL, '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (477, 'SAID ARIF alias SAID MOHAMED ARIF alias OMAR GHARIB alias ABDERAHMANE alias ABDALLAH AL-JAZAIRI alias SLIMANE CHABANI alias SOULEIMAN ', 'Seorang anggota veteran \'Jaringan Chechnya\' (tidak terdaftar) dan kelompok teroris lainnya.\nDia dihukum karena peran dan keanggotaannya di \'Jaringan Chechnya\' di Prancis pada tahun 2006. Bergabung dengan Jabhat al-Nusrah,\nTerdaftar sebagai Front Al-Nusrah untuk Rakyat Levant (QDe.137) pada bulan Oktober 2013', 'Orang', 'ILQ-200', 'Oran, Al-jazair', '25/06/1964', 'Aljazair', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (478, 'WIJI JOKO SANTOSO alias WIJIJOKO SANTOSO alias ABU SEIF AL-JAWI alias ABU SEIF alias WIJI JOKO SANTOSO\n', '- Nomor paspor: A2823222;\n- Kepala Divisi Hubungan Luar Negeri Jemaah Islamiyah;\n- Terkait dengan Hilal Ahmar Society Indonesia (HASI);\n', 'Orang', 'IDQ-020', 'Rembang, Jawa Tengah', '14/07/1975', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (479, 'BAMBANG SUKIRNO alias PAK ZAHRA alias ABU ZAHRA\n', '- nomor paspor A2062513\n- pemimpin senior Jemaah Islamiyah;\n- pemimpin Hilal Ahmar Society Indonesia (HASI);\n', 'Orang', 'IDQ-019', 'Indonesia', '05/04/1975', 'Indonesia', '- ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (480, 'ANGGA DIMAS PERSHADA alias ANGGA DIMAS PERSADA alias ANGGA DIMAS PERSADHA alias ANGGA DIMAS PRASONDHA alias ANGGA DIMAS PESHADA\n', '-	Nomor paspor: W344982;\n-       anggota Jemaah Islamiyah;\n-	pemimpin Hilal Ahmar Society Indonesia (HASI);\n', 'Orang', 'IDQ-018', 'Jakarta', '04/03/1985', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (481, 'HISYAM ALIZEINN alias UMAR alias ABU SYEKH alias MIKE alias ARSALAN alias ABDUL KARIM alias UMAR PATEK alias UMAR KECIL alias UMAR ARAB alias UMAR SYEH alias ZACKY alias ANIS ALAWI JAFAR\n', 'saat ini berada di lapas Nusakambangan, divonis 20 Tahun atas perkara tindak pidana Terorisme;\n\n', 'Orang', 'IDQ-017', 'Pemalang', '20/07/1966', 'Indonesia', 'Jln. Semeru No.11, Kelurahan Mulyoharjo, Kec. Pemalang, Kab. Pemalang, Jawa Tengah ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (482, 'THORIQUN alias ABU RUSYDAN alias HAMZAH', '- 	NIK 3319011608600004;\n-	sebagai Amir pada struktur Jemaah Islamiyah (JI) terbaru. (BAP SUYATA alias SALIM alias JIMY alias YAHYA alias MUKTI WIBOWO alias KHOLID);\n-	diputus bersalah dalam perkara terorisme dengan hukuman penjara 3 (tiga) tahun 6 (enam) bulan berdasarkan putusan pengadilan No: 1395/PID.B/2003/PN.JKT.SLT, tanggal 25 Februari 2004. Telah selesai menjalni hukuman;\n', 'Orang', 'IDQ-016', 'Kudus', '16/08/1960', 'Indonesia', 'Prambatan Kidul Rt. 007/002 Kel. Prambatan Kidul, Kec. Kaliwungu, Kab. Kudus,Jawa Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (483, 'TAUFIK RIFKI ', '-  NIK 3372021908740001;\n-  ditangkap di Filipina pada tanggal 2 Oktober 2003 terkait terorisme, saat ini berada di penjara Camp Bagong Diva (SICA) Filipina;\n', 'Orang', 'IDQ-015', 'Surakarta', '19/08/1974', 'Indonesia', 'Jogosuran Dusun Danukusuman RT 3/6 Kode Pos 57156 Kel. Danukusuman, Kec. Serengan, Kota Surakarta, Jawa Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (484, 'ARIS MUNANDAR', '-	NIK 3309100101719002;\n-	paspor nomor : U. 621213 yang dikeluarkan di Boyolali;\n', 'Orang', 'IDQ-014', 'Boyolali', '01/01/1971', 'Indonesia', 'Gejugan Rt. 010/002 Kel. Ngaglik, Kec. Sambi, Kab. Boyolali, Jawa Tengah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (485, 'GUN GUN RUSMAN GUNAWAN ', '- belajar di ABU BAKAR ISLAMIC UNIVERSITY di Karachi Pakistan;\n- adik kandung dari ENCEP NURJAMAN alias RIDUAN alias HAMBALI;\n- ditangkap 1 September 2003 oleh pemerintah Pakistan atas keterlibatan dengan aksi terorisme, telah selesai menjalani hukuman;\n', 'Orang', 'IDQ-013', 'Cianjur', '06/07/1977', 'Indonesia', 'KH Salaeh Rt. 2 Rw. 4 Pemokolan Sukamanah, Cianjur, Jawa Barat, Indonesia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (486, 'AGUS DWIKARNA ', '- Dalam data kependudukan teridentifikasi dengan nama Ir. H. AGUS DWIKARNA dengan nomor NIK 737113108640002 dengan alamat Jalan Hertasning No. 24 RT 5/6 Kode Pos 90222, Kel. Kassi-Kassi, Kec. Rappocini, Kota Makassar, Sulawesi Selatan;\n- ditangkap di Filipina tanggal 13 Maret 2002, divonis 10 s.d. 17 tahun atas kepemilikan bahan peledak dan hanya menjalani 12 tahun yang dijalani           di Penjara New Bilibid Prison, Muntinlupa Filipina;\n', 'Orang', 'IDQ-012', 'Makassar', '11/08/1964', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (487, 'ABDUL RAHIM BAASYIR', 'anak dari Abu Bakar Baasyir yang merupakan pendiri Jemaah Islamiyah (JI) dan Jemaah Anshorut Tauhid (JAT) yang saat ini menjadi Napi tindak pidana terorisme;', 'Orang', 'IDQ-011', 'Solo', '16/11/1977', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (488, 'ABU BAKAR BAASYIR bin ABUD BAASYIR alias ABDUS SAMAD', '- diputus bersalah dalam perkara terorisme dengan hukuman penjara 15 (lima belas) tahun berdasarkan putusan pengadilan Nomor:                                               2452 K/PID.SUS/2011 tanggal 27 Februari 2011;\n- pendiri Jemaah Islamiyah (JI), Majelis Mujahidin Indonesia (MMI), Jemaah Anshorut Tauhid (JAT) serta mendukung ISIS dan saat ini sedang menjalani masa hukuman penjara;', 'Orang', 'IDQ-010', 'Jombang', '17/08/1938', 'Indonesia', 'Dusun  Ngruki, RT.6, RW .17,\nKelurahan  Cemani,  Kecamatan  Grogol,  \nKabupaten Sukoharjo, Jawa Tengah, Kode Pos 57191', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (489, 'MOCHAMMAD ACHWAN ', '- NIK dengan nomor 353010405480001;\n- menurut keterangan dalam BAP jaringan terorisme Poso yang sudah ditangkap (IMRAN, ANANG MUHTADIN dll), MOCHAMAD ACHWAN adalah Amir Markaziah JAT Pusat, sekitar tahun 2011 datang ke Poso untuk membentuk JAT Poso dan menghidupkan kembali program-program Jihad di Poso;\n- Pada website PBB terdapat info tanggal lahir lainnya yaitu 4 Mei 1946, dan ybs merupakan pimpinan sementara JAT dan terasosiasi dengan Abu Bakar Ba’asyir, Abdul Rahim Ba’aysir dan JI.', 'Orang', 'IDQ-008', 'Tulung Agung', '04/05/1948', 'Indonesia', 'Jalan Ir. H. Juanda VIII/10, RT/RW 002/001, Kel. Jodipan, Kec.  Blimbing, Kab. Kota Malang, Jawa Timur', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (490, 'NASSER AHMED MUTHANA alias NASIR MUTHANA alias ABDUL MUTHANA alias ABU MUTHANA alias ABU AL-YEMENI MUTHANA alias ABU MUTHANNA', 'Masuk dalam daftar pencarian orang pihak berwenang Inggris', 'Orang', 'ILQ-234', 'Heath, Cardiff, Inggris', '29/04/1994', 'Inggris', '- Suriah (per November 2013) \n- Sebelumnya di Inggris s.d. November 2013\n ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (491, 'AQSA MAHMOOD alias UMM LAYTH', 'Perekrut anggota Islamic State in Iraq and the Levant dan merupakan Tokoh kunci the Al-Khanssaa brigade', 'Orang', 'ILQ-233', 'Glasgow, Scotlandia, Inggris', '11/05/1994', 'Inggris', '- Suriah, per November 2013 \n- Sebelumnya di Inggris  \n ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (492, 'MAXIME HAUCHARD alias ABOU ABDALLAH AL FARANSI', 'Anggota Islamic State in Iraq and the Levant (ISIL) dan terdaftar sebagai Al-Qaida di Irak', 'Orang', 'ILQ-232', 'Saint Aubin les Elbeuf, Normandy, Perancis', '17/03/1992', 'Perancis', 'Suriah (per September 2015)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (493, 'PETER CHERIF', 'Anggota Al-Qaida di Semenanjung Arab dan Pernah di Hukum di penjara Prancis selama 5 Tahun pada Tahun 2012', 'Orang', 'ILQ-231', 'Paris, 20th district, Perancis ', '26/08/1982', 'Perancis', 'Al Mukalla, Provinsi Hadramawt, Yaman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (494, 'FIHIR alias FIHIRUDDIN MUQTI alias ABDUL RAHMAN alias MOHAMAD IQBAL alias ABU JIBRIL ABDURRAHMAN alias FIKIRUDDIN MUQTI ', 'ayah kandung dari MUHAMMAD JIBRIL ABDURRAHMAN alias MUHAMMAD RICKY ARDHAN', 'Orang', 'IDQ-007', 'Korleko, Lombok Timur', '17/08/1958', 'Indonesia', 'jalan Nakula Kompleks Witana Harja III Blok C No. 106-107 Tangerang, Banten, Indonesia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (495, 'AHMED KHALFAN GHAILANI alias AHMAD, ABU BAKR alias AHMED, ABUBAKAR alias AHMED, ABUBAKAR K. alias AHMED, ABUBAKAR KHALFAN alias AHMED, ABUBAKARY K. alias AHMED, AHMED KHALFAN alias ALI, AHMED KHALFAN alias GHAILANI, ABUBAKARY KHALFAN AHMED alias GHAILANI, AHMED alias GHILANI, AHMAD KHALAFAN alias HUSSEIN, MAHAFUDH ABUBAKAR AHMED ABDALLAH alias KHALFAN, AHMED alias MOHAMMED, SHARIFF OMAR alias HAYTHEM AL-KINI alias AHMED THE TANZANIAN alias FOOPIE alias FUPI alias AHMED, A alias AL TANZANI, AHMAD alias BAKR, ABU alias KHABAR, ABU', 'Tanggal lahir : \na) 14 Mar. 1974 \nb) 13 Apr. 1974 \nc) 14 Apr. 1974 \nd) 1 Aug. 1970\n\nDitangkap pada bulan Juli 2004 dan dalam tahanan untuk diadili di Amerika Serikat, pada Oktober 2010.', 'Orang', 'ILQ-120', 'Zanzibar, Tanzania', '14/03/1974', 'Tanzania; officially the United Republic of Tanzania', 'Amerika Serikat', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (496, 'MUHAMMAD JIBRIL ABDURRAHMAN alias MUHAMMAD RICKY ARDHAN  ', '- Pekerjaan ybs adalah Direktur CV. Ar Rahmah\n- anak kandung FIHIR alias FIHIRUDDIN MUQTI alias ABDUL RAHMAN alias MOHAMAD IQBAL alias ABU JIBRIL ABDURRAHMAN alias FIKIRUDDIN MUQTI;\n- KTP, NIK 09.5310.031279.7042, dikeluarkan di Jakarta Selatan;\n- KK nomor AA.2805615, dikeluarkan di Jakarta Selatan;\n- Paspor nomor S335026 dikeluarkan di Jakarta;\n- diputus bersalah dalam perkara terorisme dengan hukuman penjara 5 (lima) tahun berdasarkan putusan pengadilan Nomor: 226/PID/2010/PT.DKI, tanggal 18 Agustus 2010 dan telah selesai menjalani hukuman', 'Orang', 'IDQ-006', 'Lombok Timur', '28/05/1984', 'Indonesia', 'Kompleks Witana Harja Blok C No. 137 Pamulang, Tangerang, Banten\n\n- Jl. Nakula, Kompleks Witana Harja Blok C, Pamulang, Banten, Indonesia\n', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (497, 'SAYYED MOHAMMED HAQQANI alias SAYYED MOHAMMAD HAQQANI', 'DOB: sekitar 1965 \n\nDesignation: a) Director of Administrative Affairs under the Taliban regime b) Head of Information\nand Culture in Kandahar Province under the Taliban regime\n\nKeterangan: Lulusan madrasah Haqqaniya di Akora Khattak, Pakistan. Diyakini memiliki hubungan dekat dengan Pemimpin Taliban Mullah Mohammed Omar', 'Orang', 'ILT-055', 'Chaharbagh village, Arghandab District, Kandahar Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (498, 'BOUBAKER BEN HABIB BEN AL-HAKIM alias BOUBAKEUR EL-HAKIM alias BOUBAKER EL HAKIM alias ABOU AL MOUKATEL alias ABOU MOUQATEL alias ABU-MUQATIL AL-TUNISI alias EL HAKIM BOUBAKEUR', 'Anggota Islamic State in Iraq and the Levant (ISIL) dan terdaftar sebagai Al-Qaida di Irak\nKewarganegaraan	: Prancis dan Tunisia', 'Orang', 'ILQ-230', 'Paris, Prancis ', '01/08/1983', 'Perancis,Tunisia', 'Suriah (per September 2015)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (499, 'NASIRUDDIN HAQQANI alias Dr. ALIM GHAIR alias NASEER HAQQANI alias Dr. NASEER HAQQANI alias NASSIR HAQQANI alias NASHIR HAQQANI alias NASERUDDIN', 'DOB: antara 1970 dan 1973 (sekitar)\n\nKeterangan: Pemimpin Haqqani Network', 'Orang', 'ILT-054', 'Neka District, Paktika Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (500, 'MOHAMMAD SALIM HAQQANI', 'DOB: antara 1966 dan 1967\n\nDesignation: Deputy Minister of Preventing Vice and Propagating Virtue under the Taliban regime\n\nKeterangan: Wakil pimpinan Ezatullah Haqqani Khan Sayyid', 'Orang', 'ILT-053', 'Alingar District, Laghman Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (501, 'YASSIN SYWAL alias SALIM YASIN alias MOCHTAR YASIN MAHMUD  alias ABDUL HADI YASIN alias MUHAMAD MUBAROK alias MUHAMMAD SYAWAL', 'Lahir pada tahun 1972. ', 'Orang', 'IDQ-005', 'Indonesia', NULL, 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (502, 'KHALIL AHMED HAQQANI alias KHALIL AL-RAHMAN HAQQANI alias KHALIL UR RAHMAN HAQQANI alias KHALEEL HAQQANI', 'DOB: a) 1 Jan. 1966 b) antara 1958 dan 1964\n\nKeterangan: Anggota senior jaringan Haqqani', 'Orang', 'ILT-052', 'Sarana Village, Garda Saray area, Waza Zadran District, Paktia Province, Afghanistan', '01/01/1966', 'Afganistan', 'a) Peshawar, Pakistan \nb) Near Dergey Manday Madrasa in Dergey Manday Village, near Miram Shah, North Waziristan Agency (NWA), Federally Administered Tribal Areas (FATA), Pakistan \nc) Kayla Village, near Miram Shah, North Waziristan Agency (NWA), Federally Administered Tribal Areas (FATA), Pakistan \nd) Sarana Zadran Village, Paktia Province, Afghanistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (503, 'ABDULLAH ANSHORI alias ABU FATIH alias THOYIB alias IBNU TOYIB alias IBNU alias ABU FATHI', '- nomor kartu kependudukan KTP 3372010506560006 a.n. ABDULAH ANSHORI (berdasarkan data Kemendagri);\n- nomor paspor T 710219 dikeluarkan di Sukoharjo (berdasarkan data Dirjen Imigrasi);\n- nomor induk kependudukan 33111205065600001 dikeluarkan di Sukoharjo dengan nama ABDULLAH ANSHORI (berdasarkan data Dirjen Imigrasi);\n- nomor kartu keluarga (KK) 3311121012070014 dikeluarkan di Sukoharjo (berdasarkan data Dirjen Imigrasi);\n', 'Orang', 'IDQ-004', 'Pacitan, Jawa Timur', '00/00/0000', 'Indonesia', 'Jl. Duwet Raya No. 13 Bulak Indah, Dusun Karang Asem Rt 6/7 Kode Pos 57145 Kel. Karang Asem Kec. Lawean', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (504, 'PARLINDUNGAN SIREGAR alias SIREGAR PARLIN alias SALEH PARLINDUNGAN SIREGAR', 'Informasi tanggal lahir lainnya :	\nIndonesia, 25 April 1957', 'Orang', 'IDQ-003', 'Indonesia', '25/04/1967', 'Indonesia', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (505, 'JALALUDDIN HAQQANI alias JALALUDDIN HAQANI alias JALLALOUDDIN HAQQANI alias JALLALOUDDINE HAQANI\n', 'DOB: a) sekitar 1942 b) sekitar 1948 POB: a) Garda Saray area, Waza Zadran District, Paktia Province, Afghanistan b) Neka District, Paktika Province, Afghanistan\n\nDesignation: Minister of Frontier Affairs under the Taliban regime\n\nKeterangan: Pemimpin Taliban aktif. Diyakini berada di wilayah perbatasan Afganistan/Pakistan. Kepala Taliban Miram Shah Syura pada tanggal 2008', 'Orang', 'ILT-051', ' Garda Saray area, Waza Zadran, Paktia, Afghanistan atau Neka, Paktika, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (506, 'DIN MOHAMMAD HANIF alias QARI DIN MOHAMMAD alias IADENA MOHAMMAD', 'DOB: sekitar 1955, Iadena Mohammad lahir 1 Januari 1969 di Badakhshan\n\nPassport no: number OA 454044, issued in Afghanistan\n\nDesignation: a) Minister of Planning under the Taliban regime b) Minister of Higher Education under the Taliban regime\n\nKeterangan: Anggota Taliban provinsi Takhar dan Badakhshan. Diyakini berada di perbatasan Afganistan/Pakistan', 'Orang', 'ILT-050', 'Shakarlab village, Yaftali Pain District, Badakhshan Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (507, 'GUL AHMAD HAKIMI', 'DOB: 1964 POB: a) Logar Province, Afghanistan b) Kabul Province, Afghanistan c) Logar Province, Afghanistan\n\nDesignation: Commercial Attache, Taliban Consulate General, Karachi, Pakistan\n\nKeterangan: Diyakini berada di perbatasan Afganistan/Pakistan', 'Orang', 'ILT-049', 'Logar, Afghanistan atau Kabul, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (508, 'RUSTUM HANAFI HABIBULLAH alias ROSTAM NURISTANI alias HANAFI SAHIB', 'DOB: sekitar 1963\n\nDesignation: Deputy Minister of Public Works under the Taliban regime\n\nKeterangan: Anggota kelompok Taliban di Nuristan per Mei 2007\n', 'Orang', 'ILT-048', 'Dara Kolum, Do Aab District, Nuristan Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (509, 'BAKHT GUL alias BAKHTA GUL alias BAKHT GUL BAHAR alias SHUQIB', 'DOB: 1980 \n\nKeterangan: Asisten komunikasi Badruddin Haqqani (meninggal dunia). Koordinator gerakan pemberontak Haqqani, pemberontak asing dan bersenjata di wilayah perbatasan Afganistan/Pakistan', 'Orang', 'ILT-047', 'Aki Village, Zadran District, Paktiya Province, Afghanistan', '00/00/0000', 'Afganistan', 'Miram Shah, North Waziristan, Federally Administered\nTribal Areas, Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (510, 'SOFIANE BEN GOUMO alias SUFYAN BIN QUMU alias ABOU FARES AL LIBI', 'Pemimpin Ansar al Charia Derna', 'Orang', 'ILQ-225', 'Derna, Libya', '26/06/1959', 'Libya', 'Libya', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (511, 'MOHAMMED OMAR GHULAM NABI', 'DOB: a) sekitar 1966 b) 1960 c) 1953 POB: a) Naw Deh village, Deh Rawud District, Uruzgan Province, Afghanistan b) Maiwand District, Kandahar Province, Afghanistan\n\nDesignation: Leader of the Faithful (\'Amir ul-Mumineen\'), Afghanistan\n\nKeterangan: Diyakini berada di perbatasan Afganistan/Pakistan', 'Orang', 'ILT-046', 'Naw Deh, Deh Rawud, Uruzgan, Afganistan atau Maiwand, Kandahar, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (512, 'TARAK BEN TAHER BEN FALEH OUNI HARZI alias ABOU OMAR AL TOUNISI', 'Anggota aktif Al Qaida di Iraq Tahun di 2004, juga aktif dalam memfasilitasi anggota Anshar Al-Syariah di Tunisia\nNomor paspor Z050399', 'Orang', 'ILQ-224', 'Tunis, Tunisia', '03/05/1982', 'Tunisia', 'a) 18 Mediterranean Street, Ariana, Tunisia \nb) Suriah (Maret 2015)  \nc) Iraq (alternatif lokasi) pada bulan Maret 2015) \nd) Libya (lokasi sebelumnya) ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (513, 'AREFULLAH AREF GHAZI MOHAMMAD alias AREFULLAH AREF', 'DOB: sekitar 1958\n\nDesignation: a) Deputy Minister of Finance under the Taliban regime b) Governor of Ghazni Province under the Taliban regime c) Governor of Paktia Province under the Taliban regime\n\nKeterangan: Terkait dengan garda terdepan Taliban pada Gelan District sampai dengan mid-2013.Diyakini berada di perbatasan Afganistan/ Pakistan. Dimiliki oleh Suku Andar.', 'Orang', 'ILT-045', 'Lawang (Lawand) village, Gelan District, Ghazni Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (514, 'SAMI BEN KHAMIS BEN SALEH ELSSEID alias OMAR EL MOUHAJER alias SABER', 'Nama Ibu : Beya Al-Saidani. \nDideportasi dari Italia ke Tunisia pada tanggal 2 Juni 2008. \nDi pidana penjara di Tunisia pada bulan Agustus 2014.', 'Orang', 'ILQ-114', 'Menzel Jemil, Bizerte, Tunisia', '10/02/1968', 'Tunisia', 'Jalan Ibn Al-Haythman Nomor 6, Manubah, Tunis, Tunisia', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (515, 'ZULKARNAEN alias ZULKARMAN alias ZULKARMAIN alias ZULKARMIN alias ARIF SUNARNO alias ARIS SUMARSONO alias ustad DAUD ZULKARNAEN ', 'masuk dalam Daftar Pencarian Orang (DPO) nomor: DPO/32/XII/2002/DIT SERSE tanggal Desember 2002;', 'Orang', 'IDQ-002', '-', NULL, 'Indonesia', 'Masaran, kabupaten Sragen, Jawa Tengah Indonesia;', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (516, 'MOHAMMAD SHAFIQULLAH AHMADI FATIH KHAN alias MOHAMMAD SHAFIQ AHMADI alias MULLAH SHAFIQULLAH', 'DOB: antara 1956 dan 1957 POB: a) Charmistan village, Tirin Kot District, Uruzgan Province, Afghanistan b) Marghi village, Nawa District, Ghazni Province, Afghanistan\n\nDesignation: Governor of Samangan Province under the Taliban regime\n\nKeterangan: Berasal dari Provinsi Ghazni, kemudian tinggal di Uruzgan. Merupakan Taliban Shadow Governor untuk Uruzgan sampai dengan akhir 2012 dan merupakan anggota dari Military Commission sampai dengan Juli 2016. Dimiliki oleh Suku Hotak', 'Orang', 'ILT-044', 'Charmistan, Tirin Kot, Uruzgan, Afganistan atau Marghi, Nawa, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (517, 'ABD EL KADER MAHMOUD MOHAMED EL SAYED alias ES SAYED, KADER alias ABDEL KHADER MAHMOUD MOHAMED EL SAYED', 'Kode fiskal Italia : SSYBLK62T26Z336L. Dihukum 8 tahun penjara di Italia pada tanggal 2 februari 2004. Ditetapkan sebagai buronan oleh otoritas Italia', 'Orang', 'ILQ-113', 'Egypt', '26/12/1962', 'Mesir', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (518, 'FAIZ', 'DOB: sekitar 1969\n\nDesignation: Head of the Information Department, Ministry of Foreign Affairs under the Taliban regime', 'Orang', 'ILT-043', 'Ghazni Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (519, 'MOHAMMAD AZAM ELMI alias MUHAMMAD AZAMI', 'DOB: sekitar 1968\n\nDesignation: Deputy Minister of Mines and Industries under the Taliban regime\n\nKeterangan: Dikabarkan meninggal pada tahun 2005\n', 'Orang', 'ILT-042', 'Sayd Karam District, Paktia Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (520, 'NIK MOHAMMAD DOST MOHAMMAD alias NIK MOHAMMAD', 'DOB: sekitar 1957\n\nDesignation: Deputy Minister of Commerce under the Taliban regime\n\nKeterangan: Pemimpin komisi pendaftaran musuh Taliban pada pertengahan tahun 2013', 'Orang', 'ILT-041', 'Zangi Abad village, Panjwai District, Kandahar Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (521, 'ALI BEN TAHER BEN FALEH OUNI HARZI alias ABOU ZOUBAIR', 'Anggota Anshar Al-Syariah di Tunisia, aktif dalam perekrutan teroris asing dan penyelundupan senjata\n', 'Orang', 'ILQ-223', 'Ariana, Tunisia', '09/03/1986', 'Tunisia', 'a) 18 Mediterranean Street, Ariana, Tunisia \nb) Suriah (Maret 2015)  \nc) Iraq (alternatif lokasi) pada bulan Maret 2015) \nd) Libya (lokasi sebelumnya) ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (522, 'DOST MOHAMMAD alias DOOST MOHAMMAD', 'DOB: sekitar 1968 dan 1973 POB: a) Nawi Deh village, Daman District, Kandahar Province, Afghanistan b) Marghankecha village, Daman District, Kandahar Province, Afghanistan\n\nDesignation: Governor of Ghazni Province under the Taliban regime\n\nKeterangan: Terkait dengan Mullah Jalil Haqqani\n', 'Orang', 'ILT-040', 'Nawi Deh, Daman, Kandahar, Afghanistan atau Marghankecha, Daman, Kandahar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (523, 'MAULANA FAZLULLAH alias MULLAH FAZLULLAH alias FAZAL HAYAT alias MULLAH RADIO', 'Komandan Tehrik-e Taliban Pakistan sejak 7 November 2013', 'Orang', 'ILQ-222', 'Kuza Bandai, Swat Valley, Khyber Pakhtunkhawa, Pakistan', '00/00/0000', NULL, 'wilayah perbatasan Afghanistan/Pakistan', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (524, 'SHAHABUDDIN DELAWAR', 'DOB: a) 1957 b) 1953\n\nDesignation: Deputy of High Court under the Taliban regime\n\nKeterangan: Kepala kedutaan besar Taliban di Riyadh Arab Saudi hingga 25 September 1998', 'Orang', 'ILT-039', 'Logar Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (525, 'MOHAMMAD RASUL AYYUB alias GURG', 'DOB: antara 1958 dan 1963\n\nDesignation: Governor of Nimroz Province under the Taliban regime\n\nKeterangan: Anggota Taliban Quetta Shura', 'Orang', 'ILT-038', 'Robat village, Spin Boldak District, Kandahar Province, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (526, 'MOUNIR EL MOTASSADEQ alias MOUNIR EL MOUTASSADEQ', 'Ditangkap pada tanggal 28 November 2001 dan dinyatakan bersalah di Jerman terkait pembantuan dalam kasus pembunuhan dan keanggotaan dalam organisasi teroris dan dihukum selama 15 tahun penjara pada tanggal 8 Januari 2007. \nNama ayah : Brahim Brik\nNama ibu : Habiba Abbes. \n', 'Orang', 'ILQ-112', 'Marrakesh, Maroko', '03/04/1974', 'Maroko', 'Jerman (dalam tahanan) ', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (527, 'ABDUL BAQI BASIR AWAL SHAH alias ABDUL BAQI', 'DOB: antara 1960 dan 1962 (sekitar) POB: a) Jalalabad City, Nangarhar Province, Afghanistan b) Shinwar District, Nangarhar Province, Afghanistan\n\nDesignation: a) Governor of Khost and Paktika provinces under the Taliban regime b) Vice-Minister of Information and Culture under the Taliban regime c) Consular Department, Ministry of Foreign Affairs under the Taliban regime\n\nKeterangan: Diyakini berada di perbatasan Afganistan/Pakistan\n\n', 'Orang', 'ILT-037', 'Jalalabad City, Nangarhar, Afghanistan atau Shinwar District, Nangarhar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (528, 'TARKHAN TAYUMURAZOVICH BATIRASHVILI alias TARKHAN TAYUMURAZOVICH BATYRASHVILI alias TARKHAN BATIRASHVILI alias OMAR SHISHANI alias UMAR SHISHANI alias ABU UMAR AL-SHISHANI alias OMAR AL-SHISHANI alias CHECHEN OMAR alias OMAR THE CHECHEN alias OMER THE CHECHEN alias UMAR THE CHECHEN alias ABU UMAR alias ABU HUDHAYFAH', 'Pimpinan militer senior ISIL', 'Orang', 'ILQ-218', 'Akhmeta, Birkiani, Georgia', '11/01/1986', 'Georgia', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (529, 'MUHAMMAD TAHER ANWARI alias MOHAMMAD TAHER ANWARI alias MUHAMMAD TAHIR ANWARI alias MOHAMMAD TAHRE ANWARI alias HAJI MUDIR', 'DOB: sekitar 1961 \n\nDesignation:  a) Director of Administrative Affairs under the Taliban regime b) Minister of Finance\nunder the Taliban regime\n\nKeterangan: Dimiliki oleh Suku Andar', 'Orang', 'ILT-036', 'Zurmat, Paktia, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (530, 'REDOUANE EL HABHAB alias ABDELRAHMAN', 'WN :  a) Germany b) Morocco\n\nKeterangan : telah dibebaskan dari penjara di Jerman pada bulan April 2012', 'Orang', 'ILQ-111', 'Casablanca, Morocco ', '20/12/1969', 'Jerman,Maroko', 'lltisstrasse 58, 24143 Kiel, Jerman', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (531, 'HAMDULLAH ALLAH NOOR', 'DOB: 1973\n\nKeterangan: Diyakini berada di perbatasan Afganistan dan Pakista', 'Orang', 'ILT-034', 'Distrik Nomor 6, Kandahar, Afghanistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (532, 'ABDUL HABIB ALIZAI alias HAJI AGHA JAN ALIZAI alias HAJJI AGHA JAN alias AGHA JAN ALAZAI alias HAJI LOI LALA alias LOI AGHA alias ABDUL HABIB alias AGHA JAN ALIZAI\n', 'DOB: a) 15 Oct. 1963 b) 14 Feb. 1973 c) 1967 d) Approximately 1957 POB: a) Yatimchai village, Musa Qala District, Helmand Province, Afghanistan b) Kandahar Province, Afghanistan\n\nKeterangan: Pengatur jaringan pengedaran obat-obatan di provinsi Helmand, Afganistan', 'Orang', 'ILT-033', 'Yatimchai, Musa Qala, Helmand, Afghanistan atau Kandahar, Afghanistan', '15/10/1963', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (533, 'MOHAMMAD ESHAQ AKHUNZADA alias MOHAMMAD ISHAQ AKHUND', 'DOB: antara 1963 dan 1968\n\nKeterangan: Pimpinan Taliban pada Provinsi Ghazni tahun 2008', 'Orang', 'ILT-032', 'Andar, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (534, 'OUMAR DIABY alias OMSEN alias OUMAR OMSEN', 'Pemimpin kelompok bersenjata terkait dengan Al-Nusra', 'Orang', 'ILQ-215', 'Dakar, Senegal', '05/08/1975', 'Senegal', 'Suriah', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (535, 'EHSANULLAH SARFIDA HESAMUDDIN AKHUNDZADA alias EHSANULLAH SARFADI alias EHSANULLAH SARFIDA', 'DOB: antara 1962 dan 1963\n\nKeterangan: Memberikan dukungan persenjataan dan uang untuk Taliban', 'Orang', 'ILT-031', 'Khatak, Gelan, Ghazni, Afganistan', '00/00/0000', 'Afganistan', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (536, 'KEVIN JORDAN AXEL GUIAVARCH', 'Teroris Prancis yang berangkat ke Suriah dan bergabung dengan ISIL, fasilitator teroris Prancis yang datang ke Siriah, aktivis propaganda menggunakan internet', 'Orang', 'ILQ-214', 'Paris, Prancis ', '12/03/1993', 'Perancis', 'a) Grenoble, Perancis (domisili sejak tahun 1993 sampai 2012) \nb) Suriah (antara tahun 2012 dan 2016) \nc) Turki (dari Juni 2016 sampai Januari 2017)\nd) Perancis (dalam masa penahanan sejak Januari 2017)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (537, 'EMILIE EDWIGE KONIG alias EMILIE SAMRA KONIG', 'Teroris Prancis yang berangkat ke Suriah dan bergabung dengan ISIL', 'Orang', 'ILQ-213', 'Ploemeur, Prancis', '09/12/1984', 'Perancis', 'Suriah (sejak tahun 2013)', 1, '2024-04-04 11:01:38', NULL, 3, NULL);
INSERT INTO `dttot` VALUES (538, '\'ABD AL-RAHMAN MUHAMMAD MUSTAFA AL-QADULI alias \'ABD AL-RAHMAN MUHAMMAD MUSTAFA SHAYKHLARI alias UMAR MUHAMMAD KHALIL MUSTAFA alias ABDUL RAHMAN MUHAMMAD AL-BAYATI alias TAHIR MUHAMMAD KHALIL MUSTAFA AL-BAYATI alias ALIAZRA RA’AD AHMAD alias ABU-SHUAYB alias HAJJI IMAN alias ABU IMAN alias ABU ALA alias ABU HASAN alias ABU MUHAMMAD alias ABU ZAYNA', 'Anggota senior ISIL', 'Orang', 'ILQ-281', 'Mosul, Ninawa, Irak', NULL, 'Irak', '-', 1, '2024-04-04 11:01:38', NULL, 3, NULL);

-- ----------------------------
-- Table structure for inventory_detail
-- ----------------------------
DROP TABLE IF EXISTS `inventory_detail`;
CREATE TABLE `inventory_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `header_id` bigint NOT NULL,
  `sequence` smallint NOT NULL,
  `valas_id` bigint NOT NULL,
  `nominal` decimal(12, 0) NULL DEFAULT 0,
  `sheet` smallint NULL DEFAULT NULL,
  `price` decimal(12, 3) NULL DEFAULT 0.000,
  `subtotal` decimal(18, 3) NULL DEFAULT 0.000,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `header_id`, `sequence`, `valas_id`) USING BTREE,
  INDEX `Fk_mstvalas`(`valas_id`) USING BTREE,
  INDEX `Fk_trxheader`(`header_id`) USING BTREE,
  CONSTRAINT `inentory_detail_ivfk_2` FOREIGN KEY (`header_id`) REFERENCES `inventory_header` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `inventory_detail_ibfk_1` FOREIGN KEY (`valas_id`) REFERENCES `m_valas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of inventory_detail
-- ----------------------------

-- ----------------------------
-- Table structure for inventory_header
-- ----------------------------
DROP TABLE IF EXISTS `inventory_header`;
CREATE TABLE `inventory_header`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `tr_id` smallint NOT NULL,
  `tr_date` date NOT NULL,
  `tr_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tr_description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_inventory_header`(`tr_id`, `tr_date`, `tr_number`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `Fk_mstusers`(`createdby`) USING BTREE,
  INDEX `Fk_mstcompany_tr_h`(`company_id`) USING BTREE,
  INDEX `Fk_mstusers_updated_tr_h`(`updatedby`) USING BTREE,
  INDEX `Fk_mstcompany_tenant_store_tr_h`(`store_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of inventory_header
-- ----------------------------

-- ----------------------------
-- Table structure for log_a
-- ----------------------------
DROP TABLE IF EXISTS `log_a`;
CREATE TABLE `log_a`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ref_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `customer_id` bigint NOT NULL,
  `tr_id` smallint NOT NULL,
  `tr_date` date NOT NULL,
  `tr_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cashier_id` bigint NOT NULL,
  `payment_type_id` bigint NOT NULL,
  `flight_barcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `flight_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `flight_destination` bigint NULL DEFAULT NULL,
  `tr_description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_tr_header`(`tr_id`, `tr_date`, `tr_number`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `Fk_mstcashier_log_a`(`cashier_id`) USING BTREE,
  INDEX `Fk_mstusers_created_loga`(`createdby`) USING BTREE,
  INDEX `Fk_mstcustomr_log_a`(`customer_id`) USING BTREE,
  INDEX `Fk_mstcompany_log_a`(`company_id`) USING BTREE,
  INDEX `Fk_mstcompany_tenant_store_log_a`(`store_id`) USING BTREE,
  INDEX `Fk_mstusers_updated_log_a`(`updatedby`) USING BTREE,
  CONSTRAINT `Fk_mstcashier_log_a` FOREIGN KEY (`cashier_id`) REFERENCES `auth_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstcompany_log_a` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstcustomr_log_a` FOREIGN KEY (`customer_id`) REFERENCES `m_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mststore_log_a` FOREIGN KEY (`store_id`) REFERENCES `m_company_store` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstusers_created_log_a` FOREIGN KEY (`createdby`) REFERENCES `auth_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstusers_updated_log_a` FOREIGN KEY (`updatedby`) REFERENCES `auth_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_a
-- ----------------------------

-- ----------------------------
-- Table structure for log_auth
-- ----------------------------
DROP TABLE IF EXISTS `log_auth`;
CREATE TABLE `log_auth`  (
  `user_id` bigint NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_auth
-- ----------------------------

-- ----------------------------
-- Table structure for log_auth_sessions
-- ----------------------------
DROP TABLE IF EXISTS `log_auth_sessions`;
CREATE TABLE `log_auth_sessions`  (
  `id` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ip_address` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `timestamp` int NOT NULL,
  `data` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_auth_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for log_b
-- ----------------------------
DROP TABLE IF EXISTS `log_b`;
CREATE TABLE `log_b`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `header_id` bigint NOT NULL,
  `sequence` smallint NULL DEFAULT NULL,
  `valas_id` bigint NOT NULL,
  `nominal` decimal(12, 0) NULL DEFAULT 0,
  `sheet` smallint NULL DEFAULT NULL,
  `price` decimal(12, 3) NULL DEFAULT 0.000,
  `subtotal` decimal(18, 3) NULL DEFAULT 0.000,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `header_id`, `valas_id`) USING BTREE,
  INDEX `Fk_mstvalasx`(`valas_id`) USING BTREE,
  INDEX `Fk_log_a`(`header_id`) USING BTREE,
  CONSTRAINT `Fk_log_a` FOREIGN KEY (`header_id`) REFERENCES `log_a` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Fk_mstvalasx` FOREIGN KEY (`valas_id`) REFERENCES `m_valas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_b
-- ----------------------------

-- ----------------------------
-- Table structure for m_airport
-- ----------------------------
DROP TABLE IF EXISTS `m_airport`;
CREATE TABLE `m_airport`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `airport_code` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `airport_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `airport_code`) USING BTREE,
  INDEX `idx_country`(`id`, `airport_code`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_airport
-- ----------------------------
INSERT INTO `m_airport` VALUES (1, 'AMQ', 'Bandara Pattimura - Ambon', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (2, 'BDJ', 'Bandara Syamsudin Noor - Banjarmasin', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (3, 'BIK', 'Bandara Frans Kaisiepo - Biak', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (4, 'BPN', 'Bandara Sultan Aji Muhammad Sulaiman Sepinggan - Balikpapan', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (5, 'CGK', 'Bandara Internasional Cengkareng - Jakarta', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (6, 'DJJ', 'Bandara Sentani - Jayapura', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (7, 'DPS', 'Bandara I Gusti Ngurah Rai - Denpasar', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (8, 'JOG', 'Bandara Adisutjipto - Yogyakarta', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (9, 'KOE', 'Bandara El Tari - Kupang', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (10, 'LOP', 'Bandara Internasional Lombok - Lombok Tengah', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (11, 'MDC', 'Bandara Sam Ratulangi - Manado', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (12, 'SOC', 'Bandara Adi Soemarmo - Surakarta', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (13, 'SRG', 'Bandara Jenderal Ahmad Yani - Semarang', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (14, 'SUB', 'Bandara Juanda - Surabaya', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (15, 'UPG', 'Bandara Sultan Hasanuddin - Makassar', 1, '2024-03-17 00:00:00', NULL, 3, NULL);
INSERT INTO `m_airport` VALUES (16, 'YIA', 'Bandara Internasional Yogyakarta - Kulon Progo', 1, '2024-03-17 00:00:00', NULL, 3, NULL);

-- ----------------------------
-- Table structure for m_company
-- ----------------------------
DROP TABLE IF EXISTS `m_company`;
CREATE TABLE `m_company`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company_address` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company_phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company_city` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company_pos_code` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_limits` smallint NULL DEFAULT NULL,
  `api_angkasapura` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `api_method` smallint NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `company_name`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_company
-- ----------------------------
INSERT INTO `m_company` VALUES (1, 'PT. INDONESIA CENTRAL VALUTAMAS', 'Terminal 2 - Soekarno Hatta', '(021)', 'Jakarta', '', '', 'M02', 5, 'AP2', 0, 1, '2024-03-17 00:00:00', '2024-05-14 09:03:49', 1, 1);
INSERT INTO `m_company` VALUES (2, 'PT. INDONESIA CENTRAL VALUTAMAS', 'Terminal 3 - Soekarno Hatta', '(021) ', 'Jakarta', '', '', 'M02', 5, 'AP2', 0, 1, '2024-03-17 00:00:00', '2024-05-14 09:03:56', 1, 1);
INSERT INTO `m_company` VALUES (3, 'PT. INDONESIA CENTRAL VALUTAMAS', 'Terminal 2 - Juanda', '(031)', 'Surabaya', '', '', 'M02', 5, 'AP1', 0, 1, '2024-03-21 13:29:04', '2024-05-14 09:04:00', 1, 1);

-- ----------------------------
-- Table structure for m_company_store
-- ----------------------------
DROP TABLE IF EXISTS `m_company_store`;
CREATE TABLE `m_company_store`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `store_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `store_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `airport_id` bigint NULL DEFAULT NULL,
  `airport_terminal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `store_reference_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `store_reference_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `store_reference_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `store_reference_terminal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `register_status` smallint NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `company_id`, `store_name`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_company_store
-- ----------------------------
INSERT INTO `m_company_store` VALUES (1, 1, 'Indocev Money Changer', 'Terminal 2F - Shopping Arcade Dep', 5, '2F', '8a82f2cc38962cda7080d89465743a26', 'Indocev Money Changer T2F #Shopping Arcade Dep', 'Terminal 2F - Shopping Arcade Dep', 'T2F', 1, 1, '2024-03-17 00:00:00', '2024-03-18 10:31:08', 1, 1);
INSERT INTO `m_company_store` VALUES (2, 2, 'Indocev Money Changer', 'Terminal 3 - Arrival Internatioanl', 5, '3', '36daf7a13f134fd444d8496cdc054173', 'Indocev Money Changer T3 #Arr Intl', 'Terminal 3 - Arrival Internatioanl', 'T3', 1, 1, '2024-03-17 00:00:00', '2024-03-21 13:28:05', 1, 1);
INSERT INTO `m_company_store` VALUES (3, 3, 'Indocev Money Changer', 'Terminal 2 SV-21-6 - Departure', 14, '2 (Dua) DEPARTURE', 'SUB_POSS153', 'SUB MONEYCHANGER SV227', '30000737', 'SUB_POSS153', 1, 1, '2024-03-17 00:00:00', '2024-05-27 10:14:00', 1, 1);
INSERT INTO `m_company_store` VALUES (4, 3, 'Indocev Money Changer', 'Terminal 2 SV-21-7 - Arrival', 14, '2 (Dua) ARRIVAL', 'SUB_POSS137', 'SUB MONEYCHANGER SV126', '30000661', 'SUB_POSS137', 1, 1, '2024-03-17 00:00:00', '2024-03-21 13:29:41', 1, 1);

-- ----------------------------
-- Table structure for m_customer
-- ----------------------------
DROP TABLE IF EXISTS `m_customer`;
CREATE TABLE `m_customer`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `customer_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `customer_handphone` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `customer_phone` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `customer_name` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `customer_nick_name` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `customer_address` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `rt_rw` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `village` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sub_district` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `placeofbirth` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `bornday` date NULL DEFAULT NULL,
  `gender_id` bigint NULL DEFAULT NULL,
  `work_id` bigint NULL DEFAULT NULL,
  `customer_type_id` bigint NULL DEFAULT NULL,
  `customer_data_id` bigint NULL DEFAULT NULL,
  `customer_data_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `nationality_id` bigint NULL DEFAULT NULL,
  `npwp_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `npwp_name` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `customerprofil` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `kode_densus_dttot` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `company_id`, `customer_handphone`, `customer_name`, `customer_address`) USING BTREE,
  INDEX `Fk_mstnationality`(`nationality_id`) USING BTREE,
  INDEX `work_id`(`work_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `duplicate`(`customer_name`, `customer_address`) USING BTREE,
  CONSTRAINT `Fk_mstnationality` FOREIGN KEY (`nationality_id`) REFERENCES `m_nationality` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_customer
-- ----------------------------

-- ----------------------------
-- Table structure for m_customer_data
-- ----------------------------
DROP TABLE IF EXISTS `m_customer_data`;
CREATE TABLE `m_customer_data`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_data_name` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `customer_data_name`) USING BTREE,
  UNIQUE INDEX `customdata1`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_customer_data
-- ----------------------------
INSERT INTO `m_customer_data` VALUES (1, 'KTP', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_data` VALUES (2, 'SIM', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_data` VALUES (3, 'PASPOR', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_data` VALUES (4, 'KITAS', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_data` VALUES (5, 'LAINNYA', 1, '2024-04-01 10:00:00', NULL, 3, NULL);

-- ----------------------------
-- Table structure for m_customer_type
-- ----------------------------
DROP TABLE IF EXISTS `m_customer_type`;
CREATE TABLE `m_customer_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_type_name` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `customer_type_name`) USING BTREE,
  UNIQUE INDEX `customtype1`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_customer_type
-- ----------------------------
INSERT INTO `m_customer_type` VALUES (1, 'Perorangan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_type` VALUES (2, 'Perusahaan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_type` VALUES (3, 'Antar Money Changer', 1, '2024-04-01 10:00:00', NULL, 3, NULL);

-- ----------------------------
-- Table structure for m_customer_work
-- ----------------------------
DROP TABLE IF EXISTS `m_customer_work`;
CREATE TABLE `m_customer_work`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_work_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `customer_work_name`) USING BTREE,
  UNIQUE INDEX `customwork1`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_customer_work
-- ----------------------------
INSERT INTO `m_customer_work` VALUES (1, 'Ibu Rumah Tangga', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (2, 'Korporasi', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (3, 'Lainnya', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (4, 'Pegawai Bank', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (5, 'Pegawai BUMD', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (6, 'Pegawai BUMN', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (7, 'Pegawai KUPVA BB', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (8, 'Pegawai Swasta', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (9, 'Pengurus Parpol', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (10, 'Pengusaha', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (11, 'Pensiunan PNS', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (12, 'PNS Aktif', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (13, 'Profesional', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (14, 'TKI/TKW', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (15, 'Yayasan/Pengurus Yayasan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (16, 'TNI', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (17, 'Polisi', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_customer_work` VALUES (18, 'Wartawan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);

-- ----------------------------
-- Table structure for m_nationality
-- ----------------------------
DROP TABLE IF EXISTS `m_nationality`;
CREATE TABLE `m_nationality`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nationality_code` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nationality_desc` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `nationality_code`) USING BTREE,
  INDEX `idx_country`(`id`, `nationality_code`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 248 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_nationality
-- ----------------------------
INSERT INTO `m_nationality` VALUES (1, 'ABW', 'Aruba', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (2, 'AFG', 'Afghanistan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (3, 'AGO', 'Angola', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (4, 'AIA', 'Anguilla', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (5, 'ALA', 'Aland Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (6, 'ALB', 'Albania', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (7, 'AND', 'Andorra', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (8, 'ANT', 'Netherlands Antilles', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (9, 'ARE', 'United Arab Emirates', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (10, 'ARG', 'Argentina', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (11, 'ARM', 'Armenia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (12, 'ASM', 'American Samoa', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (13, 'ATA', 'Antarctica', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (14, 'ATF', 'French Southern Territories', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (15, 'ATG', 'Antigua and Barbuda', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (16, 'AUS', 'Australia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (17, 'AUT', 'Austria', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (18, 'AZE', 'Azerbaijan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (19, 'BDI', 'Burundi', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (20, 'BEL', 'Belgium', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (21, 'BEN', 'Benin', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (22, 'BFA', 'Burkina Faso', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (23, 'BGD', 'Bangladesh', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (24, 'BGR', 'Bulgaria', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (25, 'BHR', 'Bahrain', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (26, 'BHS', 'Bahamas', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (27, 'BIH', 'Bosnia and Herzegovina', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (28, 'BLM', 'Saint-BarthÃ©lemy', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (29, 'BLR', 'Belarus', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (30, 'BLZ', 'Belize', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (31, 'BMU', 'Bermuda', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (32, 'BOL', 'Bolivia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (33, 'BRA', 'Brazil', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (34, 'BRB', 'Barbados', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (35, 'BRN', 'Brunei Darussalam', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (36, 'BTN', 'Bhutan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (37, 'BVT', 'Bouvet Island', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (38, 'BWA', 'Botswana', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (39, 'CAF', 'Central African Republic', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (40, 'CAN', 'Canada', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (41, 'CCK', 'Cocos (Keeling) Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (42, 'CHE', 'Switzerland', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (43, 'CHL', 'Chile', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (44, 'CHN', 'China', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (45, 'CIV', 'CÃ´te dâ€™Ivoire', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (46, 'CMR', 'Cameroon', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (47, 'COD', 'Congo, (Kinshasa)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (48, 'COG', 'Congo (Brazzaville)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (49, 'COK', 'Cook Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (50, 'COL', 'Colombia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (51, 'COM', 'Comoros', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (52, 'CPV', 'Cape Verde', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (53, 'CRI', 'Costa Rica', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (54, 'CUB', 'Cuba', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (55, 'CXR', 'Christmas Island', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (56, 'CYM', 'Cayman Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (57, 'CYP', 'Cyprus', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (58, 'CZE', 'Czech Republic', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (59, 'DEU', 'Germany', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (60, 'DJI', 'Djibouti', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (61, 'DMA', 'Dominica', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (62, 'DNK', 'Denmark', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (63, 'DOM', 'Dominican Republic', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (64, 'DZA', 'Algeria', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (65, 'ECU', 'Ecuador', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (66, 'EGY', 'Egypt', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (67, 'ERI', 'Eritrea', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (68, 'ESH', 'Western Sahara', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (69, 'ESP', 'Spain', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (70, 'EST', 'Estonia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (71, 'ETH', 'Ethiopia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (72, 'FIN', 'Finland', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (73, 'FJI', 'Fiji', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (74, 'FLK', 'Falkland Islands (Malvinas)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (75, 'FRA', 'France', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (76, 'FRO', 'Faroe Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (77, 'FSM', 'Micronesia, Federated States of', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (78, 'GAB', 'Gabon', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (79, 'GBR', 'United Kingdom', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (80, 'GEO', 'Georgia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (81, 'GGY', 'Guernsey', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (82, 'GHA', 'Ghana', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (83, 'GIB', 'Gibraltar', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (84, 'GIN', 'Guinea', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (85, 'GLP', 'Guadeloupe', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (86, 'GMB', 'Gambia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (87, 'GNB', 'Guinea-Bissau', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (88, 'GNQ', 'Equatorial Guinea', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (89, 'GRC', 'Greece', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (90, 'GRD', 'Grenada', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (91, 'GRL', 'Greenland', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (92, 'GTM', 'Guatemala', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (93, 'GUF', 'French Guiana', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (94, 'GUM', 'Guam', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (95, 'GUY', 'Guyana', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (96, 'HKG', 'Hong Kong, SAR China', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (97, 'HMD', 'Heard and Mcdonald Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (98, 'HND', 'Honduras', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (99, 'HRV', 'Croatia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (100, 'HTI', 'Haiti', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (101, 'HUN', 'Hungary', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (102, 'IDN', 'Indonesia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (103, 'IMN', 'Isle of Man', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (104, 'IND', 'India', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (105, 'IOT', 'British Indian Ocean Territory', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (106, 'IRL', 'Ireland', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (107, 'IRN', 'Iran, Islamic Republic of', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (108, 'IRQ', 'Iraq', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (109, 'ISL', 'Iceland', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (110, 'ISR', 'Israel', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (111, 'ITA', 'Italy', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (112, 'JAM', 'Jamaica', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (113, 'JEY', 'Jersey', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (114, 'JOR', 'Jordan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (115, 'JPN', 'Japan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (116, 'KAZ', 'Kazakhstan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (117, 'KEN', 'Kenya', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (118, 'KGZ', 'Kyrgyzstan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (119, 'KHM', 'Cambodia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (120, 'KIR', 'Kiribati', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (121, 'KNA', 'Saint Kitts and Nevis', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (122, 'KOR', 'Korea (South)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (123, 'KWT', 'Kuwait', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (124, 'LAO', 'Lao PDR', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (125, 'LBN', 'Lebanon', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (126, 'LBR', 'Liberia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (127, 'LBY', 'Libya', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (128, 'LCA', 'Saint Lucia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (129, 'LIE', 'Liechtenstein', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (130, 'LKA', 'Sri Lanka', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (131, 'LSO', 'Lesotho', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (132, 'LTU', 'Lithuania', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (133, 'LUX', 'Luxembourg', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (134, 'LVA', 'Latvia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (135, 'MAC', 'Macao, SAR China', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (136, 'MAF', 'Saint-Martin (Frenchpart)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (137, 'MAR', 'Morocco', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (138, 'MCO', 'Monaco', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (139, 'MDA', 'Moldova', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (140, 'MDG', 'Madagascar', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (141, 'MDV', 'Maldives', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (142, 'MEX', 'Mexico', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (143, 'MHL', 'Marshall Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (144, 'MKD', 'Macedonia, Republic of', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (145, 'MLI', 'Mali', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (146, 'MLT', 'Malta', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (147, 'MMR', 'Myanmar', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (148, 'MNE', 'Montenegro', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (149, 'MNG', 'Mongolia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (150, 'MNP', 'Northern Mariana Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (151, 'MOZ', 'Mozambique', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (152, 'MRT', 'Mauritania', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (153, 'MSR', 'Montserrat', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (154, 'MTQ', 'Martinique', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (155, 'MUS', 'Mauritius', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (156, 'MWI', 'Malawi', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (157, 'MYS', 'Malaysia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (158, 'MYT', 'Mayotte', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (159, 'NAM', 'Namibia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (160, 'NCL', 'New Caledonia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (161, 'NER', 'Niger', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (162, 'NFK', 'Norfolk Island', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (163, 'NGA', 'Nigeria', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (164, 'NIC', 'Nicaragua', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (165, 'NIU', 'Niue', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (166, 'NLD', 'Netherlands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (167, 'NOR', 'Norway', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (168, 'NPL', 'Nepal', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (169, 'NRU', 'Nauru', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (170, 'NZL', 'New Zealand', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (171, 'OMN', 'Oman', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (172, 'PAK', 'Pakistan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (173, 'PAN', 'Panama', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (174, 'PCN', 'Pitcairn', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (175, 'PER', 'Peru', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (176, 'PHL', 'Philippines', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (177, 'PLW', 'Palau', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (178, 'PNG', 'Papua New Guinea', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (179, 'POL', 'Poland', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (180, 'PRI', 'Puerto Rico', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (181, 'PRK', 'Korea (North)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (182, 'PRT', 'Portugal', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (183, 'PRY', 'Paraguay', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (184, 'PSE', 'Palestinian Territory', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (185, 'PYF', 'French Polynesia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (186, 'QAT', 'Qatar', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (187, 'REU', 'RÃ©union', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (188, 'ROU', 'Romania', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (189, 'RUS', 'Russian Federation', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (190, 'RWA', 'Rwanda', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (191, 'SAU', 'Saudi Arabia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (192, 'SDN', 'Sudan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (193, 'SEN', 'Senegal', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (194, 'SGP', 'Singapore', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (195, 'SGS', 'South Georgia and the South Sandwich Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (196, 'SHN', 'Saint Helena', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (197, 'SJM', 'Svalbard and Jan Mayen Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (198, 'SLB', 'Solomon Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (199, 'SLE', 'Sierra Leone', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (200, 'SLV', 'El Salvador', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (201, 'SMR', 'San Marino', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (202, 'SOM', 'Somalia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (203, 'SPM', 'Saint Pierre and Miquelon', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (204, 'SRB', 'Serbia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (205, 'SSD', 'South Sudan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (206, 'STP', 'Sao Tome and Principe', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (207, 'SUR', 'Suriname', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (208, 'SVK', 'Slovakia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (209, 'SVN', 'Slovenia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (210, 'SWE', 'Sweden', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (211, 'SWZ', 'Swaziland', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (212, 'SYC', 'Seychelles', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (213, 'SYR', 'Syrian Arab Republic (Syria)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (214, 'TCA', 'Turks and Caicos Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (215, 'TCD', 'Chad', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (216, 'TGO', 'Togo', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (217, 'THA', 'Thailand', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (218, 'TJK', 'Tajikistan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (219, 'TKL', 'Tokelau', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (220, 'TKM', 'Turkmenistan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (221, 'TLS', 'Timor-Leste', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (222, 'TON', 'Tonga', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (223, 'TTO', 'Trinidad and Tobago', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (224, 'TUN', 'Tunisia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (225, 'TUR', 'Turkey', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (226, 'TUV', 'Tuvalu', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (227, 'TWN', 'Taiwan, Republic of China', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (228, 'TZA', 'Tanzania, United Republic of', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (229, 'UGA', 'Uganda', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (230, 'UKR', 'Ukraine', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (231, 'UMI', 'US Minor Outlying Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (232, 'URY', 'Uruguay', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (233, 'USA', 'United States of America', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (234, 'UZB', 'Uzbekistan', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (235, 'VAT', 'Holy See (Vatican City State)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (236, 'VCT', 'Saint Vincent and Grenadines', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (237, 'VEN', 'Venezuela (Bolivarian Republic)', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (238, 'VGB', 'British Virgin Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (239, 'VIR', 'Virgin Islands, US', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (240, 'VNM', 'Viet Nam', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (241, 'VUT', 'Vanuatu', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (242, 'WLF', 'Wallis and Futuna Islands', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (243, 'WSM', 'Samoa', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (244, 'YEM', 'Yemen', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (245, 'ZAF', 'South Africa', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (246, 'ZMB', 'Zambia', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_nationality` VALUES (247, 'ZWE', 'Zimbabwe', 1, '2024-04-01 10:00:00', NULL, 3, NULL);

-- ----------------------------
-- Table structure for m_payment_type
-- ----------------------------
DROP TABLE IF EXISTS `m_payment_type`;
CREATE TABLE `m_payment_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_type_name` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `payment_type_name`) USING BTREE,
  UNIQUE INDEX `customtype1`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_payment_type
-- ----------------------------
INSERT INTO `m_payment_type` VALUES (1, 'Cash', 1, '2024-04-01 10:00:00', NULL, 3, NULL);
INSERT INTO `m_payment_type` VALUES (2, 'Transfer', 1, '2024-04-01 10:00:00', NULL, 3, NULL);

-- ----------------------------
-- Table structure for m_transaction
-- ----------------------------
DROP TABLE IF EXISTS `m_transaction`;
CREATE TABLE `m_transaction`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `description` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_transacstion`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_transaction
-- ----------------------------
INSERT INTO `m_transaction` VALUES (1, 'Buy', 'Transaksi Beli', 1, NULL, NULL, NULL, NULL);
INSERT INTO `m_transaction` VALUES (2, 'Sale', 'Transaksi Jual', 1, NULL, NULL, NULL, NULL);
INSERT INTO `m_transaction` VALUES (3, 'Inventory In', 'Transaksi Masuk', 1, '2024-05-16 14:49:27', NULL, 1, NULL);
INSERT INTO `m_transaction` VALUES (4, 'Inventory Out', 'Transaksi Keluar', 1, '2024-05-16 14:49:36', NULL, 1, NULL);

-- ----------------------------
-- Table structure for m_transaction_date
-- ----------------------------
DROP TABLE IF EXISTS `m_transaction_date`;
CREATE TABLE `m_transaction_date`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `tr_id` bigint NOT NULL,
  `tr_date` date NOT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_transacstion`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_transaction_date
-- ----------------------------
INSERT INTO `m_transaction_date` VALUES (1, 1, 1, 1, '2024-04-01', 1, NULL, NULL, NULL, NULL);
INSERT INTO `m_transaction_date` VALUES (2, 1, 1, 2, '2024-04-01', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for m_valas
-- ----------------------------
DROP TABLE IF EXISTS `m_valas`;
CREATE TABLE `m_valas`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `valas_code` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `valas_name` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `valas_code`) USING BTREE,
  UNIQUE INDEX `customwork1`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_valas
-- ----------------------------
INSERT INTO `m_valas` VALUES (1, 'USD', 'US DOLLAR', 1, '2024-04-20 12:55:56', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (2, 'AUD', 'AUSTRALIA DOLLAR', 1, '2024-04-20 12:56:25', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (3, 'CAD', 'CANADA DOLLAR', 1, '2024-04-20 12:56:41', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (4, 'GBP', 'ENGLAND POUNDS', 1, '2024-04-20 12:57:10', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (5, 'CHF', 'SWISS FRANC', 1, '2024-04-20 12:57:28', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (6, 'HKD', 'HONGKONG DOLLAR', 1, '2024-04-20 12:57:41', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (7, 'SGD', 'SINGAPORE DOLLAR', 1, '2024-04-20 12:57:55', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (8, 'CHY', 'CHINA YUAN', 1, '2024-04-20 12:58:23', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (9, 'NZD', 'NEW ZEALAND DOLLAR', 1, '2024-04-20 12:58:57', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (10, 'MYR', 'MALAYSIA RINGGIT', 1, '2024-04-20 12:59:10', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (11, 'SAR', 'SAUDI RIYAL', 1, '2024-04-20 12:59:21', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (12, 'PHP', 'PHILIPINA PESO', 1, '2024-04-20 12:59:36', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (13, 'AED', 'UNI EMIRAT ARAB DIRHAM', 1, '2024-04-20 12:59:55', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (14, 'THB', 'THAILAND BATH', 1, '2024-04-20 13:00:05', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (15, 'NT', 'TAIWAN DOLLAR', 1, '2024-04-20 13:00:23', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (16, 'WON', 'KOREA  WON', 1, '2024-04-20 13:00:43', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (17, 'BRR', 'BRUNEI RINGGIT', 1, '2024-04-20 13:01:01', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (18, 'JPY', 'JEPANG YEN', 1, '2024-04-20 13:01:25', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (19, 'EURO', 'EROPA EURO', 1, '2024-04-20 13:01:40', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (20, 'QTR', 'QATAR RIYAL', 1, '2024-04-20 13:02:37', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (21, 'VND', 'VIETNAM DONG', 1, '2024-04-20 13:02:55', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (22, 'INR', 'INDIA RUPEE', 1, '2024-04-20 13:03:10', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (23, 'BHR', 'BHD', 1, '2024-04-20 13:03:28', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (24, 'OMR', 'OMAN', 1, '2024-04-20 13:04:02', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (25, 'KWD', 'KWD', 1, '2024-04-20 13:04:14', NULL, 3, NULL);
INSERT INTO `m_valas` VALUES (26, 'JOR', 'JORDAN', 1, '2024-04-20 13:04:27', NULL, 3, NULL);

-- ----------------------------
-- Table structure for rate_daily
-- ----------------------------
DROP TABLE IF EXISTS `rate_daily`;
CREATE TABLE `rate_daily`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `valas_id` smallint NOT NULL,
  `rate_date` date NOT NULL,
  `rate_buy` decimal(12, 3) NULL DEFAULT 0.000,
  `difference_buy` decimal(12, 3) NULL DEFAULT 0.000,
  `rate_sale` decimal(12, 3) NULL DEFAULT 0.000,
  `difference_sale` decimal(12, 3) NULL DEFAULT 0.000,
  `price_buy_bot` decimal(12, 3) NULL DEFAULT 0.000,
  `price_buy_top` decimal(12, 3) NULL DEFAULT 0.000,
  `price_sale_bot` decimal(12, 3) NULL DEFAULT 0.000,
  `price_sale_top` decimal(12, 3) NULL DEFAULT 0.000,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` smallint NULL DEFAULT NULL,
  `updatedby` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_rate`(`id`, `valas_id`, `rate_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of rate_daily
-- ----------------------------

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `valas_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `stock_year` int NOT NULL,
  `stock_month` int NOT NULL,
  `nominal` decimal(12, 0) NULL DEFAULT 0,
  `beginning_stock_sheet` smallint NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Indexes_Stok_Total`(`valas_id`, `company_id`, `store_id`, `stock_year`, `stock_month`, `nominal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of stock
-- ----------------------------

-- ----------------------------
-- Table structure for stock_price_average
-- ----------------------------
DROP TABLE IF EXISTS `stock_price_average`;
CREATE TABLE `stock_price_average`  (
  `id` int NOT NULL,
  `company_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `stock_date` date NOT NULL,
  `stock_year` int NULL DEFAULT NULL,
  `stock_month` int NULL DEFAULT NULL,
  `valas_id` bigint NOT NULL,
  `buy_tr_header_id` bigint NULL DEFAULT NULL,
  `buy_amount` decimal(12, 0) NULL DEFAULT 0,
  `buy_price` decimal(12, 3) NULL DEFAULT 0.000,
  `buy_total` decimal(18, 3) NULL DEFAULT 0.000,
  `sale_tr_header_id` bigint NULL DEFAULT NULL,
  `sale_amount` decimal(12, 0) NULL DEFAULT 0,
  `sale_price` decimal(12, 3) NULL DEFAULT 0.000,
  `sale_total` decimal(18, 3) NULL DEFAULT 0.000,
  `sale_average_total` decimal(18, 3) NULL DEFAULT 0.000,
  `stock_last_amount` decimal(12, 3) NULL DEFAULT 0.000,
  `stock_last_price` decimal(12, 3) NULL DEFAULT 0.000,
  `stock_last_total` decimal(18, 3) NULL DEFAULT 0.000,
  `profit` decimal(18, 3) NULL DEFAULT 0.000,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  INDEX `idx_lr`(`id`, `buy_tr_header_id`, `stock_date`, `valas_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of stock_price_average
-- ----------------------------

-- ----------------------------
-- Table structure for tr_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_detail`;
CREATE TABLE `tr_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `header_id` bigint NOT NULL,
  `sequence` smallint NOT NULL,
  `valas_id` bigint NOT NULL,
  `nominal` decimal(12, 0) NULL DEFAULT 0,
  `sheet` smallint NULL DEFAULT NULL,
  `price` decimal(12, 3) NULL DEFAULT 0.000,
  `subtotal` decimal(18, 3) NULL DEFAULT 0.000,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `header_id`, `sequence`, `valas_id`) USING BTREE,
  INDEX `Fk_mstvalas`(`valas_id`) USING BTREE,
  INDEX `Fk_trxheader`(`header_id`) USING BTREE,
  CONSTRAINT `Fk_mstvalas` FOREIGN KEY (`valas_id`) REFERENCES `m_valas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_tr_header` FOREIGN KEY (`header_id`) REFERENCES `tr_header` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tr_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_header`;
CREATE TABLE `tr_header`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ref_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `customer_id` bigint NOT NULL,
  `tr_id` smallint NOT NULL,
  `tr_date` date NOT NULL,
  `tr_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cashier_id` bigint NOT NULL,
  `payment_type_id` bigint NOT NULL,
  `flight_barcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `flight_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `flight_destination` bigint NULL DEFAULT NULL,
  `tr_description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_tr_header`(`tr_id`, `tr_date`, `tr_number`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `Fk_mstcustomer`(`customer_id`) USING BTREE,
  INDEX `Fk_trxloga`(`ref_id`) USING BTREE,
  INDEX `Fk_mstusers`(`createdby`) USING BTREE,
  INDEX `Fk_mstcompany_tr_h`(`company_id`) USING BTREE,
  INDEX `Fk_mstcashier_tr_h`(`cashier_id`) USING BTREE,
  INDEX `Fk_mstusers_updated_tr_h`(`updatedby`) USING BTREE,
  INDEX `Fk_mstcompany_tenant_store_tr_h`(`store_id`) USING BTREE,
  CONSTRAINT `Fk_mstcashier_tr_h` FOREIGN KEY (`cashier_id`) REFERENCES `auth_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstcompany_store_tr_h` FOREIGN KEY (`store_id`) REFERENCES `m_company_store` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstcompany_tr_h` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstcustomer_tr_h` FOREIGN KEY (`customer_id`) REFERENCES `m_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstusers_created_tr_h` FOREIGN KEY (`createdby`) REFERENCES `auth_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_mstusers_updated_tr_h` FOREIGN KEY (`updatedby`) REFERENCES `auth_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_refid_log_a` FOREIGN KEY (`ref_id`) REFERENCES `log_a` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tr_header
-- ----------------------------

-- ----------------------------
-- Table structure for trx_api_ap1_log
-- ----------------------------
DROP TABLE IF EXISTS `trx_api_ap1_log`;
CREATE TABLE `trx_api_ap1_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `header_id` bigint NOT NULL,
  `method` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ap1_rc_code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ap1_rc_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ap1_timestamp` datetime NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of trx_api_ap1_log
-- ----------------------------

-- ----------------------------
-- Table structure for trx_api_ap2_get
-- ----------------------------
DROP TABLE IF EXISTS `trx_api_ap2_get`;
CREATE TABLE `trx_api_ap2_get`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NULL DEFAULT NULL,
  `store_id` bigint NULL DEFAULT NULL,
  `tr_id` bigint NULL DEFAULT NULL,
  `invoice_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `transaction_date` date NULL DEFAULT NULL,
  `transaction_time` datetime NULL DEFAULT NULL,
  `sequence` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `item_code` bigint NULL DEFAULT NULL,
  `item_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_quantity` decimal(12, 2) NULL DEFAULT NULL,
  `item_price_unit` decimal(12, 2) NULL DEFAULT NULL,
  `item_price_amount` decimal(12, 2) NULL DEFAULT NULL,
  `item_total_price_amount` decimal(18, 2) NULL DEFAULT NULL,
  `item_vat` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `transaction_amount` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_barcode` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_category_name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_category_code` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_unit` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_discount` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_tax` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_total_discount` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_total_vat` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_total_tax` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_total_service_charge` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `currency` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `rate` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `payment_type` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `payment_by` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `buyer_barcode` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `buyer_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `buyer_flight_no` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `buyer_destination` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `buyer_nationality` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `remark` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `invoice_tax` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tax_id` varbinary(15) NULL DEFAULT NULL,
  `payment_name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `payment_time` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `distance` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `journey_time` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  `updatedby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `invoice_number`, `sequence`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of trx_api_ap2_get
-- ----------------------------

-- ----------------------------
-- Table structure for trx_api_ap2_log
-- ----------------------------
DROP TABLE IF EXISTS `trx_api_ap2_log`;
CREATE TABLE `trx_api_ap2_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `header_id` bigint NOT NULL,
  `method` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ap2_status` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ap2_success_insert` smallint NULL DEFAULT NULL,
  `ap2_failed_insert` smallint NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `createdby` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of trx_api_ap2_log
-- ----------------------------

-- ----------------------------
-- View structure for v_auth_group_role
-- ----------------------------
DROP VIEW IF EXISTS `v_auth_group_role`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_auth_group_role` AS select `auth_group_role`.`id` AS `id`,`auth_group_role`.`usergroup_id` AS `usergroup_id`,`auth_group_role`.`controller` AS `controller`,`auth_group_role`.`method` AS `method`,`auth_group_role`.`info` AS `info`,`auth_group_role`.`status` AS `status`,`auth_group_role`.`created` AS `created`,`auth_group_role`.`createdby` AS `createdby`,`auth_group_role`.`updated` AS `updated`,`auth_group_role`.`updatedby` AS `updatedby`,concat(concat(`auth_group_role`.`controller`,'::'),`auth_group_role`.`method`) AS `classmethod`,`auth_usergroup`.`usergroupname` AS `usergroupname` from (`auth_group_role` left join `auth_usergroup` on((`auth_group_role`.`usergroup_id` = `auth_usergroup`.`id`)));

-- ----------------------------
-- View structure for v_auth_listmethod
-- ----------------------------
DROP VIEW IF EXISTS `v_auth_listmethod`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_auth_listmethod` AS select `auth_listmethod`.`id` AS `id`,`auth_listmethod`.`controller` AS `controller`,`auth_listmethod`.`method` AS `method`,`auth_listmethod`.`info` AS `info`,`auth_listmethod`.`path` AS `path`,`auth_listmethod`.`created` AS `created`,`auth_listmethod`.`createdby` AS `createdby`,concat(`auth_listmethod`.`controller`,'::',`auth_listmethod`.`method`) AS `classmethod`,`auth_users`.`username` AS `username` from (`auth_listmethod` left join `auth_users` on((`auth_listmethod`.`id` = `auth_users`.`id`)));

-- ----------------------------
-- View structure for v_auth_menu_group
-- ----------------------------
DROP VIEW IF EXISTS `v_auth_menu_group`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_auth_menu_group` AS select `t1`.`id` AS `id`,`t1`.`usergroup_id` AS `usergroup_id`,`t1`.`menu_id` AS `menu_id`,`t1`.`parent_id` AS `parent_id`,`t1`.`menuorder` AS `menuorder`,`t1`.`status` AS `status`,if(((select count(`t2`.`parent_id`) from `auth_menu_group` `t2` where ((`t2`.`parent_id` = `t1`.`menu_id`) and (`t2`.`usergroup_id` = `t1`.`usergroup_id`))) > 0),1,0) AS `h_child` from `auth_menu_group` `t1`;

-- ----------------------------
-- View structure for v_auth_menu_group_create
-- ----------------------------
DROP VIEW IF EXISTS `v_auth_menu_group_create`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_auth_menu_group_create` AS select `v_auth_menu_group`.`id` AS `id`,`v_auth_menu_group`.`usergroup_id` AS `usergroup_id`,`v_auth_menu_group`.`menu_id` AS `menu_id`,`v_auth_menu_group`.`parent_id` AS `parent_id`,`v_auth_menu_group`.`menuorder` AS `menuorder`,`v_auth_menu_group`.`status` AS `status`,`v_auth_menu_group`.`h_child` AS `h_child`,`auth_menu`.`menu` AS `menu`,`menu_1`.`menu` AS `parent`,`auth_usergroup`.`usergroupname` AS `usergroupname`,`auth_menu`.`icon` AS `icon`,`auth_menu`.`link` AS `link` from (((`v_auth_menu_group` left join `auth_usergroup` on((`v_auth_menu_group`.`usergroup_id` = `auth_usergroup`.`id`))) left join `auth_menu` on((`v_auth_menu_group`.`menu_id` = `auth_menu`.`id`))) left join `auth_menu` `menu_1` on((`v_auth_menu_group`.`parent_id` = `menu_1`.`id`)));

-- ----------------------------
-- View structure for v_auth_region
-- ----------------------------
DROP VIEW IF EXISTS `v_auth_region`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_auth_region` AS select `t`.`id` AS `user_id`,`t`.`fullname` AS `fullname`,`s`.`id` AS `company_id`,`s`.`company_name` AS `company_name`,group_concat(`s`.`company_address` separator ',') AS `company_address` from (`auth_users` `t` join `m_company` `s` on((0 <> find_in_set(`s`.`id`,`t`.`region`)))) group by `s`.`id`;

-- ----------------------------
-- View structure for v_auth_users
-- ----------------------------
DROP VIEW IF EXISTS `v_auth_users`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_auth_users` AS select `auth_users`.`id` AS `id`,`auth_users`.`username` AS `username`,`auth_users`.`password` AS `password`,`auth_users`.`company_id` AS `company_id`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company`.`company_city` AS `company_city`,`m_company`.`company_type` AS `company_type`,`m_company`.`api_method` AS `api_method`,`m_company`.`api_angkasapura` AS `api_angkasapura`,`auth_users`.`usergroup_id` AS `usergroup_id`,`auth_usergroup`.`usergroupname` AS `usergroupname`,`auth_users`.`userlevel_id` AS `userlevel_id`,`auth_userlevel`.`userlevelname` AS `userlevelname`,`auth_users`.`fullname` AS `fullname`,`auth_users`.`email` AS `email`,`auth_users`.`celluler` AS `celluler`,`auth_users`.`region` AS `region`,(select concat('[',group_concat('{"id":"',`v_auth_region`.`company_id`,'","company_address":"',`v_auth_region`.`company_address`,'"}' separator ','),']') from `v_auth_region` where (`v_auth_region`.`user_id` = `auth_users`.`id`)) AS `region_code`,`auth_users`.`status` AS `status`,`auth_users`.`lastlog` AS `lastlog`,`auth_users`.`chgpass` AS `chgpass`,`auth_users`.`created` AS `created`,`auth_users`.`updated` AS `updated`,`auth_users`.`createdby` AS `createdby`,`auth_users`.`updatedby` AS `updatedby` from (((`auth_users` left join `auth_usergroup` on((`auth_users`.`usergroup_id` = `auth_usergroup`.`id`))) left join `auth_userlevel` on((`auth_users`.`userlevel_id` = `auth_userlevel`.`id`))) left join `m_company` on((`auth_users`.`company_id` = `m_company`.`id`)));

-- ----------------------------
-- View structure for v_inventory_detail
-- ----------------------------
DROP VIEW IF EXISTS `v_inventory_detail`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_inventory_detail` AS select `inventory_detail`.`id` AS `id`,`inventory_detail`.`header_id` AS `header_id`,`inventory_detail`.`sequence` AS `sequence`,`inventory_detail`.`valas_id` AS `valas_id`,`inventory_detail`.`nominal` AS `nominal`,`inventory_detail`.`sheet` AS `sheet`,`inventory_detail`.`price` AS `price`,`inventory_detail`.`subtotal` AS `subtotal`,`inventory_detail`.`status` AS `status`,`inventory_detail`.`created` AS `created`,`inventory_detail`.`updated` AS `updated`,`inventory_detail`.`createdby` AS `createdby`,`inventory_detail`.`updatedby` AS `updatedby`,`inventory_header`.`company_id` AS `company_id`,`inventory_header`.`store_id` AS `store_id`,`inventory_header`.`tr_id` AS `tr_id`,`inventory_header`.`tr_date` AS `tr_date`,`inventory_header`.`tr_number` AS `tr_number`,`m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name` from ((`inventory_detail` left join `m_valas` on((`inventory_detail`.`valas_id` = `m_valas`.`id`))) join `inventory_header` on((`inventory_detail`.`header_id` = `inventory_header`.`id`)));

-- ----------------------------
-- View structure for v_inventory_header
-- ----------------------------
DROP VIEW IF EXISTS `v_inventory_header`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_inventory_header` AS select `inventory_header`.`id` AS `id`,`inventory_header`.`company_id` AS `company_id`,`inventory_header`.`store_id` AS `store_id`,`inventory_header`.`tr_id` AS `tr_id`,`inventory_header`.`tr_date` AS `tr_date`,`inventory_header`.`tr_number` AS `tr_number`,`inventory_header`.`tr_description` AS `tr_description`,`inventory_header`.`status` AS `status`,`inventory_header`.`created` AS `created`,`inventory_header`.`updated` AS `updated`,`inventory_header`.`createdby` AS `createdby`,`inventory_header`.`updatedby` AS `updatedby`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,(select (case when (`inventory_header`.`status` = 3) then 'Closed' when (`inventory_header`.`status` = 2) then 'Canceled' else '' end)) AS `status_name`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((((`inventory_header` left join `m_company_store` on((`inventory_header`.`store_id` = `m_company_store`.`id`))) left join `m_company` on((`inventory_header`.`company_id` = `m_company`.`id`))) left join `auth_users` `usr1` on((`inventory_header`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`inventory_header`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_loga
-- ----------------------------
DROP VIEW IF EXISTS `v_loga`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_loga` AS select `log_a`.`id` AS `id`,`log_a`.`tr_id` AS `tr_id`,`log_a`.`tr_date` AS `tr_date`,`log_a`.`tr_number` AS `tr_number`,`log_a`.`customer_id` AS `customer_id`,`m_customer`.`customer_code` AS `customer_code`,`m_customer`.`customer_name` AS `customer_name`,`m_customer`.`customer_address` AS `customer_address`,`m_nationality`.`nationality_code` AS `nationality_code`,`log_a`.`payment_type_id` AS `payment_type_id`,`m_payment_type`.`payment_type_name` AS `payment_type_name`,`log_a`.`flight_destination` AS `flight_destination`,`flight_destination`.`airport_code` AS `flight_destination_code`,`flight_destination`.`airport_desc` AS `flight_destination_desc`,`log_a`.`flight_barcode` AS `flight_barcode`,`log_a`.`flight_no` AS `flight_no`,`log_a`.`tr_description` AS `tr_description`,`log_a`.`cashier_id` AS `cashier_id`,`usr1`.`fullname` AS `cashier_name`,`log_a`.`company_id` AS `company_id`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company`.`company_city` AS `company_city`,`m_company`.`company_type` AS `company_type`,`m_company_store`.`airport_id` AS `airport_id`,`m_airport`.`airport_code` AS `airport_code`,`m_airport`.`airport_desc` AS `airport_desc`,`m_company_store`.`airport_terminal` AS `airport_terminal`,`log_a`.`store_id` AS `store_id`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address`,`m_company_store`.`store_reference_id` AS `store_reference_id`,`m_transaction`.`title` AS `tr_title`,`log_a`.`status` AS `status`,(select (case when (`log_a`.`status` = 3) then 'Closed' when (`log_a`.`status` = 2) then 'Canceled' else 'Open' end)) AS `status_name`,`log_a`.`created` AS `created`,`log_a`.`updated` AS `updated`,`log_a`.`createdby` AS `createdby`,`log_a`.`updatedby` AS `updatedby`,`usr2`.`fullname` AS `createdby_name`,`usr3`.`fullname` AS `updatedby_name` from (((((((((((`log_a` join `m_transaction` on((`log_a`.`tr_id` = `m_transaction`.`id`))) join `auth_users` `usr1` on((`log_a`.`cashier_id` = `usr1`.`id`))) join `auth_users` `usr2` on((`log_a`.`createdby` = `usr2`.`id`))) left join `auth_users` `usr3` on((`log_a`.`updatedby` = `usr3`.`id`))) join `m_customer` on((`log_a`.`customer_id` = `m_customer`.`id`))) left join `m_nationality` on((`m_customer`.`nationality_id` = `m_nationality`.`id`))) join `m_company` on((`log_a`.`company_id` = `m_company`.`id`))) left join `m_airport` `flight_destination` on((`flight_destination`.`id` = `log_a`.`flight_destination`))) join `m_company_store` on((`m_company_store`.`id` = `log_a`.`store_id`))) join `m_airport` on((`m_airport`.`id` = `m_company_store`.`airport_id`))) join `m_payment_type` on((`m_payment_type`.`id` = `log_a`.`payment_type_id`)));

-- ----------------------------
-- View structure for v_logb
-- ----------------------------
DROP VIEW IF EXISTS `v_logb`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_logb` AS select `log_b`.`id` AS `id`,`log_b`.`sequence` AS `sequence`,`log_b`.`valas_id` AS `valas_id`,`m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`log_b`.`nominal` AS `nominal`,`log_b`.`sheet` AS `sheet`,`log_b`.`price` AS `price`,`log_b`.`subtotal` AS `subtotal`,`log_b`.`status` AS `status`,`log_b`.`header_id` AS `header_id`,`log_a`.`tr_id` AS `tr_id`,`log_a`.`tr_date` AS `tr_date`,`log_a`.`company_id` AS `company_id`,`log_a`.`store_id` AS `store_id`,`log_a`.`customer_id` AS `customer_id`,`log_b`.`created` AS `created`,`log_b`.`updated` AS `updated`,`log_b`.`createdby` AS `createdby`,`log_b`.`updatedby` AS `updatedby` from ((`log_b` join `log_a` on((`log_b`.`header_id` = `log_a`.`id`))) left join `m_valas` on((`log_b`.`valas_id` = `m_valas`.`id`)));

-- ----------------------------
-- View structure for v_m_airport
-- ----------------------------
DROP VIEW IF EXISTS `v_m_airport`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_airport` AS select `m_airport`.`id` AS `id`,`m_airport`.`airport_code` AS `airport_code`,`m_airport`.`airport_desc` AS `airport_desc`,`m_airport`.`status` AS `status`,`m_airport`.`created` AS `created`,`m_airport`.`updated` AS `updated`,`m_airport`.`createdby` AS `createdby`,`m_airport`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_airport` left join `auth_users` `usr1` on((`m_airport`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_airport`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_company
-- ----------------------------
DROP VIEW IF EXISTS `v_m_company`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_company` AS select `m_company`.`id` AS `id`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company`.`company_phone` AS `company_phone`,`m_company`.`company_city` AS `company_city`,`m_company`.`company_pos_code` AS `company_pos_code`,`m_company`.`company_email` AS `company_email`,`m_company`.`company_type` AS `company_type`,`m_company`.`user_limits` AS `user_limits`,`m_company`.`api_method` AS `api_method`,`m_company`.`api_angkasapura` AS `api_angkasapura`,`m_company`.`status` AS `status`,`m_company`.`created` AS `created`,`m_company`.`updated` AS `updated`,`m_company`.`createdby` AS `createdby`,`m_company`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_company` join `auth_users` `usr1` on((`m_company`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_company`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_company_store
-- ----------------------------
DROP VIEW IF EXISTS `v_m_company_store`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_company_store` AS select `m_company_store`.`id` AS `id`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address`,`m_company_store`.`store_reference_id` AS `store_reference_id`,`m_company_store`.`store_reference_name` AS `store_reference_name`,`m_company_store`.`store_reference_address` AS `store_reference_address`,`m_company_store`.`store_reference_terminal` AS `store_reference_terminal`,`m_company_store`.`company_id` AS `company_id`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company`.`company_city` AS `company_city`,`m_company`.`company_type` AS `company_type`,`m_company`.`api_angkasapura` AS `api_angkasapura`,`m_company_store`.`airport_id` AS `airport_id`,`m_airport`.`airport_code` AS `airport_code`,`m_airport`.`airport_desc` AS `airport_desc`,`m_company_store`.`airport_terminal` AS `airport_terminal`,`m_company_store`.`register_status` AS `register_status`,`m_company`.`status` AS `status`,`m_company`.`created` AS `created`,`m_company`.`updated` AS `updated`,`m_company`.`createdby` AS `createdby`,`m_company`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((((`m_company_store` join `m_company` on((`m_company_store`.`company_id` = `m_company`.`id`))) left join `m_airport` on((`m_airport`.`id` = `m_company_store`.`airport_id`))) join `auth_users` `usr1` on((`m_company_store`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_company_store`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_customer
-- ----------------------------
DROP VIEW IF EXISTS `v_m_customer`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_customer` AS select `m_customer`.`id` AS `id`,`m_customer`.`customer_code` AS `customer_code`,`m_customer`.`customer_name` AS `customer_name`,`m_customer`.`customer_nick_name` AS `customer_nick_name`,`m_customer`.`customer_handphone` AS `customer_handphone`,`m_customer`.`customer_phone` AS `customer_phone`,`m_customer`.`customer_address` AS `customer_address`,`m_customer`.`rt_rw` AS `rt_rw`,`m_customer`.`village` AS `village`,`m_customer`.`sub_district` AS `sub_district`,`m_customer`.`city` AS `city`,`m_customer`.`placeofbirth` AS `placeofbirth`,`m_customer`.`bornday` AS `bornday`,`m_customer`.`gender_id` AS `gender_id`,(select (case when (`m_customer`.`gender_id` = 1) then 'Laki - Laki' when (`m_customer`.`gender_id` = 2) then 'Perempuan' else NULL end)) AS `gender_name`,`m_customer`.`work_id` AS `work_id`,`m_customer_work`.`customer_work_name` AS `customer_work_name`,`m_customer`.`customer_type_id` AS `customer_type_id`,`m_customer_type`.`customer_type_name` AS `customer_type_name`,`m_customer`.`customer_data_id` AS `customer_data_id`,`m_customer_data`.`customer_data_name` AS `customer_data_name`,`m_customer`.`customer_data_number` AS `customer_data_number`,`m_customer`.`nationality_id` AS `nationality_id`,`m_nationality`.`nationality_code` AS `nationality_code`,`m_customer`.`npwp_number` AS `npwp_number`,`m_customer`.`npwp_name` AS `npwp_name`,`m_customer`.`customerprofil` AS `customerprofil`,`m_customer`.`kode_densus_dttot` AS `kode_densus_dttot`,`m_customer`.`company_id` AS `company_id`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_customer`.`status` AS `status`,`m_customer`.`created` AS `created`,`m_customer`.`updated` AS `updated`,`m_customer`.`createdby` AS `createdby`,`m_customer`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from (((((((`m_customer` join `m_company` on((`m_customer`.`company_id` = `m_company`.`id`))) left join `auth_users` `usr1` on((`m_customer`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_customer`.`updatedby` = `usr2`.`id`))) left join `m_customer_type` on((`m_customer`.`customer_type_id` = `m_customer_type`.`id`))) left join `m_customer_data` on((`m_customer`.`customer_data_id` = `m_customer_data`.`id`))) left join `m_nationality` on((`m_customer`.`nationality_id` = `m_nationality`.`id`))) left join `m_customer_work` on((`m_customer`.`work_id` = `m_customer_work`.`id`)));

-- ----------------------------
-- View structure for v_m_customer_data
-- ----------------------------
DROP VIEW IF EXISTS `v_m_customer_data`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_customer_data` AS select `m_customer_data`.`id` AS `id`,`m_customer_data`.`customer_data_name` AS `customer_data_name`,`m_customer_data`.`status` AS `status`,`m_customer_data`.`created` AS `created`,`m_customer_data`.`updated` AS `updated`,`m_customer_data`.`createdby` AS `createdby`,`m_customer_data`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_customer_data` left join `auth_users` `usr1` on((`m_customer_data`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_customer_data`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_customer_type
-- ----------------------------
DROP VIEW IF EXISTS `v_m_customer_type`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_customer_type` AS select `m_customer_type`.`id` AS `id`,`m_customer_type`.`customer_type_name` AS `customer_type_name`,`m_customer_type`.`status` AS `status`,`m_customer_type`.`created` AS `created`,`m_customer_type`.`updated` AS `updated`,`m_customer_type`.`createdby` AS `createdby`,`m_customer_type`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_customer_type` left join `auth_users` `usr1` on((`m_customer_type`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_customer_type`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_customer_work
-- ----------------------------
DROP VIEW IF EXISTS `v_m_customer_work`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_customer_work` AS select `m_customer_work`.`id` AS `id`,`m_customer_work`.`customer_work_name` AS `customer_work_name`,`m_customer_work`.`status` AS `status`,`m_customer_work`.`created` AS `created`,`m_customer_work`.`updated` AS `updated`,`m_customer_work`.`createdby` AS `createdby`,`m_customer_work`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_customer_work` left join `auth_users` `usr1` on((`m_customer_work`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_customer_work`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_nationality
-- ----------------------------
DROP VIEW IF EXISTS `v_m_nationality`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_nationality` AS select `m_nationality`.`id` AS `id`,`m_nationality`.`nationality_code` AS `nationality_code`,`m_nationality`.`nationality_desc` AS `nationality_desc`,`m_nationality`.`status` AS `status`,`m_nationality`.`created` AS `created`,`m_nationality`.`updated` AS `updated`,`m_nationality`.`createdby` AS `createdby`,`m_nationality`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_nationality` left join `auth_users` `usr1` on((`m_nationality`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_nationality`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_payment_type
-- ----------------------------
DROP VIEW IF EXISTS `v_m_payment_type`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_payment_type` AS select `m_payment_type`.`id` AS `id`,`m_payment_type`.`payment_type_name` AS `payment_type_name`,`m_payment_type`.`status` AS `status`,`m_payment_type`.`created` AS `created`,`m_payment_type`.`updated` AS `updated`,`m_payment_type`.`createdby` AS `createdby`,`m_payment_type`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_payment_type` left join `auth_users` `usr1` on((`m_payment_type`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_payment_type`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_transaction
-- ----------------------------
DROP VIEW IF EXISTS `v_m_transaction`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_transaction` AS select `m_transaction`.`id` AS `id`,`m_transaction`.`title` AS `title`,`m_transaction`.`description` AS `description`,`m_transaction`.`status` AS `status`,`m_transaction`.`created` AS `created`,`m_transaction`.`updated` AS `updated`,`m_transaction`.`createdby` AS `createdby`,`m_transaction`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_transaction` left join `auth_users` `usr1` on((`m_transaction`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_transaction`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_m_transaction_date
-- ----------------------------
DROP VIEW IF EXISTS `v_m_transaction_date`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_transaction_date` AS select `m_transaction_date`.`id` AS `id`,`m_company_store`.`company_id` AS `company_id`,`m_transaction_date`.`store_id` AS `store_id`,`m_company_store`.`airport_id` AS `airport_id`,`m_transaction_date`.`tr_id` AS `tr_id`,`m_transaction`.`title` AS `tr_title`,`m_transaction`.`description` AS `tr_description`,`m_transaction_date`.`tr_date` AS `tr_date`,`m_transaction_date`.`status` AS `status`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company`.`company_city` AS `company_city`,`m_company`.`company_type` AS `company_type`,`m_airport`.`airport_code` AS `airport_code`,`m_airport`.`airport_desc` AS `airport_desc`,`m_company_store`.`airport_terminal` AS `airport_terminal`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address`,`m_company_store`.`store_reference_id` AS `store_reference_id`,`m_transaction_date`.`created` AS `created`,`m_transaction_date`.`updated` AS `updated`,`m_transaction_date`.`createdby` AS `createdby`,`m_transaction_date`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((((((`m_transaction_date` join `m_transaction` on((`m_transaction`.`id` = `m_transaction_date`.`tr_id`))) join `auth_users` `usr1` on((`usr1`.`id` = `m_transaction_date`.`createdby`))) left join `auth_users` `usr2` on((`usr2`.`id` = `m_transaction_date`.`updatedby`))) join `m_company_store` on((`m_company_store`.`id` = `m_transaction_date`.`store_id`))) join `m_company` on((`m_company_store`.`company_id` = `m_company`.`id`))) join `m_airport` on((`m_airport`.`id` = `m_company_store`.`airport_id`)));

-- ----------------------------
-- View structure for v_m_valas
-- ----------------------------
DROP VIEW IF EXISTS `v_m_valas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_m_valas` AS select `m_valas`.`id` AS `id`,`m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`m_valas`.`status` AS `status`,`m_valas`.`created` AS `created`,`m_valas`.`updated` AS `updated`,`m_valas`.`createdby` AS `createdby`,`m_valas`.`updatedby` AS `updatedby`,`usr1`.`fullname` AS `createdby_name`,`usr2`.`fullname` AS `updatedby_name` from ((`m_valas` left join `auth_users` `usr1` on((`m_valas`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`m_valas`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_rate_daily
-- ----------------------------
DROP VIEW IF EXISTS `v_rate_daily`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_rate_daily` AS select `rate_daily`.`id` AS `id`,`rate_daily`.`company_id` AS `company_id`,`rate_daily`.`valas_id` AS `valas_id`,`m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`rate_daily`.`rate_date` AS `rate_date`,`rate_daily`.`rate_buy` AS `rate_buy`,`rate_daily`.`difference_buy` AS `difference_buy`,`rate_daily`.`rate_sale` AS `rate_sale`,`rate_daily`.`difference_sale` AS `difference_sale`,`rate_daily`.`price_buy_bot` AS `price_buy_bot`,`rate_daily`.`price_buy_top` AS `price_buy_top`,`rate_daily`.`price_sale_bot` AS `price_sale_bot`,`rate_daily`.`price_sale_top` AS `price_sale_top`,`rate_daily`.`status` AS `status`,`rate_daily`.`created` AS `created`,`rate_daily`.`updated` AS `updated`,`rate_daily`.`createdby` AS `createdby`,`usr1`.`fullname` AS `createdby_name`,`rate_daily`.`updatedby` AS `updatedby`,`usr2`.`fullname` AS `updatedby_name` from (((`rate_daily` left join `m_valas` on((`rate_daily`.`valas_id` = `m_valas`.`id`))) left join `auth_users` `usr1` on((`rate_daily`.`createdby` = `usr1`.`id`))) left join `auth_users` `usr2` on((`rate_daily`.`updatedby` = `usr2`.`id`)));

-- ----------------------------
-- View structure for v_stock1
-- ----------------------------
DROP VIEW IF EXISTS `v_stock1`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stock1` AS select `inventory_header`.`company_id` AS `company_id`,`inventory_header`.`store_id` AS `store_id`,year(`inventory_header`.`tr_date`) AS `stock_year`,month(`inventory_header`.`tr_date`) AS `stock_month`,`inventory_header`.`tr_id` AS `tr_id`,`inventory_detail`.`valas_id` AS `valas_id`,`inventory_detail`.`nominal` AS `invin_nominal`,sum(`inventory_detail`.`sheet`) AS `invin_sheet` from (`inventory_detail` join `inventory_header` on((`inventory_detail`.`header_id` = `inventory_header`.`id`))) where ((`inventory_header`.`tr_id` = 3) and (`inventory_header`.`status` = 3)) group by `inventory_header`.`company_id`,`inventory_header`.`store_id`,year(`inventory_header`.`tr_date`),month(`inventory_header`.`tr_date`),`inventory_header`.`tr_id`,`inventory_detail`.`valas_id`,`inventory_detail`.`nominal`;

-- ----------------------------
-- View structure for v_stock2
-- ----------------------------
DROP VIEW IF EXISTS `v_stock2`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stock2` AS select `inventory_header`.`company_id` AS `company_id`,`inventory_header`.`store_id` AS `store_id`,year(`inventory_header`.`tr_date`) AS `stock_year`,month(`inventory_header`.`tr_date`) AS `stock_month`,`inventory_header`.`tr_id` AS `tr_id`,`inventory_detail`.`valas_id` AS `valas_id`,`inventory_detail`.`nominal` AS `invout_nominal`,sum(`inventory_detail`.`sheet`) AS `invout_sheet` from (`inventory_detail` join `inventory_header` on((`inventory_detail`.`header_id` = `inventory_header`.`id`))) where ((`inventory_header`.`tr_id` = 4) and (`inventory_header`.`status` = 3)) group by `inventory_header`.`company_id`,`inventory_header`.`store_id`,year(`inventory_header`.`tr_date`),month(`inventory_header`.`tr_date`),`inventory_header`.`tr_id`,`inventory_detail`.`valas_id`,`inventory_detail`.`nominal`;

-- ----------------------------
-- View structure for v_stock3
-- ----------------------------
DROP VIEW IF EXISTS `v_stock3`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stock3` AS select `tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,year(`tr_header`.`tr_date`) AS `stock_year`,month(`tr_header`.`tr_date`) AS `stock_month`,`tr_header`.`tr_id` AS `tr_id`,`tr_detail`.`valas_id` AS `valas_id`,`tr_detail`.`nominal` AS `buy_nominal`,sum(`tr_detail`.`sheet`) AS `buy_sheet` from (`tr_detail` join `tr_header` on((`tr_detail`.`header_id` = `tr_header`.`id`))) where ((`tr_header`.`tr_id` = 1) and (`tr_header`.`status` in (1,3,4))) group by `tr_header`.`company_id`,`tr_header`.`store_id`,year(`tr_header`.`tr_date`),month(`tr_header`.`tr_date`),`tr_header`.`tr_id`,`tr_detail`.`valas_id`,`tr_detail`.`nominal`;

-- ----------------------------
-- View structure for v_stock4
-- ----------------------------
DROP VIEW IF EXISTS `v_stock4`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stock4` AS select `tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,year(`tr_header`.`tr_date`) AS `stock_year`,month(`tr_header`.`tr_date`) AS `stock_month`,`tr_header`.`tr_id` AS `tr_id`,`tr_detail`.`valas_id` AS `valas_id`,`tr_detail`.`nominal` AS `sales_nominal`,sum(`tr_detail`.`sheet`) AS `sales_sheet` from (`tr_detail` join `tr_header` on((`tr_detail`.`header_id` = `tr_header`.`id`))) where ((`tr_header`.`tr_id` = 2) and (`tr_header`.`status` in (1,3,4))) group by `tr_header`.`company_id`,`tr_header`.`store_id`,year(`tr_header`.`tr_date`),month(`tr_header`.`tr_date`),`tr_header`.`tr_id`,`tr_detail`.`valas_id`,`tr_detail`.`nominal`;

-- ----------------------------
-- View structure for v_stock5
-- ----------------------------
DROP VIEW IF EXISTS `v_stock5`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stock5` AS select `log_a`.`company_id` AS `company_id`,`log_a`.`store_id` AS `store_id`,year(`log_a`.`tr_date`) AS `stock_year`,month(`log_a`.`tr_date`) AS `stock_month`,`log_b`.`valas_id` AS `valas_id`,`log_b`.`nominal` AS `sales_alocation_nominal`,sum(`log_b`.`sheet`) AS `sales_alocation_sheet` from (`log_b` join `log_a` on((`log_b`.`header_id` = `log_a`.`id`))) where ((`log_a`.`status` = 1) and (`log_a`.`tr_id` = 2)) group by `log_a`.`company_id`,`log_a`.`store_id`,year(`log_a`.`tr_date`),month(`log_a`.`tr_date`),`log_b`.`valas_id`,`log_b`.`nominal`;

-- ----------------------------
-- View structure for v_stock9
-- ----------------------------
DROP VIEW IF EXISTS `v_stock9`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stock9` AS select `stock`.`id` AS `id`,`m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`stock`.`valas_id` AS `valas_id`,`stock`.`company_id` AS `company_id`,`stock`.`store_id` AS `store_id`,`stock`.`stock_year` AS `stock_year`,`stock`.`stock_month` AS `stock_month`,`stock`.`nominal` AS `nominal`,`stock`.`beginning_stock_sheet` AS `beginning_stock_sheet`,if((`v_stock1`.`invin_sheet` is null),0,`v_stock1`.`invin_sheet`) AS `invin_sheet`,if((`v_stock2`.`invout_sheet` is null),0,`v_stock2`.`invout_sheet`) AS `invout_sheet`,if((`v_stock3`.`buy_sheet` is null),0,`v_stock3`.`buy_sheet`) AS `buy_sheet`,if((`v_stock4`.`sales_sheet` is null),0,`v_stock4`.`sales_sheet`) AS `sales_sheet`,if((`v_stock5`.`sales_alocation_sheet` is null),0,`v_stock5`.`sales_alocation_sheet`) AS `sales_alocation_sheet`,(((((`stock`.`beginning_stock_sheet` + if((`v_stock1`.`invin_sheet` is null),0,`v_stock1`.`invin_sheet`)) - if((`v_stock2`.`invout_sheet` is null),0,`v_stock2`.`invout_sheet`)) + if((`v_stock3`.`buy_sheet` is null),0,`v_stock3`.`buy_sheet`)) - if((`v_stock4`.`sales_sheet` is null),0,`v_stock4`.`sales_sheet`)) - if((`v_stock5`.`sales_alocation_sheet` is null),0,`v_stock5`.`sales_alocation_sheet`)) AS `last_stock_sheet`,(select `stock_price_average`.`stock_last_price` from `stock_price_average` where ((`stock_price_average`.`valas_id` = `stock`.`valas_id`) and (`stock_price_average`.`company_id` = `stock`.`company_id`) and (`stock_price_average`.`store_id` = `stock`.`store_id`) and (`stock_price_average`.`stock_year` = `stock`.`stock_year`) and (`stock_price_average`.`stock_month` = `stock_price_average`.`stock_month`)) order by `stock_price_average`.`id` desc limit 1) AS `stock_last_price`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address`,`stock`.`status` AS `status`,`stock`.`created` AS `created`,`stock`.`createdby` AS `createdby`,`stock`.`updated` AS `updated`,`stock`.`updatedby` AS `updatedby` from ((((((((`stock` join `m_valas` on((`m_valas`.`id` = `stock`.`valas_id`))) left join `v_stock1` on(((`stock`.`company_id` = `v_stock1`.`company_id`) and (`stock`.`store_id` = `v_stock1`.`store_id`) and (`stock`.`valas_id` = `v_stock1`.`valas_id`) and (`stock`.`nominal` = `v_stock1`.`invin_nominal`) and (`stock`.`stock_year` = `v_stock1`.`stock_year`) and (`stock`.`stock_month` = `v_stock1`.`stock_month`)))) left join `v_stock2` on(((`stock`.`company_id` = `v_stock2`.`company_id`) and (`stock`.`store_id` = `v_stock2`.`store_id`) and (`stock`.`valas_id` = `v_stock2`.`valas_id`) and (`stock`.`nominal` = `v_stock2`.`invout_nominal`) and (`stock`.`stock_year` = `v_stock2`.`stock_year`) and (`stock`.`stock_month` = `v_stock2`.`stock_month`)))) left join `v_stock3` on(((`stock`.`company_id` = `v_stock3`.`company_id`) and (`stock`.`store_id` = `v_stock3`.`store_id`) and (`stock`.`valas_id` = `v_stock3`.`valas_id`) and (`stock`.`nominal` = `v_stock3`.`buy_nominal`) and (`stock`.`stock_year` = `v_stock3`.`stock_year`) and (`stock`.`stock_month` = `v_stock3`.`stock_month`)))) left join `v_stock4` on(((`stock`.`company_id` = `v_stock4`.`company_id`) and (`stock`.`store_id` = `v_stock4`.`store_id`) and (`stock`.`valas_id` = `v_stock4`.`valas_id`) and (`stock`.`nominal` = `v_stock4`.`sales_nominal`) and (`stock`.`stock_year` = `v_stock4`.`stock_year`) and (`stock`.`stock_month` = `v_stock4`.`stock_month`)))) left join `v_stock5` on(((`stock`.`company_id` = `v_stock5`.`company_id`) and (`stock`.`store_id` = `v_stock5`.`store_id`) and (`stock`.`valas_id` = `v_stock5`.`valas_id`) and (`stock`.`nominal` = `v_stock5`.`sales_alocation_nominal`) and (`stock`.`stock_year` = `v_stock5`.`stock_year`) and (`stock`.`stock_month` = `v_stock5`.`stock_month`)))) left join `m_company` on((`m_company`.`id` = `stock`.`company_id`))) left join `m_company_store` on((`m_company_store`.`id` = `stock`.`store_id`))) group by `m_valas`.`valas_code`,`m_valas`.`valas_name`,`stock`.`valas_id`,`stock`.`company_id`,`stock`.`store_id`,`stock`.`stock_year`,`stock`.`stock_month`,`stock`.`nominal`;

-- ----------------------------
-- View structure for v_stock_price
-- ----------------------------
DROP VIEW IF EXISTS `v_stock_price`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stock_price` AS select `stock_price_average`.`id` AS `id`,`stock_price_average`.`company_id` AS `company_id`,`stock_price_average`.`store_id` AS `store_id`,`stock_price_average`.`stock_date` AS `stock_date`,`stock_price_average`.`stock_year` AS `stock_year`,`stock_price_average`.`stock_month` AS `stock_month`,`stock_price_average`.`valas_id` AS `valas_id`,`stock_price_average`.`buy_tr_header_id` AS `buy_tr_header_id`,`stock_price_average`.`buy_amount` AS `buy_amount`,`stock_price_average`.`buy_price` AS `buy_price`,`stock_price_average`.`buy_total` AS `buy_total`,`stock_price_average`.`sale_tr_header_id` AS `sale_tr_header_id`,`stock_price_average`.`sale_amount` AS `sale_amount`,`stock_price_average`.`sale_price` AS `sale_price`,`stock_price_average`.`sale_total` AS `sale_total`,`stock_price_average`.`sale_average_total` AS `sale_average_total`,`stock_price_average`.`stock_last_amount` AS `stock_last_amount`,`stock_price_average`.`stock_last_price` AS `stock_last_price`,`stock_price_average`.`stock_last_total` AS `stock_last_total`,`stock_price_average`.`profit` AS `profit`,`stock_price_average`.`created` AS `created`,`stock_price_average`.`createdby` AS `createdby`,`tr_header_buy`.`tr_number` AS `buy_tr_number`,`tr_header_sale`.`tr_number` AS `sale_tr_number`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address`,`m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name` from (((((`stock_price_average` left join `tr_header` `tr_header_buy` on((`stock_price_average`.`buy_tr_header_id` = `tr_header_buy`.`id`))) left join `tr_header` `tr_header_sale` on((`stock_price_average`.`sale_tr_header_id` = `tr_header_sale`.`id`))) join `m_company` on((`stock_price_average`.`company_id` = `m_company`.`id`))) join `m_company_store` on((`stock_price_average`.`store_id` = `m_company_store`.`id`))) join `m_valas` on((`stock_price_average`.`valas_id` = `m_valas`.`id`)));

-- ----------------------------
-- View structure for v_stocksale
-- ----------------------------
DROP VIEW IF EXISTS `v_stocksale`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stocksale` AS select `m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`v_stock9`.`valas_id` AS `valas_id`,`v_stock9`.`nominal` AS `nominal`,`v_stock9`.`company_id` AS `company_id`,`v_stock9`.`store_id` AS `store_id`,`m_valas`.`status` AS `status` from (`v_stock9` join `m_valas` on((`v_stock9`.`valas_id` = `m_valas`.`id`))) where ((`v_stock9`.`last_stock_sheet` > 0) and (`v_stock9`.`stock_year` = year(curdate())) and (`v_stock9`.`stock_month` = month(curdate()))) group by `v_stock9`.`company_id`,`v_stock9`.`valas_id`,`v_stock9`.`nominal`;

-- ----------------------------
-- View structure for v_summary_by_amount_pivot_ytd
-- ----------------------------
DROP VIEW IF EXISTS `v_summary_by_amount_pivot_ytd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_summary_by_amount_pivot_ytd` AS select `m_valas`.`valas_code` AS `valas_code`,`tr_detail`.`valas_id` AS `valas_id`,`tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,year(`tr_header`.`tr_date`) AS `tr_year`,sum(if(((month(`tr_header`.`tr_date`) = 1) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy1`,sum(if(((month(`tr_header`.`tr_date`) = 1) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales1`,sum(if(((month(`tr_header`.`tr_date`) = 2) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy2`,sum(if(((month(`tr_header`.`tr_date`) = 2) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales2`,sum(if(((month(`tr_header`.`tr_date`) = 3) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy3`,sum(if(((month(`tr_header`.`tr_date`) = 3) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales3`,sum(if(((month(`tr_header`.`tr_date`) = 4) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy4`,sum(if(((month(`tr_header`.`tr_date`) = 4) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales4`,sum(if(((month(`tr_header`.`tr_date`) = 5) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy5`,sum(if(((month(`tr_header`.`tr_date`) = 5) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales5`,sum(if(((month(`tr_header`.`tr_date`) = 6) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy6`,sum(if(((month(`tr_header`.`tr_date`) = 6) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales6`,sum(if(((month(`tr_header`.`tr_date`) = 7) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy7`,sum(if(((month(`tr_header`.`tr_date`) = 7) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales7`,sum(if(((month(`tr_header`.`tr_date`) = 8) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy8`,sum(if(((month(`tr_header`.`tr_date`) = 8) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales8`,sum(if(((month(`tr_header`.`tr_date`) = 9) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy9`,sum(if(((month(`tr_header`.`tr_date`) = 9) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales9`,sum(if(((month(`tr_header`.`tr_date`) = 10) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy10`,sum(if(((month(`tr_header`.`tr_date`) = 10) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales10`,sum(if(((month(`tr_header`.`tr_date`) = 11) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy11`,sum(if(((month(`tr_header`.`tr_date`) = 11) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales11`,sum(if(((month(`tr_header`.`tr_date`) = 12) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy12`,sum(if(((month(`tr_header`.`tr_date`) = 12) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales12`,sum(if(((month(`tr_header`.`tr_date`) >= 1) and (month(`tr_header`.`tr_date`) <= 12) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `total_buy`,sum(if(((month(`tr_header`.`tr_date`) >= 1) and (month(`tr_header`.`tr_date`) <= 12) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `total_sales` from ((`tr_detail` join `tr_header` on((`tr_header`.`id` = `tr_detail`.`header_id`))) join `m_valas` on((`tr_detail`.`valas_id` = `m_valas`.`id`))) where (`tr_detail`.`status` in (1,3,4)) group by `m_valas`.`valas_code`,`tr_detail`.`valas_id`,`tr_header`.`company_id`,`tr_header`.`store_id`,year(`tr_header`.`tr_date`);

-- ----------------------------
-- View structure for v_summary_by_date
-- ----------------------------
DROP VIEW IF EXISTS `v_summary_by_date`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_summary_by_date` AS select `m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`tr_detail`.`valas_id` AS `valas_id`,`tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,`tr_header`.`tr_date` AS `tr_date`,sum(if(((`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy_nominal`,sum(if(((`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),`tr_detail`.`subtotal`,0)) AS `buy_equivalent`,sum(if(((`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales_nominal`,sum(if(((`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),`tr_detail`.`subtotal`,0)) AS `sales_equivalent` from ((`tr_detail` join `tr_header` on((`tr_header`.`id` = `tr_detail`.`header_id`))) join `m_valas` on((`tr_detail`.`valas_id` = `m_valas`.`id`))) where (`tr_detail`.`status` in (1,3,4)) group by `m_valas`.`valas_code`,`m_valas`.`valas_name`,`tr_detail`.`valas_id`,`tr_header`.`company_id`,`tr_header`.`store_id`,`tr_header`.`tr_date`;

-- ----------------------------
-- View structure for v_summary_by_equivalent_pivot_ytd
-- ----------------------------
DROP VIEW IF EXISTS `v_summary_by_equivalent_pivot_ytd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_summary_by_equivalent_pivot_ytd` AS select `m_valas`.`valas_code` AS `valas_code`,`tr_detail`.`valas_id` AS `valas_id`,`tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,year(`tr_header`.`tr_date`) AS `tr_year`,sum(if(((month(`tr_header`.`tr_date`) = 1) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy1`,sum(if(((month(`tr_header`.`tr_date`) = 1) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales1`,sum(if(((month(`tr_header`.`tr_date`) = 2) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy2`,sum(if(((month(`tr_header`.`tr_date`) = 2) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales2`,sum(if(((month(`tr_header`.`tr_date`) = 3) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy3`,sum(if(((month(`tr_header`.`tr_date`) = 3) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales3`,sum(if(((month(`tr_header`.`tr_date`) = 4) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy4`,sum(if(((month(`tr_header`.`tr_date`) = 4) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales4`,sum(if(((month(`tr_header`.`tr_date`) = 5) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy5`,sum(if(((month(`tr_header`.`tr_date`) = 5) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales5`,sum(if(((month(`tr_header`.`tr_date`) = 6) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy6`,sum(if(((month(`tr_header`.`tr_date`) = 6) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales6`,sum(if(((month(`tr_header`.`tr_date`) = 7) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy7`,sum(if(((month(`tr_header`.`tr_date`) = 7) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales7`,sum(if(((month(`tr_header`.`tr_date`) = 8) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy8`,sum(if(((month(`tr_header`.`tr_date`) = 8) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales8`,sum(if(((month(`tr_header`.`tr_date`) = 9) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy9`,sum(if(((month(`tr_header`.`tr_date`) = 9) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales9`,sum(if(((month(`tr_header`.`tr_date`) = 10) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy10`,sum(if(((month(`tr_header`.`tr_date`) = 10) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales10`,sum(if(((month(`tr_header`.`tr_date`) = 11) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy11`,sum(if(((month(`tr_header`.`tr_date`) = 11) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales11`,sum(if(((month(`tr_header`.`tr_date`) = 12) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `buy12`,sum(if(((month(`tr_header`.`tr_date`) = 12) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `sales12`,sum(if(((month(`tr_header`.`tr_date`) >= 1) and (month(`tr_header`.`tr_date`) <= 12) and (`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `total_buy`,sum(if(((month(`tr_header`.`tr_date`) >= 1) and (month(`tr_header`.`tr_date`) <= 12) and (`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),((`tr_detail`.`nominal` * `tr_detail`.`sheet`) * `tr_detail`.`price`),0)) AS `total_sales` from ((`tr_detail` join `tr_header` on((`tr_header`.`id` = `tr_detail`.`header_id`))) join `m_valas` on((`tr_detail`.`valas_id` = `m_valas`.`id`))) where (`tr_detail`.`status` in (1,3,4)) group by `m_valas`.`valas_code`,`tr_detail`.`valas_id`,`tr_header`.`company_id`,`tr_header`.`store_id`,year(`tr_header`.`tr_date`);

-- ----------------------------
-- View structure for v_summary_by_month
-- ----------------------------
DROP VIEW IF EXISTS `v_summary_by_month`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_summary_by_month` AS select `m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`tr_detail`.`valas_id` AS `valas_id`,`tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,year(`tr_header`.`tr_date`) AS `tr_year`,month(`tr_header`.`tr_date`) AS `tr_month`,sum(if(((`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy_nominal`,sum(if(((`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),`tr_detail`.`subtotal`,0)) AS `buy_equivalent`,sum(if(((`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales_nominal`,sum(if(((`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),`tr_detail`.`subtotal`,0)) AS `sales_equivalent` from ((`tr_detail` join `tr_header` on((`tr_header`.`id` = `tr_detail`.`header_id`))) join `m_valas` on((`tr_detail`.`valas_id` = `m_valas`.`id`))) where (`tr_detail`.`status` in (1,3,4)) group by `m_valas`.`valas_code`,`m_valas`.`valas_name`,`tr_detail`.`valas_id`,`tr_header`.`company_id`,`tr_header`.`store_id`,year(`tr_header`.`tr_date`),month(`tr_header`.`tr_date`);

-- ----------------------------
-- View structure for v_summary_by_year
-- ----------------------------
DROP VIEW IF EXISTS `v_summary_by_year`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_summary_by_year` AS select `m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`tr_detail`.`valas_id` AS `valas_id`,`tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,year(`tr_header`.`tr_date`) AS `tr_year`,sum(if(((`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `buy_nominal`,sum(if(((`tr_header`.`tr_id` = 1) and (`tr_detail`.`status` in (1,3,4))),`tr_detail`.`subtotal`,0)) AS `buy_equivalent`,sum(if(((`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),(`tr_detail`.`nominal` * `tr_detail`.`sheet`),0)) AS `sales_nominal`,sum(if(((`tr_header`.`tr_id` = 2) and (`tr_detail`.`status` in (1,3,4))),`tr_detail`.`subtotal`,0)) AS `sales_equivalent` from ((`tr_detail` join `tr_header` on((`tr_header`.`id` = `tr_detail`.`header_id`))) join `m_valas` on((`tr_detail`.`valas_id` = `m_valas`.`id`))) where (`tr_detail`.`status` in (1,3,4)) group by `m_valas`.`valas_code`,`m_valas`.`valas_name`,`tr_detail`.`valas_id`,`tr_header`.`company_id`,`tr_header`.`store_id`,year(`tr_header`.`tr_date`);

-- ----------------------------
-- View structure for v_tr_detail
-- ----------------------------
DROP VIEW IF EXISTS `v_tr_detail`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_tr_detail` AS select `tr_detail`.`id` AS `id`,`tr_detail`.`sequence` AS `sequence`,`tr_detail`.`valas_id` AS `valas_id`,`m_valas`.`valas_code` AS `valas_code`,`m_valas`.`valas_name` AS `valas_name`,`tr_detail`.`nominal` AS `nominal`,`tr_detail`.`sheet` AS `sheet`,`tr_detail`.`price` AS `price`,`tr_detail`.`subtotal` AS `subtotal`,`tr_detail`.`status` AS `status`,`tr_detail`.`header_id` AS `header_id`,`tr_header`.`tr_id` AS `tr_id`,`tr_header`.`tr_date` AS `tr_date`,`tr_header`.`company_id` AS `company_id`,`tr_header`.`store_id` AS `store_id`,`tr_header`.`customer_id` AS `customer_id`,`tr_detail`.`created` AS `created`,`tr_detail`.`updated` AS `updated`,`tr_detail`.`createdby` AS `createdby`,`tr_detail`.`updatedby` AS `updatedby` from ((`tr_detail` join `tr_header` on((`tr_detail`.`header_id` = `tr_header`.`id`))) left join `m_valas` on((`tr_detail`.`valas_id` = `m_valas`.`id`)));

-- ----------------------------
-- View structure for v_tr_header
-- ----------------------------
DROP VIEW IF EXISTS `v_tr_header`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_tr_header` AS select `tr_header`.`id` AS `id`,`tr_header`.`tr_id` AS `tr_id`,`tr_header`.`tr_date` AS `tr_date`,`tr_header`.`tr_number` AS `tr_number`,`tr_header`.`customer_id` AS `customer_id`,`m_customer`.`customer_code` AS `customer_code`,`m_customer`.`customer_name` AS `customer_name`,`m_customer`.`customer_address` AS `customer_address`,`m_nationality`.`nationality_code` AS `nationality_code`,`tr_header`.`payment_type_id` AS `payment_type_id`,`m_payment_type`.`payment_type_name` AS `payment_type_name`,`tr_header`.`flight_destination` AS `flight_destination`,`flight_destination`.`airport_code` AS `flight_destination_code`,`flight_destination`.`airport_desc` AS `flight_destination_desc`,`tr_header`.`flight_barcode` AS `flight_barcode`,`tr_header`.`flight_no` AS `flight_no`,`tr_header`.`tr_description` AS `tr_description`,`tr_header`.`cashier_id` AS `cashier_id`,`usr1`.`fullname` AS `cashier_name`,`tr_header`.`company_id` AS `company_id`,`m_company`.`company_name` AS `company_name`,`m_company`.`company_address` AS `company_address`,`m_company`.`company_city` AS `company_city`,`m_company`.`company_type` AS `company_type`,`m_company_store`.`airport_id` AS `airport_id`,`m_airport`.`airport_code` AS `airport_code`,`m_airport`.`airport_desc` AS `airport_desc`,`m_company_store`.`airport_terminal` AS `airport_terminal`,`tr_header`.`store_id` AS `store_id`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address`,`m_company_store`.`store_reference_id` AS `store_reference_id`,`m_transaction`.`title` AS `tr_title`,`tr_header`.`status` AS `status`,(select (case when (`tr_header`.`status` in (3,4)) then 'Closed' when (`tr_header`.`status` = 2) then 'Canceled' else 'Open' end)) AS `status_name`,`tr_header`.`created` AS `created`,`tr_header`.`updated` AS `updated`,`tr_header`.`createdby` AS `createdby`,`tr_header`.`updatedby` AS `updatedby`,`usr2`.`fullname` AS `createdby_name`,`usr3`.`fullname` AS `updatedby_name` from (((((((((((`tr_header` join `m_transaction` on((`tr_header`.`tr_id` = `m_transaction`.`id`))) join `auth_users` `usr1` on((`tr_header`.`cashier_id` = `usr1`.`id`))) join `auth_users` `usr2` on((`tr_header`.`createdby` = `usr2`.`id`))) left join `auth_users` `usr3` on((`tr_header`.`updatedby` = `usr3`.`id`))) join `m_customer` on((`tr_header`.`customer_id` = `m_customer`.`id`))) left join `m_nationality` on((`m_customer`.`nationality_id` = `m_nationality`.`id`))) join `m_company` on((`tr_header`.`company_id` = `m_company`.`id`))) left join `m_airport` `flight_destination` on((`flight_destination`.`id` = `tr_header`.`flight_destination`))) join `m_company_store` on((`m_company_store`.`id` = `tr_header`.`store_id`))) join `m_airport` on((`m_airport`.`id` = `m_company_store`.`airport_id`))) join `m_payment_type` on((`m_payment_type`.`id` = `tr_header`.`payment_type_id`)));

-- ----------------------------
-- View structure for v_trx_api_ap2_get
-- ----------------------------
DROP VIEW IF EXISTS `v_trx_api_ap2_get`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_trx_api_ap2_get` AS select `trx_api_ap2_get`.`id` AS `id`,`trx_api_ap2_get`.`company_id` AS `company_id`,`trx_api_ap2_get`.`store_id` AS `store_id`,`trx_api_ap2_get`.`tr_id` AS `tr_id`,`tr_header`.`id` AS `header_id`,`tr_header`.`ref_id` AS `ref_id`,`tr_header`.`customer_id` AS `customer_id`,`trx_api_ap2_get`.`invoice_number` AS `invoice_number`,`trx_api_ap2_get`.`transaction_date` AS `transaction_date`,`trx_api_ap2_get`.`transaction_time` AS `transaction_time`,`trx_api_ap2_get`.`status` AS `status`,count(`trx_api_ap2_get`.`invoice_number`) AS `total_data`,`tr_header`.`created` AS `created`,`tr_header`.`updated` AS `updated`,`auth_users`.`fullname` AS `createdby_name` from ((`trx_api_ap2_get` join `tr_header` on(((`tr_header`.`tr_number` = `trx_api_ap2_get`.`invoice_number`) and (`tr_header`.`tr_id` = `trx_api_ap2_get`.`tr_id`)))) join `auth_users` on((`auth_users`.`id` = `tr_header`.`createdby`))) group by `trx_api_ap2_get`.`company_id`,`trx_api_ap2_get`.`store_id`,`trx_api_ap2_get`.`tr_id`,`tr_header`.`id`,`tr_header`.`ref_id`,`tr_header`.`customer_id`,`trx_api_ap2_get`.`invoice_number`,`trx_api_ap2_get`.`transaction_date`,`trx_api_ap2_get`.`transaction_time`;

-- ----------------------------
-- View structure for v_trx_api_ap2_get_detail
-- ----------------------------
DROP VIEW IF EXISTS `v_trx_api_ap2_get_detail`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_trx_api_ap2_get_detail` AS select `trx_api_ap2_get`.`id` AS `id`,`trx_api_ap2_get`.`company_id` AS `company_id`,`trx_api_ap2_get`.`store_id` AS `store_id`,`trx_api_ap2_get`.`tr_id` AS `tr_id`,`tr_header`.`id` AS `header_id`,`tr_header`.`ref_id` AS `ref_id`,`trx_api_ap2_get`.`invoice_number` AS `invoice_number`,`trx_api_ap2_get`.`transaction_date` AS `transaction_date`,`trx_api_ap2_get`.`transaction_time` AS `transaction_time`,`trx_api_ap2_get`.`created` AS `created`,`trx_api_ap2_get`.`updated` AS `updated`,`trx_api_ap2_get`.`createdby` AS `createdby`,`trx_api_ap2_get`.`updatedby` AS `updatedby`,`auth_users`.`fullname` AS `createdby_name`,`trx_api_ap2_get`.`sequence` AS `sequence`,`trx_api_ap2_get`.`item_code` AS `item_id`,`m_valas`.`valas_code` AS `item_code`,`trx_api_ap2_get`.`item_name` AS `item_name`,`trx_api_ap2_get`.`item_quantity` AS `item_quantity`,`trx_api_ap2_get`.`item_price_unit` AS `item_price_unit`,`trx_api_ap2_get`.`item_price_amount` AS `item_price_amount`,`trx_api_ap2_get`.`item_total_price_amount` AS `item_total_price_amount`,`trx_api_ap2_get`.`item_vat` AS `item_vat`,`trx_api_ap2_get`.`transaction_amount` AS `transaction_amount`,`trx_api_ap2_get`.`item_barcode` AS `item_barcode`,`trx_api_ap2_get`.`item_category_name` AS `item_category_name`,`trx_api_ap2_get`.`item_category_code` AS `item_category_code`,`trx_api_ap2_get`.`item_unit` AS `item_unit`,`trx_api_ap2_get`.`item_discount` AS `item_discount`,`trx_api_ap2_get`.`item_tax` AS `item_tax`,`trx_api_ap2_get`.`item_total_discount` AS `item_total_discount`,`trx_api_ap2_get`.`item_total_vat` AS `item_total_vat`,`trx_api_ap2_get`.`item_total_tax` AS `item_total_tax`,`trx_api_ap2_get`.`item_total_service_charge` AS `item_total_service_charge`,`trx_api_ap2_get`.`currency` AS `currency`,`trx_api_ap2_get`.`rate` AS `rate`,`trx_api_ap2_get`.`payment_type` AS `payment_type`,`trx_api_ap2_get`.`payment_by` AS `payment_by`,`trx_api_ap2_get`.`username` AS `username`,`trx_api_ap2_get`.`buyer_barcode` AS `buyer_barcode`,`trx_api_ap2_get`.`buyer_name` AS `buyer_name`,`trx_api_ap2_get`.`buyer_flight_no` AS `buyer_flight_no`,`trx_api_ap2_get`.`buyer_destination` AS `buyer_destination`,`trx_api_ap2_get`.`buyer_nationality` AS `buyer_nationality`,`trx_api_ap2_get`.`remark` AS `remark`,`trx_api_ap2_get`.`invoice_tax` AS `invoice_tax`,`trx_api_ap2_get`.`tax_id` AS `tax_id`,`trx_api_ap2_get`.`payment_name` AS `payment_name`,`trx_api_ap2_get`.`payment_time` AS `payment_time`,`trx_api_ap2_get`.`distance` AS `distance`,`trx_api_ap2_get`.`journey_time` AS `journey_time`,`m_company_store`.`store_reference_id` AS `store_reference_id`,`m_company_store`.`store_name` AS `store_name`,`m_company_store`.`store_address` AS `store_address` from ((((`trx_api_ap2_get` join `tr_header` on(((`tr_header`.`tr_number` = `trx_api_ap2_get`.`invoice_number`) and (`tr_header`.`tr_id` = `trx_api_ap2_get`.`tr_id`)))) join `m_valas` on((`m_valas`.`id` = `trx_api_ap2_get`.`item_code`))) join `auth_users` on((`auth_users`.`id` = `trx_api_ap2_get`.`createdby`))) left join `m_company_store` on((`m_company_store`.`id` = `trx_api_ap2_get`.`store_id`)));

SET FOREIGN_KEY_CHECKS = 1;
