-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for lugares_en_el_mundo
DROP DATABASE IF EXISTS `lugares_en_el_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_en_el_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_en_el_mundo`;

-- Dumping structure for table lugares_en_el_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lugares_en_el_mundo.cities: ~9 rows (approximately)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(4, 'buenos_aires'),
	(2, 'chicago'),
	(3, 'ciudad_de_mexico'),
	(7, 'el_cairo'),
	(1, 'leticia'),
	(8, 'madrid'),
	(5, 'moscu'),
	(10, 'seul'),
	(6, 'tokyo'),
	(9, 'yarumal');

-- Dumping structure for table lugares_en_el_mundo.cities_countries_continents
DROP TABLE IF EXISTS `cities_countries_continents`;
CREATE TABLE IF NOT EXISTS `cities_countries_continents` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(6) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  `continent_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lugares_en_el_mundo.cities_countries_continents: ~0 rows (approximately)
DELETE FROM `cities_countries_continents`;
INSERT INTO `cities_countries_continents` (`id`, `city_id`, `country_id`, `continent_id`) VALUES
	(1, 1, 1, 1),
	(2, 2, 6, 1),
	(3, 3, 4, 1),
	(4, 4, 2, 1),
	(5, 5, 9, 4),
	(6, 6, 3, 2),
	(7, 7, 7, 3),
	(8, 8, 5, 4),
	(9, 9, 1, 1),
	(10, 10, 10, 2);

-- Dumping structure for table lugares_en_el_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lugares_en_el_mundo.continents: ~5 rows (approximately)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(3, 'africa'),
	(1, 'america'),
	(2, 'asia'),
	(4, 'europa'),
	(5, 'oceania');

-- Dumping structure for table lugares_en_el_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lugares_en_el_mundo.countries: ~9 rows (approximately)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(2, 'argentina'),
	(8, 'australia'),
	(1, 'colombia'),
	(6, 'ee.uu'),
	(7, 'egipto'),
	(5, 'españa'),
	(3, 'japon'),
	(4, 'mexico'),
	(9, 'rusia'),
	(10, 'surcorea');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
