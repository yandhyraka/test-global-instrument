/*
 Navicat Premium Dump SQL

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : test_global_instruments

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 03/11/2025 08:43:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mutasi_banks
-- ----------------------------
DROP TABLE IF EXISTS `mutasi_banks`;
CREATE TABLE `mutasi_banks`  (
  `mutasi_bank_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mutasi_bank_tanggal` date NOT NULL,
  `mutasi_bank_deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutasi_bank_debet` decimal(20, 2) NULL DEFAULT NULL,
  `mutasi_bank_kredit` decimal(20, 2) NULL DEFAULT NULL,
  `mutasi_bank_saldo` decimal(20, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mutasi_bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mutasi_banks
-- ----------------------------
INSERT INTO `mutasi_banks` VALUES (1, '2025-10-23', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (2, '2025-10-23', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (3, '2025-10-23', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (4, '2025-10-23', 'CP-BIFAST 8104041300516305', 25904576.00, NULL, -25904576.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (5, '2025-10-23', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (6, '2025-10-23', 'CP-BIFAST 1550038383330', 15000000.00, NULL, -15000000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (7, '2025-10-23', 'CP-BIFAST 6241310474', 1500000.00, NULL, -1500000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (8, '2025-10-23', 'CP-BIFAST 2480224101', 10000000.00, NULL, -10000000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (9, '2025-10-23', 'BIFAST FROM GLOBAL INSTRUMENTS', NULL, 27000000.00, 27000000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (10, '2025-10-22', 'BIFAST FROM ERA CAKRAWALA INDO', NULL, 25945688.34, 25945688.34, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (11, '2025-10-21', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (12, '2025-10-21', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (13, '2025-10-21', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (14, '2025-10-21', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (15, '2025-10-21', 'CP-BIFAST 04613001501', 250000000.00, NULL, -250000000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (16, '2025-10-21', 'CP-BIFAST 04613001501', 94400000.00, NULL, -94400000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (17, '2025-10-21', 'CP-BIFAST 04613001501', 250000000.00, NULL, -250000000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (18, '2025-10-21', 'CP-BIFAST 04613001501', 250000000.00, NULL, -250000000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (19, '2025-10-21', 'INC CR. PGAS SOLUTION', NULL, 844155000.00, 844155000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (20, '2025-10-20', 'BIAYA BI FAST', 1000.00, NULL, -1000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (21, '2025-10-20', 'REMIT KE - BANK OF AME 5722803', 185851165.62, NULL, -185851165.62, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (22, '2025-10-20', 'CP-BIFAST 6241310474', 5500000.00, NULL, -5500000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (23, '2025-10-20', 'BIFAST FROM GLOBAL INSTRUMENTS', NULL, 135500000.00, 135500000.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (24, '2025-10-20', 'INC CR. MUSI HUTAN PERSADA', NULL, 10753400.00, 10753400.00, NULL, NULL);
INSERT INTO `mutasi_banks` VALUES (25, '2025-10-20', 'INC CR. PT.MULTI BINTANG INDON', NULL, 45288000.00, 45288000.00, NULL, NULL);

-- ----------------------------
-- Table structure for zahirs
-- ----------------------------
DROP TABLE IF EXISTS `zahirs`;
CREATE TABLE `zahirs`  (
  `zahir_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `zahir_tanggal` date NOT NULL,
  `zahir_reference_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zahir_reference_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zahir_deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zahir_debet` decimal(20, 2) NULL DEFAULT NULL,
  `zahir_kredit` decimal(20, 2) NULL DEFAULT NULL,
  `zahir_saldo` decimal(20, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`zahir_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zahirs
-- ----------------------------
INSERT INTO `zahirs` VALUES (1, '2025-10-23', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Kas', NULL, 20241548.00, -20241548.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (2, '2025-10-23', 'CD', 'CD013087', 'Pengeluaran, OPERASIONAL', NULL, 20667028.00, -20667028.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (3, '2025-10-23', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Kas Kecil', NULL, 1500000.00, -1500000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (4, '2025-10-23', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Kas Kecil', NULL, 10000000.00, -10000000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (5, '2025-10-23', 'GJ', 'TRANS', 'Transfer Pinjaman PRK OCBC ke Bank Panin (KM-IDR)', 27000000.00, NULL, 27000000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (6, '2025-10-22', 'CR', 'CR008324', 'Penerimaan, OPERASIONAL', 25945688.34, NULL, 25945688.34, NULL, NULL);
INSERT INTO `zahirs` VALUES (7, '2025-10-21', 'CD', 'CD013085', 'Pengeluaran, OPERASIONAL', NULL, 4000.00, -4000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (8, '2025-10-21', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Pinjaman Bank BTPN', NULL, 250000000.00, -250000000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (9, '2025-10-21', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Pinjaman Bank BTPN', NULL, 94400000.00, -94400000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (10, '2025-10-21', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Pinjaman Bank BTPN', NULL, 250000000.00, -250000000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (11, '2025-10-21', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Pinjaman Bank BTPN', NULL, 250000000.00, -250000000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (12, '2025-10-21', 'CR', 'CR008322', 'Penerimaan dari PT. PGAS SOLUTION ', 844155000.00, NULL, 844155000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (13, '2025-10-20', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Kas', NULL, 185852165.62, -185852165.62, NULL, NULL);
INSERT INTO `zahirs` VALUES (14, '2025-10-20', 'GJ', 'TRANS', 'Transfer Bank Panin (KM-IDR) ke Kas Kecil', NULL, 5500000.00, -5500000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (15, '2025-10-20', 'GJ', 'TRANS', 'Transfer Pinjaman PRK OCBC ke Bank Panin (KM-IDR)', 135500000.00, NULL, 135500000.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (16, '2025-10-20', 'CR', 'CR008319', 'Penerimaan dari PT. MUSI HUTAN PERSADA ', 10753400.00, NULL, 10753400.00, NULL, NULL);
INSERT INTO `zahirs` VALUES (17, '2025-10-20', 'CR', 'CR008320', 'Penerimaan dari PT. MULTI BINTANG INDONESIA', 45288000.00, NULL, 45288000.00, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
