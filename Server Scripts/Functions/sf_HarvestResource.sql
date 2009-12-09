-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


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
-- Definition of function `sf_HarvestResource`
--

DROP FUNCTION IF EXISTS `sf_HarvestResource`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_HarvestResource`(hID BIGINT(20)) RETURNS int(11)
BEGIN

--
-- Declare Variables
-- it

  DECLARE rate float;
  DECLARE resID BIGINT(20);
  DECLARE hoppersize INTEGER;
  DECLARE quantity INTEGER;

  DECLARE active INTEGER;

--
-- set a proper exit handler in case we have a faulty resource ID
--

  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'
  BEGIN
    UPDATE harvesters h SET h.ResourceID = 0 WHERE h.ID = hID;
    UPDATE harvesters h SET h.active = 0 WHERE h.ID = hID;
    RETURN 3;
  END;


--
-- get the extraction rate and the relevant resource ID
--
  SELECT h.rate FROM harvesters h WHERE (h.ID = hID)  INTO rate;
  SELECT h.ResourceID FROM harvesters h WHERE (h.ID = hID)  INTO resID;


--
-- check whether our resource is still available
--
  SELECT r.active FROM resources r WHERE (r.id = resID)  INTO active;
  IF (active =0) THEN
    UPDATE harvesters h SET h.ResourceID = 0 WHERE h.ID = hID;
    UPDATE harvesters h SET h.active = 0 WHERE h.ID = hID;
    RETURN 2;
  END IF;



--
-- get the hoppersize
--

  SELECT sa.value FROM structure_attributes sa WHERE sa.structure_id =hID AND sa.attribute_id = 381 INTO hoppersize;

--
-- Now make sure the resource is still available and active
--


--
-- update the resources quantity
--

  UPDATE harvester_resources hr SET quantity = quantity+(rate/60) WHERE hr.ID = hID AND hr.resourceID = resID;

--
-- now delete all the zero quantity entries
--

  DELETE FROM harvester_resources WHERE ((hID = ID) AND (quantity < 1.0) AND (ResourceID != resID));


--
-- still have to make sure that our hopper isnt full - turn harvester off in this event
--
  SELECT SUM(hr.quantity) FROM harvester_resources hr WHERE (hr.ID = hID)  INTO quantity;

  IF(quantity>=hoppersize)THEN
     UPDATE harvesters h SET h.active = 0 WHERE h.ID = hID;
     UPDATE harvester_resources hr SET hr.quantity = hoppersize WHERE hr.resourceID = resID;
     RETURN 1;
  END IF;



--
-- Return the Harvesters ID
--

  RETURN 0;

--
-- Exit
--

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
