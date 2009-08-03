-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.25-rc-community-log


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
-- Definition of table `character_buff_attributes`
--



DROP TABLE IF EXISTS `character_buff_attributes`;

CREATE TABLE `character_buff_attributes` (
  	`buff_id` Bigint(20) unsigned NOT NULL,
  
						`character_id` Bigint(20) unsigned NOT NULL,
  
						`type` Bigint(20) unsigned NOT NULL,
  
						`initial` Bigint(20) NOT NULL DEFAULT '0',
  
						`tick` Bigint(20) NOT NULL DEFAULT '0',
  
						`final` Bigint(20) NOT NULL DEFAULT '0',
  
						`id` Bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  
						PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Dumping data for table `character_buff_attributes`
--


/*!40000 ALTER TABLE `character_buff_attributes` DISABLE KEYS */;

/*!40000 ALTER TABLE `character_buff_attributes` ENABLE KEYS */;





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
