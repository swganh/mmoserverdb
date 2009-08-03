-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.22-rc-community-log


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
-- Definition of table `spawn_regions`
--

DROP TABLE IF EXISTS `spawn_regions`;
CREATE TABLE `spawn_regions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `region_id` int(11) unsigned NOT NULL DEFAULT '0',
  `spawn_type` int(11) unsigned NOT NULL DEFAULT '0',
  `planet_id` int(2) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mission` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_spawn_regions` (`region_id`),
  KEY `fk_spawn_planet` (`planet_id`),
  CONSTRAINT `fk_spawn_planet` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`planet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spawn_regions` FOREIGN KEY (`region_id`) REFERENCES `planet_regions` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64961380353 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spawn_regions`
--

/*!40000 ALTER TABLE `spawn_regions` DISABLE KEYS */;
INSERT INTO `spawn_regions` (`id`,`region_id`,`spawn_type`,`planet_id`,`parent_id`,`mission`) VALUES 
 (64961380352,97,0,5,0,0);
/*!40000 ALTER TABLE `spawn_regions` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
