-- --------------------------------------------------------
-- Host:                         54.252.244.31
-- Server version:               8.0.36-0ubuntu0.22.04.1 - (Ubuntu)
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
CREATE DATABASE IF NOT EXISTS `gm_post` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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

-- Dumping data for table gm_post.posts: ~32 rows (approximately)
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

-- Dumping data for table gm_post.posts_seq: ~1 rows (approximately)
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


-- --------------------------------------------------------
-- Host:                         54.252.244.31
-- Server version:               8.0.36-0ubuntu0.22.04.1 - (Ubuntu)
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


-- Dumping database structure for gm_stories
CREATE DATABASE IF NOT EXISTS `gm_stories` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gm_stories`;

-- Dumping structure for table gm_stories.authors
DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID author',
  `NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Tên author',
  `DESCRIPTION` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tất cả authors';

-- Dumping data for table gm_stories.authors: ~6 rows (approximately)
DELETE FROM `authors`;
INSERT INTO `authors` (`ID`, `NAME`, `DESCRIPTION`) VALUES
	(1, 'Nhậm Ngã Tiếu', NULL),
	(2, 'Thần Đông', NULL),
	(3, 'Ngã cật cây hồng thị', NULL),
	(4, 'Đường gia tam thiếu', NULL),
	(5, 'Đoàn Thảo', NULL),
	(6, 'Trịnh Hiếu', NULL);

-- Dumping structure for table gm_stories.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID danh mục',
  `NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Tên danh mục',
  `DESCRIPTION` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tất cả danh mục truyện';

-- Dumping data for table gm_stories.categories: ~32 rows (approximately)
DELETE FROM `categories`;
INSERT INTO `categories` (`ID`, `NAME`, `DESCRIPTION`) VALUES
	(1, 'Tất cả', 'Tất cả thể loại truyện'),
	(2, 'Action', 'Thể loại này thường có nội dung về đánh nhau, bạo lực, hỗn loạn, với diễn biến nhanh'),
	(3, 'Adult', 'Thể loại Adult đề cập đến vấn đề nhạy cảm, chỉ dành cho tuổi 17+'),
	(4, 'Adventure', 'Thể loại phiêu lưu, mạo hiểm, thường là hành trình của các nhân vật'),
	(5, 'Anime', 'Truyện đã được chuyển thể thành film Anime'),
	(6, 'Chuyển sinh', 'Thể loại này là những câu chuyện về người ở một thế giới này xuyên đến một thế giới khác, có thể là thế giới mang phong cách trung cổ với kiếm sĩ và ma thuật, hay thế giới trong game, hoặc có thể là bạn chết ở nơi này và được chuyển sinh đến nơi khác'),
	(7, 'Comedy', 'Thể loại có nội dung trong sáng và cảm động, thường có các tình tiết gây cười, các xung đột nhẹ nhàng'),
	(8, 'Comic', 'Truyện tranh Châu Âu và Châu Mĩ'),
	(9, 'Cooking', 'Thể loại có nội dung về nấu ăn, ẩm thực'),
	(10, 'Cổ đại', 'Truyện có nội dung xảy ra ở thời cổ đại phong kiến.'),
	(11, 'Doujinshi', 'Thể loại truyện phóng tác do fan hay có thể cả những Mangaka khác với tác giả truyện gốc. Tác giả vẽ Doujinshi thường dựa trên những nhân vật gốc để viết ra những câu chuyện theo sở thích của mình'),
	(12, 'Drama', 'Thể loại mang đến cho người xem những cảm xúc khác nhau: buồn bã, căng thẳng thậm chí là bi phẫn'),
	(13, 'Đam mỹ', 'Truyện tình cảm giữa nam và nam.'),
	(14, 'Ecchi', 'Thường có những tình huống nhạy cảm nhằm lôi cuốn người xem'),
	(15, 'Fantasy', 'Thể loại xuất phát từ trí tưởng tượng phong phú, từ pháp thuật đến thế giới trong mơ thậm chí là những câu chuyện thần tiên'),
	(16, 'Gender Bender', 'Là một thể loại trong đó giới tính của nhân vật bị lẫn lộn: nam hoá thành nữ, nữ hóa thành nam...'),
	(17, 'Harem', 'hể loại truyện tình cảm, lãng mạn mà trong đó, nhiều nhân vật nữ thích một nam nhân vật chính hoặc ngược lại'),
	(18, 'Historical ', 'Thể loại có liên quan đến thời xa xưa'),
	(19, 'Horror ', 'Horror là: rùng rợn, nghe cái tên là bạn đã hiểu thể loại này có nội dung thế nào. Nó làm cho bạn kinh hãi, khiếp sợ, ghê tởm, run rẩy, có thể gây sock - một thể loại không dành cho người yếu tim'),
	(20, 'Josei', 'Thể loại của manga hay anime được sáng tác chủ yếu bởi phụ nữ cho những độc giả nữ từ 18 đến 30. Josei manga có thể miêu tả những lãng mạn thực tế , nhưng trái ngược với hầu hết các kiểu lãng mạn lí tưởng của Shoujo manga với cốt truyện rõ ràng, chín chắn'),
	(21, 'Live action', 'Truyện đã được chuyển thể thành phim'),
	(22, 'Manga', 'Truyện tranh của Nhật Bản'),
	(23, 'Manhua', 'Truyện tranh của Trung Quốc'),
	(24, 'Manhwa', 'Truyện tranh Hàn Quốc'),
	(25, 'Martial Arts', 'Giống với tên gọi, bất cứ gì liên quan đến võ thuật trong truyện từ các trận đánh nhau, tự vệ đến các môn võ thuật như akido, karate, judo hay taekwondo, kendo, các cách né tránh'),
	(26, 'Mature', 'Thể loại dành cho lứa tuổi 17+ bao gồm các pha bạo lực, máu me, chém giết, tình dục ở mức độ vừa'),
	(27, 'Mecha', 'Mecha, còn được biết đến dưới cái tên meka hay mechs, là thể loại nói tới những cỗ máy biết đi (thường là do phi công cầm lái)'),
	(28, 'Mystery', 'Thể loại thường xuất hiện những điều bí ấn không thể lí giải được và sau đó là những nỗ lực của nhân vật chính nhằm tìm ra câu trả lời thỏa đáng'),
	(29, 'Ngôn tình', 'Truyện thuộc kiểu lãng mạn, kể về những sự kiện vui buồn trong tình yêu của nhân vật chính.'),
	(30, 'One shot', 'Những truyện ngắn, thường là 1 chapter'),
	(31, 'Psychological ', 'Thể loại liên quan đến những vấn đề về tâm lý của nhân vật ( tâm thần bất ổn, điên cuồng ...)'),
	(32, 'Romance', 'Thường là những câu chuyện về tình yêu, tình cảm lãng mạn. Ớ đây chúng ta sẽ lấy ví dụ như tình yêu giữa một người con trai và con gái, bên cạnh đó đặc điểm thể loại này là kích thích trí tưởng tượng của bạn về tình yêu');

-- Dumping structure for table gm_stories.reading_history
DROP TABLE IF EXISTS `reading_history`;
CREATE TABLE IF NOT EXISTS `reading_history` (
  `user_id` bigint DEFAULT NULL,
  `story_id` bigint DEFAULT NULL,
  `chapter_number` bigint DEFAULT NULL,
  `TIME` datetime DEFAULT NULL,
  KEY `story_id` (`story_id`),
  CONSTRAINT `reading_history_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `stories` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gm_stories.reading_history: ~205 rows (approximately)
