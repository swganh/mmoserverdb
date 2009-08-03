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

USE swganh;

--
-- Definition of table `galaxy`
--

DROP TABLE IF EXISTS `galaxy`;
CREATE TABLE `galaxy` (
  `galaxy_id` int(5) NOT NULL auto_increment COMMENT 'Server ID',
  `name` char(32) NOT NULL default '' COMMENT 'Server Name',
  `address` char(16) NOT NULL default '' COMMENT 'Server IP Address',
  `port` int(8) NOT NULL default '0' COMMENT 'Server Listen Port',
  `pingport` int(8) default NULL COMMENT 'Server PING port',
  `population` int(4) NOT NULL default '0' COMMENT 'Server Population (Administrative Feature)',
  `character_retention` int(4) NOT NULL COMMENT 'Character retention period (Administrative Feature)',
  `items_retention` int(4) NOT NULL COMMENT 'Item retention period (Administrative Feature)',
  `account_retention` int(4) NOT NULL COMMENT 'Account retention period (Administrative Feature)',
  `status` int(10) unsigned NOT NULL default '0',
  `last_update` datetime NOT NULL,
  `global_Tick_Count` bigint(20) unsigned NOT NULL COMMENT 'Global server tickcount',
  PRIMARY KEY  (`galaxy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galaxy`
--

/*!40000 ALTER TABLE `galaxy` DISABLE KEYS */;
INSERT INTO `galaxy` (`galaxy_id`,`name`,`address`,`port`,`pingport`,`population`,`character_retention`,`items_retention`,`account_retention`,`status`,`last_update`,`global_Tick_Count`) VALUES
 (2,'SWGANH Test Center','64.7.136.227',44991,44992,0,180,1,180,0,NOW(),0),
 (3,'Local','192.168.100.83',44991,44992,0,180,1,180,2,NOW(),0);
/*!40000 ALTER TABLE `galaxy` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;