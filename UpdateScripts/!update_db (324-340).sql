/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006, 2007 The swgANH Team

---------------------------------------------------------------------------------------
*/

--
-- Switch database to swganh
-- Update script for database from Build 324 --> 340
--

USE swganh;

--
-- Create / Populate schema
--



--
-- Create Stored Functions / Procedures
--

source [DRIVE]:\\[PATH]\\schema\\account.sql
source [DRIVE]:\\[PATH]\\schema\\command_table.sql
source [DRIVE]:\\[PATH]\\schema\\conversation_event_types.sql
source [DRIVE]:\\[PATH]\\schema\\conversation_option_batches.sql
source [DRIVE]:\\[PATH]\\schema\\conversation_options.sql
source [DRIVE]:\\[PATH]\\schema\\conversation_pages.sql
source [DRIVE]:\\[PATH]\\schema\\draft_craft_attribute_weights.sql
source [DRIVE]:\\[PATH]\\schema\\item_types.sql
source [DRIVE]:\\[PATH]\\schema\\items.sql
source [DRIVE]:\\[PATH]\\schema\\skillcommands.sql
source [DRIVE]:\\[PATH]\\schema\\skills.sql
source [DRIVE]:\\[PATH]\\schema\\skills_skill_skillrequired.sql
source [DRIVE]:\\[PATH]\\schema\\skills_skillcommands.sql
source [DRIVE]:\\[PATH]\\schema\\terminals.sql

source [DRIVE]:\\[PATH]\\schema\\sp_CommerceFindExpiredListing.sql

--
-- Populate the logging schema (swganh_logs)
--




--
-- Populate the archive schema (swganh_archive)
--




--
-- End
--
