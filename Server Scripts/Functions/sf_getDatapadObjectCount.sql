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
-- Definition of function `sf_getDatapadObjectCount`
--

DROP FUNCTION IF EXISTS `swganh`.`sf_getDatapadObjectCount`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `sf_getDatapadObjectCount`(dtpId BIGINT) RETURNS int(11)
BEGIN
        DECLARE waypointCount INT;
        DECLARE manSchemCount INT;
        DECLARE totalCount INT;
		DECLARE vehicleCount INT;


        SELECT COUNT(waypoints.waypoint_id) FROM waypoints WHERE (owner_id = dtpId-3) INTO waypointCount;
        SELECT COUNT(items.id) FROM items WHERE (parent_id = dtpId) INTO manSchemCount;
		SELECT COUNT(vehicles.id) FROM vehicles WHERE (parent = dtpId) INTO vehicleCount;

        SET totalCount = (waypointCount+ manSchemCount + vehicleCount);

        RETURN totalCount;
END $$

DELIMITER ;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;