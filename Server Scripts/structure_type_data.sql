-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema swganh
--

CREATE DATABASE IF NOT EXISTS swganh;
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
  `max_storage` int(10) unsigned NOT NULL DEFAULT '0',
  `city_tax_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `decay_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `nameable` int(10) unsigned NOT NULL DEFAULT '0',
  `max_condition` int(10) unsigned NOT NULL DEFAULT '0',
  `redeed_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `city_rank_required` int(10) unsigned NOT NULL DEFAULT '0',
  `maint_cost_wk` int(10) unsigned NOT NULL DEFAULT '0',
  `power_used` int(10) unsigned NOT NULL DEFAULT '0',
  `resource_Category` int(10) unsigned NOT NULL DEFAULT '464',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_type_data`
--

/*!40000 ALTER TABLE `structure_type_data` DISABLE KEYS */;
INSERT INTO `structure_type_data` (`type`,`object_string`,`lots_used`,`name`,`stf_name`,`stf_file`,`healing_modifier`,`max_storage`,`city_tax_rate`,`decay_rate`,`nameable`,`max_condition`,`redeed_cost`,`city_rank_required`,`maint_cost_wk`,`power_used`,`resource_Category`) VALUES 
 (1,'object/building/poi/shared_scout_camp_s0.iff',0,'Basic Camp','basic_name','camp',0.65,0,0,0,0,0,0,0,0,0,464),
 (2,'object/building/poi/shared_scout_camp_s1.iff',0,'Elite Camp','elite_name','camp',0.65,0,0,0,0,0,0,0,0,0,464),
 (3,'object/building/poi/shared_scout_camp_s2.iff',0,'Improved Camp','improved_name','camp',0.65,0,0,0,0,0,0,0,0,0,464),
 (4,'object/building/poi/shared_scout_camp_s3.iff',0,'Luxury Camp','luxury_name','camp',0.65,0,0,0,0,0,0,0,0,0,464),
 (5,'object/building/poi/shared_scout_camp_s4.iff',0,'multi camp','camp_multi','item_n',0.65,0,0,0,0,0,0,0,0,0,464),
 (6,'object/building/poi/shared_scout_camp_s5.iff',0,'Quality Camp','quality_name','camp',0.65,0,0,0,0,0,0,0,0,0,464),
 (7,'object/building/player/city/shared_bank_corellia.iff',0,'Bank','bank','building_name',0,0,4,0,0,1000,0,2,150,0,464),
 (8,'object/building/player/city/shared_bank_naboo.iff',0,'Bank','bank','building_name',0,0,4,0,0,1000,0,2,150,0,464),
 (9,'object/building/player/city/shared_bank_tatooine.iff',0,'Bank','bank','building_name',0,0,4,0,0,1000,0,2,150,0,464),
 (10,'object/building/player/city/shared_cantina_corellia.iff',5,'Cantina','cantina','building_name',0.65,400,0,5,1,7200,2500,2,8400,0,464),
 (11,'object/building/player/city/shared_cantina_naboo.iff',5,'Cantina','cantina','building_name',0.65,400,0,5,1,7200,2500,2,8400,0,464),
 (12,'object/building/player/city/shared_cantina_tatooine.iff',5,'Cantina','cantina','building_name',0.65,400,0,5,1,7200,2500,2,8400,0,464),
 (13,'object/building/player/city/shared_cityhall_corellia.iff',0,'City Hall','cityhall','building_name',0.65,400,1,0,0,1000,0,0,3500,0,464),
 (14,'object/building/player/city/shared_cityhall_naboo.iff',0,'City Hall','cityhall','building_name',0.65,400,1,0,0,1000,0,0,3500,0,464),
 (15,'object/building/player/city/shared_cityhall_tatooine.iff',0,'City Hall','cityhall','building_name',0.65,400,1,0,0,1000,0,0,3500,0,464),
 (16,'object/building/player/city/shared_cloning_corellia.iff',0,'Cloning Facility','cloning_facility','building_name',0.65,400,3,0,0,1000,0,3,2000,0,464),
 (17,'object/building/player/city/shared_cloning_naboo.iff',0,'Cloning Facility','cloning_facility','building_name',0.65,400,3,0,0,1000,0,3,2000,0,464),
 (18,'object/building/player/city/shared_cloning_tatooine.iff',0,'Cloning Facility','cloning_facility','building_name',0.65,400,3,0,0,1000,0,3,2000,0,464),
 (19,'object/building/player/shared_player_garage_corellia_style_01.iff',0,'Garage','ply_corellia_garage_s01','building_name',0,0,3,0,0,1000,0,2,2000,0,464),
 (20,'object/building/player/shared_player_garage_naboo_style_01.iff',0,'Garage','ply_naboo_garage_s01','building_name',0,0,3,0,0,1000,0,2,2000,0,464),
 (21,'object/building/player/shared_player_garage_tatooine_style_01.iff',0,'Garage','ply_tatooine_garage_s01','building_name',0,0,3,0,0,1000,0,2,2000,0,464),
 (22,'object/building/player/city/shared_garden_corellia_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464),
 (23,'object/building/player/city/shared_garden_corellia_med_01.iff',0,'Garden','garden','building_name',0,0,3,0,0,1000,0,2,2000,0,464),
 (24,'object/building/player/city/shared_garden_corellia_sml_01.iff',0,'Garden','garden','building_name',0,0,5,0,0,1000,0,1,1000,0,464),
 (25,'object/building/player/city/shared_garden_dantooine_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464),
 (26,'object/building/player/city/shared_garden_dathomir_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464),
 (27,'object/building/player/city/shared_garden_endor_lrg_01.iff',0,'Garden','garden','building_name',0,0,6,0,0,1000,0,3,3000,0,464),
 (28,'object/building/player/city/shared_hospital_corellia.iff',3,'Hospital','hospital','building_name',0.65,300,0,5,1,7200,2500,2,8400,0,464),
 (29,'object/building/player/city/shared_hospital_naboo.iff',3,'Hospital','hospital','building_name',0.65,300,0,5,1,7200,2500,2,8400,0,464),
 (30,'object/building/player/city/shared_hospital_tatooine.iff',3,'Hospital','hospital','building_name',0.65,300,0,5,1,7200,2500,2,8400,0,464),
 (31,'object/building/player/city/shared_shuttleport_corellia.iff',0,'Shuttleport','shuttleport','building_name',0,0,2,0,0,1000,0,4,7500,0,464),
 (32,'object/building/player/city/shared_shuttleport_naboo.iff',0,'Shuttleport','shuttleport','building_name',0,0,2,0,0,1000,0,4,7500,0,464),
 (33,'object/building/player/city/shared_shuttleport_tatooine.iff',0,'Shuttleport','shuttleport','building_name',0,0,2,0,0,1000,0,4,7500,0,464),
 (34,'object/building/player/city/shared_theater_corellia.iff',3,'Theater','theater','building_name',0.65,300,0,5,1,7200,2500,4,8400,0,464),
 (35,'object/building/player/city/shared_theater_naboo.iff',3,'Theater','theater','building_name',0.65,300,0,5,1,7200,2500,4,8400,0,464),
 (36,'object/building/player/city/shared_theater_tatooine.iff',3,'Theater','theater','building_name',0.65,300,0,5,1,7200,2500,4,8400,0,464),
 (37,'object/installation/manufacture/shared_clothing_factory.iff',1,'Wearables Factory','clothing_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464),
 (38,'object/installation/manufacture/shared_food_factory.iff',1,'Food and Chemical Factory','food_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464),
 (39,'object/installation/manufacture/shared_weapon_factory.iff',1,'Equipment Factory','item_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464),
 (40,'object/installation/manufacture/shared_structure_factory.iff',1,'Structure Factory','structure_factory','installation_n',0,0,0,6,1,1000,2500,0,8400,50,464),
 (41,'object/installation/generators/shared_power_generator_fusion_style_1.iff',1,'Fusion-Ion Generator','fusion_generator','installation_n',0,0,0,6,1,1000,3000,0,10080,0,475),
 (42,'object/installation/generators/shared_power_generator_solar_style_1.iff',1,'Solar Generator','solar_generator','installation_n',0,0,0,6,1,1000,3000,0,10080,0,904),
 (43,'object/installation/generators/shared_power_generator_wind_style_1.iff',1,'Wind Generator','wind_generator','installation_n',0,0,0,6,1,1000,1500,0,5040,0,903),
 (44,'object/building/player/shared_player_guildhall_corellia_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464),
 (45,'object/building/player/shared_player_guildhall_generic_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464),
 (46,'object/building/player/shared_player_guildhall_naboo_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464),
 (47,'object/building/player/shared_player_guildhall_tatooine_style_01.iff',5,'Guildhall','housing_tatt_style01_guildhall','building_name',0.65,400,0,5,1,1000,5000,0,16800,0,464),
 (48,'object/installation/mining_organic/shared_mining_organic_flora_farm.iff',1,'Micro Flora Farm','flora_farm_small','installation_n',0,0,0,6,1,1000,1500,0,5040,25,2),
 (49,'object/installation/mining_organic/shared_mining_organic_flora_farm_heavy.iff',2,'High Capacity Flora Farm','flora_farm_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,2),
 (50,'object/installation/mining_organic/shared_mining_organic_flora_farm_medium.iff',1,'Automated Flora Farm','flora_farm','installation_n',0,0,0,6,1,1000,3000,0,10080,50,2),
 (51,'object/installation/mining_gas/shared_mining_gas_harvester_style_1.iff',1,'Personal Natural Gas Processor','gas_mine_small','installation_n',0,0,0,6,1,1000,1500,0,5040,25,591),
 (52,'object/installation/mining_gas/shared_mining_gas_harvester_style_2.iff',1,'Natural Gas Processor','gas_mine','installation_n',0,0,0,6,1,1000,3000,0,10080,50,591),
 (53,'object/installation/mining_gas/shared_mining_gas_harvester_style_3.iff',2,'Heavy Natural Gas Processor','gas_mine_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,591),
 (54,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_1.iff',1,'Personal Chemical Extractor','liquid_mine','installation_n',0,0,0,6,1,1000,1500,0,5040,25,439),
 (55,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_2.iff',1,'Chemical Extractor','liquid_mine_medium','installation_n',0,0,0,6,1,1000,3000,0,10080,50,439),
 (56,'object/installation/mining_liquid/shared_mining_liquid_harvester_style_3.iff',2,'Deep Crust Chemical Extractor','liquid_mine_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,439),
 (57,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester.iff',1,'Personal Moisture Vaporator','moisture_mine','installation_n',0,0,0,6,1,1000,1500,0,5040,25,453),
 (58,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester_heavy.iff',2,'High Efficiency Moisture Vaporator','moisture_mine_heavy','installation_n',0,0,0,6,1,1000,4500,0,15120,75,453),
 (59,'object/installation/mining_liquid/shared_mining_liquid_moisture_harvester_medium.iff',1,'Moisture Vaporator','moisture_mine_medium','installation_n',0,0,0,6,1,1000,3000,0,10080,50,453),
 (60,'object/installation/mining_ore/shared_mining_ore_harvester_heavy.iff',2,'Heavy Mineral Mining Installation','heavy_ore_mine','installation_n',0,0,0,6,1,1000,4500,0,15120,75,464),
 (61,'object/installation/mining_ore/shared_mining_ore_harvester_style_1.iff',1,'Personal Mineral Extractor','small_ore_mine','installation_n',0,0,0,6,1,1000,1500,0,5040,25,464),
 (62,'object/installation/mining_ore/shared_mining_ore_harvester_style_2.iff',1,'Mineral Mining Installation','ore_mine','installation_n',0,0,0,6,1,1000,3000,0,10080,50,464),
 (63,'object/building/player/shared_player_house_naboo_small_style_01.iff',1,'Small Naboo House','housing_naboo_small','building_name',0.65,100,0,3,1,4320,800,0,2688,0,464),
 (64,'object/building/player/shared_player_house_corellia_large_style_01.iff',5,'Large Corellian House','housing_corellia_large_style_1','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464),
 (65,'object/building/player/shared_player_house_corellia_large_style_02.iff',5,'Large Corellian House','housing_corellia_large_style_2','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464),
 (66,'object/building/player/shared_player_house_corellia_medium_style_01.iff',2,'Medium Corellian House','housing_corellia_medium_style_1','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464),
 (67,'object/building/player/shared_player_house_corellia_medium_style_02.iff',2,'Medium Corellian House','housing_corellia_medium_style_2','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464),
 (68,'object/building/player/shared_player_house_corellia_small_style_01.iff',2,'Small Corellian House','housing_corellia_small_style_1','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (69,'object/building/player/shared_player_house_corellia_small_style_01_floorplan_02.iff',2,'Small Corellian House','housing_corellia_small_style_1_floorplan_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (70,'object/building/player/shared_player_house_corellia_small_style_02.iff',2,'Small Corellian House','housing_corellia_small_style_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (71,'object/building/player/shared_player_house_corellia_small_style_02_floorplan_02.iff',2,'Small Corellian House','housing_corellia_small_style_2_floorplan_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (72,'object/building/player/shared_player_house_generic_large_style_01.iff',5,'Large General House','housing_general_large_style_1','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464),
 (73,'object/building/player/shared_player_house_generic_large_style_02.iff',5,'Large General House','housing_general_large_style_2','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464),
 (74,'object/building/player/shared_player_house_generic_medium_style_01.iff',2,'Medium General House','housing_general_medium_style_1','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464),
 (75,'object/building/player/shared_player_house_generic_medium_style_02.iff',2,'Medium General House','housing_general_medium_style_2','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464),
 (76,'object/building/player/shared_player_house_generic_small_style_01.iff',2,'Small General House','housing_general_small_style_1','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (77,'object/building/player/shared_player_house_generic_small_style_01_floorplan_02.iff',2,'Small General House','housing_general_small_style_1_floorplan_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (78,'object/building/player/shared_player_house_generic_small_style_02.iff',2,'Small General House','housing_general_small_style_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (79,'object/building/player/shared_player_house_generic_small_style_02_floorplan_02.iff',2,'Small General House','housing_general_small_style_2','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (80,'object/building/player/shared_player_merchant_tent_style_01.iff',1,'Merchant Tent','merchant_tent','building_name',0.65,100,0,3,1,4320,600,0,2016,0,464),
 (81,'object/building/player/shared_player_house_naboo_large_style_01.iff',5,'Large Naboo House','housing_naboo_large','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464),
 (82,'object/building/player/shared_player_house_naboo_medium_style_01.iff',2,'Medium Naboo House','housing_naboo_medium','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464),
 (83,'object/building/player/shared_player_house_naboo_small_style_02.iff',2,'Small Naboo House','housing_naboo_small','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (84,'object/building/player/shared_player_house_tatooine_large_style_01.iff',5,'Large Tatooine House','housing_tatt_style01_large','building_name',0.65,400,0,5,1,7200,2500,0,8400,0,464),
 (85,'object/building/player/shared_player_house_tatooine_medium_style_01.iff',2,'Medium Tatooine House','housing_tatt_style01_med','building_name',0.65,200,0,4,1,5760,1700,0,5712,0,464),
 (86,'object/building/player/shared_player_house_tatooine_small_style_01.iff',2,'Small Tatooine House','housing_tatt_style01_small','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464),
 (87,'object/building/player/shared_player_house_tatooine_small_style_02.iff',2,'Small Tatooine House','housing_tatt_style01_small','building_name',0.65,200,0,3,1,4320,800,0,2688,0,464);
/*!40000 ALTER TABLE `structure_type_data` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
