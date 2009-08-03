-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.22-rc-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema swganh
--

CREATE DATABASE IF NOT EXISTS swganh;
USE swganh;

--
-- Definition of function `sf_DefaultManufactureSchematicCreate`
--

DROP FUNCTION IF EXISTS `sf_DefaultManufactureSchematicCreate`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DefaultManufactureSchematicCreate`(schematicCrc INT(11) UNSIGNED,parent_id BIGINT(20)) RETURNS bigint(20)
BEGIN
        DECLARE tmpId BIGINT(20);
        DECLARE att_id INT;
        DECLARE att_order INT;
        DECLARE att_value CHAR(255);
        DECLARE loopEnd INT DEFAULT 0;
        DECLARE cur_1 CURSOR FOR SELECT attribute_id,attribute_value,attribute_order FROM draft_schematic_manufacture_defaults WHERE schematic_id=schematicCrc;
        DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;
        INSERT INTO items VALUES (NULL,parent_id,8,1312,parent_id,0,0,0,0,0,0,0,99,null,100,0,schematicCrc);
        SET tmpId = LAST_INSERT_ID();
        OPEN cur_1;
        REPEAT
                FETCH cur_1 INTO att_id,att_value,att_order;
                IF NOT loopEnd THEN
                        INSERT INTO item_attributes VALUES(tmpId,att_id,att_value,att_order,0);
                END IF;
        UNTIL loopEnd END REPEAT;
        CLOSE cur_1;
        RETURN(tmpId);
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
