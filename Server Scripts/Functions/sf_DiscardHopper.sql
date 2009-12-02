DELIMITER $$

DROP FUNCTION IF EXISTS `swganh`.`sf_DiscardHopper` $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DiscardHopper`(hID BIGINT(20)) RETURNS bigint(20)
BEGIN

--
-- Declare Variables
-- it

  DECLARE rate float;
  DECLARE resID BIGINT(20);

--
-- still need an additional check whether har turned on ?
--


--
-- get the extraction rate and the relevant resource ID
--

  SELECT h.ResourceID FROM harvesters h WHERE (h.ID = hID)  INTO resID;

--
-- update the resources quantity
--

  UPDATE harvester_resources hr SET quantity = 0 WHERE hr.ID = hID AND hr.resourceID = resID;

--
-- still have to make sure that our hopper isnt full - turn harvester off in this event
--

--
-- now delete all the zero quantity entries
--

  DELETE FROM harvester_resources WHERE ((hID = ID) AND (ResourceID != resID));

--
-- Return the Harvesters ID
--

  RETURN hID;

--
-- Exit
--

END $$

DELIMITER ;