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
-- Definition of table `biography_profession`
--

DROP TABLE IF EXISTS `biography_profession`;
CREATE TABLE `biography_profession` (
  `profession` char(255) NOT NULL default '',
  PRIMARY KEY  (`profession`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `biography_profession`
--

/*!40000 ALTER TABLE `biography_profession` DISABLE KEYS */;
INSERT INTO `biography_profession` (`profession`) VALUES 
 ('Architect'),
 ('Armorsmith'),
 ('Artisan'),
 ('Bio-Engineer'),
 ('Bounty Hunter'),
 ('Brawler'),
 ('Carbineer'),
 ('Chef'),
 ('Combat Medic'),
 ('Commando'),
 ('Creature Handler'),
 ('Dancer'),
 ('Doctor'),
 ('Droid Engineer'),
 ('Entertainer'),
 ('Fencer'),
 ('Image Designer'),
 ('Jedi'),
 ('Marksman'),
 ('Medic'),
 ('Musician'),
 ('Pikerman'),
 ('Pistoleer'),
 ('Ranger'),
 ('Rifleman'),
 ('Scout'),
 ('Smuggler'),
 ('Swordsman'),
 ('Tailor'),
 ('Teras Kasi Artist'),
 ('Weaponsmith');
/*!40000 ALTER TABLE `biography_profession` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
