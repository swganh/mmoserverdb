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
-- Definition of table `lairs`
--

DROP TABLE IF EXISTS `lairs`;
CREATE TABLE `lairs` (
  `id` bigint(20) NOT NULL,
  `spawn_group_id` bigint(20) NOT NULL,
  `lair_id` bigint(20) default NULL,
  `creature_groups_id` int(11) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`id`,`spawn_group_id`),
  KEY `fk_lairs_spawn_groups` (`spawn_group_id`),
  KEY `fk_lair` (`lair_id`),
  KEY `fk_lairs_creature_groups` (`creature_groups_id`),
  CONSTRAINT `fk_lairs_creature_groups` FOREIGN KEY (`creature_groups_id`) REFERENCES `creature_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lair` FOREIGN KEY (`lair_id`) REFERENCES `lair_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lairs_spawn_groups` FOREIGN KEY (`spawn_group_id`) REFERENCES `spawn_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lairs`
--

/*!40000 ALTER TABLE `lairs` DISABLE KEYS */;
INSERT INTO `lairs` (`id`,`spawn_group_id`,`lair_id`,`creature_groups_id`, `count`) VALUES
 (1,1,1,1,25),
 (2,1,1,1,20);
/*!40000 ALTER TABLE `lairs` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
