/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006 - 2009 The swgANH Team

---------------------------------------------------------------------------------------
*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE swganh;

--
-- Definition of table `structure_type_data`
--

DROP TABLE IF EXISTS `structure_type_data`;
CREATE TABLE `structure_type_data` (
  `type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_string` varchar(128) NOT NULL,
  `lots_used` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `stf_name` varchar(45) NOT NULL,
  `stf_file` varchar(45) NOT NULL,
  `healing_modifier` float NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_type_data`
--

/*!40000 ALTER TABLE `structure_type_data` DISABLE KEYS */;
INSERT INTO `structure_type_data` (`type`,`object_string`,`lots_used`,`name`,`stf_name`,`stf_file`,`healing_modifier`) VALUES
 (1,'object/building/poi/shared_scout_camp_s0.iff',0,'Basic Camp','basic_name','camp',0.65),
 (2,'object/building/poi/shared_scout_camp_s1.iff',0,'Elite Camp','elite_name','camp',0.65),
 (3,'object/building/poi/shared_scout_camp_s2.iff',0,'Improved Camp','improved_name','camp',0.65),
 (4,'object/building/poi/shared_scout_camp_s3.iff',0,'Luxury Camp','luxury_name','camp',0.65),
 (5,'object/building/poi/shared_scout_camp_s4.iff',0,'multi camp','camp_multi','item_n',0.65),
 (6,'object/building/poi/shared_scout_camp_s5.iff',0,'Quality Camp','quality_name','camp',0.65),
 (7,'object/building/player/city/shared_bank_corellia.iff',0,'Bank','bank','building_name',0),
 (8,'object/building/player/city/shared_bank_naboo.iff',0,'Bank','bank','building_name',0),
 (9,'object/building/player/city/shared_bank_tatooine.iff',0,'Bank','bank','building_name',0),
 (10,'object/building/player/city/shared_cantina_corellia.iff',0,'Cantina','cantina','building_name',0.65),
 (11,'object/building/player/city/shared_cantina_naboo.iff',0,'Cantina','cantina','building_name',0.65),
 (12,'object/building/player/city/shared_cantina_tatooine.iff',0,'Cantina','cantina','building_name',0.65),
 (13,'object/building/player/city/shared_cityhall_corellia.iff',0,'City Hall','cityhall','building_name',0.65),
 (14,'object/building/player/city/shared_cityhall_naboo.iff',0,'City Hall','cityhall','building_name',0.65),
 (15,'object/building/player/city/shared_cityhall_tatooine.iff',0,'City Hall','cityhall','building_name',0.65),
 (16,'object/building/player/city/shared_cloning_corellia.iff',0,'Cloning Facility','cloning_facility','building_name',0.65),
 (17,'object/building/player/city/shared_cloning_naboo.iff',0,'Cloning Facility','cloning_facility','building_name',0.65),
 (18,'object/building/player/city/shared_cloning_tatooine.iff',0,'Cloning Facility','cloning_facility','building_name',0.65),
 (19,'object/building/player/shared_player_garage_corellia_style_01.iff',0,'Garage','ply_corellia_garage_s01','building_name',0),
 (20,'object/building/player/shared_player_garage_naboo_style_01.iff',0,'Garage','ply_naboo_garage_s01','building_name',0),
 (21,'object/building/player/shared_player_garage_tatooine_style_01.iff',0,'Garage','ply_tatooine_garage_s01','building_name',0),
 (22,'object/building/player/city/shared_garden_corellia_lrg_01.iff',0,'Garden','garden','building_name',0),
 (23,'object/building/player/city/shared_garden_corellia_med_01.iff',0,'Garden','garden','building_name',0),
 (24,'object/building/player/city/shared_garden_corellia_sml_01.iff',0,'Garden','garden','building_name',0),
 (25,'object/building/player/city/shared_garden_dantooine_lrg_01.iff',0,'Garden','garden','building_name',0),
 (26,'object/building/player/city/shared_garden_dathomir_lrg_01.iff',0,'Garden','garden','building_name',0),
 (27,'object/building/player/city/shared_garden_endor_lrg_01.iff',0,'Garden','garden','building_name',0),
 (28,'object/building/player/city/shared_hospital_corellia.iff',0,'Hospital','hospital','building_name',0.65),
 (29,'object/building/player/city/shared_hospital_naboo.iff',0,'Hospital','hospital','building_name',0.65),
 (30,'object/building/player/city/shared_hospital_tatooine.iff',0,'Hospital','hospital','building_name',0.65),
 (31,'object/building/player/city/shared_shuttleport_corellia.iff',0,'Shuttleport','shuttleport','building_name',0),
 (32,'object/building/player/city/shared_shuttleport_naboo.iff',0,'Shuttleport','shuttleport','building_name',0),
 (33,'object/building/player/city/shared_shuttleport_tatooine.iff',0,'Shuttleport','shuttleport','building_name',0),
 (34,'object/building/player/city/shared_theater_corellia.iff',0,'Theater','theater','building_name',0.65),
 (35,'object/building/player/city/shared_theater_naboo.iff',0,'Theater','theater','building_name',0.65),
 (36,'object/building/player/city/shared_theater_tatooine.iff',0,'Theater','theater','building_name',0.65),
 (37,'object/installation/manufacture/shared_clothing_factory.iff',0,'Wearables Factory','clothing_factory','installation_n',0),
 (38,'object/installation/manufacture/shared_food_factory.iff',0,'Food and Chemical Factory','food_factory','installation_n',0),
 (39,'object/installation/manufacture/shared_weapon_factory.iff',0,'Equipment Factory','item_factory','installation_n',0),
 (40,'object/installation/manufacture/shared_structure_factory.iff',0,'Structure Factory','structure_factory','installation_n',0),
 (41,'object/installation/generators/shared_power_generator_fusion_style_1.iff',0,'Fusion-Ion Generator','fusion_generator','installation_n',0),
 (42,'object/installation/generators/shared_power_generator_solar_style_1.iff',0,'Solar Generator','solar_generator','installation_n',0),
 (43,'object/installation/generators/shared_power_generator_wind_style_1.iff',0,'Wind Generator','wind_generator','installation_n',0),
 (44,'object/building/player/shared_player_guildhall_corellia_style_01.iff',0,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65),
 (45,'object/building/player/shared_player_guildhall_generic_style_01.iff',0,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65),
 (46,'object/building/player/shared_player_guildhall_naboo_style_01.iff',0,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65),
 (47,'object/building/player/shared_player_guildhall_tatooine_style_01.iff',0,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65),
 (48,'object/installation/mining_organic/shared_mining_organic_flora_farm.iff',1,'Micro Flora Farm','flora_farm_small','installation_n',0),
 (49,'object/installation/mining_organic/shared_mining_organic_flora_farm_heavy.iff',0,'High Capacity Flora Farm','flora_farm_heavy','installation_n',0),
 (50,'object/installation/mining_organic/shared_mining_organic_flora_farm_medium.iff',0,'Automated Flora Farm','flora_farm','installation_n',0),
 (51,'object/installation/mining_gas/shared_mining_gas_harvester_style_1.iff',0,'Personal Natural Gas Processor','gas_mine_small','installation_n',0),
 (52,'object/installation/mining_gas/shared_mining_gas_harvester_style_2.iff',0,'Natural Gas Processor','gas_mine','installation_n',0),
 (53,'object/installation/mining_gas/shared_mining_gas_harvester_style_3.iff',0,'Heavy Natural Gas Processor','gas_mine_heavy','installation_n',0),
 (54,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_1.iff',0,'Personal Chemical Extractor','liquid_mine','installation_n',0),
 (55,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_2.iff',0,'Chemical Extractor','liquid_mine_medium','installation_n',0),
 (56,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_3.iff',0,'Deep Crust Chemical Extractor','liquid_mine_heavy','installation_n',0),
 (57,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester.iff',0,'Personal Moisture Vaporator','moisture_mine','installation_n',0),
 (58,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester_heavy.iff',0,'High Efficiency Moisture Vaporator','moisture_mine_heavy','installation_n',0),
 (59,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester_medium.iff',0,'Moisture Vaporator','moisture_mine_medium','installation_n',0),
 (60,'object/installation/mining_ore/shared_mining_ore_harvester_heavy.iff',0,'Heavy Mineral Mining Installation','heavy_ore_mine','installation_n',0),
 (61,'object/installation/mining_ore/shared_mining_ore_harvester_style_1.iff',0,'Personal Mineral Extractor','small_ore_mine','installation_n',0),
 (62,'object/installation/mining_ore/shared_mining_ore_harvester_style_2.iff',0,'Mineral Mining Installation','ore_mine','installation_n',0),
 (63,'object/building/player/shared_player_house_naboo_small_style_01.iff',0,'Small Naboo House','housing_naboo_small','building_name',0.65),
 (64,'object/building/player/shared_player_house_corellia_large_style_01.iff',0,'Large Corellian House','housing_corellia_large_style_1','building_name',0.65),
 (65,'object/building/player/shared_player_house_corellia_large_style_02.iff',0,'Large Corellian House','housing_corellia_large_style_2','building_name',0.65),
 (66,'object/building/player/shared_player_house_corellia_medium_style_01.iff',0,'Medium Corellian House','housing_corellia_medium_style_1','building_name',0.65),
 (67,'object/building/player/shared_player_house_corellia_medium_style_02.iff',0,'Medium Corellian House','housing_corellia_medium_style_2','building_name',0.65),
 (68,'object/building/player/shared_player_house_corellia_small_style_01.iff',0,'Small Corellian House','housing_corellia_small_style_1','building_name',0.65),
 (69,'object/building/player/shared_player_house_corellia_small_style_01_floorplan_02.iff',0,'Small Corellian House','housing_corellia_small_style_1_floorplan_2','building_name',0.65),
 (70,'object/building/player/shared_player_house_corellia_small_style_02.iff',0,'Small Corellian House','housing_corellia_small_style_2','building_name',0.65),
 (71,'object/building/player/shared_player_house_corellia_small_style_02_floorplan_02.iff',0,'Small Corellian House','housing_corellia_small_style_2_floorplan_2','building_name',0.65),
 (72,'object/building/player/shared_player_house_generic_large_style_01.iff',0,'Large General House','housing_general_large_style_1','building_name',0.65),
 (73,'object/building/player/shared_player_house_generic_large_style_02.iff',0,'Large General House','housing_general_large_style_2','building_name',0.65),
 (74,'object/building/player/shared_player_house_generic_medium_style_01.iff',0,'Medium General House','housing_general_medium_style_1','building_name',0.65),
 (75,'object/building/player/shared_player_house_generic_medium_style_02.iff',0,'Medium General House','housing_general_medium_style_2','building_name',0.65),
 (76,'object/building/player/shared_player_house_generic_small_style_01.iff',0,'Small General House','housing_general_small_style_1','building_name',0.65),
 (77,'object/building/player/shared_player_house_generic_small_style_01_floorplan_02.iff',0,'Small General House','housing_general_small_style_1_floorplan_2','building_name',0.65),
 (78,'object/building/player/shared_player_house_generic_small_style_02.iff',0,'Small General House','housing_general_small_style_2','building_name',0.65),
 (79,'object/building/player/shared_player_house_generic_small_style_02_floorplan_02.iff',0,'Small General House','housing_general_small_style_2','building_name',0.65),
 (80,'object/building/player/shared_player_merchant_tent_style_01.iff',0,'Merchant Tent','merchant_tent','building_name',0.65),
 (81,'object/building/player/shared_player_house_naboo_large_style_01.iff',0,'Large Naboo House','housing_naboo_large','building_name',0.65),
 (82,'object/building/player/shared_player_house_naboo_medium_style_01.iff',0,'Medium Naboo House','housing_naboo_medium','building_name',0.65),
 (83,'object/building/player/shared_player_house_naboo_small_style_02.iff',0,'Small Naboo House','housing_naboo_small','building_name',0.65),
 (84,'object/building/player/shared_player_house_tatooine_large_style_01.iff',0,'Large Tatooine House','housing_tatt_style01_large','building_name',0.65),
 (85,'object/building/player/shared_player_house_tatooine_medium_style_01.iff',0,'Medium Tatooine House','housing_tatt_style01_med','building_name',0.65),
 (86,'object/building/player/shared_player_house_tatooine_small_style_01.iff',0,'Small Tatooine House','housing_tatt_style01_small','building_name',0.65),
 (87,'object/building/player/shared_player_house_tatooine_small_style_02.iff',0,'Small Tatooine House','housing_tatt_style01_small','building_name',0.65);
/*!40000 ALTER TABLE `structure_type_data` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;