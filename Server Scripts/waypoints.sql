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
-- Definition of table `waypoints`
--

DROP TABLE IF EXISTS `waypoints`;
CREATE TABLE `waypoints` (
  `waypoint_id` bigint(20) unsigned NOT NULL auto_increment,
  `owner_id` bigint(20) unsigned NOT NULL default '0',
  `name` char(255) NOT NULL default '',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '0',
  `type` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`waypoint_id`),
  KEY `fk_waypoints_owner_ownerid` (`owner_id`),
  KEY `fk_waypoints_planet_planetid` (`planet_id`),
  CONSTRAINT `fk_waypoints_owner_ownerid` FOREIGN KEY (`owner_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_waypoints_planet_planetid` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`planet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137438953472 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `waypoints`
--

/*!40000 ALTER TABLE `waypoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `waypoints` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;