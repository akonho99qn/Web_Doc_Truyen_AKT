-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 23, 2021 lúc 02:16 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demotruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Anh Nguyen', '2021-01-22 01:00:32', '2021-01-22 01:00:32'),
(2, 'Tài Anh', '2021-01-22 01:00:36', '2021-01-22 01:00:36'),
(3, 'Khải Anh', '2021-01-22 01:00:42', '2021-01-22 01:00:42'),
(4, 'Minh Tâm', '2021-01-22 01:00:48', '2021-01-22 01:00:48'),
(5, 'Văn Khải', '2021-01-22 01:00:52', '2021-01-22 01:00:52'),
(6, 'Minh Khải', '2021-01-22 01:00:58', '2021-01-22 01:00:58'),
(7, 'oda', '2021-01-22 01:01:05', '2021-01-22 01:01:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kinh Dị', 'ma', '2021-01-18 02:38:56', '2021-01-18 02:38:56'),
(2, 'Trọng Sinh', 'trọng sinh', '2021-01-22 00:58:31', '2021-01-22 00:58:31'),
(3, 'Trùng Sinh', 'trung sinh', '2021-01-22 00:58:44', '2021-01-22 00:58:44'),
(4, 'Lịch Sử', 'lịch sử', '2021-01-22 00:59:08', '2021-01-22 00:59:08'),
(5, 'Trinh Thám', 'Trinh Thám', '2021-01-22 00:59:40', '2021-01-22 00:59:40'),
(6, 'Dramma', 'dramma', '2021-01-22 01:00:01', '2021-01-22 01:00:01'),
(7, 'Xuyên Không', 'Xuyên Không', '2021-01-22 01:02:56', '2021-01-22 01:02:56'),
(8, 'Tiên Hiệp', 'Tiên Hiệp', '2021-01-22 01:04:31', '2021-01-22 01:04:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chap` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `chap`, `name`, `story_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chương 1: Đêm Muộn Hà Đô', 2, 'Quyển 1: Thư Gia Đảo.\r\n\r\nThiên cổ giang sơn, vô số phong lưu. Gió táp mưa xa, cửu châu như họa.\r\nTinh Châu trong Cửu Châu, to lớn vô bờ bến, từ trên nhìn xuống đều là biển rộng bao la. Hòn đảo nhiều như châu ngọc, giống như cảnh đẹp chốn tiên cảnh. Nhân văn phồn hoa, mặc cho sóng lớn vần vũ, muôn đời tranh đấu cầu sinh, cũng từ đó anh hùng hào kiệt xuất hiện lớp lớp.\r\nGiữa quần hùng hào kiệt, có Hải Long Vương Khương Bác xưng hùng, xưng bá cả vùng biển, bễ nghễ thiên hạ. Lúc hắn gần chết, cảm thấy không có người kế tục. Vì vậy bố trí mật tàng Tinh Hải Long Cung, chờ người hữu duyên, truyền thừa y bát của mình.\r\nTin tức truyền ra, dẫn phát vô số sóng to gió lớn. Vô số người, người trước ngã xuống, người sau tiến lên, tốn nhiều tâm huyết và tuổi thanh xuân, chính là muốn tìm được Tinh Hải Long Cung, kế tục trở thành Hải Long Chi Vương.\r\nSở Vân chính là một người trong số đó.\r\n\"Thiên địa huyền diệu hải để tàng, thần tinh dẫn độ vô sổ quang.\"\r\n- Hải Long Vương Khương Bác chỉ để lại câu này làm manh mối, vô số người vì thế mà suy nghĩ vỡ đầu, thậm chí vì tầm bảo mà táng gia bại sản, cửa nát nhà tan. Nhưng một trăm ba mươi năm sau, Tinh Hải Long Cung vẫn vô tung vô ảnh. Nhưng hôm nay! Đã được Sở Vân ta tìm thấy!\r\nNước biển màu lam nhạt ở bên cạnh hắn bắt đầu khởi động. Ánh sáng lưu chuyển, giống như mộng như ảo. Xuất hiện trong tầm mắt, chính là một rừng san hô, cát trắng như tuyết tràn ngập dưới biển, hình thành từng mảng kim hỏa năm màu.\r\nSở Vân đứng trước cửa Long cung, trong nội tâm rất kích động.\r\nHắn ngắm nhìn bốn phía, biết rõ những cây san hô này, đã bị Hải Long Vương Khương Bác bố trí thành một mê trận cực lớn. Muốn đi thông nơi đây, phải đợi ánh trăng biến mất, bầu trời đêm đầy sao sáng chói, mượn nhờ ánh sáng của các vì sao chỉ đường trên mặt biển.\r\nMê trận cực lớn này, được xếp đặt thiết kế như Quỷ Phủ Thần Công (quỷ thần khó lường), đạo vận dạt dào, vậy mà không hề có dấu vết của con người làm ra, đại trận này dung hợp hoàn mỹ thành một thể với thiên nhiên.\r\nTrong rừm san hô này, xa hoa hùng vĩ, sáng lạn hoa lệ, chiếm diện tích rộng lớn, nhìn không thấy điểm cuối. Được thế nhân công nhận là một trong tám đại kỳ cảnh của Tinh Châu. Hàng năm đều có lượng du khách cực lớn đến ngắm cảnh, tới nơi đây thưởng thức phong quang.\r\n- Ai có thể nghĩ đến, Tinh Hải Long Cung trong truyền thuyết, lại nằm hiển hiện rõ ràng dưới mắt của mọi người chứ? Mọi người càng chuyên chú vào vẻ đẹp của rừng san hô này, lại càng bị đại trận mê hoặc. Chỉ có từ bỏ cảnh đẹp, xuyên thẳng qua, dựa vào ánh sao trên đỉnh đầu chiếu xuống biển sẽ lộ ra vết lốm đốm, mới có thể vượt qua mê trận, đến được trận tâm. Ai, nếu là ta của mười năm trước, đã phát hiện ra bí mật này, thì tốt biết mấy!\r\nTrong nội tâm Sở Vân thờ dài, tuy lúc này hắn chỉ mới ba mươi sáu tuổi, nhưng tóc trên đầu đã hoa râm, hoa dung tiều tụy, mất một chân trái, phải dùng chân giả thay thế. Nhìn thế nào cũng không giống tráng hán ba mươi, ngược lại lại giống lão đầu sáu bảy mươi tuổi.\r\nTrên người hắn, cũng đầy vết sẹo, nội thương trùng rất nhiều. Những vết thương này đều do hắn quanh năm suốt tháng tìm kiếm các bảo tàng bí mật, các loại di tích, mộ huyệt, hiểm địa, thuyền đắm… Trong mỗi hoàn cảnh như thế, lúc thăm dò bảo tàng, gặp được cơ quan đại trận, dị thú và cường địch, cho nên lưu lại vết thương. Đọc Truyện Online\r\nSở Vân yêu thích mạo hiểm, ưa thích tự do, không cam chịu tầm thường. Tính cách của hắn, làm cho hắn được công nhận là Tinh Châu Tham U Khách, danh tiếng không nhỏ.\r\nNhưng là Sở Vân lại biết, thành tựu cả đời của mình chỉ dừng lại ở đây.\r\nHắn biết rõ tình huống thân thể của mình, phi thường tinh tường. Sinh cơ hoàn toàn cạn kiệt, có thể sống đến bây giờ, hoàn toàn bằng vào một cổ tinh thần khí.\r\nTrên đất bằng, hắn đi không đến nửa canh giờ, phải ngồi xuống nghỉ ngơi. Thời điểm thời tiết chuyển lạnh, tất cả các đốt ngón tay của hắn đều phát lạnh, rất đau nhức. Có đôi khi ngủ, ngủ suốt một ngày rưỡi. Mơ mơ màng màng, ngủ thấy ác mộng liên tục.\r\nHắn nhìn thấy người cùng lứa tuổi, trước mặt mình bước đi như bay, Sở Vân rất hâm mộ, nhưng hắn không hối hận.\r\nĐối với một nhân vật tầng dưới chót như hắn, không có chỗ dựa, muốn địch nhưng thiên chi kiều tử gia đại nghiệp đại, sau lưng có thế lực to lớn chèo chống tiềm tu. Hắn chỉ có thể lao thân vào hiểm cảnh, không ngừng đi thám hiểm, tìm kiếm lợi ích trong nguy hiểm cực lớn. Dùng những thứ đó chèo chóng để tu hành.\r\nNhưng tạo hóa trêu người. Rơi vào tình trạng như bây giờ, hắn tuyệt đối không được tính là thành công.\r\nTinh Hải Long Cung, chỉ là mục tiêu trong số rất nhiều mục tiêu phải đạt được. Bằng vào kinh nghiệm phong phú nhiều năm tích lũy, hắn thu thập tất cả sự tích của Khương Bác, từ đủ loại biểu hiện lúc tuổi già của hắn, từ những giả thiết lớn mật, không cần tang chứng vật chứng.\r\nHắn mất thời gian ba năm, cuối cùng cũng tìm được nơi này.\r\nTinh Hải Long Cung, địa phương truyền thừa của Hải Long Vương!\r\nTừ đủ loại thời cơ, rốt cục Sở Vân cũng rất gian nan khi bước vào nội cung Long cung.\r\nKiến trúc Long cung hùng vĩ tráng lệ, đình đài lầu các, hành lang viện hiên tạ, bố trí hoa lệ tinh xảo. Hoa điểu trùng ngư, cầu nhỏ nước chảy giao nhau, sinh cơ bừng bừng.\r\nNơi đây là ở trong đáy biển sâu, dựa vào sức mạnh to lớn, cường ngạnh mở ra một thế ngoại đào nguyên, nhân gian tiên cảnh.\r\nNăm đó, lúc Hải Long Vương gần chết, đã sống ở chỗ này. Một đời Vương giả, là nơi sinh hoạt lúc chiều tàn.\r\nSở Vân âm thầm ngạc nhiên, khảo hạch trong dự liệu, không có xuất hiện.\r\nTheo lý thuyết, Tinh Hải Long Cung, là nơi truyền thừa của Hải Long Vương Khương Bác. Ít nhất cũng phải xếp đặt vài đạo khảo nghiệm, khảo nghiệm người được truyền thừa.\r\nNhưng mà nghĩ lại, Khương Bác từ trước tới nay đều không câu nệ tiểu tiết, khoan hồng độ lượng, phóng khoáng không thích bị trói buộc mà nổi danh. Sở Vân cũng cảm thấy thoải mái.\r\nHắn vừa tới tiền điện, đã bị cảnh tượng trong điện cảnh kinh ngạc ngây người.\r\nChính giữa cung điện rộng rãi, hai toà núi nhỏ. Đều cao mấy trượng, bên trái là một tòa hắc quang bóng loáng, tất cả đều là Địa Sát Thạch Tệ. Bên phải thấp hơn một ít, bạch quang chiếu rọi, tất cả đều là Thiên Cương Thạch Tệ.\r\nĐịa Sát Thạch Tệ, Thiên Cương Thạch Tệ đều là tiền thông dụng của Cửu Châu. Hai tòa núi này, là một khoản tài phú cực lớn!\r\nSở Vân thầm ước đoán, chỉ ngọn núi Địa Sát Thạch Tệ, có thể mua một tòa hải đảo cấp Trấn, lập nhiều cơ nghiệp kiên cố truyền thừa cho đời sau. Không cần phải nói đến ngọn núi Thiên Cương Thạch Tệ.\r\n- Hải Long Vương Khương Bác chính là bá chủ một phương, là Vương của biển. Theo lý thuyết thân gia phải có thạch tệ hơn xa nơi đây. Nhưng hắn thường vung tiền như rác, trọng nghĩa khinh tài. Chỉ để lại những khoản tài phú này, cũng có thể hiểu được', '2021-01-22 01:08:20', '2021-01-22 03:39:54'),
(2, 1, 'TOÀN TRÍ ĐỘC GIẢ', 1, '“Tôi là Dokja.” (Dokja= có nghĩa là con một hoặc là độc giả)\r\n\r\nTôi thường giới thiệu mình như vậy với mọi người, và sau đó sự hiểu lầm cứ như vậy nối tiếp xảy ra.\r\n\r\n“Hả? Cậu là con một à?”\r\n\r\n“Đúng vậy! Nhưng đó không phải là điều tôi muốn nói.”\r\n\r\n“Huh? Vậy là?”\r\n\r\n“Tên tôi là Dokja. Kim Dokja.”\r\n\r\nKim Dorkja (Con một được yêu quý của gia đình Kim) – cha tôi đặt tên tôi như vậy với mong muốn tôi là một người chàng trai khỏe mạnh. Tuy nhiên, cũng bởi vì cái tên này mà tôi trở thành một người đơn độc và bình thường. Nói ngắn gọn: Tôi Kim Dokja, 28 tuổi, đang còn độc thân. Thú vui của tôi chính là ngồi đọc truyện tiểu thuyết trên tàu điện ngầm.\r\n\r\nVà hiện tại tôi đang lướt điện thoại.\r\n\r\nTrong chiếc toa tàu ồn ào, đột nhiên tôi ngẩng đầu lên. Đập vào mắt tôi là một cô gái với ánh mắt tò mò đang nhìn chằm chằm vào tôi. Cô nàng này tên là Yoo Sangah, là nhân viên của phòng nhân sự cùng công ty với tôi.\r\n\r\n“Ah, xin chào.”\r\n\r\nTôi chào cô ấy.\r\n\r\n“Anh từ công ty trở về nhà sao?”\r\n\r\n“Vâng. Đúng vậy! Còn Yoo Sangah-ssi (1) thì sao?”\r\n\r\n(1) -ssi: bạn có thể gọi ai đó bằng cách thêm ‘-ssi’ vào tên / tên đầy đủ của anh ấy. Thông thường, ai đó không quen và họ bằng tuổi or trẻ hơn bạn.\r\n\r\n“Tôi rất may mắn. Hôm nay quản lý đi công tác.”\r\n\r\nYoo Sangah ngồi xuống khoảng trống trên chiếc ghế bên cạnh tôi. Một mùi hương thoang thoảng từ trên người cô ấy tỏa ra khiến tôi hồi hộp.\r\n\r\n“Cô có hay đi tàu điện ngầm không?”\r\n\r\n“Tôi…”\r\n\r\nMặt Yoo Sangah tối sầm lại.\r\n\r\nNghĩ lại, có lẽ đây là lần đầu tiên tôi gặp Yoo Sangah ở trên tàu điện ngầm. Có tin đồn rằng, Yoo Sangah được người của công ty trở về nhà mỗi ngày. Bắt đầu từ quản lý nhân sự Kang cho tới quản lý tài chính Han.\r\n\r\nTuy nhiên, câu nói tiếp theo khiến tôi phải bất ngờ,\r\n\r\n“Có người trộm xe đạp của tôi.”\r\n\r\nXe đạp?\r\n\r\n“Cô đi làm bằng xe đạp?”\r\n\r\n“Đúng vậy! Tôi phải làm tăng ca mấy ngày này nên mấy hôm nay không có tập thể dục được. Mặc dù hơi phiền phức một chút, nhưng đáng làm.”\r\n\r\n“Aha, tôi hiểu rồi.”\r\n\r\nYoo Sangah mỉm cười.\r\n\r\nNhìn gần cô ấy, tôi có thể hiểu được vì sao đàn ông lại thích cô ấy. Tuy nhiên, đây cũng không phải là chuyện của tôi. Ai cũng có một cách sống riêng, và cách sống của Yoo Sangah khác xa cách sống của tôi. Sau cuộc đối thoại kì quặc, tôi quay lại với màn hình điện thoại của mình. Tôi mở ứng dụng ra đọc cuốn tiểu thuyết mà tôi đang đọc dở lúc nãy, trong khi Yoo Sangah… Cái gì đây??\r\n\r\n“Por favor dinero.”\r\n\r\n“Hả?”\r\n\r\n“Tiếng Tây Ban Nha.”\r\n\r\n“…À, ra vậy. Nó có nghĩa là gì thế?”\r\n\r\n“Cho tôi xin chút tiền,”\r\n\r\nYoo Sangah tự tin trả lời. Học bài trên tàu điện ngầm khi đang trở về nhà… Lối sống của cô ấy thực sự khác xa tôi mà. Tuy nhiên, ghi nhớ từ vựng để làm gì chứ?\r\n\r\n“Cô chăm chỉ thật.”\r\n\r\n“Tiện thể, Dokja-ssi đang làm gì vậy?”\r\n\r\n“Ah, tôi…”\r\n\r\nYoo Sangah dán mắt vào màn hình điện thoại của tôi,\r\n\r\n“Là một cuốn tiểu thuyết sao?”\r\n\r\n“À, uk… Tôi đang học tiếng Hàn.”\r\n\r\n“Ồ, ra vậy. Tôi cũng thích đọc tiểu thuyết lắm. Nhưng do dạo gần đây không có thời gian nên tôi không đọc được nhiều…”\r\n\r\nThật bất ngờ, Yoo Sangah cũng thích đọc tiểu thuyết sao??\r\n\r\n“Chẳng hạn như tiểu thuyết Murakami Haruki, Raymond Carver, Han Kang…”\r\n\r\nTôi biết ngay mà.\r\n\r\nYoo Sangah hỏi, “Dokja-ssi, anh thích tác giả nào vậy?”\r\n\r\n“Tôi có kể ra thì cô cũng không biết đâu.”\r\n\r\n“Hì. Tôi đọc qua rất nhiều tiểu thuyết đó. Anh cứ nói đi. Tác giả yêu thích của anh là ai vậy?”\r\n\r\nVào những lúc như thế này, tôi rất ngại khi nói ra sở thích của mình là đọc truyện tiểu thuyết. Tôi liếc mắt nhìn tiêu đề cuốn tiểu thuyết mình đang đọc.\r\n\r\n[Thế Giới sau khi Sụp đổ]\r\n\r\nTác giả: Sing Shangshong.\r\n\r\nSao tôi có thể nói ra mình đang đọc cuốn tiểu thuyết “Thế giới sau khi sụp đổ của tác giả Shangshong” chứ.\r\n\r\n“Chỉ là một cuốn tiểu thuyết viễn tưởng thôi. À, uk… Nó giống như Chúa tể của những chiếc nhẫn vậy…”\r\n\r\nNghe thấy vậy, đôi mắt của Yoo Sangah mở to ra, nói:\r\n\r\n“A! Chúa tể của những chiếc nhẫn. Tôi đã xem phim đó rồi.”\r\n\r\n“Bộ phim đó hay thật.”\r\n\r\nSau đó im lặng lại bao trùm. Yoo Sangah nhìn vào tôi như đang trông chờ điều gì đó. Cuộc đối thoại lại lâm vào ngõ cụt. Vì vậy, tôi quyết định thay đổi chủ đề,\r\n\r\n“Đã được một năm kể từ khi tôi xin vào công ty. Đây là năm cuối cùng của tôi. Thời gian trôi nhanh thật đó.”\r\n\r\n“À! Lúc đó à, lúc đó cả hai chúng ta đều không biết gì, phải không?”\r\n\r\n“Đúng vậy!  Mới chỉ như ngày hôm qua thôi, vậy mà hợp đồng đã hết hạn rồi.”\r\n\r\nKhi nhìn thấy biểu cảm trên mặt Yoo Sangah, tôi cảm tưởng như mình vừa nói sai điều gì.\r\n\r\n“Ah, tôi….”\r\n\r\nYoo Sangah im bặt.\r\n\r\nTôi quên mất. Yoo Sangah nhận được lời khen ngợi từ đối tác mua hàng vào tháng trước cho nên hiện tại được thăng chức lên làm nhân viên toàn thời gian.\r\n\r\n“Ah, phải rồi. Chúc mừng cô. Mặc dù hơi muộn. Xin lỗi nhé. Ha ha… Đáng lẽ ra tôi nên chăm chỉ hơn và nên đi học ngoại ngữ.”\r\n\r\n“Ah, không Dokja-ssi! Còn phần đánh giá hiệu suất và…”\r\n\r\nTôi ghét phải thừa nhận, nhưng hình ảnh Yoo Sangah nói chuyện phải nói là quá đẹp. Giống như kiểu cô ấy là trung tâm của vũ trụ vậy. Nếu thế giới này là một cuốn tiểu thuyết. Vậy nhân vật chính chắc chắn là những người như cô ấy. Sự thật đúng là như vậy. Tôi không cố gắng còn Yoo Sangah thì rất là nỗ lực. Tôi chỉ ngồi đọc tiểu thuyết ở trên mạng, trong khi Yoo Sangah ra sức học hành chăm chỉ. Cho nên việc Yoo Sangah trở thành nhân viên toàn thời gian, trong khi tôi bị sa thải là lẽ thường tình.\r\n\r\n“Chuyện này… Dokja-ssi…..”\r\n\r\n“Vâng.”\r\n\r\n“Nếu như anh không thấy phiền… anh có muốn biết ứng dụng mà tôi đang dùng không?”\r\n\r\nGiọng của Yoo Sangah dần trở nên lạnh nhạt hơn. Như thể cả thế giới xa rời tôi vậy. Tôi chỉnh đốn lại tinh thần và nhìn thẳng về phía trước. Trước mặt tôi là một cậu bé. Cậu nhóc này tầm 10 tuổi. Nó mang theo một chiếc hộp đựng côn trùng và đang ngồi bên cạnh mẹ, mỉm cười một cách hạnh phúc.\r\n\r\n“…Dokja-ssi?”\r\n\r\nNếu như tôi có một cuộc sống khác thì sao? Ý tôi là, nếu như tôi có một lối sống khác thì sao?\r\n\r\n“Kim Dok…”\r\n\r\nNếu như lối sống khác của tôi là “Siêu thực” thay vì “Viễn vông” như hiện tại, liệu tôi có thể trở thành nhân vật chính không? Tôi thật sự không biết. Và có lẽ mãi mãi không thể trả lời được câu hỏi này. Nhưng, có một điều tôi biết.\r\n\r\n“Tôi đây, Yoo Sangah-ssi.”\r\n\r\n“Dù cô có cho tôi biết ứng dụng cô đang dùng, thì nó cũng không có tác dụng gì đối với tôi đâu.”\r\n\r\nLối sống của tôi rõ ràng không phải là “Siêu thực.”\r\n\r\n“Dokja có nghĩa là đơn độc, một mình. Một cuộc sống đơn độc.”\r\n\r\n“Huh? Sao cơ…”\r\n\r\n“Tôi là một người như thế.”\r\n\r\nTrong lối sống này, tôi không phải là nhân vật chính mà chỉ là một kẻ “đơn độc.”\r\n\r\n“Cuộc sống đơn độc…”\r\n\r\nGương mặt Yoo Sangah hiện ra sự nghiêm nghị. Tôi vẫy tay ra hiệu không có chuyện gì đâu.Tôi không hiểu vì sao, nhưng cô gái thực sự lo lắng cho tôi. Có lẽ do cô ấy là nhân viên của bộ phận nhân sự chăng??? Tôi biết hiệu suất công việc của mình như thế nào mặc dù…\r\n\r\n“Dokja-ssi rất giỏi đấy.”\r\n\r\n“Sao cơ?”\r\n\r\n“Vậy tôi cũng sẽ sống một cuộc sống như chiếc ngà voi” (Sangah = ngà voi)\r\n\r\nYoo Sangah như thể vừa mới quyết định chuyện gì, sau đó tiếp tục quay lại học tiếng Tây Ban Nha. Tôi nhìn cô ấy một lúc nữa, sau đó quay lại cuốn tiểu thuyết mình đang đọc dang dở. Mọi thứ đều trở lại bình thường, nhưng lạ lùng thay, tôi lại không thể nào kéo màn hình điện thoại xuống như cũ. Có lẽ do tôi nhận ra sức nặng của hiện thực nên tôi không thể nào kéo màn hình xuống được chăng??\r\n\r\nNgay sau đó, một thông báo hiện ra trên màn hình điện thoại của tôi.\r\n\r\n[Bạn nhận được một mail mới.]\r\n\r\nLà email của tác giả “Con đường sinh tồn.”\r\n\r\nTôi mở email ra.\r\n\r\n– Độc giả thân mến, tiểu thuyết của tôi sẽ bắt đầu tính phí lúc 7 p.m đấy. Cái này sẽ có ích cho cậu đấy. Chúc cậu may mắn.\r\n\r\n[1 file đính kèm.]\r\n\r\nTác giả nói là sẽ tặng cho tôi một món quà. Món quà là gì?\r\n\r\n…Giống như tên tôi vậy, bản chất của tôi cũng là một độc giả. Cho nên, tôi khá hưng phấn khi nhận email này.\r\n\r\nĐúng vậy! Sống một cuộc sống độc giả cũng không tệ.\r\n\r\nTôi kiểm tra thời gian.\r\n\r\nHiện tại là 6.55 p.m. Tôi còn đúng 5 phút trước khi cuốn tiểu thuyết kia bắt đầu tính phí.\r\n\r\nSau đó tôi mở danh sách những tiểu thuyết ưa thích của tôi ra. Vì tôi là độc giả duy nhất, cho nên tôi quyết định để lại một bình luận chúc mừng, tiếp sức cho tác giả. Thế nhưng…\r\n\r\n-Tác phẩm đó không còn tồn tại nữa??\r\n\r\nTôi cố gắng ghi chữ “đổ nát” vài lần vào thanh tìm kiếm, thế nhưng lại không có kết quả mà tôi mong muốn. Cuốn tiểu thuyết “Con đường sinh tồn” cứ như vậy biến mất, không để lại chút dấu vết nào. Thật kỳ lạ. Đã từng có trường hợp một cuốn tiểu thuyết nào đó bị xóa, nhưng cứ như vậy mà xóa không thông báo trước trong khi sắp được tính phí thì đã có bao giờ chưa?\r\n\r\nĐột nhiên, đèn điện trong tàu ngầm tắt phụt một cái. Toa tàu bỗng trở nên tối đen như mực.\r\n\r\nKiiiiiiiik-!\r\n\r\nTàu điện rung lắc dữ dội, tiếng kim loại ma sát vang lên. Yoo Sangah hoảng sợ hét toáng lên, ôm chầm lấy tôi. Rồi sau đó là tiếng hỗn loạn của mọi người ở xung quanh. Yoo Sangah bấu chặt lấy tay tôi, mạnh tới nỗi tôi chú ý cơn đau ở tay còn nhiều hơn pha phanh bất ngờ lúc nãy. Mất tới 12 giây, lúc này đoàn tàu mới dừng lại được.\r\n\r\nSau đó, âm thanh hỗn loạn, bối rối vang lên ở khắp nơi.\r\n\r\n“Ưm? Chuyện gì vậy?”\r\n\r\n“Chuyện gì xảy ra vậy?”\r\n\r\nTrong bóng tối, hai ánh đèn điện thoại được bật lên. Yoo  Sangah vẫn bám chặt lấy tay tôi, hỏi,\r\n\r\n“Chuyện….chuyện gì vừa mới xảy ra vậy?”\r\n\r\nTôi giả vờ không bận tâm, nói.\r\n\r\n“Đừng lo. Không có gì to tát đâu.”\r\n\r\n“Vậy sao??”\r\n\r\n“Đúng vậy. Có lẽ ai đó tự sát cản đường tàu điện đó mà. Sẽ sớm thui, cơ trưởng sẽ đưa ra thông báo cho mọi người.”\r\n\r\nTôi vừa nói xong, thì tiếng cơ trưởng liền vang lên.\r\n\r\n– Tất cả hành khách trên chuyến tàu, tất cả hành khách trên chuyến tàu….\r\n\r\nKhông gian náo loạn xung quanh dần ổn định lại. Tôi thở dài và nói.\r\n\r\n“Đấy, thấy chưa. Tôi nói có sai đâu mà. Tiếp theo là một lời xin lỗi sau đó điện sẽ sớm bật trở lại…”\r\n\r\n-T-Tất cả mọi người mau chạy đi… Chạy…!\r\n\r\n‘Cái gì?’\r\n\r\nSau đó một tiếng “beep” vang lên, đài phát thanh cũng tắt ngấm luôn. Sau khi âm thanh này truyền đi, bên trong khoang tàu liền trở nên hỗn loạn.\r\n\r\n“D-Dokja-ssi? Chuyện gì vậy…?”\r\n\r\nMột ánh sáng vụt qua phía trước tàu điện ngầm. Kèm theo sau đó là tiếng trống rất to và âm thanh của vụ nổ lớn. Có thứ gì đó đang từ trong bóng tối tiến lại gần đây. Thật trùng hợp lúc này đúng 7:00 p.m.\r\n\r\nTích!\r\n\r\n7.00 p.m. Cả thế giới như ngừng lại. Đột nhiên một giọng nói vang lên:\r\n\r\n[Dịch vụ miễn phí của hệ thống hành tinh 8612 đã hết hạn.]\r\n\r\n[Kịch bản chính bắt đầu.]\r\n\r\nĐây là khoảnh khắc đánh dấu bước ngoặt trong cuộc đời tôi.', '2021-01-22 01:28:22', '2021-01-22 01:32:06'),
(3, 1, 'Tiểu trấn đích tào thần', 3, 'Ô Sơn trấn, thuộc Phân Lai vương quốc, nằm ở phía tây đệ nhất sơn mạch của Ngọc Lan đại lục - \'Ma Thú sơn mạch\' - vốn là một tiểu trấn nhỏ không có vẻ gì đặc biệt.\r\n\r\nKhi những tia sáng mặt trời đầu tiên mới bắt đầu ló dạng, khi mà toàn bộ tiểu trấn vẫn còn chìm đắm trong làn khí lạnh của buổi ban mai, tất cả cư dân trong vùng dường như đều đã bắt tay vào công việc của mình, ngay cả những đứa trẻ mới chỉ 6, 7 tuổi cũng không phải là ngoại lệ, cũng đã rời khỏi giường để bắt đầu những bài tập rèn luyện thân thể buổi sáng.\r\nTrên một mô đất phía đông của Ô Sơn trấn, những ánh nắng rạng rỡ ấm áp của tào thần đang len lỏi chiếu sáng khoảng đất trống ở phía bên một cây đại thụ, in dấu từng chuổi quang điểm lan tỏa trên mặt đất.\r\nChỉ thấy một đại quân toàn là trẻ nhỏ ước chừng vào khoảng 100-200 đứa. Đám quân trẻ con này phân thành 3 đoàn đội, mỗi một đoàn đội đều sắp thành hàng ngũ, lũ trẻ lẳng lặng đứng trên mô đất, sắc thái nghiêm túc hiện rõ trên từng nét mặt. Trấn vị trí phía bắc của đám quân này là một đoàn đội bao gồm những đứa trẻ đại khái khoảng từ 6-8 tuổi, giữa trung gian là một đoàn đội cũng không cách biệt lắm, từ 9-12 tuổi. Phía nam còn lại là một đám thiếu niên tuổi từ 13-16.\r\nĐứng phía trước đại quân hài tử là 3 gã trung niên nhân cao lớn, cả 3 đều vận áo ngắn ngang lưng và quần dài may bằng vải bố.\r\n\"Muốn trở thành một chiến sĩ vĩ đại thì ngay từ nhỏ đã cần phải khắc khổ rèn luyện.\" Vị trung niên nhân đứng đầu hai tay chắp sau lưng, ngẩng cao đầu lạnh lùng cất tiếng. Khi ánh mắt lăng lệ ấy quét qua đoàn đội đứng phía bắc, đám quân 6, 7 tuổi đó đều mím chặt môi, những con ngươi đen láy như dán chặt lấy vị trung niên nhân này, tuyệt đối không có một âm thanh nào phát ra.\r\nVị trung niên nhân đứng đầu này tên là Hi Nhĩ Mạn, là đội trưởng đội hộ vệ của gia tộc Ba Lỗ Khắc tại Ô Sơn trấn.\r\n\"Các ngươi đều là thường nhân, không thể giống như những quý tộc có đấu khí mật điển vô cùng lợi hại để tu luyện, muốn vượt lên, để sau này không bị người khác xem thường, các ngươi phải tuân theo phương pháp rèn luyện cổ điển nhất, đơn giản nhất, phổ biến nhất mà rèn luyện thân thể, đả thông khí lực, đã rõ chưa?!\"\r\nHi Nhĩ Mạn đưa ánh mắt hướng về phía đám quân hài tử này.\r\n\"Rõ!\" Đám quân thiếu niên cùng đồng thanh hô vang hưởng ứng.\r\n\"Tốt lắm.\" Hi Nhĩ Mạn hài lòng gật gật đầu. Đám trẻ 6, 7 tuổi trong mắt đều lộ ra thần thái mơ mơ hồ hồ, trong khi đám thiếu niên hơn 10 tuổi thì ánh mắt toát lên vẻ kiên nghị bởi chúng đều hiểu rõ hàm nghĩa trong lời nói của Hi Nhĩ Mạn.\r\nCơ hồ mỗi một nam tử tại Ngọc Lan đại lục đều xem trọng việc rèn luyện từ nhỏ, nếu ai không khắc khổ huấn luyện ắt tương lai sẽ bị kẻ khác xem thường. Đại biểu cho địa vị của nam nhân chính là thực lực và tiền bạc. Một nam nhân mà không có thực lực thì ngay đến nữ nhân cũng tỏ ra coi thường.\r\nMuốn phụ mẫu có thể được tự hào, muốn được nữ hài sùng bái, muốn có một tương lai tươi sáng thì nhất định phải trở thành một chiến sĩ vĩ đại.\r\nBọn họ đều là bình dân, không thể có khả năng tu luyện từ những đấu khí mật điển trân quý. Bọn họ chỉ có một phương pháp duy nhất chính là rèn luyện thân thể từ nhỏ, đả thông khí lực. Khắc khổ! Cố gắng! So với cám đám quý tộc kia thì càng phải hao phí tinh lực hơn nữa, càng phải bỏ ra tâm huyết và nỗ lực nhiều hơn nữa.\r\n\"Sáng sớm, lúc mặt trời nhô cao, vạn vật sinh sôi nảy nở, chính là thời khắc để hấp thụ tinh hoa thiên địa, nâng cao tiềm lực thân thể của chúng ta một cách tốt nhất. Vẫn như cũ, hai chân cách nhau một khoảng bằng vai, đầu gối hơi chùng xuống một chút, hai tay thu về ngang hông, thành \'Uẩn Khí Thức\', với uẩn khí thức thì quan trọng nhất là phải tập trung sự chú ý, giữ cho lòng bình tĩnh, hít thở thực tự nhiên.\" Hi Nhĩ Mạn dõng dạc hướng dẫn.\r\nUẩn khí thức là biện pháp rèn luyện thân thể đơn giản nhất đồng thời cũng hữu hiệu một cách phi thường. Đây chính là kinh nghiệm được tích lũy từ các bậc tiền bối từ hàng ngàn, hàng vạn năm qua.\r\nTức thì, 100, 200 đứa trẻ đều thực hiện theo tư thế yêu cầu của \'Uẩn Khí Thức\'.\r\n\"Nhớ kỹ, phải tập trung sự chú ý, giữ cho lòng bình tĩnh, hít thở tự nhiên.\" Hi Nhĩ Mạn đi giữa đám thiếu niên, cao giọng hô vang.\r\nLiếc mắt nhìn xuống một cái, rất rõ ràng, đoàn đội thiếu niên hơn mười tuổi ở bên cạnh tất cả đều ngưng thần tĩnh khí, hít thở tự nhiên, đồng thời cả đám đều đạt được đến \"Thâm, Bình, Ổn\", hiển nhiên là đối với Uẩn Khí Thức đều đã đạt được một chút thành tựu.\r\nBất quá khi nhìn sang bên đám hài tử 6, 7 tuổi, trình độ giữa hai bên đã có sự bất đồng, hai chân chùng chùng mở mở, chẳng có lấy một chút khí lực, một điều không ổn.\r\nHi Nhĩ Mạn quay sang phía hai vị trung niên nhân đứng bên ngoài nói: \"Các người phân nhau ra phụ trách hai đoàn đội phía nam và ở giữa, ta sẽ quản lý đám tiểu hài tử này.\"\r\n\"Vâng, thưa đội trưởng.\" Hai gã trung niên nhân tức thì tuân lệnh. Sau đó hai người phân nhau ra cẩn thận quan sát hai đoàn đội phía nam và ở giữa, thi thoảng lại đá vào chân một vài người trong đám thiếu niên này, để xem tư thế đứng của chúng đã ổn hay chưa.\r\nCòn lại Hi Nhĩ Mạn hước về phía đám hài đồng 6, 7 tuổi kia bước tới. Đám hài đồng này lập tức nhao nhao lên.\r\n\"Không hay rồi, đại ma đầu đến.\" Một đứa nhóc mắt to, tên là \'Cáp Đức Lợi\' với mái tóc vàng khẽ nói.\r\nHi Nhĩ Mạn bước vào giữa đám hài đồng này, nhìn lũ trẻ, mặc dù trên nét mặt có phần lạnh lùng nhưng trong lòng lại không ngừng cảm thán: \"Những đứa nhóc này thực sự còn quá nhỏ, vô luận là thể năng hay tâm trí còn rất lâu nữa mới phát triển đầy đủ, đối với bọn chúng thì cũng không thể yêu cầu quá cao được. Bất quá, muốn rèn luyện thân thể, thì bồi dưỡng từ nhỏ là tốt nhất, từ nhỏ đã chú tâm rèn luyện, tương lai trên chiến trường cơ hội sống sót mới có thể cao được.\"\r\nMà dạy tiểu hài tử thì ... dụ dỗ bọn chúng, hấp dẫn bọn chúng chính là phương pháp hữu hiệu nhất. Nếu cưỡng bách thì chỉ sinh ra phản tác dụng mà thôi.\r\n\"Mọi người làm tốt lắm.\" Hi Nhĩ Mạn hừ lạnh một tiếng.\r\nNhất thời cả đám hài tử đều ưỡn ngực lên, nhìn thẳng về phía trước.\r\nHi Nhĩ Mạn khóe miệng khẽ thoáng nét cười, sau đó bước ra đằng trước, cởi chiếc áo trên người ra, từng tuyến cơ thịt trên thân đều khiến cho lũ trẻ phải mở to cả hai mắt. Ngay cả lũ thanh niên ở giữa và ở phía nam cũng đều lộ ra vẻ hâm mộ bắp thịt trên cơ thể Hi Nhĩ Mạn.\r\nNgoại trừ một cơ thể gần như là hoàn mĩ đó, nửa thân trần phía trên của Hi Nhĩ Mạn cũng có những vết đao, vết kiếm. Các loại vết thương loại nào cũng có. Ánh mắt của lũ trẻ như phát ra ánh sáng khi nhìn thấy những vết thương này.\r\nVết đao, vết kiếm. Đây chính là huân chương của nam nhân!\r\nBọn chúng tận đáy lòng đối với Hi Nhĩ Mạn đều là vô cùng sùng bái. Hi Nhĩ Mạn, một vị lục cấp chiến sĩ vĩ đại, một dũng sĩ từ trong sinh tử tôi luyện mà thành, mặc dù giữa đại thành thị cũng chỉ là một nhân vật bình thường, nhưng tại Ô Sơn trấn thì lại là một đại nhân vật được người người kính ngưỡng.\r\nHi Nhĩ Mạn nhìn thấy những ánh mắt nóng bỏng của lũ trẻ, trên khóe miệng không khỏi nở một nụ cười. Hắn chính là muốn tạo ra sự sùng bái, tạo ra khát vọng từ phía lũ trẻ này. Có như vậy, chúng sẽ càng khắc khổ tập luyện, càng có thêm động lực để phấn đấu!\r\n\"Tăng thêm chút lửa nữa.\" Hi Nhĩ Mạn trong lòng cười thầm, sau đó bước đến một tảng đá lớn phía đằng trước, tảng đá này ước chừng khoảng ba bốn trăm cân.\r\nHi Nhĩ Mạn đưa một tay nắm lấy tảng đá, sau đó vô cùng dễ dàng nâng lên, một tảng đá ba bốn trăm cân vậy mà trong tay Hi Nhĩ Mạn lại chẳng khác gì một thanh gỗ, khiến tất cả lũ trẻ đều phải trợn mắt, há hốc mồm miệng.\r\n\"Chưa nhằm nhò gì, trải qua một thời gian huấn luyện, các ngươi đều có thể làm thế với những tảng đá lớn hơn một chút nữa.\" Hi Nhĩ Mạn tiện tay ném tảng đá, tảng đá liền bay xa hơn mười thước. \"Bồng!\" Nặng nề rơi xuống bên cạnh một gốc cây đại thụ. Mặt đất rung lên ầm ầm. Hi Nhĩ Mạn lập tức đi về phía đám loạn thạch ở đằng trước.\r\n\"Hô!\"\r\nHi Nhĩ Mạn hít sâu một hơi, toàn cơ thể hiển nhiên bộc lộ ra những nét nổi bật nhất, Hi Nhĩ Mạn một quyền trực tiếp hướng đến một khối đá xanh trong đó, nắm đấm xuyên phá không khí, tiếng rít bén nhọn vang lên bên cạnh khiến lũ trẻ không khỏi trố hết cả hai mắt, chỉ thấy nắm đấm của Hi Nhĩ Mạn mạnh mẽ nện thẳng lên trên tảng đá xanh.\r\n\"Bồng!\" Nắm tay giáng thực mạnh xuống tảng đá, khiến tim lũ trẻ chực như muốn nhảy ra khỏi lồng ngực.\r\nĐó quả nhiên là một tảng đá vô cùng cứng rắn.\r\nChỉ thấy tảng đá chấn động, sau đó liền xuất hiện 7, 8 vết nứt. Cuối cùng \"Bồng!\" một tiếng tứ phân ngũ liệt, trong khi nắm đấm của Hi Nhĩ Mạn thì đến một vết thương cũng chẳng có.\r\n\"Đội trưởng thực là lợi hại a!\" Một trong hai trung niên nhân là La Thụy cười nói, đồng thời bước về phía Hi Nhĩ Mạn.\r\nTrung niên nhân còn lại có tên gọi \'La Kiệt\' từ phía ngoài cũng đã đi tới. Trong lúc đám hài tử rèn luyện \'Uẩn Khí Thức\' thì đó chính là lúc ba vị chỉ đạo giả này có thời gian để có thể nói chuyện phiếm hoặc chú ý một chút tới những đứa trẻ không có tựu thành.\r\nHi Nhĩ Mạn cười cười lắc đầu: \"Chưa đâu! Năm đó ta trong khi đang còn trong quân đội, mỗi ngày đều là liều mạng để rèn luyện, trên chiến trường chém giết lúc nào cũng tràn ngập huyết tinh, như hiện tại, mỗi ngày cùng lắm cũng chỉ là giãn gân giãn cốt mà thôi, không có được cái sự kích thích sung mãn như năm đó.\"\r\nToàn bộ lũ trẻ đều sùng bái nhìn về phía Hi Nhĩ Mạn.\r\nTảng đá đó lớn như vậy, vậy mà chỉ một nắm đấm đã bị nát bấy. Đây là loại thực lực gì? Cả một tảng đá ba bốn trăm cân cũng tùy ý ném đi. Đó là loại khí lực gì vậy?\r\nHi Nhĩ Mạn quay đầu lại nhìn ánh mắt của lũ trẻ, tận đáy lòng vô cùng đắc ý với phản ứng từ phía lũ trẻ.\r\n\"Các ngươi hãy nhớ cho kỹ, cho dù không dựa vào đấu khí, đơn thuần chỉ là rèn luyện thân thể đến cực hạn, lý luận trên cũng đã có thể trở thành lục cấp chiến sĩ rồi! Mà một gã lục cấp chiến sĩ khi gia nhập quân đội cũng có thể dễ dàng trở thành trung cấp quan quân, có thể dễ dàng thu được phương pháp tu luyện đấu khí của quân đội. Cho dù không thể trở thành lục cấp chiến sĩ, chỉ cần trở thành chiến sĩ cấp một thông thường thôi là đã có đủ tư cách để gia nhập quân đội. Nhớ kỹ, một người mà ngay cả chiến sĩ cấp một cũng không thể đạt đến thì hắn không phải là nam nhân.\" Hi Nhĩ Mạn khuôn mặt lãnh lệ.\r\n\"Là nam nhân thì phải ưỡn ngực hiên ngang, sẵn sàng nghênh tiếp mọi lời khiêu chiến, không được sợ hãi.\"\r\nNghe xong câu nói này, lũ trẻ 6, 7 tuổi trên mặt không khỏi hiện ra nét cười, chỉ là cố nín nhịn không cười mà thôi. Đây vốn là câu nói thường trực trên miệng của Hi Nhĩ Mạn, cũng là câu nói duy nhất mà Hi Nhĩ Mạn thường xuyên dạy cho bọn trẻ.\r\n\"Các ngươi tất cả hãy dừng lại. Nhìn sang phía các ca ca bên phía nam xem họ đứng như thế nào?\" Hi Nhĩ Mạn trách mắng.\r\nĐám hài đồng 6, 7 tuổi này lập tức cố gắng đứng cho thực vững.\r\nChỉ một lát sau, bọn chúng lung lay vẫn hoàn lung lay, vốn dĩ những đứa trẻ đều cảm thấy chân chúng vô cùng mỏi, chỉ là cố gắng cắn răng kiên trì mà thôi. Kiên trì không được bao lâu, cả đám đều lăn ra ngồi bệt trên mặt đất.\r\nHi Nhĩ Mạn khuôn mặt lại trở nên lãnh khốc như trước, chỉ là từ đáy lòng hắn đang âm thầm gật đầu. Biểu hiện của lũ trẻ mới chỉ có 6, 7 tuổi này thực sự khiến hắn vô cùng hài lòng.\r\nQuá không được bao lâu, đám trẻ 10 tuổi ở trung tâm cũng không thể chịu đựng nổi, ngồi lăn cả ra đất.\r\n\"Các ngươi kiên trì được bao lâu thì kiên trì, ta cũng sẽ không khó tính yêu cầu các ngươi, chỉ là nếu sau này các ngươi không bằng người ta thì các ngươi cũng chỉ có thể tự trách mình.\" Hi Nhĩ Mạn lạnh lùng nói.\r\n\"Ô?\" La Thụy đột nhiên kinh dị nhìn về phía đoàn đội bên phía bắc.\r\nLúc này trung ương đoàn đội 10 tuổi tả hữu hai bên bọn nhỏ cũng không ít đứa không chịu nổi mà ngồi bệt ra đất, vậy mà đoàn đội bên phía bắc vẫn còn có một đứa nhỏ 6 tuổi vẫn còn kiên trì.\r\n\"Lâm Lôi hôm nay là buổi đầu tiên đến rèn luyện, không ngờ lại lợi hại như vậy!\" La Thụy kinh ngạc nói, bên cạnh La Kiệt, Hi Nhĩ Mạn cũng đều đang chú ý tới. Hi Nhĩ Mạn hướng ánh nhìn về phía đó, giờ phút này, giữa đoàn đội bên phía bắc chỉ còn lại mình nam hài tử tóc nâu đó vẫn kiên trì. Tiểu nam hài này mắm chặt môi, ánh mắt kiên định hướng về phía trước, hai nắm đấm nắm lại thực chặt khiến cho các đốt ngón tay đều trở nên trắng bệch.\r\nHi Nhĩ Mạn trong mắt rõ ràng lộ ra một tia quang mang đầy vẻ kinh hãi.\r\n\"Hảo tiểu tử!\" Hi Nhĩ Mạn trong lòng khen thầm một tiếng, năm nay mới có 6 tuổi mà có thể trụ lại \'Uẩn Khí Thức\' vượt qua cả những đứa trẻ 10 tuổi ở hai bên, tư chất như vậy quả thực là hiếm thấy, có thể thấy rõ được điều này.\r\nLâm Lôi tên đầy đủ là Lâm Lôi Ba Lỗ Khắc, là trưởng tử của gia tộc Ba Lỗ Khắc tại Ô Sơn trấn. Ba Lỗ Khắc gia tộc vốn là một gia tộc cổ xưa đã từng có thời nổi tiếng vì sự hưng vượng đến không thể tưởng tượng. Bất quá, trải qua hàng ngàn năm truyền thừa lại, cho đến ngày hôm nay thì toàn gia tộc gần như chỉ còn lại có 3 thành viên: tộc trưởng Hoắc Cách Ba Lỗ Khắc cùng với 2 con trai. Con cả Lâm Lôi Ba Lỗ Khắc năm nay mới 6 tuổi, trong khi tiểu nhi tử Ốc Đốn Ba Lỗ Khắc chỉ mới lên 2. Về phần nữ chủ nhân của Ba Lỗ Khắc gia tộc, sau khi sinh hạ tiểu nhi tử đã qua đời. Gia gia của Lâm Lôi thì tham gia chiến tranh rồi bỏ mạng trong quân ngũ.\r\nLâm Lôi 2 chân vốn đã phát run, dẫu cho ý chí của nó có kiên định đến mấy thì cơ nhục một khi đã đau đớn đến cực hạn đã không còn chịu sự khống chế của nó nữa, nó rốt cuộc cũng ngã phịch xuống đất.\r\n\"Lâm Lôi, cảm thấy thế nào?\" Hi Nhĩ Mạn cười cười bước tới.\r\nLâm Lôi nhoẻn miệng cười, để lộ ra cái răng nanh nhỏ: \"Không sao, Hi Nhĩ Mạn thúc thúc.\" Hi Nhĩ Mạn là đội trưởng đội hộ vệ của Ba Lỗ Khắc gia tộc, cũng là người dõi theo Lâm Lôi từ lúc còn nhỏ cho tới lớn, do đó quan hệ giữa 2 người vô cùng thân cận.\r\n\"Biểu hiện tốt, đáng mặt nam nhi.\" Hi Nhĩ Mạn xoa xoa đầu Lâm Lôi, nhất thời làm mái tóc của nó giống như đạo thảo bỗng rối bù cả lên.\r\n\"Hắc hắc.\" Lâm Lôi nhếch miệng cười. Nó trong lòng chính vì lời khích lệ này của Hi Nhĩ Mạn mà cảm thấy vô cùng cao hứng.\r\nNghỉ ngơi trong chốc lát, quá trình huấn luyện lại bắt đầu tiếp tục. Bọn trẻ 6, 7 tuổi được huấn luyện với trình độ nhẹ nhàng, từ từ tăng lên thì không phải lo lắng, chứ huẩn luyện trình độ dành cho thiếu niên lứa tuổi trên 10 thì vô cùng khủng bố.\r\nChỉ thấy đám thiếu niên này, bao gồm cả đám hài tử, đầu và chân hoàn toàn tách biệt tại đỉnh của một tảng đá, toàn bộ cơ thể được nâng lên không trung, hoàn toàn dựa vào phần lực của eo mà đĩnh trụ.\r\n\"Phần eo, khố bộ, khu vực này hình thành nên một khối hình tam giác.\" Hi Nhĩ Mạn cả 2 tay và vùng bụng đặt ở cùng một vị trí, \"Chỗ này chính là trung tâm của cơ thể, vô luận là tốc độ hay là sức mạnh thì hạch tâm đều là ở khu vực hình tam giác này. Khu vực hạch tâm tam giác này là vô cùng trọng yếu.\"\r\nHi Nhĩ Mạn miệng thì nói, trong khi chân vẫn không ngừng bước tới, cẩn thận quan sát động tác của từng thiếu niên để xem xem có sai quy phạm hay không.\r\n\"Nâng thẳng lên, phần eo không được hạ thấp xuống.\" Hi Nhĩ Mạn quát.\r\nNhất thời không ít thanh niên phần eo nỗ lực hướng thẳng lên phía trước, Lâm Lôi đây là lần đầu tiên làm việc này, cái đầu nhỏ của nó cùng chân tách biệt nhau trên đỉnh tảng đá, đúng lúc này, nó đã cảm giác thấy toàn bộ vùng eo phát nóng lên đến ê ẩm.\r\n\"Kiên trì, kiên trì, ta là người giỏi nhất.\" Lâm Lôi lòng thầm tự cổ vũ chính mình. Thân thể nó từ nhỏ đã khỏe mạnh phi thường, dường như chưa bao giờ sinh bệnh, hơn nữa lại rất có nghị lực, biểu hiện thông qua việc không bao giờ dễ dàng từ bỏ bất cứ điều gì.\r\n\"Bịch!\" Đứa trẻ thứ nhất đã ngã xuống.\r\nBất quá, tảng đá dùng để bình chỉnh giữa đầu và chân cũng chỉ cao chừng 20 ly, tiểu hài tử có ngã xuống cũng sẽ không bị thương tổn gì. Luyện kim thuật sư môn tại Ngọc Lan đại lục quy định chiều dài đơn vị \'1 thước = 10 phân (thước) = 100 ly (thước) = 1000 hào (thước)\'.\r\n\"Bịch! Bịch!\" - theo thời gian trôi đi, đám trẻ đã không còn kiên trì được nữa.\r\nLâm Lôi hàm răng cắn chặt, nó rõ ràng cảm thấy phần eo mình đã đau đớn đến cực hạn, tựa hồ đã mất hết tri giác: \"Thân thể ta rất khỏe, không được ngã quá nhanh, kiên trì, cố kiên trì thêm một chút nữa.\" Lúc này, đoàn đội từ 6-8 tuổi đã chỉ còn lại mỗi mình Lâm Lôi kiên trì trụ lại được.\r\nHi Nhĩ Mạn nhìn thấy Lâm Lôi, trong ánh mắt không khỏi lộ ra sắc thái kinh hỉ mãn ý.\r\n\"La Thụy.\" Hi Nhĩ Mạn đột nhiên quát lớn.\r\n\"Đội trưởng.\" La Thụy lập tức đứng thẳng người, chờ đợi mệnh lệnh.\r\nHi Nhĩ Mạn ra lệnh: \"Ngày mai các ngươi hãy chuẩn bị một ít thuốc nhuộm, trong khi bọn họ tiến hành huấn luyện phần eo, phía dưới phần eo mỗi người sẽ cắm một nhánh cây, nhánh cây trên đầu sẽ quét thuốc nhuộm, nếu ai mà lỏng lẻo, để phần eo chạm vào nhánh cây, trên người có dính thuốc nhuộm, thì nhiệm vụ huấn luyện sẽ tăng lên gấp bội.\"\r\n\"Tuân lệnh, đội trưởng.\" La Thụy cao giọng đáp, tuy nhiên khóe miệng lại không khỏi khẽ nhếch lên, trong lòng cười thầm: \"Những chủ ý quỷ quái của đội trưởng quả thực là rất nhiều, đám tiểu tử lần này thảm rồi.\"\r\nCòn không ư?\r\nMà Hi Nhĩ Mạn thì đích thực là một chiến sĩ vĩ đại. Ông ta hiểu rõ những trọng điểm của việc rèn luyện, biết tuần tự tiệm tiến, biết từng độ tuổi của lũ trẻ thì có thể huấn luyện đạt tới trình độ nào. Nếu áp dụng trình độ quá cao thì có thể khiến cơ thể của lũ trẻ sinh ra phản kháng, không thể chịu đựng nổi.\r\n\"Đấu khí?\"\r\nNghe thấy cụm từ này, đám thiếu niên cùng lũ trẻ nhỏ đang nghỉ ngơi ở một bên tất cả đều xoe tròn cả 2 mắt hướng về phía Hi Nhĩ Mạn.\r\nĐấu khí là thứ mà những đứa trẻ bình thường như chúng phi thường háo hức chờ mong, kể cả Lâm Lôi, tên đệ tử vốn là một quý tộc suy vong đối với đấu khí cũng không phải là ngoại lệ.\r\n\"Bịch!\"\r\nLâm Lôi chính bản thân cuối cùng cũng đã không thể chịu đựng nổi nữa. Bất quá, là hắn lại chỉ dùng cánh tay nhỏ bé chống xuống đất, từ từ hạ người xuống.\r\n\"Thực thoải mái!\" Trong lúc tạm nghỉ, Lâm Lôi cảm thấy vùng eo của mình có cảm giác rất đau. Cái thứ cảm giác gai gai này không ngừng thẩm thấu qua từng ngõ ngách tận sâu trong thân thể, có khi còn thấu tận xương cốt ấy chứ. Nó khiến tiểu Lâm Lôi thoải mái nhà ta cũng phải nheo nheo đôi mắt.\r\n\"Ta là người thứ mấy ngã xuống vậy?\" Lâm Lôi mở bừng 2 mắt xìn ra xung quanh.\r\nNhững đứa trẻ từ 6 đến 8 tuổi đều đã ngã xuống hết cả rồi. Ở giữa, những đứa trẻ mười tuổi phải trái hai bên cũng đã ngã xuống đến hơn phân nửa. Bất quá, không thể so được với những thiếu niên 14, 15 tuổi vẫn còn kiên trì. Hi Nhĩ Mạn khuôn mặt vẫn giữ vẻ nghiêm nghị như trước, cất tiếng: \"Các ngươi đều phải nhớ kỹ, thân thể như là nơi chứa đựng dung khí của một người, nếu một người là một cái chén rượu thì đấu khí chính là rượu. Cái chén có thể chứa đựng nhiều hay ít rượu, điều này phụ thuộc vào kích thước của chén - Một người dù đã tu luyện đấu khí đạt đến mức thành tựu cuối cùng, thì cũng vẫn phải rèn luyện thân thể đến một trình độ nhất định. Nếu thân thể quá yếu, thì cho dù đấu khí mật điển có lợi hại đến đâu đi chăng nữa, thì cơ thể hắn cũng không thể chứa đựng được bao nhiêu đấu khí, do đó không thể trở thành một chiến sĩ lợi hại được.\" Hi Nhĩ Mạn đã đem rất nhiều điều quan trọng ra giảng giải cho lũ trẻ này.\r\nCó nhiều chiến sĩ, bởi thuở thiếu thời không được ai dạy, nên mãi đến sau này mới biết rằng giữa một cơ thể mạnh mẽ với đấu khí có một mối quan hệ. Nhưng đến lúc đó, tuổi của họ đã quá lớn, dẫu có rèn luyện thân thể cũng không thu được hiệu quả gì. Bạn đang đọc truyện được copy tại Truyện FULL\r\nRất nhiều bậc tiền bối đã phải đi theo những con đường quanh co khác nhau để tích lũy kinh nghiệm. Hi Nhĩ Mạn trong quá trình dạy dỗ, dùng phương pháp mưa dầm thấm lâu, lặng lẽ đem những kinh nghiệm trọng yếu này ghi khắc thực sâu vào trong đầu của lũ trẻ. Ông ta không muốn rằng lũ trẻ sau này lại đi theo những con đường quanh co ấy.\r\nKinh qua \'Uẩn Khí Thức\' tại phần eo, đùi, lưng - tất cả các bộ vị của cơ thể sau khi phối hợp rèn luyện, cơ hồ toàn bộ lũ trẻ đều lăn quay ra đất. Huấn luyện trình độ mà Hi Nhĩ Mạn đã an bài là vô cùng thích hợp.\r\n\"Buổi tập sáng nay, đến đây là kết thúc.\" Hi Nhĩ Mạn tuyên bố.\r\nViệc huấn luyện tại Ô Sơn trấn là tuân theo quy luật, mỗi ngày hai lần, một lần là luyện tập buổi sáng, một lần là vào buổi tối.\r\n\"Hi Nhĩ Mạn thúc thúc, hãy kể lại chuyện cũ cho chúng ta nghe đi.\" Ngay khi vừa giải tán, lũ nhóc lập tức nhao nhao cả lên. Mỗi ngày sau khi bài tập buổi sáng kết thúc, Hi Nhĩ Mạn đều kể cho lũ trẻ này nghe về những chuyện trong quân ngũ, hoặc là những chuyện xảy ra tại đại lục mà ông ta đã từng trải qua.\"\r\nBọn trẻ sinh ra tại cái tiểu trấn nhỏ này đều tỏ ra có một khát vọng rất lớn đối với những chuyện trong quân ngũ.\r\nHi Nhĩ Mạn mỉm cười, kể lại chuyện cũ cho lũ trẻ cũng chính là điều mà hắn hướng tới, đó cũng là một biện pháp để khiến cho lũ trẻ trong lòng tràn ngập động lực huấn luyện. Ông ta luôn cho rằng, chỉ có việc tạo cho bọn trẻ một khát vọng chủ động muốn tu luyện thì thành tựu sau này của chúng mới có thể cao được.\r\n\"Hôm nay, ta kể cho các ngươi nghe truyền thuyết của đại lục về tứ đại chung cực chiến sĩ.\" Hi Nhĩ Mạn nói đến đây, trên khuôn mặt cũng đượm sắc thái của một sự sùng bái.\r\nBọn trẻ nhất thời dỏng cả tai lên nghe lời kể của ông thầy, hai mắt sáng rỡ. Ngồi trên mặt đất, Lâm Lôi cũng cảm thấy trái tim mình đập rộn cả lên: \"Tứ đại chung cực chiến sĩ trong truyền thuyết?\" Lâm Lôi không tự chủ được, hai lỗ tai dựng đứng, chăm chú nhìn về phía Hi Nhĩ Mạn.\r\nHi Nhĩ Mạn trong mắt thoáng qua một tia kích động, nhưng thanh âm tức thì lại bình ổn trở lại: \"Tại đại lục của chúng ta, mấy ngàn năm trước từng xuất hiện tứ đại chung cực chiến sĩ. Tứ đại chung cực chiến sĩ này đều có thể sánh vai cùng cự long để tô điểm cho thực lực. Bọn họ mỗi người đều có khả năng tung hoành trên sa trường, giữa trăm vạn sĩ binh dễ dàng lấy đầu tướng địch. Tứ đại chung cực chiến sĩ này phân biệt thành Long huyết chiến sĩ, Tử diễm chiến sĩ, Hổ văn chiến sĩ và Bất tử chiến sĩ.\"\r\n\"Chiến sĩ phân thành 9 cấp bậc, ta mới gần tới lục cấp chiến sĩ mà đã có thể dễ dàng đánh nát cự thạch, chặt gãy đại thụ! Mà cửu cấp chiến sĩ, tại Phân Lai vương quốc của chúng ta e rằng đã có thể coi là đệ nhất cường giả được rồi. Đạt đến cửu cấp chiến sĩ trên, chính là tứ đại chung cực chiến sĩ. Họ chính là siêu việt cửu cấp chiến sĩ, đối với đỉnh cao của chiến sĩ này, thì đã thuộc về truyền thuyết về Thánh vực cường giả.\" Hi Nhĩ Mạn ánh mắt thoáng có phần mơ hồ: \"Trong tuyền thuyết về Thánh vực cường giả, có thể đánh tan một núi băng cự đại, làm đại dương vô tận phải phẫn nộ rít gào, khả dĩ có thể hủy phá nát núi cao tựa mây, hủy diệt trăm vạn nhân khẩu của một thành trì, đánh cho thiên không vương vãi vô vàn vẩn thạch! Bọn họ là những tồn tại vô địch, tồn tại tối cao!\"\r\nYên tĩnh! Tất cả những đứa trẻ đều kinh hãi đến ngây ngốc.\r\nHi Nhĩ Mạn chỉ về phía ngọn núi hướng đông bắc.\r\n\"Các người nhìn Ô Sơn kia, có phải là rất lớn hay không?\" Ông ta cười nói.\r\nNghe những lời kể vừa rồi của Hi Nhĩ Mạn, toàn bộ lũ trẻ vốn đã cảm thấy choáng váng đến ngây người, mãi đến lúc này mới cuống quít gật đầu. \"Ô Sơn cao đến ngàn thước, trong mắt con người, đích xác là một đại vật khổng lồ.\"\r\n\"Ô Sơn này, với công phu của Thánh vực cường giả có thể hủy diệt trong nháy mắt.\" Hi Nhĩ Mạn khẳng định một cách vô cùng quả quyết.\r\nLục cấp chiến sĩ tài năng một chưởng mới chỉ có thể hủy diệt một khối cự thạch, vậy mà Thánh vực cường giả lại có thể hủy diệt cả một tòa núi lớn. Điều này khiến cho tất cả lũ trẻ đều phải há hốc mồm miệng, trố hết cả mắt, lòng thầm kinh hãi. Bọn chúng từ sâu thẳm trong đáy lòng đối với Thánh vực cường giả vừa tràn ngập nỗi sợ hãi, đồng thời cũng có phần háo hức chờ mong xen lẫn với biết bao niềm khát vọng.\r\n\"Hủy diệt một ngọn núi?\" Câu nói này của Hi Nhĩ Mạn đối với Lâm Lôi là một sự chấn động lớn đến phi thường.\r\nSau đó không lâu, bọn trẻ mang theo nỗi rung động trong lòng đều đã trở về nhà. Hi Nhĩ Mạn, La Thụy, La Kiệt là những người cuối cùng rời đi. Nhìn thấy những đứa trẻ nhỏ tụm năm tụm ba kéo nhau về, Hi Nhĩ Mạn trên mặt lộ ra một nụ cười.\r\n\"Đám hài tử này chính là những niềm hy vọng cho tương lai của Ô Sơn trấn chúng ta.\" Ông ta vừa cười vừa nói.\r\nLa Thụy, La Kiệt cũng nhìn theo những đứa trẻ. Trên đại lục dường như mọi nơi mọi chỗ, từ bình dân tại địa phương cho đến đô thị, đều là từ nhỏ đã khắc khổ rèn luyện. Nhìn những đứa trẻ này, La Thụy, La Kiệt phảng phất như thấy lại hình ảnh thời niên thiếu của mình lúc bằng tuổi so với bọn chúng bây giờ.\r\n\"Hi Nhĩ Mạn đội trưởng, người so với \'Lão Ba Đặc\' năm đó còn lợi hại hơn nhiều, được người bồi dưỡng, tin rằng Ô Sơn trấn chúng ta sẽ trở thành thành trấn mạnh nhất trong chu vi mười mấy thành quanh đây.\" La Thụy cảm thán nói.\r\nThực lực của giáo đạo giả quyết định rất lớn đến tương lai của mỗi địa phương.\r\n\"Đúng rồi, đội trưởng, người làm thế nào mà lại biết về Thánh vực cường giả và Tứ đại chung cực chiến sĩ lợi hại như vậy?\" La Thụy đột nhiên tò mò hỏi.\r\nHi Nhĩ Mạn nở một nụ cười không chút hảo ý đáp: \"Kỳ thực đối với Tứ đại chung cực chiến sĩ, có bao nhiêu lợi hại thì đến chính ta cũng không biết. Dù sao thì bọn họ vẫn là những nhân vật trong truyền thuyết mà, biết bao nhiêu năm qua đã có ai từng nhìn thấy đâu.\"\r\n\"Người không biết, vậy là hoàn toàn lừa gạt lũ trẻ?\" La Thụy, La Kiệt đều không biết phải nói gì.\r\nHi Nhĩ Mạn mỉm cười: \"Mặc dù sự lợi hại của Tứ đại chung cực chiến sĩ là không rõ ràng, nhưng ta biết thánh ma đạo sư, hay cũng chính là những người đã đạt tới trình độ Thánh vực ma đạo sư, bọn họ có thể thi triển ra cấm kỵ ma pháp, hủy diệt hơn mười vạn đại quân, hủy diệt cả một tòa thành trì. Thánh vực ma pháp sư đã lợi hại như vậy, ước chừng Thánh vực chiến sĩ cũng không kém hơn bao nhiêu đâu.\"\r\n\"Huống hồ kể cho những đứa nhỏ nghe về chuyện này, là để bọn chúng có động lực trong lòng. Các ngươi chẳng lẽ không thấy lũ trẻ sau khi nghe được chuyện này vẻ mặt hăng hái đến thế nào hay sao?\" Hi Nhĩ Mạn đắc ý cười nói.\r\nLa Thụy, La Kiệt chính là không còn lời nào để nói.\r\n\"Lôi, tạm biệt\".\r\n\"Cáp Đức Lợi, hẹn gặp lại.\"\r\nSau khi cáo biệt người bạn tốt \'Cáp Đức Lợi\' của mình, Lâm Lôi một mình đi về nhà. Chỉ trong chốc lát, phủ đệ của Ba Lỗ Khắc gia tộc đã hiện ra ở phía xa.\r\nPhủ đệ của gia tộc Ba Lỗ Khắc vô cùng rộng lớn, rêu xanh đã phủ đầy trên những bức tường, ba sơn hổ đằng, các loại thực vật uốn lượn vòng quanh. Những bức tường loang lổ tràn ngập những vết tích của năm tháng. Phủ đệ của Ba Lỗ Khắc gia tộc tại Ô Sơn trấn là tổ ốc của gia tộc Ba Lỗ Khắc. Cứ mỗi một truyền thừa thì tổ ốc lại trải qua 5 ngàn năm tuổi. Trải qua mấy ngàn năm không ngừng tu tạo, cho đến hiện tại vẫn vững vàng tại đây như xưa.\r\nChỉ là cùng với sự suy bại của gia tộc đã khiến cho tình hình kinh tế của Ba Lỗ Khắc gia tộc ngày càng trở nên tăm tối, cuối cùng chỉ có thể sống dựa vào danh tiếng khi xưa. Ở thời điểm hơn một trăm năm trước, đại tộc trưởng của Ba Lỗ Khắc gia tộc lúc bấy giờ đã quyết định, tất cả các thành viên trong gia tộc chỉ cư ngụ tại 1/3 diện tích tiền viện ở phía trước của phủ đệ, còn lại ở khoảng hậu viện phía sau thì đã quá cũ, không hề tu bổ duy trì, như vậy có thể tiết kiệm được không ít kim tệ.\r\nNhưng dù cho là như thế thì cho đến hiện tại, \'Hoắc Cách Ba Lỗ Khắc\' cha của Lâm Lôi vẫn phải thường xuyên bán rẻ một số vật phẩm của gia tộc để duy trì các đồ gia dụng hàng ngày.\r\nĐại môn cao lớn của phủ đệ vẫn đang mở.\r\n\"Thánh vực chiến sĩ?\" Lâm Lôi vừa đi vừa nghĩ, \"Ta tương lai có thể trở thành Thánh vực chiến sĩ được không nhỉ?\"\r\n\"Lâm Lôi.\" Tiếng của Hi Nhĩ Mạn từ phía sau vang lên. Ba người Hi Nhĩ Mạn, La Thụy, La Kiệt đi phía sau lúc này cũng đã bắt kịp tới đây.\r\nLâm Lôi quay đầu nhìn lại, lập tức sung sướng reo lên: \"Hi Nhĩ Mạn thúc thúc!\"\r\nLập tức nó hít một hơi thực sâu, ngẩng đầu nhìn Hi Nhĩ Mạn, vừa lúng túng mà lại có phần tràn ngập mong đợi hỏi: \"Hi Nhĩ Mạn thúc thúc, người nói Thánh vực chiến sĩ lợi hại như vậy ... ta liệu có khả năng trở thành Thánh vực chiến sĩ được không?\" Lâm Lôi trong lòng cũng giống như đại đa số những đứa trẻ khác, đều có chung một khát vọng.\r\nHi Nhĩ Mạn ngẩn người ra, La Thụy, La Kiệt ở bên cạnh cũng được một phen sững sờ.\r\nThánh vực chiến sĩ?\r\n\"Cái tên tiểu hài tử hóa ra lại dám nghĩ đến chuyện này, Phân Lai vương quốc vốn là một quốc gia với hàng ngàn vạn cư dân, cho dù là như thế nhưng mấy trăm năm qua chưa hề xuất hiện một người nào có thể trở thành Thánh vực cường giả. Muốn trở thành Thánh vực cường giả ...\" Hi Nhĩ Mạn trong lòng hiểu rõ rằng trở thành Thánh vực cường giả là một điều phi thường khó khăn, đó là phải từ nhỏ đã khắc khổ rèn luyện, cùng với sự bồi dưỡng từ phía gia tộc, phải là người có thiên phú, đồng thời cũng cần gặp được kỳ ngộ ... Chính vì thế, một Thánh vực cường giả chẳng lẽ lại có thể dễ dàng mà đạt được như vậy hay sao?\r\nHi Nhĩ Mạn hiểu rất rõ vấn đề này, ông ta để trở thành lục cấp chiến sĩ đã phải trải qua không biết bao nhiêu gian khổ, từ trong sinh tử mà tôi luyện mới được như thế này. Lục cấp chiến sĩ đã khó khăn như vậy, thất cấp, bát cấp, cửu cấp rõ ràng là không cần phải nói huống hồ là Thánh vực. Đến Hi Nhĩ Mạn e rằng chỉ có nằm mơ mới dám nghĩ đến một chút.\r\nBất quá, đứng trước ánh mắt đầy khát vọng của Lâm Lôi.\r\n\"Lâm Lôi, Hi Nhĩ Mạn thúc thúc tin tưởng vào ngươi, ngươi nhất định có thể trở thành Thánh vực chiến sĩ.\" Hi Nhĩ Mạn đứng trước mặt Lâm Lôi kiên định trả lời. Một câu cổ vũ này của ông ta khiến cho đôi mắt của Lâm Lôi sáng bừng lên. Từ sâu trong đáy lòng nó cũng bắt đầu dấy lên một niềm khát vọng.\r\nKhát vọng đó, trước đó chưa từng được nung nấu đến vậy!\r\n\"Hi Nhĩ Mạn thúc thúc, ngày mai ta có thể huấn luyện cùng đoàn đội ở giữa được không?\" Lâm Lôi đột nhiên hỏi.\r\nHi Nhĩ Mạn, La Thụy, La Kiệt ba người không khỏi kinh ngạc nhìn về phía nó.\r\n\"Phụ thân đại nhân đã từng nói, nếu muốn trở thành một người đứng ở vị trí cao, thì lại càng cần phải nổ lực phấn đấu nhiều hơn so với người bình thường.\" Lâm Lôi không tự chủ được mà bắt chước cái khẩu khí nói chuyện của cha mình.\r\nHi Nhĩ Mạn đột nhiên nở nụ cười. Hôm nay nhìn Lâm Lôi huấn luyện ông ta cũng thấy được, Lâm Lôi mặc dù năm ấy mới có 6 tuổi nhưng tố chất thân thể đã sánh ngang với những đứa trẻ 9, 10 tuổi. Lúc này gật đầu cười nói: \"Tốt lắm, bất quá đến lúc đó ngươi không được phép lùi bước, phải biết rằng, không phải như vậy chỉ trong ngày một, ngày hai. Sau này cuộc sống vẫn còn dài lắm.\"\r\nLâm Lôi ngẩng cao cái đầu nhỏ của nó, tự tin mỉm cười: \"Hi Nhĩ Mạn thúc thúc, người hãy chờ xem.\"\r\nĐó là một buổi sáng rất bình thường ở Ô Sơn trấn. Sau này mỗi ngày đều như vậy, một đám trẻ tại Ô Sơn trấn dưới sự dạy dỗ chỉ bảo của lục cấp chiến sĩ \'Hi Nhĩ Mạn\' tiếp tục khắc khổ rèn luyện. Chỉ có một điểm khác biệt so với trước đây, đó là một đứa trẻ năm đó mới có 6 tuổi là Lâm Lôi được bố trí tập luyện giữa một đoàn đội của những đứa trẻ từ 9 đến 10 tuổi ở hai bên phải trái xung quanh.', '2021-01-22 10:45:32', '2021-01-22 10:45:32');
INSERT INTO `chapter` (`id`, `chap`, `name`, `story_id`, `content`, `created_at`, `updated_at`) VALUES
(4, 2, 'Nhân phẩm có vấn đề (2)', 1, '- G ri...\r\n\r\nNgay tại lúc Lục Thiếu Du đang suy nghĩ xem có phải yêu thú đang tiến về phía mình hay không thì từ trên không một chuỗi âm thanh rít gào truyền đến. Ngay lập tức trước mắt hắn như bị mây đen bao phủ. Một con chim khổng lồ dài hơn trăm thước xuất hiện trên không trung.\r\n\r\nCách chim mở rộng, bay lượn ngay khoảng không trên đầu Lục Thiếu Du. Con chim này có điểm giống chim ưng nhưng phủ bên ngoài bộ lông màu xanh, dưới bụng có lông tơ màu trắng. Hai chân có móng vuốt sắc nhọn uốn cong, thoạt nhìn như lưỡi dao sắc bén, hai mắt Cự Ưng chăm chú nhìn xuống phía hắn.\r\n\r\n- Yêu thú, chẳng lẽ ta vừa mới xuyên qua đã phải trở thành món ăn trong bụng yêu thú sao?\r\n\r\nLục Thiếu Du vô cùng kinh ngạc, ở kiếp trước lấy đâu ra một con chim ưng lớn như vậy. Lập tức, Lục Thiếu Du bất đắc dĩ mà nở nụ cười khổ, bây giờ mình không thể di chuyển, yêu thú mà muốn ăn thịt mình thì cũng chỉ có thể trơ mắt nhìn.\r\n\r\n- Vèo vèo...\r\n\r\nLục Thiếu Du cảm giác được phía sau mình tựa hồ đang có con vật gì đó bay đến, hai cánh nó vuốt trên mặt nước làm mặt nước cuộn sóng, mà hắn cũng bị sóng cuộn ra phía ngoài.- Dát dát...\r\n\r\nTrên không trung, Cự Ưng kêu lên một tiếng, hung quang trong mắt vừa lộ, hai cánh chấn động, mang theo gió lốc lao thẳng xuống dưới, móng vuốt co lại, như xuyên qua không gian lao xuống tựa tia chớp.\r\n\r\n- Mạng ta xong rồi.\r\n\r\nTrong lòng Lục Thiếu Du chỉ còn một mảnh lạnh lẽo, vừa mới xuyên qua cuối cùng lại trở thành món ăn trong bụng của yêu thú, vận số của ta cũng quá kém đi.\r\n\r\n- Vèo...\r\n\r\nNgay lúc Lục Thiếu Du tuyệt vọng, trước mắt hắn đột ngột xuất hiện một một mảnh tối đen, một cái bóng to lớn từ phía sau đầu hắn nhảy lên. Tốc độ quá nhanh, Lục Thiếu Du vội ngước mắt nhìn lên cũng chỉ có thể trông thấy là một con Yêu thú phi hành lớn hơn trăm thước có điểm giống con dơi, toàn thân màu trắng tinh, dưới bụng yêu thú có một lỗ hổng to, máu tươi từ đó không ngừng chảy ra, hẳn là con yêu thú này đang bị thương.\r\n\r\n- Phanh! Phanh!\r\n\r\nChỉ trong tích tắc, hai con yêu thú đã đụng độ nhau trên không, những tiếng rít gào xuyên qua không gian vang vọng xung quanh Lục Thiếu Du. Hắn nằm trong đầm nước, mặt nước không ngừng dao động nhưng bản thân hắn thì lại không thể nhúc nhích.\r\n\r\nSau khi va chạm mấy lần, Lục Thiếu Du thấy, Yêu thú Cự Ưng thu lại móng vuốt, hai cánh chấn động, mang theo gió lốc hung hăng chụp xuống Yêu thú dơi.\r\n\r\n- Chi chi.\r\n\r\nCon dơi khổng lồ rít lên, ngay lúc Lục Thiếu Du còn đang kinh ngạc, trong miệng yêu thú đã tràn ra một đoàn sương mù màu trắng.\r\n\r\nSương mù màu trắng phun ra, giữa không trung một cỗ hàn khí bắt đầu khuếch tán. Trong tích tắc, hàn khí quét qua khiến cả đầm nước bị đóng băng.\r\n\r\nTrên không, Cự Ưng cũng bị đông lạnh trở thành khối băng, thân hình khổng lồ lập tức rơi thẳng xuống đầm nước.\r\n\r\n- Ầm...\r\n\r\nCự Ưng đã rơi xuống trên mặt băng, mặt băng bị phá vỡ, xuất hiện vô số khe nứt. Cùng lúc này con yêu thú dơi dường như cũng trở nên suy yếu, nó hạ xuống mặt băng, từ từ tiến tới gần Cự Ưng Yêu.\r\n\r\n- Rắc.\r\n\r\nLục Thiếu Du vừa nhìn lại đã thấy yêu thú dơi há miệng lộ ra hai chiếc răng nanh bén nhọn cắn xuống, một ngụm đem da cùng lông trên bụng Cự Ưng xé ra, một viên ngọc to cỡ nắm tay trẻ con, toàn thân phát ra ánh sáng màu xanh, bên trên còn dính máu lăn xuống mặt băng.\r\n\r\n- Yêu đan? Yêu thú ít nhất phải đạt tứ giai mới có yêu đan.\r\n\r\nLục Thiếu Du từ trí nhớ trong đầu biết được, loại yêu đan này, yêu thú ít nhất phải đạt đến tứ giai mới có, những yêu thú tam giai trở xuống sẽ không có yêu đan. Yêu đan hình như là rất giá trị.\r\n\r\n-Dát dát...\r\n\r\nKhi Cự Ưng bị yêu thú dơi xé mở bụng lộ ra yêu đan. Trong nháy mắt, quanh thân Cự Ưng phát ra một ngọn lửa, ngay lập tức làm băng tan, cái mỏ sắc bén mổ thẳng vào vết thương trên bụng của yêu thú dơi. Ngay sau đó bụng của yêu thú dơi không ngừng chảy máu, một viên ngọc lớn chừng nắm tay trẻ con dính đầy tơ máu tràn ngập tia sáng nhu hòa bị đánh rơi trên mặt băng.\r\n\r\n- Đây cũng là yêu đan sao...?\r\n\r\nLục Thiếu Du kinh ngạc nói, yêu thú tứ giai trở lên rất khó bắt gặp, không ngờ dưới vách núi lại này một lát mà thấy những hai con.\r\n\r\n-Ô ô!\r\n\r\nYêu thú dơi bị đau, nó kêu lên thảm thiết rồi dùng cái răng nanh cắn mạnh vào cổ của Cự Ưng, trực tiếp cắn đứt cổ Cự Ưng, tia máu không ngừng phun ra, lần này con Cự Ưng hoàn toàn chết hẳn.\r\n\r\nBây giờ, mặt băng bắt đầu thay đổi lần thứ hai, Lục Thiếu Du lạnh run cả người, môi trắng bệch không có chút huyết sắc, mặt tái xanh, thân thể hầu như cứng đơ. Nhìn hai con yêu thú khổng lồ đại chiến như một ảo giác khi xem phim 3D, thật là làm cho người ta kinh hoàng.\r\n\r\n- Chi chi...\r\n\r\nTrên mặt nước, yêu thú dơi ngậm viên yêu đan của Cự Ưng trong miệng của mình, hai cánh xẹt qua trên mặt nước lạnh. Ngay sau đó, nó chậm rãi hướng tới gần Lục Thiếu Du.\r\n\r\n- Phiền toái rồi đây.\r\n\r\nLục Thiếu Du nhìn con yêu thú dơi đang hướng tới gần mình, trong lòng cảm thấy tuyệt vọng, hai mắt yêu thú kia đang nhìn hắn chằm chằm.\r\n\r\n- Chi chi!\r\n\r\nYêu thú dơi bay đến bên người Lục Thiếu Du, cổ họng của con dơi phát ra một tiếng vang, với thân thể khổng lồ, một con mắt của nó còn lớn hơn cả người Lục Thiếu Du. Trong mắt của nó không hề có ác ý, ngược lại ánh mắt rất chân thành nhìn chăm chú vào Lục Thiếu Du.\r\n\r\nLục Thiếu Du tưởng rằng mình chết chắc rồi, hắn nhìn vào thân hình to lớn của yêu thú, dường như yêu thú này không có ác ý với mình:\r\n\r\n- Ngươi có chuyện gì muốn ta giúp sao?\r\n\r\nLục Thiếu Du thử nói một câu để thăm dò, nghe nói yêu thú cao giai đều là linh vật của thiên địa, nhất định sẽ có linh trí.\r\n\r\n- Chi chi!\r\n\r\nNghe được Lục Thiếu Du nói, con yêu thú dơi phát ra một âm thanh vui sướng, khẽ gật đầu, hình như đang đáp lại Lục Thiếu Du.\r\n\r\nCon dơi này quả thật hiểu được lời của mình, Lục Thiếu Du sửng sốt một chút. Nếu như là trước đây, nhất định Lục Thiếu Du sẽ bị dọa cho giật hết cả mình, nhưng bây giờ hắn lại cảm thấy không có gì là quá kinh ngạc, bản thân hắn có thể chuyển kiếp thì còn có cái gì không thể tiếp nhận đây?\r\n\r\n- Ta nói yêu thú huynh này, ngươi nhìn ta đi, tự thân ta còn khó bảo toàn, làm sao có thể giúp huynh?\r\n\r\nLục Thiếu Du nhìn yêu thú dơi cười khổ một cái rồi nói.\r\n\r\n- Chi chi\r\n\r\nTựa như nghe hiểu Lục Thiếu Du nói, con dơi yêu thú cúi đầu chăm chú đánh giá hắn, sau đó phát ra một âm thanh trầm thấp, nhảy mạnh lên lấy hai móng vuốt ấn vào bụng Lục Thiếu Du, Lục Thiếu Du không tự chủ được há hốc miệng ra.', '2021-01-23 06:12:38', '2021-01-23 06:12:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '2014_10_12_000000_create_users_table', 1),
(56, '2014_10_12_100000_create_password_resets_table', 1),
(57, '2020_11_24_153732_create_category_table', 1),
(58, '2020_11_24_163119_create_author_table', 1),
(59, '2020_11_24_163905_create_story_table', 1),
(60, '2020_12_02_085046_create_story_author_table', 1),
(61, '2020_12_02_102416_create_story_category_table', 1),
(62, '2020_12_02_173217_create_chapter_table', 1),
(63, '2020_12_03_133817_create_status_table', 1),
(64, '2021_01_18_063002_create_account_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('anhdv007@gmail.com', '$2y$10$UOn4nDP86UkMJKd8Z0IBNOJDs8EWf3Ue1WlyuHpfn4QRM4ZnhbNOK', '2021-01-18 02:44:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hoàn thành', '2021-01-22 01:00:14', '2021-01-22 01:00:14'),
(2, 'Chưa hoàn thành', '2021-01-22 01:00:23', '2021-01-22 01:00:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `story`
--

CREATE TABLE `story` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `story`
--

INSERT INTO `story` (`id`, `name`, `image`, `category_id`, `author_id`, `status_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Toàn Chức Pháp Sư Dị Bản', '1611302553.jpg', '[\"2\",\"3\"]', 3, 2, 'Toàn chức pháp sư nguyên tác kết thúc.\r\n\r\nToàn chức pháp sư dị bản sẽ tiếp tục.\r\n\r\nPhần cuối cuộc chiến Thánh Thành sẽ được chỉnh sửa để Mạc Phàm có thể tiếp tục cuộc phiêu lưu mới.\r\n\r\nTôn trọng chính văn, nên gọi nó là dị bản.\r\n\r\nToàn chức pháp sư đối với mình và rất nhiều đạo hữu đam mê tác phẩm này, là chưa bao giờ kết thúc.\r\n\r\nDị bản là phi lợi nhuận, những tâm huyết bên trong tác phẩm này đều là những chia sẻ niềm đam mê với những fan cứng của toàn chức pháp sư. Các bạn chỉ cần bình luận, vote, tương tác nhiệt tình là đủ.\r\n\r\nDị bản chương đầu tiên sẽ xuất phát từ chương 3073(\"Màu trắng, vô tội\" sửa lại thành \"Màu đen, hay là màu trắng\") của nguyên tác. Văn phong sẽ được giữ lại phong cách của tác giả Loạn, có thể phá cách một chút. Mỗi ngày dự kiến một chap (không có giờ cố định) nếu tác giả không bận việc đột xuất.\r\n\r\nToàn chức pháp sư dị bản link web duy nhất:\r\nhttps://vtruyen.com/truyen/toan-chuc-phap-su-di-ban\r\n\r\nToàn chức pháp sư nguyên tác convert\r\nhttps://truyencv.com/toan-chuc-phap-su/\r\n\r\nLink app ios: apps.apple.com/vn/app/id1499432895\r\n\r\nLink app android: play.google.com/store/apps/details?id=com.nuhiep.app.android\r\n\r\n-------\r\n\r\nCác hệ ma pháp Chính Thống:\r\n- Nguyên tố ma pháp: Lôi, Hoả, Băng, Phong, Thủy, Thổ, Quang hệ.\r\n- Thứ nguyên ma pháp: Không gian, Hỗn độn, Triệu hoán, Âm hệ.\r\n- Bạch ma pháp: Tâm linh, Trì dũ, Chúc phúc, Thực vật hệ.\r\n- Hắc ma pháp: Ám ảnh, Nguyền rủa, Vong linh, Độc hệ.\r\n(*) Ác Ma Hệ: Hệ không chính thống, xếp vào hắc ma pháp.\r\n\r\nCảnh giới:\r\n* Ma pháp sư:\r\n- Sơ giai: Tinh Quỹ trong Tinh Trần.\r\n- Trung giai: Tinh Đồ trong Tinh Vân.\r\n- Cao giai: Tinh Toạ trong Tinh Hà.\r\n- Siêu giai: Tinh Cung trong Tinh Hải.\r\n- Bán cấm chú: Tinh Kiều.\r\n- Cấm chú: Tinh Tượng trong Tinh Vũ.\r\n\r\n* Yêu ma, Triệu hoán thú, Đồ đằng thú:\r\n- Nô Bộc:\r\n- Chiến Tướng:\r\n- Thống Lĩnh: Á TL, Chính Thống TL, Đại TL.\r\n- Quân Chủ: Á QC, chính thống QC, Trung đẳng QC, Đại QC, Chí Tôn QC.\r\n- Đế Vương: Á Đế, Chính Thống Đế, Đại Đế, Quân Vương, Đế Hoàng.', '2021-01-22 01:02:33', '2021-01-22 01:02:33'),
(2, 'Phong Thần Ký', '1611302623.jpg', '[\"3\"]', 5, 2, 'Xuyên qua thời không, phong vân biến chuyển, thời đại hỗn loạn trỗi dậy, Thiên Đạo sụp đổ tại thời đại này tái hiện.\r\nHai trăm vạn năm trước, Ma Kiếm Lang đơn thương độc mã đại chiến Thiên Cung, về sau tung tích tiêu thất.\r\nHai trăm vạn năm sau, Tinh Hồn từ Huyền Thiên Giới phi thăng, mở ra Thiên Đạo kỳ cuộc…', '2021-01-22 01:03:43', '2021-01-22 01:03:43'),
(3, 'Dòng Máu Lạc Hồng', '1611302722.jpg', '[\"1\",\"4\",\"6\",\"7\"]', 7, 1, '“ Dòng máu lạc hồng\r\nBốn nghìn năm\r\nDòng máu đỏ tươi\r\nChảy trong tim mình\r\nNòi giống lạc hồng\r\nGiống rồng tiên……”\r\nNhững âm hưởng hào hùng cứ vang lên, in đậm trong tâm chí của bất cứ ai ở đất nước Việt này.\r\nHắn là một kẻ như vậy, mang trong mình dòng máu Lạc Hồng, luôn tự hào về cha ông cũng như cảm thấy tiếc nuối cho những kế hoạch sự dang dở trong quá khứ.\r\n“ Nếu như……..nếu như.” Câu hỏi cứ da diết, ám ảnh trong đầu.\r\nMột ngày nọ, hắn được thoả ước nguyện.\r\nHắn xuyên về một thời kì đầy hỗn loạn, thật ra khó phân.\r\nMọi người đón đọc và đồng hành xem, hắn làm gì để hoàn thành những điều tiếc nuối đó: đòi Lưỡng Quảng, tìm về thành phố trực thuộc trung ương thứ 6..... và khám phá về những bí mật đã bị chôn vui, phủ bụi.\r\nP/s: Nhân vật chính xuyên về năm 1789, thời Tây Sơn. Ban đầu giúp vua Nguyễn Huệ........\r\nTruyện đầu tay, mong mọi người đón đọc và ủng hộ.\r\nLinh trang để xem thêm hình ảnh, thông tin: https://www.facebook.com/Dòng-Máu-Lạc-Hồng-109261987370593/\r\n( Ai đang đọc bên truyencv thì đọc tiếp từ chương 180 nha. Do mình không đăng kí chuyển lên phải tự đăng lại từ c1-c180. Cảm ơn.)\r\n( Tất cả nhân vật sự kiện trong truyện hoàn toàn hư cấu, không phản ánh sự thật lịch sử)', '2021-01-22 01:05:22', '2021-01-22 01:05:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `story_author`
--

CREATE TABLE `story_author` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `story_category`
--

CREATE TABLE `story_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anh Nguyen', 'anh@gmail.com', NULL, '$2y$10$zOSSWs7twYFqs9xMKGSkt.NDnA0GfGqIC1lRLGXriesI9KtUtnR0y', 1, NULL, '2021-01-17 23:41:04', '2021-01-17 23:41:04'),
(2, 'anh1', 'anh1@gmail.com', NULL, '$2y$10$OaIAxgQqKqmZpdfW4cHcCO7kfGd8v64dX6UHu5hlP3il2sz8e.1gS', NULL, NULL, '2021-01-18 01:56:58', '2021-01-18 01:56:58'),
(3, 'Anh Nguyen', 'anhdv007@gmail.com', NULL, '$2y$10$89bqOohD99anfA9bVz20ceGKyJQWYRAOGvZ4E4dvlxUXcOAY.O0Wu', NULL, NULL, '2021-01-18 01:58:20', '2021-01-18 01:58:20'),
(4, 'anh2', 'anh2@gmail.com', NULL, '$2y$10$kjN6d8Aj9fEg7q0pxGXEseQ8IuRv/6edA5vRCleyPWrJoLMXbvFdG', NULL, NULL, '2021-01-18 02:16:01', '2021-01-18 02:16:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `story_author`
--
ALTER TABLE `story_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_author_story_id_foreign` (`story_id`),
  ADD KEY `story_author_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `story_category`
--
ALTER TABLE `story_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_category_story_id_foreign` (`story_id`),
  ADD KEY `story_category_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `author`
--
ALTER TABLE `author`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `story`
--
ALTER TABLE `story`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `story_author`
--
ALTER TABLE `story_author`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `story_category`
--
ALTER TABLE `story_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `story_author`
--
ALTER TABLE `story_author`
  ADD CONSTRAINT `story_author_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `story_author_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `story_category`
--
ALTER TABLE `story_category`
  ADD CONSTRAINT `story_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `story_category_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
