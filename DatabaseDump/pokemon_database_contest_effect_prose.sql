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
-- Table structure for table `contest_effect_prose`
--

DROP TABLE IF EXISTS `contest_effect_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_effect_prose` (
  `contest_effect_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `flavor_text` text,
  `effect` text,
  PRIMARY KEY (`contest_effect_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `contest_effect_prose_ibfk_1` FOREIGN KEY (`contest_effect_id`) REFERENCES `contest_effects` (`id`),
  CONSTRAINT `contest_effect_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_effect_prose`
--

LOCK TABLES `contest_effect_prose` WRITE;
/*!40000 ALTER TABLE `contest_effect_prose` DISABLE KEYS */;
INSERT INTO `contest_effect_prose` VALUES (1,9,'A highly appealing move.','Gives a high number of appeal points wth no other effects.'),(2,9,'Affected by how well the appeal in front goes.','If the Pokémon that appealed before the user earned less than three appeal points, user earns six; if three, user earns three; if more than three, user earns none.'),(3,9,'After this move, the user is more easily startled.','If the user is jammed this turn after using this move, it will receive twice as many jam points.'),(4,9,'Badly startles the Pokémon in front.','Attempts to jam the Pokémon that appealed before the user.'),(5,9,'Badly startles those that have made appeals.','Attempts to jam all Pokémon that have appealed this turn.'),(6,9,'Jams the others, and misses one turn of appeals.','Attempts to jam the other Pokémon.  The user cannot make an appeal on the next turn, but it cannot be jammed either.'),(7,9,'Makes a great appeal, but allows no more to the end.','User cannot make any more appeals for the remainder of the contest.'),(8,9,'Startles all Pokémon that have done their appeals.','Attempts to jam all Pokémon that have appealed this turn.'),(9,9,'Startles the Pokémon that appealed before the user.','Attempts to jam the Pokémon that appealed before the user.'),(10,9,'Startles the Pokémon that has the judge\'s attention.','Attempts to jam all Pokémon that have appealed this turn.  If a Pokémon is in combo standby status, it is jammed 5 points instead of 1.'),(11,9,'The appeal works best the more the crowd is excited.','If the Applause meter is empty or at one, earns one point; if two, earns three points; if three, earns four points; if four, earns six points.'),(12,9,'Works well if it\'s the same type as the one before.','If the last Pokémon\'s appeal is the same type as this move, user earns six points instead of two.'),(13,9,'An appeal that excites the audience in any contest.','Always adds a point to the applause meter, regardless of whether the move matches the contest, and can likewise gain the applause bonus.'),(14,9,'Badly startles all Pokémon that made good appeals.','Attempts to jam all Pokémon that have appealed this turn for half their appeal points (minimum 1).'),(15,9,'Can avoid being startled by others.','Prevents jamming for the rest of this turn.'),(16,9,'Can avoid being startled by others once.','Prevents the next jam on this turn.'),(17,9,'Can be repeatedly used without boring the judge.','Repeated use does not incur a penalty.'),(18,9,'Makes all Pokémon after the user nervous.','Attempts to make all following Pokémon nervous (and thus unable to appeal).'),(19,9,'Makes the appeal as good as the one before it.','User earns appeal points equal to the points the previous Pokémon earned plus one.'),(20,9,'Makes the appeal as good as those before it.','User earns appeal points equal to half the points ALL the previous Pokémon earned plus one.'),(21,9,'Scrambles up the order of appeals on the next turn.','Shuffles the next turn\'s turn order.'),(22,9,'Shifts the judge\'s attention from others.','Cancels combo standby status for all Pokémon that have appealed this turn.'),(23,9,'Startles Pokémon that made a same-type appeal.','Attempts to jam all Pokémon that have appealed this turn.  If a Pokémon used the same type move as this one, it is jammed for 4 points instead of 1.'),(24,9,'Temporarily stops the crowd from getting excited.','Prevents the Applause Meter from rising for the rest of the turn.'),(25,9,'The appeal\'s quality depends on its timing.','Randomly earns one, two, four, or eight points.'),(26,9,'The appeal works better the later it is performed.','If user appeals first this turn, earns one point; if second, two points; if third, four points; if last, six points.'),(27,9,'The appeal works great if performed first.','If user appeals first this turn, earns six points instead of two.'),(28,9,'The appeal works great if performed last.','If user appeals last this turn, earns six points instead of two.'),(29,9,'The appeal works well if the user\'s condition is good.','If user has no stars, earns one point; if one, three points; if two, five points; if three, seven points.  This does not include the appeal point bonus the stars give.'),(30,9,'The next appeal can be made earlier next turn.','User will go first next turn.'),(31,9,'The next appeal can be made later next turn.','User will go last next turn.'),(32,9,'Ups the user\'s condition.  Helps prevent nervousness.','User gains one star.'),(33,9,'Worsens the condition of those that made appeals.','Removes all stars from all Pokémon that have appealed this turn.');
/*!40000 ALTER TABLE `contest_effect_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 10:48:43
