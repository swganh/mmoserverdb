/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006, 2007 The swgANH Team

---------------------------------------------------------------------------------------
*/
--
-- Switch database to swganh
-- Update script for database from Build 271 --> 273
--

USE swganh;

--
-- Switch database to swganh
--

USE swganh;

--
-- Create / Populate schema
--

source [DRIVE]:\\[PATH]\\schema\\entertainer_performances.sql

--
-- Create Stored Functions / Procedures
--



--
-- Populate the logging schema (swganh_logs)
--




--
-- Populate the archive schema (swganh_archive)
--



--
-- End
--
