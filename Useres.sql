-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2020 at 08:06 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Useres`
--
ALTER TABLE `Useres`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_seconde_name` (`user_seconde_name`),
  ADD KEY `user_first_name` (`user_first_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Useres`
--
ALTER TABLE `Useres`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
