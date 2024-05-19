-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 09:05 AM
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
  `gender` int(11) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `fullname`, `gender`, `nationality`, `image`) VALUES
(13, 'GREY D', 1, 'Việt Nam', NULL),
(14, 'tlinh', 0, 'Việt Nam', NULL),
(15, 'W/n', 1, 'Việt Nam', NULL),
(16, 'Nâu', 1, 'Việt Nam', NULL),
(17, 'Duongg', 1, 'Việt Nam', NULL),
(18, 'RHYDER', 1, 'Việt Nam', NULL),
(19, 'BAN', 1, 'Việt Nam', NULL),
(20, 'COOLKID', 1, 'Việt Nam', NULL),
(21, 'Changg', 0, 'Việt Nam', NULL),
(22, 'Văn Mai Hương', 0, 'Việt Nam', NULL),
(23, 'Vũ', 1, 'Việt Nam', NULL),
(24, 'MONO', 1, 'Việt Nam', NULL),
(25, 'SOOBIN', 1, 'Việt Nam', NULL),
(26, '267', 0, 'Việt Nam', NULL),
(27, 'HIEUTHUHAI', 1, 'Việt Nam', NULL),
(28, 'Sơn Tùng MTP', 1, 'Việt Nam', NULL),
(29, 'MCK', 1, 'Việt Nam', NULL),
(30, 'Trung Trần', 1, 'Việt Nam', NULL),
(31, 'Tăng Duy Tân', 1, 'Việt Nam', NULL),
(32, 'Trịnh Thăng Bình', 1, 'Việt Nam', NULL),
(33, 'Vũ Phụng Tiên', 0, 'Việt Nam', NULL),
(34, 'DT Tập Rap', 1, 'Việt Nam', NULL),
(35, 'DRUM7', 1, 'Việt Nam', NULL),
(36, 'Chi Dân', 1, 'Việt Nam', NULL),
(37, 'Huyền Tâm Môn', 0, 'Việt Nam', NULL),
(38, 'Phương Ly', 0, 'Việt Nam', NULL),
(39, 'JustaTee', 1, 'Việt Nam', NULL),
(40, 'negav', 1, 'Việt Nam', NULL),
(41, 'Orange', 0, 'Việt Nam', NULL),
(42, 'Saa', 0, 'Việt Nam', NULL),
(43, 'Châu Khải Phong', 1, 'Việt Nam', NULL),
(44, 'Ngọc Kara', 0, 'Việt Nam', NULL),
(45, 'Andree Right Hand', 1, 'Việt Nam', NULL),
(46, 'Quang Hùng MasterD', 1, 'Việt Nam', NULL),
(47, 'Yan Nguyễn', 1, 'Việt Nam', NULL),
(48, 'Erik', 1, 'Việt Nam', NULL),
(49, 'Mr. Siro', 1, 'Việt Nam', NULL),
(50, 'Lynk Lee', 0, 'Việt Nam', NULL),
(51, 'Snoop Dogg', 1, 'Amenica', NULL),
(52, 'Rihanna', 0, 'Barbados', NULL),
(53, 'Calvin Harris', 1, 'Scotland', NULL),
(54, 'The Cab', 2, 'America', NULL),
(55, 'Marshmello', 1, 'America', NULL),
(56, 'Sia', 0, 'Australia', NULL),
(57, 'Vicetone', 2, 'Netherlands', NULL),
(58, 'Justin Bieber', 1, 'Canada', NULL),
(59, 'Why don\'t we', 2, 'America', NULL),
(60, 'Charlie Puth', 1, 'America', NULL),
(61, 'Sean Paul', 1, 'Jamaica', NULL),
(62, 'JVKE', 1, 'America', NULL),
(63, 'Alessia Cara', 0, 'Canada', NULL),
(64, 'Imagine Dragons', 2, 'America', NULL),
(65, 'Kat Nestel', 0, 'America', NULL),
(66, 'Avicii', 1, 'Sweden', NULL),
(67, 'Alan Walker', 1, 'United Kingdom', NULL),
(68, 'Tungevaag', 1, 'Norway', NULL),
(69, 'K-391', 1, 'Norway', NULL),
(70, 'Mangoo', 1, 'France', NULL),
(71, 'SEUNGRI', 1, 'North Korea', NULL),
(72, 'Julie Bergan', 0, 'Norway', NULL),
(73, 'Rival', 1, 'Germany', NULL),
(74, 'Cadmium', 1, 'America', NULL),
(75, 'Harley Bird', 1, 'America', NULL),
(76, 'Zedd', 1, 'Russia', NULL),
(77, 'Jon Bellion', 1, 'America', NULL),
(78, 'Axwell & Ingrosso', 2, 'Sweden', NULL),
(79, 'Luis Fonsi', 1, 'Puerto Rico', NULL),
(80, 'Daddy Yankee', 1, 'Puerto Rico', NULL),
(81, 'Ed Sheeran', 1, 'United Kingdom', NULL),
(82, 'Tomine Harket', 0, 'United Kingdom', NULL),
(83, 'Au/Ra', 0, 'Spain', NULL),
(84, 'Lumix', 1, 'Austria', NULL),
(85, 'Gabry Ponte', 1, 'Italy', NULL),
(86, 'Mohombi', 1, 'Sweden', NULL),
(87, 'Lost Frequencies', 1, 'Belgium', NULL),
(88, 'Max Oazo', 1, 'Russia', NULL),
(89, 'Japandee', 1, 'Việt Nam', NULL),
(90, 'Deep Chills', 1, 'Italy', NULL),
(91, 'Ivie', 0, 'Norway', NULL),
(92, 'Jeremih', 1, 'America', NULL),
(93, 'The Chainsmokers', 2, 'America', NULL),
(94, 'Coldplay', 2, 'England', NULL),
(95, 'Taylor Swift', 0, 'America', NULL),
(96, 'One Direction', 2, 'England', NULL),
(97, 'FIFTY FIFTY', 2, 'Korea', NULL),
(98, 'Mako', 1, 'America', NULL),
(99, 'The Word Alive', 2, 'America', NULL),
(100, 'The Glitch Mob', 2, 'America', NULL),
(101, 'NewJeans', 2, 'Korea', NULL),
(102, 'Cailin Russo', 0, 'America', NULL),
(103, 'Chrissy Costanza', 0, 'America', NULL),
(104, 'Against The Current', 2, 'America', NULL),
(105, 'PVRIS', 2, 'America', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `userId` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(5, 'V-pop'),
(6, 'Rap'),
(7, 'R&B'),
(8, 'Indie Việt'),
(9, 'Ballad'),
(10, 'Hip hop'),
(11, 'Remix'),
(12, 'Trap'),
(13, 'Electronic'),
(14, 'Rock'),
(15, 'EDM'),
(16, 'Pop'),
(17, 'Dance'),
(18, 'K-pop');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `userId` int(11) NOT NULL
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
-- Table structure for table `play_history`
--

CREATE TABLE `play_history` (
  `userId` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playCount` int(11) NOT NULL,
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
  `releasedYear` int(11) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `bpm` int(11) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `danceability` int(11) DEFAULT NULL,
  `energy` int(11) DEFAULT NULL,
  `acousticness` int(11) DEFAULT NULL,
  `instrumentalness` int(11) DEFAULT NULL,
  `liveness` int(11) DEFAULT NULL,
  `speechiness` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `releasedYear`, `audio`, `image`, `mode`, `bpm`, `popularity`, `happiness`, `danceability`, `energy`, `acousticness`, `instrumentalness`, `liveness`, `speechiness`) VALUES
(19, 'vaicaunoicokhiennguoithaydoi', 2022, NULL, NULL, 'Major', 174, 64, 55, 55, 42, 89, 0, 11, 28),
(20, '3107', 2020, NULL, NULL, 'Major', 124, 60, 48, 79, 46, 85, 0, 18, 6),
(21, 'Chịu cách mình nói thua', 2023, NULL, NULL, 'Minor', 154, 66, 34, 63, 70, 15, 0, 11, 3),
(22, 'Em không hiểu', 2021, NULL, NULL, 'Major', 186, 58, 39, 51, 48, 87, 0, 10, 5),
(23, 'Mưa tháng sáu', 2023, NULL, NULL, 'Minor', 140, 55, 28, 62, 43, 80, 0, 37, 6),
(24, 'Những lời hứa bỏ quên', 2023, NULL, NULL, 'Major', 135, 69, 34, 54, 66, 72, 0, 13, 3),
(25, 'Nếu lúc đó', 2023, NULL, NULL, 'Major', 140, 62, 35, 63, 62, 33, 0, 16, 3),
(26, 'Waiting for you', 2022, NULL, NULL, 'Minor', 150, 53, 45, 67, 73, 12, 0, 12, 3),
(27, 'Giá như', 2024, NULL, NULL, 'Minor', 125, 63, 45, 75, 47, 21, 0, 8, 4),
(28, 'id 2022', 2023, NULL, NULL, 'Major', 140, 58, 35, 74, 40, 91, 0, 6, 4),
(29, 'Không thể say', 2023, NULL, NULL, 'Major', 145, 64, 64, 68, 64, 25, 0, 21, 4),
(30, 'Chúng ta của tương lai', 2024, NULL, NULL, 'Major', 146, 5, 49, 69, 56, 79, 1, 12, 8),
(31, 'Nếu ngày ấy', 2019, NULL, NULL, 'Major', 130, 53, 54, 54, 54, 68, 0, 11, 3),
(32, 'Chìm sâu', 2023, NULL, NULL, 'Major', 204, 63, 50, 60, 49, 59, 0, 12, 5),
(33, 'Cắt đôi nỗi sầu', 2023, NULL, NULL, 'Minor', 120, 53, 58, 91, 57, 77, 2, 10, 5),
(34, 'Người ấy', 2017, NULL, NULL, 'Major', 110, 46, 41, 64, 50, 67, 0, 10, 3),
(35, 'Lệ Lưu Ly', 2023, NULL, NULL, 'Minor', 95, 64, 62, 77, 44, 79, 5, 11, 7),
(36, 'Dạ vũ', 2021, NULL, NULL, 'Minor', 111, 46, 85, 81, 69, 36, 50, 37, 3),
(37, 'Sự thật sau một lời hứa', 2014, NULL, NULL, 'Minor', 104, 18, 36, 65, 44, 66, 0, 12, 2),
(38, 'Lần hẹn hò đầu tiên', 2021, NULL, NULL, 'Major', 106, 22, 25, 79, 60, 61, 0, 17, 5),
(39, 'Nơi này có anh', 2017, NULL, NULL, 'Major', 92, 56, 33, 52, 85, 5, 0, 14, 3),
(40, 'Lạc trôi', 2016, NULL, NULL, 'Minor', 135, 27, 17, 64, 87, 33, 3, 13, 4),
(41, 'Buông đôi tay nhau ra', 2017, NULL, NULL, 'Minor', 111, 55, 63, 71, 72, 64, 52, 11, 3),
(42, 'Hãy trao cho anh', 2019, NULL, NULL, 'Minor', 96, 49, 83, 71, 72, 9, 0, 16, 4),
(43, 'Âm thầm bên em', 2017, NULL, NULL, 'Major', 140, 57, 11, 50, 46, 88, 0, 13, 3),
(44, 'Chạy ngay đi', 2018, NULL, NULL, 'Minor', 127, 45, 45, 73, 81, 42, 0, 9, 5),
(45, 'Khuôn mặt đáng thương', 2017, NULL, NULL, 'Minor', 95, 42, 55, 73, 91, 16, 4, 17, 5),
(46, 'Vài lần đón đưa', 2017, NULL, NULL, 'Minor', 135, 55, 43, 72, 67, 56, 0, 19, 6),
(47, 'Tháng năm', 2020, NULL, NULL, 'Minor', 147, 53, 25, 67, 62, 13, 0, 5, 4),
(48, 'Đi để trở về', 2017, NULL, NULL, 'Major', 96, 54, 67, 73, 43, 50, 0, 19, 3),
(49, 'Người tôi yêu', 2013, NULL, NULL, 'Minor', 95, 29, 52, 63, 46, 75, 0, 9, 2),
(50, 'Làm vợ anh nhé', 2020, NULL, NULL, 'Major', 200, 15, 22, 39, 39, 81, 0, 9, 4),
(51, 'Anh không sao đâu', 2016, NULL, NULL, 'Major', 74, 25, 32, 47, 37, 78, 0, 16, 3),
(52, 'Thằng điên', 2022, NULL, NULL, 'Major', 140, 62, 57, 63, 50, 36, 0, 8, 4),
(53, 'Dự báo thời tiết hôm nay mưa', 2022, NULL, NULL, 'Major', 77, 60, 26, 58, 56, 63, 0, 9, 4),
(54, 'Ngủ một mình', 2022, NULL, NULL, 'Minor', 100, 61, 53, 78, 48, 18, 0, 9, 3),
(55, 'Bên trên tầng lầu', 2202, NULL, NULL, 'Major', 51, 62, 89, 65, 73, 3, 3, 15, 11),
(56, 'Em là', 2022, NULL, NULL, 'Minor', 180, 54, 29, 63, 70, 21, 0, 9, 11),
(57, 'Em hát ai nghe', 2021, NULL, NULL, 'Minor', 118, 51, 48, 48, 34, 81, 0, 11, 3),
(58, 'Lạ lùng', 2016, NULL, NULL, 'Major', 127, 60, 22, 62, 21, 96, 0, 13, 3),
(59, 'Anh nghĩ em tiếc anh sao?', 2020, NULL, NULL, 'Minor', 118, 30, 86, 98, 49, 37, 0, 8, 8),
(60, 'Dễ đến dễ đi', 2020, NULL, NULL, 'Major', 105, 41, 41, 87, 44, 75, 4, 10, 4),
(61, 'Người đã yêu ai', 2014, NULL, NULL, 'Minor', 116, 4, 51, 58, 67, 38, 0, 32, 3),
(62, 'Chạm đáy nỗi đau', 2018, NULL, NULL, 'Minor', 63, 50, 60, 61, 47, 64, 0, 15, 3),
(63, 'Bao lâu chưa uống', 2024, NULL, NULL, 'Minor', 140, 26, 89, 69, 83, 0, 22, 10, 4),
(64, 'Một bước yêu vạn dặm đau', 2019, NULL, NULL, 'Minor', 138, 56, 33, 44, 42, 80, 0, 10, 3),
(65, 'Thủy triều', 2024, NULL, NULL, 'Minor', 119, 58, 80, 91, 71, 51, 1, 10, 5),
(66, 'Buồn thì cứ khóc đi', 2019, NULL, NULL, 'Minor', 97, 60, 39, 70, 54, 48, 0, 14, 3),
(67, 'Sao mình chưa nắm tay nhau', 2017, NULL, NULL, 'Minor', 103, 21, 51, 62, 49, 84, 0, 11, 3),
(68, 'Chắc ai đó sẽ về', 2017, NULL, NULL, 'Minor', 1138, 47, 39, 53, 65, 92, 78, 15, 8),
(69, 'This is what you came for', 2016, NULL, NULL, 'Minor', 124, 86, 47, 63, 93, 20, 12, 15, 3),
(70, 'Alone', 2016, NULL, NULL, 'Major', 142, 71, 42, 63, 95, 2, 2, 11, 3),
(71, 'Angle with a shotgun', 2011, NULL, NULL, 'Major', 124, 59, 40, 55, 84, 1, 0, 39, 5),
(72, 'Baby', 2010, NULL, NULL, 'Minor', 65, 82, 54, 73, 86, 4, 0, 11, 14),
(73, 'Unstoppable', 2016, NULL, NULL, 'Major', 174, 81, 26, 47, 78, 11, 0, 10, 8),
(74, 'Ghost', 2021, NULL, NULL, 'Major', 154, 86, 44, 60, 74, 19, 0, 42, 5),
(75, 'Walk thru fire', 2018, NULL, NULL, 'Major', 116, 65, 35, 64, 66, 33, 0, 38, 4),
(76, 'One Call Away', 2016, NULL, NULL, 'Major', 91, 63, 47, 67, 61, 40, 0, 12, 3),
(77, '8 letters', 2018, NULL, NULL, 'Minor', 89, 74, 26, 61, 48, 65, 0, 9, 3),
(78, 'golden hour', 2022, NULL, NULL, 'Major', 94, 79, 15, 52, 59, 65, 16, 25, 3),
(79, 'Cheap Thrills', 2016, NULL, NULL, 'Minor', 90, 69, 76, 59, 79, 6, 0, 13, 20),
(80, 'Bad liar', 2018, NULL, NULL, 'Major', 178, 81, 8, 38, 64, 7, 0, 37, 7),
(81, 'Scars to your beautiful', 2016, NULL, NULL, 'Major', 194, 72, 45, 32, 74, 3, 0, 11, 27),
(82, 'Believer', 2017, NULL, NULL, 'Minor', 125, 88, 67, 78, 78, 6, 0, 8, 13),
(83, 'Nothing stopping me', 2015, NULL, NULL, 'Major', 127, 55, 38, 60, 80, 14, 0, 10, 5),
(84, 'Thunder', 2017, NULL, NULL, 'Major', 168, 86, 29, 61, 82, 1, 13, 15, 4),
(85, 'The nights', 2014, NULL, NULL, 'Major', 126, 86, 65, 53, 84, 2, 0, 25, 4),
(86, 'Demons', 2012, NULL, NULL, 'Major', 90, 75, 43, 51, 71, 19, 0, 33, 3),
(87, 'Monster', 2019, NULL, NULL, 'Minor', 128, 71, 61, 83, 79, 3, 2, 11, 43),
(88, 'Natural', 2018, NULL, NULL, 'Major', 100, 82, 22, 70, 61, 22, 0, 8, 4),
(89, 'Bumpy ride', 2019, NULL, NULL, 'Minor', 105, 52, 82, 70, 85, 5, 0, 17, 4),
(90, 'Bones', 2022, NULL, NULL, 'Minor', 114, 85, 59, 77, 75, 2, 0, 7, 5),
(91, 'Reality', 2016, NULL, NULL, 'Minor', 122, 67, 60, 71, 70, 2, 0, 7, 3),
(92, 'Faded', 2015, NULL, NULL, 'Major', 90, 72, 17, 59, 65, 3, 0, 11, 3),
(93, 'Once upon a time', 2018, NULL, NULL, 'Minor', 91, 43, 28, 70, 68, 41, 0, 13, 3),
(94, 'The Spectre', 2017, NULL, NULL, 'Minor', 128, 74, 20, 65, 71, 2, 0, 9, 4),
(95, 'Tinh vệ', 2023, NULL, NULL, 'Minor', 138, 49, 86, 70, 67, 1, 52, 8, 5),
(96, 'Sing me to sleep', 2016, NULL, NULL, 'Minor', 176, 60, 17, 49, 61, 1, 0, 29, 7),
(97, 'Run free', 2017, NULL, NULL, 'Major', 100, 61, 70, 73, 69, 20, 0, 41, 3),
(98, 'On my way', 2019, NULL, NULL, 'Minor', 170, 73, 30, 51, 69, 2, 0, 30, 10),
(99, 'Birthday Sex', 2009, NULL, NULL, 'Minor', 60, 70, 45, 68, 52, 30, 0, 15, 4),
(100, 'Alone', 2018, NULL, NULL, 'Major', 97, 75, 18, 67, 91, 23, 0, 19, 5),
(101, 'Something just like this', 2017, NULL, NULL, 'Minor', 103, 88, 45, 62, 64, 5, 0, 16, 3),
(102, 'Play', 2019, NULL, NULL, 'Minor', 102, 70, 17, 52, 80, 10, 0, 9, 4),
(103, 'Look what you made me do', 2017, NULL, NULL, 'Minor', 128, 84, 51, 77, 71, 20, 0, 13, 12),
(104, 'Ignite', 2018, NULL, NULL, 'Minor', 90, 70, 48, 68, 86, 2, 0, 19, 12),
(105, 'What makes you beautiful', 2012, NULL, NULL, 'Major', 125, 86, 89, 73, 79, 1, 0, 6, 7),
(106, 'Seasons', 2018, NULL, NULL, 'Major', 145, 54, 48, 54, 68, 15, 0, 10, 4),
(107, 'Cupid', 2023, NULL, NULL, 'Major', 144, 41, 75, 74, 73, 42, 0, 9, 4),
(108, 'Beautiful now', 2015, NULL, NULL, 'Minor', 128, 68, 56, 63, 83, 1, 0, 7, 3),
(109, 'RISE', 2018, NULL, NULL, 'Minor', 177, 71, 41, 46, 66, 2, 0, 6, 10),
(110, 'More than you know', 2017, NULL, NULL, 'Minor', 123, 81, 57, 65, 74, 3, 0, 31, 3),
(111, 'GODS', 2023, NULL, NULL, 'Minor', 146, 78, 49, 59, 77, 1, 0, 20, 5),
(112, 'Despacito', 2019, NULL, NULL, 'Major', 178, 80, 84, 66, 80, 20, 0, 7, 15),
(113, 'Phoenix', 2019, NULL, NULL, 'Minor', 168, 67, 29, 42, 72, 6, 0, 12, 18),
(114, 'Shape of you', 2017, NULL, NULL, 'Minor', 96, 86, 93, 83, 65, 58, 0, 9, 8),
(115, 'Legend never die', 2017, NULL, NULL, 'Minor', 140, 77, 6, 50, 60, 1, 0, 11, 4),
(116, 'Darkside', 2018, NULL, NULL, 'Minor', 170, 72, 12, 43, 61, 13, 0, 17, 4),
(117, 'Burn It All Down', 2021, NULL, NULL, 'Minor', 145, 64, 23, 55, 69, 0, 0, 12, 6);

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
(19, 13),
(19, 14),
(20, 15),
(20, 16),
(20, 17),
(21, 18),
(21, 19),
(21, 20),
(22, 21),
(23, 13),
(23, 22),
(24, 23),
(25, 14),
(26, 24),
(27, 25),
(28, 15),
(28, 26),
(29, 27),
(30, 28),
(31, 25),
(32, 29),
(32, 30),
(33, 31),
(34, 32),
(35, 33),
(35, 34),
(35, 35),
(36, 31),
(37, 36),
(38, 37),
(39, 28),
(40, 28),
(41, 28),
(42, 28),
(42, 51),
(43, 28),
(44, 28),
(45, 28),
(46, 25),
(47, 25),
(48, 25),
(49, 36),
(50, 36),
(51, 36),
(52, 38),
(52, 39),
(53, 13),
(54, 27),
(54, 40),
(55, 31),
(56, 24),
(57, 41),
(58, 23),
(59, 42),
(60, 46),
(61, 43),
(62, 48),
(62, 49),
(63, 44),
(63, 45),
(64, 49),
(65, 46),
(66, 50),
(67, 47),
(68, 28),
(69, 52),
(69, 53),
(70, 55),
(71, 54),
(72, 58),
(73, 56),
(74, 58),
(75, 57),
(76, 60),
(77, 59),
(78, 62),
(79, 56),
(79, 61),
(80, 64),
(81, 63),
(82, 64),
(83, 57),
(83, 65),
(84, 64),
(85, 66),
(86, 64),
(87, 84),
(87, 85),
(88, 64),
(89, 86),
(90, 64),
(91, 87),
(92, 67),
(93, 88),
(94, 67),
(95, 89),
(96, 67),
(97, 90),
(97, 91),
(98, 67),
(99, 92),
(100, 67),
(101, 93),
(101, 94),
(102, 67),
(102, 68),
(102, 69),
(102, 70),
(103, 95),
(104, 67),
(104, 69),
(104, 71),
(104, 72),
(105, 96),
(106, 73),
(106, 74),
(106, 75),
(107, 97),
(108, 76),
(108, 77),
(109, 98),
(109, 99),
(109, 100),
(110, 78),
(111, 101),
(112, 79),
(112, 80),
(113, 102),
(113, 103),
(114, 81),
(115, 67),
(115, 98),
(115, 104),
(116, 67),
(116, 82),
(116, 83),
(117, 105);

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
(19, 5),
(20, 5),
(20, 6),
(21, 6),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(25, 6),
(26, 5),
(27, 7),
(28, 5),
(28, 8),
(29, 5),
(30, 5),
(30, 7),
(31, 9),
(32, 6),
(33, 5),
(34, 5),
(35, 5),
(35, 6),
(36, 5),
(37, 9),
(38, 5),
(38, 8),
(39, 5),
(40, 5),
(40, 7),
(41, 5),
(41, 7),
(42, 5),
(42, 6),
(42, 10),
(43, 5),
(43, 9),
(44, 5),
(45, 7),
(46, 5),
(47, 5),
(47, 7),
(48, 5),
(49, 9),
(50, 7),
(51, 7),
(52, 7),
(52, 9),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 7),
(59, 5),
(59, 11),
(60, 5),
(61, 5),
(62, 7),
(63, 10),
(63, 12),
(64, 9),
(65, 5),
(66, 9),
(67, 5),
(68, 9),
(69, 10),
(69, 13),
(70, 15),
(71, 14),
(72, 10),
(72, 12),
(73, 13),
(74, 15),
(74, 16),
(75, 13),
(75, 15),
(76, 7),
(76, 16),
(77, 14),
(78, 16),
(79, 6),
(79, 10),
(80, 14),
(80, 16),
(81, 16),
(82, 14),
(82, 16),
(83, 13),
(83, 15),
(84, 13),
(84, 15),
(85, 13),
(85, 15),
(86, 14),
(86, 16),
(87, 13),
(88, 14),
(88, 16),
(89, 14),
(89, 17),
(90, 14),
(90, 16),
(91, 16),
(91, 17),
(92, 13),
(93, 13),
(93, 15),
(94, 13),
(95, 11),
(96, 13),
(97, 13),
(98, 13),
(99, 6),
(100, 13),
(101, 14),
(101, 16),
(102, 15),
(102, 17),
(103, 16),
(104, 13),
(105, 14),
(105, 16),
(106, 15),
(107, 18),
(108, 15),
(108, 17),
(109, 15),
(110, 15),
(111, 16),
(112, 14),
(113, 16),
(114, 14),
(114, 16),
(115, 16),
(116, 13),
(117, 16);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
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

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'client', 'client', 'client name', 'client@gmail.com', 'USER', '2024-05-17 16:55:57', '2024-05-17 16:55:57');

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
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `playlists_songs`
--
ALTER TABLE `playlists_songs`
  ADD PRIMARY KEY (`playlistId`,`songId`),
  ADD KEY `songId` (`songId`);

--
-- Indexes for table `play_history`
--
ALTER TABLE `play_history`
  ADD PRIMARY KEY (`userId`,`songId`),
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`);

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `playlists_songs`
--
ALTER TABLE `playlists_songs`
  ADD CONSTRAINT `playlists_songs_ibfk_1` FOREIGN KEY (`playlistId`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlists_songs_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `play_history`
--
ALTER TABLE `play_history`
  ADD CONSTRAINT `play_history_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `play_history_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`);

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
