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
-- Definition of table `character_clone`
--


DROP TABLE IF EXISTS `swganh`.`character_clone`;
CREATE TABLE  `swganh`.`character_clone` (
  `character_id` bigint(22) unsigned NOT NULL,
  `spawn_facility_id` bigint(11) unsigned NOT NULL,
  `x` float(10,6) default NULL COMMENT 'Cloning facility X Location',
  `y` float(10,6) default NULL COMMENT 'Cloning facility Y Location',
  `z` float(10,6) default NULL COMMENT 'Cloning facility Z Location',
  `planet_id` int(2) NOT NULL default '1' COMMENT 'Current Planet - Defualt Corellia',
  `health_wounds` int(10) unsigned NOT NULL,
  `strength_wounds` int(10) unsigned NOT NULL,
  `constitution_wounds` int(10) unsigned NOT NULL,
  `action_wounds` int(10) unsigned NOT NULL,
  `quickness_wounds` int(10) unsigned NOT NULL,
  `stamina_wounds` int(10) unsigned NOT NULL,
  `mind_wounds` int(10) unsigned NOT NULL,
  `focus_wounds` int(10) unsigned NOT NULL,
  `willpower_wounds` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`character_id`,`spawn_facility_id`),
  CONSTRAINT `FK_character_clone_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_clone`
--

/*!40000 ALTER TABLE `character_clone` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_clone` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
