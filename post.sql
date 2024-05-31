-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.0 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `gm_post`;
USE `gm_post`;
-- Dumping structure for table gm_post.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` bigint NOT NULL,
  `story_id` bigint NOT NULL,
  `content` text,
  `images` text,
  `videos` text,
  `create_time` bigint DEFAULT NULL,
  `last_edit_time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `fav_avg_pnt` double DEFAULT NULL,
  `fav_count` bigint DEFAULT '0',
  `comment_count` bigint DEFAULT '0',
  `owner_avatar` varchar(255) DEFAULT NULL,
  `owner_nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_post.posts: ~8 rows (approximately)
DELETE FROM `posts`;
INSERT INTO `posts` (`id`, `owner_id`, `story_id`, `content`, `images`, `videos`, `create_time`, `last_edit_time`, `title`, `fav_avg_pnt`, `fav_count`, `comment_count`, `owner_avatar`, `owner_nickname`) VALUES
	(152, 1, 1, 'This story is very good', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1711940979696, NULL, NULL, 5, 3, 0, NULL, NULL),
	(153, 1, 1, 'This story is very good', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1711941081909, NULL, NULL, 0, 0, 0, NULL, NULL),
	(202, 1, 1, 'This story is very good', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1711941257509, NULL, NULL, 0, 0, 0, NULL, NULL),
	(252, 1, 2, 'This story is very good', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1711941272218, NULL, NULL, 0, 0, 0, NULL, NULL),
	(302, 1, 2, 'This story is very good', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1712302028140, NULL, NULL, 0, 0, 0, NULL, NULL),
	(502, 1, 1, 'Nice story', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1712560728553, NULL, 'Truyện tiên hiệp không nên bỏ lỡ', 7, 1, 0, NULL, NULL),
	(552, 1, 1, 'Nice story', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1712564938440, NULL, 'Truyện tiên hiệp không nên bỏ lỡ', 7, 2, 0, NULL, NULL),
	(602, 1, 12, 'Nice story 2222', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1712893908185, NULL, 'Truyện tiên hiệp không nên bỏ lỡ', 7, 2, 0, NULL, NULL),
	(603, 1, 12, 'Nice story 2222', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1712893954136, NULL, 'Truyện tiên hiệp không nên bỏ lỡ', 7, 3, 0, NULL, NULL),
	(604, 52, 12, 'Nice story 2222', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1712894102001, NULL, 'Truyện tiên hiệp không nên bỏ lỡ', 7, 3, 0, NULL, NULL),
	(652, 1, 1, 'Nice story', 'https://st.nettruyenhh.com/data/comics/234/co-y-chiem-doat.jpg;https://cdn5.nucomic.com/WP-manga/data/manga_64f1fdd2684bc/5f717d94f0309c44c664606a74991274/0.jpeg;https://i.pinimg.com/736x/55/fd/fb/55fdfb29f84433342a67831f1d497ab4.jpg;https://image.voh.com.vn/voh/Image/2023/06/13/truyen-tranh-xuyen-khong-han-quoc-anh15.jpg?t=o&w=2100&q=85', NULL, 1713020782167, NULL, 'Truyện tiên hiệp không nên bỏ lỡ', 0, 0, 0, NULL, NULL),
	(653, 102, 1, '', 'https://i.ibb.co/bX4hKbX/Bao-ve-sieu-sao-cua-toi.jpg;https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/bX4hKbX/Bao-ve-sieu-sao-cua-toi.jpg', NULL, 1713020910198, NULL, NULL, 7, 3, 0, NULL, NULL),
	(654, 102, 1, '', '', NULL, 1713020964578, NULL, NULL, 7, 2, 0, NULL, NULL),
	(702, 102, 1, 'Tôi đang thích truyện này nè! Chí tôn tu la!', 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', NULL, 1713068130892, NULL, NULL, 7, 1, 0, NULL, NULL),
	(703, 102, 1, 'GG', 'https://i.ibb.co/bX4hKbX/Bao-ve-sieu-sao-cua-toi.jpg', NULL, 1713091021790, NULL, NULL, 7, 2, 0, NULL, NULL),
	(752, 264, 1, 'GG Haha', 'https://i.ibb.co/F4rkjVb/avatar-dep-cho-nam-yody-vn.webp', NULL, 1713498615291, NULL, NULL, 7, 1, 0, NULL, NULL),
	(802, 256, 1, '', 'https://i.ibb.co/Kz7gqwP/788b23f12042806b9c55825696d5fb13.jpg', NULL, 1713611147221, NULL, NULL, 7, 2, 0, NULL, NULL),
	(852, 256, 1, 'GG!!!!!!', 'https://bedental.vn/wp-content/uploads/2022/12/0db107ee98f822feb9e4cfadf8c55b5a.jpg;https://i.ibb.co/yYSsCm4/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/SsGxxjD/chi-ton-tu-la.jpg', NULL, 1714658524918, NULL, NULL, 0, 0, 0, NULL, NULL),
	(853, 256, 15, '', 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', NULL, 1714659705886, NULL, 'Tối cường thần thoại đế hoàng', 7, 2, 0, NULL, NULL),
	(854, 256, 12, 'HHHHH Hasy', 'https://i.pinimg.com/236x/78/67/5e/78675ee583c98b2b8efd990f85cc657a.jpg;https://i.ibb.co/SsGxxjD/chi-ton-tu-la.jpg', NULL, 1714659858972, NULL, 'ANGEL X DARKNESS', 7, 1, 0, NULL, NULL),
	(902, 302, 2, '', 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg;https://i.ibb.co/4VcqQcL/avartar-anime-43.jpg;https://i.ibb.co/2PsZMfs/Hinh-Dai-Dien-Anime-Dep-Nhat.jpg;https://i.ibb.co/mN15wLs/anime-nu-sexy-de-thuong-522x900.jpg;https://i.ibb.co/XVFJrfC/avatar-anime-nam-dep-nhat-041627396.jpg', NULL, 1714726323475, NULL, 'Tối cường thần thoại đế hoàng', 0, 0, 0, NULL, NULL),
	(903, 302, 1, 'Móa hài vỡi', 'https://bedental.vn/wp-content/uploads/2022/12/0db107ee98f822feb9e4cfadf8c55b5a.jpg;https://i.ibb.co/8Ypj6rT/189431ee34b764baec6ad880073d7ec1.jpg', NULL, 1714734313133, NULL, 'Già thiên', 0, 0, 0, NULL, NULL),
	(904, 256, 3, 'Đẹp trai!!!', 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', NULL, 1714744254509, NULL, 'Cung quỷ kiếm thần', 0, 0, 0, NULL, NULL),
	(905, 256, 0, '', '', NULL, 1714744349496, NULL, NULL, 0, 0, 0, NULL, NULL),
	(906, 256, 3, '', 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg;https://i.ibb.co/G99nysg/chi-ton-tu-la.jpg', NULL, 1714802541494, NULL, 'Cung quỷ kiếm thần', 7, 1, 0, NULL, NULL),
	(907, 256, 1, 'GGG', 'https://bedental.vn/wp-content/uploads/2022/12/0db107ee98f822feb9e4cfadf8c55b5a.jpg;https://i.ibb.co/G99nysg/chi-ton-tu-la.jpg', NULL, 1714825998454, NULL, 'Già thiên', 7, 2, 0, NULL, NULL),
	(952, 353, 1, '', 'https://bedental.vn/wp-content/uploads/2022/12/0db107ee98f822feb9e4cfadf8c55b5a.jpg;https://i.ibb.co/qJRXJNZ/02-E7336-A-0-CE4-4-A69-BF8-B-5-C2-ED8-D67-F3-F.jpg;https://i.ibb.co/J5xN57T/1-FE266-FF-41-B5-4034-AFC8-46-CD0-D4-C784-C.jpg', NULL, 1714918642990, NULL, 'Già thiên', 7, 1, 0, NULL, NULL),
	(953, 353, 0, '', '', NULL, 1714918679682, NULL, NULL, 7, 0, 0, NULL, NULL),
	(954, 256, 0, '', 'https://i.ibb.co/pbZ2shg/mac-bikini-chup-anh-o-be-boi-vo-cuc.jpg;https://i.ibb.co/R4MLqNK/1-730x486-1.jpg', NULL, 1714918921072, NULL, NULL, 7, 2, 0, NULL, NULL),
	(955, 256, 3, '', 'https://bedental.vn/wp-content/uploads/2022/12/0db107ee98f822feb9e4cfadf8c55b5a.jpg;https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg;https://bedental.vn/wp-content/uploads/2022/12/0db107ee98f822feb9e4cfadf8c55b5a.jpg;https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg;https://i.ibb.co/zGw7cry/mac-bikini-chup-anh-o-be-boi-vo-cuc.jpg;https://i.ibb.co/FgWqZjd/8f80210d4b422f5c48fab082c7841a18.jpg;https://i.ibb.co/pfRM7C2/anh-gai-xinh-1.jpg', NULL, 1715087008853, NULL, 'Cung quỷ kiếm thần', 0, 0, 0, NULL, NULL),
	(956, 256, 0, 'nong', 'https://i.ibb.co/BKrtNhq/co-gai-noi-nhu-con-vi-anh-can-cuoc-xinh-nhu-mong-nhan-sac-ngoai-doi-con-bat-ngo-hon-2-1621075314070.webp;https://i.ibb.co/CbxjWFT/Anh-gai-xinh-Han-Quoc-Ji-Seong.jpg', NULL, 1715087048461, NULL, NULL, 0, 0, 0, NULL, NULL),
	(957, 256, 12, '', 'https://i.pinimg.com/236x/78/67/5e/78675ee583c98b2b8efd990f85cc657a.jpg;https://i.ibb.co/7jC8Kzz/c19a1d3823b60a19194fe700f0524ae6.jpg', NULL, 1715087101536, NULL, 'ANGEL X DARKNESS', 7, 2, 0, NULL, NULL);

-- Dumping structure for table gm_post.posts_seq
DROP TABLE IF EXISTS `posts_seq`;
CREATE TABLE IF NOT EXISTS `posts_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_post.posts_seq: ~0 rows (approximately)
DELETE FROM `posts_seq`;
INSERT INTO `posts_seq` (`next_val`) VALUES
	(1051);

