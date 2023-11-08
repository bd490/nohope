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
-- Table structure for table `evolution_chains`
--

DROP TABLE IF EXISTS `evolution_chains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evolution_chains` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baby_trigger_item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `baby_trigger_item_id` (`baby_trigger_item_id`),
  CONSTRAINT `evolution_chains_ibfk_1` FOREIGN KEY (`baby_trigger_item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolution_chains`
--

LOCK TABLES `evolution_chains` WRITE;
/*!40000 ALTER TABLE `evolution_chains` DISABLE KEYS */;
INSERT INTO `evolution_chains` VALUES (1,NULL),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,NULL),(12,NULL),(13,NULL),(14,NULL),(15,NULL),(16,NULL),(17,NULL),(18,NULL),(19,NULL),(20,NULL),(21,NULL),(22,NULL),(23,NULL),(24,NULL),(25,NULL),(26,NULL),(27,NULL),(28,NULL),(29,NULL),(30,NULL),(31,NULL),(32,NULL),(33,NULL),(34,NULL),(35,NULL),(36,NULL),(37,NULL),(38,NULL),(39,NULL),(40,NULL),(41,NULL),(42,NULL),(43,NULL),(44,NULL),(45,NULL),(46,NULL),(47,NULL),(48,NULL),(49,NULL),(50,NULL),(52,NULL),(53,NULL),(54,NULL),(55,NULL),(56,NULL),(58,NULL),(59,NULL),(60,NULL),(61,NULL),(62,NULL),(63,NULL),(64,NULL),(65,NULL),(66,NULL),(67,NULL),(68,NULL),(69,NULL),(70,NULL),(71,NULL),(73,NULL),(74,NULL),(75,NULL),(76,NULL),(77,NULL),(78,NULL),(79,NULL),(80,NULL),(81,NULL),(82,NULL),(83,NULL),(84,NULL),(85,NULL),(86,NULL),(87,NULL),(88,NULL),(89,NULL),(92,NULL),(93,NULL),(94,NULL),(95,NULL),(96,NULL),(97,NULL),(98,NULL),(99,NULL),(101,NULL),(102,NULL),(103,NULL),(104,NULL),(105,NULL),(106,NULL),(107,NULL),(108,NULL),(109,NULL),(110,NULL),(111,NULL),(112,NULL),(113,NULL),(114,NULL),(115,NULL),(117,NULL),(118,NULL),(119,NULL),(120,NULL),(121,NULL),(122,NULL),(123,NULL),(124,NULL),(125,NULL),(126,NULL),(127,NULL),(128,NULL),(129,NULL),(130,NULL),(131,NULL),(132,NULL),(133,NULL),(134,NULL),(135,NULL),(136,NULL),(137,NULL),(138,NULL),(139,NULL),(140,NULL),(141,NULL),(142,NULL),(143,NULL),(144,NULL),(145,NULL),(146,NULL),(147,NULL),(148,NULL),(149,NULL),(150,NULL),(151,NULL),(152,NULL),(153,NULL),(154,NULL),(155,NULL),(156,NULL),(157,NULL),(159,NULL),(160,NULL),(161,NULL),(162,NULL),(163,NULL),(164,NULL),(165,NULL),(166,NULL),(167,NULL),(168,NULL),(169,NULL),(170,NULL),(171,NULL),(172,NULL),(173,NULL),(174,NULL),(175,NULL),(176,NULL),(177,NULL),(178,NULL),(179,NULL),(180,NULL),(181,NULL),(182,NULL),(183,NULL),(185,NULL),(186,NULL),(187,NULL),(188,NULL),(189,NULL),(190,NULL),(191,NULL),(192,NULL),(193,NULL),(194,NULL),(195,NULL),(196,NULL),(197,NULL),(198,NULL),(199,NULL),(200,NULL),(201,NULL),(202,NULL),(203,NULL),(204,NULL),(205,NULL),(206,NULL),(207,NULL),(208,NULL),(209,NULL),(211,NULL),(212,NULL),(213,NULL),(214,NULL),(215,NULL),(216,NULL),(217,NULL),(218,NULL),(219,NULL),(220,NULL),(221,NULL),(223,NULL),(224,NULL),(228,NULL),(229,NULL),(230,NULL),(232,NULL),(233,NULL),(234,NULL),(235,NULL),(236,NULL),(237,NULL),(239,NULL),(240,NULL),(241,NULL),(242,NULL),(243,NULL),(244,NULL),(245,NULL),(246,NULL),(247,NULL),(248,NULL),(249,NULL),(250,NULL),(252,NULL),(253,NULL),(254,NULL),(255,NULL),(256,NULL),(257,NULL),(258,NULL),(259,NULL),(260,NULL),(261,NULL),(262,NULL),(263,NULL),(264,NULL),(265,NULL),(266,NULL),(267,NULL),(268,NULL),(269,NULL),(270,NULL),(271,NULL),(272,NULL),(273,NULL),(274,NULL),(275,NULL),(276,NULL),(277,NULL),(278,NULL),(279,NULL),(280,NULL),(281,NULL),(282,NULL),(283,NULL),(284,NULL),(285,NULL),(286,NULL),(287,NULL),(288,NULL),(289,NULL),(290,NULL),(291,NULL),(292,NULL),(293,NULL),(294,NULL),(295,NULL),(296,NULL),(297,NULL),(298,NULL),(299,NULL),(300,NULL),(301,NULL),(302,NULL),(303,NULL),(304,NULL),(305,NULL),(306,NULL),(307,NULL),(308,NULL),(309,NULL),(310,NULL),(311,NULL),(312,NULL),(313,NULL),(314,NULL),(315,NULL),(316,NULL),(317,NULL),(318,NULL),(319,NULL),(320,NULL),(321,NULL),(322,NULL),(323,NULL),(324,NULL),(325,NULL),(326,NULL),(327,NULL),(328,NULL),(329,NULL),(330,NULL),(331,NULL),(332,NULL),(333,NULL),(334,NULL),(335,NULL),(336,NULL),(337,NULL),(338,NULL),(339,NULL),(340,NULL),(341,NULL),(342,NULL),(343,NULL),(344,NULL),(345,NULL),(346,NULL),(347,NULL),(348,NULL),(349,NULL),(350,NULL),(351,NULL),(352,NULL),(353,NULL),(354,NULL),(355,NULL),(356,NULL),(357,NULL),(358,NULL),(359,NULL),(360,NULL),(361,NULL),(362,NULL),(363,NULL),(364,NULL),(365,NULL),(366,NULL),(367,NULL),(368,NULL),(369,NULL),(370,NULL),(371,NULL),(372,NULL),(373,NULL),(374,NULL),(375,NULL),(376,NULL),(377,NULL),(378,NULL),(379,NULL),(380,NULL),(381,NULL),(382,NULL),(383,NULL),(384,NULL),(385,NULL),(386,NULL),(387,NULL),(388,NULL),(389,NULL),(390,NULL),(391,NULL),(392,NULL),(393,NULL),(394,NULL),(395,NULL),(396,NULL),(397,NULL),(398,NULL),(399,NULL),(400,NULL),(401,NULL),(402,NULL),(403,NULL),(404,NULL),(405,NULL),(406,NULL),(407,NULL),(408,NULL),(409,NULL),(410,NULL),(411,NULL),(412,NULL),(413,NULL),(414,NULL),(415,NULL),(416,NULL),(417,NULL),(418,NULL),(419,NULL),(420,NULL),(421,NULL),(422,NULL),(423,NULL),(424,NULL),(425,NULL),(426,NULL),(427,NULL),(428,NULL),(429,NULL),(430,NULL),(431,NULL),(432,NULL),(433,NULL),(434,NULL),(435,NULL),(436,NULL),(437,NULL),(438,NULL),(439,NULL),(440,NULL),(441,NULL),(442,NULL),(443,NULL),(444,NULL),(445,NULL),(446,NULL),(447,NULL),(448,NULL),(449,NULL),(450,NULL),(451,NULL),(452,NULL),(453,NULL),(454,NULL),(455,NULL),(456,NULL),(457,NULL),(458,NULL),(459,NULL),(460,NULL),(461,NULL),(462,NULL),(463,NULL),(464,NULL),(465,NULL),(466,NULL),(467,NULL),(468,NULL),(469,NULL),(470,NULL),(471,NULL),(472,NULL),(473,NULL),(474,NULL),(475,NULL),(476,NULL),(90,231),(100,232),(57,291),(91,292),(72,293),(116,294),(158,295),(51,296),(184,297);
/*!40000 ALTER TABLE `evolution_chains` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:14