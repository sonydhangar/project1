-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add site setting',7,'add_sitesetting'),(26,'Can change site setting',7,'change_sitesetting'),(27,'Can delete site setting',7,'delete_sitesetting'),(28,'Can view site setting',7,'view_sitesetting'),(29,'Can add Blog',8,'add_blog'),(30,'Can change Blog',8,'change_blog'),(31,'Can delete Blog',8,'delete_blog'),(32,'Can view Blog',8,'view_blog'),(33,'Can add Contact',9,'add_contact'),(34,'Can change Contact',9,'change_contact'),(35,'Can delete Contact',9,'delete_contact'),(36,'Can view Contact',9,'view_contact'),(37,'Can add Department',10,'add_department'),(38,'Can change Department',10,'change_department'),(39,'Can delete Department',10,'delete_department'),(40,'Can view Department',10,'view_department'),(41,'Can add Feedback',12,'add_feedback'),(42,'Can change Feedback',12,'change_feedback'),(43,'Can delete Feedback',12,'delete_feedback'),(44,'Can view Feedback',12,'view_feedback'),(45,'Can add Doctor',11,'add_doctor'),(46,'Can change Doctor',11,'change_doctor'),(47,'Can delete Doctor',11,'delete_doctor'),(48,'Can view Doctor',11,'view_doctor'),(49,'Can add procedure',13,'add_procedure'),(50,'Can change procedure',13,'change_procedure'),(51,'Can delete procedure',13,'delete_procedure'),(52,'Can view procedure',13,'view_procedure'),(53,'Can add category section',14,'add_categorysection'),(54,'Can change category section',14,'change_categorysection'),(55,'Can delete category section',14,'delete_categorysection'),(56,'Can view category section',14,'view_categorysection'),(57,'Can add category',15,'add_category'),(58,'Can change category',15,'change_category'),(59,'Can delete category',15,'delete_category'),(60,'Can view category',15,'view_category');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$onjYUGkT0B6iQdRkwj3uhn$0YqBmZhcKTBfYHy+xW5KA6s9DxA739xpVosGEAehVOM=','2026-04-02 12:28:58.851639',1,'sonam','','','sonam@gmail.com',1,1,'2026-03-19 10:02:31.281333'),(2,'pbkdf2_sha256$1200000$8DgTIKyHIBZu6EA8WfFszV$zr3Cl5jBfypN1CE2GrhRpRf0Sdu8t/V/YPPtCivzzi4=','2026-04-18 06:10:54.920661',1,'admin','','','admin@gmail.com',1,1,'2026-04-16 05:48:00.673160');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers1`
--

DROP TABLE IF EXISTS `customers1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers1` (
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` varchar(45) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT '22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers1`
--