-- Dumping structure for table gm_post.post_comment
DROP TABLE IF EXISTS `post_comment`;
CREATE TABLE IF NOT EXISTS `post_comment` (
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `comment_text` text NOT NULL,
  `comment_images` varbinary(255) DEFAULT NULL,
  `create_time` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_post.post_comment: ~0 rows (approximately)
DELETE FROM `post_comment`;

-- Dumping structure for table gm_post.post_favourite
DROP TABLE IF EXISTS `post_favourite`;
CREATE TABLE IF NOT EXISTS `post_favourite` (
  `user_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  `favourite` int DEFAULT NULL,
  `favourite_point` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_post.post_favourite: ~41 rows (approximately)
DELETE FROM `post_favourite`;
INSERT INTO `post_favourite` (`user_id`, `post_id`, `favourite`, `favourite_point`) VALUES
	(1, 152, 1, 9),
	(2, 152, 1, 3),
	(52, 152, 1, 3),
	(1, 604, 1, 7),
	(1, 603, 1, 7),
	(1, 602, 1, 7),
	(2, 604, 1, 7),
	(2, 552, 1, 7),
	(2, 502, 1, 7),
	(2, 603, 1, 7),
	(102, 604, 1, 7),
	(102, 603, 1, 7),
	(102, 602, 1, 7),
	(102, 552, 1, 7),
	(102, 653, 1, 7),
	(102, 703, 1, 7),
	(202, 702, 0, 7),
	(202, 703, 0, 7),
	(202, 654, 1, 7),
	(202, 653, 1, 7),
	(202, 752, 0, 7),
	(256, 752, 1, 7),
	(256, 703, 1, 7),
	(256, 702, 1, 7),
	(256, 653, 1, 7),
	(256, 654, 1, 7),
	(256, 802, 1, 7),
	(202, 802, 1, 7),
	(202, 854, 1, 7),
	(256, 853, 1, 7),
	(256, 854, 0, 7),
	(302, 853, 1, 7),
	(256, 906, 1, 7),
	(353, 907, 1, 7),
	(302, 954, 1, 7),
	(302, 952, 1, 7),
	(256, 907, 1, 7),
	(256, 953, 0, 7),
	(256, 954, 1, 7),
	(256, 957, 1, 7),
	(353, 957, 1, 7);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gm_post.profile: ~0 rows (approximately)
DELETE FROM `profile`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
