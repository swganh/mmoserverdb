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
  `account_username` char(32) NOT NULL default '' COMMENT 'Account username',
  `account_password` char(64) NOT NULL COMMENT 'Account password',
  `account_station_id` bigint(20) unsigned NOT NULL default '0' COMMENT 'Account STATION_ID',
  `account_csr` tinyint(1) NOT NULL default '0' COMMENT 'Account - CSR Flag',
  `account_banned` tinyint(1) NOT NULL default '0' COMMENT 'Account - Banned Status',
  `account_email` char(64) NOT NULL default '' COMMENT 'Account - User email',
  `account_joindate` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Account - Join Date',
  `account_lastlogin` timestamp NULL default NULL COMMENT 'Account - Last Login Timestamp',
  `account_active` tinyint(1) default NULL COMMENT 'Account - Active Flag',
  `account_loggedin` int(1) NOT NULL default '0' COMMENT 'Account - Cluster id account is logged into',
  `account_authenticated` tinyint(1) NOT NULL default '0' COMMENT 'Account - Authenticated Status',
  `account_characters_allowed` tinyint(3) unsigned NOT NULL default '2' COMMENT 'Number of characters allowed',
  `account_session_key` varchar(32) default NULL COMMENT 'Client Launcher - Session Key',
  `account_lastcreate` datetime` NOT NULL default '0000-00-00 00:00:00' COMMENT 'Account - Last Character Create TimeStamp',
  PRIMARY KEY  (`account_id`),
  UNIQUE KEY `account_username` (`account_username`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`account_id`,`account_username`,`account_password`,`account_station_id`,`account_csr`,`account_banned`,`account_email`,`account_joindate`,`account_lastlogin`,`account_active`,`account_loggedin`,`account_authenticated`,`account_characters_allowed`,`account_session_key`, `account_lastcreate` datetime`) VALUES
 (1,'swganh0','41d14978522cc50b70e73f6f0007e82a000a95d5',100000001,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (2,'swganh1','41d14978522cc50b70e73f6f0007e82a000a95d5',100000002,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (3,'swganh2','41d14978522cc50b70e73f6f0007e82a000a95d5',100000003,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (4,'swganh3','41d14978522cc50b70e73f6f0007e82a000a95d5',100000004,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (5,'swganh4','41d14978522cc50b70e73f6f0007e82a000a95d5',100000005,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (6,'swganh5','41d14978522cc50b70e73f6f0007e82a000a95d5',100000006,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (7,'swganh6','41d14978522cc50b70e73f6f0007e82a000a95d5',100000007,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (8,'swganh7','41d14978522cc50b70e73f6f0007e82a000a95d5',100000008,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (9,'swganh8','41d14978522cc50b70e73f6f0007e82a000a95d5',100000009,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00'),
 (10,'swganh9','41d14978522cc50b70e73f6f0007e82a000a95d5',100000010,0,0,'test@swganh.org','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