LOCK TABLES `customers1` WRITE;
/*!40000 ALTER TABLE `customers1` DISABLE KEYS */;
INSERT INTO `customers1` VALUES ('John','Highway 21',NULL),('John','Highway 21','22'),('Amit','MG Road','25'),('Rahul','Ring Road','30'),('Neha','Civil Lines','28');
/*!40000 ALTER TABLE `customers1` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-03-19 10:09:30.641221','1','about',1,'[{\"added\": {}}]',2,1),(2,'2026-03-19 12:17:04.188858','1','about',2,'[]',2,1),(3,'2026-03-19 13:18:56.094347','1','',1,'[{\"added\": {}}]',7,1),(4,'2026-03-19 13:19:01.605362','1','',3,'',7,1),(5,'2026-03-19 13:20:13.597662','2','',1,'[{\"added\": {}}]',7,1),(6,'2026-03-21 07:59:32.015122','1','about',3,'',2,1),(7,'2026-03-21 08:04:30.319132','3','about',1,'[{\"added\": {}}]',7,1),(8,'2026-03-28 13:41:41.797334','1','Contact object (1)',1,'[{\"added\": {}}]',9,1),(9,'2026-04-02 12:29:43.829952','2','Procedure Category1',1,'[{\"added\": {}}]',13,1),(10,'2026-04-16 05:57:01.917601','1','Procedure Category',1,'[{\"added\": {}}]',14,2),(11,'2026-04-16 06:13:30.781200','1','Emergency Treatment',1,'[{\"added\": {}}]',15,2),(12,'2026-04-17 05:06:13.145438','2','Emergency Treatment',1,'[{\"added\": {}}]',15,2),(13,'2026-04-17 05:06:36.270433','1','General Checkup',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',15,2),(14,'2026-04-17 05:12:58.564873','1','General Checkup',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',15,2),(15,'2026-04-17 05:39:01.214350','3','Special Care',1,'[{\"added\": {}}]',15,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'myapp','blog'),(15,'myapp','category'),(14,'myapp','categorysection'),(9,'myapp','contact'),(10,'myapp','department'),(11,'myapp','doctor'),(12,'myapp','feedback'),(13,'myapp','procedure'),(7,'myapp','sitesetting'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-03-18 10:00:11.547723'),(2,'auth','0001_initial','2026-03-18 10:00:11.857863'),(3,'admin','0001_initial','2026-03-18 10:00:11.933500'),(4,'admin','0002_logentry_remove_auto_add','2026-03-18 10:00:11.937300'),(5,'admin','0003_logentry_add_action_flag_choices','2026-03-18 10:00:11.940792'),(6,'contenttypes','0002_remove_content_type_name','2026-03-18 10:00:12.001987'),(7,'auth','0002_alter_permission_name_max_length','2026-03-18 10:00:12.038645'),(8,'auth','0003_alter_user_email_max_length','2026-03-18 10:00:12.051107'),(9,'auth','0004_alter_user_username_opts','2026-03-18 10:00:12.054688'),(10,'auth','0005_alter_user_last_login_null','2026-03-18 10:00:12.085483'),(11,'auth','0006_require_contenttypes_0002','2026-03-18 10:00:12.087504'),(12,'auth','0007_alter_validators_add_error_messages','2026-03-18 10:00:12.092011'),(13,'auth','0008_alter_user_username_max_length','2026-03-18 10:00:12.134277'),(14,'auth','0009_alter_user_last_name_max_length','2026-03-18 10:00:12.172489'),(15,'auth','0010_alter_group_name_max_length','2026-03-18 10:00:12.182043'),(16,'auth','0011_update_proxy_permissions','2026-03-18 10:00:12.186760'),(17,'auth','0012_alter_user_first_name_max_length','2026-03-18 10:00:12.225775'),(18,'sessions','0001_initial','2026-03-18 10:00:12.246359'),(19,'myapp','0001_initial','2026-03-19 13:16:20.535883'),(20,'myapp','0002_blog_contact_department_feedback_and_more','2026-03-20 10:15:50.829308'),(21,'myapp','0003_blog_comments_blog_date_blog_likes','2026-03-31 11:58:53.003241'),(22,'myapp','0004_procedure_alter_feedback_options_and_more','2026-04-01 13:03:08.542355'),(23,'myapp','0005_remove_procedure__heading_remove_procedure__img_and_more','2026-04-02 12:27:07.253664'),(24,'myapp','0002_categorysection_delete_procedure','2026-04-16 05:56:26.298638'),(25,'myapp','0003_category','2026-04-16 06:13:03.850730');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0f5r1gfpvnihqqyfywqh7lhm5yjhnlhb','eyJwYXNzIjpudWxsfQ:1wEiYp:UCeHxGZl5HZz-e1UrQGWIb5W_yKMhFZOe7R9bIryfvo','2026-05-04 06:56:47.407985'),('5lgqf4w4dbpzukytpamrs0r6uq4zg1jf','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w4z9T:8Vp0MXogdQsERfUZWZ6V8WKBfy41nNRCDZg7CIUr_mI','2026-04-07 10:38:23.736520'),('6zvsbiu30izvsaqad627eytcd852wkw9','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w8HAQ:LH-FrlZy4VkuI0CYfW7HXDifqjWuZBpiqEyhMsQWyj4','2026-04-16 12:28:58.853738'),('bli5gq1vh0bzfvx1eiiz07ncrscflzyz','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w6SDg:y0AXwTIgsBjrbD9j00GMAhz8tCmqHq3ePCzJw9qxQY4','2026-04-11 11:52:48.671509'),('c4wz20ghvagsayi22edpblurdb0hfw4g','.eJxVjDsOwyAYg-_CXCFeIaFj95whMvy0pA-QQjJVvXuJlCWTLX-2v2yrccn4RHZltTTDLmzCtqZpB9NMLVfnzCO8Yt4BPZEfhYeS12X2fK_wg1Y-Forv29E9HSTU1NaOhIWEMEZ7KONFU4OAHvdBBGudlFpbsk47panrB-0CVNt0lhC8Z78_X1I98A:1wDyu5:VIZS3g-6kCSpNarPadvw7Ldm5g0R5pPwoET9Gf39Kds','2026-05-02 06:11:41.668680'),('ivs6licmbn3zulxl7citk13mlv2ur6j1','.eJxVjE0OgjAYRO_StWn6R6Es3XuGZtoPBSWFULoy3t2SsNDVJPPmzZt5lH30JQ-bn4j1TLHLbxcQX0M6AD2RHguPS9q3KfBjwk-a-W2hYb6e27-DEXmstiNhISGM0QHKBFHTIKLFvRPRWiel1pas005patpOuwhVncYSYgj1dEXOrE9lnj9ff7o7oA:1wEh8L:7MsaasSkYJanKyYsaldHvVO05UqO_VlPkvZXSqvpaMc','2026-05-04 05:25:21.056263'),('la8b4z6ii50432d50u1alaofq1e8vaq4','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w3AIk:W1l7JwuGeN7mrShQyVetK3qnT0MBxOoa-qzWGsGdUbY','2026-04-02 10:08:26.048813'),('midmzzflmrwwpft0abxv6ny7yvuwd9uy','eyJ1c2VybmFtZSI6Im15YWRtaW4iLCJwYXNzIjpudWxsfQ:1wEh4B:g3Pd_CPe2LYSIazhCM6r4YfRcBUOBrqoEifKi4NZRSQ','2026-05-04 05:21:03.229623'),('nail88d0o59vhphvl53y5kl4fmfr4yap','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w3uqu:5Axyq_7h8P_vopy7EJ_YCTH9jSvM8eFImgVvkb32Zss','2026-04-04 11:50:48.608814'),('uecfzphfd4doheguxgwxf0qh7kujfwyj','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w7vIB:FjBvARdNl90GGen3AJsvC-e1ThNZnp8A4PnMMYNTnUg','2026-04-15 13:07:31.200910'),('wrmevmz3og764unzv5t6qjo4nr2qqzr0','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w7Xiu:pjh5FDqT0Nf8c1CY4TJpXaeVYz_fZNVcgF-9OzSBSg4','2026-04-14 11:57:32.061444'),('z05q4xuuog69x2fcl5jbp4l51fcf7h3o','.eJxVjDEOgzAMAP_iuYpIqJPA2J03RI6xG9oKJAJT1b9XSAztene6NyTat5L2KmuaRujBwuWXZeKnzIcYHzTfF8PLvK1TNkdiTlvNsIzyup3t36BQLdCDZ2aUBpvOKaNwYGwpR9UQnWXVjMjei1xdDm2HgRQ1slUijB22BJ8vCsg41w:1w6m2w:KbWZIg9g8V98SZoZ9UednDKC5iGaM2J6UUp4wuGP_T0','2026-04-12 09:03:02.798638');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_blog`
--

DROP TABLE IF EXISTS `myapp_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `comments` int unsigned NOT NULL,
  `date` date DEFAULT NULL,
  `likes` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `myapp_blog_chk_1` CHECK ((`comments` >= 0)),
  CONSTRAINT `myapp_blog_chk_2` CHECK ((`likes` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_blog`
--

LOCK TABLES `myapp_blog` WRITE;
/*!40000 ALTER TABLE `myapp_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_category`
--

DROP TABLE IF EXISTS `myapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_category`
--

LOCK TABLES `myapp_category` WRITE;
/*!40000 ALTER TABLE `myapp_category` DISABLE KEYS */;
INSERT INTO `myapp_category` VALUES (1,'General Checkup','category_images/working-business-women.jpg'),(2,'Emergency Treatment','category_images/blackdesksetup1_3uFlbk8.webp'),(3,'Special Care','category_images/h5NgQEGTcUwAyBzyNJwPue.jpg');
/*!40000 ALTER TABLE `myapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_categorysection`
--

DROP TABLE IF EXISTS `myapp_categorysection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_categorysection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_categorysection`
--

LOCK TABLES `myapp_categorysection` WRITE;
/*!40000 ALTER TABLE `myapp_categorysection` DISABLE KEYS */;
INSERT INTO `myapp_categorysection` VALUES (1,'Procedure Category','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua.');
/*!40000 ALTER TABLE `myapp_categorysection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_contact`
--

DROP TABLE IF EXISTS `myapp_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_contact`
--

LOCK TABLES `myapp_contact` WRITE;
/*!40000 ALTER TABLE `myapp_contact` DISABLE KEYS */;
INSERT INTO `myapp_contact` VALUES (1,'sonam','sonam@gmail.com','123445555','hello  i am a  webdeveloper','2026-03-28 13:41:41.796362');
/*!40000 ALTER TABLE `myapp_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_department`
--

DROP TABLE IF EXISTS `myapp_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_department`
--

LOCK TABLES `myapp_department` WRITE;
/*!40000 ALTER TABLE `myapp_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_doctor`
--

DROP TABLE IF EXISTS `myapp_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_doctor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `specialty` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `bio` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `department_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_doctor_department_id_c06c1169_fk_myapp_department_id` (`department_id`),
  CONSTRAINT `myapp_doctor_department_id_c06c1169_fk_myapp_department_id` FOREIGN KEY (`department_id`) REFERENCES `myapp_department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_doctor`
--

LOCK TABLES `myapp_doctor` WRITE;
/*!40000 ALTER TABLE `myapp_doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_feedback`
--

DROP TABLE IF EXISTS `myapp_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_feedback` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_feedback`
--

LOCK TABLES `myapp_feedback` WRITE;
/*!40000 ALTER TABLE `myapp_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_sitesetting`
--

DROP TABLE IF EXISTS `myapp_sitesetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_sitesetting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_sitesetting`
--

LOCK TABLES `myapp_sitesetting` WRITE;
/*!40000 ALTER TABLE `myapp_sitesetting` DISABLE KEYS */;
INSERT INTO `myapp_sitesetting` VALUES (2,'','about us'),(3,'about','about us');
/*!40000 ALTER TABLE `myapp_sitesetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `roll_no` int DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roll_no` (`roll_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'John',12321,'12th',26,'john@gmail.com','Highway 21','2026-02-25 11:13:38');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydatabase'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-28 11:34:23
