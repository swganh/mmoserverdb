-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.22-rc-community-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema swganh
--

CREATE DATABASE IF NOT EXISTS swganh;
USE swganh;

--
-- Definition of table `mission_terminal_mission_types`
--

DROP TABLE IF EXISTS `mission_terminal_mission_types`;
CREATE TABLE `mission_terminal_mission_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `terminal` bigint(20) unsigned NOT NULL,
  `mission_type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mission_terminal_mission_types`
--

/*!40000 ALTER TABLE `mission_terminal_mission_types` DISABLE KEYS */;
INSERT INTO `mission_terminal_mission_types` (`id`,`terminal`,`mission_type`) VALUES 
 (1,6076112,40),
 (2,6076112,43),
 (3,6076112,45),
 (4,6076112,48),
 (5,6076112,50),
 (6,6076112,53);
/*!40000 ALTER TABLE `mission_terminal_mission_types` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
