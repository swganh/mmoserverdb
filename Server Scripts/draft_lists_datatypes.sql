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
-- Definition of table `draft_lists_datatypes`
--

DROP TABLE IF EXISTS `draft_lists_datatypes`;
CREATE TABLE `draft_lists_datatypes` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `description` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `draft_lists_datatypes`
--

/*!40000 ALTER TABLE `draft_lists_datatypes` DISABLE KEYS */;
INSERT INTO `draft_lists_datatypes` (`id`,`description`) VALUES 
 (0,'Potency'),
 (1,'Cold Resistance'),
 (2,'Conductivity'),
 (3,'Decay Resistance'),
 (4,'Heat Resistance'),
 (5,'Flavor'),
 (6,'Mallebility'),
 (7,'Potential Energy'),
 (8,'Overall Quality'),
 (9,'Shock Resistance'),
 (10,'Unit Toughness'),
 (11,'Bulk');
/*!40000 ALTER TABLE `draft_lists_datatypes` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
