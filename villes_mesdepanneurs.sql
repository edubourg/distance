-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 02, 2014 at 11:25 PM
-- Server version: 5.5.37-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `villes_tests`
--

-- --------------------------------------------------------

--
-- Table structure for table `villes_mesdepanneurs`
--

CREATE TABLE IF NOT EXISTS `villes_mesdepanneurs` (
  `ville_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ville_departement` varchar(3) DEFAULT NULL,
  `ville_slug` varchar(255) DEFAULT NULL,
  `ville_nom` varchar(45) DEFAULT NULL,
  `ville_nom_simple` varchar(45) DEFAULT NULL,
  `ville_nom_reel` varchar(45) DEFAULT NULL,
  `ville_nom_soundex` varchar(20) DEFAULT NULL,
  `ville_nom_metaphone` varchar(22) DEFAULT NULL,
  `ville_code_postal` varchar(255) DEFAULT NULL,
  `ville_commune` varchar(3) DEFAULT NULL,
  `ville_code_commune` varchar(5) NOT NULL,
  `ville_arrondissement` smallint(3) unsigned DEFAULT NULL,
  `ville_canton` varchar(4) DEFAULT NULL,
  `ville_amdi` smallint(5) unsigned DEFAULT NULL,
  `ville_population_2010` mediumint(11) unsigned DEFAULT NULL,
  `ville_population_1999` mediumint(11) unsigned DEFAULT NULL,
  `ville_population_2012` mediumint(10) unsigned DEFAULT NULL COMMENT 'approximatif',
  `ville_densite_2010` int(11) DEFAULT NULL,
  `ville_surface` float DEFAULT NULL,
  `ville_longitude_deg` float DEFAULT NULL,
  `ville_latitude_deg` float DEFAULT NULL,
  `ville_longitude_grd` varchar(9) DEFAULT NULL,
  `ville_latitude_grd` varchar(8) DEFAULT NULL,
  `ville_longitude_dms` varchar(9) DEFAULT NULL,
  `ville_latitude_dms` varchar(8) DEFAULT NULL,
  `ville_zmin` mediumint(4) DEFAULT NULL,
  `ville_zmax` mediumint(4) DEFAULT NULL,
  PRIMARY KEY (`ville_id`),
  UNIQUE KEY `ville_code_commune_2` (`ville_code_commune`),
  UNIQUE KEY `ville_slug` (`ville_slug`),
  KEY `ville_departement` (`ville_departement`),
  KEY `ville_nom` (`ville_nom`),
  KEY `ville_nom_reel` (`ville_nom_reel`),
  KEY `ville_code_commune` (`ville_code_commune`),
  KEY `ville_code_postal` (`ville_code_postal`),
  KEY `ville_longitude_latitude_deg` (`ville_longitude_deg`,`ville_latitude_deg`),
  KEY `ville_nom_soundex` (`ville_nom_soundex`),
  KEY `ville_nom_metaphone` (`ville_nom_metaphone`),
  KEY `ville_population_2010` (`ville_population_2010`),
  KEY `ville_nom_simple` (`ville_nom_simple`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36831 ;

--
-- Dumping data for table `villes_mesdepanneurs`
--

INSERT INTO `villes_mes_depanneurs` (`ville_id`, `ville_departement`, `ville_slug`, `ville_nom`, `ville_nom_simple`, `ville_nom_reel`, `ville_nom_soundex`, `ville_nom_metaphone`, `ville_code_postal`, `ville_commune`, `ville_code_commune`, `ville_arrondissement`, `ville_canton`, `ville_amdi`, `ville_population_2010`, `ville_population_1999`, `ville_population_2012`, `ville_densite_2010`, `ville_surface`, `ville_longitude_deg`, `ville_latitude_deg`, `ville_longitude_grd`, `ville_latitude_grd`, `ville_longitude_dms`, `ville_latitude_dms`, `ville_zmin`, `ville_zmax`) VALUES
(1, '59', 'lille', 'LILLE', 'lille', 'Lille', 'L000', 'LL', '59000-59160-59260-59777-59800', '350', '59350', 5, '92', 2, 227560, 184647, 225800, 6533, 34.83, 3.06667, 50.6333, '801', '56258', '+30327', '503755', 17, 45),
(2, '69', 'lyon', 'LYON', 'lyon', 'Lyon', 'L500', 'LYN', '69001-69002-69003-69004-69005-69006-69007-69008-69009', '123', '69123', 1, '99', 2, 484344, 445274, 474900, 10117, 47.87, 4.84139, 45.7589, '2783', '50843', '+45029', '454532', 162, 312),
(3, '31', 'toulouse', 'TOULOUSE', 'toulouse', 'Toulouse', 'T420', 'TLS', '31000-31100-31200-31300-31400-31500', '555', '31555', 3, '99', 2, 441802, 390301, 439600, 3734, 118.3, 1.43333, 43.6, '-994', '48449', '+12631', '433616', 115, 263),
(4, '67', 'strasbourg', 'STRASBOURG', 'strasbourg', 'Strasbourg', 'S362162', 'STRSBRK', '67000-67100-67200', '482', '67482', 8, '99', 2, 271782, 263941, 272100, 3472, 78.26, 7.75, 48.5833, '6013', '53982', '+74453', '483501', 132, 151),
(5, '76', 'rouen', 'ROUEN', 'rouen', 'Rouen', 'R500', 'RN', '76000-76100', '540', '76540', 3, '99', 2, 110933, 106560, 109400, 5188, 21.38, 1.08333, 49.4333, '-1371', '54937', '+10609', '492635', 2, 152),
(6, '27', 'evreux', 'EVREUX', 'evreux', 'Évreux', 'E162', 'EFRKS', '27000', '229', '27229', 3, '99', 3, 50537, 51159, 50800, 1909, 26.46, 1.15, 49.0167, '-1315', '54471', '+10909', '490124', 57, 147),
(7, '35', 'rennes', 'RENNES', 'rennes', 'Rennes', 'R520', 'RNS', '35000-35200-35700', '238', '35238', 3, '98', 2, 207178, 206194, 206700, 4111, 50.39, -1.68333, 48.0833, '-4463', '53460', '-14051', '480651', 20, 74),
(8, '44', 'nantes', 'NANTES', 'nantes', 'Nantes', 'N320', 'NNTS', '44000-44100-44200-44300', '109', '44109', 2, '99', 2, 284970, 270343, 283300, 4371, 65.19, -1.55, 47.2167, '-4323', '52464', '-13314', '471302', 2, 52),
(9, '33', 'bordeaux', 'BORDEAUX', 'bordeaux', 'Bordeaux', 'B632', 'BRTKS', '33000-33100-33200-33300-33800', '063', '33063', 2, '99', 2, 239157, 215374, 235900, 4845, 49.36, -0.566667, 44.8333, '-3240', '49820', '-03446', '445016', 1, 42),
(10, '34', 'montpellier', 'MONTPELLIER', 'montpellier', 'Montpellier', 'M3146', 'MNTPLR', '34000-34070-34080-34090', '172', '34172', 3, '99', 2, 257351, 225511, 253000, 4524, 56.88, 3.88333, 43.6, '1711', '48457', '+35236', '433640', 7, 121),
(11, '06', 'nice', 'NICE', 'nice', 'Nice', 'N200', 'NS', '06000-06100-06200-06300', '088', '06088', 2, '99', 3, 343304, 343123, 344900, 4773, 71.92, 7.25, 43.7, '5480', '48558', '+71606', '434207', 0, 520),
(12, '83', 'toulon', 'TOULON', 'toulon', 'Toulon', 'T450', 'TLN', '83000-83100-83200', '137', '83137', 2, '99', 3, 164532, 160712, 166700, 3840, 42.84, 5.93333, 43.1167, '3993', '47917', '+55550', '430730', 0, 589),
(13, '76', 'havre', 'LE HAVRE', 'le havre', 'Le Havre', 'L160', 'LHFR', '76600-76610-76620', '351', '76351', 2, '98', 4, 175497, 190924, 178800, 3737, 46.95, 0.133333, 49.5, '-2461', '54999', '+00716', '492956', 0, 105),
(14, '13', 'marseille', 'MARSEILLE', 'marseille', 'Marseille', 'M624', 'MRSL', '13001-13002-13003-13004-13005-13006-13007-13008-13009-13010-13011-13012-13013-13014-13015-13016', '055', '13055', 3, '99', 2, 850726, 797491, 851400, 3535, 240.62, 5.37639, 43.2967, '3377', '48107', '+52235', '431748', 0, 640),
(15, '51', 'reims', 'REIMS', 'reims', 'Reims', 'R520', 'RMS', '51100', '454', '51454', 3, '99', 4, 179992, 187181, 181500, 3837, 46.9, 4.03333, 49.25, '1880', '54739', '+40143', '491555', 74, 137),
(16, '38', 'grenoble', 'GRENOBLE', 'grenoble', 'Grenoble', 'G6514', 'KRNBL', '38000-38100', '185', '38185', 1, '98', 3, 155637, 153426, 156700, 8584, 18.13, 5.71667, 45.1667, '3766', '50208', '+54335', '451113', 204, 600);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


