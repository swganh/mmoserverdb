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
  `region_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `region_name` char(255) DEFAULT 'region_name',
  `region_file` char(255) DEFAULT 'region_file',
  `x` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `width` float NOT NULL DEFAULT '0',
  `height` float NOT NULL DEFAULT '0',
  `planet_id` int(10) unsigned DEFAULT NULL,
  `build` tinyint(3) DEFAULT '0' COMMENT '0 = build, 1 = no build',
  `no_build_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1= cities, 2= badges, 3=POIs, 4=Other',
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `planet_regions`
--

/*!40000 ALTER TABLE `planet_regions` DISABLE KEYS */;
INSERT INTO `planet_regions` (`region_id`,`region_name`,`region_file`,`x`,`z`,`width`,`height`,`planet_id`,`build`,`no_build_type`) VALUES 
 (1,'dantooine_mining_outpost','dantooine_region_names',-640,2486,135,135,1,1,1),
 (2,'dantooine_pirate_outpost','dantooine_region_names',1588,-6399,135,135,1,1,1),
 (3,'dantooine_imperial_outpost','dantooine_region_names',-4224,-2400,250,250,1,1,1),
 (4,'coronet','corellia_region_names',-178,-4504,581,581,0,1,1),
 (5,'tyrena','corellia_region_names',-5140,-2450,300,300,0,1,1),
 (6,'bela_vistal','corellia_region_names',6766,-5692,370,370,0,1,1),
 (7,'kor_vella','corellia_region_names',-3420,3146,620,620,0,1,1),
 (8,'doaba_guerfel','corellia_region_names',3274,5582,325,325,0,1,1),
 (9,'vreni_island','corellia_region_names',-5538,-6176,220,220,0,1,1),
 (10,'dathomir_trade_outpost','dathomir_region_names',599,3046,110,110,2,1,1),
 (11,'dathomir_survey_outpost','dathomir_region_names',-85,-1600,125,125,2,1,1),
 (12,'endor_neutral_outpost','endor_region_names',-905,1584,130,130,3,1,1),
 (13,'endor_smuggler_outpost','endor_region_names',3221,-3471,100,100,3,1,1),
 (14,'lok_nyms_stronghold','lok_region_names',440,5029,315,315,4,1,1),
 (15,'lok_imperial_outpost','lok_region_names',-1920,-3084,150,150,4,1,1),
 (16,'theed','naboo_region_names',-5488,4380,610,610,5,1,1),
 (17,'keren','naboo_region_names',1888,2700,550,550,5,1,1),
 (18,'moenia','naboo_region_names',4836,-4830.5,277,277,5,1,1),
 (19,'deeja_peak','naboo_region_names',4686,-1375,220,220,5,1,1),
 (20,'kaadara','naboo_region_names',5288,6687,225,225,5,1,1),
 (21,'narmle','rori_region_names',-5140,-2368,250,250,6,1,1),
 (22,'restuss','rori_region_names',5318,5680,325,325,6,1,1),
 (23,'a_rebel_outpost','rori_region_names',3677,-6447,80,80,6,1,1),
 (24,'dearic','talus_region_names',422,-3004,435,435,7,1,1),
 (25,'nashal','talus_region_names',4163,5220,195,195,7,1,1),
 (26,'an_imperial_outpost','talus_region_names',-2178,2300,150,150,7,1,1),
 (27,'bestine','tatooine_region_names',-1204,-3692,375,375,8,1,1),
 (28,'mos_espa','tatooine_region_names',-2878,2226,435,435,8,1,1),
 (29,'mos_eisley','tatooine_region_names',3569,-4818,400,400,8,1,1),
 (30,'mos_entha','tatooine_region_names',1470,3248,390,390,8,1,1),
 (31,'mos_taike','tatooine_region_names',3855,2338,170,170,8,1,1),
 (32,'anchorhead','tatooine_region_names',40,-5348,330,330,8,1,1),
 (33,'wayfar','tatooine_region_names',-5157,-6549,210,210,8,1,1),
 (34,'yavin4_mining_outpost','yavin4_region_names',-312,4865,100,100,9,1,1),
 (35,'yavin4_labor_outpost','yavin4_region_names',-6925,-5707,130,130,9,1,1),
 (36,'pandath','taanab_region_names',299,3742,450,450,42,1,1),
 (37,'lake_retreat','naboo_region_name',-5488,-6,100,100,5,1,1),
 (38,'corellia_badge','corsec_base',5291,1494,100,100,0,1,2),
 (39,'corellia_badge','grand_theater',-5418,-6248,50,50,0,1,2),
 (40,'corellia_badge','crystal_fountain',6767,-5617,60,60,0,1,2),
 (41,'corellia_badge','agrilat_swamp',1084,4176,50,50,0,1,2),
 (42,'corellia_badge','rebel_hideout',-6530,5967,100,100,0,1,2),
 (43,'dantooine_badge','dantari_village',-3862,-5706,50,50,1,1,2),
 (44,'dantooine_badge','dantari_rock_village',-7156,-883,50,50,1,1,2),
 (45,'dantooine_badge','ab_rebel_base',-6836,5520,25,25,1,1,2),
 (46,'dantooine_badge','jedi_temple',4195,5203,25,25,1,1,2),
 (47,'dathomir_badge','imp_prison',-6304,753,100,100,2,1,2),
 (48,'dathomir_badge','tarpits',652,-4888,50,50,2,1,2),
 (49,'dathomir_badge','lesser_sarlacc',-2101,3165,50,50,2,1,2),
 (50,'dathomir_badge','escape_pod',-4427,586,25,25,2,1,2),
 (51,'dathomir_badge','lesser_misty_fall',3558,1554,25,25,2,1,2),
 (52,'dathomir_badge','downed_ship',5585,1903,50,50,2,1,2),
 (53,'dathomir_badge','great_misty_fall',3021,1289,25,25,2,1,2),
 (54,'endor_badge','ewok_tree_vill',4596,-2423,100,100,3,1,2),
 (55,'endor_badge','dulok_village',6051,-2477,100,100,3,1,2),
 (56,'endor_badge','ewok_lake_vill',-650,-5076,100,100,3,1,2),
 (57,'endor_badge','maruaders_stronghold',-4628,-2273,50,50,3,1,2),
 (58,'lok_badge','imp_outpost',-1814,-3086,50,50,4,1,2),
 (59,'lok_badge','mount_chaolt',3091,-4638,50,50,4,1,2),
 (60,'lok_badge','kimo_skeleton',4562,-1156,25,25,4,1,2),
 (61,'naboo_badge','theed_waterfall',-4628,4207,25,25,5,1,2),
 (62,'naboo_badge','peak_waterfall',5157,-1646,25,25,5,1,2),
 (63,'naboo_badge','amidala_beach',-5828,-93,50,50,5,1,2),
 (64,'naboo_badge','gungan_place',-2066,-5423,50,50,5,1,2),
 (65,'rori_badge','hyperdrive_fac',-1130,4544,100,100,6,1,2),
 (66,'rori_badge','imp_camp',-5633,-5661,50,50,6,1,2),
 (67,'rori_badge','reb_outpost',3664,-6501,100,100,6,1,2),
 (68,'rori_badge','spice_mine',7371,169,50,50,6,1,2),
 (69,'talus_badge','durbin',4133,962,50,50,7,1,2),
 (70,'talus_badge','imp_outpost',-2184,2405,50,50,7,1,2),
 (71,'talus_badge','imp_reb_batle',-2452,3846,25,25,7,1,2),
 (72,'talus_badge','aquq_cave',-4425,-1414,25,25,7,1,2),
 (73,'tatooine_badge','lars_home',-2579,-5500,25,25,8,1,2),
 (74,'tatooine_badge','bens_hut',-4512,-2270,25,25,8,1,2),
 (75,'tatooine_badge','sarlacc',-6176,-3372,25,25,8,1,2),
 (76,'tatooine_badge','escape_pod',-3930,-4425,25,25,8,1,2),
 (77,'tatooine_badge','krayt_skull',-4650,-4363,25,25,8,1,2),
 (78,'tatooine_badge','krayt_graveyard',7428,4563,50,50,8,1,2),
 (79,'tatooine_badge','fort_tusken',-3969,6267,50,50,8,1,2),
 (80,'yavin_badge','exar_kun',5076,5537,25,25,9,1,2),
 (81,'yavin_badge','blueleaf_temple',-875,-2047,50,50,9,1,2),
 (82,'yavin_badge','woolamander_palace',519,-646,25,25,9,1,2),
 (84,'a_imperial_outpost','dathomir_region_name',-6090,1010,150,150,2,1,1),
 (85,'taanab_badge','taanab_starport',299,3742,25,50,42,1,2),
 (86,'region_name','tatooine_complete',-8192,-8192,16384,16384,8,0,0),
 (87,'region_name','corellia_complete',-8192,-8192,16384,16384,0,0,0),
 (88,'region_name','dantooine_complete',-8192,-8192,16384,16384,1,0,0),
 (89,'region_name','dathomir_complete',-8192,-8192,16384,16384,2,0,0),
 (90,'region_name','endor_complete',-8192,-8192,16384,16384,3,0,0),
 (91,'region_name','lok_complete',-8192,-8192,16384,16384,4,0,0),
 (92,'region_name','naboo_complete',-8192,-8192,16384,16384,5,0,0),
 (93,'region_name','rori_complete',-8192,-8192,16384,16384,6,0,0),
 (94,'region_name','talus_complete',-8192,-8192,16384,16384,7,0,0),
 (95,'region_name','yavin_complete',-8192,-8192,16384,16384,8,0,0),
 (96,'region_name','taanab_complete',-8192,-8192,16384,16384,42,0,0),
 (97,'region_name','region_internal',-4601,4833,25,25,0,0,0),
 (98,'hideout','no_build_region',-6584,5915,100,100,0,1,3),
 (99,'corsecbase','no_build_region',5291,1494,100,100,0,1,3),
 (100,'grandtheater','no_build_region',-5421,-6212,100,100,0,1,3),
 (101,'crystalfountain','no_build_region',6760,-5617,100,100,0,1,3),
 (102,'agrilat','no_build_region',1402,3802,100,100,0,1,3),
 (103,'drall','no_build_region',1042,4193,100,100,0,1,3),
 (104,'nyax','no_build_region',1414,-317,100,100,0,1,3),
 (105,'stronghold','no_build_region',4651,-5617,100,100,0,1,3),
 (106,'afarathu','no_build_region',-2483,2907,100,100,0,1,3),
 (107,'dantari1','no_build_region',-3929,-5632,100,100,1,1,3),
 (108,'dantari2','no_build_region',-7144,-1053,100,100,1,1,3),
 (109,'dantari3','no_build_region',5655,-589,100,100,1,1,3),
 (110,'abandoned','no_build_region',-6858,5725,100,100,1,1,3),
 (111,'jeditemple','no_build_region',4258,5374,100,100,1,1,3),
 (112,'cystalhunter','no_build_region',-6259,7336,100,100,1,1,3),
 (113,'janta','no_build_region',6994,-4110,100,100,1,1,3),
 (114,'mokk','no_build_region',-7258,-3320,100,100,1,1,3),
 (115,'kunga','no_build_region',-368,-240,100,100,1,1,3),
 (116,'warren','no_build_region',-580,-3763,100,100,1,1,3),
 (117,'prison','no_build_region',-6091,1010,100,100,2,1,3),
 (118,'lessersarlacc','no_build_region',-2091,3177,100,100,2,1,3),
 (119,'dathpod','no_build_region',-4446,596,100,100,2,1,3),
 (120,'mistyfalls','no_build_region',3566,1560,100,100,2,1,3),
 (121,'tarpit','no_build_region',651,-4888,100,100,2,1,3),
 (122,'nightsister','no_build_region',-3946,-50,100,100,2,1,3),
 (123,'singing','no_build_region',678,4079,100,100,2,1,3),
 (124,'nightvssing','no_build_region',-2450,1521,100,100,2,1,3),
 (125,'nightspider','no_build_region',-1219,6262,100,100,2,1,3),
 (126,'slavecamp','no_build_region',2428,-1701,100,100,2,1,3),
 (127,'tree1','no_build_region',6,-5,100,100,3,1,3),
 (128,'tree2','no_build_region',4661,-2425,100,100,3,1,3),
 (129,'lake1','no_build_region',1578,-3271,100,100,3,1,3),
 (130,'lake2','no_build_region',-605,-4940,100,100,3,1,3),
 (131,'dulok1','no_build_region',5921,-2514,100,100,3,1,3),
 (132,'dulok2','no_build_region',-1287,2904,100,100,3,1,3),
 (133,'marauder','no_build_region',-4838,-2339,100,100,3,1,3),
 (134,'korga','no_build_region',2286,3459,100,100,3,1,3),
 (135,'orphan','no_build_region',-6853,679,100,100,3,1,3),
 (136,'jinda','no_build_region',-1695,-56,100,100,3,1,3),
 (137,'volcano','no_build_region',3091,-4638,100,100,4,1,3),
 (138,'lokimpoutpost','no_build_region',-1785,-3087,100,100,4,1,3),
 (139,'kimogilaskel','no_build_region',4572,-1114,100,100,4,1,3),
 (140,'kimogilatown','no_build_region',-68,2650,100,100,4,1,3),
 (141,'canyoncosair','no_build_region',-3792,-3904,100,100,4,1,3),
 (142,'bloodrazor','no_build_region',3703,2274,100,100,4,1,3),
 (143,'droidcave','no_build_region',3364,-4923,100,100,4,1,3),
 (144,'greatmaze','no_build_region',3824,-465,100,100,4,1,3),
 (145,'gungan','no_build_region',-2104,-5408,100,100,5,1,3),
 (146,'theedfalls','no_build_region',-4627,4207,100,100,5,1,3),
 (147,'deejafalls','no_build_region',5174,-1550,100,100,5,1,3),
 (148,'amidalasbeach','no_build_region',-5828,-93,100,100,5,1,3),
 (149,'impvsgun','no_build_region',4825,-3820,100,100,5,1,3),
 (150,'mordran','no_build_region',-1952,-5279,100,100,5,1,3),
 (151,'weaponfacility','no_build_region',-6456,-3235,100,100,5,1,3),
 (152,'narglatch','no_build_region',5864,-4681,100,100,5,1,3),
 (153,'mauler','no_build_region',2963,1109,100,100,5,1,3),
 (154,'reboutpost','no_build_region',3669,-6586,100,100,6,1,3),
 (155,'kobala','no_build_region',7304,63,100,100,6,1,3),
 (156,'impencampment','no_build_region',-5651,-5660,100,100,6,1,3),
 (157,'hyperdrive','no_build_region',-1070,4542,100,100,6,1,3),
 (158,'garyn','no_build_region',-6004,-1851,100,100,6,1,3),
 (159,'borglebat','no_build_region',902,-4933,100,100,6,1,3),
 (160,'cobral','no_build_region',5464,5045,100,100,6,1,3),
 (161,'tortoncave','no_build_region',-1814,-4533,100,100,6,1,3),
 (162,'poacher','no_build_region',773,-2109,100,100,6,1,3),
 (163,'barkmite','no_build_region',3584,5419,100,100,6,1,3),
 (164,'swamptown','no_build_region',-1986,3339,100,100,6,1,3),
 (165,'impoutpost','no_build_region',-2193,2494,100,100,7,1,3),
 (166,'creaturevillage','no_build_region',4174,1162,100,100,7,1,3),
 (167,'impvsreb','no_build_region',-2595,3724,100,100,7,1,3),
 (168,'aqualishcave','no_build_region',-4268,-1432,100,100,7,1,3),
 (169,'weapondepot','no_build_region',-4899,-3137,100,100,7,1,3),
 (170,'detainment','no_build_region',4963,-5977,100,100,7,1,3),
 (171,'corvsflail','no_build_region',2938,6004,100,100,7,1,3),
 (172,'flynock','no_build_region',1508,-858,100,100,7,1,3),
 (173,'erransif','no_build_region',2145,-5576,100,100,7,1,3),
 (174,'aakuan','no_build_region',5939,4562,100,100,7,1,3),
 (175,'khamurrabio','no_build_region',-4816,-4752,100,100,7,1,3),
 (176,'decaymite','no_build_region',-5505,-4680,100,100,7,1,3),
 (177,'binyare','no_build_region',5526,-4073,100,100,7,1,3),
 (178,'jabbaspalace','no_build_region',-5856,-6183,225,225,8,1,3),
 (179,'forttusken','no_build_region',-3980,6311,150,150,8,1,3),
 (180,'jawatraders','no_build_region',-6141,1854,100,100,8,1,3),
 (181,'darklighter','no_build_region',-718,-6683,100,100,8,1,3),
 (182,'kraytgraveyard','no_build_region',6839,4320,100,100,8,1,3),
 (183,'larshomestead','no_build_region',-2579,-5500,100,100,8,1,3),
 (184,'kenobishouse','no_build_region',-4512,-2270,100,100,8,1,3),
 (185,'sarlacc','no_build_region',-6169,-3387,100,100,8,1,3),
 (186,'pod','no_build_region',-3931,-4397,100,100,8,1,3),
 (187,'skeleton','no_build_region',-4632,-4346,100,100,8,1,3),
 (188,'woolamander','no_build_region',467,-693,100,100,9,1,3),
 (189,'blueleaf','no_build_region',-976,-2039,100,100,9,1,3),
 (190,'exarkun','no_build_region',5163,5539,100,100,9,1,3),
 (191,'massassi','no_build_region',-3226,-3139,100,100,9,1,3),
 (192,'racingagrilat','no_build_region',1859,4642,100,100,0,1,3),
 (193,'racingkeren','no_build_region',1396,2686,100,100,5,1,3),
 (194,'racingmosespa','no_build_region',2380,5000,100,100,8,1,3),
 (195,'tyrena','no_build_region',-5536,-2688,250,250,0,1,1),
 (196,'tyrena','no_build_region',-4975,-2230,140,140,0,1,1),
 (197,'doaba_guerfel','no_build_region',3206,5200,325,325,0,1,1),
 (198,'vreni_island','no_build_region',-5260,-6416,220,220,0,1,1),
 (199,'a_restricted_area','no_build_region',-6358,930,280,280,2,1,1),
 (200,'nyms_stronghold','no_build_region',460,5400,140,140,4,1,1),
 (201,'theed','no_build_region',-5036,4124,569,569,5,1,1),
 (202,'keren','no_build_region',1344,2772,180,180,5,1,1),
 (203,'moenia','no_build_region',4736,-4628,190,190,5,1,1),
 (204,'deeja_peak','no_build_region',5021,-1446,225,225,5,1,1),
 (205,'deeja_peak','no_build_region',5302,-1553,111,111,5,1,1),
 (206,'kaadara','no_build_region',5091,6714,225,225,5,1,1),
 (207,'narmle','no_build_region',-5395,-2148,180,180,6,1,1),
 (208,'dearic','no_build_region',422,-3004,435,435,7,1,1),
 (209,'nashal','no_build_region',4443,5119,195,195,7,1,1),
 (210,'nashal','no_build_region',4439,5395,205,205,7,1,1),
 (211,'mos_eisley','no_build_region',3418,-4758,412,412,8,1,1),
 (212,'mos_entha','no_build_region',1219,3051,215,215,8,1,1),
 (213,'village','no_build_region',5297,-4130,600,600,2,1,4);
/*!40000 ALTER TABLE `planet_regions` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
