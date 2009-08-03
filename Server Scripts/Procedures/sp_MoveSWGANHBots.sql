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
-- Definition of procedure `sp_MoveSWGANHBots`
--

DROP PROCEDURE IF EXISTS `sp_MoveSWGANHBots`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MoveSWGANHBots`()
BEGIN
	DECLARE new_account_id BIGINT(22);
	DECLARE min_coord_x FLOAT;
	DECLARE min_coord_z FLOAT;
	DECLARE max_coord_x FLOAT;
	DECLARE max_coord_z FLOAT;
	DECLARE coord_x FLOAT;
	DECLARE coord_z FLOAT;

	DECLARE loopEnd INT default 0;
	DECLARE cur_movebot CURSOR FOR SELECT account_id FROM swganh.characters WHERE (account_id > 999999);
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;



	SET min_coord_x = -8000;
	SET min_coord_z = -8000;
	SET max_coord_x = 8000;
	SET max_coord_z = 8000;
	SET loopEnd = 0;

	OPEN cur_movebot;

  REPEAT

    FETCH cur_movebot INTO new_account_id;

	SET coord_x = rand()*(max_coord_x-min_coord_x) + min_coord_x;
	SET coord_z = rand()*(max_coord_z-min_coord_z) + min_coord_z;

    IF NOT loopEnd THEN
       UPDATE swganh.characters SET planet_id = 2, x = coord_x, z = coord_z WHERE account_id like new_account_id;
		END IF;

  UNTIL loopEnd END REPEAT;

  CLOSE cur_movebot;

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