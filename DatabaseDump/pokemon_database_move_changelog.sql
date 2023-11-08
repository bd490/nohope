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
-- Table structure for table `move_changelog`
--

DROP TABLE IF EXISTS `move_changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_changelog` (
  `move_id` int NOT NULL,
  `changed_in_version_group_id` int NOT NULL,
  `type_id` int DEFAULT NULL,
  `power` smallint DEFAULT NULL,
  `pp` smallint DEFAULT NULL,
  `accuracy` smallint DEFAULT NULL,
  `priority` smallint DEFAULT NULL,
  `target_id` int DEFAULT NULL,
  `effect_id` int DEFAULT NULL,
  `effect_chance` int DEFAULT NULL,
  PRIMARY KEY (`move_id`,`changed_in_version_group_id`),
  KEY `changed_in_version_group_id` (`changed_in_version_group_id`),
  KEY `type_id` (`type_id`),
  KEY `target_id` (`target_id`),
  KEY `effect_id` (`effect_id`),
  CONSTRAINT `move_changelog_ibfk_1` FOREIGN KEY (`move_id`) REFERENCES `moves` (`id`),
  CONSTRAINT `move_changelog_ibfk_2` FOREIGN KEY (`changed_in_version_group_id`) REFERENCES `version_groups` (`id`),
  CONSTRAINT `move_changelog_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  CONSTRAINT `move_changelog_ibfk_4` FOREIGN KEY (`target_id`) REFERENCES `move_targets` (`id`),
  CONSTRAINT `move_changelog_ibfk_5` FOREIGN KEY (`effect_id`) REFERENCES `move_effects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_changelog`
--

LOCK TABLES `move_changelog` WRITE;
/*!40000 ALTER TABLE `move_changelog` DISABLE KEYS */;
INSERT INTO `move_changelog` VALUES (2,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,5,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL),(14,15,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL),(16,3,1,NULL,NULL,NULL,NULL,NULL,1,NULL),(17,3,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL),(18,15,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL),(19,8,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL),(20,11,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL),(22,8,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL),(22,15,NULL,35,15,NULL,NULL,NULL,NULL,NULL),(26,8,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL),(26,11,NULL,85,25,NULL,NULL,NULL,NULL,NULL),(28,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,11,NULL,35,NULL,95,NULL,NULL,NULL,NULL),(33,17,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(35,11,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL),(37,11,NULL,90,20,NULL,NULL,NULL,NULL,NULL),(38,3,NULL,100,NULL,NULL,NULL,NULL,49,NULL),(40,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20),(42,15,NULL,14,NULL,85,NULL,NULL,NULL,NULL),(44,3,1,NULL,NULL,NULL,NULL,NULL,NULL,10),(46,15,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL),(50,8,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL),(50,11,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL),(53,15,NULL,95,NULL,NULL,NULL,NULL,NULL,NULL),(56,15,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL),(57,15,NULL,95,NULL,NULL,NULL,NULL,NULL,NULL),(58,15,NULL,95,NULL,NULL,NULL,NULL,NULL,NULL),(59,3,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL),(59,15,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL),(66,15,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL),(67,5,NULL,50,NULL,90,NULL,NULL,32,30),(71,8,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL),(71,19,NULL,20,25,NULL,NULL,NULL,NULL,NULL),(71,20,NULL,40,15,NULL,NULL,NULL,NULL,NULL),(72,8,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL),(72,19,NULL,40,15,NULL,NULL,NULL,NULL,NULL),(72,20,NULL,75,10,NULL,NULL,NULL,NULL,NULL),(74,11,NULL,NULL,NULL,NULL,NULL,NULL,14,NULL),(74,15,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL),(76,19,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL),(76,20,NULL,200,NULL,NULL,NULL,NULL,NULL,NULL),(80,8,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL),(80,11,NULL,90,20,NULL,NULL,NULL,NULL,NULL),(81,17,NULL,NULL,NULL,NULL,NULL,NULL,21,NULL),(83,11,NULL,15,NULL,70,NULL,NULL,NULL,NULL),(85,15,NULL,95,NULL,NULL,NULL,NULL,NULL,NULL),(86,17,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL),(87,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10),(87,15,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL),(88,3,NULL,NULL,NULL,65,NULL,NULL,NULL,NULL),(91,3,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL),(91,8,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(92,11,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL),(94,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30),(95,8,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL),(95,9,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL),(100,19,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),(105,8,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL),(107,15,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL),(112,15,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL),(120,3,NULL,130,NULL,NULL,NULL,NULL,NULL,NULL),(122,15,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL),(123,15,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL),(126,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30),(126,15,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL),(128,11,NULL,NULL,10,75,NULL,NULL,NULL,NULL),(130,15,NULL,100,15,NULL,NULL,NULL,NULL,NULL),(136,8,NULL,85,NULL,NULL,NULL,NULL,NULL,NULL),(136,11,NULL,100,20,NULL,NULL,NULL,NULL,NULL),(137,11,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL),(137,15,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL),(139,11,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL),(139,15,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL),(141,17,NULL,20,15,NULL,NULL,NULL,NULL,NULL),(143,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10),(143,19,NULL,140,NULL,NULL,NULL,NULL,NULL,NULL),(143,20,NULL,200,NULL,NULL,NULL,NULL,NULL,NULL),(145,15,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL),(146,3,NULL,NULL,NULL,NULL,NULL,NULL,1,0),(148,8,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL),(149,15,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL),(151,15,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL),(152,11,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL),(152,15,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL),(153,3,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL),(157,3,NULL,NULL,NULL,NULL,NULL,NULL,1,0),(161,3,NULL,NULL,NULL,NULL,NULL,NULL,1,0),(165,15,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL),(168,15,NULL,40,10,NULL,NULL,NULL,NULL,NULL),(170,11,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL),(173,15,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL),(174,11,10001,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(178,11,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL),(178,15,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL),(184,11,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL),(186,15,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,8,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL),(195,15,NULL,NULL,NULL,NULL,NULL,12,NULL,NULL),(198,11,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL),(200,8,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL),(200,11,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL),(202,8,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL),(202,11,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(204,15,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,17,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL),(210,11,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(210,15,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL),(215,15,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL),(229,20,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL),(236,15,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,15,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(248,11,NULL,80,15,90,NULL,NULL,NULL,NULL),(248,15,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL),(249,8,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL),(250,11,NULL,15,NULL,70,NULL,NULL,NULL,NULL),(251,11,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(253,11,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(254,8,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL),(257,15,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL),(261,15,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL),(265,15,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(266,15,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL),(267,15,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(282,15,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL),(291,8,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(294,11,NULL,NULL,NULL,NULL,NULL,NULL,54,NULL),(305,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30),(309,15,NULL,100,NULL,85,NULL,NULL,NULL,NULL),(312,15,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL),(314,15,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL),(315,15,NULL,140,NULL,NULL,NULL,NULL,NULL,NULL),(317,15,NULL,50,10,80,NULL,NULL,NULL,NULL),(326,15,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL),(328,11,NULL,15,NULL,70,NULL,NULL,NULL,NULL),(330,15,NULL,95,NULL,NULL,NULL,NULL,NULL,NULL),(331,11,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(333,11,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(336,20,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL),(343,11,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL),(343,15,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL),(348,8,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL),(350,11,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL),(353,11,NULL,120,NULL,85,NULL,NULL,NULL,NULL),(358,15,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(364,11,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(366,15,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL),(372,15,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(375,15,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL),(382,11,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(386,11,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(387,11,NULL,130,NULL,NULL,NULL,NULL,NULL,NULL),(389,17,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL),(396,15,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL),(403,15,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL),(406,15,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL),(408,15,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL),(409,11,NULL,60,5,NULL,NULL,NULL,NULL,NULL),(412,15,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL),(434,15,NULL,140,NULL,NULL,NULL,NULL,NULL,NULL),(437,15,NULL,140,NULL,NULL,NULL,NULL,NULL,NULL),(441,15,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL),(448,15,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(463,11,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL),(463,15,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL),(464,17,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL),(472,15,NULL,NULL,NULL,NULL,-7,NULL,NULL,NULL),(476,15,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL),(478,15,NULL,NULL,NULL,NULL,-7,NULL,NULL,NULL),(480,15,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL),(485,15,NULL,70,15,NULL,NULL,NULL,NULL,NULL),(490,15,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL),(506,15,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(510,15,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL),(518,15,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(519,15,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(520,15,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(522,15,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL),(524,15,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL),(533,15,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL),(542,15,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL),(546,15,NULL,85,NULL,NULL,NULL,NULL,NULL,NULL),(560,17,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL),(565,17,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL),(570,17,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL),(595,17,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL),(718,20,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL),(729,20,NULL,50,15,NULL,NULL,NULL,NULL,NULL),(733,20,NULL,90,15,NULL,NULL,NULL,NULL,NULL),(734,20,NULL,90,15,NULL,NULL,NULL,NULL,NULL),(735,20,NULL,90,15,NULL,NULL,NULL,NULL,NULL),(736,20,NULL,90,NULL,100,NULL,NULL,NULL,NULL),(737,20,NULL,90,NULL,100,NULL,NULL,NULL,NULL),(738,20,NULL,90,15,100,NULL,NULL,NULL,NULL),(739,20,NULL,90,15,100,NULL,NULL,NULL,NULL),(740,20,NULL,90,15,100,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `move_changelog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:50