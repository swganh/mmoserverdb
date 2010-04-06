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

SWGANH Database Installer / Backup Utility README
-------------------------------------------------

Two sample config files are included, please make sure that you edit the required file
for your operating system, and once edited rename it swganh.conf.

The swganh.conf file has to reside in the same directory as the swganh_install.py script.

You will also need to create the following folders under the path where the script is

	/schema  --> (contains all the SQL files)
	/archive --> (used to save the backup database, as well as the log file)

The script has been tested on both linux and windows.

