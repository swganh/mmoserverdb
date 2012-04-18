-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.48-community


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
-- Definition of table `item_families`
--

DROP TABLE IF EXISTS `item_families`;
CREATE TABLE `item_families` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `family_name` char(255) DEFAULT NULL,
  `crate_size` int(10) unsigned NOT NULL DEFAULT '25',
  `crate_type` int(10) unsigned NOT NULL DEFAULT '2772',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_item_family_name` (`family_name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `item_families`
--

/*!40000 ALTER TABLE `item_families` DISABLE KEYS */;
INSERT INTO `item_families` (`id`,`family_name`,`crate_size`,`crate_type`) VALUES 
 (1,'survey_tool',25,2775),
 (2,'travel_ticket',25,2775),
 (3,'crafting_tool',25,2775),
 (4,'crafting_station',25,2775),
 (5,'furniture',25,2781),
 (6,'food',25,2776),
 (7,'wearable',25,2779),
 (8,'manufacture schematic',25,2772),
 (9,'generic',25,2775),
 (10,'weapon',25,2782),
 (11,'instrument',25,2775),
 (12,'bug_jar',25,2772),
 (13,'component',25,2775),
 (14,'crafting',25,2772),
 (15,'deed',0,0),
 (16,'dice',25,2775),
 (17,'droid',25,2777),
 (18,'droid_battery',25,2777),
 (19,'firework',25,2775),
 (20,'fishing',25,2775),
 (21,'item',25,2772),
 (22,'medicine',25,2780),
 (23,'mission',25,2772),
 (24,'powerup',25,2782),
 (25,'scout',25,2772),
 (26,'ship',25,2772),
 (27,'slicing',25,2775),
 (28,'parrot_cage',25,2775),
 (29,'hopper',25,2772),
 (30,'crate',0,0),
 (31,'terminal',0,0);
/*!40000 ALTER TABLE `item_families` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
