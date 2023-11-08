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
-- Table structure for table `location_game_indices`
--

DROP TABLE IF EXISTS `location_game_indices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_game_indices` (
  `location_id` int NOT NULL,
  `generation_id` int NOT NULL,
  `game_index` int NOT NULL,
  PRIMARY KEY (`location_id`,`generation_id`,`game_index`),
  KEY `generation_id` (`generation_id`),
  CONSTRAINT `location_game_indices_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `location_game_indices_ibfk_2` FOREIGN KEY (`generation_id`) REFERENCES `generations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_game_indices`
--

LOCK TABLES `location_game_indices` WRITE;
/*!40000 ALTER TABLE `location_game_indices` DISABLE KEYS */;
INSERT INTO `location_game_indices` VALUES (1,4,7),(2,4,9),(3,4,11),(4,4,13),(5,4,15),(6,4,46),(7,4,47),(8,4,48),(9,4,49),(10,4,50),(11,4,52),(12,4,53),(13,4,54),(14,4,57),(15,4,59),(16,4,84),(17,4,75),(18,4,62),(19,4,64),(20,4,65),(22,4,66),(23,4,68),(24,4,69),(25,4,70),(26,4,76),(27,4,77),(28,4,78),(29,4,73),(30,4,74),(31,4,16),(32,4,17),(33,4,18),(34,4,19),(35,4,20),(36,4,21),(37,4,22),(38,4,23),(39,4,24),(41,4,25),(42,4,26),(43,4,27),(44,4,28),(45,4,29),(46,4,30),(47,4,31),(48,4,32),(49,4,33),(50,4,34),(51,4,36),(52,4,37),(53,4,39),(54,4,40),(55,4,42),(56,4,43),(57,4,44),(58,4,1),(59,4,5),(60,4,83),(61,4,35),(62,4,38),(63,4,41),(64,4,45),(65,4,136),(66,4,206),(67,4,144),(68,4,141),(69,4,127),(70,4,130),(71,4,146),(72,4,220),(73,4,197),(74,4,222),(75,4,133),(76,4,145),(77,4,217),(78,4,214),(79,4,135),(80,4,198),(81,4,216),(82,4,137),(83,4,207),(84,4,126),(85,4,132),(86,4,138),(87,4,200),(88,4,149),(89,4,158),(90,4,159),(91,4,160),(92,4,161),(93,4,162),(94,4,163),(95,4,164),(96,4,165),(97,4,166),(98,4,167),(99,4,150),(100,4,168),(101,4,169),(102,4,170),(103,4,172),(104,4,173),(105,4,174),(106,4,175),(107,4,176),(108,4,177),(109,4,151),(110,4,178),(111,4,179),(112,4,180),(113,4,181),(114,4,182),(115,4,183),(116,4,184),(117,4,185),(118,4,186),(119,4,187),(120,4,152),(121,4,188),(122,4,189),(123,4,190),(124,4,191),(125,4,192),(126,4,193),(127,4,194),(128,4,195),(129,4,196),(130,4,153),(131,4,154),(132,4,155),(133,4,156),(134,4,157),(135,4,209),(136,4,203),(137,4,211),(138,4,204),(139,4,205),(140,4,223),(141,4,210),(147,4,199),(151,4,143),(152,4,221),(153,4,128),(154,4,139),(155,4,224),(156,4,218),(157,4,171),(158,4,201),(161,4,106),(162,4,202),(163,4,2),(164,4,3),(165,4,4),(167,4,6),(168,4,8),(169,4,10),(170,4,12),(171,4,14),(172,4,51),(173,4,55),(174,4,56),(175,4,58),(177,4,60),(178,4,61),(179,4,63),(180,4,67),(181,4,71),(182,4,72),(183,4,79),(184,4,80),(185,4,81),(186,4,82),(187,4,85),(188,4,86),(190,4,87),(191,4,88),(192,4,89),(193,4,90),(194,4,91),(195,4,92),(196,4,93),(197,4,94),(198,4,95),(199,4,96),(200,4,97),(201,4,98),(202,4,99),(203,4,100),(204,4,101),(205,4,102),(206,4,103),(207,4,104),(208,4,105),(209,4,107),(210,4,108),(211,4,109),(212,4,110),(213,4,111),(214,4,112),(215,4,113),(216,4,114),(217,4,115),(218,4,116),(219,4,117),(220,4,118),(221,4,119),(222,4,120),(223,4,121),(224,4,122),(225,4,123),(226,4,124),(227,4,125),(228,4,129),(229,4,131),(230,4,134),(231,4,140),(232,4,142),(233,4,147),(234,4,148),(236,4,212),(237,4,213),(238,4,215),(239,4,219),(241,4,225),(242,4,226),(243,4,227),(244,4,228),(245,4,229),(246,4,230),(247,4,231),(248,4,232),(249,4,233),(250,4,234),(252,4,208),(253,4,2000),(254,4,2001),(255,4,2002),(256,4,2003),(257,4,2004),(258,4,2005),(259,4,2006),(260,4,2008),(261,4,2009),(262,4,2010),(263,4,2011),(264,4,2012),(265,4,3000),(266,4,3001),(267,4,3002),(268,4,3003),(269,4,3004),(270,4,3005),(271,4,3006),(272,4,3007),(273,4,3008),(274,4,3009),(275,4,3010),(276,4,3011),(277,4,3012),(278,4,3013),(279,4,3014),(280,4,3015),(281,4,3016),(282,4,3017),(283,4,3018),(284,4,3019),(285,4,3020),(286,4,3021),(287,4,3022),(288,4,3023),(289,4,3024),(290,4,3025),(291,4,3026),(292,4,3027),(293,4,3028),(294,4,3029),(295,4,3030),(296,4,3031),(297,4,3032),(298,4,3033),(299,4,3034),(300,4,3035),(301,4,3036),(302,4,3037),(303,4,3038),(304,4,3039),(305,4,3040),(306,4,3041),(307,4,3042),(308,4,3043),(309,4,3044),(310,4,3045),(311,4,3046),(312,4,3047),(313,4,3048),(314,4,3049),(315,4,3050),(316,4,3051),(317,4,3052),(318,4,3053),(319,4,3054),(320,4,3055),(321,4,3056),(322,4,3057),(323,4,3058),(324,4,3059),(325,4,3060),(326,4,3061),(327,4,3062),(328,4,3063),(329,4,3064),(330,4,3065),(331,4,3066),(332,4,3067),(333,4,3068),(334,4,3069),(335,4,3070),(336,4,3071),(337,4,3072),(338,4,3073),(339,4,3074),(340,4,3075),(341,4,3076),(342,4,2013),(343,4,2014),(344,5,1),(345,5,2),(346,5,4),(346,5,81),(347,5,5),(348,5,6),(349,5,7),(350,5,8),(351,5,9),(351,5,76),(352,5,10),(352,5,77),(353,5,11),(353,5,78),(354,5,12),(354,5,79),(355,5,13),(355,5,80),(356,5,14),(357,5,15),(358,5,16),(359,5,17),(360,5,18),(360,5,93),(361,5,19),(361,5,94),(362,5,20),(362,5,95),(363,5,21),(363,5,96),(364,5,22),(364,5,97),(365,5,23),(366,5,24),(366,5,98),(367,5,25),(367,5,99),(368,5,26),(368,5,100),(369,5,27),(369,5,101),(370,5,28),(370,5,102),(371,5,29),(371,5,103),(372,5,30),(373,5,31),(374,5,32),(375,5,33),(376,5,34),(377,5,35),(378,5,36),(378,5,84),(379,5,37),(379,5,85),(380,5,38),(380,5,86),(381,5,39),(381,5,87),(382,5,40),(383,5,41),(383,5,104),(384,5,42),(384,5,105),(385,5,43),(386,5,44),(387,5,45),(388,5,46),(389,5,47),(390,5,48),(391,5,49),(392,5,50),(392,5,83),(393,5,51),(393,5,82),(394,5,52),(395,5,53),(396,5,54),(397,5,55),(398,5,56),(399,5,57),(400,5,58),(401,5,59),(402,5,60),(403,5,61),(403,5,88),(404,5,62),(405,5,63),(406,5,64),(407,5,65),(407,5,89),(408,5,66),(408,5,90),(409,5,67),(409,5,91),(410,5,68),(410,5,92),(411,5,69),(412,5,70),(413,5,71),(414,5,72),(415,5,73),(416,5,74),(417,5,75),(418,5,106),(419,5,107),(420,5,108),(421,5,109),(422,5,110),(423,5,111),(424,5,112),(425,5,113),(426,5,114),(427,5,115),(428,5,116),(531,5,117),(532,5,118),(533,5,119),(534,5,120),(535,5,121),(536,5,122),(537,5,123),(538,5,124),(539,5,125),(540,5,126),(541,5,127),(542,5,128),(543,5,129),(544,5,130),(545,5,131),(546,5,132),(547,5,133),(548,5,134),(549,5,135),(550,5,136),(551,5,137),(552,5,139),(553,5,140),(554,5,141),(555,5,142),(556,5,143),(557,5,144),(558,5,145),(559,5,146),(560,5,147),(561,5,148),(562,5,149),(563,5,150),(564,5,151),(565,5,152),(566,5,153),(264,6,2),(267,6,4),(429,6,184),(430,6,186),(431,6,194),(432,6,196),(433,6,198),(434,6,200),(435,6,272),(436,6,274),(437,6,280),(438,6,282),(439,6,286),(440,6,288),(441,6,290),(442,6,294),(443,6,296),(444,6,298),(445,6,300),(446,6,302),(448,6,316),(449,6,204),(450,6,206),(451,6,208),(452,6,210),(453,6,212),(454,6,214),(455,6,216),(456,6,218),(457,6,220),(458,6,222),(459,6,224),(460,6,226),(461,6,228),(462,6,230),(463,6,232),(464,6,234),(465,6,236),(466,6,238),(467,6,240),(468,6,242),(469,6,244),(470,6,246),(471,6,248),(472,6,250),(473,6,252),(474,6,254),(475,6,256),(476,6,258),(477,6,260),(478,6,262),(479,6,264),(480,6,266),(481,6,268),(482,6,270),(483,6,324),(484,6,174),(485,6,182),(567,6,170),(568,6,172),(569,6,176),(570,6,178),(571,6,180),(572,6,188),(573,6,190),(574,6,192),(576,6,284),(577,6,330),(578,6,320),(579,6,310),(580,6,312),(581,6,306),(582,6,278),(583,6,308),(584,6,276),(585,6,354),(587,6,6),(588,6,8),(589,6,9),(590,6,10),(591,6,12),(592,6,13),(593,6,14),(594,6,16),(595,6,17),(596,6,18),(597,6,20),(598,6,21),(599,6,22),(600,6,24),(601,6,26),(602,6,28),(603,6,29),(604,6,30),(605,6,32),(606,6,34),(607,6,35),(608,6,36),(609,6,38),(610,6,39),(611,6,40),(612,6,42),(613,6,43),(614,6,44),(615,6,46),(616,6,47),(617,6,48),(618,6,50),(619,6,51),(620,6,52),(621,6,54),(622,6,55),(623,6,56),(624,6,58),(625,6,60),(626,6,62),(627,6,63),(628,6,64),(629,6,66),(630,6,67),(631,6,68),(632,6,69),(633,6,70),(634,6,72),(635,6,74),(636,6,75),(637,6,76),(638,6,78),(639,6,79),(640,6,82),(641,6,84),(642,6,85),(643,6,86),(644,6,88),(645,6,89),(646,6,90),(647,6,92),(648,6,93),(649,6,94),(650,6,96),(651,6,97),(652,6,98),(653,6,100),(654,6,101),(655,6,102),(656,6,103),(657,6,104),(658,6,106),(659,6,108),(660,6,110),(661,6,112),(662,6,114),(663,6,116),(664,6,118),(665,6,120),(666,6,122),(667,6,124),(668,6,126),(669,6,128),(670,6,130),(671,6,132),(672,6,134),(673,6,135),(674,6,136),(675,6,138),(676,6,140),(677,6,142),(678,6,144),(679,6,146),(680,6,148),(681,6,150),(682,6,152),(683,6,154),(684,6,156),(685,6,158),(686,6,160),(687,6,162),(688,6,164),(689,6,166),(690,6,168),(691,6,202),(692,6,292),(693,6,304),(694,6,314),(695,6,318),(696,6,322),(697,6,326),(698,6,328),(699,6,332),(700,6,334),(701,6,336),(702,6,338),(703,6,340),(704,6,342),(705,6,344),(706,6,346),(707,6,348),(708,6,350),(709,6,352),(264,7,2),(267,7,4),(710,7,6),(711,7,8),(712,7,10),(713,7,12),(714,7,14),(715,7,16),(716,7,18),(717,7,20),(718,7,22),(719,7,24),(720,7,26),(721,7,28),(722,7,30),(723,7,34),(724,7,36),(725,7,38),(726,7,40),(727,7,42),(728,7,44),(729,7,46),(730,7,48),(731,7,50),(732,7,52),(733,7,54),(734,7,56),(735,7,58),(736,7,60),(737,7,62),(737,7,102),(738,7,64),(739,7,66),(740,7,68),(741,7,70),(742,7,72),(743,7,74),(744,7,76),(745,7,78),(746,7,82),(747,7,84),(748,7,86),(749,7,88),(750,7,90),(751,7,92),(752,7,94),(753,7,100),(754,7,104),(755,7,106),(756,7,108),(757,7,110),(758,7,112),(759,7,114),(760,7,116),(761,7,118),(762,7,120),(763,7,122),(764,7,124),(765,7,126),(766,7,128),(767,7,130),(768,7,132),(769,7,134),(770,7,136),(771,7,138),(772,7,140),(773,7,142),(774,7,144),(775,7,146),(776,7,148),(777,7,150),(778,7,152),(779,7,154),(780,7,156),(781,7,158),(782,7,160),(783,7,162),(784,7,164),(785,7,166),(786,7,168),(787,7,170),(788,7,172),(789,7,174),(790,7,176),(791,7,178),(792,7,180),(793,7,182),(794,7,184),(795,7,186),(796,7,188),(797,7,190),(798,7,192);
/*!40000 ALTER TABLE `location_game_indices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:37
