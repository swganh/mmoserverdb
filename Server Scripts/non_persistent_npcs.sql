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
-- Definition of table `non_persistent_npcs`
--

DROP TABLE IF EXISTS `non_persistent_npcs`;
CREATE TABLE `non_persistent_npcs` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `family` int(11) unsigned NOT NULL default '2',
  `species_id` bigint(20) default NULL,
  `loot_group_id` bigint(20) default NULL,
  `type` char(255) default NULL,
  `stf_variable_id` char(255) default NULL,
  `stf_file_id` char(255) default NULL,
  `level` int(11) default NULL,
  `faction` int(11) default NULL,
  `posture` int(11) default NULL,
  `moodID` int(11) default NULL,
  `state` int(11) default NULL,
  `scale` float default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_non_persistent_npcs_species` (`species_id`),
  KEY `fk_non_persistent_npcs_loot_groups` (`loot_group_id`),
  CONSTRAINT `fk_non_persistent_npcs_species` FOREIGN KEY (`species_id`) REFERENCES `creature_species` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_non_persistent_npcs_loot_groups` FOREIGN KEY (`loot_group_id`) REFERENCES `loot_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `non_persistent_npcs`
--

/*!40000 ALTER TABLE `non_persistent_npcs` DISABLE KEYS */;
INSERT INTO `non_persistent_npcs` (`id`,`family`,`species_id`,`loot_group_id`,`type`,`stf_variable_id`,`stf_file_id`,`level`,`faction`,`posture`,`moodID`,`state`,`scale`) VALUES 
 (1,2,1,1,'object/mobile/shared_dressed_stormtrooper_sand_trooper_m.iff','crackdown_elite_sand_trooper','mob/creature_names',1,3,0,0,0,1.02),	-- prev ref as 47513075899
 (2,2,1,1,'object/mobile/shared_dressed_imperial_officer_m_6.iff','crackdown_command_security_guard_hard','mob/creature_names',1,3,0,0,0,1.05), -- prev ref as 47513075719
 (3,2,1,1,'object/mobile/shared_dressed_scout_trooper_black_black.iff','crackdown_storm_commando_hard','mob/creature_names',1,3,0,0,0,1.0),		-- prev ref as 47513075777
 (101,8,1,1,'object/mobile/shared_womp_rat.iff','womprat','mob/creature_names',6,1,0,0,0,1),
 (102,8,1,1,'object/mobile/shared_greater_desert_womp_rat.iff','desert_womprat','mob/creature_names',6,1,0,0,0,1),
 (103,8,1,1,'object/mobile/shared_lesser_desert_womp_rat.iff','lesser_desert_womprat','mob/creature_names',6,1,0,0,0,1),
 (104,8,1,1,'object/mobile/shared_variegated_womp_rat.iff','variegated_womprat','mob/creature_names',6,1,0,0,0,1),
 (105,8,1,1,'object/mobile/shared_womp_rat_hue.iff','womprat','mob/creature_names',6,1,0,0,0,1),
 (106,8,2,1,'object/mobile/shared_rill.iff','rill','mob/creature_names',6,1,0,0,0,1);
/*!40000 ALTER TABLE `non_persistent_npcs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;