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
-- Definition of table `character_stat_migration`
--


DROP TABLE IF EXISTS `swganh`.`character_stat_migration`;
CREATE TABLE  `swganh`.`character_stat_migration` (
  `character_id` bigint(20) unsigned NOT NULL,
  `target_health` int(10) unsigned NOT NULL,
  `target_strength` int(10) unsigned NOT NULL,
  `target_constitution` int(10) unsigned NOT NULL,
  `target_action` int(10) unsigned NOT NULL,
  `target_quickness` int(10) unsigned NOT NULL,
  `target_stamina` int(10) unsigned NOT NULL,
  `target_mind` int(10) unsigned NOT NULL,
  `target_focus` int(10) unsigned NOT NULL,
  `target_willpower` int(10) unsigned NOT NULL,
  `points_remaining` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`character_id`),
  CONSTRAINT `fk_character_stat_migration` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `character_stat_migration`
--

/*!40000 ALTER TABLE `character_matchmaking` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_matchmaking` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;