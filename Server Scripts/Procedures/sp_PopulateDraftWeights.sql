/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006 - 2008 The swgANH Team

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
-- Definition of procedure `sp_PopulateDraftWeights`
--

DROP PROCEDURE IF EXISTS `sp_PopulateDraftWeights`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_PopulateDraftWeights`()
BEGIN

	DECLARE slot_id int;
	DECLARE loopEnd INT default 0;
	DECLARE cur_getID CURSOR FOR SELECT id FROM swganh.draft_slots;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;

				
	OPEN cur_getID;

  REPEAT

    FETCH cur_getID INTO slot_id;
		
    IF NOT loopEnd THEN
		
						
			INSERT INTO swganh.draft_experiment_lists VALUES (slot_id+10000, 7, 1); 
			INSERT INTO swganh.draft_experiment_lists VALUES (slot_id+10000, 9, 1);
			INSERT INTO swganh.draft_experiment_lists VALUES (slot_id+20000, 7, 1);
			INSERT INTO swganh.draft_experiment_lists VALUES (slot_id+30000, 8, 1);
			INSERT INTO swganh.draft_experiment_lists VALUES (slot_id+30000, 7, 1);
			INSERT INTO swganh.draft_experiment_lists VALUES (slot_id+30000, 9, 1);
			
			
      INSERT INTO swganh.draft_assembly_lists VALUES (slot_id+10000, 7, 1); 
			INSERT INTO swganh.draft_assembly_lists VALUES (slot_id+10000, 8, 1);
			INSERT INTO swganh.draft_assembly_lists VALUES (slot_id+20000, 7, 1);
			INSERT INTO swganh.draft_assembly_lists VALUES (slot_id+20000, 8, 1);
			INSERT INTO swganh.draft_assembly_lists VALUES (slot_id+30000, 7, 1);
			INSERT INTO swganh.draft_assembly_lists VALUES (slot_id+30000, 8, 1);
		END IF;

  UNTIL loopEnd END REPEAT;

  CLOSE cur_getID;

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