DELETE FROM `reading_history`;
INSERT INTO `reading_history` (`user_id`, `story_id`, `chapter_number`, `TIME`) VALUES
	(-1, 2, 1, '2024-02-05 13:11:32'),
	(-1, 2, 1, '2024-02-05 13:11:32'),
	(-1, 2, 1, '2024-02-05 13:11:47'),
	(-1, 2, 1, '2024-02-05 13:11:47'),
	(-1, 1, 1, '2024-02-05 13:12:02'),
	(-1, 1, 1, '2024-02-05 13:12:02'),
	(-1, 1, 1, '2024-02-05 13:12:31'),
	(-1, 1, 1, '2024-02-05 13:12:31'),
	(-1, 1, 1, '2024-02-05 13:13:21'),
	(-1, 1, 1, '2024-02-05 13:13:21'),
	(-1, 1, 1, '2024-02-05 13:13:31'),
	(-1, 1, 1, '2024-02-05 13:13:39'),
	(-1, 1, 1, '2024-02-05 13:13:39'),
	(-1, 1, 1, '2024-02-05 13:13:49'),
	(-1, 1, 1, '2024-02-05 13:14:07'),
	(-1, 1, 1, '2024-02-05 13:14:07'),
	(-1, 1, 1, '2024-02-05 13:15:54'),
	(-1, 1, 1, '2024-02-05 13:15:54'),
	(-1, 1, 1, '2024-02-05 13:17:50'),
	(-1, 1, 1, '2024-02-05 13:17:50'),
	(-1, 1, 2, '2024-02-05 13:18:04'),
	(-1, 1, 2, '2024-02-05 13:18:04'),
	(-1, 2, 1, '2024-02-05 13:27:59'),
	(-1, 2, 1, '2024-02-05 13:27:59'),
	(-1, 2, 1, '2024-02-05 13:28:05'),
	(-1, 2, 1, '2024-02-05 13:28:05'),
	(-1, 1, 1, '2024-02-05 13:32:25'),
	(-1, 1, 1, '2024-02-05 13:32:25'),
	(-1, 1, 1, '2024-02-05 13:32:39'),
	(-1, 1, 1, '2024-02-05 13:32:39'),
	(-1, 2, 1, '2024-02-05 13:32:43'),
	(-1, 2, 1, '2024-02-05 13:32:43'),
	(-1, 1, 1, '2024-02-05 13:32:52'),
	(-1, 1, 1, '2024-02-05 13:32:52'),
	(-1, 1, 2, '2024-02-05 13:32:53'),
	(-1, 1, 2, '2024-02-05 13:32:53'),
	(-1, 1, 3, '2024-02-05 13:32:53'),
	(-1, 1, 3, '2024-02-05 13:32:53'),
	(-1, 1, 4, '2024-02-05 13:32:54'),
	(-1, 1, 4, '2024-02-05 13:32:54'),
	(-1, 1, 5, '2024-02-05 13:32:54'),
	(-1, 1, 5, '2024-02-05 13:32:54'),
	(-1, 1, 6, '2024-02-05 13:32:55'),
	(-1, 1, 6, '2024-02-05 13:32:55'),
	(-1, 1, 7, '2024-02-05 13:32:55'),
	(-1, 1, 7, '2024-02-05 13:32:55'),
	(-1, 1, 8, '2024-02-05 13:32:55'),
	(-1, 1, 8, '2024-02-05 13:32:55'),
	(-1, 1, 9, '2024-02-05 13:32:56'),
	(-1, 1, 9, '2024-02-05 13:32:56'),
	(-1, 1, 10, '2024-02-05 13:32:56'),
	(-1, 1, 10, '2024-02-05 13:32:56'),
	(-1, 5, 1, '2024-02-05 21:18:17'),
	(-1, 5, 1, '2024-02-05 21:18:17'),
	(-1, 5, 1, '2024-02-05 21:37:12'),
	(-1, 5, 1, '2024-02-05 21:37:12'),
	(-1, 5, 1, '2024-02-05 21:38:30'),
	(-1, 5, 1, '2024-02-05 21:38:30'),
	(-1, 5, 1, '2024-02-05 21:38:50'),
	(-1, 5, 1, '2024-02-05 21:38:50'),
	(-1, 5, 1, '2024-02-05 21:39:01'),
	(-1, 5, 1, '2024-02-05 21:39:01'),
	(-1, 1, 1, '2024-02-05 21:39:03'),
	(-1, 1, 1, '2024-02-05 21:39:03'),
	(-1, 1, 1, '2024-02-05 21:39:44'),
	(-1, 1, 1, '2024-02-05 21:39:44'),
	(-1, 1, 1, '2024-02-05 21:40:26'),
	(-1, 1, 1, '2024-02-05 21:40:26'),
	(-1, 1, 1, '2024-02-05 21:47:21'),
	(-1, 1, 1, '2024-02-05 21:47:21'),
	(-1, 1, 1, '2024-02-05 22:33:50'),
	(-1, 1, 1, '2024-02-05 22:33:50'),
	(-1, 1, 2, '2024-02-05 22:34:08'),
	(-1, 1, 2, '2024-02-05 22:34:08'),
	(-1, 1, 4, '2024-02-05 22:34:31'),
	(-1, 1, 4, '2024-02-05 22:34:31'),
	(-1, 1, 5, '2024-02-05 22:34:32'),
	(-1, 1, 5, '2024-02-05 22:34:32'),
	(-1, 1, 6, '2024-02-05 22:34:44'),
	(-1, 1, 6, '2024-02-05 22:34:44'),
	(-1, 1, 5, '2024-02-05 22:34:45'),
	(-1, 1, 5, '2024-02-05 22:34:45'),
	(-1, 1, 4, '2024-02-05 22:34:45'),
	(-1, 1, 4, '2024-02-05 22:34:45'),
	(-1, 1, 5, '2024-02-05 22:34:46'),
	(-1, 1, 5, '2024-02-05 22:34:46'),
	(-1, 2, 1, '2024-02-05 22:34:54'),
	(-1, 2, 1, '2024-02-05 22:34:54'),
	(-1, 2, 1, '2024-02-05 22:35:18'),
	(-1, 2, 1, '2024-02-05 22:35:18'),
	(-1, 2, 1, '2024-02-05 22:35:56'),
	(-1, 2, 1, '2024-02-05 22:35:56'),
	(-1, 2, 1, '2024-02-05 22:36:26'),
	(-1, 2, 1, '2024-02-05 22:36:26'),
	(-1, 2, 1, '2024-02-05 22:36:32'),
	(-1, 2, 1, '2024-02-05 22:36:32'),
	(-1, 1, 1, '2024-02-05 22:36:42'),
	(-1, 1, 1, '2024-02-05 22:36:42'),
	(-1, 1, 2, '2024-02-05 22:36:47'),
	(-1, 1, 2, '2024-02-05 22:36:47'),
	(-1, 1, 1, '2024-02-05 22:36:48'),
	(-1, 1, 1, '2024-02-05 22:36:48'),
	(-1, 1, 2, '2024-02-05 22:36:49'),
	(-1, 1, 2, '2024-02-05 22:36:49'),
	(-1, 1, 1, '2024-02-05 22:36:54'),
	(-1, 1, 1, '2024-02-05 22:36:54'),
	(-1, 1, 2, '2024-02-05 22:37:00'),
	(-1, 1, 2, '2024-02-05 22:37:00'),
	(-1, 1, 3, '2024-02-05 22:37:01'),
	(-1, 1, 3, '2024-02-05 22:37:01'),
	(-1, 1, 1, '2024-02-05 22:49:05'),
	(-1, 1, 1, '2024-02-05 22:49:05'),
	(-1, 1, 2, '2024-02-05 22:49:12'),
	(-1, 1, 2, '2024-02-05 22:49:12'),
	(-1, 1, 1, '2024-02-05 22:49:13'),
	(-1, 1, 1, '2024-02-05 22:49:13'),
	(-1, 1, 2, '2024-02-05 22:49:13'),
	(-1, 1, 2, '2024-02-05 22:49:13'),
	(-1, 1, 1, '2024-02-05 22:51:07'),
	(-1, 1, 1, '2024-02-05 22:51:07'),
	(-1, 1, 1, '2024-02-05 22:51:12'),
	(-1, 1, 1, '2024-02-05 22:51:12'),
	(-1, 1, 2, '2024-02-05 22:51:12'),
	(-1, 1, 2, '2024-02-05 22:51:12'),
	(-1, 1, 3, '2024-02-05 22:51:13'),
	(-1, 1, 3, '2024-02-05 22:51:13'),
	(-1, 2, 1, '2024-02-05 22:51:20'),
	(-1, 2, 1, '2024-02-05 22:51:20'),
	(-1, 2, 1, '2024-02-21 13:37:57'),
	(-1, 2, 1, '2024-02-21 13:37:57'),
	(-1, 5, 1, '2024-02-21 13:38:12'),
	(-1, 5, 1, '2024-02-21 13:38:12'),
	(-1, 4, 1, '2024-02-21 13:46:26'),
	(-1, 4, 1, '2024-02-21 13:46:26'),
	(-1, 4, 1, '2024-02-21 13:47:32'),
	(-1, 4, 1, '2024-02-21 13:47:38'),
	(-1, 4, 1, '2024-02-21 13:47:38'),
	(-1, 4, 1, '2024-02-21 13:47:50'),
	(-1, 4, 1, '2024-02-21 13:47:53'),
	(-1, 4, 1, '2024-02-21 13:47:53'),
	(-1, 4, 1, '2024-02-21 13:48:11'),
	(-1, 4, 1, '2024-02-21 13:48:15'),
	(-1, 4, 1, '2024-02-21 13:48:15'),
	(-1, 4, 1, '2024-02-21 13:53:34'),
	(-1, 4, 1, '2024-02-21 13:53:37'),
	(-1, 4, 1, '2024-02-21 13:53:37'),
	(-1, 4, 1, '2024-02-21 13:53:40'),
	(-1, 4, 1, '2024-02-21 13:53:40'),
	(-1, 4, 1, '2024-02-21 13:53:43'),
	(-1, 4, 1, '2024-02-21 13:53:43'),
	(-1, 4, 1, '2024-02-21 13:53:45'),
	(-1, 4, 1, '2024-02-21 13:53:45'),
	(-1, 2, 1, '2024-02-21 13:53:50'),
	(-1, 2, 1, '2024-02-21 13:53:50'),
	(-1, 4, 1, '2024-02-21 13:56:07'),
	(-1, 4, 1, '2024-02-21 13:56:07'),
	(-1, 5, 1, '2024-02-21 13:56:14'),
	(-1, 5, 1, '2024-02-21 13:56:14'),
	(-1, 1, 13, '2024-02-21 13:56:21'),
	(-1, 1, 13, '2024-02-21 13:56:21'),
	(-1, 1, 14, '2024-02-21 13:56:23'),
	(-1, 1, 14, '2024-02-21 13:56:23'),
	(-1, 1, 13, '2024-02-21 13:56:24'),
	(-1, 1, 13, '2024-02-21 13:56:24'),
	(-1, 1, 12, '2024-02-21 13:56:24'),
	(-1, 1, 12, '2024-02-21 13:56:24'),
	(-1, 1, 11, '2024-02-21 13:56:28'),
	(-1, 1, 11, '2024-02-21 13:56:28'),
	(-1, 1, 12, '2024-02-21 13:56:29'),
	(-1, 1, 12, '2024-02-21 13:56:29'),
	(-1, 1, 13, '2024-02-21 13:56:30'),
	(-1, 1, 13, '2024-02-21 13:56:30'),
	(-1, 1, 14, '2024-02-21 13:56:30'),
	(-1, 1, 14, '2024-02-21 13:56:30'),
	(-1, 1, 13, '2024-02-21 13:56:31'),
	(-1, 1, 13, '2024-02-21 13:56:31'),
	(-1, 1, 12, '2024-02-21 13:56:32'),
	(-1, 1, 12, '2024-02-21 13:56:32'),
	(-1, 1, 11, '2024-02-21 13:56:32'),
	(-1, 1, 11, '2024-02-21 13:56:32'),
	(-1, 1, 10, '2024-02-21 13:56:32'),
	(-1, 1, 10, '2024-02-21 13:56:32'),
	(-1, 1, 11, '2024-02-21 13:56:33'),
	(-1, 1, 11, '2024-02-21 13:56:33'),
	(-1, 1, 12, '2024-02-21 13:56:33'),
	(-1, 1, 12, '2024-02-21 13:56:33'),
	(-1, 1, 13, '2024-02-21 13:56:33'),
	(-1, 1, 13, '2024-02-21 13:56:33'),
	(-1, 1, 14, '2024-02-21 13:56:34'),
	(-1, 1, 14, '2024-02-21 13:56:34'),
	(-1, 1, 15, '2024-02-21 13:56:35'),
	(-1, 1, 15, '2024-02-21 13:56:35'),
	(-1, 1, 14, '2024-02-21 13:56:38'),
	(-1, 1, 14, '2024-02-21 13:56:38'),
	(-1, 1, 15, '2024-02-21 13:56:39'),
	(-1, 1, 15, '2024-02-21 13:56:39'),
	(-1, 3, 1, '2024-02-21 13:59:06'),
	(-1, 3, 1, '2024-02-21 13:59:06'),
	(-1, 3, 1, '2024-02-21 17:08:01'),
	(-1, 3, 1, '2024-02-21 17:08:01'),
	(-1, 3, 1, '2024-02-21 17:16:15'),
	(-1, 3, 1, '2024-02-21 17:16:15'),
	(-1, 3, 1, '2024-03-28 04:33:17'),
	(37, 3, 1, '2024-03-28 04:34:03'),
	(1, 7, 1, '2024-04-03 13:12:15'),
	(1, 2, 1, '2024-04-09 05:02:23'),
	(-1, 1, 1, '2024-04-09 12:48:49'),
	(1, 2, 1, '2024-04-13 04:21:37'),
	(1, 1, 1, '2024-04-13 10:24:26'),
	(1, 1, 1, '2024-04-13 10:25:12'),
	(1, 1, 1, '2024-04-13 10:25:22'),
	(1, 1, 1, '2024-04-13 10:26:20'),
	(102, 3, 1, '2024-04-14 05:02:37'),
	(102, 3, 1, '2024-04-14 05:03:22'),
	(-1, 3, 1, '2024-04-14 05:03:27'),
	(102, 4, 1, '2024-04-14 05:04:04'),
	(102, 4, 1, '2024-04-14 05:04:55'),
	(102, 5, 1, '2024-04-14 10:37:55'),
	(102, 2, 1, '2024-04-14 10:41:14'),
	(102, 1, 1, '2024-04-14 11:49:55'),
	(102, 1, 1, '2024-04-14 11:50:04'),
	(102, 1, 1, '2024-04-14 11:50:08'),
	(102, 1, 25, '2024-04-14 11:50:11'),
	(202, 1, 1, '2024-04-19 01:21:24'),
	(264, 5, 1, '2024-04-19 03:52:38'),
	(256, 5, 1, '2024-04-20 06:08:26'),
	(256, 1, 1, '2024-04-20 11:03:44'),
	(256, 1, 1, '2024-04-20 11:04:35'),
	(256, 4, 1, '2024-04-20 11:14:51'),
	(256, 6, 1, '2024-04-20 11:14:55'),
	(202, 5, 1, '2024-04-22 01:48:51'),
	(202, 4, 1, '2024-04-22 02:28:50'),
	(202, 4, 1, '2024-04-22 02:29:59'),
	(202, 1, 1, '2024-04-22 02:30:42'),
	(202, 1, 7, '2024-05-02 02:52:57'),
	(202, 1, 1, '2024-05-02 03:23:23'),
	(202, 1, 1, '2024-05-02 04:06:10'),
	(202, 1, 1, '2024-05-02 07:04:15'),
	(202, 6, 1, '2024-05-03 03:55:29'),
	(202, 1, 1, '2024-05-03 04:08:22'),
	(256, 5, 1, '2024-05-03 04:49:02'),
	(256, 5, 1, '2024-05-03 06:40:18'),
	(302, 5, 1, '2024-05-03 10:27:15'),
	(302, 7, 1, '2024-05-03 11:12:02'),
	(256, 1, 1, '2024-05-03 13:51:21'),
	(256, 2, 1, '2024-05-04 06:01:39'),
	(256, 2, 1, '2024-05-04 06:01:42'),
	(256, 6, 1, '2024-05-04 06:13:37'),
	(256, 5, 1, '2024-05-04 12:32:39'),
	(256, 6, 1, '2024-05-04 12:35:01'),
	(256, 6, 1, '2024-05-04 12:35:10'),
	(256, 3, 1, '2024-05-05 11:52:48'),
	(256, 6, 1, '2024-05-05 11:54:01'),
	(256, 3, 1, '2024-05-05 12:04:33'),
	(256, 7, 1, '2024-05-05 12:06:38'),
	(353, 1, 1, '2024-05-05 14:15:38'),
	(256, 3, 1, '2024-05-07 12:50:37'),
	(256, 1, 8, '2024-05-07 12:51:00'),
	(256, 5, 1, '2024-05-07 12:52:05'),
	(353, 4, 1, '2024-05-08 15:29:40');

