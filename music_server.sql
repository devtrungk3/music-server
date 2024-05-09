-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 01:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `fullname`, `origin`, `bio`, `image`) VALUES
(1, 'Sơn tùng MTP', 'Thái Bình, Việt Nam', 'Sơn Tùng M-TP, tên thật là Nguyễn Thanh Tùng, sinh ngày 5 tháng 7 năm 1994. Anh là một ca sĩ, nhạc sĩ, nhà sản xuất âm nhạc nổi tiếng. Sơn Tùng bắt đầu nổi tiếng từ cuộc thi Vietnam Idol mùa đầu tiên vào năm 2007. Sau đó, anh phát hành nhiều bài hát hit và album thành công, ghi dấu ấn trong làng âm nhạc Việt Nam và cả khu vực Đông Nam Á. Đặc biệt, Sơn Tùng được biết đến với phong cách âm nhạc hiện đại, sáng tạo và luôn tạo ra những sản phẩm mới mẻ, độc đáo.', '/artists/son-tung-mtp.png'),
(2, 'Soobin Hoàng Sơn', 'Hà Nội, Việt Nam', 'Tên thật là Nguyễn Huỳnh Sơn. Anh sinh ngày 27 tháng 9 năm 1994. Soobin bắt đầu nổi tiếng thông qua việc tham gia vào cuộc thi Vietnam Idol mùa thứ 3 vào năm 2012. Sau đó, anh tiếp tục phát triển sự nghiệp âm nhạc của mình với các bài hát hit như \"Phía Sau Một Cô Gái\", \"Xin Đừng Lặng Im\", và nhiều sản phẩm âm nhạc khác. Phong cách âm nhạc của Soobin thường mang đậm chất ballad, nhẹ nhàng, sâu lắng, và được đánh giá cao về khả năng sáng tác và biểu diễn.', '/artists/soobin-hoang-son.png'),
(3, 'GREY D', 'Quảng Ngãi, Việt Nam ', 'Tên thật là Đoàn Thế Lân (sinh ngày 11 tháng 12 năm 2000). à một nam ca sĩ, nhạc sĩ người Việt Nam. Anh là cựu thành viên nhóm nhạc Monstar và hiện đang là nghệ sĩ trực thuộc ST.319 Entertainment.', '/artists/grey-d.png'),
(4, 'HIEUTHUHAI', 'Hồ Chí Minh, Việt Nam', 'Trần Minh Hiếu (sinh ngày 28 tháng 9 năm 1999 tại Thành phố Hồ Chí Minh), thường được biết đến với nghệ danh HIEUTHUHAI hay cách viết khác là hieuthuhai,[a] là một nam rapper, ca sĩ kiêm sáng tác nhạc và diễn viên người Việt Nam. Anh hiện đang là thành viên của nhóm nhạc Gerdnang. Anh bắt đầu trở nên nổi tiếng sau khi tham gia chương trình Thế giới Rap – King of Rap mùa đầu tiên. Ngoài ra, anh cũng là thành viên chính trong chương trình truyền hình thực tế 2 ngày 1 đêm. Anh đã được đề cử Ca sĩ đột phá Giải thưởng Làn Sóng Xanh 2022 và Nghệ sĩ mới của năm Giải thưởng Cống hiến.\r\n\r\n', '/artists/hieu-thu-hai.png'),
(5, 'Tlinh', 'Hà Nội, Việt Nam', 'Nguyễn Thảo Linh (sinh ngày 7 tháng 10 năm 2000), thường được biết đến với nghệ danh Tlinh (viết cách điệu: tlinh), là một nữ rapper, ca sĩ kiêm nhạc sĩ sáng tác bài hát và vũ công người Việt Nam. Cô được biết đến sau khi tham gia mùa đầu tiên của cuộc thi truyền hình Rap Việt.', '/artists/tlinh.png'),
(6, 'Orange', 'Hồ Chí Minh, Việt Nam', 'Khương Hoàn Mỹ (sinh ngày 15 tháng 2 năm 1997), thường được biết đến với nghệ danh Orange, là một nữ ca sĩ kiêm nhạc sĩ sáng tác ca khúc người Việt Nam. Cô từng là học sinh chuyên Anh Trường Trung học phổ thông chuyên Lê Hồng Phong, Thành phố Hồ Chí Minh và từng là sinh viên khoa Ngữ văn Anh của Trường Đại học Khoa học Xã hội và Nhân văn Thành phố Hồ Chí Minh.', '/artists/orange.png'),
(7, 'Chillies', 'Việt Nam', 'Chillies là một Band Nhạc indie Việt Nam gồm 5 thành viên: Trần Duy Khang, Nhím Biển, Nguyễn Văn Phước, Sĩ Phú và Đức Hà Lan. Nhóm được thành lập vào tháng 10 năm 2018 và được quản lý bởi hãng đĩa Warner Music Vietnam.', NULL),
(8, 'W/n', 'Đà Nẵng, Việt Nam', 'W/n tên thật là Nguyễn Quý Cao Nguyên - một nhạc sĩ, producer trẻ, hiện đang sinh sống tại Đà Nẵng.', '/artists/w-n.png'),
(9, 'Duongg', 'Việt Nam', 'Duongg tên thật là Nguyễn Nam Dương. Là tân binh của thị trường âm nhạc nhưng Duongg đã sở hữu cho mình một seri toàn bản hit như “3107” và cái tên Duongg cũng được nhiều người biết đến từ đó.', '/artists/duongg.png'),
(10, 'Nâu', 'Việt Nam', NULL, NULL),
(11, '267', 'Việt Nam', NULL, NULL),
(12, 'Erik', 'Hà Nội, Việt Nam', 'Lê Trung Thành (sinh ngày 13 tháng 10 năm 1997), thường được biết đến với nghệ danh Erik, là một nam ca sĩ kiêm vũ công người Việt Nam. Anh từng tham gia chương trình Giọng hát Việt nhí năm 2013 và sau đó trở thành thành viên của nhóm nhạc Monstar. Trong suốt sự nghiệp của mình, anh từng giành được 4 đề cử tại giải Cống hiến và là nghệ sĩ duy nhất được đề cử 2 lần hạng mục \"Nghệ sĩ mới của năm\"', '/artists/erik.png');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `userId` varchar(255) NOT NULL,
  `songId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`userId`, `songId`, `createdAt`, `updatedAt`) VALUES
('client', 1, '2024-05-06 16:44:43', NULL),
('client', 5, '2024-05-06 16:45:06', NULL),
('client', 15, '2024-05-07 14:55:06', '2024-05-07 14:55:06'),
('client', 18, '2024-05-06 16:44:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`) VALUES
(1, 'R&B'),
(2, 'Ballad'),
(3, 'Pop'),
(4, 'Soul');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `userId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlists_songs`
--

CREATE TABLE `playlists_songs` (
  `playlistId` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `releaseYear` int(11) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `lyrics` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `releaseYear`, `audio`, `lyrics`, `image`) VALUES
