-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 01:56 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `songs_artists`
--

CREATE TABLE `songs_artists` (
  `songId` int(11) NOT NULL,
  `artistId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `songs_genres`
--

CREATE TABLE `songs_genres` (
  `songId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
