-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: demoproject2
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `myapp2_contact`
--

DROP TABLE IF EXISTS `myapp2_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp2_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp2_contact`
--

LOCK TABLES `myapp2_contact` WRITE;
/*!40000 ALTER TABLE `myapp2_contact` DISABLE KEYS */;
INSERT INTO `myapp2_contact` VALUES (1,'jay','jay@gmail.com','dfdf','fdfd'),(2,'manish','manish@gmail.com','','df sdaf'),(3,'poonam','poonam@gmaill.com','web design courses','Hi,\r\ngd dfgoifs g\r\nThanks!'),(4,'sonam','sonam@gmail.com','web development','hello i am a  web developer'),(5,'riya','riya@gmail.com','typing','good morning'),(6,'soniya','soniya@gmail.com','good','hyyy'),(7,'soniya','soniya@gmail.com','good','hyyy'),(8,'sonam','sonam@gmail.com','sdfs','dsfAS'),(9,'hfh','sonam@gmail.com','ffh','ghgf'),(10,'hfh','sonam@gmail.com','fg','fdgs'),(11,'hfh','sonam@gmail.com','fg','fdgs'),(12,'hfh','sonam@gmail.com','ffgfh','fghd'),(13,'hfh','sonam@gmail.com','fgf','fdgs'),(14,'hh','demo@gmai.com','fd','fdgs'),(15,'jay','demo@gmai.com','sdds','dsdssd'),(16,'jay','demo@gmai.com','sdds','dsdssd'),(17,'jay','demo@gmai.com','ghgf','gffdh'),(18,'jay','demo@gmai.com','rfgg','fgfdsg'),(19,'sumit','sumit@gmail.com','t tr','t tr'),(20,'varsha','varsha@gmail.com','sadg','dfgdszfd'),(21,'','','',''),(22,'varsha','varsha@gmail.com','aSD','asfd'),(23,'jay','demo@gmai.com','WERDSFD','EWRTER'),(24,'jay','jchoudhary13@gmail.com','QWER','SADFA'),(25,'jay','jchoudhary13@gmail.com','zsdfa','ZAsdfa'),(26,'','','',''),(27,'jay','jchoudhary13@gmail.com','dsfdsfds','dfsadf'),(28,'sami','sami@gmail.com','sdfsdf','dsfd'),(29,'sonam','sonma@gmail.com','',''),(30,'sonam','sonma@gmail.com','dfszf','sdfz'),(31,'','','','');
/*!40000 ALTER TABLE `myapp2_contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-08 12:33:14