-- Dumping structure for table gm_stories.stories
DROP TABLE IF EXISTS `stories`;
CREATE TABLE IF NOT EXISTS `stories` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID truyện',
  `TITLE` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Tên truyện',
  `CONTENT_TYPE` binary(1) NOT NULL DEFAULT '1' COMMENT 'Thể loại truyện tranh/chữ. 1 - Truyện tranh   2 - Truyện chữ',
  `INTRODUCTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `GENDER` binary(1) NOT NULL DEFAULT '0' COMMENT '0 - Cả 2. 1 - Nam. 2 - Nữ',
  `WRITING_STATE` binary(1) NOT NULL DEFAULT '1' COMMENT '1 - UNCOMPLETE. 2 - COMPLETE. -1 : CANCEL',
  `LAST_UPDATE_DATE` datetime DEFAULT NULL,
  `CHAPTER_QUANTITY` bigint NOT NULL DEFAULT '1',
  `FLAG_STATUS` binary(1) NOT NULL DEFAULT '1' COMMENT 'Trạng thái bị xóa/hiển thị của truyện. 1 - Active   0 - Inactive',
  `PICTURE` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'https://st.nettruyenus.com/data/comics/28/tro-thanh-nguoi-giam-dinh-chat-doc-cho-t-9371.jpg',
  `link` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '/',
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Thông tin cơ bản của truyện';

-- Dumping data for table gm_stories.stories: ~39 rows (approximately)
DELETE FROM `stories`;
INSERT INTO `stories` (`ID`, `TITLE`, `CONTENT_TYPE`, `INTRODUCTION`, `GENDER`, `WRITING_STATE`, `LAST_UPDATE_DATE`, `CHAPTER_QUANTITY`, `FLAG_STATUS`, `PICTURE`, `link`, `keyword`) VALUES
	(1, 'Già thiên', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, '2022-11-17 21:15:05', 200, _binary 0x31, 'https://bedental.vn/wp-content/uploads/2022/12/0db107ee98f822feb9e4cfadf8c55b5a.jpg', '/truyen-tranh/1', 'gia-thien'),
	(2, 'Tối cường thần thoại đế hoàng', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x32, '2022-11-18 21:15:05', 300, _binary 0x31, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg', '/truyen-tranh/2', 'toi-cuong-than-thoai-de-hoang'),
	(3, 'Cung quỷ kiếm thần', _binary 0x31, 'Nguỵ Tấn', _binary 0x30, _binary 0x32, '2022-11-18 21:12:05', 300, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/3', 'cung-quy-kiem-than'),
	(4, 'ANH TRAI TÔI ĐẾN TỪ NÚI SÂU', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, '2022-11-17 21:15:05', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/4', 'anh-trai-toi-den-tu-nui-sau'),
	(5, 'NÓNG LÒNG MUỐN GIÀY VÒ EM', _binary 0x31, 'GIÀY VÒ EM', _binary 0x30, _binary 0x32, '2022-11-18 21:15:05', 300, _binary 0x31, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg', '/truyen-tranh/5', 'nong-long-muon-giay-vo-em'),
	(6, 'Ngày nào đó trở thành công chúa tế phẩm', _binary 0x31, 'CÔNG CHÚA', _binary 0x30, _binary 0x32, '2022-11-18 21:12:05', 300, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/6', 'ngay-nao-do-tro-thanh-cong-chua-te-pham'),
	(7, 'Tham Hoan', _binary 0x31, 'Tham hoan', _binary 0x30, _binary 0x31, '2023-09-06 09:30:01', 190, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/7', 'tham-hoan'),
	(8, 'Trấn Hồn', _binary 0x31, 'Trấn hồn', _binary 0x30, _binary 0x31, '2023-10-29 15:43:34', 200, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/8', 'tran-hon'),
	(9, 'Bàn long', _binary 0x31, 'Bàn Long', _binary 0x30, _binary 0x31, '2023-11-29 15:52:36', 200, _binary 0x31, 'https://i.pinimg.com/236x/78/67/5e/78675ee583c98b2b8efd990f85cc657a.jpg', '/truyen-tranh/9', 'ban-long'),
	(10, 'Bởi Vì Tôi Là Ông Chú Điều Hành Một Cửa Hàng Vũ Khí', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x31, '2023-08-30 21:49:57', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/10', 'boi-vi'),
	(11, 'NGUYÊN TÔN', _binary 0x31, 'NGUYÊN TÔN', _binary 0x30, _binary 0x31, '2023-11-30 21:50:40', 200, _binary 0x31, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg', '/truyen-tranh/11', 'nguyen-ton'),
	(12, 'ANGEL X DARKNESS', _binary 0x31, 'ANGEL X DARKNESS', _binary 0x30, _binary 0x31, '2023-12-30 21:54:28', 211, _binary 0x31, 'https://i.pinimg.com/236x/78/67/5e/78675ee583c98b2b8efd990f85cc657a.jpg', '/truyen-tranh/12', 'angle-x-darkness'),
	(13, 'Chú Ơi Đừng Chạy!!!', _binary 0x31, 'Chú Ơi Đừng Chạy!!!', _binary 0x30, _binary 0x31, '2023-12-30 21:59:03', 211, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/13', 'chu-oi-dung-chay'),
	(14, 'Già thiên', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, '2022-11-17 21:15:05', 200, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/1', 'gia-thien'),
	(15, 'Tối cường thần thoại đế hoàng', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x32, '2022-11-18 21:15:05', 300, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/2', 'toi-cuong-than-thoai-de-hoang'),
	(16, 'Cung quỷ kiếm thần', _binary 0x31, 'Nguỵ Tấn', _binary 0x30, _binary 0x32, '2022-11-18 21:12:05', 300, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/3', 'cung-quy-kiem-than'),
	(17, 'ANH TRAI TÔI ĐẾN TỪ NÚI SÂU', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, '2022-11-17 21:15:05', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/4', 'anh-trai-toi-den-tu-nui-sau'),
	(18, 'NÓNG LÒNG MUỐN GIÀY VÒ EM', _binary 0x31, 'GIÀY VÒ EM', _binary 0x30, _binary 0x32, '2022-11-18 21:15:05', 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/5', 'nong-long-muon-giay-vo-em'),
	(19, 'Ngày nào đó trở thành công chúa tế phẩm', _binary 0x31, 'CÔNG CHÚA', _binary 0x30, _binary 0x32, '2022-11-18 21:12:05', 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/6', 'ngay-nao-do-tro-thanh-cong-chua-te-pham'),
	(20, 'Tham Hoan', _binary 0x31, 'Tham hoan', _binary 0x30, _binary 0x31, '2023-09-06 09:30:01', 190, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/7', 'tham-hoan'),
	(21, 'Trấn Hồn', _binary 0x31, 'Trấn hồn', _binary 0x30, _binary 0x31, '2023-10-29 15:43:34', 200, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/8', 'tran-hon'),
	(22, 'Bàn long', _binary 0x31, 'Bàn Long', _binary 0x30, _binary 0x31, '2023-11-29 15:52:36', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/9', 'ban-long'),
	(23, 'Bởi Vì Tôi Là Ông Chú Điều Hành Một Cửa Hàng Vũ Khí', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x31, '2023-08-30 21:49:57', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/10', 'boi-vi'),
	(24, 'NGUYÊN TÔN', _binary 0x31, 'NGUYÊN TÔN', _binary 0x30, _binary 0x31, '2023-11-30 21:50:40', 200, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/11', 'nguyen-ton'),
	(25, 'ANGEL X DARKNESS', _binary 0x31, 'ANGEL X DARKNESS', _binary 0x30, _binary 0x31, '2023-12-30 21:54:28', 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/12', 'angle-x-darkness'),
	(26, 'Chú Ơi Đừng Chạy!!!', _binary 0x31, 'Chú Ơi Đừng Chạy!!!', _binary 0x30, _binary 0x31, '2023-12-30 21:59:03', 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/13', 'chu-oi-dung-chay'),
	(27, 'Già thiên', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, '2022-11-17 21:15:05', 200, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/1', 'gia-thien'),
	(28, 'Tối cường thần thoại đế hoàng', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x32, '2022-11-18 21:15:05', 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/2', 'toi-cuong-than-thoai-de-hoang'),
	(29, 'Cung quỷ kiếm thần', _binary 0x31, 'Nguỵ Tấn', _binary 0x30, _binary 0x32, '2022-11-18 21:12:05', 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/3', 'cung-quy-kiem-than'),
	(30, 'ANH TRAI TÔI ĐẾN TỪ NÚI SÂU', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, '2022-11-17 21:15:05', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/4', 'anh-trai-toi-den-tu-nui-sau'),
	(31, 'NÓNG LÒNG MUỐN GIÀY VÒ EM', _binary 0x31, 'GIÀY VÒ EM', _binary 0x30, _binary 0x32, '2022-11-18 21:15:05', 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/5', 'nong-long-muon-giay-vo-em'),
	(32, 'Ngày nào đó trở thành công chúa tế phẩm', _binary 0x31, 'CÔNG CHÚA', _binary 0x30, _binary 0x32, '2022-11-18 21:12:05', 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/6', 'ngay-nao-do-tro-thanh-cong-chua-te-pham'),
	(33, 'Tham Hoan', _binary 0x31, 'Tham hoan', _binary 0x30, _binary 0x31, '2023-09-06 09:30:01', 190, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/7', 'tham-hoan'),
	(34, 'Trấn Hồn', _binary 0x31, 'Trấn hồn', _binary 0x30, _binary 0x31, '2023-10-29 15:43:34', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/8', 'tran-hon'),
	(35, 'Bàn long', _binary 0x31, 'Bàn Long', _binary 0x30, _binary 0x31, '2023-11-29 15:52:36', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/9', 'ban-long'),
	(36, 'Bởi Vì Tôi Là Ông Chú Điều Hành Một Cửa Hàng Vũ Khí', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x31, '2023-08-30 21:49:57', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/10', 'boi-vi'),
	(37, 'NGUYÊN TÔN', _binary 0x31, 'NGUYÊN TÔN', _binary 0x30, _binary 0x31, '2023-11-30 21:50:40', 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/11', 'nguyen-ton'),
	(38, 'ANGEL X DARKNESS', _binary 0x31, 'ANGEL X DARKNESS', _binary 0x30, _binary 0x31, '2023-12-30 21:54:28', 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/12', 'angle-x-darkness'),
	(39, 'Chú Ơi Đừng Chạy!!!', _binary 0x31, 'Chú Ơi Đừng Chạy!!!', _binary 0x30, _binary 0x31, '2023-12-30 21:59:03', 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/13', 'chu-oi-dung-chay');

-- Dumping structure for table gm_stories.stories_authors
DROP TABLE IF EXISTS `stories_authors`;
CREATE TABLE IF NOT EXISTS `stories_authors` (
  `AUTHOR_ID` bigint DEFAULT NULL,
  `STORY_ID` bigint DEFAULT NULL,
  KEY `FK_AUTHOR_ID` (`AUTHOR_ID`),
  KEY `FK_STORIE_ID` (`STORY_ID`),
  CONSTRAINT `FK_AUTHOR` FOREIGN KEY (`AUTHOR_ID`) REFERENCES `authors` (`ID`),
  CONSTRAINT `FK_AUTHOR_ID` FOREIGN KEY (`AUTHOR_ID`) REFERENCES `authors` (`ID`),
  CONSTRAINT `FK_STORIE_ID` FOREIGN KEY (`STORY_ID`) REFERENCES `stories` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gm_stories.stories_authors: ~19 rows (approximately)
DELETE FROM `stories_authors`;
INSERT INTO `stories_authors` (`AUTHOR_ID`, `STORY_ID`) VALUES
	(2, 3),
	(1, 4),
	(1, 2),
	(5, 1),
	(2, 5),
	(6, 6),
	(1, 7),
	(1, 8),
	(2, 9),
	(5, 10),
	(3, 11),
	(4, 12),
	(4, 13),
	(1, 30),
	(2, 12),
	(6, 34),
	(4, 17),
	(5, 4),
	(1, 2);

-- Dumping structure for table gm_stories.stories_categories
DROP TABLE IF EXISTS `stories_categories`;
CREATE TABLE IF NOT EXISTS `stories_categories` (
  `STORY_ID` bigint DEFAULT NULL COMMENT 'ID truyện',
  `CATEGORY_ID` bigint DEFAULT NULL COMMENT 'ID danh mục',
  KEY `FK_STORIES` (`STORY_ID`),
  KEY `FK_CATEGORIES` (`CATEGORY_ID`),
  CONSTRAINT `FK_CATEGORIES` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `categories` (`ID`),
  CONSTRAINT `FK_STORIES` FOREIGN KEY (`STORY_ID`) REFERENCES `stories` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Danh mục của từng truyện';

-- Dumping data for table gm_stories.stories_categories: ~66 rows (approximately)
DELETE FROM `stories_categories`;
INSERT INTO `stories_categories` (`STORY_ID`, `CATEGORY_ID`) VALUES
	(1, 2),
	(4, 4),
	(2, 3),
	(3, 2),
	(5, 11),
	(6, 7),
	(2, 16),
	(7, 13),
	(1, 6),
	(3, 15),
	(5, 4),
	(8, 2),
	(2, 2),
	(3, 5),
	(1, 6),
	(7, 10),
	(2, 12),
	(9, 2),
	(10, 5),
	(11, 8),
	(12, 4),
	(13, 10),
	(15, 2),
	(16, 4),
	(18, 3),
	(17, 2),
	(19, 11),
	(20, 7),
	(21, 16),
	(17, 13),
	(21, 6),
	(23, 15),
	(22, 4),
	(18, 2),
	(24, 2),
	(23, 5),
	(17, 6),
	(17, 10),
	(21, 12),
	(19, 2),
	(15, 5),
	(14, 8),
	(15, 4),
	(14, 10),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 2),
	(25, 3),
	(26, 4),
	(31, 5),
	(27, 6),
	(32, 6),
	(33, 7),
	(35, 8),
	(28, 9),
	(29, 10),
	(34, 11),
	(35, 12),
	(36, 13),
	(37, 12),
	(39, 14),
	(35, 5),
	(31, 8),
	(32, 4),
	(38, 10);

-- Dumping structure for table gm_stories.stories_chapters
DROP TABLE IF EXISTS `stories_chapters`;
CREATE TABLE IF NOT EXISTS `stories_chapters` (
  `CHAPTER_NUMBER` bigint NOT NULL COMMENT 'Số thứ tự chương truyện',
  `STORY_ID` bigint NOT NULL COMMENT 'ID của truyện',
  `PICTURE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Đường link của chương truyện',
  `CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Nội dung truyện, có thể là đường link các hình ảnh hoặc văn bản',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'Thời gian update chương',
  `VIEWS` bigint NOT NULL DEFAULT '0' COMMENT 'Lượt xem chương',
  `FLAG_STATUS` binary(1) NOT NULL DEFAULT '1' COMMENT 'Trạng thái hoạt động của chương. 1 - Active   0 - Inactive',
  `SCOPE` binary(1) NOT NULL DEFAULT '1' COMMENT 'Phạm vi đọc của chương. 1 - Public   2 - Private (Mở khóa thì mới đọc được)',
  `CHAPTER_NAME` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`CHAPTER_NUMBER`,`STORY_ID`,`FLAG_STATUS`),
  KEY `FK_STORIES_CHAPTERS` (`STORY_ID`),
  CONSTRAINT `FK_STORIES_CHAPTERS` FOREIGN KEY (`STORY_ID`) REFERENCES `stories` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Các chapters của truyện';

-- Dumping data for table gm_stories.stories_chapters: ~31 rows (approximately)
DELETE FROM `stories_chapters`;
INSERT INTO `stories_chapters` (`CHAPTER_NUMBER`, `STORY_ID`, `PICTURE`, `CONTENT`, `UPDATE_DATE`, `VIEWS`, `FLAG_STATUS`, `SCOPE`, `CHAPTER_NAME`) VALUES
	(1, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 270, _binary 0x31, _binary 0x31, NULL),
	(1, 2, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 01:00:58', 245, _binary 0x31, _binary 0x31, NULL),
	(1, 3, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2024-01-06 15:22:23', 236, _binary 0x31, _binary 0x31, NULL),
	(1, 4, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 805, _binary 0x31, _binary 0x31, NULL),
	(1, 5, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 01:00:58', 356, _binary 0x31, _binary 0x31, NULL),
	(1, 6, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 21:19:56', 228, _binary 0x31, _binary 0x31, NULL),
	(1, 7, 'https://nettruyenviet.com/truyen-tranh/tham-hoan/chuong-1', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-09-06 09:31:16', 37, _binary 0x31, _binary 0x31, NULL),
	(2, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 21:19:56', 249, _binary 0x31, _binary 0x31, NULL),
	(3, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 206, _binary 0x31, _binary 0x31, NULL),
	(4, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:17:42', 2228, _binary 0x31, _binary 0x31, NULL),
	(5, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:18:05', 229, _binary 0x31, _binary 0x31, NULL),
	(6, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 226, _binary 0x31, _binary 0x31, NULL),
	(7, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:17:42', 2225, _binary 0x31, _binary 0x31, NULL),
	(8, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:18:05', 224, _binary 0x31, _binary 0x31, NULL),
	(9, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 224, _binary 0x31, _binary 0x31, NULL),
	(10, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:17:42', 2226, _binary 0x31, _binary 0x31, NULL),
	(11, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:18:05', 227, _binary 0x31, _binary 0x31, NULL),
	(12, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 230, _binary 0x31, _binary 0x31, NULL),
	(13, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:17:42', 2232, _binary 0x31, _binary 0x31, NULL),
	(14, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:18:05', 229, _binary 0x31, _binary 0x31, NULL),
	(15, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 226, _binary 0x31, _binary 0x31, NULL),
	(16, 1, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 01:00:58', 222, _binary 0x31, _binary 0x31, NULL),
	(17, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2024-01-06 15:22:23', 222, _binary 0x31, _binary 0x31, NULL),
	(18, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 777, _binary 0x31, _binary 0x31, NULL),
	(19, 1, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 01:00:58', 333, _binary 0x31, _binary 0x31, NULL),
	(20, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 21:19:56', 222, _binary 0x31, _binary 0x31, NULL),
	(21, 1, 'https://nettruyenviet.com/truyen-tranh/tham-hoan/chuong-1', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-09-06 09:31:16', 34, _binary 0x31, _binary 0x31, NULL),
	(22, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-18 21:19:56', 233, _binary 0x31, _binary 0x31, NULL),
	(23, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-11-17 21:18:45', 200, _binary 0x31, _binary 0x31, NULL),
	(24, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:17:42', 2222, _binary 0x31, _binary 0x31, NULL),
	(25, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', '2023-12-02 11:18:05', 222, _binary 0x31, _binary 0x31, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;


-- --------------------------------------------------------
-- Host:                         54.252.244.31
-- Server version:               8.0.36-0ubuntu0.22.04.1 - (Ubuntu)
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
CREATE DATABASE IF NOT EXISTS `gm_users` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gm_users`;

