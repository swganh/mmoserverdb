/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006 - 2009 The swgANH Team

---------------------------------------------------------------------------------------
*/

--
-- Create swganh schemas
--

DROP DATABASE IF EXISTS swganh;


CREATE DATABASE IF NOT EXISTS swganh CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS swganh_logs CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS swganh_archive CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS swganh_astromech CHARACTER SET utf8 COLLATE utf8_general_ci;

--
-- Create swganh users
--

GRANT ALL PRIVILEGES ON *.* TO 'adminserver'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'chatserver'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'connectionserver'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'loginserver'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'corellia'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'dantooine'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'dathomir'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'endor'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'lok'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'naboo'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'rori'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'talus'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'tanaab'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'tatooine'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'tutorial'@'%' IDENTIFIED BY 'swganh';
GRANT ALL PRIVILEGES ON *.* TO 'yavin4'@'%' IDENTIFIED BY 'swganh';

--
-- Administrator Privileges for ALL databases (USE WITH CAUTION)
--
-- Simply uncomment the line below to apply
--
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password goes here' WITH GRANT OPTION;
