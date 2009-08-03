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
-- Definition of table `structure_item_template`
--

DROP TABLE IF EXISTS `structure_item_template`;
CREATE TABLE `structure_item_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `structure_id` int(10) unsigned NOT NULL,
  `cell` int(10) unsigned NOT NULL,
  `item_type` int(10) unsigned NOT NULL,
  `relX` float NOT NULL,
  `relY` float NOT NULL,
  `relZ` float NOT NULL,
  `dirX` float NOT NULL,
  `dirY` float NOT NULL,
  `dirZ` float NOT NULL,
  `dirW` float NOT NULL,
  `tan_type` int(10) unsigned NOT NULL,
  `rekW` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_item_template`
--

/*!40000 ALTER TABLE `structure_item_template` DISABLE KEYS */;
INSERT INTO `structure_item_template` (`id`,`structure_id`,`cell`,`item_type`,`relX`,`relY`,`relZ`,`dirX`,`dirY`,`dirZ`,`dirW`,`tan_type`,`rekW`) VALUES 
 (1,2,0,37,0.8,0,2,0,0,0,1,4,0),
 (2,2,0,287,0.8,0,4.1,0,0,0,1,7,0),
 (4,2,0,326,0.9,0,4.7,0,0.48,0,0.87,12,0),
 (5,2,0,369,0,0,5.2,0,0,0,1,7,0),
 (8,2,0,2768,-1.2,0,4.3,0,0.48,0,0.87,7,58),
 (9,2,0,1033,0.9,0,4.5,0,0,0,1,12,0);
/*!40000 ALTER TABLE `structure_item_template` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;