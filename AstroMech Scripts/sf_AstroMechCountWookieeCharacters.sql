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

use swganh_astromech;

--
-- Definition of function `sf_AstroMechCountWookieeCharacters`
--

--
-- Administration Scripts
--
-- Select Count of Wookiee Characters
--

DELIMITER $$

DROP FUNCTION IF EXISTS `swganh_astromech`.`sf_AstroMechCountWookieeCharacters` $$
CREATE DEFINER=`root`@`localhost` FUNCTION `swganh_astromech`.`sf_AstroMechCountWookieeCharacters`() RETURNS int(5)
BEGIN

  DECLARE result int(5);

  SELECT COUNT(swganh.race.name) FROM swganh.characters
    INNER JOIN swganh.account ON (swganh.characters.account_id=swganh.account.account_id)
    INNER JOIN swganh.race ON (swganh.characters.race_id=swganh.race.id)
  WHERE (swganh.characters.firstname NOT LIKE '%bot%') AND (swganh.race.name like '%wookiee%') INTO result;

  RETURN result;

END $$

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
