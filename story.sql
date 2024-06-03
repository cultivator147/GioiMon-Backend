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

-- Dumping structure for table gm_stories.authors
CREATE DATABASE IF NOT EXISTS `gm_stories` ;
USE `gm_stories`;
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
  `TIME` BIGINT DEFAULT NULL,
  KEY `story_id` (`story_id`),
  CONSTRAINT `reading_history_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `stories` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gm_stories.reading_history: ~261 rows (approximately)
DELETE FROM `reading_history`;


-- Dumping structure for table gm_stories.stories
DROP TABLE IF EXISTS `stories`;
CREATE TABLE IF NOT EXISTS `stories` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID truyện',
  `TITLE` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Tên truyện',
  `CONTENT_TYPE` binary(1) NOT NULL DEFAULT '1' COMMENT 'Thể loại truyện tranh/chữ. 1 - Truyện tranh   2 - Truyện chữ',
  `INTRODUCTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `GENDER` binary(1) NOT NULL DEFAULT '0' COMMENT '0 - Cả 2. 1 - Nam. 2 - Nữ',
  `WRITING_STATE` binary(1) NOT NULL DEFAULT '1' COMMENT '1 - UNCOMPLETE. 2 - COMPLETE. -1 : CANCEL',
  `CHAPTER_QUANTITY` bigint NOT NULL DEFAULT '1',
  `FLAG_STATUS` binary(1) NOT NULL DEFAULT '1' COMMENT 'Trạng thái bị xóa/hiển thị của truyện. 1 - Active   0 - Inactive',
  `PICTURE` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'https://st.nettruyenus.com/data/comics/28/tro-thanh-nguoi-giam-dinh-chat-doc-cho-t-9371.jpg',
  `link` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '/',
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `last_update_date` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Thông tin cơ bản của truyện';

