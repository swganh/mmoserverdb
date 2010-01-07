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
-- Definition of table `planet_regions`
--

DROP TABLE IF EXISTS `planet_regions`;
CREATE TABLE `planet_regions` (
  `region_id` int(11) unsigned NOT NULL default '0',
  `region_name` char(255) default 'region_name',
  `region_file` char(255) default 'region_file',
  `x` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `width` float NOT NULL default '0',
  `height` float NOT NULL default '0',
  PRIMARY KEY  (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `planet_regions`
--

/*!40000 ALTER TABLE `planet_regions` DISABLE KEYS */;
INSERT INTO `planet_regions` (`region_id`,`region_name`,`region_file`,`x`,`z`,`width`,`height`) VALUES
 (1,'dantooine_mining_outpost','dantooine_region_names',-640,2486,135,135),
 (2,'dantooine_pirate_outpost','dantooine_region_names',1588,-6399,135,135),
 (3,'dantooine_imperial_outpost','dantooine_region_names',-4224,-2400,250,250),
 (4,'coronet','corellia_region_names',-178,-4504,581,581),
 (5,'tyrena','corellia_region_names',-5140,-2450,300,300),
 (6,'bela_vista','corellia_region_names',6766,-5692,370,370),
 (7,'kor_vella','corellia_region_names',-3420,3146,620,620),
 (8,'doaba_guerfel','corellia_region_names',3274,5582,325,325),
 (9,'vreni_island','corellia_region_names',-5538,-6176,220,220),
 (10,'dathomir_trade_outpost','dathomir_region_names',599,3046,110,110),
 (11,'dathomir_survey_outpost','dathomir_region_names',-85,-1600,125,125),
 (12,'endor_neutral_outpost','endor_region_names',-905,1584,130,130),
 (13,'endor_smuggler_outpost','endor_region_names',3221,-3471,100,100),
 (14,'lok_nyms_stronghold','lok_region_names',440,5029,315,315),
 (15,'lok_imperial_outpost','lok_region_names',-1920,-3084,136,136),
 (16,'theed','naboo_region_names',-5488,4380,610,610),
 (17,'keren','naboo_region_names',1888,2700,550,550),
 (18,'moenia','naboo_region_names',4836,-4830.5,277,277),
 (19,'deeja_peak','naboo_region_names',4686,-1375,220,220),
 (20,'kaadara','naboo_region_names',5288,6687,225,225),
 (21,'narmle','rori_region_names',-5140,-2368,250,250),
 (22,'restuss','rori_region_names',5318,5680,325,325),
 (23,'a_rebel_outpost','rori_region_names',3677,-6447,80,80),
 (24,'dearic','talus_region_names',422,-3004,435,435),
 (25,'nashal','talus_region_names',4163,5220,195,195),
 (26,'an_imperial_outpost','talus_region_names',-2178,2300,150,150),
 (27,'bestine','tatooine_region_names',-1204,-3692,375,375),
 (28,'mos_espa','tatooine_region_names',-2878,2226,435,435),
 (29,'mos_eisley','tatooine_region_names',3569,-4818,400,400),
 (30,'mos_entha','tatooine_region_names',1470,3248,390,390),
 (31,'mos_taike','tatooine_region_names',3855,2338,170,170),
 (32,'anchorhead','tatooine_region_names',40,-5348,330,330),
 (33,'wayfar','tatooine_region_names',-5157,-6549,210,210),
 (34,'yavin4_mining_outpost','yavin4_region_names',-312,4865,100,100),
 (35,'yavin4_labor_outpost','yavin4_region_names',-6925,-5707,130,130),
 (36,'pandath','taanab_region_names',299,3742,450,450),
 (37,'lake_retreat','naboo_region_name',-5488,-6,25,25),
 (38,'corellia_badge','corsec_base',5291,1494,100,100),
 (39,'corellia_badge','grand_theater',-5418,-6248,50,50),
 (40,'corellia_badge','crystal_fountain',6767,-5617,60,60),
 (41,'corellia_badge','agrilat_swamp',1084,4176,50,50),
 (42,'corellia_badge','rebel_hideout',-6530,5967,100,100),
 (43,'dantooine_badge','dantari_village',-3862,-5706,50,50),
 (44,'dantooine_badge','dantari_rock_village',-7156,-883,50,50),
 (45,'dantooine_badge','ab_rebel_base',-6836,5520,25,25),
 (46,'dantooine_badge','jedi_temple',4195,5203,25,25),
 (47,'dathomir_badge','imp_prison',-6304,753,100,100),
 (48,'dathomir_badge','tarpits',652,-4888,50,50),
 (49,'dathomir_badge','lesser_sarlacc',-2101,3165,50,50),
 (50,'dathomir_badge','escape_pod',-4427,586,25,25),
 (51,'dathomir_badge','lesser_misty_fall',3558,1554,25,25),
 (52,'dathomir_badge','downed_ship',5585,1903,50,50),
 (53,'dathomir_badge','great_misty_fall',3021,1289,25,25),
 (54,'endor_badge','ewok_tree_vill',4596,-2423,100,100),
 (55,'endor_badge','dulok_village',6051,-2477,100,100),
 (56,'endor_badge','ewok_lake_vill',-650,-5076,100,100),
 (57,'endor_badge','maruaders_stronghold',-4628,-2273,50,50),
 (58,'lok_badge','imp_outpost',-1814,-3086,50,50),
 (59,'lok_badge','mount_chaolt',3091,-4638,50,50),
 (60,'lok_badge','kimo_skeleton',4562,-1156,25,25),
 (61,'naboo_badge','theed_waterfall',-4628,4207,25,25),
 (62,'naboo_badge','peak_waterfall',5157,-1646,25,25),
 (63,'naboo_badge','amidala_beach',-5828,-93,50,50),
 (64,'naboo_badge','gungan_place',-2066,-5423,50,50),
 (65,'rori_badge','hyperdrive_fac',-1130,4544,100,100),
 (66,'rori_badge','imp_camp',-5633,-5661,50,50),
 (67,'rori_badge','reb_outpost',3664,-6501,100,100),
 (68,'rori_badge','spice_mine',7371,169,50,50),
 (69,'talus_badge','durbin',4133,962,50,50),
 (70,'talus_badge','imp_outpost',-2184,2405,50,50),
 (71,'talus_badge','imp_reb_batle',-2452,3846,25,25),
 (72,'talus_badge','aquq_cave',-4425,-1414,25,25),
 (73,'tatooine_badge','lars_home',-2579,-5500,25,25),
 (74,'tatooine_badge','bens_hut',-4512,-2270,25,25),
 (75,'tatooine_badge','sarlacc',-6176,-3372,25,25),
 (76,'tatooine_badge','escape_pod',-3930,-4425,25,25),
 (77,'tatooine_badge','krayt_skull',-4650,-4363,25,25),
 (78,'tatooine_badge','krayt_graveyard',7428,4563,50,50),
 (79,'tatooine_badge','fort_tusken',-3969,6267,50,50),
 (80,'yavin_badge','exar_kun',5076,5537,25,25),
 (81,'yavin_badge','blueleaf_temple',-875,-2047,50,50),
 (82,'yavin_badge','woolamander_palace',519,-646,25,25),
 (84,'a_imperial_outpost','dathomir_region_name',-6090,1010,50,50),
 (85,'taanab_badge','taanab_starport',299,3742,25,50),
 (86,'region_name','tatooine_complete',-8192,-8192,16384,16384),
 (87,'region_name','corellia_complete',-8192,-8192,16384,16384),
 (88,'region_name','dantooine_complete',-8192,-8192,16384,16384),
 (89,'region_name','dathomir_complete',-8192,-8192,16384,16384),
 (90,'region_name','endor_complete',-8192,-8192,16384,16384),
 (91,'region_name','lok_complete',-8192,-8192,16384,16384),
 (92,'region_name','naboo_complete',-8192,-8192,16384,16384),
 (93,'region_name','rori_complete',-8192,-8192,16384,16384),
 (94,'region_name','talus_complete',-8192,-8192,16384,16384),
 (95,'region_name','yavin_complete',-8192,-8192,16384,16384),
 (96,'region_name','taanab_complete',-8192,-8192,16384,16384),
 (97,'region_name','region_internal',-4601,4833,25,25);
/*!40000 ALTER TABLE `planet_regions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;