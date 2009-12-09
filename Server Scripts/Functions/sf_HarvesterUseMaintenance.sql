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
-- Definition of function `sf_HarvesterUseMaintenance`
--

DROP FUNCTION IF EXISTS `sf_HarvesterUseMaintenance`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_HarvesterUseMaintenance`(hID BIGINT(20)) RETURNS int(11)
BEGIN

--
-- Declare Variables
-- it

  DECLARE maint INTEGER;
  DECLARE maintchar VARCHAR(128);
  DECLARE rate INTEGER;
  DECLARE decayrate INTEGER;
  DECLARE quantity INTEGER;

  DECLARE active INTEGER;
  DECLARE struct_condition INTEGER;
  DECLARE percent FLOAT;

--
-- set a proper exit handler in case we have a faulty resource ID
--

  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'
  BEGIN
    UPDATE harvesters h SET h.active = 0 WHERE h.ID = hID;
    RETURN 3;
  END;


--
-- get the maintenance reserves
--

  SELECT sa.value FROM structure_attributes sa WHERE sa.structure_id =hID AND sa.attribute_id = 382 INTO maintchar;
  SELECT CAST(maintchar AS SIGNED) INTO maint;

--
-- get the maintenance rate
--

  SELECT st.maint_cost_wk FROM structures s INNER JOIN structure_type_data st ON (s.type = st.type) WHERE s.ID =hID  INTO rate;
  SELECT st.decay_rate FROM structures s INNER JOIN structure_type_data st ON (s.type = st.type) WHERE s.ID =hID  INTO decayrate;


--
-- do we have maintenance in the first place ?
--

  IF((maint > 0) AND (maint <= (rate))) THEN

--
-- reduce the condition partly due to partly maintenance missing
--

    SELECT (maint/(rate/100)) INTO percent;
    UPDATE structures s SET s.condition = (s.condition -(decayrate*percent));

    SELECT '0' INTO maintchar;

    UPDATE structure_attributes sa SET sa.VALUE = maintchar WHERE sa.structure_id =hID AND sa.attribute_id = 382;

    UPDATE harvesters h SET h.active = 0 WHERE h.ID = hID;

--
-- Return 1 for structure out of maintenance - turned off
--

    return 1;
  END IF;

  IF(maint = 0) THEN
    UPDATE structure_attributes sa SET sa.VALUE = maintchar WHERE sa.structure_id =hID AND sa.attribute_id = 382;

    UPDATE harvesters h SET h.active = 0 WHERE h.ID = hID;
    UPDATE structures s SET s.condition = (s.condition -decayrate);

--
-- damage the structures Condition
--

    SELECT s.condition FROM structures s WHERE s.ID =hID  INTO struct_condition;

--
-- notify if the structure needs to be condemned
--

    if(struct_condition <= 0) THEN
      UPDATE structures s SET s.condition = 0 WHERE s.ID =hID;
      return 2;
    END IF;

--
-- Return 1 for structure out of maintenance - turned off
--

    return 1;
  END IF;


--
-- rate/168 is hourly maintenance - we need to deduct it every half hour as every 30 min is the condition damage intervall
--

    SELECT CAST((maint - (rate/336)) AS CHAR(128)) INTO maintchar;
  UPDATE structure_attributes sa SET sa.VALUE = maintchar WHERE sa.structure_id =hID AND sa.attribute_id = 382;

--
-- Return 0 for uneventful cycle
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