-- Dumping data for table gm_stories.stories: ~39 rows (approximately)
DELETE FROM `stories`;
INSERT INTO `stories` (`ID`, `TITLE`, `CONTENT_TYPE`, `INTRODUCTION`, `GENDER`, `WRITING_STATE`, `CHAPTER_QUANTITY`, `FLAG_STATUS`, `PICTURE`, `link`, `keyword`, `last_update_date`) VALUES
	(1, 'Già thiên', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, 200, _binary 0x31, 'http://54.252.244.31:8080/images/avatar/dep.jpg', '/truyen-tranh/1', 'gia-thien', 1717557832807),
	(2, 'Tối cường thần thoại đế hoàng', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg', '/truyen-tranh/2', 'toi-cuong-than-thoai-de-hoang', 1717557832807),
	(3, 'Cung quỷ kiếm thần', _binary 0x31, 'Nguỵ Tấn', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/3', 'cung-quy-kiem-than', 1717557832807),
	(4, 'ANH TRAI TÔI ĐẾN TỪ NÚI SÂU', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/4', 'anh-trai-toi-den-tu-nui-sau', 1717557832807),
	(5, 'NÓNG LÒNG MUỐN GIÀY VÒ EM', _binary 0x31, 'GIÀY VÒ EM', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg', '/truyen-tranh/5', 'nong-long-muon-giay-vo-em', 1717557832807),
	(6, 'Ngày nào đó trở thành công chúa tế phẩm', _binary 0x31, 'CÔNG CHÚA', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/6', 'ngay-nao-do-tro-thanh-cong-chua-te-pham', 1717557832807),
	(7, 'Tham Hoan', _binary 0x31, 'Tham hoan', _binary 0x30, _binary 0x31, 190, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/7', 'tham-hoan', 1717557832807),
	(8, 'Trấn Hồn', _binary 0x31, 'Trấn hồn', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/8', 'tran-hon', 1717557832807),
	(9, 'Bàn long', _binary 0x31, 'Bàn Long', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.pinimg.com/236x/78/67/5e/78675ee583c98b2b8efd990f85cc657a.jpg', '/truyen-tranh/9', 'ban-long', 1717557832807),
	(10, 'Bởi Vì Tôi Là Ông Chú Điều Hành Một Cửa Hàng Vũ Khí', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/10', 'boi-vi', 1717557832807),
	(11, 'NGUYÊN TÔN', _binary 0x31, 'NGUYÊN TÔN', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://tranhdecors.com/wp-content/uploads/edd/2023/09/Anh-nen-Anime-tieu-tho-anh-dao-1200x900.jpg', '/truyen-tranh/11', 'nguyen-ton', 1717557832807),
	(12, 'ANGEL X DARKNESS', _binary 0x31, 'ANGEL X DARKNESS', _binary 0x30, _binary 0x31, 211, _binary 0x31, 'https://i.pinimg.com/236x/78/67/5e/78675ee583c98b2b8efd990f85cc657a.jpg', '/truyen-tranh/12', 'angle-x-darkness', 1717557832807),
	(13, 'Chú Ơi Đừng Chạy!!!', _binary 0x31, 'Chú Ơi Đừng Chạy!!!', _binary 0x30, _binary 0x31, 211, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/13', 'chu-oi-dung-chay', 1717557832807),
	(14, 'Già thiên', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, 200, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/1', 'gia-thien', 1717557832807),
	(15, 'Tối cường thần thoại đế hoàng', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/2', 'toi-cuong-than-thoai-de-hoang', 1717557832807),
	(16, 'Cung quỷ kiếm thần', _binary 0x31, 'Nguỵ Tấn', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/3', 'cung-quy-kiem-than', 1717557832807),
	(17, 'ANH TRAI TÔI ĐẾN TỪ NÚI SÂU', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/4', 'anh-trai-toi-den-tu-nui-sau', 1717557832807),
	(18, 'NÓNG LÒNG MUỐN GIÀY VÒ EM', _binary 0x31, 'GIÀY VÒ EM', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/5', 'nong-long-muon-giay-vo-em', 1717557832807),
	(19, 'Ngày nào đó trở thành công chúa tế phẩm', _binary 0x31, 'CÔNG CHÚA', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/6', 'ngay-nao-do-tro-thanh-cong-chua-te-pham', 1717557832807),
	(20, 'Tham Hoan', _binary 0x31, 'Tham hoan', _binary 0x30, _binary 0x31, 190, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/7', 'tham-hoan', 1717557832807),
	(21, 'Trấn Hồn', _binary 0x31, 'Trấn hồn', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://taoanhdep.com/wp-content/uploads/2023/11/hinhnen-jk.jpg', '/truyen-tranh/8', 'tran-hon', 1717557832807),
	(22, 'Bàn long', _binary 0x31, 'Bàn Long', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/9', 'ban-long', 1717557832807),
	(23, 'Bởi Vì Tôi Là Ông Chú Điều Hành Một Cửa Hàng Vũ Khí', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/10', 'boi-vi', 1717557832807),
	(24, 'NGUYÊN TÔN', _binary 0x31, 'NGUYÊN TÔN', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/11', 'nguyen-ton', 1717557832807),
	(25, 'ANGEL X DARKNESS', _binary 0x31, 'ANGEL X DARKNESS', _binary 0x30, _binary 0x31, 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/12', 'angle-x-darkness', 1717557832807),
	(26, 'Chú Ơi Đừng Chạy!!!', _binary 0x31, 'Chú Ơi Đừng Chạy!!!', _binary 0x30, _binary 0x31, 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/13', 'chu-oi-dung-chay', 1717557832807),
	(27, 'Già thiên', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, 200, _binary 0x31, 'https://kynguyenlamdep.com/wp-content/uploads/2022/08/anh-anime-nu-va-hoa-anh-dao.jpg', '/truyen-tranh/1', 'gia-thien', 1717557832807),
	(28, 'Tối cường thần thoại đế hoàng', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/2', 'toi-cuong-than-thoai-de-hoang', 1717557832807),
	(29, 'Cung quỷ kiếm thần', _binary 0x31, 'Nguỵ Tấn', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/3', 'cung-quy-kiem-than', 1717557832807),
	(30, 'ANH TRAI TÔI ĐẾN TỪ NÚI SÂU', _binary 0x31, 'Già thiên', _binary 0x30, _binary 0x32, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/4', 'anh-trai-toi-den-tu-nui-sau', 1717557832807),
	(31, 'NÓNG LÒNG MUỐN GIÀY VÒ EM', _binary 0x31, 'GIÀY VÒ EM', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/5', 'nong-long-muon-giay-vo-em', 1717557832807),
	(32, 'Ngày nào đó trở thành công chúa tế phẩm', _binary 0x31, 'CÔNG CHÚA', _binary 0x30, _binary 0x32, 300, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/6', 'ngay-nao-do-tro-thanh-cong-chua-te-pham', 1717557832807),
	(33, 'Tham Hoan', _binary 0x31, 'Tham hoan', _binary 0x30, _binary 0x31, 190, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/7', 'tham-hoan', 1717557832807),
	(34, 'Trấn Hồn', _binary 0x31, 'Trấn hồn', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/8', 'tran-hon', 1717557832807),
	(35, 'Bàn long', _binary 0x31, 'Bàn Long', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/9', 'ban-long', 1717557832807),
	(36, 'Bởi Vì Tôi Là Ông Chú Điều Hành Một Cửa Hàng Vũ Khí', _binary 0x31, 'Tần quân', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/10', 'boi-vi', 1717557832807),
	(37, 'NGUYÊN TÔN', _binary 0x31, 'NGUYÊN TÔN', _binary 0x30, _binary 0x31, 200, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/11', 'nguyen-ton', 1717557832807),
	(38, 'ANGEL X DARKNESS', _binary 0x31, 'ANGEL X DARKNESS', _binary 0x30, _binary 0x31, 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/12', 'angle-x-darkness', 1717557832807),
	(39, 'Chú Ơi Đừng Chạy!!!', _binary 0x31, 'Chú Ơi Đừng Chạy!!!', _binary 0x30, _binary 0x31, 211, _binary 0x31, 'https://i.ibb.co/R62LJvF/788b23f12042806b9c55825696d5fb13.jpg;https://i.ibb.co/f2NyJrj/chi-ton-tu-la.jpg', '/truyen-tranh/13', 'chu-oi-dung-chay', 1717557832807);

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
  `VIEWS` bigint NOT NULL DEFAULT '0' COMMENT 'Lượt xem chương',
  `FLAG_STATUS` binary(1) NOT NULL DEFAULT '1' COMMENT 'Trạng thái hoạt động của chương. 1 - Active   0 - Inactive',
  `SCOPE` binary(1) NOT NULL DEFAULT '1' COMMENT 'Phạm vi đọc của chương. 1 - Public   2 - Private (Mở khóa thì mới đọc được)',
  `CHAPTER_NAME` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` bigint DEFAULT NULL,
  PRIMARY KEY (`CHAPTER_NUMBER`,`STORY_ID`,`FLAG_STATUS`),
  KEY `FK_STORIES_CHAPTERS` (`STORY_ID`),
  CONSTRAINT `FK_STORIES_CHAPTERS` FOREIGN KEY (`STORY_ID`) REFERENCES `stories` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Các chapters của truyện';

-- Dumping data for table gm_stories.stories_chapters: ~31 rows (approximately)
DELETE FROM `stories_chapters`;
INSERT INTO `stories_chapters` (`CHAPTER_NUMBER`, `STORY_ID`, `PICTURE`, `CONTENT`, `VIEWS`, `FLAG_STATUS`, `SCOPE`, `CHAPTER_NAME`, `update_date`) VALUES
	(1, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 275, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(1, 2, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 246, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(1, 3, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 236, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(1, 4, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 806, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(1, 5, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 357, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(1, 6, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 228, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(1, 7, 'https://nettruyenviet.com/truyen-tranh/tham-hoan/chuong-1', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 38, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(2, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 250, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(3, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 208, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(4, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 2232, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(5, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 232, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(6, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 226, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(7, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 2225, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(8, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 224, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(9, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '[\'https://static.doctruyenonline.vn/img-banner-chapter/banner-chapter.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-0.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-1.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-2.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-3.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-4.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-5.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-6.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-7.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-8.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-9.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-10.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-11.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-12.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-13.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-14.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-15.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-16.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-17.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-18.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-19.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-20.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-21.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-22.jpg\', \'https://static.doctruyenonline.vn/img-chapter/toi-cuong-than-thoai-de-hoang/chapter-1/toi-cuong-than-thoai-de-hoang-23.jpg\']', 225, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(10, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 2226, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(11, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 227, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(12, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 230, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(13, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 2232, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(14, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 229, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(15, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 226, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(16, 1, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 222, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(17, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 222, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(18, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 777, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(19, 1, 'https://nettruyenco.vn/truyen-tranh/toi-cuong-than-thoai-de-hoang/chuong-1/648857', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 333, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(20, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 222, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(21, 1, 'https://nettruyenviet.com/truyen-tranh/tham-hoan/chuong-1', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 34, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(22, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.pinimg.com/736x/37/b7/52/37b7528dc83d8955861852543f43712d.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/736x/86/55/ac/8655ac34915021ab2b11547e5e8f52ef--comic-book-manga.jpg","https://i.pinimg.com/originals/97/ed/56/97ed564e72bcdc5a808fc5205926fb36.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 233, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(23, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-1/56459', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 200, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(24, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 2222, _binary 0x31, _binary 0x31, NULL, 1717557832807),
	(25, 1, 'https://www.nettruyenus.com/truyen-tranh/gia-thien/chap-2/56460', '["https://bloganchoi.com/wp-content/uploads/2021/03/dieu-nho-xiu-xiu.jpg","https://i.ibb.co/R2LJMGL/the-gioi-hoan-my.jpg","https://i.pinimg.com/originals/26/90/ce/2690ce31b49f3813ca167d2c76da1eef.jpg","https://i.pinimg.com/originals/e1/66/16/e16616e26de21e8ca56da9ee531ef8e0.jpg",https://i.imgur.com/TtTcXtt.jpg","https://i.pinimg.com/736x/01/bc/32/01bc3264e1db312193e7f113592f3d00.jpg"]', 222, _binary 0x31, _binary 0x31, NULL, 1717557832807);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
