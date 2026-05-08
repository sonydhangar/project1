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
-- Table structure for table `myapp2_portfolio`
--

DROP TABLE IF EXISTS `myapp2_portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp2_portfolio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_tag` varchar(255) NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp2_portfolio`
--

LOCK TABLES `myapp2_portfolio` WRITE;
/*!40000 ALTER TABLE `myapp2_portfolio` DISABLE KEYS */;
INSERT INTO `myapp2_portfolio` VALUES (1,'E-commerce Platform 1','React','A modern, responsive e-commerce solution with focus on user experience and conversion optimization. Built with scalability and performance in mind.','portfolio/curved-display-pinky-girl.jpg'),(2,'Brand Identity System','Figma','Complete visual identity redesign for a tech startup, including logo, guidelines, and digital assets. Creating a cohesive brand experience across all touchpoints.','portfolio/working-business-women.jpg'),(3,'Mobile App Design','principle','Intuitive mobile app interface for a fitness tracking application with focus on accessibility and user engagement through gamification.','portfolio/marketing-strategy-women.jpg'),(4,'Dashboard Interface','D3.JS','Clean and functional dashboard design for data analytics platform with complex information architecture and real-time data visualization.','portfolio/How_to_Match_Your_Gaming_PC_Setup_to_Your_Room_Aesthetic_40a1fcf4-c4eb-4ccf-a_2tnhUSO.webp'),(5,'Brand Identity System','After Efect','Complete visual identity redesign for a tech startup, including logo, guidelines, and digital assets. Creating a cohesive brand experience across all touchpoints.','portfolio/h5NgQEGTcUwAyBzyNJwPue.jpg'),(6,'Mobile App Design 1234','Lottie','Intuitive mobile app interface for a fitness tracking application with focus on accessibility and user engagement through gamification.','portfolio/blackdesksetup1.webp');
/*!40000 ALTER TABLE `myapp2_portfolio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-08 12:33:13
