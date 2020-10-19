-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2020 at 08:04 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Anaph`
--

-- --------------------------------------------------------

--
-- Table structure for table `Pictures`
--

CREATE TABLE `Pictures` (
  `picture_id` int NOT NULL,
  `picture_link` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pictures`
--

INSERT INTO `Pictures` (`picture_id`, `picture_link`) VALUES
(1, 'Aji_Nfahmou/1.jpg'),
(2, 'Aji_Nfahmou/2.jpg'),
(3, 'Aji_Nfahmou/3.jpg'),
(4, 'Aji_Nfahmou/4.jpg'),
(5, 'Aji_Nfahmou/5.jpg'),
(6, 'Aji_Nfahmou/6.jpg'),
(7, 'Aji_Nfahmou/7.jpg'),
(8, 'Aji_Nfahmou/8.jpg'),
(9, 'Aji_Nfahmou/9.jpg'),
(10, 'Aji_Nfahmou/10.jpg'),
(11, 'Aji_Nfahmou/11.jpg'),
(12, 'Aji_Nfahmou/12.jpg'),
(13, 'Aji_Nfahmou/13.jpg'),
(14, 'Aji_Nfahmou/14.jpg'),
(15, 'Aji_Nfahmou/15.jpg'),
(16, 'Aji_Nfahmou/16.jpg'),
(17, 'Aji_Nfahmou/17.jpg'),
(18, 'Aji_Nfahmou/18.jpg'),
(19, 'Aji_Nfahmou/19.jpg'),
(20, 'Aji_Nfahmou/20.jpg'),
(21, 'Aji_Nfahmou/21.jpg'),
(22, 'Aji_Nfahmou/22.jpg'),
(23, 'Aji_Nfahmou/23.jpg'),
(24, 'Aji_Nfahmou/24.jpg'),
(25, 'Aji_Nfahmou/25.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Pictures`
--
ALTER TABLE `Pictures`
  ADD PRIMARY KEY (`picture_id`),
  ADD KEY `picture_id` (`picture_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Pictures`
--
ALTER TABLE `Pictures`
  MODIFY `picture_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
