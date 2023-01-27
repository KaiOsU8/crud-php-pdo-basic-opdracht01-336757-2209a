-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 27, 2023 at 11:04 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-pdo-crud-2209a`
--

-- --------------------------------------------------------

--
-- Table structure for table `Persoon`
--

DROP TABLE IF EXISTS `Persoon`;
CREATE TABLE IF NOT EXISTS `Persoon` (
  `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(60) NOT NULL,
  `Tussenvoegsel` varchar(10) NOT NULL,
  `Achternaam` varchar(60) NOT NULL,
  `Telefoonnummer` varchar(20) NOT NULL,
  `Straatnaam` varchar(50) NOT NULL,
  `Huisnummer` varchar(10) NOT NULL,
  `Woonplaats` varchar(50) NOT NULL,
  `Postcode` varchar(10) NOT NULL,
  `Landnaam` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Persoon`
--

INSERT INTO `Persoon` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Telefoonnummer`, `Straatnaam`, `Huisnummer`, `Woonplaats`, `Postcode`, `Landnaam`) VALUES
(30, 'koko', 'de', 'kovachev', '4365756', 'santa', '234', 'daar', '2846DH', 'Nederland');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
