/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006, 2007 The swgANH Team

---------------------------------------------------------------------------------------
*/

--
-- Create schema swganh_AstroMech
--

CREATE DATABASE IF NOT EXISTS swganh_AstroMech;
USE swganh_AstroMech;

--
-- Load AstroMech Scripts
--

source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountBothanCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountHumanCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountIthorianCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountMonCalamariCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountSullustanCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountTrandoshanCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountTwilekCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountWookieeCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sf_AstroMechCountZabrakCharacters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\AstroMech Scripts\\sp_AstromechBadgesEarned.sql

--
-- End
--