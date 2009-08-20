DELIMITER $$

DROP PROCEDURE IF EXISTS `swganh`.`sp_ErrorLogHandler` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ErrorLogHandler`(
	 IN zone char(64),
   IN system char(64),
   IN message char(255))
BEGIN

   DECLARE startindex INT;
   DECLARE logindex INT;
   DECLARE currentTime BIGINT(20);

   SET currentTime = UNIX_TIMESTAMP();
   SELECT MAX(log_error.index)+1 FROM log_error INTO logindex;

   SELECT serverstartID FROM config_process_list WHERE name like zone INTO startindex;
   INSERT INTO log_error VALUES (logindex, NOW(), zone, system, message, startindex);


END $$

DELIMITER ;