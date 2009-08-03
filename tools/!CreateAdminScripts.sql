/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006, 2007 The swgANH Team

---------------------------------------------------------------------------------------
*/

--
-- Switch database to swganh
--

USE swganh;

--
-- Create / Populate Admin Functions
--

source [DRIVE]:\\[PATH]\\schema\\AdminScripts\\sp_AdminAddAccount.sql
source [DRIVE]:\\[PATH]\\schema\\AdminScripts\\sp_AdminCleanResourceTables.sql
source [DRIVE]:\\[PATH]\\schema\\AdminScripts\\sp_AdminShowSchemaTables.txt

--
-- End
--
