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
-- Definition of procedure `sp_GetObjectChildren`
--

DROP PROCEDURE IF EXISTS `sp_GetObjectChildren`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetObjectChildren`(
	IN object_id BIGINT(20))
BEGIN

    DECLARE loopEnd INT DEFAULT 0;
    DECLARE _id BIGINT(20);
    DECLARE _parent_id BIGINT(20);

	  DECLARE cur_1 CURSOR FOR SELECT id, parent_id FROM items WHERE parent_id = object_id;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;



    OPEN cur_1;
      REPEAT
          FETCH cur_1 INTO _id, _parent_id;
          IF NOT loopEnd THEN
            SELECT 'items', _id, _parent_id;
            CALL sp_GetObjectChildren(_id);
          END IF;
      UNTIL loopEnd END REPEAT;
    CLOSE cur_1;

    SELECT 'resource_containers',resource_containers.id,  resource_containers.parent_id FROM resource_containers WHERE (parent_id = object_id);

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