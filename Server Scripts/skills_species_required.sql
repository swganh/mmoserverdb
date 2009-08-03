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
-- Definition of table `skills_species_required`
--

DROP TABLE IF EXISTS `skills_species_required`;
CREATE TABLE `skills_species_required` (
  `skill_id` int(11) unsigned NOT NULL,
  `species_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`skill_id`,`species_id`),
  KEY `fk_skills_speciesreq_spec_spec` (`species_id`),
  CONSTRAINT `fk_skills_speciesreq_skill_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_skills_speciesreq_spec_spec` FOREIGN KEY (`species_id`) REFERENCES `race` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills_species_required`
--

/*!40000 ALTER TABLE `skills_species_required` DISABLE KEYS */;
INSERT INTO `skills_species_required` (`skill_id`,`species_id`) VALUES 
 (642,0),
 (643,0),
 (646,0),
 (652,0),
 (658,0),
 (661,0),
 (664,0),
 (670,0),
 (673,0),
 (677,0),
 (642,1),
 (643,1),
 (646,1),
 (652,1),
 (658,1),
 (661,1),
 (664,1),
 (670,1),
 (673,1),
 (679,1),
 (642,2),
 (643,2),
 (646,2),
 (652,2),
 (658,2),
 (661,2),
 (664,2),
 (670,2),
 (673,2),
 (680,2),
 (642,3),
 (643,3),
 (646,3),
 (652,3),
 (658,3),
 (661,3),
 (664,3),
 (670,3),
 (673,3),
 (678,3),
 (655,4),
 (682,4),
 (642,5),
 (643,5),
 (646,5),
 (652,5),
 (658,5),
 (661,5),
 (664,5),
 (670,5),
 (673,5),
 (676,5),
 (642,6),
 (643,6),
 (646,6),
 (652,6),
 (658,6),
 (661,6),
 (664,6),
 (667,6),
 (668,6),
 (670,6),
 (673,6),
 (681,6),
 (642,7),
 (643,7),
 (646,7),
 (652,7),
 (658,7),
 (661,7),
 (664,7),
 (670,7),
 (673,7),
 (683,7),
 (684,33),
 (685,49);
/*!40000 ALTER TABLE `skills_species_required` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;