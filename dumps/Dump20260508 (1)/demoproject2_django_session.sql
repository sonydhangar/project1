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
INSERT INTO `django_session` VALUES ('4g3xdx00u2d76l10cthi14y3huczepk5','eyJwYXNzIjoiMTIzIiwidXNlcm5hbWUiOiJzb25hbSJ9:1wFQqQ:4V5nIF3TJDqLMjTxzMDLoMnI7fGkYMzwhumIKgubd5U','2026-05-06 06:13:54.711374'),('4wupsppck3rkywedkmdb9dmbhaisbl1q','.eJxVjMsOwiAQRf-FtSG0MDxcuvcbCB1mpGogKe3K-O_apAvd3nPOfYmYtrXErdMS5yzOworT7zYlfFDdQb6nemsSW12XeZK7Ig_a5bVlel4O9--gpF6-NfuMBpz1YC2SRtCk2ZpBBWIVnMsIWVvFJgQ24AMM7AgNjUAqeD-K9wfaPzdQ:1w5Gtb:0zmTYkTv-VhcMre8yQhjgsZrujAQsc8deIg1Zjuc274','2026-04-08 05:35:11.744236'),('9m2kaiyj5v1bfpo8s4cmn38mtc5pkmh1','.eJxVjMsOwiAQRf-FtSG0MDxcuvcbCB1mpGogKe3K-O_apAvd3nPOfYmYtrXErdMS5yzOworT7zYlfFDdQb6nemsSW12XeZK7Ig_a5bVlel4O9--gpF6-NfuMBpz1YC2SRtCk2ZpBBWIVnMsIWVvFJgQ24AMM7AgNjUAqeD-K9wfaPzdQ:1w36EJ:UeD5Nk2kYj4vxM0e4hcdzZH95J-mS0AUc3RqukR-M9o','2026-04-02 05:47:35.866215'),('g5qzsckkfuwjslxz7xyo5wbrgxg83w2s','.eJxVjMsOwiAQRf-FtSG0MDxcuvcbCB1mpGogKe3K-O_apAvd3nPOfYmYtrXErdMS5yzOworT7zYlfFDdQb6nemsSW12XeZK7Ig_a5bVlel4O9--gpF6-NfuMBpz1YC2SRtCk2ZpBBWIVnMsIWVvFJgQ24AMM7AgNjUAqeD-K9wfaPzdQ:1w7Rrq:a_8cGYz5BLQyykk6hxvQ_NHAFbSEwEAZas6KlX80RQg','2026-04-14 05:42:22.122096'),('k4145mvw22vzdkqou7oa3k8my45d8wzu','.eJxVjMsOwiAQRf-FtSG0MDxcuvcbCB1mpGogKe3K-O_apAvd3nPOfYmYtrXErdMS5yzOworT7zYlfFDdQb6nemsSW12XeZK7Ig_a5bVlel4O9--gpF6-NfuMBpz1YC2SRtCk2ZpBBWIVnMsIWVvFJgQ24AMM7AgNjUAqeD-K9wfaPzdQ:1w4YD9:jtsWhRcSbkBNBMAzXKLYx5h5sDgriMTQLL08Q3VCZlQ','2026-04-06 05:52:23.376766'),('l1sau0wh1xi164jexurqbk1ive56u55n','.eJxVjMsOwiAQRf-FtSHM8Hbp3m8gwIBUDU1KuzL-uzbpQrf3nHNfLMRtbWEbZQkTsTMDdvrdUsyP0ndA99hvM89zX5cp8V3hBx38OlN5Xg7376DF0b61Et4rlQ24qlwtXnqSChOUVI1ETBYrOOms9l44AVCMRukILGlZrUb2_gCxozY_:1w2O8B:_dMxgxbpkIJIznrkKAy6-DX5AKO9GqeVF2tOD8mjHRs','2026-03-31 06:42:19.627872'),('o5gb19tutqopoc2uqwvfyh4tfumcxwr3','eyJhZ2UiOjI1LCJ1c2VybmFtZSI6ImFkbWluIiwicGFzcyI6bnVsbH0:1wEiWg:GX5GgJbkofZ4-yDzuVa_cyJ8QmXul-xRfvnMI_D73Hg','2026-05-04 06:54:34.197128'),('xmvzzwhc6bylyf5gawj0nxzsj5jkv7rn','eyJwYXNzIjpudWxsfQ:1wF3aU:oBsm-gs-ZXAbm9O-1LN197qe59okbK-X5BdZAm9WJTg','2026-05-05 05:23:54.300956'),('yk60u6vptvrsqdmuj7j4nypt94bgcokk','.eJxVjMsOwiAQRf-FtSG0MDxcuvcbCB1mpGogKe3K-O_apAvd3nPOfYmYtrXErdMS5yzOworT7zYlfFDdQb6nemsSW12XeZK7Ig_a5bVlel4O9--gpF6-NfuMBpz1YC2SRtCk2ZpBBWIVnMsIWVvFJgQ24AMM7AgNjUAqeD-K9wfaPzdQ:1w3Sxe:iYk8gDcW3Y4qbCK2aFvh9Joh9wlqH734D4HRziAdZJk','2026-04-03 06:03:54.844897'),('ymd857ifp2wz2625g2on8ro91ppfrhlu','.eJxVjMsOwiAQRf-FtSG0MDxcuvcbCB1mpGogKe3K-O_apAvd3nPOfYmYtrXErdMS5yzOworT7zYlfFDdQb6nemsSW12XeZK7Ig_a5bVlel4O9--gpF6-NfuMBpz1YC2SRtCk2ZpBBWIVnMsIWVvFJgQ24AMM7AgNjUAqeD-K9wfaPzdQ:1wC9PM:9eRGfYeZoyUGAiUuvIULFfaQAu_hxNk_G_tLr772qv4','2026-04-27 05:00:24.608523');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-08 12:34:12
