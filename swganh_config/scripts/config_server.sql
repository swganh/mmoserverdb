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
-- Definition of table `config_server`
--

DROP TABLE IF EXISTS `config_server`;
CREATE TABLE `config_server` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `galaxy_id` int(10) unsigned NOT NULL,
  `process_id` int(10) unsigned NOT NULL,
  `config_option` bigint(22) unsigned NOT NULL,
  `config_value` char(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_configuration_galaxy` (`galaxy_id`),
  KEY `FK_configuration_process` (`process_id`),
  KEY `FK_configuration_attribute` (`config_option`),
  CONSTRAINT `FK_configuration_galaxy` FOREIGN KEY (`galaxy_id`) REFERENCES `config_galaxy` (`galaxy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_configuration_process` FOREIGN KEY (`process_id`) REFERENCES `config_process_list` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_configuration_attribute` FOREIGN KEY (`config_option`) REFERENCES `config_attributes` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_server`
--

/*!40000 ALTER TABLE `config_server` DISABLE KEYS */;
INSERT INTO `config_server` (`id`,`galaxy_id`,`process_id`,`config_option`,`config_value`) VALUES
 (1,2,0,1000,'127.0.0.1'),
 (2,2,0,1001,'44990'),
 (3,2,0,1010,'8192'),
 (4,2,0,1011,'8192'),
 (5,2,0,1005,'8'),
 (6,2,0,1006,'8'),
 (7,2,0,1007,'logs/loginserver.log'),
 (8,2,6,1000,'127.0.0.1'),
 (9,2,6,1001,'5200'),
 (10,2,6,1010,'8192'),
 (11,2,6,1011,'8192'),
 (12,2,6,1005,'8'),
 (13,2,6,1006,'8'),
 (14,2,6,1007,'logs/chatserver.log'),
 (15,2,1,1000,'127.0.0.1'),
 (16,2,1,1001,'44991'),
 (17,2,1,1003,'127.0.0.1'),
 (18,2,1,1004,'5000'),
 (19,2,1,1010,'50000'),
 (20,2,1,1011,'50000'),
 (21,2,1,1012,'50000'),
 (22,2,1,1013,'2'),
 (23,2,1,1005,'8'),
 (24,2,1,1006,'8'),
 (25,2,1,1007,'logs/connectionserver.log'),
 (26,2,8,1000,'127.0.0.1'),
 (27,2,8,1001,'5001'),
 (28,2,8,1010,'16384'),
 (29,2,8,1011,'16384'),
 (30,2,8,2000,'0.7'),
 (31,2,8,2001,'100'),
 (32,2,8,2002,'100'),
 (33,2,8,2003,'20'),
 (34,2,8,2004,'0'),
 (35,2,8,1005,'8'),
 (36,2,8,1006,'8'),
 (37,2,8,1007,'logs/corellia.log'),
 (38,2,8,3000,'128'),
 (39,2,8,3001,'64'),
 (40,2,8,3002,'10'),
 (41,2,8,3003,'100'),
 (42,2,8,3004,'100'),
 (43,2,8,3005,'100'),
 (44,2,8,3006,'3'),
 (45,2,8,3007,'30'),
 (46,2,8,3008,'300'),
 (47,2,8,1008,'0'),
 (48,2,8,1009,'30');
/*!40000 ALTER TABLE `config_server` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
