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

use swganh;

--
-- Definition of table `creature_attributes`
--

DROP TABLE IF EXISTS `creature_attributes`;
CREATE TABLE `creature_attributes` (
  `id` bigint(20) NOT NULL,
  `creature_id` bigint(20) NOT NULL,
  `attribute_id` int(11) default NULL,
  `value` char(255) default NULL,
  `order` int(11) default NULL,
  PRIMARY KEY  (`creature_id`,`id`),
  KEY `fk_creature_attributes` (`creature_id`),
  CONSTRAINT `fk_creature_attributes` FOREIGN KEY (`creature_id`) REFERENCES `creatures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creature_attributes`
--

/*!40000 ALTER TABLE `creature_attributes` DISABLE KEYS */;
INSERT INTO `creature_attributes` (`id`,`creature_id`,`attribute_id`,`value`,`order`) VALUES 
 (1,1,567,'womprat',1),		-- Type
 (2,1,73,'None',2),			-- Armor Rating
 (3,1,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (4,1,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (5,1,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (6,1,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (7,1,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (8,1,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (9,1,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (10,1,2018,'0',10),		-- Category: Armor Effectivness (Lightsaber)
 (11,1,2036,'0',11),		-- Category: Armor Vulnerability (Lightsaber)
 (12,1,221,'1000',12),		-- Health
 (13,1,225,'1000',13),		-- Strength
 (14,1,218,'1000',14),		-- Constitution
 (15,1,216,'1025',15),		-- Action
 (16,1,223,'1025',16),		-- Quickness
 (17,1,224,'1025',17),		-- Stamina
 (18,1,222,'1050',18),		-- Mind
 (19,1,220,'1050',19),		-- Focus
 (20,1,228,'1050',20),		-- Willpower
 (21,1,45,'40.0',21),		-- Aggressive
 (22,1,771,'25',30),		-- Tamable
 (23,1,401,'3',31),			-- Ferocity
 (24,1,654,'Bristley Hide',32), -- Hide Type
 (25,1,656,'Carnivore Meat',33), -- Meat Type
 (26,1,2037,'0',34),		-- Creature: Moutable
 (27,1,2038,'0',35),		-- Creature: Herd
 (28,1,2039,'0',36),		-- Creature: Pack
 (29,1,2040,'0',37),		-- Creature: Bio-Engineered
 (30,1,2041,'0',38),		-- Creature: Harvesting Quantity (Avg)
 (31,1,2042,'0',39),		-- Creature: Cant Be Harmed
 (32,1,2043,'0',40),		-- Creature: Healer
 (33,1,2044,'356',41),		-- Creature: XP
 (34,1,217,'2.0',42),		-- Attack Speed
 (35,1,2053,'90',43),		-- Creature: Min damage
 (36,1,2054,'110',44),		-- Creature: Max damage
 (37,1,2055,'6',45),		-- Creature: Max damage range
 (38,1,2056,'1',46),		-- Creature: Aggressive
 (39,1,745,'1',47),			-- Stalker
 (40,1,2057,'1',48),		-- Creature: Roaming
 (41,1,486,'0',49),			-- Deathblows
 (42,1,2058,'20.0',50),		-- Creature: Warning range
 (43,1,2059,'15.0',51),		-- Creature: Attack range
 (44,1,2060,'65.0',52),		-- Creature: Aggro range
 (45,1,2064,'120000',53),	-- Creature: Roaming delay
 (46,1,2065,'0.5',54),		-- Creature: Roaming speed
 (47,1,2066,'32.0',55),		-- Creature: Roaming max distance
 (48,1,2067,'4.0',56),		-- Creature: Stalking speed
 (49,1,2068,'64.0',57),		-- Creature: Stalking max distance
 (50,1,2069,'0',58),		-- Creature: Group assist
 
  
 (101,2,567,'desert_womprat',1), -- Type
 (102,2,73,'None',2),			-- Armor Rating
 (103,2,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (104,2,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (105,2,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (106,2,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (107,2,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (108,2,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (109,2,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (110,2,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (111,2,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (112,2,221,'1000',12),			-- Health
 (113,2,225,'1000',13),			-- Strength
 (114,2,218,'1000',14),			-- Constitution
 (115,2,216,'1025',15),			-- Action
 (116,2,223,'1025',16),			-- Quickness
 (117,2,224,'1025',17),			-- Stamina
 (118,2,222,'1050',18),			-- Mind
 (119,2,220,'1050',19),			-- Focus
 (120,2,228,'1050',20),			-- Willpower
 (121,2,45,'40.0',21),			-- Aggressive
 (122,2,771,'25',30),			-- Tamable
 (123,2,401,'3',31),			-- Ferocity
 (124,2,654,'Bristley Hide',32), -- Hide Type
 (125,2,656,'Carnivore Meat',33), -- Meat Type
 (126,2,2037,'0',34),			-- Creature: Moutable
 (127,2,2038,'0',35),			-- Creature: Herd
 (128,2,2039,'0',36),			-- Creature: Pack
 (129,2,2040,'0',37),			-- Creature: Bio-Engineered
 (130,2,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (131,2,2042,'0',39),			-- Creature: Cant Be Harmed
 (132,2,2043,'0',40),			-- Creature: Healer
 (133,2,2044,'356',41),			-- Creature: XP
 (134,2,217,'2.0',42),			-- Attack Speed
 (135,2,2053,'90',43),			-- Creature: Min damage
 (136,2,2054,'110',44),			-- Creature: Max damage
 (137,2,2055,'6',45),			-- Creature: Max damage range 
 (138,2,2056,'1',46),			-- Creature: Aggressive
 (139,2,745,'1',47),			-- Stalker
 (140,2,2057,'1',48),			-- Creature: Roaming
 (141,2,486,'0',49),			-- Deathblows 
 (142,2,2058,'20.0',50),		-- Creature: Warning range
 (143,2,2059,'15.0',51),		-- Creature: Attack range
 (144,2,2060,'65.0',52),		-- Creature: Aggro range
 (145,2,2064,'120000',53),		-- Creature: Roaming delay
 (146,2,2065,'0.5',54),			-- Creature: Roaming speed
 (147,2,2066,'32.0',55),		-- Creature: Roaming max distance
 (148,2,2067,'4.0',56),			-- Creature: Stalking speed
 (149,2,2068,'64.0',57),		-- Creature: Stalking max distance
 (150,2,2069,'0',58),			-- Creature: Group assist
 
 
 (201,3,567,'lesser_desert_womprat',1), -- Type
 (202,3,73,'None',2),			-- Armor Rating
 (203,3,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (204,3,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (205,3,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (206,3,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (207,3,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (208,3,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (209,3,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (210,3,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (211,3,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (212,3,221,'1000',12),			-- Health
 (213,3,225,'1000',13),			-- Strength
 (214,3,218,'1000',14),			-- Constitution
 (215,3,216,'1025',15),			-- Action
 (216,3,223,'1025',16),			-- Quickness
 (217,3,224,'1025',17),			-- Stamina
 (218,3,222,'1050',18),			-- Mind
 (219,3,220,'1050',19),			-- Focus
 (220,3,228,'1050',20),			-- Willpower
 (221,3,45,'40.0',21),			-- Aggressive
 (222,3,771,'25',30),			-- Tamable
 (223,3,401,'3',31),			-- Ferocity
 (224,3,654,'Bristley Hide',32), -- Hide Type
 (225,3,656,'Carnivore Meat',33), -- Meat Type
 (226,3,2037,'0',34),			-- Creature: Moutable
 (227,3,2038,'0',35),			-- Creature: Herd
 (228,3,2039,'0',36),			-- Creature: Pack
 (229,3,2040,'0',37),			-- Creature: Bio-Engineered
 (230,3,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (231,3,2042,'0',39),			-- Creature: Cant Be Harmed
 (232,3,2043,'0',40),			-- Creature: Healer
 (233,3,2044,'356',41),			-- Creature: XP
 (234,3,217,'2.0',42),			-- Attack Speed
 (235,3,2053,'90',43),			-- Creature: Min damage
 (236,3,2054,'110',44),			-- Creature: Max damage
 (237,3,2055,'6',45),			-- Creature: Max damage range  
 (238,3,2056,'1',46),			-- Creature: Aggressive
 (239,3,745,'1',47),			-- Stalker
 (240,3,2057,'1',48),			-- Creature: Roaming
 (241,3,486,'0',49),			-- Deathblows 
 (242,3,2058,'20.0',50),		-- Creature: Warning range
 (243,3,2059,'15.0',51),		-- Creature: Attack range
 (244,3,2060,'65.0',52),		-- Creature: Aggro range
 (245,3,2064,'120000',53),		-- Creature: Roaming delay
 (246,3,2065,'0.5',54),			-- Creature: Roaming speed
 (247,3,2066,'32.0',55),		-- Creature: Roaming max distance
 (248,3,2067,'4.0',56),			-- Creature: Stalking speed
 (249,3,2068,'64.0',57),		-- Creature: Stalking max distance
 (250,3,2069,'0',58),			-- Creature: Group assist
 
  
 (301,4,567,'variegated_womprat',1), -- Type
 (302,4,73,'None',2),			-- Armor Rating
 (303,4,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (304,4,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (305,4,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (306,4,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (307,4,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (308,4,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (309,4,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (310,4,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (311,4,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (312,4,221,'1000',12),			-- Health
 (313,4,225,'1000',13),			-- Strength
 (314,4,218,'1000',14),			-- Constitution
 (315,4,216,'1025',15),			-- Action
 (316,4,223,'1025',16),			-- Quickness
 (317,4,224,'1025',17),			-- Stamina
 (318,4,222,'1050',18),			-- Mind
 (319,4,220,'1050',19),			-- Focus
 (320,4,228,'1050',20),			-- Willpower
 (321,4,45,'40.0',21),			-- Aggressive
 (322,4,771,'25',30),			-- Tamable
 (323,4,401,'3',31),			-- Ferocity
 (324,4,654,'Bristley Hide',32), -- Hide Type
 (325,4,656,'Carnivore Meat',33), -- Meat Type
 (326,4,2037,'0',34),			-- Creature: Moutable
 (327,4,2038,'0',35),			-- Creature: Herd
 (328,4,2039,'0',36),			-- Creature: Pack
 (329,4,2040,'0',37),			-- Creature: Bio-Engineered
 (330,4,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (331,4,2042,'0',39),			-- Creature: Cant Be Harmed
 (332,4,2043,'0',40),			-- Creature: Healer
 (333,4,2044,'356',41),			-- Creature: XP
 (334,4,217,'2.0',42),			-- Attack Speed
 (335,4,2053,'90',43),			-- Creature: Min damage
 (336,4,2054,'110',44),			-- Creature: Max damage
 (337,4,2055,'6',45),			-- Creature: Max damage range 
 (338,4,2056,'1',46),			-- Creature: Aggressive
 (339,4,745,'1',47),			-- Stalker
 (340,4,2057,'1',48),			-- Creature: Roaming
 (341,4,486,'0',49),			-- Deathblows 
 (342,4,2058,'20.0',50),		-- Creature: Warning range
 (343,4,2059,'15.0',51),		-- Creature: Attack range
 (344,4,2060,'65.0',52),		-- Creature: Aggro range
 (345,4,2064,'120000',53),		-- Creature: Roaming delay
 (346,4,2065,'0.5',54),			-- Creature: Roaming speed
 (347,4,2066,'32.0',55),		-- Creature: Roaming max distance
 (348,4,2067,'4.0',56),			-- Creature: Stalking speed
 (349,4,2068,'64.0',57),		-- Creature: Stalking max distance
 (350,4,2069,'0',58),			-- Creature: Group assist
 
 
-- Womp Rat Hue
 (401,5,567,'womprat',1), -- Type
 (402,5,73,'None',2),			-- Armor Rating
 (403,5,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (404,5,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (405,5,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (406,5,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (407,5,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (408,5,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (409,5,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (410,5,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (411,5,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (412,5,221,'1500',12),			-- Health
 (413,5,225,'1500',13),			-- Strength
 (414,5,218,'1500',14),			-- Constitution
 (415,5,216,'1525',15),			-- Action
 (416,5,223,'1525',16),			-- Quickness
 (417,5,224,'1525',17),			-- Stamina
 (418,5,222,'1550',18),			-- Mind
 (419,5,220,'1550',19),			-- Focus
 (420,5,228,'1550',20),			-- Willpower
 (421,5,45,'60.0',21),			-- Aggressive
 (422,5,771,'25',30),			-- Tamable
 (423,5,401,'3',31),			-- Ferocity
 (424,5,654,'Bristley Hide',32), -- Hide Type
 (425,5,656,'Carnivore Meat',33), -- Meat Type
 (426,5,2037,'0',34),			-- Creature: Moutable
 (427,5,2038,'0',35),			-- Creature: Herd
 (428,5,2039,'0',36),			-- Creature: Pack
 (429,5,2040,'0',37),			-- Creature: Bio-Engineered
 (430,5,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (431,5,2042,'0',39),			-- Creature: Cant Be Harmed
 (432,5,2043,'0',40),			-- Creature: Healer
 (433,5,2044,'356',41),			-- Creature: XP
 (434,5,217,'2.0',42),			-- Attack Speed
 (435,5,2053,'100',43),			-- Creature: Min damage
 (436,5,2054,'120',44),			-- Creature: Max damage
 (437,5,2055,'6',45),			-- Creature: Max damage range
 (438,5,2056,'1',46),			-- Creature: Aggressive
 (439,5,745,'1',47),			-- Stalker
 (440,5,2057,'1',48),			-- Creature: Roaming
 (441,5,486,'0',49),			-- Deathblows 
 (442,5,2058,'20.0',50),		-- Creature: Warning range
 (443,5,2059,'15.0',51),		-- Creature: Attack range
 (444,5,2060,'65.0',52),		-- Creature: Aggro range
 (445,5,2064,'120000',53),		-- Creature: Roaming delay
 (446,5,2065,'0.5',54),			-- Creature: Roaming speed
 (447,5,2066,'32.0',55),		-- Creature: Roaming max distance
 (448,5,2067,'4.0',56),			-- Creature: Stalking speed
 (449,5,2068,'64.0',57),		-- Creature: Stalking max distance
 (450,5,2069,'0',58),			-- Creature: Group assist

  
 (501,6,567,'rill',1),			 -- Type
 (502,6,73,'None',2),			-- Armor Rating
 (503,6,2010,'0',3),			-- Category: Armor Effectivness (Kinetic)
 (504,6,2011,'0',4),			-- Category: Armor Effectivness (Energy)
 (505,6,2012,'0',5),			-- Category: Armor Effectivness (Blast)
 (506,6,2013,'0',6),			-- Category: Armor Effectivness (Stun)
 (507,6,2014,'0',7),			-- Category: Armor Effectivness (Heat)
 (508,6,2015,'0',8),			-- Category: Armor Effectivness (Cold)
 (509,6,2016,'0',9),			-- Category: Armor Effectivness (Acid)
 (510,6,2018,'0',10),			-- Category: Armor Effectivness (Lightsaber)
 (511,6,2036,'0',11),			-- Category: Armor Vulnerability (Lightsaber)
 (512,6,221,'500',12),			-- Health
 (513,6,225,'500',13),			-- Strength
 (514,6,218,'500',14),			-- Constitution
 (515,6,216,'525',15),			-- Action
 (516,6,223,'525',16),			-- Quickness
 (517,6,224,'525',17),			-- Stamina
 (518,6,222,'550',18),			-- Mind
 (519,6,220,'550',19),			-- Focus
 (520,6,228,'550',20),			-- Willpower
 (521,6,45,'30.0',21),			-- Aggressive
 (522,6,771,'25',30),			-- Tamable
 (523,6,401,'3',31),			-- Ferocity
 (524,6,654,'Bristley Hide',32), -- Hide Type
 (525,6,656,'Carnivore Meat',33), -- Meat Type
 (526,6,2037,'0',34),			-- Creature: Moutable
 (527,6,2038,'0',35),			-- Creature: Herd
 (528,6,2039,'0',36),			-- Creature: Pack
 (529,6,2040,'0',37),			-- Creature: Bio-Engineered
 (530,6,2041,'0',38),			-- Creature: Harvesting Quantity (Avg)
 (531,6,2042,'0',39),			-- Creature: Cant Be Harmed
 (532,6,2043,'0',40),			-- Creature: Healer
 (533,6,2044,'113',41),			-- Creature: XP
 (534,6,217,'2.0',42),			-- Attack Speed
 (535,6,2053,'45',43),			-- Creature: Min damage
 (536,6,2054,'55',44),			-- Creature: Max damage
 (537,6,2055,'6',45),			-- Creature: Max damage range 
 (538,6,2056,'1',46),			-- Creature: Aggressive
 (539,6,745,'1',47),			-- Stalker
 (540,6,2057,'1',48),			-- Creature: Roaming
 (541,6,486,'0',49),			-- Deathblows 
 (542,6,2058,'35.0',50),		-- Creature: Warning range
 (543,6,2059,'25.0',51),		-- Creature: Attack range
 (544,6,2060,'65.0',52),		-- Creature: Aggro range
 (545,6,2064,'120000',53),		-- Creature: Roaming delay
 (546,6,2065,'0.75',54),		-- Creature: Roaming speed
 (547,6,2066,'32.0',55),		-- Creature: Roaming max distance
 (548,6,2067,'4.5',56),			-- Creature: Stalking speed
 (549,6,2068,'75.0',57),		-- Creature: Stalking max distance
 (550,6,2069,'1',58);			-- Creature: Group assist
/*!40000 ALTER TABLE `creature_attributes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;