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
-- Definition of table `creatures`
--

DROP TABLE IF EXISTS `creatures`;
CREATE TABLE `creatures` (
  `id` bigint(20) NOT NULL,
  `creature_species_id` bigint(20) default NULL,
  `loot_group_id` bigint(20) default NULL,
  `creature_type` char(255) default NULL,
  `stf_variable_id` char(255) default NULL,
  `stf_file_id` char(255) default NULL,
  `creature_level` int(11) default NULL,
  `creature_faction` int(8) default NULL,
  `creature_family` int(11) default NULL,
  `creature_posture` int(11) default NULL,
  `creature_moodID` int(11) default NULL,
  `creature_state` int(11) default NULL,
  `creature_scale` float default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_creature_species` (`creature_species_id`),
  KEY `fk_creature_family` (`creature_family`),
  KEY `fk_creature_faction` (`creature_faction`),
  KEY `fk_creature_loot_groups` (`loot_group_id`),
  CONSTRAINT `fk_creature_species` FOREIGN KEY (`creature_species_id`) REFERENCES `creature_species` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_creature_family` FOREIGN KEY (`creature_family`) REFERENCES `creature_families` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_creature_faction` FOREIGN KEY (`creature_faction`) REFERENCES `faction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_creature_loot_groups` FOREIGN KEY (`loot_group_id`) REFERENCES `loot_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creatures`
--

/*!40000 ALTER TABLE `creatures` DISABLE KEYS */;
INSERT INTO `creatures` (`id`,`creature_species_id`,`loot_group_id`,`creature_type`,`stf_variable_id`,`stf_file_id`,`creature_level`,`creature_faction`,`creature_posture`,`creature_moodID`,`creature_state`,`creature_scale`) VALUES 
 (1,1,1,'object/mobile/shared_womp_rat.iff','womprat','mob/creature_names',6,1,0,0,0,1),
 (2,1,1,'object/mobile/shared_greater_desert_womp_rat.iff','desert_womprat','mob/creature_names',6,1,0,0,0,1),
 (3,1,1,'object/mobile/shared_lesser_desert_womp_rat.iff','lesser_desert_womprat','mob/creature_names',6,1,0,0,0,1),
 (4,1,1,'object/mobile/shared_variegated_womp_rat.iff','variegated_womprat','mob/creature_names',6,1,0,0,0,1),
 (5,1,1,'object/mobile/shared_womp_rat_hue.iff','womprat','mob/creature_names',6,1,0,0,0,1),
 (6,2,1,'object/mobile/shared_rill.iff','rill','mob/creature_names',6,1,0,0,0,1),
 (7,7,1,'object/tangible/newbie_tutorial/shared_debris.iff','newbie_tutorial_debris','container_name', 1,1,0,0,0,1),
 (8,8,1,'object/mobile/shared_dressed_cobral_bandit_bith_male_01.iff','bandit','mob/creature_names',10,1,0,0,0,1);
/*!40000 ALTER TABLE `creatures` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;