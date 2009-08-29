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
-- Definition of table `non_persistent_npc_templates`
--

DROP TABLE IF EXISTS `non_persistent_npc_templates`;
CREATE TABLE `non_persistent_npc_templates` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `family` int(11) unsigned NOT NULL default '2',
  `type` char(255) NOT NULL default '0',
  `posture` int(3) unsigned NOT NULL default '0',
  `moodId` int(11) unsigned NOT NULL default '0',
  `state` int(11) unsigned NOT NULL default '0',
  `cl` int(11) unsigned NOT NULL default '1',
  `faction` int(8) unsigned NOT NULL default '0',
  `stf_variable_id` char(255) NOT NULL default '0',
  `stf_file_id` char(255) NOT NULL default '0',
  `scale` float NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `non_persistent_npc_templates`
--

/*!40000 ALTER TABLE `non_persistent_npc_templates` DISABLE KEYS */;
INSERT INTO `non_persistent_npc_templates` (`id`,`family`,`type`,`posture`,`moodId`,`state`,`cl`,`faction`,`stf_variable_id`,`stf_file_id`,`scale`) VALUES 
 (1,2,'object/mobile/shared_dressed_stormtrooper_sand_trooper_m.iff',0,0,0,1,3,'crackdown_elite_sand_trooper','mob/creature_names',1.02),	-- prev ref as 47513075899
 (2,2,'object/mobile/shared_dressed_imperial_officer_m_6.iff',0,0,0,1,3,'crackdown_command_security_guard_hard','mob/creature_names',1.05), -- prev ref as 47513075719
 (3,2,'object/mobile/shared_dressed_scout_trooper_black_black.iff',0,0,0,1,3,'crackdown_storm_commando_hard','mob/creature_names',1); -- prev ref as 47513075777
 
/*!40000 ALTER TABLE `non_persistent_npc_templates` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
