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
-- Definition of table `config_process_list`
--

DROP TABLE IF EXISTS `config_process_list`;
CREATE TABLE `config_process_list` (
  `id` int(10) unsigned NOT NULL default '0',
  `address` char(16) NOT NULL default '127.0.0.1',
  `port` int(10) unsigned NOT NULL default '0',
  `status` int(10) unsigned NOT NULL default '0' COMMENT '0=offline, 1=loading, 2=online, 3=locked',
  `active` int(10) unsigned NOT NULL default '0',
  `name` char(32) NOT NULL default '',
  `description` char(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_process_list`
--

/*!40000 ALTER TABLE `config_process_list` DISABLE KEYS */;
INSERT INTO `config_process_list` (`id`,`address`,`port`,`status`,`active`,`name`,`description`) VALUES 
 (0,'',0,0,0,'login','Handles initial connectivity and authentication of client.'),
 (1,'',56513,0,0,'connection','Handles all client connections.'),
 (2,'',0,0,0,'unused','Unused server ID.'),
 (3,'',0,0,0,'unused','Unused server ID.'),
 (4,'',0,0,0,'unused','Unused server ID.'),
 (5,'',56521,0,1,'admin','Handles miscellaneous game functions that just don\'t fit elsewhere.'),
 (6,'',1330,0,0,'chat','Handles chat,tells,mails,tickets'),
 (7,'',0,0,0,'unused','Unused server ID.'),
 (8,'',2223,0,0,'corellia','Zone server for Corellia'),
 (9,'',2133,0,0,'dantooine','Zone server for Dantooine'),
 (10,'',2169,0,0,'dathomir','Zone server for Dathomir'),
 (11,'',2139,0,0,'endor','Zone server for Endor'),
 (12,'',2151,0,0,'lok','Zone server for Lok'),
 (13,'',2127,0,0,'naboo','Zone server for Naboo'),
 (14,'',2145,0,0,'rori','Zone server for Rori'),
 (15,'',2163,0,0,'talus','Zone server for Talus'),
 (16,'',1355,0,0,'tatooine','Zone server for Tatooine'),
 (17,'',2157,0,0,'yavin4','Zone server for Yavin 4'),
 (18,'',0,0,0,'space_corellia','Zone server for Corellian Space 1'),
 (19,'',0,0,0,'space_corellia_2','Zone server for Corellian Space 2'),
 (20,'',0,0,0,'space_dantooine','Zone server for Dantooine Space'),
 (21,'',0,0,0,'space_dathomir','Zone server for Dathomir Space'),
 (22,'',0,0,0,'space_endor','Zone server for Endor Space'),
 (23,'',0,0,0,'space_env','Zone server for uknown space'),
 (24,'',0,0,0,'space_halos','Zone server for unknown space'),
 (25,'',0,0,0,'space_heavy1','Zone server for unknown space'),
 (26,'',0,0,0,'space_light1','Zone server for unknown space'),
 (27,'',0,0,0,'space_lok','Zone server for Lok Space'),
 (28,'',0,0,0,'space_naboo','Zone server for Naboo Space 1'),
 (29,'',0,0,0,'space_naboo_2','Zone server for Naboo Space 2'),
 (30,'',0,0,0,'space_tatooine','Zone server for Tatooine Space 1'),
 (31,'',0,0,0,'space_tatooine_2','Zone server for Tatooine Space 2'),
 (32,'',0,0,0,'space_yavin4','Zone server to Yavin 4 Space'),
 (33,'',1216,0,0,'09',''),
 (34,'',0,0,0,'10',''),
 (35,'',0,0,0,'11',''),
 (36,'',0,0,0,'character_farm',''),
 (37,'',0,0,0,'cinco_city_test_m5',''),
 (38,'',0,0,0,'creature_test',''),
 (39,'',0,0,0,'dungeon1',''),
 (40,'',0,0,0,'endor_asommers',''),
 (41,'',0,0,0,'floratest',''),
 (42,'',0,0,0,'godclient_test',''),
 (43,'',0,0,0,'otoh_gunga',''),
 (44,'',0,0,0,'rivertest',''),
 (45,'',0,0,0,'runtimerules',''),
 (46,'',1786,0,0,'simple',''),
 (47,'',0,0,0,'space_09',''),
 (48,'',0,0,0,'test_wearables',''),
 (49,'',56546,0,1,'tutorial',''),
 (50,'',4104,0,0,'taanab','Zone server for Tanaab'),
 (51,'',2416,0,0,'dagobah','Zone server for Dagobah.');
/*!40000 ALTER TABLE `config_process_list` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;