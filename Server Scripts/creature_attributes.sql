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
-- Definition of table `creature_attributes`
--

DROP TABLE IF EXISTS `creature_attributes`;
CREATE TABLE `creature_attributes` (
  `id` bigint(20) NOT NULL,
  `creature_id` bigint(20) NOT NULL,
  `attribute_id` int(11) default NULL,
  `value` char(255) default NULL,
  `order` int(11) default NULL,
  PRIMARY KEY  (`creature_id`,`id`),
  KEY `fk_creature_attributes_creatures` (`creature_id`),
  CONSTRAINT `fk_creature_attributes_creatures` FOREIGN KEY (`creature_id`) REFERENCES `creatures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creature_attributes`
--

/*!40000 ALTER TABLE `creature_attributes` DISABLE KEYS */;
INSERT INTO `creature_attributes` (`id`,`creature_id`,`attribute_id`,`value`,`order`) VALUES 
 (1,1,567,'Rill',1),
 (2,1,73,'None',2),
 (3,1,2010,'0',3),
 (4,1,2011,'0',4),
 (5,1,2012,'0',5),
 (6,1,2013,'0',6),
 (7,1,2014,'0',7),
 (8,1,2015,'0',8),
 (9,1,2016,'0',9),
 (10,1,2018,'0',10),
 (11,1,2036,'0',11),
 (12,1,221,'50',12),
 (13,1,225,'0',13),
 (14,1,218,'0',14),
 (15,1,216,'50',15),
 (16,1,223,'0',16),
 (17,1,224,'0',17),
 (18,1,222,'50',18),
 (19,1,220,'0',19),
 (20,1,228,'0',20),
 (21,1,45,'0',21),
 (22,1,771,'25',30),
 (23,1,401,'3',31),
 (24,1,654,'Bristley Hide',32),
 (25,1,656,'Carnivore Meat',33),
 (26,1,2037,'0',34),
 (27,1,2038,'0',35),
 (28,1,2039,'0',36),
 (29,1,2040,'0',37),
 (30,1,2041,'0',38),
 (31,1,2042,'0',39),
 (32,1,2043,'0',40),
 (33,1,2044,'0',41),
 (34,1,217,'2.0',42);
/*!40000 ALTER TABLE `creature_attributes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;