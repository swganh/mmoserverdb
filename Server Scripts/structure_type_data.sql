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
-- Definition of table `structure_type_data`
--

DROP TABLE IF EXISTS `structure_type_data`;
CREATE TABLE `structure_type_data` (
  `type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_string` varchar(128) NOT NULL,
  `lots_used` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `stf_name` varchar(45) NOT NULL,
  `stf_file` varchar(45) NOT NULL,
  `healing_modifier` float NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_type_data`
--

/*!40000 ALTER TABLE `structure_type_data` DISABLE KEYS */;
INSERT INTO `structure_type_data` (`type`,`object_string`,`lots_used`,`name`,`stf_name`,`stf_file`,`healing_modifier`) VALUES 
 (1,'object/installation/mining_organic/shared_mining_organic_flora_farm.iff',1,'','','',0),
 (2,'object/building/poi/shared_scout_camp_s0.iff',0,'basic camp','basic_name','camp',0.65);
/*!40000 ALTER TABLE `structure_type_data` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;