-- Dumping structure for table gm_users.profile
DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` bigint NOT NULL,
  `additional_information` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `onboard` bit(1) NOT NULL,
  `zodiac` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gm_users.profile: ~15 rows (approximately)
DELETE FROM `profile`;
INSERT INTO `profile` (`user_id`, `additional_information`, `avatar`, `date_of_birth`, `gender`, `introduction`, `location`, `nickname`, `onboard`, `zodiac`) VALUES
	(1, NULL, 'https://demoda.vn/wp-content/uploads/2022/08/hinh-anh-avatar-nu-de-thuong.jpg', NULL, NULL, NULL, NULL, 'Hieu Gioi Mon', b'0', NULL),
	(52, NULL, 'https://bizweb.dktcdn.net/100/438/408/files/avatar-dep-cho-nam-yody-vn10.jpg?v=1683516432549', NULL, NULL, NULL, NULL, 'Hieu Gioi Mon', b'0', NULL),
	(102, NULL, 'https://demoda.vn/wp-content/uploads/2022/08/hinh-anh-avatar-nu-de-thuong.jpg', NULL, NULL, NULL, NULL, 'Hieu Gioi Mon', b'0', NULL),
	(202, NULL, 'https://i.ibb.co/XjpGyQp/chi-ton-tu-la.jpg', '10/04/2002', 'Men', NULL, NULL, 'GG outplayed', b'0', NULL),
	(252, NULL, 'https://i.ibb.co/5v5prRH/avatar-dep-cho-nam-yody-vn.webp', NULL, '', NULL, NULL, 'HieuRikkei', b'0', NULL),
	(253, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(254, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(255, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(256, NULL, 'https://i.ibb.co/Km0ZwrK/Bao-ve-sieu-sao-cua-toi.jpg', '10/11/1994', ';Women', NULL, NULL, 'Hieu1407', b'0', NULL),
	(257, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(258, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(259, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(260, NULL, NULL, NULL, '', NULL, NULL, 'ThanhThao', b'0', NULL),
	(261, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(262, NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', NULL),
	(264, NULL, 'https://i.ibb.co/F4rkjVb/avatar-dep-cho-nam-yody-vn.webp', '10/08/2005', ';Men', NULL, NULL, 'Hieu', b'0', NULL),
	(302, NULL, 'https://i.ibb.co/4VcqQcL/avartar-anime-43.jpg', '05/04/2005', ';Men', NULL, NULL, 'Diệp Phàm', b'0', NULL),
	(352, NULL, 'https://i.ibb.co/St8hYQF/giao-duc-chan-chinh.jpg', '08/08/2001', ';Men', NULL, NULL, 'Hiếu Đẹp Trai', b'0', NULL),
	(353, NULL, 'https://i.ibb.co/C18mYQJ/image.jpg', '25/04/2001', ';Men', NULL, NULL, 'HIEU HANDSOME', b'0', NULL);

-- Dumping structure for table gm_users.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'USER ID',
  `USERNAME` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'USERNAME',
  `PASSWORD` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'MK',
  `ACCESS_TOKEN` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` int DEFAULT NULL,
  `FLAG_STATUS` binary(1) NOT NULL DEFAULT '1' COMMENT 'Trạng thái KHOÁ/KHÔNG KHOÁ của USER. 1 - Active   0 - Inactive',
  `status` int DEFAULT NULL,
  `tok_exp_time` bigint DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gm_users.users: ~42 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`ID`, `USERNAME`, `PASSWORD`, `ACCESS_TOKEN`, `role`, `FLAG_STATUS`, `status`, `tok_exp_time`, `token`) VALUES
	(1, 'hieu1234', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwicm9sZSI6MSwiZXhwIjoxNzEzMzIwMDYwNjk5fQ.jI_4rDbvgCEZYtFUmqs-zMJDh0cBeRCnhS5W2WrTt3Y', 1, _binary 0x31, 0, 1712378275930, NULL),
	(2, 'hieu1231', 'hieu123', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwicm9sZSI6MSwiZXhwIjoxNzEzMDkxNDkwMDYwfQ.s28CowBWEx8DJ5Ny6n32T9mQMwLa5cnA32bM7KhUHPM', 1, _binary 0x31, 0, 1713269462047, NULL),
	(16, 'hieu', 'afc8e16842061ea3dbb023bf5f08d1bc3a728429313fab0cba30f60954ff9064', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(17, 'hieu277', '03f41d4439f1e7b96c53ec77c35f1a7f58720d535102dace3aff1fb7e0164117', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(18, 'hieu2772', '03f41d4439f1e7b96c53ec77c35f1a7f58720d535102dace3aff1fb7e0164117', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(19, 'hieu2', '5ae4f4e0ae2e1c84c93285cced24247d89e2035b18d7556b301e81a21a3bd4df', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(20, 'trmhieu', 'bfb701ba2eab08ddeb6b2237e65dcc9cd0de18cb2352f643b8e50ca3617f76d6', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(21, 'hieuhieu', '5ae4f4e0ae2e1c84c93285cced24247d89e2035b18d7556b301e81a21a3bd4df', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(22, 'admin', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(23, 'admin2', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(24, 'admin3', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(25, 'admin4', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(26, 'admin5', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(27, 'minhhieu01', 'a5ed75bf9d90d006d8acaaf61d90be706ac48a807e4b48e8c62f051fb2c348da', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(28, 'minhhieu', '4536e3e3ad129a2919f41ed1a792de7818093fc554e5ba16bf8ff0b005604af4', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(29, 'minhhieu1', '4536e3e3ad129a2919f41ed1a792de7818093fc554e5ba16bf8ff0b005604af4', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(30, 'doanthanhthao', 'c4432fab37b2aec0d772c18badf93c63327b55a0c82df813cb692df877e48b61', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(31, 'thanhthao', 'e7c9aa48c1f6bb352c562cc36fd5b578620c6c4aacfea4c37d4e8745d4a2663b', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(32, 'chunhahieu', 'e7c9aa48c1f6bb352c562cc36fd5b578620c6c4aacfea4c37d4e8745d4a2663b', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(33, 'hieuminh', 'c89faaa77debabb1f3949084d14dcb52426e5a9590fb6c3d0abc43bab893c3ed', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(34, 'trinhhieu', '952187687baf36a84fd9e8ec53efa8602da4b66fb35dde16835b1e3220858478', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(35, 'hieu02', '1718c24b10aeb8099e3fc44960ab6949ab76a267352459f203ea1036bec382c2', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(36, 'hieu14', '1718c24b10aeb8099e3fc44960ab6949ab76a267352459f203ea1036bec382c2', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(37, 'minhhieu02', '1718c24b10aeb8099e3fc44960ab6949ab76a267352459f203ea1036bec382c2', 'token', 1, _binary 0x31, NULL, NULL, NULL),
	(52, 'hieu12345', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI1MiIsImV4cCI6MTcxMjk5NjY5MDAwNn0.z6LXfOGGoyDTG63eh-2xm-__yZ0lR4uP-HpMQRnJ5Vg', NULL, _binary 0x31, 0, 1713498889076, NULL),
	(102, 'trmhieu02', 'hieu1407', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxMDIiLCJleHAiOjE3MTMzNjIxOTQxMjR9.dd6lGiGMAWnLvkKc9Q-iwRgLk3sW8C8SGNm3iCAn56k', NULL, _binary 0x31, 0, 1713609898897, NULL),
	(152, 'donedone', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxNTIiLCJleHAiOjE3MTMzMTc0ODI4NzR9.7mI0e9tdwf65R0FonSDxVmlYgm9Uo8f1bYfe53qnUGQ', NULL, _binary 0x31, 0, 1713835882751, NULL),
	(153, 'tomtom', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxNTMiLCJleHAiOjE3MTMzMTc4MzMwMzJ9.KoV-gHdbTanbsGDF5L9kTOh3e1ZuGGBl3XhTK6dHfMM', NULL, _binary 0x31, 0, 1713836233013, NULL),
	(154, 'nano', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxNTQiLCJleHAiOjE3MTMzMTkxODk5OTd9.GSjBeOSp2B3-RSfxlOoItKZhukuMLLyPVY0xZR-rDd4', NULL, _binary 0x31, 0, 1713837589968, NULL),
	(155, 'rikkei', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxNTUiLCJleHAiOjE3MTMzMTkzMzcwNzR9.cOSHAtUs7Y-0gJW45In6elDTYmN8l4bJ4DtSSkMO2UQ', NULL, _binary 0x31, 0, 1713837737044, NULL),
	(156, 'trmhieu2002', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxNTYiLCJleHAiOjE3MTMzNjI0MDM1NTN9.Yn1KhTYIOLU0_yKIjFgVSGobNgRDVInxuNT4ZpSSvfY', NULL, _binary 0x31, 0, 1713880803539, NULL),
	(202, 'trmhieu2003', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMDIiLCJleHAiOjE3MTM1NzYwNDc4ODN9.7hgEOZz3bcsiEjl3_0TxTPNwOWb-KGJu9uk2vdQYg4A', NULL, _binary 0x31, 0, 1713881473166, NULL),
	(252, 'hieurikkei', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTIiLCJleHAiOjE3MTM1ODA2MTc3MzZ9.2EHRUh0R07DQM2I2VcxGkg50ZH1g3Cx31Ue6CCyJo7A', NULL, _binary 0x31, 0, 1714098958242, NULL),
	(253, 'thaothao', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTMiLCJleHAiOjE3MTM1ODA5OTczMDF9.WYU9_c2kC6onVnsiifD6jB_szXJndAFBgoIiTQWshpI', NULL, _binary 0x31, 0, 1714099397278, NULL),
	(254, 'thaothao2', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTQiLCJleHAiOjE3MTM1ODEwNjEyMTB9.ZA7C_BOJcXBTSsWvYgUphlEl33kGuIKfkoJomWVHvTQ', NULL, _binary 0x31, 0, 1714099461185, NULL),
	(255, 'thaothao3', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTUiLCJleHAiOjE3MTM1ODExNTM3NDh9.hovHRpxfki893_IxmqxlKst3eaaBYOlYF1BS0IEgALw', NULL, _binary 0x31, 0, 1714099553725, NULL),
	(256, 'thaothao4', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTYiLCJleHAiOjE3MTUzNDQ1MzE0MTd9.Opr-Bz1IUarZ9Ovi6lqHPtBMilEFwlRBZgtBFab7eZQ', NULL, _binary 0x31, 0, 1714099630866, NULL),
	(257, 'thaothao5', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTciLCJleHAiOjE3MTM1ODE0NTU0NjJ9.l0G8gxM4_WKMd59_k1Kr1HdtqEM1xGa7rtOwQtx81ic', NULL, _binary 0x31, 0, 1714099855439, NULL),
	(258, 'thaothao6', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTgiLCJleHAiOjE3MTM1ODE0OTY4MDh9.OWTkznx6V9V28r7rWlQbR0OFFD81LC5QH0jic3Kvv6E', NULL, _binary 0x31, 0, 1714099896782, NULL),
	(259, 'thaothao8', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNTkiLCJleHAiOjE3MTM1ODE3OTk5Njd9.jn96_TBj0ZxORTy1IGDy-7Zn7CPT56pcNchx5iI2ruY', NULL, _binary 0x31, 0, 1714100199950, NULL),
	(260, 'thaothao9', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNjAiLCJleHAiOjE3MTM1ODMxNDA4MDd9.ohi2iIGSY195eJ1a2mL7b8uKm__eoNRxtf1oKP3hgm4', NULL, _binary 0x31, 0, 1714100523461, NULL),
	(261, 'hieuthao', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNjEiLCJleHAiOjE3MTM1ODMxNTgyNzB9.xB9el53rX2TpxBhXFpDjNBZq_B0wWli-_98qhBN7kvU', NULL, _binary 0x31, 0, 1714101558256, NULL),
	(262, 'hieuthao2', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNjIiLCJleHAiOjE3MTM1ODMyNTMxNjV9.9UhEi8m1JX55hgd4eh2-_BTRmJjHxANFQIrGBiYUcoU', NULL, _binary 0x31, 0, 1714101653150, NULL),
	(264, 'hieuthao3', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNjQiLCJleHAiOjE3MTM1ODQzMTkwMTB9.juimGI1HxCnYVhnccihcg9EOX9YrDkf9N5SsFiO0754', NULL, _binary 0x31, 0, 1714102718995, NULL),
	(302, 'hieuwg01', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzMDIiLCJleHAiOjE3MTQ4MDYyNTM5MzV9.gX-pb2GzJyB_y0XhCLGdOZ444sg1D5R40gpbPCIyGEo', NULL, _binary 0x31, 0, 1715324653873, NULL),
	(352, '', '', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzNTIiLCJleHAiOjE3MTUwMDQ3NDQ1MzJ9.F-FueC-taz-M30ZKQBKkpeiAFZzesI4MOSFKeX7EYHI', NULL, _binary 0x31, 0, 1715523144407, NULL),
	(353, 'trucxinh2', '12341234', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzNTMiLCJleHAiOjE3MTUxNzUzNTk1NjB9.zl578PeuaTTVuJz4Hy1szKDdZPFZVHce0wAqld5xdqo', NULL, _binary 0x31, 0, 1715523262726, NULL),
	(999, 'hieu123', 'Hieu1407', '3', 1, _binary 0x31, NULL, NULL, NULL);

-- Dumping structure for table gm_users.users_seq
DROP TABLE IF EXISTS `users_seq`;
CREATE TABLE IF NOT EXISTS `users_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gm_users.users_seq: ~0 rows (approximately)
DELETE FROM `users_seq`;
INSERT INTO `users_seq` (`next_val`) VALUES
	(451);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
