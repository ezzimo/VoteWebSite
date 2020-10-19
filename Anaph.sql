-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2020 at 04:53 AM
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
-- Table structure for table `Admins`
--

CREATE TABLE `Admins` (
  `Admin_id` int NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `Mot_de_passe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `Useres`
--

CREATE TABLE `Useres` (
  `user_id` int NOT NULL,
  `user_first_name` varchar(128) DEFAULT NULL,
  `user_seconde_name` varchar(128) DEFAULT NULL,
  `phone_number` varchar(16) DEFAULT NULL,
  `Adresse` varchar(128) DEFAULT NULL,
  `Region` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Useres`
--

INSERT INTO `Useres` (`user_id`, `user_first_name`, `user_seconde_name`, `phone_number`, `Adresse`, `Region`) VALUES
(2, 'Mohammed', 'Ezzi', '0674233243', '2258 Hay Maghreb Arabi Temara', 'Rabat-Salé-Kenitra'),
(3, 'Ali', 'Morad', '0664233123', '2258 Taqueddoum Rabat', 'Rabat-Salé-Kenitra'),
(4, 'Omar', 'Jalal', '064233943', '8 Hay Chmaaou Salé', 'Rabat-Salé-Kenitra'),
(5, 'Karim', 'Mejrhit', '0667233241', '96 Hay Arabi Fés', 'Fes-Méknas-'),
(6, 'Jaber', 'ghali', '0661353157', '6 Bloc C Hay Maghreb Arabi Tanger', 'Tanger-Elhoseima'),
(7, 'Rabia', 'Hajji', '0662853345', '6 Bloc Imm 9 Hay Nazha Agadir', 'Agadir-Souss-EMassa'),
(18, 'Omar', 'ezzi', '0674233243', '2235 hfyuji', 'Rabat'),
(19, 'Omar', 'Mounkachi', '0674233243', '2235 hfyuji', 'Rabat'),
(20, ' Omar', ' ezzi', '0674233243', '2235 hfyuji', 'Rabat');

-- --------------------------------------------------------

--
-- Table structure for table `Vote`
--

CREATE TABLE `Vote` (
  `user_id` int NOT NULL,
  `picture_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Vote`
--

INSERT INTO `Vote` (`user_id`, `picture_id`) VALUES
(19, 4),
(19, 5),
(18, 6),
(19, 6),
(18, 12),
(18, 18),
(20, 21),
(20, 22),
(20, 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `Pictures`
--
ALTER TABLE `Pictures`
  ADD PRIMARY KEY (`picture_id`),
  ADD KEY `picture_id` (`picture_id`);

--
-- Indexes for table `Useres`
--
ALTER TABLE `Useres`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_seconde_name` (`user_seconde_name`),
  ADD KEY `user_first_name` (`user_first_name`);

--
-- Indexes for table `Vote`
--
ALTER TABLE `Vote`
  ADD PRIMARY KEY (`user_id`,`picture_id`),
  ADD KEY `picture_id` (`picture_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admins`
--
ALTER TABLE `Admins`
  MODIFY `Admin_id` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Pictures`
--
ALTER TABLE `Pictures`
  MODIFY `picture_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `Useres`
--
ALTER TABLE `Useres`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Vote`
--
ALTER TABLE `Vote`
  ADD CONSTRAINT `Vote_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Useres` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Vote_ibfk_2` FOREIGN KEY (`picture_id`) REFERENCES `Pictures` (`picture_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
