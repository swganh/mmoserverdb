DELIMITER $$

DROP FUNCTION IF EXISTS `swganh`.`sf_DiscardResource` $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DiscardResource`(structure_id BIGINT(20), resource_id BIGINT(20), amount FLOAT) RETURNS int(11)
BEGIN
        DECLARE RAmount FLOAT;
        DECLARE Rres BIGINT(20);

        SELECT quantity FROM harvester_resources WHERE structure_id = ID AND resource_id = resourceID INTO RAmount;
        SELECT ResourceID FROM harvesters WHERE structure_id = ID INTO Rres;

        IF RAmount > amount THEN
           UPDATE harvester_resources set quantity = RAmount - amount WHERE structure_id = ID AND resource_id = resourceID;
           RETURN(0);
        END IF;

        IF RAmount < amount THEN
           RETURN(1);
        END IF;


        IF Rres = resource_id THEN

           UPDATE harvester_resources set quantity = 0 WHERE structure_id = ID AND resource_id = resourceID;
           RETURN(0);
        END IF;

        DELETE FROM harvester_resources WHERE structure_id = ID AND resource_id = resourceID;

        RETURN(0);

END $$

DELIMITER ;