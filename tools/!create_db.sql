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

--
-- Switch database to swganh
--

USE swganh;

--
-- Create / Populate schema
--

source  DRIVE:\\PATHTOSVN\\SCHEMA\\account.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\badge_categories.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\badge_regions.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\badges.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\banks.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\biography_faction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\biography_planet.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\biography_profession.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\biography_templates.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\biography_wars.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\building_families.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\building_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\buildings.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\cells.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_appearance.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_badges.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_biography.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_buff_attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_buffs.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_faction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_matchmaking.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_holoemotes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_movement.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_skills.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_stat_migration.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_xp.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\characters.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_attachments.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_channels.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_channels_banned.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_channels_invited.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_channels_moderators.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_char_channels.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_friendlist.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_ignorelist.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\chat_mail.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\character_tutorial.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\cities.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\clienteffects.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\command_table.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\commerce_auction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\commerce_bazaar.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\commerce_bidhistory.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\commerce_category.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\commerce_item_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\config_message_routes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\config_process_list.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\config_zone_scripts.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\config_zones.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\container_item.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\container_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\containers.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\conversation_animations.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\conversation_event_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\conversation_option_batches.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\conversation_options.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\conversation_pages.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\conversations.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\craft_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\csr_categories.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\csr_comments.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\csr_knowledgebase.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\csr_subcategories.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\csr_tickets.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\datapad_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\datapads.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_assembly_batches.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_assembly_lists.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_craft_attribute_weights.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_craft_batches.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_craft_item_attribute_link.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_craft_lists.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_experiment_batches.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_experiment_groups.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_experiment_lists.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_lists_datatypes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_schematic_item_link.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_schematic_manufacture_defaults.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_schematics.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_schematics_slots.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_slot_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_slots.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\draft_weights.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\entertainer_deny_service.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\entertainer_performances.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\faction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\galaxy.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\holoemote.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\id_attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\inventories.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\inventory_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\item_attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\item_families.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\item_family_attribute_defaults.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\item_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\items.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\mission_text.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\mission_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\moods.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\name_developer.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\name_profane.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\name_reserved.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\namegen_firstname.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\namegen_lastname.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\npc_chatter.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\object_attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\object_models.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\parking_garage.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\persistent_npc_attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\persistent_npc_families.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\persistent_npcs.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\planet.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\planet_regions.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\planetmap.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\planetmapcategory.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\quests.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\race.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\resource_categories.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\resource_containers.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\resource_name_begin.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\resource_name_end.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\resource_template.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\resources.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\resources_spawn_config.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\schem_crc.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\schematic_groups.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\shuttle_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\shuttles.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skillcommands.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skillmods.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_base_xp_groups.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_description.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_jedi_states.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_preclusions.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_schematicsgranted.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_skill_skillparent.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_skill_skillsrequired.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_skillcommands.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_skillmods.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\skills_species_required.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sounds.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\spawn_clone.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\spawn_shuttle.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\starting_attributes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\starting_item_requirements.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\starting_items.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\starting_location.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\static_objects.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\static_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\stf_files.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\stf_variable.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\terminal_elevator_data.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\terminal_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\terminals.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\ticket_collectors.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\travel_planet_routes.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\waypoints.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\weapon_groups.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\xp_types.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\zone_regions.sql

--
-- Create Stored Functions / Procedures
--

source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_addFriend.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_addIgnore.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_BidAuction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_BidUpdate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_CancelLiveAuction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_CharacterNameCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_CharacterNameDeveloperCheck.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_CharacterNameFictionalCheck.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_CharacterNameInUseCheck.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_CharacterNameProfaneCheck.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_CreateChannel.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_DefaultItemCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_DefaultItemCreateBySchematic.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_DefaultManufactureSchematicCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_GenerateFirstName.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_GenerateLastName.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_getBankObjectCount.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_getDatapadObjectCount.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_getInventoryObjectCount.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_getZoneObjectCount.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_MailCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_NewTicket.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_UtilityCapitalizeString.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_player_planet.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_player_profession.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_player_race.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_rand_biography.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_rand_faction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_rand_planet.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_rand_profession.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_rand_species.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_rand_war.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_removeFriend.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_removeIgnore.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_ResourceContainerCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_speciesShort.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_StatisticLoggedInAccounts.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_TravelTicketCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_WaypointCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_AdminGiveSkillTree.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterArchive.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterBiographyGenerate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterCreateFactions.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterDelete.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterHoloEmoteCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterSkillsCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterStartingItems.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterStatMigrationCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CharacterXpCreate.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CommerceFindExpiredListing.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CreatePlanetMapViews.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_CreateSWGANHBots.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_GetCharacterItems.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_GetCSRTicketValues.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_GetObjectChildren.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_MoveSWGANHBots.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_MultiTransaction.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_PopulateDraftWeights.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_PopulateWeights.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_ResourceInitialSpawn.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_splitString.sql
source  DRIVE:\\PATHTOSVN\\SCHEMA\\sp_TicketActivity.sql

--
-- Mantis Integration with Game Bug Sumbissions
-- 

source  DRIVE:\\PATHTOSVN\\SCHEMA\\sf_NewTicketMantis.sql

--
-- Populate the logging schema (swganh_logs)
--

source  DRIVE:\\PATHTOSVN\\SCHEMA\\!schema_swganh_logs.sql

--
-- Populate the archive schema (swganh_archive)
--

source  DRIVE:\\PATHTOSVN\\SCHEMA\\!schema_swganh_archive.sql

--
-- Populate all the AstroMech Admin Scripts
--

source  DRIVE:\\PATHTOSVN\\SCHEMA\\!schema_swganh_astromech.sql

--
-- End
--
