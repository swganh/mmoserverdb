/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2010 The SWG:ANH Team
---------------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
---------------------------------------------------------------------------------------
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE swganh_utility;

--
-- Definition of procedure `sp_AdminAccountAdd`
--

DROP PROCEDURE IF EXISTS `sp_AdminAccountAdd`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AdminAccountAdd`(IN username CHAR(32), userpass CHAR(64), email CHAR(64), accounttype INT(2), maxcharsallowed INT(2))
BEGIN

  ##
  ## sp_AdminAccountAdd(username, password, email, account_type, max_characters_allowed)
  ##
  ## Returns
  ##
  ## account_id (BIGINT)

  ##
  ## Declare Vars


  DECLARE mAccount_id BIGINT(20);
  DECLARE mStation_id BIGINT(20);
  DECLARE shapassword CHAR(64);

  ##
  ## Start

  ##
  ## Generate our password hash

  SELECT SHA1(userpass) INTO shapassword;

  ##
  ## Select our next available ID

  SELECT MAX(account_id) + 1 FROM swganh.account INTO mAccount_id FOR UPDATE;

    IF mAccount_id IS NULL THEN
      SET mAccount_id = 1;
    END IF;

  ##
  ## Select our new station ID

  SELECT MAX(account_station_id) + 1 FROM swganh.account INTO mStation_id;

    IF mStation_id IS NULL THEN
      SET mStation_id = 1000000;
    END IF;

  ##
  ## Create the account

  INSERT INTO swganh.account VALUES (NULL, username, shapassword, mStation_id, mAccountType, accounttype, mEmail, NOW(), NOW(), 1, 0, maxcharsallowed, 1, NULL, NOW() - INTERVAL 30 MINUTE);

  ##
  ## Return new account ID and Exit

  SELECT mAccount_id;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
