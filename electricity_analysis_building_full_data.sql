-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: electricity_analysis
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `building_full_data`
--

DROP TABLE IF EXISTS `building_full_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_full_data` (
  `building_id` int DEFAULT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `building_type` varchar(50) DEFAULT NULL,
  `tariff_id` int DEFAULT NULL,
  `rate_per_unit` double DEFAULT NULL,
  `fixed_charge` double DEFAULT NULL,
  `meter_id` int DEFAULT NULL,
  `meter_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_full_data`
--

LOCK TABLES `building_full_data` WRITE;
/*!40000 ALTER TABLE `building_full_data` DISABLE KEYS */;
INSERT INTO `building_full_data` VALUES (1,'Ira Hall','Hostel',1,6.5,150,101,'Meter-1-H1'),(2,'Ananta Hall','Hostel',1,6.5,150,102,'Meter-1-H2'),(3,'Vasudha Hall','Hostel',1,6.5,150,103,'Meter-1-H3'),(4,'Central Library','Commercial',2,9,300,104,'Meter-1-Library'),(5,'Kravings','Canteen',3,7,200,105,'Meter-1-Kravings'),(6,'Anantam Hall','Hostel',1,6.5,150,106,'Meter-1-Anantam'),(7,'Admin Block','Office',4,8,250,107,'Meter-1-Admin'),(8,'Sports Complex','General',5,5.5,120,108,'Meter-1-Sports');
/*!40000 ALTER TABLE `building_full_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-27 17:33:11
