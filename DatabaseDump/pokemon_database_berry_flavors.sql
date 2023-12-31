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
-- Table structure for table `berry_flavors`
--

DROP TABLE IF EXISTS `berry_flavors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berry_flavors` (
  `berry_id` int NOT NULL,
  `contest_type_id` int NOT NULL,
  `flavor` int NOT NULL,
  PRIMARY KEY (`berry_id`,`contest_type_id`),
  KEY `contest_type_id` (`contest_type_id`),
  CONSTRAINT `berry_flavors_ibfk_1` FOREIGN KEY (`berry_id`) REFERENCES `berries` (`id`),
  CONSTRAINT `berry_flavors_ibfk_2` FOREIGN KEY (`contest_type_id`) REFERENCES `contest_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berry_flavors`
--

LOCK TABLES `berry_flavors` WRITE;
/*!40000 ALTER TABLE `berry_flavors` DISABLE KEYS */;
INSERT INTO `berry_flavors` VALUES (1,1,10),(1,2,0),(1,3,0),(1,4,0),(1,5,0),(2,1,0),(2,2,10),(2,3,0),(2,4,0),(2,5,0),(3,1,0),(3,2,0),(3,3,10),(3,4,0),(3,5,0),(4,1,0),(4,2,0),(4,3,0),(4,4,10),(4,5,0),(5,1,0),(5,2,0),(5,3,0),(5,4,0),(5,5,10),(6,1,10),(6,2,0),(6,3,10),(6,4,10),(6,5,10),(7,1,10),(7,2,10),(7,3,0),(7,4,10),(7,5,10),(8,1,10),(8,2,10),(8,3,10),(8,4,0),(8,5,10),(9,1,10),(9,2,10),(9,3,10),(9,4,10),(9,5,0),(10,1,0),(10,2,10),(10,3,10),(10,4,10),(10,5,10),(11,1,15),(11,2,0),(11,3,0),(11,4,0),(11,5,0),(12,1,0),(12,2,15),(12,3,0),(12,4,0),(12,5,0),(13,1,0),(13,2,0),(13,3,15),(13,4,0),(13,5,0),(14,1,0),(14,2,0),(14,3,0),(14,4,15),(14,5,0),(15,1,0),(15,2,0),(15,3,0),(15,4,0),(15,5,15),(16,1,10),(16,2,10),(16,3,0),(16,4,0),(16,5,0),(17,1,0),(17,2,10),(17,3,10),(17,4,0),(17,5,0),(18,1,0),(18,2,0),(18,3,10),(18,4,10),(18,5,0),(19,1,0),(19,2,0),(19,3,0),(19,4,10),(19,5,10),(20,1,10),(20,2,0),(20,3,0),(20,4,0),(20,5,10),(21,1,10),(21,2,0),(21,3,10),(21,4,10),(21,5,0),(22,1,0),(22,2,10),(22,3,0),(22,4,10),(22,5,10),(23,1,10),(23,2,0),(23,3,10),(23,4,0),(23,5,10),(24,1,10),(24,2,10),(24,3,0),(24,4,10),(24,5,0),(25,1,0),(25,2,10),(25,3,10),(25,4,0),(25,5,10),(26,1,20),(26,2,10),(26,3,0),(26,4,0),(26,5,0),(27,1,0),(27,2,20),(27,3,10),(27,4,0),(27,5,0),(28,1,0),(28,2,0),(28,3,20),(28,4,10),(28,5,0),(29,1,0),(29,2,0),(29,3,0),(29,4,20),(29,5,10),(30,1,10),(30,2,0),(30,3,0),(30,4,0),(30,5,20),(31,1,30),(31,2,10),(31,3,0),(31,4,0),(31,5,0),(32,1,0),(32,2,30),(32,3,10),(32,4,0),(32,5,0),(33,1,0),(33,2,0),(33,3,30),(33,4,10),(33,5,0),(34,1,0),(34,2,0),(34,3,0),(34,4,30),(34,5,10),(35,1,10),(35,2,0),(35,3,0),(35,4,0),(35,5,30),(36,1,15),(36,2,0),(36,3,10),(36,4,0),(36,5,0),(37,1,0),(37,2,15),(37,3,0),(37,4,10),(37,5,0),(38,1,0),(38,2,0),(38,3,15),(38,4,0),(38,5,10),(39,1,10),(39,2,0),(39,3,0),(39,4,15),(39,5,0),(40,1,0),(40,2,10),(40,3,0),(40,4,0),(40,5,15),(41,1,15),(41,2,0),(41,3,0),(41,4,10),(41,5,0),(42,1,0),(42,2,15),(42,3,0),(42,4,0),(42,5,10),(43,1,10),(43,2,0),(43,3,15),(43,4,0),(43,5,0),(44,1,0),(44,2,10),(44,3,0),(44,4,15),(44,5,0),(45,1,0),(45,2,0),(45,3,10),(45,4,0),(45,5,15),(46,1,20),(46,2,0),(46,3,0),(46,4,0),(46,5,10),(47,1,10),(47,2,20),(47,3,0),(47,4,0),(47,5,0),(48,1,0),(48,2,10),(48,3,20),(48,4,0),(48,5,0),(49,1,0),(49,2,0),(49,3,10),(49,4,20),(49,5,0),(50,1,0),(50,2,0),(50,3,0),(50,4,10),(50,5,20),(51,1,25),(51,2,10),(51,3,0),(51,4,0),(51,5,0),(52,1,0),(52,2,25),(52,3,10),(52,4,0),(52,5,0),(53,1,30),(53,2,10),(53,3,30),(53,4,0),(53,5,0),(54,1,0),(54,2,30),(54,3,10),(54,4,30),(54,5,0),(55,1,0),(55,2,0),(55,3,30),(55,4,10),(55,5,30),(56,1,30),(56,2,0),(56,3,0),(56,4,30),(56,5,10),(57,1,10),(57,2,30),(57,3,0),(57,4,0),(57,5,30),(58,1,30),(58,2,10),(58,3,30),(58,4,10),(58,5,30),(59,1,30),(59,2,10),(59,3,30),(59,4,10),(59,5,30),(60,1,40),(60,2,10),(60,3,0),(60,4,0),(60,5,0),(61,1,0),(61,2,40),(61,3,10),(61,4,0),(61,5,0),(62,1,0),(62,2,0),(62,3,40),(62,4,10),(62,5,0),(63,1,0),(63,2,0),(63,3,0),(63,4,40),(63,5,10),(64,1,10),(64,2,0),(64,3,0),(64,4,0),(64,5,40);
/*!40000 ALTER TABLE `berry_flavors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:30
