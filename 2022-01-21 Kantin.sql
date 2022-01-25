-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ekantin
CREATE DATABASE IF NOT EXISTS `ekantin` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ekantin`;

-- Dumping structure for table ekantin.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `photo` text DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ekantin.admin: ~3 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`id`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `photo`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
	(1, 'Yunita Alfiana Aziza', 'P', 'Tulung Rejo', 'The_Bees.png', 'admin', 'admin', 'SUPERADMIN', '2022-01-14 09:30:42', '2022-01-20 11:36:50'),
	(2, 'Wawan', 'L', 'Sekoto', NULL, 'tes', 'tes', 'ADMIN', '2022-01-20 01:42:40', '2022-01-20 01:42:40'),
	(4, 'Hehe', 'L', 'Badas', 'Screenshot_from_2021-07-18_23-00-12.png', 'hehe', 'hehe', 'ADMIN', '2022-01-20 11:37:43', '2022-01-20 11:37:43');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table ekantin.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table ekantin.migrations: ~0 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(1, '2022-01-12-002514', 'App\\Database\\Migrations\\AddSiswa', 'default', 'App', 1641954065, 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ekantin.riwayat_belanja
CREATE TABLE IF NOT EXISTS `riwayat_belanja` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(5) DEFAULT NULL,
  `id_admin` int(5) DEFAULT NULL,
  `tgl_belanja` datetime DEFAULT NULL,
  `jam_belanja` varchar(10) DEFAULT NULL,
  `total_belanja` int(5) DEFAULT NULL,
  `sisa_saldo_terakhir` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ekantin.riwayat_belanja: ~11 rows (approximately)
/*!40000 ALTER TABLE `riwayat_belanja` DISABLE KEYS */;
REPLACE INTO `riwayat_belanja` (`id`, `id_siswa`, `id_admin`, `tgl_belanja`, `jam_belanja`, `total_belanja`, `sisa_saldo_terakhir`, `created_at`, `updated_at`) VALUES
	(2, 1, 1, '2012-02-25 00:00:00', '9:37:57', 10000, 10000, '2022-01-14 09:37:57', '2022-01-14 09:37:57'),
	(3, 1, 1, '2022-01-14 00:00:00', '9:42:21', 1000, 1000, '2022-01-14 09:42:21', '2022-01-14 09:42:21'),
	(4, 11, 1, '2022-01-15 00:00:00', '8:46:41', 10, 10000, '2022-01-15 08:46:41', '2022-01-15 08:46:41'),
	(5, 10, 1, '2022-01-15 00:00:00', '8:58:49', 20000, 80000, '2022-01-15 08:58:49', '2022-01-15 08:58:49'),
	(9, 1, 1, '2022-01-15 00:00:00', '9:07:37', 500000000, 500000000, '2022-01-15 09:07:37', '2022-01-15 09:07:37'),
	(10, 11, 1, '2022-01-18 00:00:00', '1:18:36', 500, 19500, '2022-01-19 01:18:36', '2022-01-19 01:18:36'),
	(11, 10, 1, '2022-01-18 00:00:00', '1:19:21', 100, 109900, '2022-01-19 01:19:21', '2022-01-19 01:19:21'),
	(12, 10, 1, '2022-01-18 00:00:00', '1:19:51', 500, 109400, '2022-01-19 01:19:51', '2022-01-19 01:19:51'),
	(13, 1, 1, '2022-01-18 00:00:00', '1:20:44', 100000000, 900000000, '2022-01-19 01:20:44', '2022-01-19 01:20:44'),
	(15, 12, 1, '2022-01-19 00:00:00', '13:44:15', 5000, 5200, '2022-01-19 13:44:15', '2022-01-19 13:44:15'),
	(20, 13, 2, '2022-01-20 00:00:00', '10:19:50', NULL, NULL, '2022-01-20 10:19:50', '2022-01-20 10:19:50');
/*!40000 ALTER TABLE `riwayat_belanja` ENABLE KEYS */;

-- Dumping structure for table ekantin.riwayat_belanja_backup
CREATE TABLE IF NOT EXISTS `riwayat_belanja_backup` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(5) DEFAULT NULL,
  `id_admin` int(5) DEFAULT NULL,
  `tgl_belanja` datetime DEFAULT NULL,
  `jam_belanja` varchar(10) DEFAULT NULL,
  `total_belanja` int(5) DEFAULT NULL,
  `sisa_saldo_terakhir` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ekantin.riwayat_belanja_backup: ~4 rows (approximately)
/*!40000 ALTER TABLE `riwayat_belanja_backup` DISABLE KEYS */;
REPLACE INTO `riwayat_belanja_backup` (`id`, `id_siswa`, `id_admin`, `tgl_belanja`, `jam_belanja`, `total_belanja`, `sisa_saldo_terakhir`, `created_at`, `updated_at`) VALUES
	(1, 14, 2, '2022-01-20 00:00:00', '9:41:24', 500, 500, '2022-01-21 13:50:35', '2022-01-21 13:50:35'),
	(2, 15, 2, '2022-01-20 00:00:00', '10:02:24', 2500, 17500, '2022-01-21 13:50:52', '2022-01-21 13:50:52'),
	(3, 14, 2, '2022-01-20 00:00:00', '10:11:59', 7000, 6000, '2022-01-21 13:50:54', '2022-01-21 13:50:54'),
	(4, 12, 1, '2022-01-19 00:00:00', '12:34:46', 800, 200, '2022-01-21 13:51:02', '2022-01-21 13:51:02');
/*!40000 ALTER TABLE `riwayat_belanja_backup` ENABLE KEYS */;

-- Dumping structure for table ekantin.riwayat_top_up
CREATE TABLE IF NOT EXISTS `riwayat_top_up` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(5) DEFAULT NULL,
  `id_admin` int(5) DEFAULT NULL,
  `tgl_top_up` datetime DEFAULT NULL,
  `jam_top_up` varchar(10) DEFAULT NULL,
  `nominal_top_up` int(5) DEFAULT NULL,
  `sisa_saldo_terakhir` int(5) DEFAULT NULL,
  `sisa_saldo_terbaru` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ekantin.riwayat_top_up: ~7 rows (approximately)
/*!40000 ALTER TABLE `riwayat_top_up` DISABLE KEYS */;
REPLACE INTO `riwayat_top_up` (`id`, `id_siswa`, `id_admin`, `tgl_top_up`, `jam_top_up`, `nominal_top_up`, `sisa_saldo_terakhir`, `sisa_saldo_terbaru`, `created_at`, `updated_at`) VALUES
	(1, NULL, 1, '2022-01-14 00:00:00', '21:24:44', NULL, NULL, NULL, '2022-01-14 21:24:44', '2022-01-14 21:24:44'),
	(4, 1, 1, '2022-01-15 00:00:00', '9:08:42', 500000000, 500000000, 1000000000, '2022-01-15 09:08:42', '2022-01-15 09:08:42'),
	(5, 10, 1, '2022-01-18 00:00:00', '1:16:16', 10000, 100000, 110000, '2022-01-19 01:16:16', '2022-01-19 01:16:16'),
	(7, 12, 1, '2022-01-19 00:00:00', '13:45:05', 1800, 5200, 7000, '2022-01-19 13:45:05', '2022-01-19 13:45:05'),
	(9, 15, 2, '2022-01-20 00:00:00', '10:02:01', 10000, 10000, 20000, '2022-01-20 10:02:01', '2022-01-20 10:02:01');
/*!40000 ALTER TABLE `riwayat_top_up` ENABLE KEYS */;

-- Dumping structure for table ekantin.riwayat_top_up_backup
CREATE TABLE IF NOT EXISTS `riwayat_top_up_backup` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(5) DEFAULT NULL,
  `id_admin` int(5) DEFAULT NULL,
  `tgl_top_up` datetime DEFAULT NULL,
  `jam_top_up` varchar(10) DEFAULT NULL,
  `nominal_top_up` int(5) DEFAULT NULL,
  `sisa_saldo_terakhir` int(5) DEFAULT NULL,
  `sisa_saldo_terbaru` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ekantin.riwayat_top_up_backup: ~3 rows (approximately)
/*!40000 ALTER TABLE `riwayat_top_up_backup` DISABLE KEYS */;
REPLACE INTO `riwayat_top_up_backup` (`id`, `id_siswa`, `id_admin`, `tgl_top_up`, `jam_top_up`, `nominal_top_up`, `sisa_saldo_terakhir`, `sisa_saldo_terbaru`, `created_at`, `updated_at`) VALUES
	(10, 14, 2, '2022-01-20 00:00:00', '9:42:25', NULL, 500, 6000, '2022-01-21 13:58:25', '2022-01-21 13:58:25'),
	(11, 12, 1, '2022-01-19 00:00:00', '12:36:28', NULL, 200, 10200, '2022-01-21 13:58:30', '2022-01-21 13:58:30'),
	(12, 1, 1, '2022-01-14 00:00:00', '23:31:32', NULL, 1000000000, 1000001000, '2022-01-21 13:58:34', '2022-01-21 13:58:34'),
	(13, 1, 1, '2022-01-14 00:00:00', '21:25:24', 10000, 1000000000, 2147483647, '2022-01-21 13:59:15', '2022-01-21 13:59:15');
/*!40000 ALTER TABLE `riwayat_top_up_backup` ENABLE KEYS */;

-- Dumping structure for table ekantin.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `photo` text DEFAULT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `saldo` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ekantin.siswa: ~9 rows (approximately)
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
REPLACE INTO `siswa` (`id`, `kode`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `photo`, `nama_ayah`, `nama_ibu`, `saldo`, `created_at`, `updated_at`) VALUES
	(1, '0000000001', 'Harry Sunaryo', 'L', 'Lombok', 'polres.png', 'Basuki Rachmad', 'BQ. Rihul Asikin', 899999000, '2022-01-12 09:43:15', '2022-01-21 13:41:33'),
	(10, '0000000002', 'Wawan Setiawan', 'L', 'Sekoto', 'me.jpg', 'Ayah', 'Ibu', 109400, '2022-01-15 08:38:09', '2022-01-19 01:19:51'),
	(11, '0000000003', 'Hendra', 'L', 'Selong', NULL, 'Wawan', 'Setiawan', 19500, '2022-01-15 08:45:04', '2022-01-19 01:18:36'),
	(12, '0000000004', 'Mas Dwi', 'L', 'Sekoto', 'The_Bees.png', 'Tes', 'Aja', 7000, '2022-01-19 12:33:19', '2022-01-19 13:45:05'),
	(13, NULL, 'Wawan', 'L', 'Sekoto', 'me.jpg', NULL, NULL, NULL, '2022-01-20 01:41:58', '2022-01-20 01:41:58'),
	(14, '0000000005', 'Hendrawan', 'L', 'Sekoto', 'saya.jpg', 'Basuki', 'Rihul', -4000, '2022-01-20 09:39:13', '2022-01-20 10:13:01'),
	(15, '0000000006', 'Dwi Cahyo', 'L', 'Badas', 'Kak_ded.jpg', 'Dedi', 'Alfalfa', 17500, '2022-01-20 09:51:00', '2022-01-20 10:02:24'),
	(17, '0000000007', 'Alkharizmi', 'L', 'Sekoto', NULL, 'Harry', 'Yunita', 100000, '2022-01-20 09:54:37', '2022-01-20 09:54:37'),
	(18, '0000000008', 'Tes Photo', 'P', 'Coba', 'ktp.jpg', 'Tes', 'Saja', 10000, '2022-01-20 09:59:07', '2022-01-20 09:59:07');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

-- Dumping structure for view ekantin.view_laporan_belanja
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_laporan_belanja` (
	`id` INT(5) NOT NULL,
	`id_siswa` INT(5) NULL,
	`id_admin` INT(5) NULL,
	`tgl_belanja` DATETIME NULL,
	`jam_belanja` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`total_belanja` INT(5) NULL,
	`sisa_saldo_terakhir` INT(5) NULL,
	`created_at` DATETIME NULL,
	`updated_at` TIMESTAMP NOT NULL,
	`kode` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`nama_siswa` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`alamat` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_admin` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`level` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`bulan_tahun` VARCHAR(7) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view ekantin.view_laporan_topup
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_laporan_topup` (
	`id` INT(5) NOT NULL,
	`id_siswa` INT(5) NULL,
	`id_admin` INT(5) NULL,
	`tgl_top_up` DATETIME NULL,
	`jam_top_up` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`nominal_top_up` INT(5) NULL,
	`sisa_saldo_terakhir` INT(5) NULL,
	`sisa_saldo_terbaru` INT(5) NULL,
	`created_at` DATETIME NULL,
	`updated_at` TIMESTAMP NOT NULL,
	`kode` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`nama_siswa` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`alamat` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_admin` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`level` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`bulan_tahun` VARCHAR(7) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view ekantin.view_riwayat_belanja
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_riwayat_belanja` (
	`id` INT(5) NOT NULL,
	`id_siswa` INT(5) NULL,
	`id_admin` INT(5) NULL,
	`tgl_belanja` DATETIME NULL,
	`jam_belanja` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`total_belanja` INT(5) NULL,
	`sisa_saldo_terakhir` INT(5) NULL,
	`created_at` DATETIME NULL,
	`updated_at` TIMESTAMP NOT NULL,
	`kode` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`nama_siswa` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`alamat` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_admin` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`level` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view ekantin.view_riwayat_belanja_bulanan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_riwayat_belanja_bulanan` (
	`id` INT(5) NOT NULL,
	`id_siswa` INT(5) NULL,
	`id_admin` INT(5) NULL,
	`tgl_belanja` DATETIME NULL,
	`jam_belanja` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`total_belanja` INT(5) NULL,
	`sisa_saldo_terakhir` INT(5) NULL,
	`created_at` DATETIME NULL,
	`updated_at` TIMESTAMP NOT NULL,
	`kode` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`nama_siswa` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`alamat` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_admin` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`level` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`bulan` VARCHAR(7) NULL COLLATE 'utf8mb4_general_ci',
	`total` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view ekantin.view_riwayat_topup_bulanan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_riwayat_topup_bulanan` (
	`id` INT(5) NOT NULL,
	`id_siswa` INT(5) NULL,
	`id_admin` INT(5) NULL,
	`tgl_top_up` DATETIME NULL,
	`jam_top_up` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`nominal_top_up` INT(5) NULL,
	`sisa_saldo_terakhir` INT(5) NULL,
	`sisa_saldo_terbaru` INT(5) NULL,
	`created_at` DATETIME NULL,
	`updated_at` TIMESTAMP NOT NULL,
	`kode` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`nama_siswa` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`alamat` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_admin` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`level` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`bulan` VARCHAR(7) NULL COLLATE 'utf8mb4_general_ci',
	`total` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view ekantin.view_riwayat_top_up
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_riwayat_top_up` (
	`id` INT(5) NOT NULL,
	`id_siswa` INT(5) NULL,
	`id_admin` INT(5) NULL,
	`tgl_top_up` DATETIME NULL,
	`jam_top_up` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`nominal_top_up` INT(5) NULL,
	`sisa_saldo_terakhir` INT(5) NULL,
	`sisa_saldo_terbaru` INT(5) NULL,
	`created_at` DATETIME NULL,
	`updated_at` TIMESTAMP NOT NULL,
	`kode` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`nama_siswa` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`alamat` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_admin` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`level` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for trigger ekantin.riwayat_belanja_backup_after_delete
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `riwayat_belanja_backup_after_delete` AFTER DELETE ON `riwayat_belanja` FOR EACH ROW BEGIN

INSERT INTO riwayat_belanja_backup (id_siswa, id_admin, tgl_belanja, jam_belanja, total_belanja, sisa_saldo_terakhir) VALUES 
(old.id_siswa, OLD.id_admin, OLD.tgl_belanja, OLD.jam_belanja, OLD.total_belanja, OLD.sisa_saldo_terakhir);

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger ekantin.riwayat_top_up_after_delete
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `riwayat_top_up_after_delete` AFTER DELETE ON `riwayat_top_up` FOR EACH ROW BEGIN

INSERT INTO riwayat_top_up_backup (id_siswa, id_admin, tgl_top_up, jam_top_up, nominal_top_up, sisa_saldo_terakhir, sisa_saldo_terbaru)
VALUES (OLD.id_siswa, OLD.id_admin, OLD.tgl_top_up, OLD.jam_top_up,OLD.nominal_top_up, OLD.sisa_saldo_terakhir, OLD.sisa_saldo_terbaru);

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger ekantin.trigger_kurangi_saldo
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trigger_kurangi_saldo` AFTER INSERT ON `riwayat_belanja` FOR EACH ROW BEGIN

UPDATE siswa SET siswa.saldo = (siswa.saldo - new.total_belanja) WHERE siswa.id = new.id_siswa;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger ekantin.trigger_tambah_saldo
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trigger_tambah_saldo` AFTER INSERT ON `riwayat_top_up` FOR EACH ROW BEGIN

UPDATE siswa SET siswa.saldo = (siswa.saldo + new.nominal_top_up) WHERE siswa.id = new.id_siswa;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for view ekantin.view_laporan_belanja
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_laporan_belanja`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_laporan_belanja` AS select `rb`.`id` AS `id`,`rb`.`id_siswa` AS `id_siswa`,`rb`.`id_admin` AS `id_admin`,`rb`.`tgl_belanja` AS `tgl_belanja`,`rb`.`jam_belanja` AS `jam_belanja`,`rb`.`total_belanja` AS `total_belanja`,`rb`.`sisa_saldo_terakhir` AS `sisa_saldo_terakhir`,`rb`.`created_at` AS `created_at`,`rb`.`updated_at` AS `updated_at`,`s`.`kode` AS `kode`,`s`.`nama_lengkap` AS `nama_siswa`,`s`.`alamat` AS `alamat`,`a`.`nama_lengkap` AS `nama_admin`,`a`.`level` AS `level`,substr(`rb`.`tgl_belanja`,1,7) AS `bulan_tahun` from ((`riwayat_belanja` `rb` join `admin` `a`) join `siswa` `s`) where `rb`.`id_siswa` = `s`.`id` and `rb`.`id_admin` = `a`.`id`;

-- Dumping structure for view ekantin.view_laporan_topup
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_laporan_topup`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_laporan_topup` AS select `rb`.`id` AS `id`,`rb`.`id_siswa` AS `id_siswa`,`rb`.`id_admin` AS `id_admin`,`rb`.`tgl_top_up` AS `tgl_top_up`,`rb`.`jam_top_up` AS `jam_top_up`,`rb`.`nominal_top_up` AS `nominal_top_up`,`rb`.`sisa_saldo_terakhir` AS `sisa_saldo_terakhir`,`rb`.`sisa_saldo_terbaru` AS `sisa_saldo_terbaru`,`rb`.`created_at` AS `created_at`,`rb`.`updated_at` AS `updated_at`,`s`.`kode` AS `kode`,`s`.`nama_lengkap` AS `nama_siswa`,`s`.`alamat` AS `alamat`,`a`.`nama_lengkap` AS `nama_admin`,`a`.`level` AS `level`,substr(`rb`.`tgl_top_up`,1,7) AS `bulan_tahun` from ((`riwayat_top_up` `rb` join `admin` `a`) join `siswa` `s`) where `rb`.`id_siswa` = `s`.`id` and `rb`.`id_admin` = `a`.`id`;

-- Dumping structure for view ekantin.view_riwayat_belanja
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_riwayat_belanja`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_riwayat_belanja` AS select `rb`.`id` AS `id`,`rb`.`id_siswa` AS `id_siswa`,`rb`.`id_admin` AS `id_admin`,`rb`.`tgl_belanja` AS `tgl_belanja`,`rb`.`jam_belanja` AS `jam_belanja`,`rb`.`total_belanja` AS `total_belanja`,`rb`.`sisa_saldo_terakhir` AS `sisa_saldo_terakhir`,`rb`.`created_at` AS `created_at`,`rb`.`updated_at` AS `updated_at`,`s`.`kode` AS `kode`,`s`.`nama_lengkap` AS `nama_siswa`,`s`.`alamat` AS `alamat`,`a`.`nama_lengkap` AS `nama_admin`,`a`.`level` AS `level` from ((`riwayat_belanja` `rb` join `admin` `a`) join `siswa` `s`) where `rb`.`id_siswa` = `s`.`id` and `rb`.`id_admin` = `a`.`id` order by `rb`.`tgl_belanja` desc;

-- Dumping structure for view ekantin.view_riwayat_belanja_bulanan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_riwayat_belanja_bulanan`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_riwayat_belanja_bulanan` AS select `view_riwayat_belanja`.`id` AS `id`,`view_riwayat_belanja`.`id_siswa` AS `id_siswa`,`view_riwayat_belanja`.`id_admin` AS `id_admin`,`view_riwayat_belanja`.`tgl_belanja` AS `tgl_belanja`,`view_riwayat_belanja`.`jam_belanja` AS `jam_belanja`,`view_riwayat_belanja`.`total_belanja` AS `total_belanja`,`view_riwayat_belanja`.`sisa_saldo_terakhir` AS `sisa_saldo_terakhir`,`view_riwayat_belanja`.`created_at` AS `created_at`,`view_riwayat_belanja`.`updated_at` AS `updated_at`,`view_riwayat_belanja`.`kode` AS `kode`,`view_riwayat_belanja`.`nama_siswa` AS `nama_siswa`,`view_riwayat_belanja`.`alamat` AS `alamat`,`view_riwayat_belanja`.`nama_admin` AS `nama_admin`,`view_riwayat_belanja`.`level` AS `level`,substr(`view_riwayat_belanja`.`tgl_belanja`,1,7) AS `bulan`,count(0) AS `total` from `view_riwayat_belanja` group by substr(`view_riwayat_belanja`.`tgl_belanja`,1,7) order by `view_riwayat_belanja`.`tgl_belanja` desc;

-- Dumping structure for view ekantin.view_riwayat_topup_bulanan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_riwayat_topup_bulanan`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_riwayat_topup_bulanan` AS select `view_riwayat_top_up`.`id` AS `id`,`view_riwayat_top_up`.`id_siswa` AS `id_siswa`,`view_riwayat_top_up`.`id_admin` AS `id_admin`,`view_riwayat_top_up`.`tgl_top_up` AS `tgl_top_up`,`view_riwayat_top_up`.`jam_top_up` AS `jam_top_up`,`view_riwayat_top_up`.`nominal_top_up` AS `nominal_top_up`,`view_riwayat_top_up`.`sisa_saldo_terakhir` AS `sisa_saldo_terakhir`,`view_riwayat_top_up`.`sisa_saldo_terbaru` AS `sisa_saldo_terbaru`,`view_riwayat_top_up`.`created_at` AS `created_at`,`view_riwayat_top_up`.`updated_at` AS `updated_at`,`view_riwayat_top_up`.`kode` AS `kode`,`view_riwayat_top_up`.`nama_siswa` AS `nama_siswa`,`view_riwayat_top_up`.`alamat` AS `alamat`,`view_riwayat_top_up`.`nama_admin` AS `nama_admin`,`view_riwayat_top_up`.`level` AS `level`,substr(`view_riwayat_top_up`.`tgl_top_up`,1,7) AS `bulan`,count(0) AS `total` from `view_riwayat_top_up` group by substr(`view_riwayat_top_up`.`tgl_top_up`,1,7);

-- Dumping structure for view ekantin.view_riwayat_top_up
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_riwayat_top_up`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_riwayat_top_up` AS select `rb`.`id` AS `id`,`rb`.`id_siswa` AS `id_siswa`,`rb`.`id_admin` AS `id_admin`,`rb`.`tgl_top_up` AS `tgl_top_up`,`rb`.`jam_top_up` AS `jam_top_up`,`rb`.`nominal_top_up` AS `nominal_top_up`,`rb`.`sisa_saldo_terakhir` AS `sisa_saldo_terakhir`,`rb`.`sisa_saldo_terbaru` AS `sisa_saldo_terbaru`,`rb`.`created_at` AS `created_at`,`rb`.`updated_at` AS `updated_at`,`s`.`kode` AS `kode`,`s`.`nama_lengkap` AS `nama_siswa`,`s`.`alamat` AS `alamat`,`a`.`nama_lengkap` AS `nama_admin`,`a`.`level` AS `level` from ((`riwayat_top_up` `rb` join `admin` `a`) join `siswa` `s`) where `rb`.`id_siswa` = `s`.`id` and `rb`.`id_admin` = `a`.`id` order by `rb`.`tgl_top_up` desc;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
