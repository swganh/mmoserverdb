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
-- Definition of function `sf_DefaultHouseCreate`
--

DROP FUNCTION IF EXISTS `sf_DefaultHouseCreate`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$

CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DefaultHouseCreate`(type_id INT(11), parent_id BIGINT(20), privateowner_id BIGINT(20), inPlanet INT, oX FLOAT, oY FLOAT, oZ FLOAT, oW FLOAT, inX FLOAT, inY FLOAT, inZ FLOAT, custom_name CHAR(255), deed_id BIGINT(20)) RETURNS bigint(20)
BEGIN

  ##
  ## sd_DefaultHouseCreate (type_id, parent_id, privateowner_id, inPlanet, oX, oY, oZ, oW, inX, inY, inZ, custom_name, deed_id)
  ##
  ## Returns: new structure ID (BIGINT)
  ##

  ##
  ## Declare our VARs

  DECLARE tmpCells INT;
  DECLARE structureID BIGINT(20);
  DECLARE structureCellID BIGINT(20);
  DECLARE attr_id INT;
  DECLARE attr_order INT;
  DECLARE attr_value CHAR(255);
  DECLARE loop_counter INT DEFAULT 0;
  DECLARE loopEnd INT DEFAULT 0;
  DECLARE startingCellID BIGINT DEFAULT 0;
  DECLARE TerminalOffset INT DEFAULT 0;
  DECLARE TerminalCell BIGINT DEFAULT 0;
  DECLARE t_value INT DEFAULT 0;

  ##
  ## Declare Terminal Vars

  DECLARE terminal_count INT;        ## Number of Terminals in structure
  DECLARE final_terminal_id INT;
  DECLARE final_terminal_type INT;
  DECLARE final_structure_type INT;
  DECLARE final_cell_id INT;
  DECLARE final_x FLOAT;
  DECLARE final_y FLOAT;
  DECLARE final_z FLOAT;
  DECLARE final_qx FLOAT;
  DECLARE final_qy FLOAT;
  DECLARE final_qz FLOAT;
  DECLARE final_qw FLOAT;
  DECLARE final_planet INT DEFAULT 99;

  ##
  ## Declare Cursors

  DECLARE cur_1 CURSOR FOR SELECT attribute_id,attribute_value,attribute_order FROM structure_attribute_defaults WHERE structure_attribute_defaults.structure_type=type_id;
  DECLARE CTerminal CURSOR FOR SELECT * FROM swganh.structure_terminal_link WHERE structure_type = type_id;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;

  ##
  ## Start

  ##
  ## Determine the structure cell count

  SELECT cellcount FROM structure_type_data WHERE structure_type_data.type = type_id LIMIT 1 INTO tmpCells;

  ##
  ## Determine the new strucutre ID

  SELECT MAX(id) FROM structures into structureID;

  ##
  ## Make sure our starting id is correct

  IF structureID IS NULL THEN SET structureID = 2204928835634;
    ELSE SET structureID = structureID + 1;
  END IF;

  ##
  ## Create the structure

  INSERT INTO structures VALUES (structureID, type_id, oX, oY, oZ, oW, inX, inY, inZ, custom_name, privateowner_id, 0, 0, inPlanet, 0);

  INSERT INTO houses VALUES (structureID, 0);  ## NEEDS TO BE REMOVED

  ##
  ## Create the structure cells

  ##
  ## Determine the structure_cells ID

  SELECT MAX(id) FROM structure_cells INTO structureCellID;

  IF structureCellID IS NULL THEN SET structureCellID = 2210000000000;
    ELSE SET structureCellID = structureCellID + 1;
  END IF;

  ##
  ## Insert the cells

	SET loop_counter = 0;

	loop1: LOOP

	  IF loop_counter = tmpCells THEN
      	LEAVE loop1;
    	ELSE SET loop_counter = loop_counter + 1;
  	END IF;

  	INSERT INTO structure_cells VALUES (structureCellID, structureID);

    SET structureCellID = structureCellID + 1;

	END LOOP loop1;

  ##
  ## Create the structure terminal(s)

  SELECT id FROM structure_cells WHERE structure_cells.parent_id = structureID ORDER BY id LIMIT 1 INTO startingCellID;

  SET loopend = 0;

  ##
  ## Determine the number of terminals in the structure

  SELECT COUNT(*) from structure_terminal_link WHERE id = type_id INTO terminal_count;

  ## Create terminals

    OPEN CTerminal;
      REPEAT
      FETCH CTerminal INTO
       final_terminal_id,
       final_terminal_type,
       final_structure_type,
       final_cell_id,
       final_x,
       final_y,
       final_z,
       final_qx,
       final_qy,
       final_qz,
       final_qw;

  ##
  ## Set the Terminal cell ID (structure cell ID + Offset)

  SET TerminalCell = startingCellID + final_cell_id;

      IF NOT loopEnd THEN

        INSERT INTO terminals VALUES (NULL, TerminalCell, final_terminal_type, final_qx, final_qy, final_qz, final_qw, final_x, final_y, final_z, final_planet, NULL, 0, 0, 0, NULL);

      END IF;

    UNTIL loopEnd END REPEAT;

    CLOSE CTerminal;


  ##
  ## Create the permissions for the structure

  INSERT INTO structure_admin_data VALUES (NULL, structureID, privateowner_id, 'ADMIN');

  OPEN cur_1;
    REPEAT
      FETCH cur_1 INTO attr_id, attr_value, attr_order;
        IF NOT loopEnd THEN
          INSERT INTO structure_attributes VALUES (structureID, attr_id, attr_value, attribute_order, NULL);

          SELECT ia.value FROM item_attributes ia WHERE ia.item_id = deed_id AND ia.attribute_id = attr_id INTO t_value;

          IF t_value IS NOT NULL THEN

            UPDATE structure_attributes sa SET sa.value = t_value WHERE sa.structure_id = structureID AND sa.attribute_id = attr_id;

          END IF;
        END IF;
    UNTIL loopEnd END REPEAT;

    CLOSE cur_1;

  ##
  ## Commit & return the new structure ID

  SELECT MAX(id) FROM structures INTO structureID;

  RETURN(structureID);

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