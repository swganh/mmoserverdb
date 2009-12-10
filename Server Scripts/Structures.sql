-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


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
-- Definition of table `structures`
--

DROP TABLE IF EXISTS `structures`;
CREATE TABLE `structures` (
  `ID` bigint(22) unsigned NOT NULL AUTO_INCREMENT,
  `Type` int(10) unsigned NOT NULL,
  `oX` float NOT NULL,
  `oY` float NOT NULL,
  `oZ` float NOT NULL,
  `oW` float NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `name` varchar(45) NOT NULL,
  `owner` bigint(22) unsigned NOT NULL,
  `currentRessource` bigint(22) unsigned NOT NULL,
  `condition` int(10) unsigned NOT NULL,
  `zone` int(10) unsigned NOT NULL,
  `lastMail` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2204928835634 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structures`
--

/*!40000 ALTER TABLE `structures` DISABLE KEYS */;
INSERT INTO `structures` (`ID`,`Type`,`oX`,`oY`,`oZ`,`oW`,`x`,`y`,`z`,`name`,`owner`,`currentRessource`,`condition`,`zone`,`lastMail`) VALUES 
 (2204928835629,51,0,0,0,1,-1275.92,12,-3588.08,'',8589934593,0,444,8,0),
 (2204928835630,51,0,0,0,1,-1275.92,12,-3596.08,'',8589934593,0,444,8,0),
 (2204928835631,51,0,0,0,1,-1275.92,12,-3604.08,'',8589934593,0,446,8,0),
 (2204928835633,51,0,0,0,1,-1283.92,12,-3604.08,'',8589934593,0,444,8,0);
/*!40000 ALTER TABLE `structures` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
