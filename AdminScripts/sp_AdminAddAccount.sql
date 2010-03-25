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

use swganh;

--
-- Definition of procedure `sp_AdminAddAccount` 
--
-- Use: CALL sp_AdminAddAccount('username', 'userpass', 'useremail');
--
-- (Returns:
--	OK = 0,
--      NotFound = 1,
--      SQLException = 2,
--      SQLWarning = 3,
-- )
--

DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_AdminAddAccount` $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AdminAddAccount`(IN username CHAR(32), userpass CHAR(64), email CHAR(64))
BEGIN

  ##
  ## Declare Vars

  DECLARE mAccount_id BIGINT(20);
  DECLARE mStation_id BIGINT(20);
  DECLARE mAccount_password CHAR(64);
  DECLARE exit_status INT;

  DECLARE EXIT HANDLER FOR NOT FOUND
      BEGIN
        SET exit_status = 1;
          ROLLBACK;
        SELECT exit_status;
      END;


  DECLARE EXIT HANDLER FOR SQLEXCEPTION
      BEGIN
        SET exit_status = 2;
          ROLLBACK;
        SELECT exit_status;
      END;

  DECLARE EXIT HANDLER FOR SQLWARNING
      BEGIN
        SET exit_status = 3;
          ROLLBACK;
        SELECT exit_status;
      END;

  ##
  ## Prefetch the data neeeded

  SELECT SHA1(userpass) INTO maccount_password;

  SET exit_status = 0;

  ##
  ## Insert the new User Account

  START TRANSACTION;

        SELECT MAX(account_id) + 1 FROM account INTO mAccount_id FOR UPDATE;
        SELECT MAX(station_id) + 1 FROM account INTO mStation_id;

        INSERT INTO account VALUES (NULL, username, mAccount_password, mStation_id, 0, 0, email, NOW(), NOW(), 1, 0, 0, 1, '');

  COMMIT;

  SELECT exit_status;

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