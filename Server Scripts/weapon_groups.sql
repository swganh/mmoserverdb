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
-- Definition of table `weapon_groups`
--

DROP TABLE IF EXISTS `weapon_groups`;
CREATE TABLE `weapon_groups` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` char(255) NOT NULL,
  `defaultAttackAnimationCrc` int(11) unsigned NOT NULL default '0',
  `defaultCombatSpam` char(255) NOT NULL default 'melee',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weapon_groups`
--

/*!40000 ALTER TABLE `weapon_groups` DISABLE KEYS */;
INSERT INTO `weapon_groups` (`id`,`name`,`defaultAttackAnimationCrc`,`defaultCombatSpam`) VALUES 
 (1,'unarmed',1136984016,'melee'),
 (2,'1h',1136984016,'melee'),
 (4,'2h',1136984016,'melee'),
 (8,'polearm',1136984016,'melee'),
 (16,'rifle',1349426508,'shoot'),
 (32,'pistol',1349426508,'shoot'),
 (64,'carbine',1349426508,'shoot'),
 (128,'flamethrower',1349426508,'shoot'),
 (256,'saber',1136984016,'melee'),
 (512,'launcher',1349426508,'shoot');
/*!40000 ALTER TABLE `weapon_groups` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
