/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006, 2007 The swgANH Team

---------------------------------------------------------------------------------------
*/

--
-- Switch database to swganh
-- Update script for database from Build 323 --> 324
--

USE swganh;

--
-- Create / Populate schema
--



--
-- Create Stored Functions / Procedures
--

source [DRIVE]:\\[PATH]\\schema\\commerce_bidhistory.sql
source [DRIVE]:\\[PATH]\\schema\\commerce_item_types.sql
source [DRIVE]:\\[PATH]\\schema\\sf_BidAuction.sql
source [DRIVE]:\\[PATH]\\schema\\sf_BidUpdate.sql
source [DRIVE]:\\[PATH]\\schema\\sf_CancelLiveAuction.sql

--
-- Populate the logging schema (swganh_logs)
--




--
-- Populate the archive schema (swganh_archive)
--




--
-- End
--
