/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2011 The SWG:ANH Team
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

use swganh_config;

--
-- Definition of table `config_server_scripts`
--

DROP TABLE IF EXISTS `config_server_scripts`;
CREATE TABLE `config_server_scripts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `galaxy_id` int(10) unsigned NOT NULL,
  `process_id` int(10) unsigned NOT NULL,
  `script_id` bigint(22) unsigned NOT NULL,
  `priority` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `FK_configuration_script_galaxy` (`galaxy_id`),
  KEY `FK_configuration_script_process` (`process_id`),
  KEY `FK_configuration_script_script` (`script_id`),
  CONSTRAINT `FK_configuration_script_galaxy` FOREIGN KEY (`galaxy_id`) REFERENCES `config_galaxy` (`galaxy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_configuration_script_process` FOREIGN KEY (`process_id`) REFERENCES `config_process_list` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_configuration_script_script` FOREIGN KEY (`script_id`) REFERENCES `config_scripts` (`script_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_server_scripts`
--

/*!40000 ALTER TABLE `config_server_scripts` DISABLE KEYS */;
INSERT INTO `config_server_scripts` (`id`,`galaxy_id`,`process_id`,`script_id`,`priority`) VALUES
 (1,2,8,1000,0),
 (2,2,9,1000,0),
 (3,2,10,1000,0),
 (4,2,11,1000,0),
 (5,2,12,1000,0),
 (6,2,13,1000,0),
 (7,2,14,1000,0),
 (8,2,15,1000,0),
 (9,2,16,1000,0),
 (10,2,17,1000,0),
 (11,2,8,1001,0),
 (12,2,9,1001,0),
 (13,2,10,1001,0),
 (14,2,11,1001,0),
 (15,2,12,1001,0),
 (16,2,13,1001,0),
 (17,2,14,1001,0),
 (18,2,15,1001,0),
 (19,2,16,1001,0),
 (20,2,17,1001,0),
 (21,2,42,1001,0),
 (22,2,16,1002,0),
 (23,2,16,1003,0),
 (24,2,16,1004,0),
 (25,2,16,1005,0),
 (26,2,16,1006,0),
 (27,2,16,1007,0),
 (28,2,16,1008,0);
/*!40000 ALTER TABLE `config_server_scripts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
