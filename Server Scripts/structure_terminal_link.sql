-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.25-rc-community


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
-- Definition of table `structure_terminal_link`
--

DROP TABLE IF EXISTS `structure_terminal_link`;
CREATE TABLE `structure_terminal_link` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `terminal_type` int(10) unsigned NOT NULL,
  `structure_type` int(10) unsigned NOT NULL,
  `cellId` int(10) unsigned NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `qx` float NOT NULL,
  `qy` float NOT NULL,
  `qz` float NOT NULL,
  `qw` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_terminal_link`
--

/*!40000 ALTER TABLE `structure_terminal_link` DISABLE KEYS */;
INSERT INTO `structure_terminal_link` (`ID`,`terminal_type`,`structure_type`,`cellId`,`x`,`y`,`z`,`qx`,`qy`,`qz`,`qw`) VALUES 
 (1,29,83,1,0.6,0.7,6.15,0,1,0,0),
 (2,29,86,0,3.7,0.7,6.15,0,1,0,0),
 (3,29,87,0,0.6,0.7,6.15,0,1,0,0),
 (4,29,63,0,0.6,0.7,6.15,0,1,0,0),
 (5,29,64,0,0.6,0.7,8.7,0,0,0,1),
 (6,29,65,3,0.6,0.7,6.15,0,1,0,0),
 (7,29,66,3,0.6,0.7,6.15,0,1,0,0),
 (8,29,67,3,0.6,0.7,6.15,0,1,0,0),
 (9,29,68,3,0.6,0.7,6.15,0,1,0,0),
 (10,29,69,3,0.6,0.7,6.15,0,1,0,0),
 (11,29,70,3,0.6,0.7,6.15,0,1,0,0),
 (12,29,71,3,0.6,0.7,6.15,0,1,0,0),
 (13,29,72,3,0.6,0.7,6.15,0,1,0,0),
 (14,29,73,3,0.6,0.7,6.15,0,1,0,0),
 (15,29,74,3,0.6,0.7,6.15,0,1,0,0),
 (16,29,75,3,0.6,0.7,6.15,0,1,0,0),
 (17,29,76,3,0.6,0.7,6.15,0,1,0,0),
 (18,29,77,3,0.6,0.7,6.15,0,1,0,0),
 (19,29,78,3,0.6,0.7,6.15,0,1,0,0),
 (20,29,79,3,0.6,0.7,6.15,0,1,0,0),
 (21,29,80,3,0.6,0.7,6.15,0,1,0,0),
 (22,29,81,3,0.6,0.7,6.15,0,1,0,0),
 (23,29,82,3,0.6,0.7,6.15,0,1,0,0),
 (24,29,84,3,0.6,0.7,6.15,0,1,0,0),
 (25,29,85,3,0.6,0.7,6.15,0,1,0,0);
/*!40000 ALTER TABLE `structure_terminal_link` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
