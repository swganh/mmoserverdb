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
-- Definition of function `sf_UtilityCapitalizeString`
--
--
-- Use: SELECT sf_UtilityCapitalizeString('string to be capitalized here');
--

DROP FUNCTION IF EXISTS `sf_UtilityCapitalizeString`;

DELIMITER $$
/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$


CREATE DEFINER=`root`@`localhost` FUNCTION `sf_UtilityCapitalizeString`(mString CHAR(64))
  RETURNS CHAR(64)
BEGIN

  DECLARE mPosition INT;

  SET mString = CONCAT(UPPER(LEFT(mString,1)), LOWER(RIGHT(mString, LENGTH(mString)-1))) ;
  SET mPosition = LOCATE(' ', mString);

##
## Capitalize String
##

  IF mPosition = 0 THEN
    RETURN mString;
  ELSE
    WHILE mPosition != 0
      DO
        SET mString = CONCAT(SUBSTR(mString, 1, mPosition), UPPER(SUBSTR(mString, mPosition+1, 1)),SUBSTR(mString, mPosition+2, LENGTH(mString)) );
        SET mPosition = LOCATE(' ', mString, mPosition+1);
    END WHILE;
  END IF;

  RETURN mString;

  END$$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;