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
-- Definition of table `log_error`
--

DROP TABLE IF EXISTS `log_error`;
CREATE TABLE `log_error` (
  `index` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `zone` varchar(45) NOT NULL,
  `system` varchar(45) NOT NULL,
  `message` varchar(255) NOT NULL,
  `serverstartID` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_error`
--

/*!40000 ALTER TABLE `log_error` DISABLE KEYS */;
INSERT INTO `log_error` (`index`,`date`,`zone`,`system`,`message`,`serverstartID`) VALUES 
 (1,'2009-08-19 00:00:00','connection','ho','hu',1),
 (2,'2009-08-19 00:00:00','connection','ho','ha',1),
 (3,'2009-08-19 17:21:45','connection','ho','ha',1),
 (4,'2009-08-19 21:24:06','tatooine','Crafting','CraftingSession::selectDraftSchematic: schematic not craftable crc:1272321681',4),
 (5,'2009-08-19 21:24:16','tatooine','Crafting','CraftingSession::selectDraftSchematic: schematic not craftable crc:4228360112',4),
 (6,'2009-08-19 21:25:32','tatooine','Crafting','CraftingSession::_assembleRoll() relevant rating 143.574997',4),
 (7,'2009-08-19 21:25:32','tatooine','Crafting','CraftingSession::_assembleRoll() relevant rating modified with tool 142.074997',4),
 (8,'2009-08-19 21:25:32','tatooine','Crafting','CraftingSession::_assembleRoll() relevant Skill Mod 100',4),
 (9,'2009-08-19 21:25:32','tatooine','Crafting','CraftingSession::_assembleRoll() relevant risk -42.074997',4),
 (10,'2009-08-19 21:25:32','tatooine','Crafting','CraftingSession::_assembleRoll() relevant riskroll 11',4),
 (11,'2009-08-19 21:25:32','tatooine','Crafting','CraftingSession::_assembleRoll() relevant criticalCount 0',4),
 (12,'2009-08-19 21:25:32','tatooine','Crafting','CraftingSession::_assembleRoll() modified riskroll 11',4);
/*!40000 ALTER TABLE `log_error` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
