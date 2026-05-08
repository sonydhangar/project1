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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-03-17 06:43:37.571812','2','ankit',1,'[{\"added\": {}}]',4,1),(2,'2026-03-17 06:53:02.376258','3','Rohan',1,'[{\"added\": {}}]',4,1),(3,'2026-03-19 05:47:54.633559','1','Home_title',1,'[{\"added\": {}}]',7,6),(4,'2026-03-19 05:50:38.183065','1','Home_title',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',7,6),(5,'2026-03-19 05:55:56.564972','2','portfolio',1,'[{\"added\": {}}]',7,6),(6,'2026-03-19 06:05:54.716937','3','about',1,'[{\"added\": {}}]',7,6),(7,'2026-03-19 06:11:32.441450','4','contact',1,'[{\"added\": {}}]',7,6),(8,'2026-03-20 06:29:16.577332','5','logo1',1,'[{\"added\": {}}]',7,6),(9,'2026-03-20 06:33:29.251832','6','logo',1,'[{\"added\": {}}]',7,6),(10,'2026-03-20 06:36:04.341075','7','logo',1,'[{\"added\": {}}]',7,6),(11,'2026-03-20 06:40:13.490669','8','logo',1,'[{\"added\": {}}]',7,6),(12,'2026-03-21 05:37:18.191887','6','logo',3,'',7,6),(13,'2026-03-23 06:03:00.159909','1','jay',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',8,6),(14,'2026-03-23 06:44:08.892845','4','sonam',2,'[{\"changed\": {\"fields\": [\"Email\", \"Message\"]}}]',8,6),(15,'2026-03-31 06:00:56.134308','1','hello',1,'[{\"added\": {}}, {\"added\": {\"name\": \"featured work image\", \"object\": \"Image for hello\"}}]',9,6),(16,'2026-03-31 06:36:53.590841','1','hello',2,'[{\"changed\": {\"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"featured work image\", \"object\": \"Image for hello\", \"fields\": [\"Image\"]}}]',9,6),(17,'2026-03-31 06:48:01.211247','1','hello',2,'[]',9,6),(18,'2026-03-31 06:57:22.314513','1','Dashboard Interface 1',1,'[{\"added\": {}}]',11,6),(19,'2026-04-01 04:30:55.659708','1','E-commerce Platform 1',1,'[{\"added\": {}}]',12,6),(20,'2026-04-01 04:31:19.902136','2','Brand Identity System',1,'[{\"added\": {}}]',12,6),(21,'2026-04-01 04:31:45.870922','3','Mobile App Design',1,'[{\"added\": {}}]',12,6),(22,'2026-04-01 05:27:53.511710','4','Dashboard Interface',1,'[{\"added\": {}}]',12,6),(23,'2026-04-01 05:30:25.949617','5','Brand Identity System',1,'[{\"added\": {}}]',12,6),(24,'2026-04-01 05:33:21.545633','6','Mobile App Design',1,'[{\"added\": {}}]',12,6),(25,'2026-04-01 07:06:12.197790','1','About Me',1,'[{\"added\": {}}]',13,6),(26,'2026-04-02 05:24:48.425785','1','About Me 1',2,'[{\"changed\": {\"fields\": [\"About title\", \"About heading\", \"About subheading\"]}}]',13,6),(27,'2026-04-14 05:05:51.193899','6','Mobile App Design 1234',2,'[{\"changed\": {\"fields\": [\"Product title\"]}}]',12,6);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
