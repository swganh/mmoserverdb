/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2010 The SWG:ANH Team
---------------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
---------------------------------------------------------------------------------------
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

use swganh;
--
-- Definition of procedure `sp_CreateSWGANHBots`
--

DROP PROCEDURE IF EXISTS `sp_CreateSWGANHBots`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateSWGANHBots`(IN bots int)
BEGIN
	

	DECLARE new_account_id BIGINT(22);
	DECLARE new_username CHAR(16);
	DECLARE new_station_id INT(11);
	DECLARE new_email CHAR(16);
	DECLARE new_userpass CHAR(16);
	

	DECLARE new_character_id BIGINT(22);
	DECLARE new_galaxy_id INT(11);
	DECLARE new_firstname CHAR(16);
	DECLARE lastusedchar_id BIGINT (22);
	

	DECLARE mod_account_id BIGINT(22);
	DECLARE maccount_password CHAR(128);

	DECLARE mod_username CHAR(32);
	DECLARE mod_email CHAR(32);
	DECLARE loop_counter int;
	DECLARE loops int;
	DECLARE coord_x FLOAT;
	DECLARE coord_z FLOAT;


	DECLARE loopEnd INT default 0;
	DECLARE cur_bot CURSOR FOR SELECT account_id, username FROM swganh.account WHERE (account_id > 999999);
	DECLARE cur_movebot CURSOR FOR SELECT account_id FROM swganh.characters WHERE (account_id > 999999);
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;

	
	SET new_account_id = 1000000;
	SET new_username = 'swganhbot';
	SET new_station_id = 999990000;
	SET new_email = '@swganh.org';
	SET new_userpass = 'swganh';


SET loop_counter = 0;

	loop1: LOOP

	SET mod_username = CONCAT(new_username, new_account_id);
	SET mod_email = CONCAT(mod_username,new_email);
	SELECT SHA1(new_userpass) INTO maccount_password;

	INSERT INTO account values (new_account_id,mod_username,maccount_password,new_station_id,1,0,mod_email,NOW(),NOW(),1,0,0,1, NULL);
	
	SET new_account_id = new_account_id + 1;
	SET new_station_id = new_station_id + 1;
	
	IF loop_counter = bots THEN
		LEAVE loop1;
			ELSE SET loop_counter = loop_counter + 1;
	END IF;

	END LOOP loop1;
	

	SET mod_username = '';
	SET new_account_id = 0;
	
  OPEN cur_bot;

  REPEAT

     FETCH cur_bot INTO new_account_id, mod_username;

     IF NOT loopEnd THEN
        CALL sp_CharacterCreate(new_account_id, 2, mod_username,NULL , 'crafting_artisan', 'bestine', 1.226625,NULL, 7937, 20, 0, 511, 53, 135, 511, 183, 511, 511, 511, 247, 126, 151, 511, 511, 52, 511, 511, 148, 0, 511, 129, 0, 0, 0, 0, 511, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 511, 511, 132, 0, 0, 0, 0, 0, 0, 0, 171, 511, 0, 0, 0, 0, 10, 17,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1,'object/creature/player/wookiee_male.iff');
     END IF;

  UNTIL loopEnd END REPEAT;

  CLOSE cur_bot;

END $$

DELIMITER ;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;