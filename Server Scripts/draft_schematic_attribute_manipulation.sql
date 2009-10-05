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
-- Definition of table `draft_schematic_attribute_manipulation`
--

DROP TABLE IF EXISTS `draft_schematic_attribute_manipulation`;
CREATE TABLE `draft_schematic_attribute_manipulation` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Draft_Schematic` int(10) unsigned NOT NULL,
  `Attribute` int(10) unsigned NOT NULL,
  `AffectedAttribute` varchar(45) NOT NULL,
  `Manipulation` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `draft_schematic_attribute_manipulation`
--

/*!40000 ALTER TABLE `draft_schematic_attribute_manipulation` DISABLE KEYS */;
INSERT INTO `draft_schematic_attribute_manipulation` (`ID`,`Draft_Schematic`,`Attribute`,`AffectedAttribute`,`Manipulation`) VALUES 
 (1,304,613,'756',1);
/*!40000 ALTER TABLE `draft_schematic_attribute_manipulation` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
