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
-- Definition of table `structure_attribute_defaults`
--

DROP TABLE IF EXISTS `structure_attribute_defaults`;
CREATE TABLE `structure_attribute_defaults` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `structure_type` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  `attribute_value` varchar(128) NOT NULL,
  `attribute_order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_attribute_defaults`
--

/*!40000 ALTER TABLE `structure_attribute_defaults` DISABLE KEYS */;
INSERT INTO `structure_attribute_defaults` (`id`,`structure_type`,`attribute_id`,`attribute_value`,`attribute_order`) VALUES 
 (1,41,17,'Schmunzel',1),
 (2,51,362,'3',4),
 (3,51,383,'30',1),
 (4,51,382,'0',2),
 (5,51,381,'3000',3),
 (6,41,362,'3',4),
 (7,41,383,'30',1),
 (8,41,382,'0',2),
 (9,41,381,'3000',3);
/*!40000 ALTER TABLE `structure_attribute_defaults` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
