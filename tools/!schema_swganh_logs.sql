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


--
-- Create schema swganh_logs
--

CREATE DATABASE IF NOT EXISTS swganh_logs;
USE swganh_logs;

--
-- Definition of table `account_logs`
--

DROP TABLE IF EXISTS `account_logs`;
CREATE TABLE `account_logs` (
  `event_id` int(10) unsigned NOT NULL auto_increment,
  `affected_record_id` int(10) unsigned NOT NULL,
  `account_name` char(32) NOT NULL,
  `account_email` char(64) NOT NULL,
  `event_type` char(16) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_command` text NOT NULL,
  PRIMARY KEY  (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_logs`
--

/*!40000 ALTER TABLE `account_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_logs` ENABLE KEYS */;


--
-- Definition of table `loginserver_accounting`
--

DROP TABLE IF EXISTS `loginserver_accounting`;
CREATE TABLE `loginserver_accounting` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `process_id` int(10) unsigned NOT NULL,
  `ip` varchar(45) NOT NULL,
  `account_id` bigint(20) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginserver_accounting`
--

/*!40000 ALTER TABLE `loginserver_accounting` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginserver_accounting` ENABLE KEYS */;

--
-- Definition of table `server_stats`
--

DROP TABLE IF EXISTS `server_stats`;
CREATE TABLE `server_stats` (
  `type` varchar(64) NOT NULL,
  `min` int(10) unsigned NOT NULL,
  `max` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `server_stats`
--

/*!40000 ALTER TABLE `server_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_stats` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;