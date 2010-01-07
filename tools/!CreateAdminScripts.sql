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
