-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema swganh
--

CREATE DATABASE IF NOT EXISTS swganh;
USE swganh;

--
-- Definition of table `structure_attributes`
--

DROP TABLE IF EXISTS `structure_attributes`;
CREATE TABLE `structure_attributes` (
  `structure_id` bigint(20) unsigned NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `value` varchar(128) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_attributes`
--

/*!40000 ALTER TABLE `structure_attributes` DISABLE KEYS */;
INSERT INTO `structure_attributes` (`structure_id`,`attribute_id`,`value`,`order`,`id`) VALUES 
 (1,17,'Schmunzel',1,1),
 (2204928835585,17,'Schmunzel',1,2),
 (2204928835586,17,'Schmunzel',1,3),
 (2204928835587,17,'Schmunzel',1,4),
 (2204928835588,17,'Schmunzel',1,5),
 (2204928835589,17,'Schmunzel',1,6),
 (2204928835590,17,'Schmunzel',1,7),
 (2204928835591,17,'Schmunzel',1,8),
 (2204928835592,17,'Schmunzel',1,9),
 (2204928835593,17,'Schmunzel',1,10),
 (2204928835594,17,'Schmunzel',1,11),
 (2204928835595,17,'Schmunzel',1,12),
 (2204928835596,17,'Schmunzel',1,13),
 (2204928835597,17,'Schmunzel',1,14),
 (2204928835598,17,'Schmunzel',1,15),
 (2204928835599,17,'Schmunzel',1,16),
 (2204928835600,17,'Schmunzel',1,17),
 (2204928835601,17,'Schmunzel',1,18),
 (2204928835602,17,'Schmunzel',1,19),
 (2204928835602,382,'1432',2,20),
 (2204928835602,322,'999',3,21);
/*!40000 ALTER TABLE `structure_attributes` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
