-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2020 at 02:23 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sirup_za_mrsavljenje`
--

-- --------------------------------------------------------

--
-- Table structure for table `narudzbina`
--

CREATE TABLE `narudzbina` (
  `narudzbinaID` int(11) NOT NULL,
  `sirupID` int(11) NOT NULL,
  `kolicina` int(11) NOT NULL,
  `datumPreuzimanja` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `narudzbina`
--

INSERT INTO `narudzbina` (`narudzbinaID`, `sirupID`, `kolicina`, `datumPreuzimanja`) VALUES
(3, 2, 3, '2020-08-15 09:50:10'),
(4, 5, 2, '2020-08-20 10:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `sirup`
--

CREATE TABLE `sirup` (
  `sirupID` int(11) NOT NULL,
  `nazivVrste` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cenaSirupa` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sirup`
--

INSERT INTO `sirup` (`sirupID`, `nazivVrste`, `cenaSirupa`) VALUES
(2, 'Amazon', '123'),
(3, 'Detox', '132'),
(4, 'Elixir', '342'),
(5, 'Honey', '321'),
(6, 'Cinnamon', '213');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
