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
-- Definition of table `config_scripts`
--

DROP TABLE IF EXISTS `config_scripts`;
CREATE TABLE `config_scripts` (
  `script_id` bigint(22) unsigned NOT NULL auto_increment,
  `name` char(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`script_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_scripts`
--

/*!40000 ALTER TABLE `config_scripts` DISABLE KEYS */;
INSERT INTO `config_scripts` (`script_id`,`name`,`description`) VALUES
 (1000,'script/WeatherController.lua','Weather Controller'),
 (1001,'script/PlayerLoginReporter.lua','Player Login Reporter'),
 (1002,'script/TatooineNpcTest.lua','NPC Test'),
 (1003,'script/TatooineNpcTest2.lua','NPC Test'),
 (1004,'script/TatooineNpcTest3.lua','NPC Test'),
 (1005,'script/TatooineNpcTest4.lua','NPC Test'),
 (1006,'script/TatooineNpcTest5.lua','NPC Test'),
 (1007,'script/TatooineNpcTest6.lua','NPC Test'),
 (1008,'script/TatooineNpcTest7.lua','NPC Test'),
 (1009,'script/CorelliaInstanceTest.lua','Instance Test');
/*!40000 ALTER TABLE `config_scripts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
