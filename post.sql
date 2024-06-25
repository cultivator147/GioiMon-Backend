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


-- Dumping database structure for gm_post
DROP DATABASE IF EXISTS `gm_post`;
CREATE DATABASE IF NOT EXISTS `gm_post`;
USE `gm_post`;

-- Dumping structure for table gm_post.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint NOT NULL,
  `fav_avg_pnt` double DEFAULT NULL,
  `comment_count` bigint DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `fav_count` bigint DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `last_edit_time` varchar(255) DEFAULT NULL,
  `owner_id` bigint DEFAULT NULL,
  `story_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Dumping data for table gm_post.posts: ~4 rows (approximately)
DELETE FROM `posts`;
INSERT INTO `posts` (`id`, `fav_avg_pnt`, `comment_count`, `content`, `create_time`, `fav_count`, `images`, `last_edit_time`, `owner_id`, `story_id`, `title`, `videos`) VALUES
	(1, 7, 0, '', 1717263592158, 1, 'http://54.252.244.31:8080/images/avatar/dep.jpg;https://i.ibb.co/WcdG385/c19a1d3823b60a19194fe700f0524ae6.jpg', NULL, 1, 1, 'Già thiên', NULL),
	(2, 7, 0, '', 1717263607565, 2, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg;https://i.ibb.co/vhZ9sWL/mac-bikini-chup-anh-o-be-boi-vo-cuc.jpg', NULL, 1, 2, 'Tối cường thần thoại đế hoàng', NULL),
	(52, 7, 0, '', 1717670677494, 1, 'http://54.252.244.31:8080/images/avatar/dep.jpg;https://i.ibb.co/N69pwT6/1-730x486-1.jpg', NULL, 2, 1, 'Già thiên', NULL),
	(53, 7, 0, 'Hay!!!', 1717670841063, 1, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg', NULL, 2, 5, 'NÓNG LÒNG MUỐN GIÀY VÒ EM', NULL);

-- Dumping structure for table gm_post.posts_seq
DROP TABLE IF EXISTS `posts_seq`;
CREATE TABLE IF NOT EXISTS `posts_seq` (
  `next_val` bigint DEFAULT NULL
);

-- Dumping data for table gm_post.posts_seq: ~1 rows (approximately)
DELETE FROM `posts_seq`;
INSERT INTO `posts_seq` (`next_val`) VALUES
	(151);

-- Dumping structure for table gm_post.post_comment
DROP TABLE IF EXISTS `post_comment`;
CREATE TABLE IF NOT EXISTS `post_comment` (
  `create_time` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `comment_images` varbinary(255) DEFAULT NULL,
  `comment_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`create_time`,`post_id`,`user_id`)
);

-- Dumping data for table gm_post.post_comment: ~4 rows (approximately)
DELETE FROM `post_comment`;
INSERT INTO `post_comment` (`create_time`, `post_id`, `user_id`, `comment_images`, `comment_text`) VALUES
	(1717670696661, 52, 2, NULL, 'Truyện này hay quá!'),
	(1717670710352, 52, 2, NULL, 'Truyện này rất hay !!!'),
	(1718444373488, 53, 52, NULL, 'OIpen!!!'),
	(1718444433502, 53, 52, NULL, 'Bruhhh!');

-- Dumping structure for table gm_post.post_favourite
DROP TABLE IF EXISTS `post_favourite`;
CREATE TABLE IF NOT EXISTS `post_favourite` (
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `favourite` int DEFAULT NULL,
  `favourite_point` int DEFAULT NULL,
  PRIMARY KEY (`post_id`,`user_id`)
);

-- Dumping data for table gm_post.post_favourite: ~5 rows (approximately)
DELETE FROM `post_favourite`;
INSERT INTO `post_favourite` (`post_id`, `user_id`, `favourite`, `favourite_point`) VALUES
	(1, 2, 1, 7),
	(2, 1, 1, 7),
	(2, 2, 1, 7),
	(52, 2, 1, 7),
	(53, 52, 1, 7);

-- Dumping structure for table gm_post.profile
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
);

-- Dumping data for table gm_post.profile: ~0 rows (approximately)
DELETE FROM `profile`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
