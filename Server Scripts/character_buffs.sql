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
-- Definition of table `character_buffs`
--


DROP TABLE IF EXISTS `character_buffs`;

CREATE TABLE `character_buffs` (
  	`buff_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  
					`character_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  
					`instigator_id` bigint(20) unsigned DEFAULT '0',
  
					`max_ticks` bigint(20) unsigned NOT NULL DEFAULT '0',
  
					`tick_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  
					`current_tick` bigint(20) unsigned DEFAULT '0',
  
					`icon` integer unsigned NOT NULL DEFAULT '0',
  
					`current_global_tick` bigint(20) unsigned NOT NULL DEFAULT '0',
  
					`start_global_tick` bigint(20) unsigned NOT NULL DEFAULT '0',
  
					PRIMARY KEY (`buff_id`,`character_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*! ALTER TABLE `character_buffs` ENABLE KEYS */;





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
