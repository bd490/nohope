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
-- Table structure for table `pal_park`
--

DROP TABLE IF EXISTS `pal_park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pal_park` (
  `species_id` int NOT NULL,
  `area_id` int NOT NULL,
  `base_score` int NOT NULL,
  `rate` int NOT NULL,
  PRIMARY KEY (`species_id`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `pal_park_ibfk_1` FOREIGN KEY (`species_id`) REFERENCES `pokemon_species` (`id`),
  CONSTRAINT `pal_park_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `pal_park_areas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pal_park`
--

LOCK TABLES `pal_park` WRITE;
/*!40000 ALTER TABLE `pal_park` DISABLE KEYS */;
INSERT INTO `pal_park` VALUES (1,2,50,30),(2,2,80,10),(3,2,90,3),(4,2,50,30),(5,2,80,10),(6,2,90,3),(7,4,50,30),(8,4,80,10),(9,4,90,3),(10,1,30,50),(11,1,50,30),(12,1,70,20),(13,1,30,50),(14,1,50,30),(15,1,70,20),(16,2,30,50),(17,2,50,30),(18,2,70,20),(19,2,30,50),(20,2,50,30),(21,2,30,50),(22,2,50,30),(23,1,30,50),(24,1,50,30),(25,1,80,10),(26,1,90,3),(27,3,50,30),(28,3,70,20),(29,2,30,50),(30,2,50,30),(31,2,70,20),(32,2,30,50),(33,2,50,30),(34,2,70,20),(35,3,80,10),(36,3,90,3),(37,2,70,20),(38,2,80,10),(39,2,80,10),(40,2,90,3),(41,3,30,50),(42,3,50,30),(43,1,30,50),(44,1,50,30),(45,1,70,20),(46,1,30,50),(47,1,50,30),(48,1,30,50),(49,1,50,30),(50,3,30,50),(51,3,50,30),(52,2,50,30),(53,2,70,20),(54,4,50,30),(55,4,70,20),(56,3,50,30),(57,3,70,20),(58,2,70,20),(59,2,80,10),(60,4,50,30),(61,4,80,10),(62,4,90,3),(63,2,50,30),(64,2,80,10),(65,2,90,3),(66,3,50,30),(67,3,80,10),(68,3,90,3),(69,1,30,50),(70,1,50,30),(71,1,70,20),(72,5,30,50),(73,5,50,30),(74,3,30,50),(75,3,50,30),(76,3,70,20),(77,2,50,30),(78,2,70,20),(79,4,50,30),(80,4,70,20),(81,3,50,30),(82,3,70,20),(83,2,70,20),(84,2,50,30),(85,2,70,20),(86,5,50,30),(87,5,70,20),(88,2,50,30),(89,2,70,20),(90,5,50,30),(91,5,70,20),(92,1,50,30),(93,1,80,10),(94,1,90,3),(95,3,80,10),(96,1,50,30),(97,1,70,20),(98,5,50,30),(99,5,70,20),(100,2,50,30),(101,2,70,20),(102,1,50,30),(103,1,70,20),(104,3,50,30),(105,3,70,20),(106,3,80,10),(107,3,80,10),(108,2,70,20),(109,3,50,30),(110,3,70,20),(111,3,50,30),(112,3,70,20),(113,2,90,3),(114,1,50,30),(115,2,70,20),(116,5,50,30),(117,5,70,20),(118,4,50,30),(119,4,70,20),(120,5,50,30),(121,5,70,20),(122,2,70,20),(123,2,70,20),(124,2,70,20),(125,3,70,20),(126,3,70,20),(127,1,70,20),(128,2,70,20),(129,4,30,50),(130,4,90,3),(131,5,90,3),(132,2,70,20),(133,2,90,3),(134,2,90,3),(135,2,90,3),(136,2,90,3),(137,2,80,10),(138,5,50,30),(139,5,70,20),(140,5,50,30),(141,5,70,20),(142,3,70,20),(143,2,80,10),(144,3,90,3),(145,3,90,3),(146,3,90,3),(147,4,70,20),(148,4,80,10),(149,3,90,3),(150,2,90,3),(151,1,100,1),(152,2,50,30),(153,2,80,10),(154,2,90,3),(155,2,50,30),(156,2,80,10),(157,2,90,3),(158,4,50,30),(159,4,80,10),(160,3,90,3),(161,2,30,50),(162,2,50,30),(163,1,30,50),(164,1,50,30),(165,2,30,50),(166,2,50,30),(167,2,30,50),(168,2,50,30),(169,3,90,3),(170,5,50,30),(171,5,70,20),(172,2,80,10),(173,2,80,10),(174,2,80,10),(175,2,80,10),(176,2,90,3),(177,1,50,30),(178,1,70,20),(179,2,50,30),(180,2,70,20),(181,2,80,10),(182,1,80,10),(183,4,50,30),(184,4,70,20),(185,3,70,20),(186,4,80,10),(187,2,50,30),(188,2,70,20),(189,2,80,10),(190,1,70,20),(191,2,50,30),(192,2,70,20),(193,2,80,10),(194,4,50,30),(195,4,70,20),(196,2,90,3),(197,2,90,3),(198,1,70,20),(199,4,80,10),(200,1,70,20),(201,1,70,20),(202,2,80,10),(203,2,70,20),(204,1,50,30),(205,1,70,20),(206,1,90,3),(207,3,50,30),(208,3,90,3),(209,2,50,30),(210,2,70,20),(211,5,80,10),(212,2,90,3),(213,5,80,10),(214,1,80,10),(215,3,50,30),(216,1,50,30),(217,1,70,20),(218,3,50,30),(219,3,70,20),(220,3,50,30),(221,3,70,20),(222,5,70,20),(223,5,50,30),(224,5,70,20),(225,3,70,20),(226,5,70,20),(227,3,70,20),(228,3,50,30),(229,3,70,20),(230,5,80,10),(231,3,50,30),(232,3,70,20),(233,2,80,10),(234,2,50,30),(235,2,80,10),(236,3,80,10),(237,3,80,10),(238,2,80,10),(239,3,80,10),(240,3,80,10),(241,2,70,20),(242,2,90,3),(243,3,90,3),(244,3,90,3),(245,3,90,3),(246,3,70,20),(247,3,80,10),(248,3,90,3),(249,3,90,3),(250,3,90,3),(251,1,100,1),(252,1,50,30),(253,1,80,10),(254,1,90,3),(255,2,50,30),(256,2,80,10),(257,2,90,3),(258,4,50,30),(259,4,80,10),(260,4,90,3),(261,2,30,50),(262,2,50,30),(263,2,30,50),(264,2,50,30),(265,1,30,50),(266,1,50,30),(267,1,70,20),(268,1,50,30),(269,1,70,20),(270,4,30,50),(271,4,50,30),(272,4,80,10),(273,1,30,50),(274,1,50,30),(275,1,80,10),(276,2,30,50),(277,2,50,30),(278,5,30,50),(279,5,50,30),(280,2,50,30),(281,2,70,20),(282,2,80,10),(283,4,50,30),(284,4,70,20),(285,1,50,30),(286,1,70,20),(287,1,50,30),(288,1,70,20),(289,1,80,10),(290,1,50,30),(291,1,70,20),(292,1,80,10),(293,3,50,30),(294,3,70,20),(295,3,80,10),(296,3,50,30),(297,3,70,20),(298,4,80,10),(299,3,70,20),(300,2,50,30),(301,2,70,20),(302,3,70,20),(303,3,70,20),(304,3,50,30),(305,3,70,20),(306,3,80,10),(307,3,50,30),(308,3,70,20),(309,2,50,30),(310,2,70,20),(311,2,90,3),(312,2,90,3),(313,3,70,20),(314,3,70,20),(315,2,70,20),(316,1,50,30),(317,1,70,20),(318,5,50,30),(319,5,70,20),(320,5,50,30),(321,5,80,10),(322,3,50,30),(323,3,70,20),(324,3,70,20),(325,2,50,30),(326,2,70,20),(327,2,50,30),(328,3,50,30),(329,3,70,20),(330,3,80,10),(331,3,50,30),(332,3,70,20),(333,2,50,30),(334,2,80,10),(335,2,70,20),(336,1,70,20),(337,3,70,20),(338,3,70,20),(339,4,50,30),(340,4,70,20),(341,4,50,30),(342,4,70,20),(343,3,50,30),(344,3,70,20),(345,5,70,20),(346,5,80,10),(347,5,70,20),(348,5,80,10),(349,5,70,20),(350,5,90,3),(351,2,80,10),(352,1,70,20),(353,1,50,30),(354,1,70,20),(355,1,50,30),(356,1,70,20),(357,1,70,20),(358,3,80,10),(359,3,80,10),(360,2,80,10),(361,3,50,30),(362,3,70,20),(363,5,50,30),(364,5,70,20),(365,5,80,10),(366,5,50,30),(367,5,80,10),(368,5,80,10),(369,5,80,10),(370,5,50,30),(371,3,50,30),(372,3,70,20),(373,3,80,10),(374,3,70,20),(375,3,80,10),(376,3,90,3),(377,3,90,3),(378,3,90,3),(379,3,90,3),(380,2,90,3),(381,2,90,3),(382,5,90,3),(383,3,90,3),(384,2,90,3),(385,3,100,1),(386,3,100,1),(387,1,50,30),(388,1,80,10),(389,1,90,3),(390,2,50,30),(391,2,80,10),(392,2,90,3),(393,4,50,30),(394,4,80,10),(395,4,90,3),(396,2,30,50),(397,2,50,30),(398,2,70,20),(399,2,30,50),(400,2,50,30),(401,1,50,30),(402,1,70,20),(403,2,50,30),(404,2,70,20),(405,2,80,10),(406,2,80,10),(407,2,80,10),(408,3,70,20),(409,3,80,10),(410,3,70,20),(411,3,80,10),(412,1,50,30),(413,1,70,20),(414,1,70,20),(415,1,50,30),(416,1,70,20),(417,1,50,30),(418,1,70,20),(419,3,70,20),(420,3,80,10),(421,2,90,3),(422,5,50,30),(423,5,70,20),(424,4,50,30),(425,4,70,20),(426,1,80,10),(427,2,50,30),(428,2,70,20),(429,1,80,10),(430,1,80,10),(431,2,50,30),(432,2,70,20),(433,2,70,20),(434,3,80,10),(435,3,50,30),(436,3,70,20),(437,3,80,10),(438,2,90,3),(439,2,90,3),(440,2,50,30),(441,2,70,20),(442,2,80,10),(443,3,50,30),(444,3,70,20),(445,4,50,30),(446,4,70,20),(447,2,70,20),(448,2,50,30),(449,2,70,20),(450,5,80,10),(451,5,50,30),(452,5,70,20),(453,1,90,3),(454,3,50,30),(455,3,70,20),(456,3,80,10),(457,3,90,3),(458,3,90,3),(459,3,50,30),(460,3,70,20),(461,3,80,10),(462,3,80,10),(463,2,80,10),(464,3,80,10),(465,1,80,10),(466,3,80,10),(467,3,80,10),(468,2,80,10),(469,2,80,10),(470,2,90,3),(471,2,90,3),(472,3,80,10),(473,3,80,10),(474,2,80,10),(475,2,80,10),(476,3,80,10),(477,1,80,10),(478,3,80,10),(479,2,90,3),(480,2,90,3),(481,2,90,3),(482,2,90,3),(483,3,90,3),(484,3,90,3),(485,3,90,3),(486,3,90,3),(487,3,90,3),(488,1,90,3),(489,5,90,3),(490,5,100,1),(491,3,100,1),(492,2,100,1),(493,3,100,1);
/*!40000 ALTER TABLE `pal_park` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:22
