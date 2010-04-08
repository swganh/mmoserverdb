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

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

use swganh;

--
-- Definition of table `structure_type_data`
--

DROP TABLE IF EXISTS `structure_type_data`;
CREATE TABLE `structure_type_data` (
  `type` int(10) unsigned NOT NULL auto_increment,
  `object_string` varchar(128) NOT NULL,
  `lots_used` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `stf_name` varchar(45) NOT NULL,
  `stf_file` varchar(45) NOT NULL,
  `healing_modifier` float NOT NULL,
  `max_storage` int(10) unsigned NOT NULL default '0',
  `city_tax_rate` int(10) unsigned NOT NULL default '0',
  `decay_rate` int(10) unsigned NOT NULL default '0',
  `nameable` int(10) unsigned NOT NULL default '0',
  `max_condition` int(10) unsigned NOT NULL default '0',
  `redeed_cost` int(10) unsigned NOT NULL default '0',
  `city_rank_required` int(10) unsigned NOT NULL default '0',
  `maint_cost_wk` int(10) unsigned NOT NULL default '0',
  `power_used` int(10) unsigned NOT NULL default '0',
  `resource_Category` int(10) unsigned NOT NULL default '464',
  `repair_cost` int(10) unsigned NOT NULL default '0',
  `schematicMask` int(10) unsigned NOT NULL default '0',
  `cellcount` int(10) unsigned NOT NULL default '0',
  `fp_length` int(10) unsigned NOT NULL default '0',
  `fp_width` int(10) unsigned NOT NULL default '0',
  `planetMask` int(10) unsigned NOT NULL default '4294967295',
  PRIMARY KEY  (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_type_data`
--

/*!40000 ALTER TABLE `structure_type_data` DISABLE KEYS */;
INSERT INTO `structure_type_data` (`type`,`object_string`,`lots_used`,`name`,`stf_name`,`stf_file`,`healing_modifier`,`max_storage`,`city_tax_rate`,`decay_rate`,`nameable`,`max_condition`,`redeed_cost`,`city_rank_required`,`maint_cost_wk`,`power_used`,`resource_Category`,`repair_cost`,`schematicMask`,`cellcount`,`fp_length`,`fp_width`) VALUES 
 (1,'object/building/poi/shared_scout_camp_s0.iff',0,'Basic Camp','basic_name','camp',0.65,0,0,0,0,0,0,0,0,0,464,0,0,0,0,0,4294967295),
 (2,'object/building/poi/shared_scout_camp_s1.iff',0,'Elite Camp','elite_name','camp',0.65,0,0,0,0,0,0,0,0,0,464,0,0,0,0,0,4294967295),
 (3,'object/building/poi/shared_scout_camp_s2.iff',0,'Improved Camp','improved_name','camp',0.65,0,0,0,0,0,0,0,0,0,464,0,0,0,0,0,4294967295),
 (4,'object/building/poi/shared_scout_camp_s3.iff',0,'Luxury Camp','luxury_name','camp',0.65,0,0,0,0,0,0,0,0,0,464,0,0,0,0,0,4294967295),
 (5,'object/building/poi/shared_scout_camp_s4.iff',0,'multi camp','camp_multi','item_n',0.65,0,0,0,0,0,0,0,0,0,464,0,0,0,0,0,4294967295),
 (6,'object/building/poi/shared_scout_camp_s5.iff',0,'Quality Camp','quality_name','camp',0.65,0,0,0,0,0,0,0,0,0,464,0,0,0,0,0,4294967295),
 (7,'object/building/player/city/shared_bank_corellia.iff',0,'Bank','bank','building_name',0,0,4,0,0,1000,0,2,150,0,464,4,0,0,24,24,4294967295),
 (8,'object/building/player/city/shared_bank_naboo.iff',0,'Bank','bank','building_name',0,0,4,0,0,1000,0,2,150,0,464,4,0,0,24,24,4294967295),
 (9,'object/building/player/city/shared_bank_tatooine.iff',0,'Bank','bank','building_name',0,0,4,0,0,1000,0,2,150,0,464,4,0,0,24,24,4294967295),
 (10,'object/building/player/city/shared_cantina_corellia.iff',5,'Cantina','cantina','building_name',0.65,400,0,5,1,7200,2500,2,8400,0,464,4,0,2,56,56,4294967295),
 (11,'object/building/player/city/shared_cantina_naboo.iff',5,'Cantina','cantina','building_name',0.65,400,0,5,1,7200,2500,2,8400,0,464,4,0,2,56,56,4294967295),
 (12,'object/building/player/city/shared_cantina_tatooine.iff',5,'Cantina','cantina','building_name',0.65,400,0,5,1,7200,2500,2,8400,0,464,4,0,2,56,56,4294967295),
 (13,'object/building/player/city/shared_cityhall_corellia.iff',0,'City Hall','cityhall','building_name',0.65,400,1,0,0,1000,0,0,3500,0,464,4,0,5,56,72,4294967295),
 (14,'object/building/player/city/shared_cityhall_naboo.iff',0,'City Hall','cityhall','building_name',0.65,400,1,0,0,1000,0,0,3500,0,464,4,0,5,56,72,4294967295),
 (15,'object/building/player/city/shared_cityhall_tatooine.iff',0,'City Hall','cityhall','building_name',0.65,400,1,0,0,1000,0,0,3500,0,464,4,0,5,56,72,4294967295),
 (16,'object/building/player/city/shared_cloning_corellia.iff',0,'Cloning Facility','cloning_facility','building_name',0.65,400,3,0,0,1000,0,3,2000,0,464,4,0,4,40,40,4294967295),
 (17,'object/building/player/city/shared_cloning_naboo.iff',0,'Cloning Facility','cloning_facility','building_name',0.65,400,3,0,0,1000,0,3,2000,0,464,4,0,4,40,40,4294967295),
 (18,'object/building/player/city/shared_cloning_tatooine.iff',0,'Cloning Facility','cloning_facility','building_name',0.65,400,3,0,0,1000,0,3,2000,0,464,4,0,4,40,40,4294967295),
 (19,'object/building/player/shared_player_garage_corellia_style_01.iff',0,'Garage','ply_corellia_garage_s01','building_name',0,0,3,0,0,1000,0,2,2000,0,464,4,0,0,40,40,4294967295),
 (20,'object/building/player/shared_player_garage_naboo_style_01.iff',0,'Garage','ply_naboo_garage_s01','building_name',0,0,3,0,0,1000,0,2,2000,0,464,4,0,0,40,40,4294967295),
 (21,'object/building/player/shared_player_garage_tatooine_style_01.iff',0,'Garage','ply_tatooine_garage_s01','building_name',0,0,3,0,0,1000,0,2,2000,0,464,4,0,0,40,40,4294967295),
 (22,'object/building/player/city/shared_garden_corellia_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464,4,0,0,56,56,4294967295),
 (23,'object/building/player/city/shared_garden_corellia_med_01.iff',0,'Garden','garden','building_name',0,0,3,0,0,1000,0,2,2000,0,464,4,0,0,40,40,4294967295),
 (24,'object/building/player/city/shared_garden_corellia_sml_01.iff',0,'Garden','garden','building_name',0,0,5,0,0,1000,0,1,1000,0,464,4,0,0,32,32,4294967295),
 (25,'object/building/player/city/shared_garden_dantooine_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464,4,0,0,56,56,4294967295),
 (26,'object/building/player/city/shared_garden_dathomir_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464,4,0,0,56,56,4294967295),
 (27,'object/building/player/city/shared_garden_endor_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464,4,0,0,56,56,4294967295),
 (28,'object/building/player/city/shared_hospital_corellia.iff',3,'Hospital','hospital','building_name',0.65,300,0,5,1,7200,2500,2,8400,0,464,4,0,4,40,40,4294967295),
 (29,'object/building/player/city/shared_hospital_naboo.iff',3,'Hospital','hospital','building_name',0.65,300,0,5,1,7200,2500,2,8400,0,464,4,0,4,40,40,4294967295),
 (30,'object/building/player/city/shared_hospital_tatooine.iff',3,'Hospital','hospital','building_name',0.65,300,0,5,1,7200,2500,2,8400,0,464,4,0,4,40,40,4294967295),
 (31,'object/building/player/city/shared_shuttleport_corellia.iff',0,'Shuttleport','shuttleport','building_name',0,0,2,0,0,1000,0,4,7500,0,464,4,0,0,40,40,4294967295),
 (32,'object/building/player/city/shared_shuttleport_naboo.iff',0,'Shuttleport','shuttleport','building_name',0,0,2,0,0,1000,0,4,7500,0,464,4,0,0,40,40,4294967295),
 (33,'object/building/player/city/shared_shuttleport_tatooine.iff',0,'Shuttleport','shuttleport','building_name',0,0,2,0,0,1000,0,4,7500,0,464,4,0,0,40,40,4294967295),
 (34,'object/building/player/city/shared_theater_corellia.iff',3,'Theater','theater','building_name',0.65,300,0,5,1,7200,2500,4,8400,0,464,4,0,1,40,48,4294967295),
 (35,'object/building/player/city/shared_theater_naboo.iff',3,'Theater','theater','building_name',0.65,300,0,5,1,7200,2500,4,8400,0,464,4,0,1,40,48,4294967295),
 (36,'object/building/player/city/shared_theater_tatooine.iff',3,'Theater','theater','building_name',0.65,300,0,5,1,7200,2500,4,8400,0,464,4,0,1,40,48,4294967295),
 (37,'object/installation/manufacture/shared_clothing_factory.iff',1,'Wearables Factory','clothing_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464,50,49170,0,24,24,4294967295),
 (38,'object/installation/manufacture/shared_food_factory.iff',1,'Food and Chemical Factory','food_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464,50,196,0,24,24,4294967295),
 (39,'object/installation/manufacture/shared_weapon_factory.iff',1,'Equipment Factory','item_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464,50,987185,0,24,24,4294967295),
 (40,'object/installation/manufacture/shared_structure_factory.iff',1,'Structure Factory','structure_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464,50,1536,0,40,40,4294967295),
 (41,'object/installation/generators/shared_power_generator_fusion_style_1.iff',1,'Fusion-Ion Generator','fusion_generator','installation_n',0,0,0,6,1,1000,3000,0,10080,0,475,90,0,0,24,40,4294967295),
 (42,'object/installation/generators/shared_power_generator_solar_style_1.iff',1,'Solar Generator','solar_generator','installation_n',0,0,0,6,1,1000,3000,0,10080,0,904,60,0,0,24,24,4294967295),
 (43,'object/installation/generators/shared_power_generator_wind_style_1.iff',1,'Wind Generator','wind_generator','installation_n',0,0,0,6,1,1000,1500,0,5040,0,903,30,0,0,24,24,4294967295),
 (44,'object/building/player/shared_player_guildhall_corellia_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464,41,0,0,56,64,4294967295),
 (45,'object/building/player/shared_player_guildhall_generic_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464,41,0,17,56,64,4294967295),
 (46,'object/building/player/shared_player_guildhall_naboo_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464,41,0,17,56,64,4294967295),
 (47,'object/building/player/shared_player_guildhall_tatooine_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464,41,0,0,56,64,4294967295),
 (48,'object/installation/mining_organic/shared_mining_organic_flora_farm.iff',1,'Micro Flora Farm','flora_farm_small','installation_n',0,0,0,6,1,1000,1500,0,5040,25,228,30,0,0,8,8,4294967295),
 (49,'object/installation/mining_organic/shared_mining_organic_flora_farm_heavy.iff',2,'High Capacity Flora Farm','flora_farm_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,228,60,0,0,24,24,4294967295),
 (50,'object/installation/mining_organic/shared_mining_organic_flora_farm_medium.iff',1,'Automated Flora Farm','flora_farm','installation_n',0,0,0,6,1,1000,3000,0,10080,50,228,90,0,0,24,24,4294967295),
 (51,'object/installation/mining_gas/shared_mining_gas_harvester_style_1.iff',1,'Personal Natural Gas Processor','gas_mine_small','installation_n',0,0,0,6,1,1000,1500,0,5040,25,591,30,0,0,8,8,4294967295),
 (52,'object/installation/mining_gas/shared_mining_gas_harvester_style_2.iff',1,'Natural Gas Processor','gas_mine','installation_n',0,0,0,6,1,1000,3000,0,10080,50,591,60,0,0,24,24,4294967295),
 (53,'object/installation/mining_gas/shared_mining_gas_harvester_style_3.iff',2,'Heavy Natural Gas Processor','gas_mine_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,591,90,0,0,24,24,4294967295),
 (54,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_1.iff',1,'Personal Chemical Extractor','liquid_mine','installation_n',0,0,0,6,1,1000,1500,0,5040,25,439,30,0,0,8,8,4294967295),
 (55,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_2.iff',1,'Chemical Extractor','liquid_mine_medium','installation_n',0,0,0,6,1,1000,3000,0,10080,50,439,60,0,0,40,24,4294967295),
 (56,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_3.iff',2,'Deep Crust Chemical Extractor','liquid_mine_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,439,90,0,0,40,24,4294967295),
 (57,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester.iff',1,'Personal Moisture Vaporator','moisture_mine','installation_n',0,0,0,6,1,1000,1500,0,5040,25,453,30,0,0,8,8,4294967295),
 (58,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester_heavy.iff',2,'High Efficiency Moisture Vaporator','moisture_mine_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,453,90,0,0,24,24,4294967295),
 (59,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester_medium.iff',1,'Moisture Vaporator','moisture_mine_medium','installation_n',0,0,0,6,1,1000,3000,0,10080,50,453,60,0,0,24,24,4294967295),
 (60,'object/installation/mining_ore/shared_mining_ore_harvester_heavy.iff',2,'Heavy Mineral Mining Installation','heavy_ore_mine','installation_n',0,0,0,6,1,1000,4500,0,15120,75,464,90,0,0,40,24,4294967295),
 (61,'object/installation/mining_ore/shared_mining_ore_harvester_style_1.iff',1,'Personal Mineral Extractor','small_ore_mine','installation_n',0,0,0,6,1,1000,1500,0,5040,25,464,30,0,0,8,8,4294967295),
 (62,'object/installation/mining_ore/shared_mining_ore_harvester_style_2.iff',1,'Mineral Mining Installation','ore_mine','installation_n',0,0,0,6,1,1000,3000,0,10080,50,464,60,0,0,40,24,4294967295),
 (63,'object/building/player/shared_player_house_naboo_small_style_01.iff',1,'Small Naboo House','housing_naboo_small','building_name',0.65,100,0,3,1,4320,800,0,2688,0,464,4,0,3,24,32,4294967295),
 (64,'object/building/player/shared_player_house_corellia_large_style_01.iff',5,'Large Corellian House','housing_corellia_large_style_1','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464,21,0,13,56,40,4294967295),
 (65,'object/building/player/shared_player_house_corellia_large_style_02.iff',5,'Large Corellian House','housing_corellia_large_style_2','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464,21,0,10,56,40,4294967295),
 (66,'object/building/player/shared_player_house_corellia_medium_style_01.iff',2,'Medium Corellian House','housing_corellia_medium_style_1','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464,12,0,4,24,32,4294967295),
 (67,'object/building/player/shared_player_house_corellia_medium_style_02.iff',2,'Medium Corellian House','housing_corellia_medium_style_2','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464,12,0,3,24,32,4294967295),
 (68,'object/building/player/shared_player_house_corellia_small_style_01.iff',2,'Small Corellian House','housing_corellia_small_style_1','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,4,24,32,4294967295),
 (69,'object/building/player/shared_player_house_corellia_small_style_01_floorplan_02.iff',2,'Small Corellian House','housing_corellia_small_style_1_floorplan_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,4,24,32,4294967295),
 (70,'object/building/player/shared_player_house_corellia_small_style_02.iff',2,'Small Corellian House','housing_corellia_small_style_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,3,24,32,4294967295),
 (71,'object/building/player/shared_player_house_corellia_small_style_02_floorplan_02.iff',2,'Small Corellian House','housing_corellia_small_style_2_floorplan_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,2,24,32,4294967295),
 (72,'object/building/player/shared_player_house_generic_large_style_01.iff',5,'Large General House','housing_general_large_style_1','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464,21,0,13,56,40,4294967295),
 (73,'object/building/player/shared_player_house_generic_large_style_02.iff',5,'Large General House','housing_general_large_style_2','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464,21,0,10,56,40,4294967295),
 (74,'object/building/player/shared_player_house_generic_medium_style_01.iff',2,'Medium General House','housing_general_medium_style_1','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464,12,0,4,24,32,4294967295),
 (75,'object/building/player/shared_player_house_generic_medium_style_02.iff',2,'Medium General House','housing_general_medium_style_2','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464,12,0,3,24,32,4294967295),
 (76,'object/building/player/shared_player_house_generic_small_style_01.iff',2,'Small General House','housing_general_small_style_1','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,4,24,32,4294967295),
 (77,'object/building/player/shared_player_house_generic_small_style_01_floorplan_02.iff',2,'Small General House','housing_general_small_style_1_floorplan_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,4,24,32,4294967295),
 (78,'object/building/player/shared_player_house_generic_small_style_02.iff',2,'Small General House','housing_general_small_style_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,3,32,24,4294967295),
 (79,'object/building/player/shared_player_house_generic_small_style_02_floorplan_02.iff',2,'Small General House','housing_general_small_style_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,2,32,24,4294967295),
 (80,'object/building/player/shared_player_merchant_tent_style_01.iff',1,'Merchant Tent','merchant_tent','building_name',0.65,100,0,3,1,4320,600,0,2016,0,464,4,0,1,24,24,4294967295),
 (81,'object/building/player/shared_player_house_naboo_large_style_01.iff',5,'Large Naboo House','housing_naboo_large','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464,21,0,14,56,48,4294967295),
 (82,'object/building/player/shared_player_house_naboo_medium_style_01.iff',2,'Medium Naboo House','housing_naboo_medium','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464,12,0,7,24,32,4294967295),
 (83,'object/building/player/shared_player_house_naboo_small_style_02.iff',2,'Small Naboo House','housing_naboo_small','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,4,32,24,4294967295),
 (84,'object/building/player/shared_player_house_tatooine_large_style_01.iff',5,'Large Tatooine House','housing_tatt_style01_large','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464,21,0,10,56,40,4294967295),
 (85,'object/building/player/shared_player_house_tatooine_medium_style_01.iff',2,'Medium Tatooine House','housing_tatt_style01_med','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464,12,0,8,40,40,4294967295),
 (86,'object/building/player/shared_player_house_tatooine_small_style_01.iff',2,'Small Tatooine House','housing_tatt_style01_small','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,3,24,32,4294967295),
 (87,'object/building/player/shared_player_house_tatooine_small_style_02.iff',2,'Small Tatooine House','housing_tatt_style01_small','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464,4,0,3,24,32,4294967295),
 (88,'object/building/player/shared_player_guildhall_tatooine_style_02.iff',5,'Guildhall','housing_tatt_style02_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464,41,0,21,72,40,4294967295);
/*!40000 ALTER TABLE `structure_type_data` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;