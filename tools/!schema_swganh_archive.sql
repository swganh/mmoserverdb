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

--
-- Create schema swganh_archive
--

CREATE DATABASE IF NOT EXISTS swganh_archive;
USE swganh_archive;

--
-- Definition of table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `credits` int(11) unsigned NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '-1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banks`
--

/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;


--
-- Definition of table `character_appearance`
--

DROP TABLE IF EXISTS `character_appearance`;
CREATE TABLE `character_appearance` (
  `character_id` bigint(20) unsigned NOT NULL default '0',
  `00FF` int(10) unsigned default NULL COMMENT 'Starting Header',
  `01FF` int(10) unsigned default NULL COMMENT 'Eye Color',
  `02FF` int(10) unsigned default NULL,
  `03FF` int(10) unsigned default NULL,
  `04FF` int(10) unsigned default NULL COMMENT 'Muscle / Torso',
  `05FF` int(10) unsigned default NULL COMMENT 'Weight',
  `06FF` int(10) unsigned default NULL,
  `07FF` int(10) unsigned default NULL COMMENT 'Eye Size',
  `08FF` int(10) unsigned default NULL COMMENT 'Nose Protrusion',
  `09FF` int(10) unsigned default NULL,
  `0AFF` int(10) unsigned default NULL,
  `0BFF` int(10) unsigned default NULL COMMENT 'Cheek Size',
  `0CFF` int(10) unsigned default NULL COMMENT 'Eye Angle',
  `0DFF` int(10) unsigned default NULL COMMENT 'Trunk Height',
  `0EFF` int(10) unsigned default NULL,
  `0FFF` int(10) unsigned default NULL COMMENT 'Nose Width',
  `10FF` int(10) unsigned default NULL,
  `11FF` int(10) unsigned default NULL,
  `12FF` int(10) unsigned default NULL,
  `13FF` int(10) unsigned default NULL COMMENT 'Jaw Size',
  `14FF` int(10) unsigned default NULL COMMENT 'Skin Colour',
  `15FF` int(10) unsigned default NULL COMMENT 'Mouth Size',
  `16FF` int(10) unsigned default NULL,
  `17FF` int(10) unsigned default NULL COMMENT 'Lip size',
  `18FF` int(10) unsigned default NULL,
  `19FF` int(10) unsigned default NULL COMMENT 'Ear Size',
  `1AFF` int(10) unsigned default NULL,
  `1BFF` int(10) unsigned default NULL,
  `1CFF` int(10) unsigned default NULL COMMENT 'Chin / Gullet Size',
  `1DFF` int(10) unsigned default NULL COMMENT 'Nose Color',
  `1EFF` int(10) unsigned default NULL COMMENT 'Eyebrow Type',
  `1FFF` int(10) unsigned default NULL COMMENT 'Facial Hair Color',
  `20FF` int(10) unsigned default NULL,
  `21FF` int(10) unsigned default NULL COMMENT 'Eye Shape',
  `22FF` int(10) unsigned default NULL,
  `23FF` int(10) unsigned default NULL COMMENT 'Facial Hair type',
  `24FF` int(10) unsigned default NULL COMMENT 'Age',
  `25FF` int(10) unsigned default NULL COMMENT 'Freckles',
  `26FF` int(10) unsigned default NULL COMMENT 'Marking Pattern Type',
  `27FF` int(10) unsigned default NULL COMMENT 'Sensor Size / Jowl',
  `28FF` int(10) unsigned default NULL,
  `29FF` int(10) unsigned default NULL,
  `2AFF` int(10) unsigned default NULL,
  `2BFF` int(10) unsigned default NULL,
  `2CFF` int(10) unsigned default NULL COMMENT 'Eyeshadow Color',
  `2DFF` int(10) unsigned default NULL COMMENT 'Eyeshadow',
  `2EFF` int(10) unsigned default NULL COMMENT 'Lip Color',
  `2FFF` int(10) unsigned default NULL,
  `30FF` int(10) unsigned default NULL,
  `31FF` int(10) unsigned default NULL,
  `32FF` int(10) unsigned default NULL COMMENT 'Center Beard Color',
  `33FF` int(10) unsigned default NULL,
  `34FF` int(10) unsigned default NULL,
  `35FF` int(10) unsigned default NULL,
  `36FF` int(10) unsigned default NULL,
  `37FF` int(10) unsigned default NULL,
  `38FF` int(10) unsigned default NULL,
  `39FF` int(10) unsigned default NULL COMMENT 'Head Size',
  `3AFF` int(10) unsigned default NULL,
  `3BFF` int(10) unsigned default NULL COMMENT 'Marking Pattern Color',
  `3CFF` int(10) unsigned default NULL,
  `3DFF` int(10) unsigned default NULL,
  `3EFF` int(10) unsigned default NULL COMMENT 'Ear Shape',
  `3FFF` int(10) unsigned default NULL,
  `40FF` int(10) unsigned default NULL,
  `41FF` int(10) unsigned default NULL,
  `42FF` int(10) unsigned default NULL,
  `43FF` int(10) unsigned default NULL COMMENT 'Brow',
  `44FF` int(10) unsigned default NULL,
  `45FF` int(10) unsigned default NULL,
  `46FF` int(10) unsigned default NULL,
  `47FF` int(10) unsigned default NULL,
  `48FF` int(10) unsigned default NULL COMMENT 'Marking Color',
  `49FF` int(10) unsigned default NULL COMMENT 'Fur Color',
  `4AFF` int(10) unsigned default NULL,
  `4BFF` int(10) unsigned default NULL,
  `4CFF` int(10) unsigned default NULL,
  `4DFF` int(10) unsigned default NULL,
  `4EFF` int(10) unsigned default NULL COMMENT 'Chin Length',
  `4FFF` int(10) unsigned default NULL,
  `50FF` int(10) unsigned default NULL,
  `51FF` int(10) unsigned default NULL,
  `52FF` int(10) unsigned default NULL,
  `53FF` int(10) unsigned default NULL,
  `54FF` int(10) unsigned default NULL,
  `55FF` int(10) unsigned default NULL,
  `56FF` int(10) unsigned default NULL,
  `57FF` int(10) unsigned default NULL,
  `58FF` int(10) unsigned default NULL,
  `59FF` int(10) unsigned default NULL,
  `5AFF` int(10) unsigned default NULL,
  `5BFF` int(10) unsigned default NULL,
  `5CFF` int(10) unsigned default NULL,
  `5DFF` int(10) unsigned default NULL,
  `5EFF` int(10) unsigned default NULL,
  `5FFF` int(10) unsigned default NULL,
  `60FF` int(10) unsigned default NULL,
  `61FF` int(10) unsigned default NULL,
  `62FF` int(10) unsigned default NULL,
  `63FF` int(10) unsigned default NULL COMMENT 'Markings Color (Sullastian)',
  `64FF` int(10) unsigned default NULL,
  `65FF` int(10) unsigned default NULL COMMENT 'Markings Pattern (Sullastian)',
  `66FF` int(10) unsigned default NULL,
  `67FF` int(10) unsigned default NULL,
  `68FF` int(10) unsigned default NULL,
  `69FF` int(10) unsigned default NULL,
  `6AFF` int(10) unsigned default NULL,
  `6BFF` int(10) unsigned default NULL,
  `6CFF` int(10) unsigned default NULL,
  `6DFF` int(10) unsigned default NULL,
  `6EFF` int(10) unsigned default NULL COMMENT 'Center Beard Type (Ithorian)',
  `6FFF` int(10) unsigned default NULL,
  `70FF` int(10) unsigned default NULL COMMENT 'Side Beard Type (Ithorinan)',
  `hair` char(128) default NULL,
  `hairData` bigint(20) default NULL,
  `base_model_string` char(128) default NULL,
  `scale` float default '0',
  PRIMARY KEY  (`character_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_appearance`
--

/*!40000 ALTER TABLE `character_appearance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_appearance` ENABLE KEYS */;


--
-- Definition of table `character_attributes`
--

DROP TABLE IF EXISTS `character_attributes`;
CREATE TABLE `character_attributes` (
  `character_id` bigint(20) unsigned NOT NULL default '0' COMMENT 'Character - ID',
  `faction_id` int(8) unsigned NOT NULL default '0' COMMENT 'Character - Faction ID',
  `health_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Health Max',
  `strength_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Strength Max',
  `constitution_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Constitution Max',
  `action_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Action Max',
  `quickness_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Quickness Max',
  `stamina_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Stamina Max',
  `mind_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Mind Max',
  `focus_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Focus Max',
  `willpower_max` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Willpower Max',
  `health_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Health Fill',
  `strength_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Strength Fill',
  `constitution_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Constitution Fill',
  `action_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Action Fill',
  `quickness_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Quickness Fill',
  `stamina_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Stamina Fill',
  `mind_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Mind Fill',
  `focus_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Focus Fill',
  `willpower_current` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Willpower Fill',
  `health_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Health Wounds',
  `strength_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Strength Wounds',
  `constitution_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Constitution Wounds',
  `action_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Action Wounds',
  `quickness_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Quickness Wounds',
  `stamina_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Stamina wounds',
  `mind_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Mind wounds',
  `focus_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Focus Wounds',
  `willpower_wounds` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Willpower Wounds',
  `health_encum` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Health Encumberance',
  `action_encum` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Action Encumberance',
  `mind_encum` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Mind Encumberance',
  `battlefatigue` int(6) unsigned NOT NULL default '0' COMMENT 'Character - Battle Fatigue',
  `posture` int(3) unsigned NOT NULL default '0',
  `moodId` int(11) unsigned NOT NULL default '0',
  `title` char(255) default NULL,
  `base_speed` float default NULL,
  `base_acceleration` float default NULL,
  `character_flags` int(11) unsigned NOT NULL default '0',
  `states` bigint(20) unsigned NOT NULL default '0',
  KEY `char_id` USING BTREE (`character_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `character_attributes`
--

/*!40000 ALTER TABLE `character_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_attributes` ENABLE KEYS */;


--
-- Definition of table `character_biography`
--

DROP TABLE IF EXISTS `character_biography`;
CREATE TABLE `character_biography` (
  `character_id` bigint(20) unsigned NOT NULL default '0',
  `biography` text NOT NULL,
  PRIMARY KEY  (`character_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_biography`
--

/*!40000 ALTER TABLE `character_biography` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_biography` ENABLE KEYS */;


--
-- Definition of table `character_faction`
--

DROP TABLE IF EXISTS `character_faction`;
CREATE TABLE `character_faction` (
  `character_id` bigint(20) unsigned NOT NULL,
  `faction_id` int(8) unsigned NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY  (`character_id`,`faction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_faction`
--

/*!40000 ALTER TABLE `character_faction` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_faction` ENABLE KEYS */;


--
-- Definition of table `character_skills`
--

DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `character_id` bigint(20) unsigned NOT NULL default '0',
  `skill_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`character_id`,`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_skills`
--

/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;


--
-- Definition of table `character_waypoints`
--

DROP TABLE IF EXISTS `character_waypoints`;
CREATE TABLE `character_waypoints` (
  `character_id` bigint(20) unsigned NOT NULL default '0',
  `waypoint_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`character_id`,`waypoint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_waypoints`
--

/*!40000 ALTER TABLE `character_waypoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_waypoints` ENABLE KEYS */;


--
-- Definition of table `character_xp`
--

DROP TABLE IF EXISTS `character_xp`;
CREATE TABLE `character_xp` (
  `character_id` bigint(20) unsigned NOT NULL auto_increment,
  `xp_id` int(10) unsigned NOT NULL default '0',
  `value` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`character_id`,`xp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_xp`
--

/*!40000 ALTER TABLE `character_xp` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_xp` ENABLE KEYS */;


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
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

--
-- Definition of table `chat_friendlist`
--

DROP TABLE IF EXISTS `chat_friendlist`;
CREATE TABLE `chat_friendlist` (
  `character_id` bigint(20) unsigned NOT NULL,
  `friend_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`character_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_friendlist`
--

/*!40000 ALTER TABLE `chat_friendlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_friendlist` ENABLE KEYS */;


--
-- Definition of table `chat_ignorelist`
--

DROP TABLE IF EXISTS `chat_ignorelist`;
CREATE TABLE `chat_ignorelist` (
  `character_id` bigint(20) unsigned NOT NULL,
  `ignore_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`character_id`,`ignore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_ignorelist`
--

/*!40000 ALTER TABLE `chat_ignorelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_ignorelist` ENABLE KEYS */;


--
-- Definition of table `datapads`
--

DROP TABLE IF EXISTS `datapads`;
CREATE TABLE `datapads` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `datapad_type` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datapads`
--

/*!40000 ALTER TABLE `datapads` DISABLE KEYS */;
/*!40000 ALTER TABLE `datapads` ENABLE KEYS */;


--
-- Definition of table `foods`
--

DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `food_type` int(11) unsigned NOT NULL default '0',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '99' COMMENT 'set 99 if not in world',
  `customName` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `foods`
--

/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;


--
-- Definition of table `furnitures`
--

DROP TABLE IF EXISTS `furnitures`;
CREATE TABLE `furnitures` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `furniture_type` int(11) unsigned NOT NULL default '0',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '0',
  `customName` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `furnitures`
--

/*!40000 ALTER TABLE `furnitures` DISABLE KEYS */;
/*!40000 ALTER TABLE `furnitures` ENABLE KEYS */;


--
-- Definition of table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
CREATE TABLE `inventories` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `inventory_type` int(11) unsigned NOT NULL default '1',
  `credits` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventories`
--

/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;


--
-- Definition of table `survey_tools`
--

DROP TABLE IF EXISTS `survey_tools`;
CREATE TABLE `survey_tools` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `tool_type` int(11) unsigned NOT NULL default '1',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '0',
  `customName` char(255) default NULL,
  `surveyrange` int(11) unsigned NOT NULL default '64',
  `surveypoints` tinyint(3) unsigned NOT NULL default '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_tools`
--

/*!40000 ALTER TABLE `survey_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_tools` ENABLE KEYS */;

--
-- Definition of table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
CREATE TABLE `weapons` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `weapon_type` int(11) unsigned NOT NULL default '0',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weapons`
--

/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;


--
-- Definition of table `wearables`
--

DROP TABLE IF EXISTS `wearables`;
CREATE TABLE `wearables` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `parent_id` bigint(20) unsigned NOT NULL default '0' COMMENT 'must not be 0 !',
  `wearable_type` int(11) unsigned NOT NULL default '0',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '99' COMMENT 'set to 99 if its not in world',
  `equipped` int(11) unsigned NOT NULL default '0',
  `customName` char(255) default NULL,
  `max_condition` int(11) unsigned NOT NULL default '100',
  `damage` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wearables`
--

/*!40000 ALTER TABLE `wearables` DISABLE KEYS */;
/*!40000 ALTER TABLE `wearables` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;