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
-- Definition of table `commerce_auction`
--

DROP TABLE IF EXISTS `commerce_auction`;
CREATE TABLE `commerce_auction` (
  `auction_id` bigint(20) unsigned NOT NULL,
  `owner_id` bigint(20) unsigned NOT NULL,
  `bazaar_id` bigint(20) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `start` bigint(20) unsigned NOT NULL,
  `premium` int(10) unsigned NOT NULL,
  `category` int(10) unsigned NOT NULL,
  `itemtype` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `name` char(128) NOT NULL,
  `description` text NOT NULL,
  `region_id` int(2) NOT NULL,
  `bidder_name` char(64) NOT NULL,
  `planet_id` int(2) NOT NULL,
  `object_string` char(255) NOT NULL,
  PRIMARY KEY  (`auction_id`),
  KEY `commerce_planet_id` (`planet_id`),
  KEY `commerce_region_id` (`region_id`),
  KEY `commerce_bazaar_id` (`bazaar_id`),
  KEY `FK_commerce_auction_owner` (`owner_id`),
  CONSTRAINT `commerce_auction_ibfk_1` FOREIGN KEY (`bazaar_id`) REFERENCES `commerce_bazaar` (`bazaar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_commerce_auction_owner` FOREIGN KEY (`owner_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commerce_auction`
--

/*!40000 ALTER TABLE `commerce_auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `commerce_auction` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;