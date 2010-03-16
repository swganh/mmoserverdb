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
-- Definition of table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` bigint(20) unsigned NOT NULL auto_increment COMMENT 'Account ID',
  `username` char(32) NOT NULL default '' COMMENT 'Account username',
  `password` char(64) NOT NULL COMMENT 'Account password',
  `station_id` bigint(20) unsigned NOT NULL default '0' COMMENT 'Account STATION_ID',
  `csr` tinyint(1) NOT NULL default '0' COMMENT 'Account - CSR Flag',
  `banned` tinyint(1) NOT NULL default '0' COMMENT 'Account - Banned Status',
  `email` char(64) NOT NULL default '' COMMENT 'Account - User email',
  `joindate` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Account - Join Date',
  `lastlogin` timestamp NULL default NULL COMMENT 'Account - Last Login Timestamp',
  `active` tinyint(1) default NULL COMMENT 'Account - Active Flag',
  `loggedin` int(1) NOT NULL default '0' COMMENT 'Account - Cluster id account is logged into',
  `authenticated` tinyint(1) NOT NULL default '0' COMMENT 'Account - Authenticated Status',
  `characters_allowed` tinyint(3) unsigned NOT NULL default '2',
  `session_key` varchar(32) default NULL,
  PRIMARY KEY  (`account_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES
 (1,'rouse','24d08e080faa85645fd81fb664d04c04d2c8fb50',100000001,2,0,'rouse@swganh.org','2007-01-19 00:00:00','2009-09-17 23:03:28',1,0,0,2,'8e77b76fe4fdb6e694b114ded06c75e6'),
 (2,'spety','dedf80b32567e17671925e514a8c5d7e26c75a99',100000002,2,0,'spety@swganh.org','2007-01-19 00:00:00','2008-02-12 02:27:29',1,0,0,2,NULL),
 (3,'ketusringa','4cd6be19b0c56fccf3f35d4ba2677f94751f9b06',100000003,2,0,'ketusringa@swganh.org','2007-01-19 00:00:00','2008-05-29 18:00:51',1,0,0,2,'4c6c7c3ca367f5fe492c614524f7ca3a'),
 (4,'schmunzel','5c74bd74fe1d5ef454282415040c16df3f2306e9',100000004,2,0,'schmunzel@swganh.org','2007-01-19 00:00:00','2009-10-19 18:44:25',1,0,0,2,NULL),
 (5,'ready','75c0533730caf1f78561c0883fb87bc8d98ef04b',100000005,2,0,'ready@swganh.org','2007-01-19 00:00:00','2009-09-19 08:38:57',1,0,0,2,'7d3373140687c27bd7a4f9f4aa6c63a5'),
 (6,'xeno','bcb4e151133f13fff6edd64dfacfe1a84dd59aa0',100000006,2,0,'xenozephyr@swganh.org','2007-01-19 00:00:00','2007-03-09 00:43:39',1,0,0,2,NULL);
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (7,'htx','3906524c2e109c44dd6daa1ad3cad6d708cd5be3',100000007,2,0,'htx@swganh.org','2007-01-19 00:00:00','2008-10-10 19:02:45',1,0,0,2,NULL),
 (8,'narook','3cbbd500c1701e804fd73534a737e595e647dce7',100000008,2,0,'narook@swganh.org','2007-01-19 00:00:00','2009-07-12 04:35:07',1,0,0,2,NULL),
 (9,'jack','596727c8a0ea4db3ba2ceceedccbacd3d7b371b8',100000009,2,0,'jack@swganh.org','2007-01-19 00:00:00','2008-10-10 15:45:12',1,0,0,2,NULL),
 (10,'xunil','15e479d3dffb3674f5848c8349439612bd9cb11c',100000010,0,0,'xunil@swganh.org','2007-01-19 00:00:00','2007-02-19 00:00:00',1,0,0,2,NULL),
 (11,'jay','8bfd13cad0bc4b2ac41d9e235951e72c9b62c2aa',100000011,2,0,'jay@swganh.org','2007-01-19 00:00:00','2009-10-14 02:24:26',1,0,0,2,NULL),
 (12,'tmr','b5b369bdc5e23bce7d241a763857b16bdff61cdb',100000012,2,0,'tmr@swganh.org','2007-01-19 00:00:00','2009-10-15 11:09:30',1,0,0,2,'0e5a9987f8d72b7a5ee1416933e14ff1'),
 (13,'snow','b94e9f3d7e001981b2dd49f2a70822a8ac8f3e68',100000013,2,0,'snow@swganh.org','2007-01-19 00:00:00','2009-10-19 20:34:09',1,0,0,2,'4fa657c25722ae72c0c2e90334c76b7c');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (14,'yosh','1443bccc73f4a523b6dc65d81743d030e55316b0',100000014,2,0,'yosh@swganh.org','2007-01-03 00:00:00','2008-04-17 10:02:40',1,0,0,2,NULL),
 (15,'exca','5fbec650f6eb9280c4d5b892a5cf82afc35419d5',100000015,2,0,'exca@swganh.org','2007-01-09 00:00:00','2008-05-29 21:48:55',1,0,0,2,NULL),
 (16,'mugly','f195b0bd72bc95b960e58204abaefdbd2012b950',100000016,2,0,'mugly@swgemufr.com','2007-01-28 00:00:00','2009-10-19 15:05:15',1,0,0,2,NULL),
 (17,'meanmon','8989ba27cadd33f8a6721da50d916f5803910d17',100000017,2,0,'meanmon@swganh.org','2007-01-28 00:00:00','2009-08-28 18:01:14',1,0,0,2,'cc634bdebc510a3d6cebe2cb8d835419'),
 (18,'natakiya','4324456319ffd1b7b1a243512ae111efbbec50fa',100000018,2,0,'nata@swganh.org','2007-01-28 00:00:00','2007-03-09 04:40:07',1,0,0,2,NULL),
 (19,'wyz','35b44e03b3991ffd063b439d5518adb5bf86b2cc',100000019,2,0,'wyz@swganh.org','2007-06-04 20:00:11','2009-03-08 22:00:20',1,0,0,2,NULL),
 (20,'pope','b29488f0e58b98c8f1d82f8a5bf714f99ed0ca57',100000020,2,0,'mikepope@sympatico.ca','0000-00-00 00:00:00','2009-06-30 20:17:18',1,0,0,2,NULL);
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (21,'Ramakin','092e2ed0645918fafd448496de03af3745785095',100000021,2,0,'ramakin@swganh.com','0000-00-00 00:00:00','2008-05-28 01:38:15',1,0,0,2,'d42ce54e315fe68353fbcbd8c5e9e344'),
 (22,'Nelk','e4eea39cdb5f8a57cd1a4e93ab31cba1d5edc3f3',100000022,2,0,'nelkswg@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0,2,''),
 (23,'Vidi','48432aaa6de6d34764e6036fedc1d56f8303db85',100000023,2,0,'Vidi@briasreborn.com','0000-00-00 00:00:00','2009-03-30 19:46:16',1,0,0,2,NULL),
 (24,'sostrata','42472a47c436170601e2a5cb249fc2c83c6f4fc5',100000024,2,0,'sostrata@briasreborn.com','0000-00-00 00:00:00','2009-10-19 17:20:15',1,0,0,2,NULL),
 (25,'cieto','ac9553b16639c9097d61e9b5b533c42a312fe297',100000025,2,0,'cieto@euro-chimaera.co.uk','2007-06-07 17:02:43','2008-02-19 18:14:10',1,0,0,2,NULL),
 (26,'starko','67e29e1fd6e5b48e6e4b0de0831d978f7c854a16',100000026,2,0,'starko@euro-chimaera.co.uk','2007-06-07 17:02:42','2008-02-13 02:17:10',1,0,0,2,NULL),
 (27,'lloydyboy','42d80cba231ea3120ee36b8843b111a22dad8cff',100000027,2,0,'lloyd@lloydpickering.com','2007-06-07 17:02:43','2009-01-26 14:52:01',1,0,0,2,NULL);
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (28,'eruptor','732ca0f9f8987163f8b0b9400241cfb77d21a65a',100000028,2,0,'eruptor@swganh.org','2007-06-07 17:02:43','2009-09-23 11:28:53',1,0,0,2,NULL),
 (29,'dante','3e56e6a43d0de25d89f59e6ee90b13c57e01da64',100000029,2,0,'dante@renovo.com','2007-06-07 17:02:43','2007-07-12 02:48:09',1,0,0,2,NULL),
 (30,'ravenlock','e6554293277946225f682186d9d1fa5b857f5f1f',100000030,2,0,'grpatter@indiana.edu','2007-06-07 17:02:43','2007-07-12 02:48:09',1,0,0,2,NULL),
 (31,'ferrin','e6451e36b32f9a5102ffcf69e3107667db3d529f',100000031,0,0,'ferrin@briasreborn.com','0000-00-00 00:00:00','2008-06-03 02:46:51',1,0,0,2,'d640b1ce99a4938cde71fa32a97cc2c9'),
 (32,'hal','094022e39fb0c633090647448c9c2d3014d34274',100000032,0,0,'hal@truegalaxies.com','2007-08-22 00:00:00','2008-05-14 06:59:15',1,0,0,2,NULL),
 (33,'owen','d9a42a1e92a151c31de33f20009594d036ab3615',100000033,2,0,' owen@swganh.org','2009-08-20 21:28:48','2009-09-03 12:55:47',1,0,0,2,''),
 (34,'vostromus','25c947262b916d206cf623ff878dded9c8da60b0',100000034,2,0,'vostromus@yahoo.com','2009-10-11 14:44:52','2009-10-14 22:51:29',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (35, 'Machine1020','82ccc6b45a69f7de9f833996894734ab2064e0c2',100000035,2,0,'vMachine1020@gmail.com','2009-10-12 10:47:02','2009-10-15 17:25:19',1,0,0,2,''),
 (36, 'apathy', '2bc4e9268958e0078398a912710e04d26f7cd419', 100000036, 2, 0, 'apathy@gmail.com', '2009-10-19 22:11:41', '2009-10-29 07:27:32', 1, 0, 0, 2, ''),
 (37, 'Valkyra', 'c1f4de4cf474e1e6d22cadaa1f68daba7e0cd2dc', 100000037, 2, 0, 'valkyra@cox.net', '2010-02-15 17:02:46', '2010-02-15 17:02:46', 1, 0, 0, 2, ''),
 (38, 'firewarrior','e04e3ef576e5c581de0671a0970c283a6cda035e',999990502,1,0,'thrace06@hotmail.com','2010-02-13 15:41:29','2010-02-16 18:35:52',1,0,0,1,NULL),
 (39, 'powerking', '8b58ed1ed75e6f134f27ae7e9b43bb9fc96d93c9', 999990503, 2, 0, 'powerking89670@gmail.com', '2010-02-20 14:07:06', '2010-02-20 14:07:06', 1, 0, 0, 1, ''),
 (100,'Ackob','85f51c18b746b1034fc4642f592fa882362feb9c',111111100,0,0,'mdk.alex@gmail.com','2008-05-12 00:00:00','2008-11-09 12:52:20',1,0,0,2,'0c5368341bdd90606449f42b1a755c36'),
 (101,'agestee','812b29aad1bad88767d781f1e7e55f898dab8ed3',111111101,0,0,'webmaster@just-life.de','2007-05-20 03:24:20','2008-06-04 12:13:44',1,0,0,2,NULL),
 (104,'diezen','ec38f3fe6dd0850fef8c01ab6dd95021f3e58072',111111104,0,0,'ruben997@hotmail.com','2007-06-07 17:02:43','2009-10-14 09:56:56',1,0,0,2,NULL),
 (105,'ernie','65b1d89c9efba00fcc5d74bb84e61f59d6bbf961',111111105,0,0,'ernie_247@hotmail.com','2007-06-07 17:02:43','2009-04-05 13:51:16',1,0,0,2,NULL),
 (106,'FEDS91','2d46473c3cf6f929e7830b8251f0dc6a3f6d0e47',111111106,0,0,'feds@feds.com','2007-06-25 18:52:34','2008-05-28 10:50:48',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (107,'gohma','75d90b9e9258743f6f3fa0cbc5e9c138e0309f8d',111111107,0,0,'rocking-rob@hotmail.co.uk','2007-06-07 17:02:43','2008-09-24 07:56:04',1,0,0,2,'2520d81daabb75110adcf601105692f8'),
 (108,'joekiffer','0595385394dd0f29abb9550aa81b2ce4a5f89be6',111111108,0,0,'joekiffer@gmx.de','2007-05-20 03:24:20','2008-06-01 13:26:07',1,0,0,2,'1ff39b8751e99b2e81515611148f5939'),
 (109,'ka-wiz','14523c7c1717361c4bcfce5cc902630c23899433',111111109,0,0,'lightingcrest@gmail.com','2007-06-25 18:52:34','2008-10-10 21:38:51',1,0,0,2,'83e7c93cb3840aec8d739b4e9039be70'),
 (110,'karyfars','537ed22f5969568ad6b7c651d4766fe6e708ae32',111111110,0,0,'enovie@corvidan.de','2007-05-20 03:24:20','2009-08-03 14:54:28',1,0,0,2,'324198b0ac06047bcdba4cb8bfd0eed8'),
 (111,'kiithwarrior','71a0aeb998b2131169826d8d60c44b82d5432601',111111111,0,0,'matt@40acres.co.uk','2007-06-07 17:02:43','2007-08-16 16:21:13',1,0,0,2,NULL),
 (112,'mirasa','763aee563496b994063237a7b4d610f68da92e0b',111111112,0,0,'mirasa@comcast.net','2007-08-22 00:00:00','2008-05-31 22:04:24',1,0,0,2,'ecb2c322b62a8a9929834c27fa1411a0');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (114,'netrex','d93e06f145c48753f1d154c8600083d4efbc0e93',111111114,0,0,'netrex@truegalaxies.com','2007-01-05 00:00:00','2009-10-12 13:55:59',1,0,0,2,'32b19c03948307a7eb48c1c8cc908c87'),
 (115,'praxi','00735fc07b190eb9ec2f00892ee3f5b5c5aae6c0',111111115,0,0,'jordo9978@blueyonder.co.uk','0000-00-00 00:00:00','2008-02-29 18:12:33',1,0,0,2,''),
 (116,'riverins','2cebe3e4c8274256ae7338876787966f37b2e957',111111116,0,0,'jayman032487@hotmail.com','0000-00-00 00:00:00','2008-09-01 00:07:25',1,0,0,2,'75e2ad3f58812cca4a01c3395308d50d'),
 (117,'scinis','d8b0c429239dc957c875c01e54bd3a87ecdbd0fa',111111117,0,0,'scinis@swganh.org','2007-01-19 00:00:00','2009-08-02 20:06:22',1,0,0,0,NULL),
 (118,'Silent-X','3995a361f62f0ea85f93d1d589b213d1a0f543d1',111111118,0,0,'Silent-X@t.com','0000-00-00 00:00:00','2008-10-06 15:37:09',1,0,0,2,NULL),
 (119,'stevewitt76','264fbeb92f8dfb13441d446a151bbc5fbd9d8683',111111119,0,0,'switt76@yahoo.com','0000-00-00 00:00:00','2008-05-14 19:59:35',1,0,0,2,NULL);
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (120,'taswavo','d7d0e56ca0116cd462e336add9550658d8fc5979',111111120,0,0,'dbasfo@ntlworld.com','2007-06-04 20:02:09','2008-11-20 15:00:55',1,0,0,2,'44bb28b731aa93cb56a1cce299743d44'),
 (121,'teko','8d1772e4731155086e82a555468b45fc2c350d1f',111111121,0,0,'everlast746@gmail.com','2008-05-12 00:00:00','2008-05-26 20:41:26',1,0,0,2,'40559490d0ca1c7e43b0a4a05ba4ec77'),
 (122,'tomcat','8b480686e529e1edda5475859b65f50b398e90f8',111111122,0,0,'tomcatvmp@yahoo.co.uk','0000-00-00 00:00:00','2009-10-18 12:29:27',1,0,0,2,'c824575c346d122b3dc6138ec48e05ff'),
 (124,'zorkhea','ec38f3fe6dd0850fef8c01ab6dd95021f3e58072',111111124,0,0,'gaz@zorkhea.net','2007-06-07 17:02:43','2008-10-03 14:28:11',1,0,0,2,'2f2f67540c32add4f0621ba0883b74ba'),
 (125,'SaderBiscut','7b9944da2d19c787acd5b5d00ea5ec0a4df9a6b0',111111125,0,0,'SaderBiscut@gmail.com','2008-09-24 18:29:18','2008-09-30 22:25:34',1,0,0,2,NULL),
 (126,'nebula','5403662684fd509c23208b88e1cba41330411d73',111111126,0,0,'robinofhood@hotmail.com','2008-09-28 16:11:31','2009-04-04 13:29:24',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (127,'MasterBlaster','5bc0125afb713d3665cc529d1bb8d7df8c354dc9',111111127,0,0,'cidiouslord@yahoo.ca','2008-09-28 16:11:31','2008-09-28 16:11:31',1,0,0,2,''),
 (128,'MandaloreVerdo','f71b47e5f8be4c6e31dad9f5bb646b0d544b5a90',111111128,0,0,'xcapnhowdyx@yahoo.com','2008-09-28 16:11:31','2008-09-28 16:11:31',1,0,0,2,''),
 (129,'Rigphoria','af8d3998cda32310afc2b0f0cca843356004ce1f',111111129,0,0,'rigphoria@gmail.com','2008-09-28 16:11:31','2009-03-08 20:26:31',1,0,0,2,''),
 (130,'Raeche','1a6d32f09b14f7fbef817c26970450a2d24baae1',111111130,0,0,'raeche.zevach@gmail.com','2008-09-28 16:11:31','2009-04-06 08:31:08',1,0,0,2,''),
 (131,'Vanderbilt','7eef6873b826371e29fd8b06775904528d987f7d',111111131,0,0,'gallob75@uwosh.edu','2008-10-02 23:33:32','2009-01-20 14:30:34',1,0,0,2,''),
 (132,'ironsight','e38a5cde6da526c0621d154b2a6518369d76d511',111111132,0,0,'aegissof2@hotmail.com','2008-10-02 23:33:32','2008-10-24 16:41:03',1,0,0,2,''),
 (133,'Slyyke','b68296e3391c8b2aa87041a6295d20e239036f45',111111133,0,0,'slyyke66@yahoo.com','2008-10-02 23:33:32','2008-10-02 23:33:32',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (134,'CrazyCarlton','07fad9b8cabe0f47927c90b11909bd5fc77a7f06',111111134,0,0,'CrazyCarlton@t-online.de','2008-10-04 19:31:43','2008-10-05 15:22:32',1,0,0,2,''),
 (135,'Calael','3253fa0caf041bdba22c2e4919682ecf4c61e2e8',111111135,0,0,'ioxon@yahoo.com','2008-10-04 19:31:43','2008-10-10 23:42:43',1,0,0,2,''),
 (136,'Uberman','94879c6fc041e706f29b6a20ab64072a98b66393',111111136,0,0,'bhood2@comcast.net','2008-10-04 19:31:43','2008-10-05 13:04:03',1,0,0,2,''),
 (137,'Lunchbox','7e9cb31c6bca8ad037cdc882a15efd999ef3316a',111111137,0,0,'bsnowberger@msn.com','2008-10-04 19:31:43','2008-10-21 20:51:21',1,0,0,2,''),
 (138,'Amen','c24e9df697f908c683546c2c8a27a66a7592dcb2',111111138,0,0,'lethal_crow@yahoo.com','2008-10-04 23:50:25','2008-10-25 11:14:12',1,0,0,2,''),
 (139,'Sahara','c24e9df697f908c683546c2c8a27a66a7592dcb2',111111139,0,0,'sahara_crow@yahoo.com','2008-10-04 23:50:25','2008-10-22 11:38:15',1,0,0,2,''),
 (140,'Iasrokaf','642cefddf45e7407dd470c1a90d5d35d23a7bcc3',111111140,0,0,'18_bravo@live.com','2008-10-09 21:54:11','2008-10-10 22:51:44',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (141,'Kaeyll','5208f4e39a446da09dc88e4fbaff71985b773a22',111111141,0,0,'xmikex777@hotmail.com','2008-10-09 21:54:11','2008-10-10 10:52:06',1,0,0,2,''),
 (142,'facehead360','8eff8967e51da8c02e5adaff6e59219f55964cc3',111111142,0,0,'dah@mail.ie','2008-10-10 22:55:17','2008-10-10 22:55:39',1,0,0,2,''),
 (143,'biohazard','bcc50443316b83988742c4cc7127f8712829a255',111111143,0,0,'uberash_1993@hotmail.co.uk','2008-10-11 21:51:14','2008-10-13 15:26:26',1,0,0,2,''),
 (144,'aeludor','844ca232460f6798468af3cc5816fdef19004544',111111144,0,0,'aeluder@telus.net','2008-10-12 20:46:40','2008-10-13 09:20:46',1,0,0,2,''),
 (145,'ousely','cd575264346679ea545a73c364a01cfa3c20d98f',111111145,0,0,'astroman74@gmail.com','2008-10-24 19:24:54','2009-07-24 18:34:28',1,0,0,2,''),
 (146,'nicventura','0ee8343bca2245d4783de55217955e787207d934',111111146,0,0,'anicolas.thyge@stofanet.dk','2008-10-24 18:50:54','2008-10-24 18:50:54',1,0,0,2,''),
 (147,'gumbybacca','3ddf904ea656c6446c5c4e0fb624119abf287421',111111147,0,0,'it-wauk@ntm.org','2008-10-24 18:50:54','2008-11-06 15:13:56',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (148,'ruzan','05010c45bcc0589244e056044134874c2f5f0572',111111148,0,0,'doubleas2380@yahoo.com','2008-10-24 18:50:54','2008-10-24 18:50:54',1,0,0,2,''),
 (149,'temploiter','5f423624bcee2ea22495b8a2b1602628259e57ec',111111149,0,0,'temploiter@wdmkr.com','2008-10-24 18:50:54','2009-04-10 15:10:57',1,0,0,2,''),
 (150,'ernie247','ba0ec1f9b8c715d7e6644b5bf766cd8243d7dd4d',111111150,0,0,'ernie_247@hotmail.com','2008-10-25 11:40:03','2008-10-25 11:40:03',1,0,0,2,''),
 (151,'Tiri','24d08e080faa85645fd81fb664d04c04d2c8fb50',111111151,0,0,'myeternaloath@hotmail.com','2008-11-07 04:43:00','2008-11-25 18:37:39',1,0,0,2,NULL),
 (152,'experiment13','cd4ef128d6396477cdeb1f17a8b042d2fb2beea6',111111152,0,0,'name@email.com','2008-11-18 22:06:28','2009-01-15 20:32:10',1,0,0,2,''),
 (153,'richie','f901c7dd326d29361df7a854ec0a2ad2f5e221d8',111111153,0,0,'name@email.com','2008-11-18 22:06:28','2008-11-18 22:06:28',1,0,0,2,''),
 (154,'chewpekka','ee17b55d63f2c31019d6f0b101e1ef324e2b9f7a',111111154,0,0,'name@email.com','2008-11-18 22:06:28','2008-11-24 19:02:49',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (155,'suran37','21e5c307280557707a0358406da525f32b66b73f',111111155,0,0,'name@email.com','2008-11-18 22:06:28','2008-11-18 22:06:28',1,0,0,2,''),
 (156,'craven938','c6657332956494fd9548f546722a515c98dc142c',111111156,0,0,'name@email.com','2008-11-18 22:06:28','2008-11-18 22:06:28',1,0,0,2,''),
 (157,'arrius','4cf4b0fc05c7bf964919c0b24630c39091d286f1',111111157,0,0,'name@email.com','2008-11-18 22:06:28','2008-11-18 22:06:28',1,0,0,2,''),
 (158,'obi-two','172f7c3cb3dfdda62c5076e7f231da7fc3bde3b8',111111158,0,0,'name@email.com','2008-11-18 22:06:28','2009-10-03 07:15:59',1,0,0,2,''),
 (159,'kingsinner','36d40257794a418053aa1bcf3edbb724db8c6396',111111159,0,0,'knut.marius@itpartner.no','2008-12-13 12:06:20','2008-12-17 16:24:04',1,0,0,2,''),
 (160,'revan','f2f7d2a4e7c1d1fcc4ef7e7968586c99aade8b5b',111111160,0,0,'FlamicaUSA@crown.occoxmail.com','2008-12-13 12:06:23','2009-07-07 21:44:34',1,0,0,2,''),
 (161,'rynnn','c05d8f448e25d8039e914aaeea38c8c426c722dd',111111161,0,0,'charlie3233@msn.com','2008-12-13 12:06:24','2008-12-15 12:06:06',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (162,'sostrata2','42472a47c436170601e2a5cb249fc2c83c6f4fc5',111111162,2,0,'sostrata@briasreborn.com','0000-00-00 00:00:00','2009-08-30 09:34:23',1,0,0,2,''),
 (163,'Tiri2','24d08e080faa85645fd81fb664d04c04d2c8fb50',111111163,0,0,'myeternaloath@hotmail.com','2008-11-07 04:43:00','2008-12-12 21:20:33',1,0,0,2,''),
 (164,'tomcat2','8b480686e529e1edda5475859b65f50b398e90f8',111111164,0,0,'tomcatvmp@yahoo.co.uk','0000-00-00 00:00:00','2008-12-13 11:52:01',1,0,0,2,''),
 (165,'obi-two2','172f7c3cb3dfdda62c5076e7f231da7fc3bde3b8',111111165,0,0,'johnroyuk@gmail.com','2008-11-18 22:06:28','2009-01-18 13:18:05',1,0,0,2,''),
 (166,'hinch','58782add558f76d0e53f70872851eeacc41ddc4e',111111166,2,0,'hinch@furious-angels.com','2009-01-02 14:24:46','2009-03-09 15:17:00',1,0,0,2,''),
 (167,'ootini','bde555f28e962d7e4e1231eca033e390e0863b57',100000167,0,0,'jfowler07@alumni.uwosh.edu','2009-01-09 14:45:36','2009-01-16 22:55:13',1,0,0,2,''),
 (168,'boab','497f02302834c19a02c8e62cc996ae41790baa13',100000168,0,0,'boab@wdmkr.com','2009-01-09 14:45:39','2009-01-14 19:25:47',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (169,'slidey','fd85b509f55d055071c3fd98d6c46284a70b7268',100000169,2,0,'andy@impulsed.net','2009-01-09 14:45:41','2009-01-09 14:45:41',1,0,0,2,''),
 (170,'flas','832569abf7e3355aabdfd86c4299437d2654a31d',111111170,0,0,'u_stink_2@yahoo.com','2008-12-22 14:31:36','2009-09-22 19:43:17',1,0,0,2,''),
 (171,'oica','ce9d7ff65e51caeaf13f0d755002ad60b77cb384',111111171,0,0,'oicalightingsky@yahoo.com','2008-12-22 14:31:53','2008-12-22 14:31:53',1,0,0,2,''),
 (172,'arokh','eb0da3ad5ec9bf1eeacfa4ab434c0d405c99657c',111111172,0,0,'arokhdraggon@yahoo.com','2008-12-22 14:32:09','2008-12-22 14:32:09',1,0,0,2,''),
 (173,'swganh','41d14978522cc50b70e73f6f0007e82a000a95d5',111111173,0,0,'swganh','2009-01-02 11:07:22','2009-01-02 11:07:22',1,0,0,2,''),
 (174,'audune','2ecd5c0896ab646f5b01fcb44eafb67a9d568e1b',111111174,0,0,'auduneadolynn@gmail.com','2009-01-28 19:33:03','2009-01-28 22:34:41',1,0,0,2,''),
 (175,'Eikokai','f58c9eccfbe9a18a24eba27fbef70f6084f44a52',111111175,0,0,'Zebensui.de.leon@gmail.com','2009-02-04 17:39:19','2009-02-21 20:20:16',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (176,'argivo','3e2573a75821576a00dae928f8a77e35ef60e176',111111176,0,0,'bhebsgaard@hotmail.com','2009-02-05 18:33:18','2009-09-22 19:27:13',1,0,0,2,''),
 (177,'wombatula','3b2b153ee277efaa333bcba4a096d4f2bd0e7379',111111177,0,0,'evilcyclopsbaby@hotmail.com','2009-02-05 19:13:52','2009-02-05 19:13:52',1,0,0,2,''),
 (178,'arrev','4303f59222a783cd96605d3765b3979454773e5d',111111178,0,0,'darkkone@hotmail.com','2009-02-11 18:06:41','2009-02-12 18:02:28',1,0,0,2,''),
 (179,'hrvoje','ac542190acb9581f0d0ccfc57b016154c73add90',111111179,0,0,'hrc@swganh.org','2009-02-12 17:10:24','2009-02-18 11:30:07',1,0,0,2,''),
 (180,'hakry','9ff3e04a14876beec13f6b49aecad0bc2505f4e5',111111180,0,0,'adam_day16@EKU.EDU','2009-02-15 04:56:08','2009-09-16 01:26:09',1,0,0,2,''),
 (181,'electricnexus','e6b6afbd6d76bb5d2041542d7d2e3fac5bb05593',111111181,0,0,'bigbadboy1@hotmail.com','2009-02-15 04:56:08','2009-02-22 06:40:59',1,0,0,2,''),
 (182,'samuel','d3f5e5fb1152e4cdd518a75f018bf87d00b00c98',111111182,0,0,'s_michelson@hotmail.com','2009-02-18 02:31:36','2009-03-12 12:11:39',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (183,'argivo2','3e2573a75821576a00dae928f8a77e35ef60e176',111111183,0,0,'bhebsgaard@hotmail.com','2009-02-18 02:31:41','2009-09-22 19:27:34',1,0,0,2,''),
 (184,'jacku','f9da6cf84f279f992462706b15b21f8c38d8d702',111111184,0,0,'james@jallen.me.uk','2009-02-22 00:02:35','2009-08-18 22:19:49',1,0,0,2,''),
 (185,'yosie','b26cd3905e2e5418996e77a312a4fcd17fa5dfc5',111111185,0,0,'Nathey17@hotmail.co.uk','2009-03-11 18:54:21','2009-07-20 10:41:02',1,0,0,2,''),
 (186,'washproof','c033e563ac341c2420484652180f256d0de4bd26',111111186,0,0,'washproof@hotmail.co.uk','2009-03-19 14:18:44','2009-03-19 14:18:44',1,0,0,2,''),
 (187,'renagade','82a25775c47ed3cf2b9fad67f92ff3088da2ba19',111111187,0,0,'s3pt1c90@gmail.com','2009-03-31 19:10:00','2009-04-10 00:25:01',1,0,0,2,''),
 (188,'nahich','3604d72de47c0e2d211f0fd2f5f7a7c799a3abc9',111111188,0,0,'Reno_Pher@hotmail.com','2009-03-31 19:10:00','2009-07-28 09:19:50',1,0,0,2,''),
 (189,'dressari','fa2999a3fd05be4db1e33a5f63201f565d30fb3a',111111189,0,0,'Dressari@gmail.com','2009-03-31 19:10:00','2009-04-10 15:17:39',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (190,'sliff','1d3bdae40e6c9524259c62a23b684874af930569',111111190,0,0,'sliff1@hotmail.com','2009-03-31 19:10:00','2009-04-04 11:18:20',1,0,0,2,''),
 (191,'malakitin','aa2b276d9f72125ecd1e09e8eeba0a02bde723ed',111111191,0,0,'a.rose01@btinternet.com','2009-03-31 19:10:00','2009-04-10 15:08:55',1,0,0,2,''),
 (192,'linkman214','d4bf812cd0e5cf576c011afdc1e69445e7e7a760',111111192,0,0,'Linkman214@yahoo.com','2009-04-12 16:03:49','2009-09-14 13:12:08',1,0,0,2,''),
 (193,'Exitwounds','a4a85b080d09b941d2228f84a92f0710a69c4955',111111193,0,0,'ncefarat@fit.edu','2009-04-12 16:03:49','2009-04-14 15:13:04',1,0,0,2,''),
 (194,'peej','b3ef4625b8cc9de5305028ca5749c256e733083a',111111194,0,0,'pjmagee2@hotmail.com','2009-07-17 13:43:22','2009-10-09 22:22:13',1,0,0,2,''),
 (195,'rozus','4d4e9b2001b28f7ede8928f52389b39717c7ebd4',111111195,0,0,'rossxc@hotmail.co.uk','2009-06-28 02:18:03','2009-08-27 18:20:54',1,0,0,2,''),
 (196,'juspar','b22bdde83614961dcba83b86a87312333abc0c81',111111196,0,0,'juspar@gmail.com','2009-07-17 13:43:49','2009-08-28 09:43:14',1,0,0,2,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (206,'madylyn','0f676e03868ab5dd2a0910e07d8a6073bd400efc',111111206,0,0,'falcongirl_02@yahoo.com','2009-07-19 19:15:05','2009-08-07 00:23:24',1,0,0,1,''),
 (207,'isk','fe239ce16ed8e851783222ac1f110e1000e10caf',111111207,0,0,'isak@malms.org','2009-07-18 15:01:57','2009-07-24 11:33:09',1,0,0,1,''),
 (208,'lucilla','d954de26261db878e18f91771937f00c77d67538',111111208,0,0,'woe_lucilla@yahoo.com','2009-07-18 15:01:59','2009-10-17 13:18:37',1,0,0,1,''),
 (209,'wmbook','12b13a37731061fc59b3cdbc792b84198f2d4638',111111209,0,0,'webmaster@galaxiesbook.com','2009-07-18 15:02:03','2009-08-13 15:07:05',1,0,0,1,''),
 (210,'tsiya','6f8f3d39f89b90d8d4f39da09a3da5afdf58a381',111111210,0,0,'tsiya@comcast.net','2009-07-18 18:31:51','2009-07-21 13:25:48',1,0,0,1,''),
 (211,'cloudstrifese','c973ee705d24d2092f6a10b084a8be620460fa09',111111211,0,0,'Cloud91690@gmail.com','2009-07-21 19:05:23','2009-09-12 12:36:34',1,0,0,1,''),
 (212,'count','51b7eda98b0927441c433b60d9d55427f65e9dd0',111111212,0,0,'Draco.Redux0@gmail.com','2009-08-05 23:17:26','2009-08-07 14:18:20',1,0,0,1,'');
INSERT INTO `account` (`account_id`,`username`,`password`,`station_id`,`csr`,`banned`,`email`,`joindate`,`lastlogin`,`active`,`loggedin`,`authenticated`,`characters_allowed`,`session_key`) VALUES 
 (213,'kinsar','9c0eb5ae7c33a258c01d1378a55b4e0d1712740f',111111213,0,0,'rintoulkw@yahoo.ca','2009-08-20 11:27:41','2009-08-20 11:27:41',1,0,0,1,''),
 (214,'phantommenace','cce4a8f258be93e5d66fce33ac7d9a2df99b9e65',111111214,0,0,'THE_DARK_JEDI@GMX.COM','2009-08-19 11:08:20','2009-09-18 20:38:54',1,0,0,1,''),
 (215,'cisno','e7af8e932411677cdca3b2aa8f2f2f8e6bd0d3d3',111111215,0,0,'johnny-sundberg@hotmail.com','2009-08-30 15:12:01','2009-10-08 11:46:27',1,0,0,1,''),
 (216,'peej2','b3ef4625b8cc9de5305028ca5749c256e733083a',111111216,0,0,'pjmagee2@hotmail.com','2009-09-14 20:46:06','2009-09-14 20:46:06',1,0,0,1,''),
 (225,'adrikthorsen','57b9bce36613c31ef1832fc448a659040c0f5b59',111111225,0,0,'aethorsen@gmail.com','2009-10-15 17:32:23','2009-10-15 17:32:23',1,0,0,1,''),
 (226,'wulf','1e72916b92b291c8785c07109c490db2a84a704f',111111226,0,0,'wulf@swg-blackcompany.com','2009-10-15 17:34:08','2009-10-16 15:45:03',1,0,1,1,''),
 (227, 'danglejangles', '4e95fa85a06fd2a24ec9ea46e2deb75d0a27f595', 111111227, 0, 0, 'alexisz9@yahoo.com', '2009-10-15 17:32:23','2009-10-15 17:32:23',1,0,0,1,''),
 (228, 'vasilli', 'f1e93fd2be119e3876c6a2f57c27c86ef000dc16', 111111228, 0, 0, 'harry.fleetwood@googlemail.com', '2009-10-15 17:32:23','2009-10-15 17:32:23',1,0,0,1,''),
 (229, 'blade', '71abba49ae296f03522de104ae01615ae2c6b36b', 111111229, 0, 0, 'pat.white@aerglide.com', '2009-10-15 17:32:23','2009-10-15 17:32:23',1,0,0,1,''),
 (231, 'sojiro', '26daa966ac6659475ae98db2720f9a6243249ab3', 111111231, 0, 0, 'scoot12109@gmail.com', '2010-03-06 11:36:15', '2010-03-06 11:36:15', 1, 0, 0, 1, ''),
 (232, 'hoonius', '9d1aacc5d91ae12c89b90749b9f0ebe46ea71d9b', 111111232, 0, 0, 'timothyhustler@googlemail.com', '2010-03-16 17:06:48', '2010-03-16 17:06:48', 1, 0, 0, 1, ''),
 (233, 'crazymiller', '605dbf0f65d002aa1c4f0a182a9fe52049aa198a', 111111233, 0, 0, 'miller_909@live.co.uk', '2010-03-16 17:06:51', '2010-03-16 17:06:51', 1, 0, 0, 1, ''),
 (234, 'axler', 'fb7869ee49504b23815500b684f0520c777d8302', 111111234, 0, 0, 'rbrt_gleason@yahoo.com', '2010-03-16 17:06:54', '2010-03-16 17:06:54', 1, 0, 0, 1, ''),
 (235, 'johnshandy', '6794d21b82ccbc26c3c80f0d4976a76ab0446ad7', 111111235, 0, 0, 'john.shandy@opengalaxies.org', '2010-03-16 17:06:56', '2010-03-16 17:06:56', 1, 0, 0, 1, '');



/*!40000 ALTER TABLE `account` ENABLE KEYS */;

--
-- Definition of trigger `tr_LoggerAccountInsert`
--

DROP TRIGGER /*!50030 IF EXISTS */ `tr_LoggerAccountInsert`;

DELIMITER $$

CREATE DEFINER = `root`@`%` TRIGGER `tr_LoggerAccountInsert` AFTER INSERT ON `account` FOR EACH ROW BEGIN
	DECLARE sqlcommand TEXT;
	
	SET sqlcommand = CONCAT('INSERT INTO swganh.account VALUES(',new.account_id,', \'',new.username,'\', \'',new.password,'\', ',new.station_id,', ',new.csr,', ',new.banned,', \'',new.email,'\', 

\'',new.joindate,'\', \'',new.lastlogin,'\', ',new.active,', ',new.loggedin,', ',new.authenticated,', ',new.characters_allowed,');');
  
	INSERT INTO swganh_logs.account_logs
		SET	affected_record_id = new.account_id,
				account_name = new.username,
				account_email = new.email,
				event_type = 'INSERT',
				event_date = NOW(),
				event_command = sqlcommand;
END $$

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;