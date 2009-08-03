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
-- Definition of function `sf_DefaultItemCreateBySchematic`
--

DROP FUNCTION IF EXISTS `sf_DefaultItemCreateBySchematic`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DefaultItemCreateBySchematic`(schemCrc INT(11) UNSIGNED,parent_id BIGINT(20),inPlanet INT,inX FLOAT,inY FLOAT,inZ FLOAT,custom_name CHAR(255)) RETURNS bigint(20)
BEGIN
        DECLARE mFamily_id INT DEFAULT 9;
        DECLARE mType_id INT DEFAULT 1;
        DECLARE tmpId BIGINT(20);
        DECLARE att_id,att_order INT;
        DECLARE att_value CHAR(255);
        DECLARE loopEnd INT DEFAULT 0;
        DECLARE cur_1 CURSOR FOR SELECT attribute_id,attribute_value,attribute_order FROM item_family_attribute_defaults WHERE item_family_attribute_defaults.family_id=mFamily_id AND item_family_attribute_defaults.item_type_id=mType_id;
        DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;
        SELECT item_family,item_type INTO mFamily_id,mType_id FROM draft_schematic_item_link WHERE schematic_id = schemCrc;
        
        INSERT INTO items VALUES (NULL,parent_id,mFamily_id,mType_id,parent_id,0,0,0,0,inX,inY,inZ,inPlanet,custom_name,100,0,schemCrc);
        SET tmpId = LAST_INSERT_ID();
        
        IF mFamily_id = 7 THEN
                INSERT INTO item_attributes VALUES(tmpId,11,'0',0,0);
        END IF;
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
