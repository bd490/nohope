-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: pokemon_database
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `move_meta`
--

DROP TABLE IF EXISTS `move_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_meta` (
  `move_id` int NOT NULL,
  `meta_category_id` int NOT NULL,
  `meta_ailment_id` int NOT NULL,
  `min_hits` int DEFAULT NULL,
  `max_hits` int DEFAULT NULL,
  `min_turns` int DEFAULT NULL,
  `max_turns` int DEFAULT NULL,
  `drain` int NOT NULL,
  `healing` int NOT NULL,
  `crit_rate` int NOT NULL,
  `ailment_chance` int NOT NULL,
  `flinch_chance` int NOT NULL,
  `stat_chance` int NOT NULL,
  PRIMARY KEY (`move_id`),
  KEY `meta_category_id` (`meta_category_id`),
  KEY `meta_ailment_id` (`meta_ailment_id`),
  KEY `ix_move_meta_max_hits` (`max_hits`),
  KEY `ix_move_meta_healing` (`healing`),
  KEY `ix_move_meta_stat_chance` (`stat_chance`),
  KEY `ix_move_meta_min_hits` (`min_hits`),
  KEY `ix_move_meta_drain` (`drain`),
  KEY `ix_move_meta_flinch_chance` (`flinch_chance`),
  KEY `ix_move_meta_max_turns` (`max_turns`),
  KEY `ix_move_meta_ailment_chance` (`ailment_chance`),
  KEY `ix_move_meta_min_turns` (`min_turns`),
  KEY `ix_move_meta_crit_rate` (`crit_rate`),
  CONSTRAINT `move_meta_ibfk_1` FOREIGN KEY (`move_id`) REFERENCES `moves` (`id`),
  CONSTRAINT `move_meta_ibfk_2` FOREIGN KEY (`meta_category_id`) REFERENCES `move_meta_categories` (`id`),
  CONSTRAINT `move_meta_ibfk_3` FOREIGN KEY (`meta_ailment_id`) REFERENCES `move_meta_ailments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_meta`
--

LOCK TABLES `move_meta` WRITE;
/*!40000 ALTER TABLE `move_meta` DISABLE KEYS */;
INSERT INTO `move_meta` VALUES (1,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(2,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(3,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(4,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(5,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(6,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(7,4,4,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(8,4,3,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(9,4,1,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(10,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(11,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(12,9,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(13,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(14,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(15,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(16,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(17,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(18,12,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(19,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(20,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(21,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(22,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(23,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(24,0,0,2,2,NULL,NULL,0,0,0,0,0,0),(25,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(26,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(27,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(28,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(29,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(30,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(31,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(32,9,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(33,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(34,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(35,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(36,0,0,NULL,NULL,NULL,NULL,-25,0,0,0,0,0),(37,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(38,0,0,NULL,NULL,NULL,NULL,-33,0,0,0,0,0),(39,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(40,4,5,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(41,4,5,2,2,NULL,NULL,0,0,0,20,0,0),(42,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(43,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(44,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(45,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(46,12,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(47,1,2,NULL,NULL,2,4,0,0,0,0,0,0),(48,1,6,NULL,NULL,2,5,0,0,0,0,0,0),(49,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(50,13,13,NULL,NULL,4,4,0,0,0,0,0,0),(51,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(52,4,4,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(53,4,4,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(54,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(55,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(56,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(57,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(58,4,3,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(59,4,3,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(60,4,6,NULL,NULL,2,5,0,0,0,10,0,0),(61,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(62,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(63,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(64,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(65,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(66,0,0,NULL,NULL,NULL,NULL,-25,0,0,0,0,0),(67,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(68,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(69,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(70,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(71,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(72,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(73,1,18,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(74,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(75,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(76,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(77,1,5,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(78,1,1,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(79,1,2,NULL,NULL,2,4,0,0,0,0,0,0),(80,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(81,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(82,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(83,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(84,4,1,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(85,4,1,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(86,1,1,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(87,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(88,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(89,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(90,9,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(91,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(92,1,5,NULL,NULL,15,15,0,0,0,0,0,0),(93,4,6,NULL,NULL,2,5,0,0,0,10,0,0),(94,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(95,1,2,NULL,NULL,2,4,0,0,0,0,0,0),(96,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(97,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(98,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(99,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(100,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(101,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(102,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(103,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(104,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(105,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(106,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(107,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(108,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(109,1,6,NULL,NULL,2,5,0,0,0,0,0,0),(110,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(111,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(112,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(113,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(114,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(115,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(116,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(117,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(118,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(119,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(120,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(121,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(122,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(123,4,5,NULL,NULL,NULL,NULL,0,0,0,40,0,0),(124,4,5,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(125,0,0,NULL,NULL,NULL,NULL,0,0,0,0,10,0),(126,4,4,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(127,0,0,NULL,NULL,NULL,NULL,0,0,0,0,20,0),(128,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(129,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(130,0,0,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(131,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(132,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(133,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(134,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(135,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(136,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(137,1,1,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(138,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(139,1,5,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(140,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(141,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(142,1,2,NULL,NULL,2,4,0,0,0,0,0,0),(143,0,0,NULL,NULL,NULL,NULL,0,0,1,0,30,0),(144,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(145,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(146,4,6,NULL,NULL,2,5,0,0,0,20,0,0),(147,1,2,NULL,NULL,2,4,0,0,0,0,0,0),(148,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(149,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(150,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(151,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(152,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(153,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(154,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(155,0,0,2,2,NULL,NULL,0,0,0,0,0,0),(156,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(157,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(158,0,0,NULL,NULL,NULL,NULL,0,0,0,0,10,0),(159,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(160,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(161,4,-1,NULL,NULL,NULL,NULL,0,0,0,20,0,0),(162,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(163,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(164,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(165,0,0,NULL,NULL,NULL,NULL,0,-25,0,0,0,0),(166,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(167,0,0,3,3,NULL,NULL,0,0,0,0,0,0),(168,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(169,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(170,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(171,1,9,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(172,4,4,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(173,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(174,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(175,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(176,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(177,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(178,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(179,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(180,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(181,4,3,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(182,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(183,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(184,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(185,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(186,1,6,NULL,NULL,2,5,0,0,0,0,0,0),(187,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(188,4,5,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(189,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(190,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(191,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(192,4,1,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(193,1,17,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(194,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(195,1,20,NULL,NULL,4,4,0,0,0,0,0,0),(196,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(197,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(198,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(199,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(200,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(201,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(202,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(203,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(204,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(205,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(206,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(207,5,6,NULL,NULL,2,5,0,0,0,0,0,0),(208,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(209,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(210,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(211,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(212,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(213,1,7,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(214,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(215,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(216,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(217,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(218,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(219,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(220,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(221,4,4,NULL,NULL,NULL,NULL,0,0,0,50,0,0),(222,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(223,4,6,NULL,NULL,2,5,0,0,0,100,0,0),(224,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(225,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(226,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(227,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(228,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(229,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(230,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(231,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,30),(232,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(233,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(234,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(235,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(236,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(237,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(238,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(239,0,0,NULL,NULL,NULL,NULL,0,0,0,0,20,0),(240,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(241,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(242,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,20),(243,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(244,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(245,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(246,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(247,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,20),(248,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(249,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(250,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(251,0,0,6,6,NULL,NULL,0,0,0,0,0,0),(252,0,0,NULL,NULL,NULL,NULL,0,0,0,0,100,0),(253,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(254,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(255,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(256,3,0,NULL,NULL,NULL,NULL,0,25,0,0,0,0),(257,4,4,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(258,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(259,1,12,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(260,5,6,NULL,NULL,2,5,0,0,0,0,0,0),(261,1,4,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(262,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(263,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(264,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(265,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(266,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(267,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(268,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(269,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(270,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(271,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(272,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(273,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(274,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(275,1,21,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(276,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(277,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(278,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(279,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(280,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(281,1,14,NULL,NULL,2,2,0,0,0,0,0,0),(282,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(283,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(284,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(285,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(286,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(287,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(288,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(289,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(290,0,0,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(291,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(292,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(293,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(294,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(295,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(296,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(297,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(298,1,6,NULL,NULL,2,5,0,0,0,0,0,0),(299,4,4,NULL,NULL,NULL,NULL,0,0,1,10,0,0),(300,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(301,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(302,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(303,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(304,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(305,4,5,NULL,NULL,15,15,0,0,0,50,0,0),(306,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(307,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(308,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(309,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,20),(310,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(311,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(312,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(313,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(314,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(315,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(316,1,17,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(317,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(318,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(319,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(320,1,2,NULL,NULL,2,4,0,0,0,0,0,0),(321,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(322,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(323,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(324,4,6,NULL,NULL,2,5,0,0,0,10,0,0),(325,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(326,0,0,NULL,NULL,NULL,NULL,0,0,0,0,10,0),(327,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(328,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(329,9,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(330,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,30),(331,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(332,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(333,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(334,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(335,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(336,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(337,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(338,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(339,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(340,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(341,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(342,4,5,NULL,NULL,NULL,NULL,0,0,1,10,0,0),(343,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(344,4,1,NULL,NULL,NULL,NULL,-33,0,0,10,0,0),(345,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(346,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(347,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(348,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(349,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(350,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(351,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(352,4,6,NULL,NULL,2,5,0,0,0,20,0,0),(353,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(354,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(355,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(356,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(357,1,17,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(358,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(359,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(360,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(361,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(362,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(363,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(364,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(365,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(366,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(367,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(368,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(369,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(370,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(371,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(372,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(373,1,19,NULL,NULL,5,5,0,0,0,0,0,0),(374,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(375,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(376,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(377,1,15,NULL,NULL,5,5,0,0,0,0,0,0),(378,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(379,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(380,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(381,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(382,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(383,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(384,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(385,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(386,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(387,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(388,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(389,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(390,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(391,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(392,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(393,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(394,4,4,NULL,NULL,NULL,NULL,-33,0,0,10,0,0),(395,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(396,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(397,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(398,4,5,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(399,0,0,NULL,NULL,NULL,NULL,0,0,0,0,20,0),(400,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(401,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(402,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(403,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(404,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(405,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(406,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(407,0,0,NULL,NULL,NULL,NULL,0,0,0,0,20,0),(408,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(409,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(410,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(411,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(412,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(413,0,0,NULL,NULL,NULL,NULL,-33,0,0,0,0,0),(414,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(415,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(416,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(417,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(418,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(419,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(420,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(421,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(422,4,1,NULL,NULL,NULL,NULL,0,0,0,10,10,0),(423,4,3,NULL,NULL,NULL,NULL,0,0,0,10,10,0),(424,4,4,NULL,NULL,NULL,NULL,0,0,0,10,10,0),(425,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(426,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,30),(427,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(428,0,0,NULL,NULL,NULL,NULL,0,0,0,0,20,0),(429,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,30),(430,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(431,4,6,NULL,NULL,2,5,0,0,0,20,0,0),(432,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(433,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(434,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(435,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(436,4,4,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(437,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(438,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(439,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(440,4,5,NULL,NULL,NULL,NULL,0,0,1,10,0,0),(441,4,5,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(442,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(443,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(444,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(445,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(446,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(447,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(448,4,6,NULL,NULL,2,5,0,0,0,100,0,0),(449,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(450,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(451,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,70),(452,0,0,NULL,NULL,NULL,NULL,-33,0,0,0,0,0),(453,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(454,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(455,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(456,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(457,0,0,NULL,NULL,NULL,NULL,-50,0,0,0,0,0),(458,0,0,2,2,NULL,NULL,0,0,0,0,0,0),(459,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(460,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(461,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(462,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(463,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(464,1,2,NULL,NULL,2,4,0,0,0,0,0,0),(465,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,40),(466,7,0,NULL,NULL,NULL,NULL,0,0,0,10,0,10),(467,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(468,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(469,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(470,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(471,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(472,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(473,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(474,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(475,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(476,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(477,1,-1,NULL,NULL,3,3,0,0,0,0,0,0),(478,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(479,0,-1,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(480,0,0,NULL,NULL,NULL,NULL,0,0,6,0,0,0),(481,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(482,4,5,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(483,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(484,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(485,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(486,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(487,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(488,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(489,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(490,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(491,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(492,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(493,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(494,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(495,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(496,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(497,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(498,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(499,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(500,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(501,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(502,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(503,4,4,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(504,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(505,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(506,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(507,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(508,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(509,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(510,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(511,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(512,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(513,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(514,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(515,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(516,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(517,4,4,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(518,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(519,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(520,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(521,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(522,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(523,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(524,0,0,NULL,NULL,NULL,NULL,0,0,6,100,0,0),(525,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(526,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(527,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(528,0,0,NULL,NULL,NULL,NULL,-25,0,0,0,0,0),(529,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(530,0,0,2,2,NULL,NULL,0,0,0,0,0,0),(531,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(532,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(533,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(534,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(535,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(536,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(537,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(538,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(539,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,40),(540,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(541,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(542,4,6,NULL,NULL,2,5,0,0,0,30,0,0),(543,0,0,NULL,NULL,NULL,NULL,-25,0,0,0,0,0),(544,0,0,2,2,NULL,NULL,0,0,0,0,0,0),(545,4,4,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(546,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(547,4,2,NULL,NULL,2,4,0,0,0,10,0,0),(548,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(549,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(550,4,1,NULL,NULL,NULL,NULL,0,0,0,20,0,0),(551,4,4,NULL,NULL,NULL,NULL,0,0,0,20,0,0),(552,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(553,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(554,4,4,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(555,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(556,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(557,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(558,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(559,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(560,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(561,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(562,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(563,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(564,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(565,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(566,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(567,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(568,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(569,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(570,8,0,NULL,NULL,NULL,NULL,50,0,0,0,0,0),(571,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(572,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(573,4,3,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(574,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(575,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(576,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(577,8,0,NULL,NULL,NULL,NULL,75,0,0,0,0,0),(578,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(579,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(580,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(581,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(582,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(583,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,10),(584,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(585,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,30),(586,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(587,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(588,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(589,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(590,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(591,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,50),(592,4,4,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(593,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(594,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(595,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(596,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(597,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(598,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(599,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(600,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(601,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(602,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(603,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(604,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(605,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(606,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(607,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(608,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(609,4,1,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(610,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(611,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(612,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(613,8,0,NULL,NULL,NULL,NULL,75,0,0,0,0,0),(614,0,-1,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(615,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(616,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(617,0,0,NULL,NULL,NULL,NULL,-50,0,0,0,0,0),(618,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(619,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(620,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(621,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(622,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(623,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(624,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(625,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(626,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(627,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(628,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(629,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(630,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(631,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(632,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(633,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(634,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(635,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(636,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(637,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(638,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(639,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(640,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(641,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(642,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(643,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(644,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(645,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(646,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(647,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(648,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(649,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(650,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(651,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(652,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(653,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(654,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(655,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(656,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(657,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(658,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(659,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(660,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(661,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(662,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(663,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(664,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(665,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(666,3,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(667,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(668,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(669,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(670,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(671,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(672,5,5,NULL,NULL,NULL,NULL,0,0,0,100,0,100),(673,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(674,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(675,4,24,NULL,NULL,2,2,0,0,0,100,0,0),(676,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(677,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(678,10,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(679,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(680,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(681,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(682,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(683,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(684,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(685,13,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0),(686,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(687,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(688,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(689,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(690,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(691,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(692,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(693,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(694,11,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(695,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(696,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(697,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(698,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(699,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(700,4,1,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(701,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(702,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(703,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(704,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(705,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(706,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(707,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(708,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,20),(709,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(710,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,20),(711,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(712,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(713,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(714,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(715,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(716,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(717,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(718,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(719,0,0,NULL,NULL,NULL,NULL,0,0,2,0,0,0),(720,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(721,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(722,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(723,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(724,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(725,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(726,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(727,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(728,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(729,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(730,4,1,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(731,0,0,NULL,NULL,NULL,NULL,0,0,0,0,30,0),(732,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(733,8,0,NULL,NULL,NULL,NULL,100,0,0,0,0,0),(734,4,1,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(735,4,4,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(736,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(737,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(738,4,18,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(739,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(740,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(741,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(742,0,0,2,2,NULL,NULL,0,0,0,0,30,0),(743,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(744,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(745,0,0,NULL,NULL,NULL,NULL,0,0,1,0,0,0),(746,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(747,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(748,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(749,5,42,NULL,NULL,NULL,NULL,0,0,0,100,0,100),(750,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(751,0,0,2,2,NULL,NULL,0,0,0,0,0,0),(752,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(753,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(754,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(755,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(756,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(757,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(758,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(759,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(760,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(761,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(762,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(763,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(764,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(765,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(766,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(767,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(768,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(769,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(770,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(771,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(772,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(773,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(774,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(775,2,0,NULL,NULL,NULL,NULL,0,-33,0,0,0,100),(776,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(777,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(778,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(779,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(780,4,4,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(781,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(782,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(783,7,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(784,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(785,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(786,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(787,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(788,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(789,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(790,4,6,NULL,NULL,2,5,0,0,0,20,0,0),(791,3,0,NULL,NULL,NULL,NULL,0,25,0,0,0,0),(792,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(793,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(794,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(795,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(796,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(797,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(798,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(799,0,0,2,5,NULL,NULL,0,0,0,0,0,0),(800,0,0,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(801,4,5,NULL,NULL,NULL,NULL,0,0,0,20,0,0),(802,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(803,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(804,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(805,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(806,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(807,4,4,NULL,NULL,NULL,NULL,0,0,0,100,0,0),(808,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(809,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(810,13,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(811,2,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(812,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(813,0,0,3,3,NULL,NULL,0,0,0,0,0,0),(814,0,0,2,2,NULL,NULL,0,0,0,0,0,0),(815,4,4,NULL,NULL,NULL,NULL,0,0,0,30,0,0),(816,13,0,NULL,NULL,NULL,NULL,0,25,0,0,0,0),(817,0,0,NULL,NULL,NULL,NULL,0,0,6,0,0,0),(818,0,0,3,3,NULL,NULL,0,0,6,0,0,0),(819,4,8,NULL,NULL,5,6,0,0,0,100,0,0),(820,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(821,4,3,NULL,NULL,NULL,NULL,0,0,0,10,0,0),(822,0,0,NULL,NULL,NULL,NULL,0,0,0,0,20,0),(823,6,0,NULL,NULL,NULL,NULL,0,0,0,0,0,100),(824,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(825,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(826,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `move_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:39
