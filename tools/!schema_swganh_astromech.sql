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