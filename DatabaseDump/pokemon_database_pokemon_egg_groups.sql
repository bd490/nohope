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
-- Table structure for table `pokemon_egg_groups`
--

DROP TABLE IF EXISTS `pokemon_egg_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_egg_groups` (
  `species_id` int NOT NULL,
  `egg_group_id` int NOT NULL,
  PRIMARY KEY (`species_id`,`egg_group_id`),
  KEY `egg_group_id` (`egg_group_id`),
  CONSTRAINT `pokemon_egg_groups_ibfk_1` FOREIGN KEY (`species_id`) REFERENCES `pokemon_species` (`id`),
  CONSTRAINT `pokemon_egg_groups_ibfk_2` FOREIGN KEY (`egg_group_id`) REFERENCES `egg_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_egg_groups`
--

LOCK TABLES `pokemon_egg_groups` WRITE;
/*!40000 ALTER TABLE `pokemon_egg_groups` DISABLE KEYS */;
INSERT INTO `pokemon_egg_groups` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(29,1),(32,1),(33,1),(34,1),(79,1),(80,1),(104,1),(105,1),(108,1),(111,1),(112,1),(115,1),(131,1),(143,1),(152,1),(153,1),(154,1),(158,1),(159,1),(160,1),(179,1),(180,1),(181,1),(199,1),(246,1),(247,1),(248,1),(252,1),(253,1),(254,1),(258,1),(259,1),(260,1),(293,1),(294,1),(295,1),(304,1),(305,1),(306,1),(357,1),(387,1),(388,1),(389,1),(408,1),(409,1),(410,1),(411,1),(443,1),(444,1),(445,1),(459,1),(460,1),(463,1),(464,1),(610,1),(611,1),(612,1),(621,1),(694,1),(695,1),(696,1),(697,1),(698,1),(699,1),(712,1),(713,1),(757,1),(758,1),(776,1),(780,1),(833,1),(834,1),(7,2),(8,2),(9,2),(54,2),(55,2),(60,2),(61,2),(62,2),(79,2),(80,2),(86,2),(87,2),(116,2),(117,2),(131,2),(138,2),(139,2),(140,2),(141,2),(147,2),(148,2),(149,2),(158,2),(159,2),(160,2),(183,2),(184,2),(186,2),(194,2),(195,2),(199,2),(222,2),(223,2),(224,2),(225,2),(226,2),(230,2),(258,2),(259,2),(260,2),(270,2),(271,2),(272,2),(278,2),(279,2),(283,2),(284,2),(341,2),(342,2),(349,2),(350,2),(363,2),(364,2),(365,2),(366,2),(367,2),(368,2),(369,2),(393,2),(394,2),(395,2),(399,2),(400,2),(418,2),(419,2),(422,2),(423,2),(489,2),(490,2),(535,2),(536,2),(537,2),(564,2),(565,2),(580,2),(581,2),(594,2),(618,2),(656,2),(657,2),(658,2),(686,2),(687,2),(690,2),(691,2),(692,2),(693,2),(728,2),(729,2),(730,2),(747,2),(748,2),(751,2),(752,2),(771,2),(816,2),(817,2),(818,2),(833,2),(834,2),(845,2),(852,2),(853,2),(864,2),(871,2),(875,2),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(46,3),(47,3),(48,3),(49,3),(123,3),(127,3),(165,3),(166,3),(167,3),(168,3),(193,3),(204,3),(205,3),(207,3),(212,3),(213,3),(214,3),(265,3),(266,3),(267,3),(268,3),(269,3),(283,3),(284,3),(290,3),(291,3),(313,3),(314,3),(328,3),(329,3),(330,3),(401,3),(402,3),(412,3),(413,3),(414,3),(415,3),(416,3),(451,3),(452,3),(469,3),(472,3),(540,3),(541,3),(542,3),(543,3),(544,3),(545,3),(557,3),(558,3),(588,3),(589,3),(595,3),(596,3),(616,3),(617,3),(632,3),(636,3),(637,3),(664,3),(665,3),(666,3),(736,3),(737,3),(738,3),(742,3),(743,3),(751,3),(752,3),(767,3),(768,3),(824,3),(825,3),(826,3),(850,3),(851,3),(872,3),(873,3),(16,4),(17,4),(18,4),(21,4),(22,4),(41,4),(42,4),(83,4),(84,4),(85,4),(142,4),(163,4),(164,4),(169,4),(176,4),(177,4),(178,4),(198,4),(227,4),(276,4),(277,4),(278,4),(279,4),(333,4),(334,4),(396,4),(397,4),(398,4),(430,4),(441,4),(468,4),(519,4),(520,4),(521,4),(527,4),(528,4),(561,4),(566,4),(567,4),(580,4),(581,4),(627,4),(628,4),(629,4),(630,4),(661,4),(662,4),(663,4),(701,4),(714,4),(715,4),(722,4),(723,4),(724,4),(731,4),(732,4),(733,4),(741,4),(821,4),(822,4),(823,4),(845,4),(865,4),(19,5),(20,5),(23,5),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(32,5),(33,5),(34,5),(37,5),(38,5),(50,5),(51,5),(52,5),(53,5),(54,5),(55,5),(56,5),(57,5),(58,5),(59,5),(77,5),(78,5),(83,5),(86,5),(87,5),(111,5),(112,5),(128,5),(133,5),(134,5),(135,5),(136,5),(155,5),(156,5),(157,5),(161,5),(162,5),(179,5),(180,5),(181,5),(190,5),(194,5),(195,5),(196,5),(197,5),(203,5),(206,5),(209,5),(210,5),(215,5),(216,5),(217,5),(220,5),(221,5),(225,5),(228,5),(229,5),(231,5),(232,5),(234,5),(235,5),(241,5),(255,5),(256,5),(257,5),(261,5),(262,5),(263,5),(264,5),(273,5),(274,5),(275,5),(287,5),(288,5),(289,5),(293,5),(294,5),(295,5),(300,5),(301,5),(303,5),(309,5),(310,5),(320,5),(321,5),(322,5),(323,5),(324,5),(325,5),(326,5),(327,5),(335,5),(336,5),(352,5),(359,5),(363,5),(364,5),(365,5),(390,5),(391,5),(392,5),(393,5),(394,5),(395,5),(399,5),(400,5),(403,5),(404,5),(405,5),(417,5),(418,5),(419,5),(424,5),(427,5),(428,5),(431,5),(432,5),(434,5),(435,5),(448,5),(449,5),(450,5),(461,5),(464,5),(470,5),(471,5),(473,5),(495,5),(496,5),(497,5),(498,5),(499,5),(500,5),(501,5),(502,5),(503,5),(504,5),(505,5),(506,5),(507,5),(508,5),(509,5),(510,5),(511,5),(512,5),(513,5),(514,5),(515,5),(516,5),(517,5),(518,5),(522,5),(523,5),(527,5),(528,5),(529,5),(530,5),(551,5),(552,5),(553,5),(554,5),(555,5),(559,5),(560,5),(570,5),(571,5),(572,5),(573,5),(585,5),(586,5),(587,5),(613,5),(614,5),(619,5),(620,5),(626,5),(631,5),(650,5),(651,5),(652,5),(653,5),(654,5),(655,5),(659,5),(660,5),(667,5),(668,5),(672,5),(673,5),(674,5),(675,5),(676,5),(677,5),(678,5),(700,5),(702,5),(725,5),(726,5),(727,5),(728,5),(729,5),(730,5),(734,5),(735,5),(744,5),(745,5),(749,5),(750,5),(759,5),(760,5),(765,5),(766,5),(775,5),(777,5),(810,5),(811,5),(812,5),(813,5),(814,5),(815,5),(816,5),(817,5),(818,5),(819,5),(820,5),(827,5),(828,5),(831,5),(832,5),(835,5),(836,5),(843,5),(844,5),(862,5),(863,5),(865,5),(875,5),(877,5),(878,5),(879,5),(25,6),(26,6),(35,6),(36,6),(39,6),(40,6),(113,6),(176,6),(183,6),(184,6),(187,6),(188,6),(189,6),(209,6),(210,6),(242,6),(285,6),(286,6),(300,6),(301,6),(303,6),(311,6),(312,6),(315,6),(351,6),(361,6),(362,6),(407,6),(417,6),(420,6),(421,6),(468,6),(478,6),(489,6),(490,6),(531,6),(546,6),(547,6),(669,6),(670,6),(671,6),(682,6),(683,6),(684,6),(685,6),(702,6),(703,6),(742,6),(743,6),(777,6),(856,6),(857,6),(858,6),(859,6),(860,6),(861,6),(868,6),(869,6),(870,6),(876,6),(877,6),(1,7),(2,7),(3,7),(43,7),(44,7),(45,7),(46,7),(47,7),(69,7),(70,7),(71,7),(102,7),(103,7),(114,7),(152,7),(153,7),(154,7),(182,7),(187,7),(188,7),(189,7),(191,7),(192,7),(270,7),(271,7),(272,7),(273,7),(274,7),(275,7),(285,7),(286,7),(315,7),(331,7),(332,7),(357,7),(387,7),(388,7),(389,7),(407,7),(420,7),(421,7),(455,7),(459,7),(460,7),(465,7),(495,7),(496,7),(497,7),(546,7),(547,7),(548,7),(549,7),(556,7),(590,7),(591,7),(597,7),(598,7),(708,7),(709,7),(753,7),(754,7),(755,7),(756,7),(761,7),(762,7),(763,7),(764,7),(810,7),(811,7),(812,7),(829,7),(830,7),(840,7),(841,7),(842,7),(63,8),(64,8),(65,8),(66,8),(67,8),(68,8),(96,8),(97,8),(106,8),(107,8),(122,8),(124,8),(125,8),(126,8),(237,8),(280,8),(281,8),(282,8),(296,8),(297,8),(302,8),(307,8),(308,8),(313,8),(314,8),(327,8),(331,8),(332,8),(390,8),(391,8),(392,8),(427,8),(428,8),(448,8),(453,8),(454,8),(466,8),(467,8),(475,8),(532,8),(533,8),(534,8),(538,8),(539,8),(574,8),(575,8),(576,8),(605,8),(606,8),(619,8),(620,8),(624,8),(625,8),(674,8),(675,8),(701,8),(813,8),(814,8),(815,8),(849,8),(852,8),(853,8),(859,8),(860,8),(861,8),(866,8),(72,9),(73,9),(90,9),(91,9),(98,9),(99,9),(120,9),(121,9),(138,9),(139,9),(140,9),(141,9),(222,9),(341,9),(342,9),(345,9),(346,9),(347,9),(348,9),(451,9),(452,9),(564,9),(565,9),(566,9),(567,9),(688,9),(689,9),(692,9),(693,9),(739,9),(740,9),(767,9),(768,9),(864,9),(74,10),(75,10),(76,10),(81,10),(82,10),(95,10),(100,10),(101,10),(137,10),(185,10),(208,10),(233,10),(292,10),(299,10),(337,10),(338,10),(343,10),(344,10),(361,10),(362,10),(374,10),(375,10),(376,10),(436,10),(437,10),(462,10),(474,10),(476,10),(478,10),(524,10),(525,10),(526,10),(557,10),(558,10),(562,10),(563,10),(568,10),(569,10),(582,10),(583,10),(584,10),(597,10),(598,10),(599,10),(600,10),(601,10),(615,10),(622,10),(623,10),(679,10),(680,10),(681,10),(703,10),(707,10),(712,10),(713,10),(774,10),(781,10),(837,10),(838,10),(839,10),(854,10),(855,10),(867,10),(870,10),(874,10),(878,10),(879,10),(884,10),(88,11),(89,11),(92,11),(93,11),(94,11),(109,11),(110,11),(200,11),(202,11),(218,11),(219,11),(280,11),(281,11),(282,11),(316,11),(317,11),(351,11),(353,11),(354,11),(355,11),(356,11),(358,11),(422,11),(423,11),(425,11),(426,11),(429,11),(442,11),(475,11),(477,11),(479,11),(562,11),(563,11),(577,11),(578,11),(579,11),(592,11),(593,11),(602,11),(603,11),(604,11),(607,11),(608,11),(609,11),(618,11),(708,11),(709,11),(710,11),(711,11),(769,11),(770,11),(778,11),(854,11),(855,11),(867,11),(868,11),(869,11),(871,11),(885,11),(886,11),(887,11),(118,12),(119,12),(129,12),(130,12),(170,12),(171,12),(211,12),(223,12),(224,12),(318,12),(319,12),(320,12),(321,12),(339,12),(340,12),(369,12),(370,12),(456,12),(457,12),(550,12),(594,12),(686,12),(687,12),(746,12),(779,12),(846,12),(847,12),(132,13),(4,14),(5,14),(6,14),(23,14),(24,14),(116,14),(117,14),(129,14),(130,14),(147,14),(148,14),(149,14),(230,14),(252,14),(253,14),(254,14),(328,14),(329,14),(330,14),(333,14),(334,14),(336,14),(349,14),(350,14),(371,14),(372,14),(373,14),(443,14),(444,14),(445,14),(559,14),(560,14),(610,14),(611,14),(612,14),(621,14),(633,14),(634,14),(635,14),(690,14),(691,14),(694,14),(695,14),(696,14),(697,14),(704,14),(705,14),(706,14),(714,14),(715,14),(757,14),(758,14),(776,14),(780,14),(782,14),(783,14),(784,14),(840,14),(841,14),(842,14),(843,14),(844,14),(884,14),(885,14),(886,14),(887,14),(30,15),(31,15),(144,15),(145,15),(146,15),(150,15),(151,15),(172,15),(173,15),(174,15),(175,15),(201,15),(236,15),(238,15),(239,15),(240,15),(243,15),(244,15),(245,15),(249,15),(250,15),(251,15),(298,15),(360,15),(377,15),(378,15),(379,15),(380,15),(381,15),(382,15),(383,15),(384,15),(385,15),(386,15),(406,15),(433,15),(438,15),(439,15),(440,15),(446,15),(447,15),(458,15),(480,15),(481,15),(482,15),(483,15),(484,15),(485,15),(486,15),(487,15),(488,15),(491,15),(492,15),(493,15),(494,15),(638,15),(639,15),(640,15),(641,15),(642,15),(643,15),(644,15),(645,15),(646,15),(647,15),(648,15),(649,15),(716,15),(717,15),(718,15),(719,15),(720,15),(721,15),(772,15),(773,15),(785,15),(786,15),(787,15),(788,15),(789,15),(790,15),(791,15),(792,15),(793,15),(794,15),(795,15),(796,15),(797,15),(798,15),(799,15),(800,15),(801,15),(802,15),(803,15),(804,15),(805,15),(806,15),(807,15),(808,15),(809,15),(848,15),(880,15),(881,15),(882,15),(883,15),(888,15),(889,15),(890,15),(891,15),(892,15),(893,15),(894,15),(895,15),(896,15),(897,15),(898,15);
/*!40000 ALTER TABLE `pokemon_egg_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:47