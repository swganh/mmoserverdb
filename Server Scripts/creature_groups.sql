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
-- Definition of table `creature_groups`
--

DROP TABLE IF EXISTS `creature_groups`;
CREATE TABLE `creature_groups` (
  `id` int(11) NOT NULL,
  `creature_group_id` bigint(20) NOT NULL,
  `creature_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`,`creature_group_id`),
  KEY `fk_creature_groups_creature` (`creature_id`),
  CONSTRAINT `fk_creature_groups_creature` FOREIGN KEY (`creature_id`) REFERENCES `creatures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creature_groups`
--

/*!40000 ALTER TABLE `creature_groups` DISABLE KEYS */;
INSERT INTO `creature_groups` (`id`,`creature_group_id`,`creature_id`) VALUES
 (1,1,101),
 (2,1,102),
 (3,1,103),
 (4,1,104),
 (5,1,105),
 (6,2,106);
/*!40000 ALTER TABLE `creature_groups` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;