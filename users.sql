-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.0 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gm_users
DROP DATABASE IF EXISTS `gm_users`;
CREATE DATABASE IF NOT EXISTS `gm_users`;
USE `gm_users`;

-- Dumping structure for table gm_users.profile
DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` bigint NOT NULL,
  `additional_information` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `onboard` bit(1) NOT NULL,
  `zodiac` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_users.profile: ~3 rows (approximately)
DELETE FROM `profile`;
INSERT INTO `profile` (`user_id`, `additional_information`, `avatar`, `date_of_birth`, `gender`, `introduction`, `location`, `nickname`, `onboard`, `zodiac`) VALUES
	(1, NULL, 'https://i.ibb.co/4s3r8Ry/co-gai-noi-nhu-con-vi-anh-can-cuoc-xinh-nhu-mong-nhan-sac-ngoai-doi-con-bat-ngo-hon-2-1621075314070.webp', '02/04/2004', ';Transgender', NULL, NULL, 'Đẳngthapmaquan', b'0', NULL),
	(2, NULL, 'https://i.ibb.co/xYyV6gG/a.jpg', '11/04/2000', ';Men', NULL, NULL, 'Minh Hiếu 2002 ', b'0', NULL),
	(52, NULL, 'https://i.ibb.co/Km6d94f/giao-duc-chan-chinh.jpg', '06/02/1992', '', NULL, NULL, 'Hieu doc truyen', b'0', NULL);

-- Dumping structure for table gm_users.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `coin` bigint NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `role` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `tok_exp_time` bigint DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_users.users: ~3 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `access_token`, `coin`, `password`, `role`, `status`, `tok_exp_time`, `username`) VALUES
	(1, 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwiZXhwIjoxNzE3MzM1MTg4OTk2fQ.cpYGzjCwnS74ylxPxMCpGdMKaFvEihxEYwjCMrzT8vE', -20, '12341234', NULL, 0, 1717853588908, 'thanhthao'),
	(2, 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwiZXhwIjoxNzE3NzU2OTc5MTQwfQ.AuXBNMBAokIcuOyWN3Ngb_XPWqf8S27bdxgykmqlKD4', -20, '12341234', NULL, 0, 1718275379085, 'hieu2002'),
	(52, 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI1MiIsImV4cCI6MTcxODUzMDU3NDQ3OH0.vKKIH9W65-ii7C007L1YnBQJ7D7lLFLtlvXB_g9ArBU', 0, '12341234', NULL, 0, 1719048974449, 'hieudivine');

-- Dumping structure for table gm_users.users_seq
DROP TABLE IF EXISTS `users_seq`;
CREATE TABLE IF NOT EXISTS `users_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_users.users_seq: ~1 rows (approximately)
DELETE FROM `users_seq`;
INSERT INTO `users_seq` (`next_val`) VALUES
	(151);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
