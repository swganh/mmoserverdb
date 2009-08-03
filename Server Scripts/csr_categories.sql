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

use swganh;

--
-- Definition of table `csr_categories`
--

DROP TABLE IF EXISTS `csr_categories`;
CREATE TABLE `csr_categories` (
  `category_id` int(10) unsigned NOT NULL auto_increment,
  `name` char(45) NOT NULL default '""',
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `csr_categories`
--

/*!40000 ALTER TABLE `csr_categories` DISABLE KEYS */;
INSERT INTO `csr_categories` (`category_id`,`name`) VALUES
 (1,'Bazaar'),
 (2,'Badges'),
 (3,'Bank'),
 (4,'Chat'),
 (5,'Combat'),
 (6,'Crafting'),
 (7,'Dancing'),
 (8,'Datapad'),
 (9,'Elevators'),
 (10,'Faction'),
 (11,'Group'),
 (12,'Guild'),
 (13,'Harvesting'),
 (14,'Inventory'),
 (15,'Item'),
 (16,'Looting'),
 (17,'Misc'),
 (18,'Music'),
 (19,'NPC'),
 (20,'Profession'),
 (21,'Sampling'),
 (22,'Server Administration'),
 (23,'Structures'),
 (24,'Survey'),
 (25,'System Messages'),
 (26,'Trading'),
 (27,'Trainers'),
 (28,'Travel'),
 (29,'UI'),
 (30,'Waypoints'),
 (31,'Weather');
/*!40000 ALTER TABLE `csr_categories` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;