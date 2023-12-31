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
-- Table structure for table `contest_combos`
--

DROP TABLE IF EXISTS `contest_combos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_combos` (
  `first_move_id` int NOT NULL,
  `second_move_id` int NOT NULL,
  PRIMARY KEY (`first_move_id`,`second_move_id`),
  KEY `second_move_id` (`second_move_id`),
  CONSTRAINT `contest_combos_ibfk_1` FOREIGN KEY (`first_move_id`) REFERENCES `moves` (`id`),
  CONSTRAINT `contest_combos_ibfk_2` FOREIGN KEY (`second_move_id`) REFERENCES `moves` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_combos`
--

LOCK TABLES `contest_combos` WRITE;
/*!40000 ALTER TABLE `contest_combos` DISABLE KEYS */;
INSERT INTO `contest_combos` VALUES (116,2),(1,3),(116,5),(170,5),(8,7),(9,7),(241,7),(7,8),(9,8),(7,9),(8,9),(268,9),(43,10),(11,12),(14,15),(11,20),(1,21),(74,22),(43,23),(116,25),(170,25),(170,26),(189,28),(201,28),(116,29),(43,30),(30,31),(64,31),(30,32),(43,33),(106,33),(111,33),(106,36),(116,36),(99,37),(106,38),(116,38),(204,39),(99,43),(184,43),(43,44),(184,44),(204,45),(241,52),(241,53),(240,55),(300,55),(346,55),(240,56),(240,57),(291,57),(181,59),(258,59),(347,60),(240,61),(64,65),(170,66),(269,68),(252,69),(74,71),(74,72),(74,75),(74,76),(241,76),(230,77),(230,78),(230,79),(74,80),(225,82),(349,82),(241,83),(268,84),(268,85),(268,86),(199,87),(240,87),(268,87),(89,90),(94,93),(134,93),(347,93),(93,94),(134,94),(347,94),(347,96),(104,97),(104,98),(93,100),(94,100),(104,100),(134,100),(123,108),(240,110),(347,113),(347,115),(135,121),(188,124),(155,125),(198,125),(241,126),(240,127),(240,128),(93,134),(94,134),(170,136),(43,137),(95,138),(347,138),(240,145),(347,149),(14,152),(240,152),(10,154),(125,155),(198,155),(187,156),(204,156),(281,156),(88,157),(199,161),(184,162),(10,163),(14,163),(116,167),(81,169),(95,171),(241,172),(156,173),(203,175),(203,179),(174,180),(258,181),(106,182),(43,184),(99,184),(1,185),(43,185),(252,185),(204,186),(124,188),(28,189),(201,189),(300,189),(199,190),(240,190),(199,192),(174,194),(203,194),(212,194),(47,195),(212,195),(269,197),(116,198),(125,198),(155,198),(74,202),(106,205),(111,205),(14,206),(268,209),(14,210),(174,212),(156,214),(203,220),(241,221),(116,223),(170,223),(82,225),(349,225),(319,232),(252,233),(241,234),(241,235),(241,236),(116,238),(184,242),(269,243),(93,248),(94,248),(134,248),(347,248),(240,250),(254,255),(254,256),(241,257),(204,260),(241,261),(116,264),(199,276),(116,280),(252,282),(203,283),(89,284),(203,284),(241,284),(47,287),(346,287),(174,288),(57,291),(240,291),(116,292),(252,292),(347,295),(347,296),(241,299),(189,300),(346,300),(281,303),(14,306),(241,307),(240,308),(201,311),(240,311),(241,311),(258,311),(241,315),(88,317),(240,323),(116,327),(201,328),(240,330),(74,331),(82,337),(225,337),(349,337),(74,338),(268,344),(74,345),(240,346),(300,346),(82,349),(225,349),(268,351),(240,352),(347,354);
/*!40000 ALTER TABLE `contest_combos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:51
