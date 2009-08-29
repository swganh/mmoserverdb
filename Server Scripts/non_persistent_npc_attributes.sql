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
-- Definition of table `non_persistent_npc_attributes`
--

DROP TABLE IF EXISTS `non_persistent_npc_attributes`;
CREATE TABLE `non_persistent_npc_attributes` (
  `npc_id` bigint(20) unsigned NOT NULL default '0',
  `attribute_id` int(11) unsigned NOT NULL default '0',
  `value` char(255) NOT NULL default '""',
  `order` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`npc_id`,`attribute_id`),
  KEY `fk_non_per_npc_att_att` (`attribute_id`),
  CONSTRAINT `fk_non_per_npc_att_att` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_non_per_npc_att_npc` FOREIGN KEY (`npc_id`) REFERENCES `non_persistent_npcs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `non_persistent_npc_attributes`
--

/*!40000 ALTER TABLE `non_persistent_npc_attributes` DISABLE KEYS */;
INSERT INTO `non_persistent_npc_attributes` (`npc_id`,`attribute_id`,`value`,`order`) VALUES 
 (1,0,'0',0);
 
/*!40000 ALTER TABLE `non_persistent_npc_attributes` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;