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
-- Definition of function `sf_NewTicket`
--

DROP FUNCTION IF EXISTS `sf_NewTicket`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
DROP FUNCTION IF EXISTS `swganh`.`sf_NewTicket` $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_NewTicket`(playerName TEXT, category INT, subCategory INT, ticketcomment TEXT, info TEXT, harrassing TEXT, lang CHAR(2), bugreport TINYINT(1)) RETURNS int(11)
BEGIN

  DECLARE character_id BIGINT(20);
  DECLARE subcategory_id INT;
  DECLARE inserted INT;
  SELECT id FROM characters WHERE characters.firstname = SUBSTRING_INDEX(playerName, ' ', 1) INTO character_id;
  SELECT csr_subcategories.subcategory_index FROM csr_subcategories WHERE (csr_subcategories.subcategory_id = subCategory) AND (csr_subcategories.category_id = category) INTO subcategory_id;
  INSERT INTO csr_tickets VALUES (NULL, subcategory_id, ticketcomment, info, harrassing, lang, bugreport, character_id, 0, 0, UNIX_TIMESTAMP());
  SELECT MAX(ticket_id) FROM csr_tickets INTO inserted;
  RETURN (inserted);
END $$

 $$

/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;