/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006 - 2009 The swgANH Team

---------------------------------------------------------------------------------------
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


USE swganh;

--
-- Definition of table `item_families`
--

DROP TABLE IF EXISTS `item_families`;
CREATE TABLE `item_families` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `family_name` char(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `pk_item_family_name` (`family_name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `item_families`
--

/*!40000 ALTER TABLE `item_families` DISABLE KEYS */;
INSERT INTO `item_families` (`id`,`family_name`) VALUES 
 (12,'bug_jar'),
 (13,'component'),
 (14,'crafting'),
 (4,'crafting_station'),
 (3,'crafting_tool'),
 (15,'deed'),
 (16,'dice'),
 (17,'droid'),
 (18,'droid_battery'),
 (19,'firework'),
 (20,'fishing'),
 (6,'food'),
 (5,'furniture'),
 (9,'generic'),
 (11,'instrument'),
 (21,'item'),
 (8,'manufacture schematic'),
 (22,'medicine'),
 (23,'mission'),
 (28,'parrot_cage'),
 (24,'powerup'),
 (25,'scout'),
 (26,'ship'),
 (27,'slicing'),
 (1,'survey_tool'),
 (2,'travel_ticket'),
 (10,'weapon'),
 (7,'wearable');
/*!40000 ALTER TABLE `item_families` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;