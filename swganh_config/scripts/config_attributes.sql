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

use swganh_config;

--
-- Definition of table `config_attributes`
--

DROP TABLE IF EXISTS `config_attributes`;
CREATE TABLE `config_attributes` (
  `id` bigint(22) unsigned NOT NULL auto_increment,
  `name` char(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_attributes`
--

/*!40000 ALTER TABLE `config_attributes` DISABLE KEYS */;
INSERT INTO `config_attributes` (`id`,`name`,`description`) VALUES 
 (1000,'server.network.bind.address','-'),
 (1001,'server.network.bind.port','-'),
 (1002,'server.process.name','-'),
 (1003,'server.network.cluster.address','-'),
 (1004,'server.network.cluster.port','-'),
 (1005,'server.logging.console.priority','-'),
 (1006,'server.logging.file.priority','-'),
 (1007,'server.logging.file.name','-'),
 (1008,'server.time.speed','-'),
 (1009,'server.time.update.frequency','-'),
 (2000,'zone.spatial.index.fillfactor','-'),
 (2001,'zone.spatial.index.indexcap','-'),
 (2002,'zone.spatial.index.leafcap','-'),
 (2003,'zone.spatial.index.horizon','-'),
 (2004,'zone.resource.maps.write','-'),
 (2005,'zone.weather.max.typeid','-'),
 (2006,'zone.weather.update.frequency','-'),
 (2007,'zone.motd','Zone Server - Message of the Day'),
 (3000,'game.player.viewing.range','-'),
 (3001,'game.player.chat.range','-'),
 (3002,'game.player.logged.timeout','-'),
 (3003,'game.player.health.regen.divider','-'),
 (3004,'game.player.action.regen.divider','-'),
 (3005,'game.player.mind.regen.divider','-'),
 (3006,'game.player.max.incaps','-'),
 (3007,'game.player.base.incap.duration','-'),
 (3008,'game.player.base.incap.reset','-');
/*!40000 ALTER TABLE `config_attributes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
