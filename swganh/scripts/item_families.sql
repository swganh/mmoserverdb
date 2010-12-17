CREATE DATABASE  IF NOT EXISTS `swganh` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `swganh`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: 127.0.0.1    Database: swganh
-- ------------------------------------------------------
-- Server version	5.1.48-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item_families`
--

DROP TABLE IF EXISTS `item_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_families` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `family_name` char(255) DEFAULT NULL,
  `crate_size` int(10) unsigned NOT NULL DEFAULT '25',
  `crate_type` int(10) unsigned NOT NULL DEFAULT '2772',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_item_family_name` (`family_name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_families`
--

LOCK TABLES `item_families` WRITE;
/*!40000 ALTER TABLE `item_families` DISABLE KEYS */;
INSERT INTO `item_families` VALUES (1,'survey_tool',25,2775),(2,'travel_ticket',25,2775),(3,'crafting_tool',25,2775),(4,'crafting_station',25,2775),(5,'furniture',25,2781),(6,'food',25,2776),(7,'wearable',25,2779),(8,'manufacture schematic',25,2772),(9,'generic',25,2775),(10,'weapon',25,2782),(11,'instrument',25,2775),(12,'bug_jar',25,2772),(13,'component',25,2775),(14,'crafting',25,2772),(15,'deed',0,0),(16,'dice',25,2775),(17,'droid',25,2777),(18,'droid_battery',25,2777),(19,'firework',25,2775),(20,'fishing',25,2775),(21,'item',25,2772),(22,'medicine',25,2780),(23,'mission',25,2772),(24,'powerup',25,2782),(25,'scout',25,2772),(26,'ship',25,2772),(27,'slicing',25,2775),(28,'parrot_cage',25,2775),(29,'hopper',25,2772),(30,'crate',0,0),(31,'terminal',0,0);
/*!40000 ALTER TABLE `item_families` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-12-16 17:33:09
