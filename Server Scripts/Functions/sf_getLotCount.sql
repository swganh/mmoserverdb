DELIMITER $$

DROP FUNCTION IF EXISTS `swganh`.`sf_getLotCount` $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_getLotCount`(charId BIGINT) RETURNS int(11)
BEGIN
        DECLARE harvesterCount INT;
        DECLARE totalCount INT;


        SELECT COUNT(harvesters.id) FROM harvesters WHERE (owner = charId) INTO harvesterCount;


        SET totalCount = (harvesterCount);

        RETURN totalCount;
END $$

DELIMITER ;