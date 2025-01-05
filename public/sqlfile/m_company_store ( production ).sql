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

 Date: 03/06/2024 11:43:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
