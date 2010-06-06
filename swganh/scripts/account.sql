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
-- Definition of table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` bigint(20) unsigned NOT NULL auto_increment COMMENT 'Account ID',
  `username` char(32) NOT NULL default '' COMMENT 'Account username',
  `password` char(64) NOT NULL COMMENT 'Account password',
  `station_id` bigint(20) unsigned NOT NULL default '0' COMMENT 'Account STATION_ID',
  `csr` tinyint(1) NOT NULL default '0' COMMENT 'Account - CSR Flag',
  `banned` tinyint(1) NOT NULL default '0' COMMENT 'Account - Banned Status',
  `email` char(64) NOT NULL default '' COMMENT 'Account - User email',
  `joindate` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Account - Join Date',
  `lastlogin` timestamp NULL default NULL COMMENT 'Account - Last Login Timestamp',
  `active` tinyint(1) default NULL COMMENT 'Account - Active Flag',
  `loggedin` int(1) NOT NULL default '0' COMMENT 'Account - Cluster id account is logged into',
  `authenticated` tinyint(1) NOT NULL default '0' COMMENT 'Account - Authenticated Status',
  `characters_allowed` tinyint(3) unsigned NOT NULL default '2' COMMENT 'Number of characters allowed',
  `session_key` varchar(32) default NULL COMMENT 'Client Launcher - Session Key',
  PRIMARY KEY  (`account_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES
 (1,'swganh0','41d14978522cc50b70e73f6f0007e82a000a95d5',100000001,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (2,'swganh1','41d14978522cc50b70e73f6f0007e82a000a95d5',100000002,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (3,'swganh2','41d14978522cc50b70e73f6f0007e82a000a95d5',100000003,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (4,'swganh3','41d14978522cc50b70e73f6f0007e82a000a95d5',100000004,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (5,'swganh4','41d14978522cc50b70e73f6f0007e82a000a95d5',100000005,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (6,'swganh5','41d14978522cc50b70e73f6f0007e82a000a95d5',100000006,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (7,'swganh6','41d14978522cc50b70e73f6f0007e82a000a95d5',100000007,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (8,'swganh7','41d14978522cc50b70e73f6f0007e82a000a95d5',100000008,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (9,'swganh8','41d14978522cc50b70e73f6f0007e82a000a95d5',100000009,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL),
 (10,'swganh9','41d14978522cc50b70e73f6f0007e82a000a95d5',100000010,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

--
-- Definition of trigger `tr_LoggerAccountInsert`
--

DROP TRIGGER /*!50030 IF EXISTS */ `tr_LoggerAccountInsert`;

DELIMITER $$

CREATE DEFINER = `root`@`%` TRIGGER `tr_LoggerAccountInsert` AFTER INSERT ON `account` FOR EACH ROW BEGIN
	DECLARE sqlcommand TEXT;
	
	SET sqlcommand = CONCAT('INSERT INTO swganh.account VALUES(',new.account_id,', \'',new.username,'\', \'',new.password,'\', ',new.station_id,', ',new.csr,', ',new.banned,', \'',new.email,'\', 

\'',new.joindate,'\', \'',new.lastlogin,'\', ',new.active,', ',new.loggedin,', ',new.authenticated,', ',new.characters_allowed,');');
  
	INSERT INTO swganh_logs.account_logs
		SET	affected_record_id = new.account_id,
				account_name = new.username,
				account_email = new.email,
				event_type = 'INSERT',
				event_date = NOW(),
				event_command = sqlcommand;
END $$

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
