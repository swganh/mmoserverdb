/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006, 2007 The swgANH Team

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
-- Definition of table `resource_containers`
--

DROP TABLE IF EXISTS `resource_containers`;
CREATE TABLE `resource_containers` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `resource_id` bigint(20) unsigned NOT NULL default '0',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '1',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1099511627776 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resource_containers`
--

/*!40000 ALTER TABLE `resource_containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_containers` ENABLE KEYS */;


--
-- Definition of trigger `tr_DeleteResourceContainer`
--

DROP TRIGGER /*!50030 IF EXISTS */ `tr_DeleteResourceContainer`;

DELIMITER $$

CREATE DEFINER = `root`@`localhost` TRIGGER `tr_DeleteResourceContainer` AFTER DELETE ON `resource_containers` FOR EACH ROW BEGIN
    DELETE FROM swganh.object_attributes WHERE object_id = OLD.id;
END $$

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;