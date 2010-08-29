/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2010 The SWG:ANH Team
---------------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
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
-- Definition of table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT 'Unique ID',
  `account_id` bigint(20) unsigned NOT NULL default '0' COMMENT 'Ties to the ACCOUNT Table',
  `galaxy_id` int(5) default '0' COMMENT 'Ties to the GALAXY Table',
  `firstname` char(32) default NULL COMMENT 'Character Firstname',
  `lastname` char(32) default NULL COMMENT 'Character Lastname',
  `race_id` int(8) unsigned default '0' COMMENT 'Ties to the RACE Table',
  `parent_id` bigint(20) unsigned default '0' COMMENT 'Ties to ... (Cell)',
  `planet_id` int(2) NOT NULL default '1' COMMENT 'Current Planet - Defualt Corellia',
  `x` float(10,6) default NULL COMMENT 'Character X Location',
  `y` float(10,6) default NULL COMMENT 'Character Y Location',
  `z` float(10,6) default NULL COMMENT 'Character Z Location',
  `oX` float(10,6) default NULL COMMENT 'Character Cell X Location',
  `oY` float(10,6) default NULL COMMENT 'Character Cell Y Location',
  `oZ` float(10,6) default NULL COMMENT 'Character Cell Z Location',
  `oW` float(10,6) default NULL COMMENT 'Character Cell Orientation',
  `archived` tinyint(1) unsigned default '0' COMMENT '0 = active / 1 = scheduled to be deleted',
  `deletiondate` date default NULL COMMENT 'DATE to be deleted',
  `jedistate` int(11) unsigned NOT NULL default '0',
  `bornyear` char(8) DEFAULT NULL COMMENT 'Year character was created.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `PK_character_firstname` (`firstname`),
  KEY `PK_character_account` (`account_id`),
  KEY `PK_character_galaxy` (`galaxy_id`),
  KEY `PK_character_race` (`race_id`),
  KEY `PK_character_planetid` (`planet_id`),
  KEY `PK_characters_jedistate` (`jedistate`),
  CONSTRAINT `FK_character_planet` FOREIGN KEY (`planet_id`) REFERENCES `swganh_static`.`planet` (`planet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_character_account` FOREIGN KEY (`account_id`) REFERENCES `swganh`.`account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_character_galaxy` FOREIGN KEY (`galaxy_id`) REFERENCES `swganh_config`.`galaxy` (`galaxy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_character_race` FOREIGN KEY (`race_id`) REFERENCES `swganh_static`.`race` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_characters_jedistate` FOREIGN KEY (`jedistate`) REFERENCES `swganh_static`.`skills_jedi_states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8589935594 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;