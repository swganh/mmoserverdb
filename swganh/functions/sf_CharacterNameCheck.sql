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
-- Definition of function `sf_CharacterNameCheck`
--

DROP FUNCTION IF EXISTS `sf_CharacterNameCheck`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_CharacterNameCheck`(start_firstname CHAR(32), start_lastname CHAR(32), start_accountID INT) RETURNS INT(11)
charNameCheck:BEGIN

  ##
  ## sf_CharacterNameCheck (firstname, lastname)
  ##
  ## Returns:
  ##
  ##  00  name_declined_developer
  ##  01  name_declined_empty
  ##  02  name_declined_fictionally_reserved
  ##  03  name_declined_in_use
  ##  04  name_declined_internal_error
  ##  05  name_declined_no_name_generator
  ##  06  name_declined_no_template
  ##  07  name_declined_not_authorized_for_species
  ##  08  name_declined_not_creature_template
  ##  09  name_declined_not_authorized_for_species
  ##  10  name_declined_number
  ##  11  name_declined_profane
  ##  12  name_declined_racially_inappropriate
  ##  13  name_declined_reserved
  ##  14  name_declined_retry
  ##  15  name_declined_syntax
  ##  16  name_declined_too_fast
  ##  17  name_declined_cant_create_avatar


  ##
  ## Declare Vars

  DECLARE error_code INT(11);
  DECLARE check_value INT(11);
  DECLARE charlastcreate DATETIME;

  SET check_value = 0;  ## Reset the check_value
  SET error_code = 666; ## Return Error Code

  ##
  ## Start


  ##
  ## Case 00 (name_declined_developer)

  SET check_value = 0;

  SELECT COUNT(*) FROM swganh_static.name_developer WHERE name LIKE LOWER(start_firstname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 0;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT COUNT(*) FROM swganh_static.name_developer WHERE name LIKE LOWER(start_lastname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 0;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  ##
  ## Case 01 (name_declined_empty)

  SET check_value = 0;

  SELECT LENGTH(start_firstname) INTO check_value;

	IF check_value = 0 THEN SET error_code = 1;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT LENGTH(start_lastname) INTO check_value;

	IF check_value = 0 THEN SET error_code = 1;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;


  ##
  ## Case 02 (name_declined_fictionally_reserved)

  SET check_value = 0;

  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(start_firstname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 2;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(start_lastname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 2;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  ##
  ## Case 03 (name_declined_in_use)

  SET check_value = 0;

  SELECT COUNT(*) FROM swganh.characters WHERE firstname LIKE LOWER(start_firstname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 3;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  ##
  ## Case 04 (name_declined_internal_error)


  ##
  ## Case 05 (name_declined_no_name_generator)


  ##
  ## Case 06 (name_declined_no_template)


  ##
  ## Case 07 (name_declined_not_authorized_for_species)


  ##
  ## Case 08 (name_declined_not_creature_template)


  ##
  ## Case 09 (name_declined_not_authorized_for_species)


  ##
  ## Case 10 (name_declined_number)

  SET check_value = 0;

  SELECT start_firstname REGEXP('[0-9]') INTO check_value;

	IF check_value > 0 THEN SET error_code = 10;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT start_lastname REGEXP('[0-9]') INTO check_value;

	IF check_value > 0 THEN SET error_code = 10;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  ##
  ## Case 11 (name_declined_profane)

  SET check_value = 0;

  SELECT COUNT(*) FROM swganh_static.name_profane WHERE name LIKE LOWER(start_firstname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 11;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT COUNT(*) FROM swganh_static.name_profane WHERE name LIKE LOWER(start_lastname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 11;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  ##
  ## Case 12 (name_declined_racially_inappropriate)

  SET check_value = 0;

  SELECT COUNT(*) FROM swganh_static.name_racially_inappropriate WHERE name LIKE LOWER(start_firstname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 12;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT COUNT(*) FROM swganh_static.name_racially_inappropriate WHERE name LIKE LOWER(start_lastname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 12;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;


  ##
  ## Case 13 (name_declined_reserved)

  SET check_value = 0;

  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(start_firstname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 13;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(start_lastname) INTO check_value;

	IF check_value > 0 THEN SET error_code = 13;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;


  ##
  ## Case 14 (name_declined_retry)


  ##
  ## Case 15 (name_declined_syntax)

  SET check_value = 0;

  SELECT start_firstname REGEXP('[[:punct:]]') INTO check_value;

	IF check_value > 0 THEN SET error_code = 15;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;

  SELECT start_lastname REGEXP('[[:punct:]]') INTO check_value;

	IF check_value > 0 THEN SET error_code = 15;
    RETURN error_code;
    LEAVE charNameCheck;
	END IF;


  ##
  ## Case 16 (name_declined_too_fast)

  SET check_value = 0;

  SELECT account_lastcreate FROM swganh.account WHERE account_id = start_accountID INTO charlastcreate;

  IF charlastcreate = '0000-00-00 00:00:00' THEN SET charlastcreate = NOW() - INTERVAL 1 DAY;
  END IF;

  SELECT TIMESTAMPDIFF(MINUTE, charlastcreate, NOW()) INTO check_value;

  IF check_value < 15 THEN SET error_code = 16;
    RETURN error_code;
    LEAVE charNameCheck;
  END IF;

  ##
  ## Case 17 (name_declined_cant_create_avatar)


  ##
  ## Return error

  SET error_code = 666;

  RETURN error_code;

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