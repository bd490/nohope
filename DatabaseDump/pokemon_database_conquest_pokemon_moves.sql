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
-- Table structure for table `conquest_pokemon_moves`
--

DROP TABLE IF EXISTS `conquest_pokemon_moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_pokemon_moves` (
  `pokemon_species_id` int NOT NULL,
  `move_id` int NOT NULL,
  PRIMARY KEY (`pokemon_species_id`),
  KEY `move_id` (`move_id`),
  CONSTRAINT `conquest_pokemon_moves_ibfk_1` FOREIGN KEY (`pokemon_species_id`) REFERENCES `pokemon_species` (`id`),
  CONSTRAINT `conquest_pokemon_moves_ibfk_2` FOREIGN KEY (`move_id`) REFERENCES `moves` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_pokemon_moves`
--

LOCK TABLES `conquest_pokemon_moves` WRITE;
/*!40000 ALTER TABLE `conquest_pokemon_moves` DISABLE KEYS */;
INSERT INTO `conquest_pokemon_moves` VALUES (174,1),(531,1),(66,2),(39,3),(572,3),(41,17),(397,17),(627,17),(455,22),(495,22),(511,22),(399,29),(446,33),(143,34),(23,40),(543,40),(15,41),(552,44),(4,52),(390,52),(498,52),(607,52),(6,53),(194,55),(501,55),(515,55),(134,56),(395,56),(131,58),(362,58),(144,59),(365,59),(64,60),(196,60),(575,60),(394,61),(532,67),(252,71),(546,71),(548,72),(541,75),(547,75),(549,80),(147,82),(443,82),(610,82),(633,82),(392,83),(609,83),(172,84),(179,84),(25,85),(135,85),(181,87),(405,87),(529,91),(280,93),(433,93),(574,93),(65,94),(282,94),(517,95),(133,98),(396,98),(63,100),(92,122),(500,126),(555,126),(560,136),(518,138),(393,145),(129,150),(52,154),(247,157),(411,157),(525,157),(400,158),(53,163),(391,172),(554,172),(636,172),(361,181),(363,181),(613,181),(215,185),(559,185),(454,188),(551,189),(471,196),(478,196),(612,200),(403,209),(522,209),(123,210),(347,210),(208,231),(306,231),(304,232),(68,238),(553,242),(634,242),(94,247),(426,247),(429,247),(477,247),(576,248),(534,276),(364,301),(40,304),(42,305),(376,309),(200,310),(355,310),(425,310),(95,317),(246,317),(444,337),(611,337),(544,342),(26,344),(253,348),(470,348),(496,348),(524,350),(502,352),(67,358),(533,358),(205,360),(516,362),(197,372),(624,372),(447,395),(448,396),(451,398),(453,398),(461,400),(625,400),(130,401),(503,401),(212,404),(348,404),(542,404),(384,406),(635,406),(149,407),(445,407),(398,413),(383,414),(375,418),(5,424),(136,424),(356,425),(442,425),(195,426),(475,427),(379,430),(180,435),(404,435),(523,435),(596,435),(254,437),(497,437),(512,437),(464,439),(169,440),(452,440),(305,442),(374,442),(410,442),(248,444),(526,444),(493,449),(204,450),(540,450),(483,459),(281,473),(358,473),(24,474),(545,474),(513,481),(608,481),(595,486),(570,492),(93,506),(628,507),(514,510),(587,521),(111,523),(148,525),(112,529),(530,529),(639,533),(499,535),(571,539),(150,540),(573,541),(644,550),(643,551),(637,552),(614,556);
/*!40000 ALTER TABLE `conquest_pokemon_moves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:40