(1, 'Nơi này có anh', 2017, '/songs/noi-nay-co-anh.mp3', 'Em là ai từ đâu bước đến nơi đây dịu dàng chân phương\nEm là ai tựa như ánh nắng ban mai ngọt ngào trong sương\nNgắm em thật lâu con tim anh yếu mềm\nĐắm say từ phút đó từng giây trôi yêu thêm.\n\nBao ngày qua bình minh đánh thức xua tan bộn bề nơi anh\nBao ngày qua niềm thương nỗi nhớ bay theo bầu trời trong xanh\nLiếc đôi hàng mi mong manh anh thẫn thờ\nMuốn hôn nhẹ mái tóc bờ môi em, anh mơ.\n\n[ĐK:]\nCầm tay anh, dựa vai anh\nKề bên anh nơi này có anh\nGió mang câu tình ca\nNgàn ánh sao vụt qua nhẹ ôm lấy em\n(Yêu em thương em con tim anh chân thành).\n\nCầm tay anh, dựa vai anh\nKề bên anh nơi này có anh\nKhép đôi mi thật lâu\nNguyện mãi bên cạnh nhau\nYêu say đắm như ngày đầu.\n\nMùa xuân đến bình yên cho anh những giấc mơ\nHạ lưu giữ ngày mưa ngọt ngào nên thơ\nMùa thu lá vàng rơi đông sang anh nhớ em\nTình yêu bé nhỏ xin dành tặng riêng em.\n\n[Rap:]\nCòn đó tiếng nói ấy bên tai vấn vương bao ngày qua\nÁnh mắt bối rối nhớ thương bao ngày qua\nYêu em anh thẫn thờ, con tim bâng khuâng đâu có ngờ\nChẳng bao giờ phải mong chờ\nĐợi ai trong chiều hoàng hôn mờ\nĐắm chìm hòa vào vần thơ\nNgắm nhìn khờ dại mộng mơ\nĐừng bước vội vàng rồi làm ngơ\nLạnh lùng đó làm bộ dạng thờ ơ\nNhìn anh đi em nha\nHướng nụ cười cho riêng anh nha\nĐơn giản là yêu con tim anh lên tiếng thôi.\n\n* Uhhhhhhhh nhớ thương em\nUhhhhhhhh nhớ thương em lắm\nAhhhhhhh phía sau chân trời\nCó ai băng qua lối về cùng em đi trên đoạn đường dài.', NULL),
(2, 'Vaicaunoicokhiennguoithaydoi', 2022, '/songs/vai-cau-noi-co-khien-nguoi-thay-doi.mp3', 'Thức thâu đêm\r\nĐể nghĩ suy về em nhiều\r\nThật ra có những điều\r\nLàm cho anh không yên được giấc\r\nBấy lâu ta không nói nhau một câu nào\r\nChờ dòng tin nhắn chào\r\nTrở lại cảm giác như lúc trước\r\nCó phải vì anh vẫn thường vô ý\r\nChẳng suy nghĩ\r\nVài lần khiến em u sầu\r\nCó phải vì anh trót vài câu nói\r\nChạm vào nơi niềm đau\r\nMà người luôn chôn giấu\r\nVài câu nói có khiến người thay đổi\r\nCó khiến bờ môi ấm êm\r\nNay chỉ còn trong nỗi nhớ\r\nVài câu nói kéo đến màu u tối\r\nCuốn hết bình yên lúc xưa bên cạnh nhau\r\nMãi đi xa để mình ta trong căn phòng\r\nCùng nước mắt trong lòng\r\nChẳng còn giọt nước mắt nào\r\nCho em rơi\r\nCũng chẳng còn gì tha thiết\r\nĐể nói nên lời\r\nSẽ chỉ mang đến thêm u sầu\r\nLàm dấu yêu phai màu\r\nChẳng biết ta phải đi về đâu\r\nGiờ thì lời xin lỗi còn kịp thời\r\nLàm sao khi cảm xúc em nguội rồi\r\nBao nhiêu lần như thế rồi\r\nKhông còn cơ hội nào cho anh nữa đâu\r\nTổn thương nhau bấy nhiêu đây thôi\r\nCó phải vì anh\r\nCũng tại vì anh\r\nVẫn thường vô ý\r\nLàm em rối trí\r\nNgày đêm tối nghĩ suy\r\nVậy mà người vô tâm\r\nNào biết gì đâu\r\nCó phải vì anh trót vài câu nói\r\nChạm vào nơi niềm đau\r\nMà người luôn chôn giấu\r\nVài câu nói có khiến người thay đổi\r\nCó khiến bờ môi ấm êm\r\nNay chỉ còn trong nỗi nhớ\r\nVài câu nói kéo đến màu u tối\r\nCuốn hết bình yên lúc xưa bên cạnh nhau\r\nMãi đi xa để mình ta trong căn phòng\r\nVì dòng cảm xúc không thể trở về\r\nNhư lúc ta vừa bắt đầu\r\nVà sẽ như thế nào\r\nNếu bỏ lại ngày tháng đã từng với nhau\r\nMột vài câu nói vô tình\r\nĐẩy lùi mọi thứ về thì quá khứ\r\nBaby I just wanna say I’m sorry\r\nMình ta trong căn phòng', NULL),
(3, 'Lời tạm biệt chưa nói', 2022, '/songs/loi-tam-biet-chua-noi.mp3', 'Như giọt mưa rơi xuống mặt hồ mùa đông\r\nLạnh giá là vậy, phải không\r\nLà trái tim mình\r\nXót xa chẳng nói nên lời\r\nKhi mà ta chẳng thể gặp lại người nữa\r\nVà ta nhớ về một chiều mưa\r\nMình đã ôm lấy nhau\r\nVà cười với nhau rất vui\r\nVà có biết đâu\r\nĐâu ai biết lần gặp lúc đó\r\nNgồi kề bên nhau là lần cuối cùng\r\nAi biết lời người đã nói\r\nVề việc chia xa chẳng thể tương phùng\r\nAi biết bầu trời xanh kia\r\nNgày mai sẽ trở thành sao khuya\r\nĐể ta nhớ về người mỗi đêm\r\nThời gian\r\nGiữ kỷ niệm quý giá về người thân yêu\r\nĐừng xóa đi\r\nLời hứa mình dành cho nhau\r\nBuổi chiều gió mát\r\nXin khắc ghi\r\nLời chia tay chẳng kịp nói\r\nBồ công anh ơi theo gió\r\nXin cuốn đi\r\nChẳng ai biết đâu cuộc đời\r\nLà bao điều không đoán trước\r\nMỗi nhịp chân bước\r\nMỗi nhịp tim ước quay ngược\r\nVề khi chưa có ly biệt, người bên ta\r\nCùng nhau trải qua\r\nTháng ngày chìm trong hoa\r\nĐâu ai biết lần gặp lúc đó\r\nNgồi kề bên nhau là lần cuối cùng\r\nAi biết lời người đã nói\r\nVề việc chia xa chẳng thể tương phùng\r\nAi biết bầu trời xanh kia\r\nNgày mai sẽ trở thành sao khuya\r\nĐể ta nhớ về người mỗi đêm\r\nThời gian\r\nGiữ kỷ niệm quý giá về người thân yêu\r\nĐừng xóa đi\r\nLời hứa mình dành cho nhau\r\nBuổi chiều gió mát\r\nXin khắc ghi\r\nLời chia tay chẳng kịp nói\r\nBồ công anh ơi theo gió\r\nXin cuốn đi\r\nHoo-ooh-ooh-uh-uh\r\nHạnh phúc kia trong ta\r\nLà chiều hoàng hôn\r\nNgắm mưa dưới hiên nhà\r\nNgười đã cho ta\r\nThật nhiều yêu thương thiết tha\r\nBằng cuộc đời người sống qua\r\nNhững cánh hoa mang theo\r\nLời tạm biệt mà mình chưa thể nói\r\nHãy bay bay về thiên đường đẹp nhất\r\nThay lời tim ta, người ơi\r\nHãy bay bay về thiên đường đẹp nhất\r\nThay lời tim ta, người ơi', NULL),
(4, 'Âm thầm bên em', 2015, '/songs/am-tham-ben-em.mp3', 'Khi bên anh em thấy điều chi?\r\nKhi bên anh em thấy điều gì?\r\nNước mắt rơi gần kề làn mi\r\nChẳng còn những giây phút, chẳng còn những ân tình\r\nGió mang em rời xa nơi đây…\r\n\r\nKhi xa anh em nhớ về ai?\r\nKhi xa anh em nhớ một người\r\nChắc không phải một người như anh\r\nNgười từng làm em khóc, người từng khiến em buồn\r\nBuông bàn tay,rời xa lặng thinh bước đi…\r\n\r\n[chorus]\r\nHạt mưa rơi bủa vây trái tim hiu quạnh\r\nNgàn yêu thương vụt tan bỗng xa\r\nNgười từng nói ở bên cạnh anh mỗi khi anh buồn\r\nCớ sao giờ lời nói kia như gió bay\r\nĐừng bỏ rơi bàn tay ấy bơ vơ mà\r\nMột mình anh lặng im chốn đây\r\nYêu em âm thầm bên em…\r\n\r\n[rap]\r\nYêu thương không còn nơi đây\r\nMang tình buồn theo mây\r\nCơn mơ về\r\nMong manh câu thề\r\nTan trôi qua mau quên đi phút giây\r\nMưa rơi trên đôi mi qua lối vắng\r\nÁnh sáng mờ buông lơi Làn khói trắng\r\nBóng dáng em,nụ cười ngày hôm qua, kí ức có ngủ quên chìm trong màn sương đắng.?\r\nAnh nhớ giọt nước mắt sâu lắng\r\nAnh nhớ nỗi buồn của em ngày không nắng\r\n\r\n[chorus]\r\nHạt mưa rơi bủa vây trái tim hiu quạnh\r\nNgàn yêu thương vụt tan bỗng xa\r\nNgười từng nói ở bên cạnh anh mỗi khi anh buồn\r\nCớ sao giờ lời nói kia như gió bay\r\nĐừng bỏ rơi bàn tay ấy bơ vơ mà\r\nCầm bông hoa chờ mong nhớ thương\r\nLàm sao quên người ơi, tình anh mãi như hôm nào\r\nVẫn yêu người và vẫn mong em về đây…\r\n\r\n[coda]\r\nGiọt nước mắt tại sao cứ lăn rơi hoài\r\nỞ bên anh chỉ có đớn đau\r\nThì anh xin nhận hết ngàn đau đớn để thấy em cười\r\nDẫu biết rằng người đến không như giấc mơ\r\nYêu em âm thầm bên em…\r\n\r\nThì anh xin nhận hết ngàn đau đớn để thấy em cười\r\nDẫu biết rằng người đến không như giấc mơ\r\nYêu em âm thầm bên em…', NULL),
(5, 'Anh đã quen với cô đơn', 2017, '/songs/anh-da-quen-voi-co-don.mp3', 'Anh thường hay vẫn nằm mơ\r\nVề một ngôi nhà, ở một nơi chỉ có đôi ta\r\n\r\nNơi đã có anh và em xây từng câu chuyện\r\nCùng sẻ chia về những ước mơ\r\n\r\nTrên trời cao, muôn vì sao, soi từng con đường\r\nHòa làn mây cùng gió đến đây\r\n\r\nEm đã nói sẽ ở bên anh thật lâu\r\nChẳng thể quên được những vấn vương\r\n\r\nCó thể anh mơ\r\nChỉ là giấc mơ về một hạnh phúc\r\nNắng phai trên mi ai\r\nGiờ em nơi đâu có biết chăng nơi này\r\n\r\nCó lẽ em đã quên rồi\r\nTừng chiếc ôm trong tiết sang trời trở đông\r\nNhững ngón tay ta đan chặt\r\nNhìn nhau thật lâu và chẳng cần nói điều gì\r\n\r\nEverynight Alone\r\nĐừng để giọt nước mắt vẫn rơi tàn hoa khắp nơi thiếu em babe\r\n\r\nEverynight Alone\r\nLại gọi tên những nổi nhớ đong đầy\r\n\r\nBao đam mê cũng đã chóng phai\r\nYêu em ko biết đúng sai\r\nChỉ bằng cảm xúc bằng lý trí bằng tất cả những gì anh có\r\nHay em cho\r\nKhi hai con tim lệch nhịp\r\nAnh có cố gắng thế nào, em cũng không hiểu được em\r\nNhư là bản thân chính em.', NULL),
(6, 'Buông đôi tay nhau ra', 2015, '/songs/buong-doi-tay-nhau-ra.mp3', 'Cứ quên anh vậy đi\r\nNhạt nhoà sương tan ái ân mây trôi buồn\r\nNhững môi hôn chìm sâu\r\nCòn đâu nụ cười thơ ngây đó\r\nCứ xa anh vậy đi\r\nĐường mòn xưa kia dẫn lối đôi chân lẻ loi\r\nAnh lẻ loi\r\n\r\nMưa rơi nhẹ rơi,mưa đừng mang hoàng hôn xua tan bóng em\r\nChua cay nào hay,thương là đau màn đêm chia hai giấc mơ\r\nGiọt nước mắt vô tâm thờ ơ\r\nNgàn câu ca sao nghe hững hờ\r\nEm lặng im\r\nAnh lặng im\r\nSương gió bủa vây !\r\n\r\nUhhhhh\r\nBuông đôi tay nhau ra\r\nBuông đôi tay chia xa\r\nUhhhhhh\r\nBuông đôi tay nhau ra\r\nBuông đôi tay chia xa\r\nUhhhhh\r\nHờn ghen xin cất trong tim này\r\nUhhhhhh\r\n\r\nNgày tháng êm ấm vụt mất\r\nAi đó mang em đi rồi,giấu chôn những hoài mong\r\nỞ phía trước mong em bình yên phía sau những vụn vỡ\r\nCơn gió quay lưng rồi ngoái thương những chờ mong !\r\n\r\nCó cơn gió lạnh lùng vội vàng thờ ơ xa chốn đây\r\nCó ai đó ngập ngừng thả trôi yêu thương vào hư vô\r\n\r\nMưa rơi nhẹ rơi,mưa đừng mang hoàng hôn xua tan bóng em\r\nChua cay nào hay,thương là đau màn đêm chia hai giấc mơ\r\nGiọt nước mắt vô tâm thờ ơ\r\nNgàn câu ca sao nghe hững hờ\r\nEm lặng im\r\nAnh lặng im\r\nSương gió bủa vây !\r\n\r\nUhhhhh\r\nBuông đôi tay nhau ra\r\nBuông đôi tay chia xa\r\nUhhhhhh\r\nBuông đôi tay nhau ra\r\nBuông đôi tay chia xa\r\nUhhhhhh\r\nHờn ghen xin cất trong tim này\r\nUhhhhhh\r\n\r\nNgày tháng êm ấm vụt mất\r\nAi đó mang em đi rồi,giấu chôn những hoài mong\r\nỞ phía trước mong em bình yên phía sau những vụn vỡ\r\nCơn gió quay lưng rồi ngoái thương những chờ mong !\r\n\r\nUhhhhh\r\nCó lẽ\r\nUhhhhh\r\nAnh sẽ quên đi tất cả\r\nUhhhhh\r\nPhía trước đang chờ em\r\nUhhhhh\r\nChúc em hạnh phúc\r\n\r\nUhhhhh\r\nBuông đôi tay nhau ra\r\nBuông đôi tay chia xa\r\nUhhhhhh\r\nBuông đôi tay nhau ra\r\nBuông đôi tay chia xa\r\nUhhhhhh\r\nHờn ghen xin cất trong tim này\r\nUhhhhhh\r\nSơn tùng M-TP\r\nEhhhhh\r\nBuông đôi tay ra\r\nEhhhhh\r\nBuông đôi tay ra\r\nEhhhhh\r\nBuông đôi tay ra\r\nEhhhhh\r\nBuông đôi tay nhau ra\r\nEhhhhh\r\nBuông đôi tay ra\r\nEhhhhh\r\nBuông đôi tay ra\r\nEhhhhh\r\nBuông đôi tay ra\r\nEhhhhh\r\nBuông đôi tay nhau ra', NULL),
(7, 'Chạy ngay đi', 2018, '/songs/chay-ngay-di.mp3', 'Từng phút cứ mãi trôi xa phai nhòa dần kí ức giữa đôi ta\r\nTừng chút nỗi nhớ hôm qua đâu về lạc bước cứ thế phôi pha\r\nCon tim giờ không cùng chung đôi nhịp\r\nNụ cười lạnh băng còn đâu nồng ấm thân quen\r\nVô tâm làm ngơ thờ ơ tương lai ai ngờ\r\nQuên đi mộng mơ ngày thơ tan theo sương mờ\r\nMưa lặng thầm đường vắng chiều nay\r\nIn giọt lệ nhòe khóe mắt sầu cay\r\nBao hẹn thề tàn úa vụt bay\r\nTrôi dạt chìm vào những giấc nồng say\r\nQuay lưng chia hai lối, còn một mình anh thôi\r\nGiả dối bao trùm bỗng chốc lên ngôi\r\nTrong đêm tối bầu bạn cùng đơn côi\r\nSuy tư anh kìm nén đã bốc cháy yêu thương trao em rồi\r\nĐốt sạch hết\r\nSon môi hồng vương trên môi bấy lâu\r\nHương thơm dịu êm mê man bấy lâu (đốt sạch hết)\r\nAnh không chờ mong quan tâm nữa đâu\r\nTương lai từ giờ như bức tranh em quên tô màu (đốt sạch hết)\r\nXin chôn vùi tên em trong đớn đau\r\nNơi hiu quạnh tan hoang ngàn nỗi đau (đốt sạch hết)\r\nDư âm tàn tro vô vọng phía sau\r\nĐua chen dày vò xâu xé quanh thân xác nát nhàu\r\nChạy ngay đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nChạy ngay đi, trước khi\r\nLòng hận thù cuộn từng cơn\r\nTựa giông tố đến bên ghé thăm\r\nTừ nơi hố sâu tối tăm\r\nChạy đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nYeah, buông bàn tay\r\nBuông xuôi hi vọng buông bình yên (buông)\r\nĐâu còn nguyên tháng ngày rực rỡ phai úa hằn sâu triền miên\r\nVết thương cứ thêm, khắc thêm, mãi thêm\r\nChà đạp vùi dập dẫm lên tiếng yêu ấm êm\r\nNhìn lại niềm tin từng trao giờ sao\r\nSau bao ngu muội sai lầm anh vẫn yếu mềm\r\nCăn phòng giam cầm thiêu linh hồn cô độc em trơ trọi kêu gào xót xa\r\nCăm hận tuôn trào dâng lên nhuộm đen ghì đôi vai đừng mong chờ thứ tha\r\nAh, chính em gây ra mà\r\nNhững điều vừa diễn ra\r\nChính em gây ra mà, chính em gây ra mà\r\nNhững điều vừa diễn ra\r\nHết thật rồi\r\nĐốt sạch hết\r\nSon môi hồng vương trên môi bấy lâu\r\nHương thơm dịu êm mê man bấy lâu (đốt sạch hết)\r\nAnh không chờ mong quan tâm nữa đâu\r\nTương lai từ giờ như bức tranh em quên tô màu (đốt sạch hết)\r\nXin chôn vùi tên em trong đớn đau\r\nNơi hiu quạnh tan hoang ngàn nỗi đau (đốt sạch hết)\r\nDư âm tàn tro vô vọng phía sau\r\nĐua chen dày vò xâu xé quanh thân xác nát nhàu\r\nChạy ngay đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nChạy ngay đi, trước khi\r\nLòng hận thù cuộn từng cơn\r\nTựa giông tố đến bên ghé thăm\r\nTừ nơi hố sâu tối tăm\r\nChạy đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nĐốt sạch hết\r\nOhhh...\r\n(Chính em gây ra mà, chính em gây ra mà)\r\nĐốt sạch hết\r\nOhhh...\r\nHaizzz...\r\nĐừng nhìn anh với khuôn mặt xa lạ, xin đừng\r\nLang thang trong tâm trí anh từng đêm nữa\r\nQuên đi, quên đi hết đi\r\nQuên đi, quên đi hết đi\r\nThắp lên điều đáng thương lạnh giá ôm trọn giấc mơ vụn vỡ\r\nBốc cháy lên cơn hận thù trong anh (quên đi, quên đi, quên đi hết đi)\r\nCơn hận thù trong anh\r\nBốc cháy lên cơn hận thù trong anh\r\nAi khơi dậy cơn hận thù trong anh?\r\nBốc cháy lên cơn hận thù trong anh (quên đi, quên đi, quên đi hết đi)\r\nCơn hận thù trong anh\r\nBốc cháy lên cơn hận thù trong anh\r\nAi khơi dậy cơn hận thù trong anh? (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái', NULL),
(8, 'Chúng ta của tương lai', 2024, '/songs/chung-ta-cua-tuong-lai.mp3', 'Liệu mai sau phai vội mau không bước bên cạnh nhau (bên cạnh nhau)\r\nThì ta có đau? (Thì ta có đau? Có đau?)\r\nĐôi mi nhòe phai ai sẽ lau?\r\nAi sẽ đến lau nỗi đau này?\r\nVô tâm quay lưng ta thờ ơ, lạnh lùng băng giá như vậy sao? (Vậy sao? Vậy sao?)\r\nVờ không biết nhau (không biết nhau, không biết nhau)\r\nLặng im băng qua chẳng nói một lời (chẳng nói một lời)\r\nOoh-whoa-ooh-whoa-oh-oh-oh (yeah, eh)\r\nRồi niềm đau có chóng quên? (Hah-ah-ooh-ah)\r\nHay càng quên càng nhớ thêm, vấn vương vết thương lòng xót xa?\r\nĐừng như con nít (con nít), từng mặn nồng say đắm say (oh-oh-ah)\r\nCớ sao khi chia tay (chia tay), ta xa lạ đến kì lạ? (Ta xa lạ đến kì lạ)\r\nAi dám nói trước sau này (trước sau này)\r\nChẳng ai biết trước tương lai sau này (sau này)\r\nTình yêu đâu biết mai này có vẹn nguyên\r\nCòn nguyên như lời ta đã hứa trước đây? (Ta đã hứa trước đây)\r\nDẫu cho giông tố xô xa rời (xa rời)\r\nCòn mãi những điều đẹp đẽ say đắm một thời (một thời)\r\nNụ cười và giọt nước mắt rơi từng trao cùng ta\r\nNhìn lại về phía mặt trời (phía mặt trời)\r\nTa về phía mặt trời (phía mặt trời)\r\nYah, yah\r\nTương lai ngày mai ai nào hay (whoa)\r\nYêu thương rồi buông đôi bàn tay (whoa)\r\nMong manh đường duyên như vận may\r\nChia ly, hợp tan nhanh còn hơn mây trời bay (yah)\r\nQuên nhau, vờ như chưa từng quen (sao quên?)\r\nQuên luôn mặt, quên luôn cả tên (sao quên?)\r\nQuên đi, làm sao mà đòi quên?\r\nKhi câu thề xưa vẫn vẹn nguyên nên đừng cố quên (ah)\r\nVấn vương cũng chẳng sao mà (whoa), nhớ nhung cũng chẳng sao mà (whoa)\r\nĐớn đau cũng chẳng sao mà (whoa)\r\nDù có đắng cay ta cũng chẳng sao đâu\r\nChân thành khi còn bên nhau và trân trọng hơn mỗi phút giây (hơn mỗi phút giây)\r\nThành thật bên nhau mỗi phút giây (yeah, yeah)\r\nRồi niềm đau có chóng quên? (Hah-ah-ooh-ah)\r\nHay càng quên càng nhớ thêm, vấn vương vết thương lòng xót xa? (Whoa-oh-oh-oh-oh-oh-oh)\r\nĐừng như con nít (con nít), từng mặn nồng say đắm say (oh-oh-ah)\r\nCớ sao khi chia tay (chia tay), ta xa lạ đến kì lạ? (Ta xa lạ đến kì lạ, hah)\r\nAi dám nói trước sau này (trước sau này)\r\nChẳng ai biết trước tương lai sau này (sau này)\r\nTình yêu đâu biết mai này có vẹn nguyên\r\nCòn nguyên như lời ta đã hứa trước đây? (Ta đã hứa trước đây)\r\nDẫu cho giông tố xô xa rời (xa rời)\r\nCòn mãi những điều đẹp đẽ say đắm một thời (một thời)\r\nNụ cười và giọt nước mắt rơi từng trao cùng ta\r\nNhìn lại về phía mặt trời\r\nAi dám nói trước sau này\r\nChẳng ai biết trước tương lai (trước tương lai, trước tương lai)\r\nTình yêu đâu biết mai này có vẹn nguyên như lời ta đã hứa trước đây?\r\nDẫu cho giông tố xô xa rời\r\nDù cho bão giông chia lìa ta (dù cho bão giông chia lìa ta)\r\nNụ cười và giọt nước mắt rơi\r\nĐể trao tặng em một cơn mơ, y-yah, y-yah (y-yah, y-yah, hah)\r\nAi dám nói trước sau này (sống bên nhau mà)\r\nChẳng ai biết trước tương lai sau này (sống bên nhau mà)\r\nTình yêu đâu biết mai này có vẹn nguyên\r\nCòn nguyên như lời ta đã hứa trước đây? (Ta đã hứa trước đây)\r\nDẫu cho giông tố xô xa rời (giữ yêu thương kia)\r\nCòn mãi những điều đẹp đẽ say đắm một thời (giữ yêu thương kia)\r\nNụ cười và giọt nước mắt rơi từng trao cùng ta\r\nNhìn lại về phía mặt trời (mặt trời)\r\nTa về phía mặt trời (phía mặt trời, phía mặt trời, phía mặt trời)', NULL),
(9, 'Đưa em về nhà', 2023, '/songs/dua-em-ve-nha.mp3', '[Verse 1 - GREY D]\r\nđưa em về nhà\r\nmây trôi chiều tà\r\nsao trong lòng muốn lối đi về càng thêm xa\r\nđưa em về nhà\r\nxe đi tà tà\r\nĐi ngang nhà hát mua ly trà vị giống như ngày đầu mới iu\r\nnói ra bao điều\r\nnhẹ nhàng cùng feel\r\nmà trong đầu không một chút nghĩ suy\r\nvề gần tới nơi mà mình đâu nào muốn rời\r\ncòn bao điều chưa kịp trao\r\nthôi đành hôm khác\r\n\r\n[Chorus - CHILLIES]\r\nđưa em về nhà,\r\nmây trôi chiều tà\r\nthật lòng chỉ muốn lối đi này càng về càng xa\r\nđưa em về nhà,\r\ncon tim thật thà\r\nđèn đỏ trên phố, nếu như mà được thì, đỏ hết thêm 5 thêm 7 ngã tư\r\n\r\n[Hook - GREY D & CHILLIES]\r\nđưa em về, đưa em về (x3)\r\n\r\n[Verse 2 - GREY D]\r\nbabe\r\nnếu mà bây giờ em thấy đang hơi cồn cào\r\nvậy thì ta vòng qua quận 5 để đi ăn đồ tàu\r\nxong rồi kiếm một góc ở bên Hoàng Sa\r\ntấp vào trong ngồi chill vì vẫn có dư thời gian mà\r\nanh có thể nghe thấy\r\nnhịp tim của em đang đập sau con xe máy\r\nvi vu con phố đã qua bao lâu\r\nlòng này còn một cảm giác cứ như lần đầu mới iu\r\n\r\n[Pre-Chorus - CHILLIES]\r\nnói ra bao điều\r\nnhẹ nhàng cùng feel\r\nmà trong đầu không một chút nghĩ suy\r\nvề gần tới nơi mà mình đâu nào muốn rời\r\ncòn bao điều chưa kịp trao\r\nthôi đành hôm khác\r\n\r\n[Chorus - GREY D]\r\nđưa em về nhà,\r\nmây trôi chiều tà\r\nthật lòng chỉ muốn lối đi này càng về càng xa\r\nđưa em về nhà,\r\ncon tim thật thà\r\nđèn đỏ trên phố, nếu như mà được thì, đỏ hết thêm 5 thêm 7 ngã tư\r\n\r\n[Bridge - GREY D & CHILLIES]\r\nvòng quanh thành phố, tiện đường ra ngoại ô\r\nmình đi khắp muôn nơi dù vẫn chưa lên đồ\r\nchỉ ngồi bên cạnh nhau thôi mà, chẳng cần phải nói ra\r\n\r\n[Hook - GREY D & CHILLIES]\r\nđưa em về, đưa em về (x4)\r\n\r\n[Outro - GREY D]\r\nđưa em về nhà (x3)\r\nđưa em về nhà..\r\nnhà anh.', NULL),
(10, 'Dự báo thời tiết hôm nay mưa', 2022, '/songs/du-bao-thoi-tiet-hom-nay-mua.mp3', 'Tiếng mưa rơi bên ngoài ô kính anh nhìn ra\r\nTiếng mưa như đang nhìn thấu tâm tình ta\r\nNhành hoa hướng dương kia nhạt đi, một màu hoa khác không như mọi khi\r\nHoặc chỉ là do tiếng mưa rơi làm cảm giác ta như vậy thôi?\r\nTiếng mưa rơi bên ngoài ô kính trong chiều nay\r\nSắp tan ca rồi nhưng làm sao đón em về đây?\r\nVì anh biết em sẽ làm ngơ, bỏ mặc anh dưới mưa ôm mộng mơ\r\nRồi cùng người yêu mới lạnh lùng đi về phía xa mờ\r\nMặt trời chẳng còn cần thiết\r\nChỉ một người biết làm điều gì để mưa hết rơi\r\nVà bài nhạc buồn này được viết bởi một gã si tình\r\nLiệu rằng giờ này người mới\r\nĐường về lạnh có thay cho em chiếc áo khi mưa ướt đôi vai?\r\nRồi nhẹ nhàng đặt một nụ hôn vào làn môi đã từng là của anh\r\nHết thứ hai ngày lại đến thứ ba\r\nGió cứ bay, dòng người vẫn cứ qua\r\nPhố sẽ đông vì trời có nắng mai\r\nCòn những lúc mưa ngoài đường chẳng có ai, woah\r\nNhững hạt mưa trên cây vẫn còn lay động\r\nLy rượu vang ở trên tay anh còn cay nồng\r\nMọi thứ vẫn cứ thế đêm ngày xoay vòng\r\nVì sao chỉ có mỗi em là thay lòng?\r\nOoh, mây màu đen ngoài ô cửa kính che từng ngôi nhà\r\nOoh, view này anh thường hay ngồi chill, em thì pha trà ấm\r\nCăn phòng hai người yên bình lắm\r\nChúng ta thường ra ngồi đây và ngắm mưa\r\nNhưng giờ đâu còn nữa đâu\r\nMặt trời chẳng còn cần thiết\r\nChỉ một người biết làm điều gì để mưa hết rơi\r\nVà bài nhạc buồn này được viết bởi một gã si tình\r\nLiệu rằng giờ này người mới\r\nĐường về lạnh có thay cho em chiếc áo khi mưa ướt đôi vai?\r\nRồi nhẹ nhàng đặt một nụ hôn vào làn môi đã từng\r\nAnh đã từng nghĩ suốt cuộc đời này em chỉ trao mình anh mà thôi\r\nLiệu rằng giờ này người mới\r\nĐường về lạnh có thay cho em chiếc áo khi mưa ướt đôi vai?\r\nRồi nhẹ nhàng đặt một nụ hôn\r\nVào làn môi đã từng là của riêng mình anh thôi.', NULL),
(11, 'Không Thể Say', 2023, '/songs/khong-the-say.mp3', 'Đã hơn một năm trôi qua\r\nMà mẹ vẫn thế cứ tiếc đôi ta xoá cả hình xăm trên da\r\nChuyện tình mình cũng chẳng thể phôi phai chắc cũng đã lâu anh không muốn say mà\r\nCuối cùng là hôm nay anh lại nhớ tới em\r\nCó thể sẽ phone cho em\r\nVà sẽ lại nói anh vẫn yêu em bấm chuông nhà em trong đêm\r\nVà hàng ngàn thứ biết chắc không nên hứa trong lòng anh sẽ không uống thêm được\r\nVì em là lý do số một làm cho anh không thể say\r\nAnh giờ đây thì vẫn đang cố quên những ngày ta còn được nằm ở bên\r\nCó thêm thành công hay kiếm thêm nhiều tiền\r\nĐược biết tên bởi nhiều người chẳng giúp anh nở nụ cười được nữa đâu\r\nBởi vì đăng sau ánh đèn ở cạnh anh thì chẳng có ai\r\nVà cũng đã cố gắng để yêu thêm rất nhiều mặc dù biết là điều đó sai\r\nCó lẽ anh chẳng thể yêu thêm\r\nGiờ mọi thông báo anh luôn mong là của em\r\nƯớt ở trên mi\r\nMỗi lần qua từng nơi dấu chân ta đi\r\nGiờ còn đâu tình yêu lúc không là gì\r\nUống thêm là vì\r\nNước mắt anh rơi vào tận trong ly\r\nChúng ta không sai\r\nNhưng giờ đây làm sao để em quay lại\r\nNhà và xe làm chi ngóng trông em hoài\r\nThức cả đêm dài\r\nMuốn em bên anh phải gọi thêm chai\r\nĐã hơn một năm trôi qua\r\nMà mẹ vẫn thế cứ tiếc đôi ta xoá cả hình xăm trên da\r\nChuyện tình mình cũng chẳng thể phôi phai chắc cũng đã lâu anh không muốn say mà\r\nCuối cùng là hôm nay anh lại nhớ tới em\r\nCó thể sẽ phone cho em\r\nVà sẽ lại nói anh vẫn yêu em bấm chuông nhà em trong đêm\r\nVà hàng ngàn thứ biết chắc không nên hứa trong lòng anh sẽ không uống thêm được\r\nVì em là lý do số một làm cho anh không thể say\r\nBiết chắc chắn chẳng thể nào lại gặp nhau ở trên đường đời\r\nVà chỉ muốn ước mai sau em sẽ gặp thêm một ai tuyệt vời\r\nAnh cũng sẽ đi tiếp tục\r\nChẳng tổn thương người đến sau nhiều như em\r\nVì anh đã từng thấy em đây phải đau\r\nKhóc khi ta cãi nhau\r\nChẳng thể ngủ được đâu\r\nVà mắt sưng qua ngày sau cũng chẳng thể níu thêm chi\r\nChi bằng hãy giữ lấy nước mắt em đi\r\nƯớt ở trên mi\r\nMỗi lần qua từng nơi dấu chân ta đi\r\nGiờ còn đâu tình yêu lúc không là gì\r\nUống thêm là vì\r\nNước mắt anh rơi vào tận trong ly\r\nChúng ta không sai\r\nNhưng giờ đây làm sao để em quay lại\r\nNhà và xe làm chi ngóng trông em hoài\r\nThức cả đêm dài\r\nMuốn em bên anh phải gọi thêm chai\r\nTừng hứa bao nhiêu câu giờ cũng không bên nhau\r\nChẳng biết hôm chia tay em đã ngồi khóc trong bao lâu\r\nLúc đó đủ can đảm đâu mà nhìn lại\r\nCố gắng hết bao nhiêu và cũng xa nhau mãi\r\nĐã hơn một năm trôi qua\r\nMà mẹ vẫn thế cứ tiếc đôi ta xoá cả hình xăm trên da\r\nChuyện tình mình cũng chẳng thể phôi pha chắc cũng đã lâu anh không muốn say mà\r\nCuối cùng là hôm nay anh lại nhớ tới em\r\nCó thể sẽ phone cho em\r\nVà sẽ lại nói anh vẫn yêu em bấm chuông nhà em trong đêm\r\nVà hàng ngàn thứ biết chắc không nên hứa trong lòng anh sẽ không uống thêm được (trong đêm)\r\nVì em là lý do số một làm cho anh không thể say', NULL),
(12, 'Muộn rồi mà sao còn', 2021, '/songs/muon-roi-ma-sao-con.mp3', 'Muộn rồi mà sao còn\r\nNhìn lên trần nhà rồi quay ra lại quay vào\r\nNằm trằn trọc vậy đến sáng mai\r\nÔm tương tư nụ cười của ai đó\r\nLàm con tim ngô nghê như muốn khóc oà\r\nVắt tay lên trên trán mơ mộng\r\nĐược đứng bên em trong nắng xuân hồng\r\nMột giờ sáng\r\nTrôi qua trôi nhanh kéo theo ưu phiền miên man\r\nÂm thầm gieo tên em vẽ lên hi vọng\r\nĐúng là yêu thật rồi còn không thì hơi phí này\r\nCứ thế loanh quanh loanh quanh loanh quanh lật qua lật lại hai giờ\r\nNhững ngôi sao trên cao\r\nLà người bạn tâm giao\r\nLắng nghe anh luyên thuyên về một tình đầu đẹp tựa chiêm bao\r\nCó nghe thôi đã thấy ngọt ngào đủ biết anh si mê em nhường nào\r\nÍt khi văn thơ anh dạt dào bụng đói nhưng vui quên luôn cồn cào\r\nNắm đôi tay kiêu sa\r\nĐược một lần không ta\r\nNghĩ qua thôi con tim trong anh đập tung lên rung nóc rung nhà\r\nHoá ra yêu đơn phương một người\r\nHoá ra khi tơ vương một người\r\nBa giờ đêm vẫn ngồi cười\r\nCứ ôm anh đi ôm anh đi ôm anh đi ôm anh đi\r\nÔm trong cơn mơ trong cơn mơ trong cơn mơ ôm trong cơn mơ\r\nCó thế cũng khiến anh vui điên lên\r\nNgỡ như em đang bên\r\nChắp bút đôi ba câu thơ ngọt ngào\r\nMuốn em đặt tên\r\nCứ ôm anh đi ôm anh đi ôm anh đi ôm anh đi\r\nÔm trong giấc mơ trong cơn mơ trong cơn mơ ôm trong cơn mơ\r\nYêu đến vậy thôi phát điên rồi làm sao giờ\r\nChịu\r\nĐêm nay không ngủ tay kê lên tủ\r\nMiên man anh tranh thủ\r\nChơi vơi suy tư bao nhiêu cho đủ\r\nYêu em ngu ngơ mình tôi\r\nYêu không quan tâm ngày trôi\r\nYêu ánh mắt bờ môi\r\nYêu đơn phương vậy thôi\r\nLại còn chối\r\nCon tim thẹn thùng đập lạc lối liên hồi\r\nĐừng chày cối\r\nMiệng cười cả ngày vậy là chết toi rồi\r\nNgày càng nhiều thêm\r\nTình yêu cho em ngày càng nhiều thêm\r\nMuốn nắm đôi bàn tay đó một lần\r\nDu dương chìm sâu trong từng câu ca dịu êm\r\nNhững ngôi sao trên cao là người bạn tâm giao\r\nLắng nghe anh luyên thuyên về một tình đầu đẹp tựa chiêm bao\r\nCó nghe tôi đã thấy ngọt ngào đủ biết anh si mê em nhường nào\r\nÍt khi văn thơ anh dạt dào bụng đói nhưng vui quên luôn cồn cào\r\nNắm đôi tay kiêu sa\r\nĐược một lần không ta\r\nNghĩ qua thôi con tim trong anh đập tung lên rung nóc rung nhà\r\nHoá ra yêu đơn phương một người\r\nHoá ra khi tơ vương một người\r\nBa giờ đêm vẫn ngồi cười\r\nCứ ôm anh đi ôm anh đi ôm anh đi ôm anh đi\r\nÔm trong cơn mơ trong cơn mơ trong cơn mơ ôm trong cơn mơ\r\nCó thế cũng khiến anh vui điên lên\r\nNgỡ như em đang bên\r\nChắp bút đôi ba câu thơ ngọt ngào\r\nMuốn em đặt tên\r\nCứ ôm anh đi ôm anh đi ôm anh đi ôm anh đi\r\nÔm trong giấc mơ trong cơn mơ trong cơn mơ ôm trong cơn mơ\r\nYêu đến vậy thôi phát điên rồi làm sao giờ\r\nEm xinh như một thiên thần\r\nNhư một thiên thần\r\nNhư một thiên thần\r\nNgỡ như em là thiên thần\r\nXinh như một thiên thần\r\nNhư một thiên thần\r\nEm xinh như một thiên thần\r\nNhư một thiên thần\r\nNhư một thiên thần\r\nNgỡ như em là thiên thần\r\nNgỡ như ngỡ như\r\nNgỡ như ngỡ như ngỡ như\r\nCứ ôm anh đi ôm anh đi ôm anh đi ôm anh đi\r\nÔm trong cơn mơ trong cơn mơ trong cơn mơ ôm trong cơn mơ\r\nCó thế cũng khiến anh vui điên lên\r\nNgỡ như em đang bên\r\nChắp bút đôi ba câu thơ ngọt ngào\r\nMuốn em đặt tên\r\nCứ ôm anh đi ôm anh đi ôm anh đi ôm anh đi\r\nÔm trong giấc mơ trong cơn mơ trong cơn mơ ôm trong cơn mơ\r\nYêu đến vậy thôi phát điên rồi làm sao giờ', NULL),
(13, 'Nếu ngày ấy', 2019, '/songs/neu-ngay-ay.mp3', 'Cách đây vài năm thôi, lúc ấy anh vừa biết lớn\r\nGặp em ngẩn ngơ thẩn thơ trong chiều\r\nÊ a chẳng nói được nhiều\r\nEm ngây thơ hồn nhiên và đôi mắt sáng như chưa từng yêu\r\nNgại ngùng anh chẳng dám nói\r\nNên câu chuyện tình chơi vơi\r\nEm đâu nào biết, anh vẫn luôn ở đây\r\nNhìn từ xa theo bóng em nhạt nhòa\r\nĐể tháng năm dài trôi qua\r\nNếu ngày ấy anh ngỏ lời thương và yêu đậm sâu với em\r\nEm có tin anh và nắm tay anh?\r\nMình cùng đi qua từng mùa đông rét buốt\r\nNếu ngày ấy anh là chàng trai mà em ngày đêm ước ao\r\nDẫu nắng hay mưa dù có ra sao\r\nThì giờ đây anh đã có câu chuyện thật đẹp\r\nCách đây vài năm thôi, lúc ấy anh vừa biết lớn\r\nGặp em ngẩn ngơ thẩn thơ trong chiều\r\nÊ a chẳng nói được nhiều\r\nEm ngây thơ hồn nhiên và đôi mắt sáng như chưa từng yêu\r\nNgại ngùng anh chẳng dám nói\r\nNên câu chuyện tình chơi vơi\r\nEm đâu nào biết, anh vẫn luôn ở đây\r\nNhìn từ xa theo bóng em nhạt nhòa\r\nĐể tháng năm dài, tháng năm dài trôi qua\r\nNếu ngày ấy anh ngỏ lời thương và yêu đậm sâu với em\r\nEm có tin anh và nắm tay anh\r\nMình cùng đi qua từng mùa đông rét buốt\r\nNếu ngày ấy anh là chàng trai mà em ngày đêm ước ao\r\nDẫu nắng hay mưa dù có ra sao\r\nThì giờ đây anh đã có câu chuyện thật đẹp\r\nSau tiếng cười cho em\r\nLà anh bước đi ngậm ngùi\r\nSau ánh mắt cười của anh còn gì ngoài bao tiếc nuối\r\nChiều nay gió cuốn lá chợt về lao xao\r\nChuyện tình yêu xin giữ lại thành chiêm bao\r\nMột giấc mơ êm đềm dành cho nhau\r\nNếu ngày ấy anh ngỏ lời thương và yêu đậm sâu với em\r\nEm có tin anh và nắm tay anh?\r\nMình cùng đi qua từng mùa đông rét buốt\r\nNếu ngày ấy anh là chàng trai mà em ngày đêm ước ao\r\nDẫu nắng hay mưa dù có ra sao\r\nThì giờ đây anh đã có câu chuyện thật đẹp\r\nDẫu nắng hay mưa dù có ra sao\r\nThì giờ đây anh đã có\r\nCâu chuyện thật đẹp', NULL),
(14, 'Phía sau một cô gái ', 2016, '/songs/phia-sau-mot-co-gai.mp3', 'Nhiều khi anh mong\r\nĐược một lần nói ra\r\nHết tất cả thay vì\r\nNgồi lặng im nghe em\r\nKể về anh ta\r\nBằng đôi mắt lấp lánh\r\nĐôi lúc em tránh\r\nÁnh mắt của anh\r\nVì dường như lúc nào\r\nEm cũng hiểu thấu lòng anh\r\nKhông thể ngắt lời\r\nCàng không thể để\r\nGiọt lệ nào được rơi\r\nNên anh lùi bước về sau\r\nĐể thấy em rõ hơn\r\nĐể có thể ngắm em\r\nTừ xa âu yếm hơn\r\nCả nguồn sống\r\nBỗng chốc thu bé lại\r\nVừa bằng một cô gái\r\nHay anh vẫn sẽ\r\nLặng lẽ kế bên\r\nDù không nắm tay\r\nNhưng đường chung\r\nMãi mãi\r\nVà từ ấy ánh mắt anh\r\nHồn nhiên đến lạ\r\nChẳng một ai có thể\r\nCản được trái tim\r\nKhi đã lỡ yêu rồi\r\nĐừng ai can ngăn tôi\r\nKhuyên tôi buông xuôi\r\nVì yêu không có lỗi\r\nAi cũng ước muốn\r\nKhao khát được yêu\r\nĐược chờ mong tới giờ\r\nAi nhắc đưa đón buổi chiều\r\nMỗi sáng thức dậy\r\nĐược ngắm một người\r\nNằm cạnh ngủ say\r\nNên anh lùi bước về sau\r\nĐể thấy em rõ hơn\r\nĐể có thể ngắm em\r\nTừ xa âu yếm hơn\r\nCả nguồn sống\r\nBỗng chốc thu bé lại\r\nVừa bằng một cô gái\r\nHay anh vẫn sẽ\r\nLặng lẽ kế bên\r\nDù không nắm tay\r\nNhưng đường chung\r\nMãi mãi\r\nVà từ ấy ánh mắt anh\r\nHồn nhiên đến lạ\r\nNên anh lùi bước về sau\r\nĐể thấy em rõ hơn\r\nĐể có thể ngắm em\r\nTừ xa âu yếm hơn (ooh)\r\nCả nguồn sống (cả nguồn sống)\r\nBỗng chốc thu bé lại (bé lại)\r\nVừa bằng một cô gái oh\r\nHay anh vẫn sẽ lặng lẽ kế bên\r\nDù không nắm tay nhưng\r\nĐường chung mãi mãi\r\nVà từ ấy ánh mắt anh\r\nHồn nhiên đến lạ\r\nVì sao anh không thể\r\nGặp được em sớm hơn', NULL),
(15, '3107', 2020, '/songs/3107.mp3', 'Đêm dần buông\r\nChỉ có đôi ta đứng đây hơi buồn\r\nNgấm hết những suy tư của ngày hôm qua vừa đây đã xa\r\nRiêng mình ta\r\nVẫn mãi lang thang dưới ánh chiều tà\r\nVẫn nỗi nhớ miên man\r\nKý ức bên em bây giờ đang ở một nơi xa\r\nChỉ cần bên nhau như những ngày ấy\r\nAnh sẽ cùng em đi hết tháng ngày\r\nĐể trong cơn mơ anh chẳng tìm thấy\r\nĐể anh bơ vơ mãi phút nơi đây\r\nTình yêu khi xưa đôi ta vụn vỡ\r\nTrong một chiều mưa hai đứa chia tay\r\nChỉ cần cho anh được thêm một chút\r\nCho anh được gần bên em\r\nXin lỗi vì những cuộc điện thoại\r\nĐã làm phiền em với nửa kia\r\nDưới góc phố lặng thinh\r\nTiếng bước chân chậm chạp lúc giữa khuya\r\nTất nhiên thì anh cũng như họ\r\nChọn buông bỏ để em thấy yên bình\r\nCòn riêng phần anh thì lại thầm trách mọi thứ trái ngược với duyên tình em\r\nLúc mình buồn nhìn trời và thở hắt\r\nMưa tháng bảy là cơn buồn dào dạt lẫn vị tình yêu mà anh đã lỡ mất\r\nHẳn ai cũng từng nếm phải cảm giác trống trải trong lòng mình em ha\r\nNhư em cũng từng đau khổ vì họ rồi lại thức trắng bao đêm qua\r\nNếu ta có dịp ngồi lại\r\nThì anh xin phép kể cho em nghe\r\nBình yên của anh thì cũng giống như họ là có em ngồi phía sau xe\r\nLà buộc phải cố lượm lặt được hết những thứ trước kia đã xa mình\r\nLà em hồi đó hay là anh bây giờ cô đơn đứng giữa ngã ba tình\r\nHoàng hôn tháng bảy chưa bao giờ giết chết trái tim buồn bã đã cũ mềm\r\nBầu trời đêm nay lại có mưa rơi qua một ô cửa đã phủ rèm em\r\nAnh còn chẳng dám khẳng định mình đã nhớ em về bao nhiêu đêm\r\nNhưng sau tất cả thì chỉ có anh và anh tự buộc mình yêu em yeah\r\nChỉ cần bên nhau như những ngày ấy\r\nAnh sẽ cùng em đi hết tháng ngày\r\nDù chờ ngàn năm anh vẫn ở đấy\r\nDù anh đã cố gắng nghĩ đến em\r\nRồi trong nhân gian bao nhiêu người đến\r\nThanh xuân này anh chỉ muốn bên em\r\nDìu nhau đi qua những con phố dài\r\nChỉ yêu đôi ta chẳng biết đúng sai\r\nVì sao\r\nĐêm chờ đông\r\nGió vẫn lao xao khiến ta thêm sầu\r\nGiấu ký ức nơi đây vào gọn trong tim\r\nRồi mai đổi thay\r\nRiêng mình ta\r\nVẫn mãi cô đơn dưới ánh trăng vàng\r\nVẫn nỗi nhớ khi xưa\r\nNhững lúc bên em\r\nBây giờ đang ở một nơi xa', NULL),
(16, '3107 2', 2021, '/songs/3107-2.mp3', 'Đến bao giờ mới có thể quên đi những con đường mà ta đã qua\r\nĐến bao giờ mới có thể yêu một người đến sau\r\nĐến bao giờ mới có thể quên đi những kỷ niệm mà ta đã trao\r\nVà nếu hôm nay là ngày, mà chũng ta đã rời xa\r\n\r\nChorus:\r\nChỉ cần ai đó cạnh bên dừng lại, và níu lấy em chỉ một phút giây\r\nDù là có đúng hay sai\r\nVẫn cứ yêu thêm một lần chẳng cần nghi ngại\r\nNgày dài vẫn thế cứ thế trôi hoài\r\nLạc mất nhau sao mình còn đi mãi\r\nNơi anh đến sẽ là\r\nMột nơi chẳng còn có anh\r\n\r\nRap:\r\nAnh có bàn tay để nắm tất cả nhưng không thể nắm được tay em\r\nAnh có niềm tin là thứ duy nhất ở lại cuối cùng\r\nAnh đã từng có khoảng trời của mình nhưng giờ chỉ toàn đám mây đen\r\nLà những quán quen mà mình thường ghé vào dịp cuối tuần\r\nAnh thấy không ổn\r\nNhưng vẫn cố tỏ ra không sao\r\nĐiều tệ nhất là em đi mất - chỉ còn điếu thuốc cuối cùng trong bao\r\nMưa cũng chẳng giúp anh được gì ngoài việc làm ướt đi áo sơ mi\r\nThắt cà vạt chỉnh chu lại áo nhưng cuối cùng vẫn bị anh lơ đi\r\n\r\nVerse 1\r\nRadio voice\r\n\"Đến bao giờ mới có thể quên đi những con đường mà ta đã qua\r\nĐến bao giờ mới có thể yêu một người đến sau\"\r\n\"Đến bao giờ mới có thể quên đi những câu chuyện mà ta đã trao\r\nVà nếu hôm nay là ngày, mà chũng ta đã rời xa\"\r\n\r\nChorus:\r\nChỉ cần ai đó cạnh bên dừng lại, và níu lấy em chỉ một phút giây\r\nDù là có đúng hay sai\r\nVẫn cứ yêu thêm một lần chẳng cần nghi ngại\r\nNgày dài vẫn thế cứ thế trôi hoài\r\nLạc mất nhau sao mình còn đi mãi\r\nNơi anh đến sẽ là\r\nMột nơi chẳng còn có anh\r\n\r\nVerse 2\r\nGiờ giọt nước mắt cứ thế lăng dài, ngày tháng trôi đi chẳng thể níu ai\r\nRồi ngày mai đến ra sao, khi cứ trông mong một người sẽ còn ở lại?\r\nNgày hạ năm ấy còn nhớ những gì, và chúng ta đã là hai thế giới?\r\nThế giới ấy bây giờ, chẳng còn điều gì giống anh', NULL),
(17, '3107 3', 2021, '/songs/3107-3.mp3', 'Xin lỗi em về những chuyện mà ta đã nghĩ\r\nXin lỗi em về những gì mà ta đã nói\r\nVì bao câu chuyện mình lúc xưa\r\nGiờ đây chẳng thể viết tiếp được\r\n\r\nChỉ là xa thôi mà, chẳng khi nào ta ngừng nghĩ đến nhau.\r\nBao tháng năm vô tư hồn nhiên biết mấy\r\nNhững chuyến xe ta đi cùng năm tháng ấy\r\nGiờ đây chỉ là những thước phim\r\n\r\nPhai mờ sâu vào những kỉ niệm\r\nĐiều duy nhất bây giờ, còn nhớ chỉ là vài câu\r\nXin lỗi vì những lời hứa, xin lỗi chẳng yêu được nữa\r\nXin lỗi vì em chẳng thể đến bên cạnh anh mỗi khi trời đổ mưa\r\n\r\nXin lỗi vì em đã đúng, xin lỗi vì anh đã sai\r\nXin lỗi vì ta chẳng thể đi cùng nhau để bây giờ cách xa\r\nVòng xe thứ nhất là đón đưa em qua từng điểm hẹn ngày đầu tiên\r\nGóc phố đèn mờ có ngọn đèn cũ thổi hồn nỗi buồn này vào tim\r\n\r\nVòng xe thứ hai là cùng với em đón nắng ngày xuân vào chiều tà\r\nLà thèm được nhớ nhưng rồi phải buông với họ gọi đó là yêu xa\r\nEm đâu hay biết, vẫn có người đứng chờ đợi em tới giữa khuya\r\nChỉ để quan tâm em dẫu biết rằng em đang bận lòng với nửa kia\r\n\r\nCùng một góc nhìn nhưng cảm xúc bây giờ dần trở nên vô vị\r\nĐứng trên dốc tình chỉ là mỗi góc nhìn để thấy được em và đô thị\r\nỞ trong thành phố, lòng đành cố gào thét khiến cổ họng khát khô\r\nBây giờ là một giờ sáng, cafe đậm hòa cùng gói Bastos\r\n\r\nAnh từng sống trong tim em, quá thời hạn nhưng rồi phải ra đi\r\nThành phố hồi đó có trời gió và em còn hơn cả Paris\r\n“Anh cũng chỉ nghĩ về những thứ mơ mộng thôi\r\n\r\nDẫu biết thực tế khác xa vời vợi rồi\r\nCũng chả rõ mình đã nhớ em về bao nhiêu đêm\r\nNhưng mà ít nhiều gì thì anh cũng đã từng là một người rất yêu em”', NULL),
(18, '3107 4', 2022, '/songs/3107-4.mp3', 'Bầu trời xanh ngắt\r\nMình anh đứng giữa cơn mơ\r\nDưới những màn đêm chỉ có riêng anh mãi chờ\r\nNgày em bước đến\r\nLàm con tim anh ấm lên\r\nChỉ mong đôi ta chẳng phải cách xa\r\nCứ như vậy mỗi ngày cứ hoài trôi đi\r\nChính em là những người khiến anh đổi thay\r\nChẳng có gì nuối tiếc khi em ở bên cạnh anh\r\nĐến bây giờ kỷ niệm chỉ là hư vô\r\nCầm bàn tay khi xưa đã xa nơi đây\r\nNăm ấy đôi ta đã có nhau mà\r\nAnh đang không biết điều gì khiến mình buồn và rồi cuốn vào vòng xoay\r\nKêu cô ta tắt màn hình chờ mỗi lần hẹn hò vẫn còn cầm tay\r\nAnh đâu còn thì giờ thay vì đợi chờ hay là nhắc về người ấy\r\nEm đâu còn tin vào anh, vào em, vào tất cả những gì mình thấy\r\nPick up your phone, em có nghe được giọng anh nói, giọng anh nói qua điện thoại\r\nAnh vẫn đang có vài câu hỏi, anh không dám nói qua điện thoại\r\nTình ca buồn và cafe gói, không chánh án, không kiện tội\r\nNếu em bận thì đừng nghe máy\r\nAnh cũng rất vui\r\nOkay anh rất hài lòng khi được gặp em\r\nAnh bận bôn ba vì sợ giông tố ngày mai sẽ ập đến\r\nAnh không quan tâm chi mấy đến chuyện sau này xin gặp nhau\r\nNhưng mà cứ dưới nước thì biết bao giờ con thuyền của mình mới được gặp bến?\r\nAnh vẫn đang sống như em\r\nKhông phải tồn tại\r\nCho đến khi em mập mờ quay đi bỏ đi\r\nNhững ngày còn lại anh không biết đã làm những gì khiến em nghi ngờ nhưng mà không tin cứ chờ xem\r\nĐến khi thành phố của mình tắt đèn\r\nAnh lại vội đi tìm em\r\nCứ như vậy mỗi ngày cứ hoài trôi đi\r\nChính em là những người khiến anh đổi thay\r\nChẳng có gì nuối tiếc khi em ở bên cạnh anh\r\nĐến bây giờ kỷ niệm chỉ là hư vô\r\nCầm bàn tay khi xưa đã xa nơi đây\r\nNăm ấy đôi ta đã có nhau mà\r\nChỉ là nỗi nhớ\r\nMà anh cất giữ bao lâu\r\nNhững giấc ngủ say\r\nNgười ấy theo ai mất rồi\r\nNgày em bước đến\r\nLàm con tim anh ngấm lệ\r\nChỉ mong đôi ta chẳng phải cách xa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `songs_artists`
--

CREATE TABLE `songs_artists` (
  `songId` int(11) NOT NULL,
  `artistId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs_artists`
--

INSERT INTO `songs_artists` (`songId`, `artistId`) VALUES
(1, 1),
(2, 3),
(2, 5),
(3, 3),
(3, 6),
(4, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 3),
(9, 7),
(10, 3),
(11, 4),
(12, 1),
(13, 2),
(14, 2),
(15, 8),
(15, 9),
(15, 10),
(16, 8),
(16, 9),
(16, 10),
(17, 8),
(17, 9),
(17, 10),
(17, 11),
(18, 8),
(18, 10),
(18, 12);

-- --------------------------------------------------------

--
-- Table structure for table `songs_genres`
--

CREATE TABLE `songs_genres` (
  `songId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs_genres`
--

INSERT INTO `songs_genres` (`songId`, `genreId`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 4),
(8, 1),
(8, 3),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 2),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 3),
(18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `email`, `role`, `createdAt`, `updatedAt`) VALUES
('admin', 'admin', 'admin', 'admin@gmail.com', 'ADMIN', '2024-04-24 14:21:31', NULL),
('client', 'client', 'client', 'client@gmail.com', 'USER', '2024-05-05 16:08:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`userId`,`songId`),
  ADD KEY `song_id` (`songId`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`userId`);

--
-- Indexes for table `playlists_songs`
--
ALTER TABLE `playlists_songs`
  ADD PRIMARY KEY (`playlistId`,`songId`),
  ADD KEY `songId` (`songId`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs_artists`
--
ALTER TABLE `songs_artists`
  ADD PRIMARY KEY (`songId`,`artistId`),
  ADD KEY `artist_id` (`artistId`);

--
-- Indexes for table `songs_genres`
--
ALTER TABLE `songs_genres`
  ADD PRIMARY KEY (`songId`,`genreId`),
  ADD KEY `genre_id` (`genreId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`);

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`username`);

--
-- Constraints for table `playlists_songs`
--
ALTER TABLE `playlists_songs`
  ADD CONSTRAINT `playlists_songs_ibfk_1` FOREIGN KEY (`playlistId`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlists_songs_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `songs_artists`
--
ALTER TABLE `songs_artists`
  ADD CONSTRAINT `songs_artists_ibfk_1` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`),
  ADD CONSTRAINT `songs_artists_ibfk_2` FOREIGN KEY (`artistId`) REFERENCES `artists` (`id`);

--
-- Constraints for table `songs_genres`
--
ALTER TABLE `songs_genres`
  ADD CONSTRAINT `songs_genres_ibfk_1` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`),
  ADD CONSTRAINT `songs_genres_ibfk_2` FOREIGN KEY (`genreId`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
