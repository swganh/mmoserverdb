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
-- Definition of table `commerce_bidhistory`
--

/*

Snow auction_id CANNOT be a primary key on its own!!!. We have all bids for all auctions in this table meaning that we have multiple bids for one auction
and thus multiple entries per auction_id
bidding on auctions was broken because only one bid per auction could be stored in commerce_auction_bidhistory

*/


DROP TABLE IF EXISTS `commerce_bidhistory`;
CREATE TABLE `commerce_bidhistory` (
  `auction_id` bigint(20) unsigned NOT NULL,
  `bidder_name` char(65) NOT NULL,
  `proxy_bid` int(10) unsigned NOT NULL default '0',
  `max_bid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`auction_id`,`bidder_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `commerce_bidhistory`
--

/*!40000 ALTER TABLE `commerce_bidhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `commerce_bidhistory` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;