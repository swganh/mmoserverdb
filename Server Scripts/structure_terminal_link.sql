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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_terminal_link`
--

/*!40000 ALTER TABLE `structure_terminal_link` DISABLE KEYS */;
INSERT INTO `structure_terminal_link` (`ID`,`terminal_type`,`structure_type`,`cellId`,`x`,`y`,`z`,`qx`,`qy`,`qz`,`qw`) VALUES 
 (1,29,83,1,0.6,0.7,6.15,0,1,0,0),
 (2,29,86,2,3.7,0.7,6.15,0,1,0,0),
 (3,29,87,1,0.6,0.7,6.15,0,1,0,0),
 (4,29,63,3,0.6,0.7,6.15,0,1,0,0);
/*!40000 ALTER TABLE `structure_terminal_link` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
