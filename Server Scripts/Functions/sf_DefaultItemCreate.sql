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
-- Definition of function `sf_DefaultItemCreate`
--

DROP FUNCTION IF EXISTS `sf_DefaultItemCreate`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DefaultItemCreate`(family_id INT(11),type_id INT(11),parent_id BIGINT(20),privateowner_id BIGINT(20),inPlanet INT,inX FLOAT,inY FLOAT,inZ FLOAT,custom_name CHAR(255)) RETURNS bigint(20)
BEGIN
        DECLARE tmpId BIGINT(20);
        DECLARE att_id,att_order INT;
        DECLARE att_value CHAR(255);
        DECLARE loopEnd INT DEFAULT 0;
        DECLARE cur_1 CURSOR FOR SELECT attribute_id,attribute_value,attribute_order FROM item_family_attribute_defaults WHERE item_family_attribute_defaults.family_id=family_id AND item_family_attribute_defaults.item_type_id=type_id;
        DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;
        INSERT INTO items VALUES (NULL,parent_id,family_id,type_id,privateowner_id,0,0,0,0,inX,inY,inZ,inPlanet,custom_name,100,0,0);
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
