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
-- Definition of table `harvesters`
--

DROP TABLE IF EXISTS `harvesters`;
CREATE TABLE `harvesters` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'the harvesters ID',
  `ResourceID` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'this is the resource the harvester is currently harvesting',
  `active` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 means not active',
  `rate` float NOT NULL DEFAULT '0' COMMENT 'the actual rate with which the resource is harvested',
  `hoppersize` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'the size of the hopper of the placed harvester',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2204928835624 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `harvesters`
--

/*!40000 ALTER TABLE `harvesters` DISABLE KEYS */;
INSERT INTO `harvesters` (`ID`,`ResourceID`,`active`,`rate`,`hoppersize`) VALUES 
 (2204928835616,0,0,0,0);
/*!40000 ALTER TABLE `harvesters` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
