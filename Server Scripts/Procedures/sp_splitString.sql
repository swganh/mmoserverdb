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
-- Definition of procedure `sp_splitString`
--

DROP PROCEDURE IF EXISTS `sp_splitString`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_splitString`(IN input TEXT,IN `delimiter` VARCHAR(10))
BEGIN
        DECLARE cur_position INT DEFAULT 1 ;
        DECLARE remainder TEXT;
        DECLARE cur_string VARCHAR(1000);
        DECLARE delimiter_length TINYINT UNSIGNED;

        DROP TEMPORARY TABLE IF EXISTS SplitValues;

        CREATE TEMPORARY TABLE SplitValues (value VARCHAR(1000) NOT NULL PRIMARY KEY) ENGINE=MEMORY;

        SET remainder = input;
        SET delimiter_length = CHAR_LENGTH(delimiter);

        WHILE CHAR_LENGTH(remainder) > 0 AND cur_position > 0 DO

                SET cur_position = INSTR(remainder, delimiter);

                IF cur_position = 0 THEN
                        SET cur_string = remainder;
                ELSE
                        SET cur_string = LEFT(remainder, cur_position - 1);
                END IF;

                IF TRIM(cur_string) != '' THEN
                        INSERT INTO SplitValues VALUES (cur_string);
                END IF;

                SET remainder = SUBSTRING(remainder, cur_position + delimiter_length);

        END WHILE;
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