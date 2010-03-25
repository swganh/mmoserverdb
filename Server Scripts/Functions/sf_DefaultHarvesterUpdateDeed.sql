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

USE swganh;

--
-- Definition of function `sf_DefaultHarvesterUpdateDeed`
--

DROP FUNCTION IF EXISTS `sf_DefaultHarvesterUpdateDeed`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DefaultHarvesterUpdateDeed`(parent_id BIGINT(20), owner_id BIGINT(20)) RETURNS bigint(20)
BEGIN

        DECLARE deed_id BIGINT(20);
        DECLARE att_id INT;
        DECLARE att_value CHAR(255);
        DECLARE t_value CHAR(255);
        DECLARE loopEnd INT DEFAULT 0;
        DECLARE cond INTEGER;
        DECLARE maintchar VARCHAR(128);
        DECLARE maint INTEGER;
        DECLARE rate INTEGER;

        DECLARE cur_1 CURSOR FOR SELECT sa.attribute_id, sa.value FROM structure_attributes sa WHERE sa.structure_id=parent_id;

        DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;

        SELECT i.id FROM items i WHERE i.parent_id = parent_id AND item_family = 15 INTO deed_id;

--
-- get the maintenance div by 168
--

        SELECT sa.value FROM structure_attributes sa WHERE sa.structure_id = parent_id AND sa.attribute_id = 382 INTO maintchar;
        SELECT CAST(maintchar AS SIGNED) INTO maint;

        SELECT st.maint_cost_wk FROM structures s INNER JOIN structure_type_data st ON (s.type = st.type) WHERE s.ID = parent_id  INTO rate;

        IF(maint < ((rate/168)*45))THEN
           DELETE FROM items WHERE id = deed_id;
           RETURN(1);
        END IF;

        SELECT CAST((maint-((rate/168)*45)) AS CHAR(128)) INTO maintchar;
        UPDATE structure_attributes sa SET sa.VALUE = maintchar WHERE sa.structure_id = parent_id AND sa.attribute_id = 382;

        IF loopEnd THEN
           RETURN(0);
        END IF;


        OPEN cur_1;
        REPEAT
                FETCH cur_1 INTO att_id,att_value;
                IF NOT loopEnd THEN
                        UPDATE  item_attributes ia SET ia.value = att_value WHERE ia.item_id = deed_id AND ia.attribute_id = att_id;
                END IF;
        UNTIL loopEnd END REPEAT;

        CLOSE cur_1;

        UPDATE  items i SET i.parent_id = owner_id WHERE i.parent_id = parent_id AND i.item_family = 15;

        RETURN(deed_id);
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
