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
-- Definition of table `shuttle_types`
--

DROP TABLE IF EXISTS `shuttle_types`;
CREATE TABLE `shuttle_types` (
  `id` int(11) unsigned NOT NULL default '0',
  `object_string` char(255) NOT NULL default 'object/creature/npc/theme_park/shared_player_shuttle.iff',
  `name` char(255) default 'shuttle',
  `file` char(255) NOT NULL default 'theme_park_name',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shuttle_types`
--

/*!40000 ALTER TABLE `shuttle_types` DISABLE KEYS */;
INSERT INTO `shuttle_types` (`id`,`object_string`,`name`,`file`) VALUES 
 (1,'object/creature/npc/theme_park/shared_player_shuttle.iff','shuttle','theme_park_name'),
 (2,'object/creature/npc/theme_park/shared_lambda_shuttle.iff','shuttle','theme_park_name'),
 (3,'object/creature/npc/theme_park/shared_player_transport.iff','transport','theme_park_name'),
 (4,'object/creature/npc/theme_park/shared_player_transport_theed_hangar.iff','transport','theme_park_name');
/*!40000 ALTER TABLE `shuttle_types` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;