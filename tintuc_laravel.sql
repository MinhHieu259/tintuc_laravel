-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 01, 2022 lúc 04:36 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_23_030321_create_tbl_admin', 1),
(6, '2021_12_23_081245_create_table_category', 1),
(7, '2021_12_23_081320_create_table_news', 1),
(8, '2021_12_25_160055_insert_feature_new', 2),
(9, '2021_12_26_025557_create_tbl_document', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `username`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123', 'Nguyễn Minh Hiếu', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `name_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id_category`, `name_category`, `image_category`, `createdby`, `created_at`, `updated_at`) VALUES
(1, 'TIN TỨC - SỰ KIỆN', 'uploads/7SCDy5dTHoMRrvM9sfE9LcxvtSIkWqi1ZI9rXQPA.jpg', 1, '2021-12-24 08:27:24', '2021-12-24 08:27:24'),
(2, 'HOẠT ĐỘNG ĐOÀN - HỘI', 'uploads/8qrNxXgp9xGY1Loa2za5ElUsbP0eVqXXXzwPc7Mb.jpg', 1, '2021-12-24 08:27:44', '2021-12-24 08:27:44'),
(3, 'HỌC TẬP VÀ LÀM THEO LỜI BÁC', 'uploads/CiiHvSog724dsVjOUkJx3PRBpPABUJh9FWJ0HrBX.jpg', 1, '2021-12-24 08:27:59', '2021-12-24 08:27:59'),
(4, 'TUYÊN TRUYỀN', 'uploads/KABU4MaxBjtuGCw9GbhHhj3KrwrehqYey4ofXBKT.jpg', 1, '2021-12-24 08:28:25', '2021-12-24 08:28:25'),
(5, 'TUYỂN SINH - ĐÀO TẠO', 'uploads/2NLSQqrJCXufvNkwelHCzED24xGx5YtyRFkAGUwf.png', 1, '2021-12-24 08:28:40', '2021-12-24 08:28:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_document`
--

CREATE TABLE `tbl_document` (
  `id_document` bigint(20) UNSIGNED NOT NULL,
  `name_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_document`
--

INSERT INTO `tbl_document` (`id_document`, `name_document`, `file`, `admin_id`, `created_at`, `updated_at`) VALUES
(3, 'Về việc xét tặng kỷ niệm chương “Vì thế hệ trẻ”', '1640709305.docx', 1, '2021-12-28 09:35:05', '2021-12-28 09:35:05'),
(4, 'Thực hiện đợt thi đua đặc biệt “Tuổi trẻ Khối cơ quan, doanh nghiệp tỉnh đoàn kết, chung sức, đồng lòng thi đua phòng, chống và chiến thắng đại dịch Covid-19”', '1640709379.docx', 1, '2021-12-28 09:36:19', '2021-12-28 09:36:19'),
(5, 'Về việc triển khai Chiến dịch Vùng xanh hy vọng', '1640709472.docx', 1, '2021-12-28 09:37:52', '2021-12-28 09:37:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id_news` bigint(20) UNSIGNED NOT NULL,
  `title_new` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_new` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`id_news`, `title_new`, `image_new`, `short_desc`, `content`, `status`, `id_category`, `createdby`, `created_at`, `updated_at`, `featured`) VALUES
(1, 'Trao 300 suất quà cho người dân thôn Thạnh Hội bị thiệt hại nặng nề do lũ lụt vừa gây ra', 'uploads/6AkUPdR8RImDUJdRcHuSuZdDabWd3RardIM7wdbQ.jpg', 'Sáng nay ngày 03/12/2021, Tỉnh Đoàn Phú Yên phối hợp Báo Tuổi trẻ (TP. Hồ Chí Minh) cùng lãnh đạo Huyện ủy Sơn Hòa tổ chức thăm hỏi, trao quà cho người dân bị thiệt hại nặng nề do lũ lụt vừa gây ra ở thôn Thạnh Hội, xã Sơn Hà, huyện Sơn Hòa, tỉnh Phú Yên.', 'Sáng nay ngày 03/12/2021, Tỉnh Đoàn Phú Yên phối hợp Báo Tuổi trẻ (TP. Hồ Chí Minh) cùng lãnh đạo Huyện ủy Sơn Hòa tổ chức thăm hỏi, trao quà cho người dân bị thiệt hại nặng nề do lũ lụt vừa gây ra ở thôn Thạnh Hội, xã Sơn Hà, huyện Sơn Hòa, tỉnh Phú Yên.\r\nTheo đó, đoàn đã đến thăm hỏi, động viên và trao 300 suất quà cho người dân bị thiệt hại nặng nề do lũ lụt vừa gây ra ở thôn Thạnh Hội, xã Sơn Hà, huyện Sơn Hòa. Mỗi suất quà trị giá là 500 nghìn đồng (gồm gạo, dầu ăn, nhu yếu phẩm và tiền mặt 300 nghìn đồng) do bạn đọc Báo Tuổi trẻ hỗ trợ.\r\nĐược biết trận lũ lụt lớn bất ngờ vừa xảy ra đã gây thiệt hại rất lớn cho nhiều địa phương trên địa bàn tỉnh Phú Yên, trong đó thôn Thạnh Hội, xã Sơn Hà, huyện Sơn Hòa cũng là nơi bị thiệt hại nặng nề do lũ lụt gây ra. \r\nHy vọng với những suất quà trên đã phần nào kịp thời động viên tinh thần người dân nơi đây nỗ lực khắc phục hậu quả lũ lụt gây ra, sớm ổn định cuộc sống.', 1, 2, 1, '2021-12-24 08:30:03', '2021-12-28 09:45:24', 1),
(2, 'Tập huấn kiến thức và kỹ năng khởi nghiệp gắn với Chương trình “Mỗi xã một sản phẩm” cho đoàn viên, thanh niên', 'uploads/61HMjQHdqw8juDstGs5Fljpj345OtZtaWrmmJuqz.jpg', 'Sáng ngày 28/11/2021, Tỉnh Đoàn, Hội LHTN Việt Nam tỉnh tổ chức Chương trình tập huấn kiến thức và kỹ năng khởi nghiệp gắn với Chương trình “Mỗi xã một sản phẩm” cho đoàn viên, thanh niên năm 2021, bằng hình thức trực tuyến.', 'Sáng ngày 28/11/2021, Tỉnh Đoàn, Hội LHTN Việt Nam tỉnh tổ chức Chương trình tập huấn kiến thức và kỹ năng khởi nghiệp gắn với Chương trình “Mỗi xã một sản phẩm” cho đoàn viên, thanh niên năm 2021, bằng hình thức trực tuyến.\r\nTại chương trình, 250 học viên là hội viên, đoàn viên, thanh niên trên địa bàn tỉnh Phú Yên đã được Tiến sĩ Ngô Thị Thu Trang, Phó Giám đốc Trung tâm Phát triển Nông thôn - Saemaul Undong, trường Đại học Khoa học, Xã hội và Nhân văn, Đại học Quốc gia thành phố Hồ Chí Minh và Thạc sĩ Mai Thanh Nghị, Giám đốc Trung tâm Hỗ trợ Doanh Nghiệp và Khởi nghiệp tỉnh Đồng Tháp truyền đạt 02 chuyên đề về kiến thức khởi nghiệp gắn với chương trình “Mỗi xã một sản phẩm” và Hành trình khởi nghiệp và đổi mới sáng tạo.\r\nChương trình nhằm nâng cao trình độ nhận thức về vai trò và mục tiêu của chương trình “Mỗi xã một sản phẩm” cho đoàn viên, thanh niên trên địa bàn tỉnh, qua đó xác định được vai trò mục tiêu của chương trình “Mỗi xã một sản phẩm” gắn phát triển sản xuất hàng hóa, phục vụ chương trình mục tiêu quốc gia xây dựng nông thôn mới và nghiên cứu lựa chọn sản phẩm chủ lực của thanh niên để tham gia chương trình OCOP, tạo ra các sản phẩm có sức cạnh tranh, thúc đẩy sản xuất hàng hóa phát triển, tham gia cơ cấu lại ngành nông nghiệp, xây dựng nông thôn mới.', 1, 2, 1, '2021-12-24 08:31:14', '2021-12-28 09:45:49', 0),
(3, 'Xuất bản sách về một số mô hình phòng, chống dịch COVID-19 của Đoàn Thanh niên', 'uploads/gQPbhdhhVBABMpa3ZIwe7lPuPoOrdzdMrjBtPQX4.png', 'Cuốn sách cung cấp một số kiến thức tổng quan, cần thiết về dịch bệnh COVID-19 và cách phòng, chống tại gia đình, cơ quan, nơi công cộng; danh sách các đơn vị cung cấp vật tư y tế, hàng thiết yếu, nông sản.', 'Nhằm góp phần thiết thực vào công cuộc phòng, chống dịch bệnh của Đảng và Nhà nước Việt Nam, khích lệ tinh thần của tuổi trẻ, và để bạn đọc có thể hiểu rõ hơn về nhưng mô hình hay, cách làm sáng tạo của thanh niên trong phòng, chống dịch bệnh COVID-19, Nhà xuất bản Chính trị quốc gia Sự Thật phối hợp với T.Ư Đoàn TNCS Hồ Chí Minh biên soạn và xuất bản cuốn sách Một số mô hình hiệu quả của Đoàn Thanh niên trong phòng, chống dịch COVID-19\r\nCuốn sách gồm bốn phần: Các hoạt động tiên phong chống dịch; Các hoạt động tương trợ trong phòng, chống dịch bệnh COVID-19; Các hoạt động thích ứng; Nhật ký “San sẻ yêu thương - Chung tay vượt qua đại dịch COVID-19”.\r\nNội dung các mô hình được trình bày trong ba phần chính của cuốn sách, tương ứng với thông điệp “3T” của Ban Bí thư T.Ư Đoàn: Tiên phong, Tương trợ, Thích ứng, cụ thể:\r\nTiên phong: Tuyên truyền, vận động đoàn viên, thanh niên tiên phong, sẵn sàng tham gia các hoạt động tình nguyện phòng chống dịch; hỗ trợ hậu cần phòng chống dịch; khắc phục hậu quả của dịch bệnh.\r\nTương trợ: Tham gia tương trợ, ủng hộ công tác phòng, chống dịch; hỗ trợ đoàn viên, thanh thiếu nhi có hoàn cảnh khó khăn do ảnh hưởng của dịch bệnh.\r\nThích ứng: Tổ chức các hoạt động hỗ trợ để đoàn viên, thanh thiếu nhi thích ứng với những chuyển đổi trong phương thức học tập, rèn luyện, tham gia các hoạt động phong trào trong điều kiện “bình thường mới”.\r\nĐồng thời, phần thứ tư của cuốn sách giới thiệu đến bạn đọc Nhật ký San sẻ yêu thương - Chung tay vượt qua đại dịch COVID-19 do Trung tâm Công tác xã hội Thanh thiếu niên - một đơn vị trực thuộc T.Ư Hội LHTN Việt Nam, thực hiện.\r\nNgoài ra, phần phụ lục cuốn sách còn cung cấp một số kiến thức tổng quan, cần thiết về dịch bệnh COVID-19 và cách phòng, chống tại gia đình, cơ quan, nơi công cộng; danh sách các đơn vị cung cấp vật tư y tế, hàng thiết yếu, nông sản,...', 1, 1, 1, '2021-12-24 08:32:15', '2021-12-28 09:44:28', 0),
(4, 'Cùng Tuổi Trẻ vượt COVID đến giảng đường', 'uploads/wZCGA6Sqts0Xtu6ZWu2QOSUQ30A1gnSrBfgaCOa6.jpg', 'Báo Tuổi Trẻ phát động chương trình \"Tiếp sức đến trường\" năm 2021 với thông điệp: \"Cùng Tuổi Trẻ vượt COVID đến giảng đường\".', 'Dự kiến năm nay chương trình học bổng \"Tiếp sức đến trường\" sẽ hỗ trợ 1.000 suất học bổng cho các tân sinh viên trên 63 tỉnh thành khắp cả nước. Hoạt động thuộc chương trình \"Vì ngày mai phát triển\" do báo Tuổi Trẻ sáng kiến và chủ trì.\r\nĐiều kiện đăng ký xét duyệt học bổng:\r\n1. Hoàn cảnh gia đình đặc biệt khó khăn (có giấy chứng nhận hộ nghèo, cận nghèo hoặc xác nhận của địa phương, nhà trường), có nguy cơ bỏ học nếu không được giúp đỡ.\r\n2.  Trúng tuyển vào đại học hoặc cao đẳng năm học 2021 - 2022 (có giấy xác nhận hoàn tất nhập học của trường).\r\n3. Có thư trình bày rõ hoàn cảnh gia đình và khát vọng, hướng phấn đấu trong học tập và nghề nghiệp tương lai...\r\nCách đăng ký: Truy cập trang đăng ký https://tiepsuc.tuoitre.vn.\r\nChọn nút Tân sinh viên (nếu là tân sinh viên) và hoàn thành 4 nội dung về thông tin cá nhân, thông tin gia đình, nỗ lực và định hướng tương lai, đáp đền tiếp nối.\r\nChọn nút Người giới thiệu (không phải là tân sinh viên) và hoàn thành 3 nội dung về thông tin người giới thiệu, thông tin người được giới thiệu, thông tin khác.\r\nLưu ý chuẩn bị bản chụp mặt trước và sau chứng minh nhân dân hoặc căn cước công dân; giấy trúng tuyển đại học, cao đẳng hoặc giấy xác nhận nhập học; giấy chứng nhận hộ nghèo, cận nghèo hoặc xác nhận hoàn cảnh đặc biệt khó khăn của địa phương, nhà trường...\r\nPhải nhập đầy đủ thông tin các mục có đánh dấu * (bắt buộc). Kiểm tra lại thông tin từng mục trước khi bấm nút gửi hồ sơ. Hồ sơ được xác nhận đã gửi đi sẽ nhận được thông tin phản hồi của chương trình qua email.', 1, 1, 1, '2021-12-24 08:33:20', '2021-12-28 09:46:25', 1),
(5, 'Văn hóa phải soi đường cho quốc dân đi', 'uploads/MTtTS8ldeJACzgD8wKNTBKg2FrzR85VOOF9rJlu5.jpg', 'Văn hóa hiểu một cách chung nhất chính là sự hiểu biết, tài năng, trí tuệ, đạo đức, lối sống, tâm hồn, v.v.. của con người và của mỗi cộng đồng quốc gia, dân tộc trong mối quan hệ với xã hội và tự nhiên. Vì văn hóa là sức mạnh nội sinh, là nền tảng tinh thần của xã hội; vừa là mục tiêu vừa là động lực thúc đẩy sự phát triển kinh tế - xã hội, nên trong tư tưởng Hồ Chí Minh, “văn hóa phải soi đường cho quốc dân đi”/soi đường cho sự phát triển, tiến bộ của xã hội, của mỗi quốc gia/dân tộc trong hành trình xây dựng và phát triển.', 'Văn hóa hiểu một cách chung nhất chính là sự hiểu biết, tài năng, trí tuệ, đạo đức, lối sống, tâm hồn, v.v.. của con người và của mỗi cộng đồng quốc gia, dân tộc trong mối quan hệ với xã hội và tự nhiên. Vì văn hóa là sức mạnh nội sinh, là nền tảng tinh thần của xã hội; vừa là mục tiêu vừa là động lực thúc đẩy sự phát triển kinh tế - xã hội, nên trong tư tưởng Hồ Chí Minh, “văn hóa phải soi đường cho quốc dân đi”/soi đường cho sự phát triển, tiến bộ của xã hội, của mỗi quốc gia/dân tộc trong hành trình xây dựng và phát triển.\r\n\"VĂN HÓA LÀ MỘT THƯỢNG TẦNG KIẾN TRÚC\"\r\nNăm 1988, khi bàn về văn hóa, Tổng Giám đốc Tổ chức UNESCO Federico Mayor khẳng định rằng: “Văn hóa là tổng thể sống động các hoạt động sáng tạo (của các cá nhân và các cộng đồng) trong quá khứ cũng như trong hiện tại. Qua các thế kỷ, hoạt động sáng tạo ấy đã hình thành nên hệ thống các giá trị, các truyền thống và các thị hiếu - những yếu tố xác định đặc tính riêng của mỗi dân tộc”(1).\r\nNgược dòng lịch sử, trước đó 45 năm - năm 1943, trong phần cuối của bản thảo cuốn Nhật ký trong tù, Chủ tịch Hồ Chí Minh đã viết: “Vì lẽ sinh tồn cũng như mục đích của cuộc sống, loài người mới sáng tạo và phát minh ra ngôn ngữ, chữ viết, đạo đức, pháp luật, khoa học, tôn giáo, văn học, nghệ thuật, những công cụ cho sinh hoạt hằng ngày về mặc, ăn, ở và các phương thức sử dụng. Toàn bộ những sáng tạo và phát minh đó tức là văn hoá”(2). Với nhận định này, có thể thấy trong quan niệm của Người, văn hóa chính là toàn bộ những sáng tạo vật chất và sáng tạo tinh thần của con người nên \"văn hóa là một kiến trúc thượng tầng\"(3); văn hóa là sự sáng tạo của ngôn ngữ, đạo đức, lối sống, giáo dục, khoa học, pháp luật, tôn giáo, văn học, nghệ thuật... Vì thế, về bản chất, dù ở nghĩa rộng hay nghĩa hẹp, thì văn hóa chính là sự sáng tạo, phát minh của con người vì mục đích sinh tồn và phát triển. Văn hóa là cơ sở tạo nên đời sống xã hội, là đặc trưng của xã hội loài người; trong đó, con người vừa là chủ thể của văn hóa vừa là sản phẩm của văn hóa..\r\nTừ 2 quan niệm nêu trên, có thể thấy cả Chủ tịch Hồ Chí Minh và Tổ chức UNESCO đều khẳng định vai trò của văn hóa đối với sự phát triển của tiến trình lịch sử loài người nói chung và sự phát triển kinh tế - xã hội nói riêng; đều cho rằng văn hóa là một hệ thống những giá trị vật chất và tinh thần do con người sáng tạo, tích lũy thông qua hoạt động thực tiễn. Với ý nghĩa đó, văn hóa chính là linh hồn của một xã hội, là sức mạnh trường tồn của một quốc gia/dân tộc, đồng thời cũng chính là sức sống vươn lên của thời đại. Mỗi quốc gia/dân tộc muốn phát triển ổn định và bền vững tất yếu phải xây dựng, phát triển văn hóa và con người gắn liền với phát triển kinh tế và ổn định chính trị xã hội; phải đặt văn hóa trong mối quan hệ chặt chẽ với chính trị, kinh tế, xã hội.\r\nĐồng thời, coi trọng vai trò của nền văn hóa dân tộc trong tiến trình phát triển của đất nước, cũng trong phần cuối của bản thảo cuốn Nhật ký trong tù, Chủ tịch Hồ Chí Minh nêu rõ: “Năm điểm lớn xây dựng nền văn hóa dân tộc. 1. Xây dựng tâm lý: tinh thần độc lập tự cường. 2. Xây dựng luân lý: biết hy sinh mình, làm lợi cho quần chúng. 3. Xây dựng xã hội: mọi sự nghiệp có liên quan đến phúc lợi của nhân dân trong xã hội. 4. Xây dựng chính trị: dân quyền. 5. Xây dựng kinh tế”(4). Có thể thấy, \"Năm điểm lớn\" này thể hiện rõ tư tưởng Hồ Chí Minh về xây dựng nền văn hóa dân tộc Việt Nam, bao gồm tất cả các mặt: tâm lý con người, đạo đức, xã hội, chính trị, kinh tế; chú trọng xây dựng con người Việt Nam với hệ giá trị: có tinh thần độc lập, ý thức tự cường, có đạo đức, biết hy sinh mình vì mọi người. Trong nền văn hóa đó, mọi giá trị và hoạt động đều hướng đến lợi ích của nhân dân; mọi người dân đều được thụ hưởng các quyền chính đáng của con người và mục tiêu làm “lợi cho quần chúng”, “phúc lợi của nhân dân trong xã hội” chính là ý nghĩa và giá trị nhân văn mà nền văn hóa dân tộc mang lại. \"Năm điểm lớn\" này thể hiện rõ mối quan hệ biện chứng trong xây dựng nền văn hóa của dân tộc; trong đó, con người vừa là chủ thể của xã hội, nhưng cũng vừa là sản phẩm của xã hội và xã hội vừa được xây dựng bởi con người, song cũng vừa là nền tảng để xây dựng con người. Cho nên, chỉ con người có văn hóa mới có thể xây dựng một xã hội có văn hóa và chỉ một xã hội có văn hóa mới tạo được điều kiện để con người văn hóa ra đời, phát triển.\r\nĐảm nhận sứ mệnh lịch sử lãnh đạo nhân dân tiến hành sự nghiệp đấu tranh giải phóng dân tộc, xây dựng và bảo vệ Tổ quốc, cũng trong năm 1943, Đề cương về văn hoá Việt Nam của Đảng Cộng sản Đông Dương (Đảng Cộng sản Việt Nam) ra đời đã không chỉ đánh giá đúng vị trí, vai trò của văn hóa đối với sự phát triển của dân tộc mà còn khẳng định: \"Quan hệ giữa văn hóa và kinh tế, chính trị: Nền tảng kinh tế của một xã hội và chế độ kinh tế dựng trên nền tảng ấy quyết định toàn bộ văn hóa của xã hội kia”(5) và “a) Mặt trận văn hoá là một trong ba mặt trận (kinh tế, chính trị, văn hoá) ở đó người cộng sản phải hoạt động. b) Không phải chỉ làm cách mạng chính trị mà còn phải làm cách mạng văn hoá nữa”(6). Đồng thời, Đề cương cũng nêu 3 nguyên tắc vận động xây dựng nền văn hóa Việt Nam, thể hiện tính khoa học và tính cách mạng sâu sắc - đó là: \"a) Dân tộc hóa (chống mọi ảnh hưởng nô dịch và thuộc địa khiến cho vǎn hóa Việt Nam phát triển độc lập); b) Đại chúng hóa (chống mọi chủ trương hành động làm cho vǎn hóa phản lại đông đảo quần chúng hoặc xa đông đảo quần chúng); c) Khoa học hóa (chống lại tất cả những cái gì làm cho vǎn hóa trái khoa học, phản tiến bộ)\"(7).\r\nTheo dòng lịch sử, nền văn hóa Việt Nam được hun đúc suốt chiều dài dựng nước và giữ nước đã không chỉ nuôi dưỡng, đắp bồi tinh thần đoàn kết dân tộc, lòng vị tha, cởi mở, tinh thần khoan dung tôn giáo, chủ nghĩa yêu nước Việt Nam, khát vọng độc lập, tự do, tự cường của nhân dân Việt Nam… mà còn khơi dậy và phát huy, nhân nguồn sức mạnh đó trong hành trình đấu tranh cho độc lập, tự do, hạnh phúc của dân tộc hơn 90 năm qua dưới sự lãnh đạo của Đảng. Những giá trị văn hóa tinh thần quý giá của dân tộc, của con người Việt Nam - nguồn sức mạnh nội sinh của dân tộc đã góp phần làm nên thắng lợi của cuộc cách mạng giải phóng dân tộc mùa Thu năm 1945, sáng lập Nhà nước Việt Nam Dân chủ Cộng hòa - mở đầu một kỷ nguyên mới cho đất nước Việt Nam, nhân dân Việt Nam trên hành trình xây dựng và phát triển.\r\nNgay sau khi nước nhà giành được độc lập, Chủ tịch Hồ Chí Minh và Đảng đã chú trọng xây dựng và phát triển nền văn hóa Việt Nam, con người Việt Nam mới đúng như V.I.Lênin đã chỉ rõ: \"Sau khi người ta đã hoàn thành cuộc cách mạng chính trị lớn nhất chưa từng thấy trên thế giới, thì những nhiệm vụ khác lại đặt ra cho chúng ta, những nhiệm vụ về văn hoá\" và \"nâng cao trình độ văn hoá là một trong những nhiệm vụ bức thiết nhất”(8) mà những người cộng sản phải làm sau khi đã giành được chính quyền. Vì thế, ngày 13/9/1945, chỉ 11 ngày sau khi đọc Tuyên ngôn độc lập, khai sinh nhà nước Việt Nam mới, trong buổi tiếp ông Nguyễn Tường Phượng (Tạp chí Tri Tân), Chủ tịch Hồ Chí Minh đã nhấn mạnh: “Có chính trị mới có văn hóa, xưa kia chính trị bị đàn áp, nền văn hóa của ta vì thế không nảy sinh được. Nay nước ta đã độc lập, tinh thần được giải phóng, cần phải có một nền văn hóa hòa hợp với khoa học và hợp cả với nguyện vọng của dân”(9). Tiếp đó, phát biểu trong buổi khai mạc phòng triển lãm văn hóa ngày 7/10/1945, Người cũng khẳng định: \"Trong công cuộc kiến thiết nước nhà có bốn vấn đề chú ý đến, cùng phải coi trọng ngang nhau: chính trị, kinh tế, văn hóa, xã hội”(10).\r\nĐặc biệt, thấu hiểu sâu sắc rằng, để một quốc gia, dân tộc nói chung, Việt Nam nói riêng phát triển bền vững sau hơn 80 năm trời nô lệ, thì văn hóa phải thật sự thấm sâu, gắn kết chặt chẽ với chính trị và kinh tế; để sự gắn kết này là điều kiện quan trọng để giữ/củng cố và xây dựng chính quyền trong sạch vững mạnh, thật sự là chính quyền của nhân dân, do nhân dân, vì nhân dân nhằm thực hiện mục tiêu cao cả là: \"dân quyền\", “lợi cho quần chúng”, “phúc lợi của nhân dân\", trong diễn văn khai mạc Hội nghị văn hóa toàn quốc ngày 24/11/1946, Chủ tịch Hồ Chí Minh khẳng định: “Số phận dân ta là ở trong tay dân ta. Văn hóa phải soi đường cho quốc dân đi”(11).', 1, 3, 1, '2021-12-24 08:34:35', '2021-12-28 09:46:57', 0),
(6, '76 mùa thu Độc lập: Tự hào sức mạnh Việt Nam', 'uploads/XpjF73wWNP92nFRe0QYUXwERMxmosCq0OtvgzGul.jpg', '\"Tuyên ngôn Bác đọc vang trời đất/Độc lập Người thề vọng núi sông”…76 năm đã qua nhưng những cảm xúc ngày Tết Độc lập trong nắng Ba Đình mùa thu năm ấy vẫn vẹn nguyên trong mỗi thế hệ người con đất Việt.', '\"Tuyên ngôn Bác đọc vang trời đất/Độc lập Người thề vọng núi sông”…76 năm đã qua nhưng những cảm xúc ngày Tết Độc lập trong nắng Ba Đình mùa thu năm ấy vẫn vẹn nguyên trong mỗi thế hệ người con đất Việt.\r\n \r\nNgày 02/9/1945, tại Quảng trường Ba Đình lịch sử, Chủ tịch Hồ Chí Minh đã đọc bản “Tuyên ngôn Độc lập” khai sinh ra nước Việt Nam Dân chủ Cộng hòa, nay là nước Cộng hòa Xã hội chủ nghĩa Việt Nam. Kể từ thời khắc đó, toàn thể dân tộc Việt Nam đã cảm nhận niềm hạnh phúc thiêng liêng khi đất nước bước sang trang sử mới.\r\nTuyên ngôn Độc lập bất hủ 02/9/1945 đã mở ra một kỷ nguyên mới, lần đầu tiên người dân Việt Nam có quyền ngẩng cao đầu, tự hào trở thành công dân của một nước tự do và độc lập. Bản Tuyên ngôn Độc lập ngắn gọn nhưng chứa đựng những nội dung bất hủ, không chỉ có giá trị lịch sử đối với dân tộc Việt Nam mà còn có ý nghĩa thời đại sâu sắc. Những tư tưởng của Chủ tịch Hồ Chí Minh trong bản Tuyên ngôn Độc lập ngày 02/9 đã trở thành sức mạnh to lớn của toàn dân tộc Việt Nam, đưa đất nước vượt qua nhiều khó khăn, thách thức, giữ vững độc lập chủ quyền, xây dựng và phát triển đất nước.\r\n76 năm đã trôi qua, thực hiện lời thề Độc lập đó, Đảng, Nhà nước và nhân dân ta đã đập tan mọi âm mưu chống phá của các thế lực thù địch, bảo vệ chính quyền cách mạng non trẻ, tiến hành 2 cuộc kháng chiến trường kỳ làm nên chiến thắng lừng lẫy năm châu, chấn động địa cầu và cuộc Tổng tiến công nổi dậy mùa xuân năm 1975 giải phóng miền Nam, thống nhất đất nước; tiếp đó là các cuộc chiến đấu bảo vệ biên giới Tây Nam và phía Bắc, làm tròn nghĩa vụ quốc tế cao cả.\r\nChúng ta càng thêm tự hào khi trải qua nhiều năm đổi mới, Đảng, Nhà nước và nhân dân ta đã giành được nhiều thành tựu to lớn, có ý nghĩa lịch sử. Từ một nước nghèo nàn, lạc hậu, Việt Nam đã vươn lên trở thành nước đang phát triển có thu nhập trung bình, đời sống nhân dân được cải thiện, chính trị xã hội ổn định, độc lập chủ quyền thống nhất, toàn vẹn lãnh thổ được giữ vững.\r\nCó thể khẳng định, 76 năm trôi qua, dù trong bất cứ hoàn cảnh nào, với tinh thần đoàn kết muôn người như một, đã giúp Việt Nam vượt qua mọi khó khăn, từng bước phát triển ổn định. Đặc biệt, sau hơn 35 năm tiến hành đổi mới, nước ta đã thoát khỏi tình trạng kém phát triển, trở thành nước đang phát triển có thu nhập trung bình. Tăng trưởng kinh tế bình quân đạt gần 7%/năm, quy mô và tiềm lực của nền kinh tế không ngừng tăng lên; tiến bộ, công bằng xã hội, phát triển văn hóa và công cuộc xây dựng nông thôn mới đạt được nhiều kết quả tích cực; Chỉ số phát triển con người của Việt Nam dần được cải thiện, mức sống của người dân từng bước được nâng lên...Cùng với đó, quan hệ đối ngoại, hội nhập quốc tế ngày càng sâu rộng, có hiệu quả. Vị thế, uy tín quốc tế của nước ta tiếp tục được nâng cao. Việt Nam đã thiết lập quan hệ ngoại giao với 185 quốc gia trên thế giới; gia nhập và tích cực xây dựng Cộng đồng kinh tế ASEAN; tham gia có hiệu quả các liên kết kinh tế khu vực và quốc tế trên nhiều cấp độ...\r\nChúng ta vui mừng và phấn khởi khi Kỳ họp thứ I Quốc hội khóa XV – kỳ họp của nhiệm kỳ mới vừa kết thúc và thành công tốt đẹp. Kỳ họp diễn ra trong bối cảnh dịch COVID-19 diễn biến phức tạp, bùng phát mạnh tại thành phố Hồ Chí Minh và các tỉnh phía Nam. Đây cũng là một kỳ họp đặc biệt, bởi ngay tại Kỳ họp này, Quốc hội đã bổ sung nội dung phòng chống COVID- 19 vào Nghị quyết của kỳ họp. Việc Quốc hội bổ sung ngay vào chương trình kỳ họp để xem xét, quyết định một số biện pháp cần thiết, chưa có tiền lệ nhằm đẩy mạnh công tác phòng, chống dịch là việc làm hết sức cần thiết và mang ý nghĩa chính trị, pháp lý cao; thể hiện trách nhiệm, tinh thần chủ động, đồng hành của Quốc hội với Chính phủ và cả hệ thống chính trị trong phòng chống dịch bệnh, bảo vệ sức khỏe của nhân dân.\r\nhcm org\r\nXúc động hình ảnh chiến sĩ bộ đội giúp dân lúc khó khăn tại tâm dịch TP Hồ Chí Minh. (Ảnh: hcmcpv.org.vn) \r\n76 năm Quốc khánh 2/9 năm nay diễn ra trong bối cảnh toàn Đảng, toàn dân, toàn quân đang chung sức, đồng lòng chống giặc COVID-19. Đây cũng là mùa thu thứ 2 đất nước ta phải đối mặt với làn sóng dịch COVID-19. Hơn bao giờ hết, bản lĩnh, trí tuệ và tâm hồn Việt Nam tiếp tục ngời sáng. Vượt qua muôn vàn khó khăn, ngay từ đầu Việt Nam đã chủ động, đánh giá đúng tình hình diễn biến phức tạp của dịch bệnh, không chủ quan, lơ là. Nhờ sự huy động kịp thời, sự vào cuộc quyết liệt của cả hệ thống chính trị, sự đồng lòng, chung sức của nhân dân, việc thực hiện phòng, chống dịch bệnh đã diễn ra ở quy mô chưa có tiền lệ. Đến nay, Việt Nam đã khống chế thành công cả 3 đợt dịch bùng phát trong cộng đồng, được quốc tế ghi nhận và đánh giá cao, là tấm gương trong phòng chống dịch COVID-19.\r\nVà khi đợt dịch lần thứ 4 bùng phát với biến chủng Delta có tốc độ lây lan nhanh, khó kiểm soát và vô cùng nguy hiểm lại một lần nữa thử thách chúng ta. Vượt qua mọi khó khăn, dưới sự lãnh đạo của Đảng, Chính phủ, Việt Nam tiếp tục chủ động ngăn chặn, đối phó với dịch bệnh bằng những quyết sách linh hoạt ở từng thời điểm khác nhau.', 1, 3, 1, '2021-12-24 08:35:36', '2021-12-28 09:47:29', 0),
(7, 'Kỷ niệm 110 năm Ngày sinh đồng chí Lê Đức Thọ (10/10/1911 - 10/10/2021)', 'uploads/aUE3v1tVm3svYPaWeRrgntLEXHGEkvKNsIRg3bBq.jpg', 'Đồng chí Lê Đức Thọ, tên chính là Phan Đình Khải sinh ngày 10/10/1911 tại xã Địch Lễ, huyện Mỹ Lộc, tỉnh Nam Định, nay là xã Nam Vân, thành phố Nam Định, tỉnh Nam Định.', 'THỌ\r\nĐồng chí Lê Đức Thọ, tên chính là Phan Đình Khải sinh ngày 10/10/1911 tại xã Địch Lễ, huyện Mỹ Lộc, tỉnh Nam Định, nay là xã Nam Vân, thành phố Nam Định, tỉnh Nam Định.\r\nĐồng chí hoạt động cách mạng từ năm 1926, tham gia phong trào bãi khóa và lễ truy điệu nhà chí sỹ yêu nước Phan Chu Trinh. Năm 1928, hoạt động trong Học sinh Hội, dưới sự lãnh đạo của Tỉnh Đảng bộ Hội Việt Nam Cách mạng Thanh niên Nam Định.\r\nTháng 10/1929, Đồng chí được kết nạp vào Đông Dương Cộng sản Đảng, làm Bí thư chi bộ học sinh và phụ trách công tác thanh niên học sinh. Tháng 11/1930, bị thực dân Pháp bắt, kết án 10 năm tù khổ sai, đày ra Côn Đảo, được cấp ủy chi bộ nhà tù Côn Đảo cử làm Bí thư chi bộ và Thường vụ chi ủy nhà tù.\r\nNăm 1936 - 1939, Đồng chí ra tù và được giao phụ trách công tác báo chí công khai của đảng bộ và xây dựng cơ sở bí mật của Đảng ở Nam Định.\r\nTừ năm 1939 - 1944, Đồng chí bị địch bắt và kết án tù 5 năm tại các nhà tù Hà Nội, Sơn La và Hòa Bình. Tháng 9/1944, ra tù được Trung ương Đảng giao phụ trách công tác khu an toàn của Trung ương, công tác tổ chức và huấn luyện cán bộ.\r\nTháng 10/1944, Đồng chí được chỉ định là ủy viên Trung ương Đảng và trực tiếp phụ trách Xứ ủy Bắc Kỳ; Đồng chí dự hội nghị mở rộng Ban Thường vụ Trung ương Đảng đêm 09/3/1945 để ra chủ trương mới phát động cao trào cách mạng đi tới cuộc Tổng khởi nghĩa.\r\nTháng 8/1945, tại Hội nghị cán bộ toàn quốc của Đảng ở Tân Trào, Đồng chí được cử vào Ban Thường vụ Trung ương Đảng. Sau Cách mạng Tháng Tám năm 1945, phụ trách công tác tổ chức của Đảng. Tháng 12/1946, dự Hội nghị Ban Thường vụ Trung ương Đảng quyết định toàn quốc kháng chiến.\r\nNăm 1948, thay mặt Trung ương Đảng tham gia Đoàn đại biểu Đảng và Chính phủ vào miền Nam công tác. Năm 1949, làm Phó Bí thư Xứ ủy Nam Bộ.\r\nNăm 1951, tại Đại hội lần thứ II của Đảng, Đồng chí được bầu vào Ban Chấp hành Trung ương, làm Phó Bí thư Trung ương Cục miền Nam. Từ năm 1949 - 1954, làm Trưởng ban Tổ chức Trung ương Cục miền Nam.\r\nNăm 1955, Đồng chí tập kết ra Bắc, làm Trưởng ban Thống nhất Trung ương. Cuối năm 1955 được bổ sung vào Bộ Chính trị phụ trách công tác sửa sai trong cuộc vận động cải cách ruộng đất và chỉnh đốn tổ chức.\r\nCuối năm 1956, Đồng chí làm Trưởng ban Tổ chức Trung ương; từ tháng 11/1956 đến năm 1961 kiêm Giám đốc Trường Nguyễn Ái Quốc Trung ương.\r\nNăm 1960, tại Đại hội lần thứ III của Đảng, đồng chí được bầu vào Ban Chấp hành Trung ương Đảng, Bộ Chính trị và Ban Bí thư, làm Trưởng ban Tổ chức Trung ương Đảng. Năm 1966, kiêm Hiệu trưởng Trường Nguyễn Ái Quốc  Trung ương. Năm 1967, được cử vào Quân ủy Trung ương.\r\nSau cuộc Tổng tiến công Tết Mậu Thân năm 1968, đồng chí được Bộ Chính trị cử vào miền Nam làm Phó Bí thư Trung ương Cục miền Nam. Đến tháng 5/1968, được Bộ Chính trị gọi ra miền Bắc, giao nhiệm vụ phụ trách công tác đấu tranh ngoại giao, làm cố vấn đặc biệt của Đoàn đại biểu Chính phủ Việt Nam Dân chủ Cộng hòa tại Hội nghị Paris bàn về lập lại hòa bình ở Việt Nam và trực tiếp đàm phán với đại diện của Chính phủ Mỹ trong các cuộc nói chuyện riêng giải quyết hòa bình về vấn đề Việt Nam. Sau Hiệp định Paris về Việt Nam (1973), đồng chí được cử làm Trưởng ban miền Nam của Trung ương.\r\nTrước thời cơ chiến lược vừa được mở ra, cuối tháng 3/1975, Đồng chí vào chiến trường trực tiếp cùng Trung ương Cục và Bộ Chỉ huy Quân giải phóng miền Nam lãnh đạo, chỉ huy Chiến dịch Hồ Chí Minh giành toàn thắng.', 1, 4, 1, '2021-12-24 08:37:24', '2021-12-28 09:48:05', 1),
(8, '“Sao cho được lòng dân”', 'uploads/LUdOTh2HGM5oZZpYc24ZhXQoSbtaJcFbIEvyBT91.jpg', 'Những kết quả đạt được trong quá trình cải cách hành chính và thủ tục hành chính thời gian qua là rất tích cực và quan trọng, góp phần nâng cao chỉ số hài lòng của người dân, thế nhưng vẫn có không ít đảng viên, cán bộ, công chức, viên chức chưa “được lòng dân” như Bác Hồ đã từng yêu cầu.', 'Những kết quả đạt được trong quá trình cải cách hành chính và thủ tục hành chính thời gian qua là rất tích cực và quan trọng, góp phần nâng cao chỉ số hài lòng của người dân, thế nhưng vẫn có không ít đảng viên, cán bộ, công chức, viên chức chưa “được lòng dân” như Bác Hồ đã từng yêu cầu.\r\nQUÁN TRIỆT SÂU SẮC QUAN ĐIỂM “DÂN LÀ GỐC” \r\n“Nước lấy dân làm gốc”, “Dựa vào dân đề xây dựng Đảng” là một trong những quan điểm nhất quán, xuyên suốt trong quá trình lãnh đạo, chỉ đạo, điều hành cách mạng của Đảng, Nhà nước ta. Đại hội XIII của Đảng tiếp tục nhấn mạnh: “Trong mọi công việc của Đảng và Nhà nước, phải luôn quán triệt sâu sắc quan điểm “dân là gốc”, thật sự tin tưởng, tôn trọng và phát huy quyền làm chủ của nhân dân, kiên trì thực hiện phương châm “dân biết, dân bàn, dân làm, dân kiểm tra, dân giám sát, dân thụ hưởng”. Nhân dân là trung tâm, là chủ thể của công cuộc đổi mới, xây dựng và bảo vệ Tổ quốc; mọi chủ trương, chính sách phải thực sự xuất phát từ cuộc sống, nguyện vọng, quyền và lợi ích chính đáng của nhân dân, lấy hạnh phúc, ấm no của nhân dân làm mục tiêu phấn đấu”(1).\r\nTrong quá trình xây dựng Nhà nước pháp quyền xã hội chủ nghĩa của nhân dân, do nhân dân, vì nhân dân, việc Chính phủ, các cơ quan nhà nước, các cấp chính quyền không ngừng cải cách thể chế, thủ tục hành chính, nâng cao chất lượng, thái độ phục vụ người dân và doanh nghiệp là một trong những tiêu chí, “thước đo” nhà nước phục vụ. Nghị quyết Đại hội XI của Đảng (tháng 1/2011) đã đề ra nhiệm vụ: “Đẩy mạnh cải cách hành chính, nhất là thủ tục hành chính; giảm mạnh và bãi bỏ các loại thủ tục hành chính gây phiền hà cho tổ chức và công dân. Nâng cao năng lực, chất lượng xây dựng và tổ chức thực hiện các cơ chế, chính sách. Đẩy mạnh xã hội hóa các dịch vụ công phù hợp với cơ chế kinh tế thị trường định hướng xã hội chủ nghĩa”(2). Thực hiện Nghị quyết của Đảng, ngày 8/11/2011, Chính phủ đã ban hành Nghị quyết số 30c/NQ-CP về Chương trình tổng thể cải cách hành chính nhà nước giai đoạn 2010-2020, khẳng định: Chính phủ, các bộ, ban, ngành cần tiếp tục đổi mới phương thức làm việc của cơ quan hành chính nhà nước; bảo đảm “Sự hài lòng của cá nhân đối với dịch vụ do đơn vị sự nghiệp công cung cấp trên các lĩnh vực giáo dục, y tế đạt mức trên 80% vào năm 2020; sự hài lòng của người dân và doanh nghiệp đối với sự phục vụ của các cơ quan hành chính nhà nước đạt mức trên 80% vào năm 2020”(3).', 1, 4, 1, '2021-12-24 08:38:33', '2021-12-28 09:48:35', 0),
(9, 'Thông báo tổ chức lớp bồi dưỡng Nghiệp vụ quản lý giáo dục, khóa khai giảng ngày 27/11/2021 - Hình thức học: Trực tuyến kết hợp trực tiếp', 'uploads/6q9noqpn0QnjaUaB67oZjJMc8G6DqZo4sxEFGg57.jpg', 'Nhằm đào tạo, bồi dưỡng và chuẩn hóa đội ngũ cán bộ quản lý, giáo viên, nhân viên ngành giáo dục, Trung tâm Giáo dục thường xuyên Phú Yên phối hợp với các trường Đại học có chức năng tổ chức lớp bồi dưỡng, cấp Chứng chỉ nghiệp vụ quản lý giáo dục,', 'Nhằm đào tạo, bồi dưỡng và chuẩn hóa đội ngũ cán bộ quản lý, giáo viên, nhân viên ngành giáo dục,\r\nTrung tâm Giáo dục thường xuyên Phú Yên phối hợp với các trường Đại học có chức năng tổ chức lớp bồi dưỡng, cấp Chứng chỉ nghiệp vụ quản lý giáo dục, khóa khai giảng ngày 27/11/2021, cụ thể như sau:\r\n1. Đối tượng bồi dưỡng: Cán bộ đang công tác tại các cơ quan quản lý giáo dục; cán bộ quản lý tại các trường Mầm Non, Tiểu học, THCS; cán bộ, giáo viên dự nguồn quy hoạch cho các chức danh quản lý.\r\n2. Thời gian và địa điểm bồi dưỡng\r\n- Thời gian: Khai giảng ngày 27/11/2021; (Học ngoài giờ hành chính các ngày từ thứ hai đến thứ sáu, cả ngày thứ Bảy và Chủ nhật hằng tuần);\r\n- Địa điểm: Trung tâm Giáo dục thường xuyên Phú Yên.\r\n3. Học phí: 2.800.000 đồng /học viên.\r\n4. Hồ sơ bồi dưỡng và hạn đăng ký\r\n- Hồ sơ gồm: 02 Đơn đăng ký (theo mẫu phát hành tại Trung tâm); 01 bản sao có chứng thực văn bằng chuyên môn cao nhất, 01 bản sao chứng minh nhân dân hoặc CCCD; 02 ảnh thẻ 3x4;\r\n- Hạn đăng ký: Học viên nộp hồ sơ và học phí tại Trung tâm GDTX Phú Yên từ ngày ra thông báo đến hết ngày 20/11/2021.\r\n5. Liên hệ: Phòng Đào tạo - Bồi dưỡng, Trung tâm Giáo dục thường xuyên Phú Yên; địa chỉ: 02 Nguyễn Huệ, Phường 2, TP.Tuy Hòa, tỉnh Phú Yên.\r\n- Điện thoại: 02573.829.437-0984.180086 (Cô Trà)-0906.556766 (Thầy Nguyên)\r\n- Email: boiduong@gdtxphuyen.edu.vn; Website: http://gdtxphuyen.edu.vn\r\n- Fanpage: https://www.facebook.com/boiduongtrungtamgdtxpy', 1, 5, 1, '2021-12-24 08:39:53', '2021-12-28 09:49:03', 0),
(10, 'Thông báo về việc tổ chức lớp bồi dưỡng chứng chỉ Kế toán trưởng khóa 02 năm 2021, khóa khai giảng ngày 12/11/2021', 'uploads/awm1F5FHC4zEtuCDQrx6GuYP24xzRvgTBpVDexDh.jpg', 'Nhằm tạo điều kiện cho những người làm công tác Kế toán ở các đơn vị có đủ tiêu chuẩn được bổ nhiệm chức danh Kế toán trưởng theo quy định tại Thông tư liên tịch số 163/2013/TTLT-BTC-BNV ngày 05/11/2013 của Bộ Tài chính và Bộ Nội vụ; Thông tư số 04/2018/TT-BNV ngày 27/03/2018 của Bộ Nội vụ,', 'Nhằm tạo điều kiện cho những người làm công tác Kế toán ở các đơn vị có đủ tiêu chuẩn được bổ nhiệm chức danh Kế toán trưởng theo quy định tại Thông tư liên tịch số 163/2013/TTLT-BTC-BNV ngày 05/11/2013 của Bộ Tài chính và Bộ Nội vụ; Thông tư số 04/2018/TT-BNV ngày 27/03/2018 của Bộ Nội vụ,\r\n         Trung tâm Giáo dục thường xuyên Phú Yên phối hợp với các đơn vị có chức năng tổ chức lớp bồi dưỡng, cấp Chứng chỉ Kế toán trưởng khóa 02 năm 2021, khóa khai giảng ngày 12/11/2021, cụ thể như sau:\r\n         1. Đối tượng học: Có trình độ chuyên môn, nghiệp vụ về tài chính, kế toán, kiểm toán từ bậc trung cấp trở lên và có thời gian công tác thực tế về tài chính, kế toán, kiểm toán như sau:\r\n        - Tối thiểu là 2 năm trở lên kể từ ngày ghi trên bằng tốt nghiệp đại học chuyên ngành Tài chính, Kế toán, Kiểm toán;\r\n       - Tối thiểu là 3 năm trở lên kể từ ngày ghi trên bằng tốt nghiệp Trung cấp hoặc Cao đẳng chuyên ngành Tài chính, Kế toán, Kiểm toán.\r\n      2. Thời gian và địa điểm bồi dưỡng\r\n      - Thời gian: Khai giảng: ngày 12/11/2021; (Hình thức học: Trực tuyến. Học ngoài giờ hành chính các ngày từ thứ hai đến thứ sáu, cả ngày thứ Bảy và Chủ nhật hằng tuần);\r\n     - Địa điểm: Trung tâm Giáo dục thường xuyên Phú Yên.\r\n    3. Học phí: 2.500.000 đồng /học viên.\r\n    4. Hồ sơ bồi dưỡng và hạn đăng ký\r\n    - Hồ sơ đăng ký gồm: Đơn đăng ký có xác nhận cơ quan công tác (theo mẫu phát hành tại Trung tâm);01 bản sao có chứng thực văn bằng chuyên môn;01 bản sao có chứng thực CMND hoặc CCCD;04 ảnh 3x4 (có ghi tên, ngày tháng năm sinh ở mặt sau).\r\n   - Hạn đăng ký:Học viên nộp hồ sơ và học phí tại Trung tâm GDTX Phú Yên từ ngày ra thông báo đến hết ngày 05/11/2021.\r\n   5. Liên hệ: Phòng Đào tạo - Bồi dưỡng, Trung tâm Giáo dục thường xuyên Phú Yên; địa chỉ: 02 Nguyễn Huệ, Phường 2, TP.Tuy Hòa, tỉnh Phú Yên.\r\n      - Điện thoại: 0257 3.829.437 - 0984.180.086 (Cô Trà) – 0906.556.766 (Thầy Nguyên)\r\n      - Email: boiduong@gdtxphuyen.edu.vn; Website: http://gdtxphuyen.edu.vn\r\n      - Fanpage: https://www.facebook.com/boiduongtrungtamgdtxpy', 1, 5, 1, '2021-12-24 08:40:51', '2021-12-28 09:49:26', 0),
(11, 'Lan tỏa thông điệp “Bình tĩnh sống để chống dịch lâu dài” tới nhân dân', 'uploads/ktDKnchZ1Bv0Tgkxp8fjEjT1XY6w6l3Ry87uB8yG.png', 'Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Mạnh Hùng, Trưởng Tiểu ban Truyền thông (Ban Chỉ đạo quốc gia phòng, chống dịch COVID-19) vừa ký ban hành kế hoạch truyền thông chống dịch COVID-19 với thông điệp “Bình tĩnh sống để chống dịch lâu dài”.', '<p>Một trong những y&ecirc;u cầu Tiểu ban Truyền th&ocirc;ng đưa ra trong kế hoạch truyền th&ocirc;ng cho c&aacute;c tỉnh, th&agrave;nh phố đang thực hiện gi&atilde;n c&aacute;ch x&atilde; hội để chống dịch l&agrave; tập trung l&agrave;m r&otilde; c&aacute;c th&ocirc;ng điệp, quan điểm: Kh&ocirc;ng thể tr&ocirc;ng chờ một kết quả l&agrave; loại bỏ ho&agrave;n to&agrave;n được virus ra khỏi cộng đồng rồi mới cho cuộc sống trở lại b&igrave;nh thường.</p>\r\n\r\n<p>Cụ thể: &ldquo;Chống dịch th&agrave;nh c&ocirc;ng l&agrave; bảo vệ được mạng sống của nh&acirc;n d&acirc;n v&agrave; bảo vệ được hoạt động sản xuất, kinh doanh, giao thương, đi lại, bảo vệ nền kinh tế. Cuộc chiến chống dịch c&ograve;n l&acirc;u d&agrave;i, nhưng cần c&oacute; giải ph&aacute;p, ti&ecirc;u ch&iacute; v&agrave; những ưu ti&ecirc;n mới để nh&acirc;n d&acirc;n cả nước c&oacute; thể b&igrave;nh tĩnh sống v&agrave; c&ugrave;ng chống dịch, kh&ocirc;ng cầu to&agrave;n, kh&ocirc;ng n&oacute;ng vội&rdquo;.</p>\r\n\r\n<p>Tr&ecirc;n cơ sở đ&oacute;, c&aacute;c cơ quan b&aacute;o ch&iacute; cần phản &aacute;nh thực tế về sự lạc quan v&agrave; niềm hy vọng c&oacute; thể b&igrave;nh tĩnh sống v&agrave; đối ph&oacute; l&acirc;u d&agrave;i với dịch bệnh.</p>\r\n\r\n<p>Đ&oacute; l&agrave; hy vọng v&agrave; thực tiễn chữa khỏi bệnh khi F0 được chăm s&oacute;c đ&uacute;ng c&aacute;ch v&agrave; sớm ngay tại cộng đồng, gia đ&igrave;nh (nhờ m&ocirc; h&igrave;nh &ldquo;t&uacute;i thuốc an sinh&rdquo;).</p>\r\n\r\n<p>Đ&oacute; l&agrave; hy vọng v&agrave; thực tiễn về giải ph&aacute;p kiểm so&aacute;t đi lại bằng c&ocirc;ng nghệ + x&eacute;t nghiệm + ti&ecirc;m chủng cho c&aacute;c lực lượng đảm bảo c&aacute;c dịch vụ thiết yếu (c&aacute;c hoạt động chăm s&oacute;c y tế, thiện nguyện, chuỗi cung ứng lương thực thực phẩm, thuốc men, trang thiết bị y tế, oxy, c&aacute;c dịch vụ thiết yếu kh&aacute;c như điện, nước...).</p>\r\n\r\n<p>Đ&oacute; l&agrave; hy vọng về cuộc sống sắp trở lại trạng th&aacute;i &ldquo;b&igrave;nh thường mới&rdquo; với những giải ph&aacute;p ph&ograve;ng, chống dịch vừa nghi&ecirc;m ngặt, vừa linh hoạt, đảm bảo kh&ocirc;ng &ldquo;đứt g&atilde;y&rdquo;, kh&ocirc;ng gi&atilde;n c&aacute;ch, phong toả m&atilde;i tr&ecirc;n diện rộng, kh&ocirc;ng thụ động chờ đợi, ỷ lại Nh&agrave; nước.</p>\r\n\r\n<p><strong>Tự gi&uacute;p đỡ nhau trong đại dịch</strong><strong>&nbsp;</strong></p>\r\n\r\n<p>Ngo&agrave;i ra, Tiểu ban Truyền th&ocirc;ng cũng lưu &yacute; việc truyền đi th&ocirc;ng điệp v&agrave; phản &aacute;nh thực tế về khả năng tự lực, tự cường, tự giải quyết c&aacute;c vấn đề của cuộc sống trong bối cảnh đại dịch. Cụ thể, mỗi c&aacute; nh&acirc;n, mỗi gia đ&igrave;nh, mỗi doanh nghiệp, mỗi khu phố, th&ocirc;n, ấp... gi&uacute;p đỡ ngay ch&iacute;nh m&igrave;nh, người th&acirc;n trong gia đ&igrave;nh, người lao động trong doanh nghiệp c&aacute;c nhu cầu thiết yếu, tạo th&agrave;nh nhiều &ldquo;v&ograve;ng tr&ograve;n nhỏ&rdquo; để bảo vệ nhau trong đại dịch.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, b&aacute;o ch&iacute; cần động vi&ecirc;n sức mạnh tinh thần, củng cố niềm tin, giải quyết c&aacute;c vấn đề t&acirc;m l&yacute; của người d&acirc;n, của đội ngũ y tế v&agrave; c&aacute;c lực lượng tuyến đầu, với mục ti&ecirc;u ổn định &ldquo;an sinh tinh thần&rdquo; trong v&agrave; sau đại dịch, hạn chế đến mức thấp nhất c&aacute;c &ldquo;tổn thương tinh thần&rdquo; do ảnh hưởng, di chứng của dịch bệnh v&agrave; do gi&atilde;n c&aacute;ch k&eacute;o d&agrave;i.</p>\r\n\r\n<p>C&aacute;c sở Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng thuộc c&aacute;c tỉnh, th&agrave;nh phố đang thực hiện gi&atilde;n c&aacute;ch x&atilde; hội tham mưu cho l&atilde;nh đạo cấp ủy, ch&iacute;nh quyền địa phương c&oacute; kịch bản, kế hoạch truyền th&ocirc;ng ph&ugrave; hợp của ri&ecirc;ng địa phương m&igrave;nh, c&ugrave;ng thực hiện c&aacute;c giải ph&aacute;p đồng bộ về ph&ograve;ng chống dịch, an sinh x&atilde; hội v&agrave; c&aacute;c phương &aacute;n đưa cuộc sống trở lại trạng th&aacute;i &ldquo;b&igrave;nh thường mới&rdquo; nhằm đảm bảo c&ocirc;ng t&aacute;c truyền th&ocirc;ng phản &aacute;nh đ&uacute;ng thực tiễn v&agrave; kết quả t&iacute;ch cực của c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch một khi đ&atilde; đi đ&uacute;ng hướng.</p>\r\n\r\n<p>Bộ trưởng&nbsp;Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng&nbsp;cũng lưu &yacute; c&aacute;c đơn vị theo d&otilde;i, r&agrave; qu&eacute;t ph&aacute;t hiện c&aacute;c th&ocirc;ng tin xấu độc, g&acirc;y hoang mang dư luận v&agrave; lợi dụng dịch bệnh để lừa đảo, trục lợi.</p>', 1, 1, 1, '2021-12-29 19:01:53', '2021-12-29 19:01:53', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `tbl_document`
--
ALTER TABLE `tbl_document`
  ADD PRIMARY KEY (`id_document`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id_news`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id_category` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_document`
--
ALTER TABLE `tbl_document`
  MODIFY `id_document` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id_news` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
