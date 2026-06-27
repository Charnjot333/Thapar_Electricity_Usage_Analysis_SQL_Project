CREATE DATABASE  IF NOT EXISTS `electricity_analysis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `electricity_analysis`;
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
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `building_id` int NOT NULL,
  `bill_per_day` double DEFAULT NULL,
  `units_used` int DEFAULT NULL,
  `total_units_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  `bill_period` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `building_id` (`building_id`),
  CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,1,26.33,742,5468.57,218.68,'PAID','1-15 January'),(2,2,42.31,430,3402.5,192.77,'PENDING','1-15 January'),(3,3,52.57,761,9269.07,779.43,'PENDING','1-15 January'),(4,4,37.44,362,3253.55,217.73,'PENDING','1-15 January'),(5,5,41.86,852,9522.97,377.77,'PENDING','1-15 January'),(6,6,53.58,343,3335.55,327.75,'PENDING','1-15 January'),(7,7,59.79,753,7682.57,388.05,'PENDING','1-15 January'),(8,8,45.66,205,2657.95,166.36,'PENDING','1-15 January'),(9,1,28.65,201,2006.37,116.63,'PAID','16-30 January'),(10,2,44.57,677,5325.3,123.39,'PAID','16-30 January'),(11,3,40.45,567,6354.89,572.37,'PAID','16-30 January'),(12,4,28.55,690,5119.35,331.83,'PAID','16-30 January'),(13,5,38.78,699,6820.14,598.24,'PENDING','16-30 January'),(14,6,41,431,4643.33,348.01,'PAID','16-30 January'),(15,7,35.94,163,2059.89,77.97,'PENDING','16-30 January'),(16,8,42.36,798,6537.01,431.82,'PAID','16-30 January'),(17,1,53.2,651,6116.21,292.32,'PAID','1-15 February'),(18,2,42.48,728,7293.79,176.61,'PENDING','1-15 February'),(19,3,34.37,413,3838.5,345.15,'PAID','1-15 February'),(20,4,37.83,856,9423.22,792.93,'PAID','1-15 February'),(21,5,39.94,415,4138,87.61,'PENDING','1-15 February'),(22,6,44.57,632,6371.52,308.91,'PAID','1-15 February'),(23,7,48.14,218,2103.83,70.69,'PENDING','1-15 February'),(24,8,46.09,451,3720.57,163.31,'PENDING','1-15 February'),(25,1,30.29,164,1472.33,107.04,'PENDING','16-30 February'),(26,2,42.02,489,4068.02,106.33,'PAID','16-30 February'),(27,3,44.07,753,5564.32,314.04,'PAID','16-30 February'),(28,4,25.78,399,4908.42,183.6,'PAID','16-30 February'),(29,5,56.46,319,3098.12,241.9,'PAID','16-30 February'),(30,6,51.73,741,5611.58,212.44,'PAID','16-30 February'),(31,7,34.69,854,8243.06,376.33,'PAID','16-30 February'),(32,8,47.19,375,3291.73,148.94,'PAID','16-30 February'),(33,1,42.23,740,6531.59,241.57,'PENDING','1-15 March'),(34,2,41.1,897,7092.61,513.46,'PENDING','1-15 March'),(35,3,52.46,281,2315.62,69.88,'PENDING','1-15 March'),(36,4,30.03,585,5014.99,107.39,'PAID','1-15 March'),(37,5,45.77,796,8266.84,502.46,'PAID','1-15 March'),(38,6,55.11,588,6632.29,635.62,'PENDING','1-15 March'),(39,7,48.52,415,5108.48,157.69,'PAID','1-15 March'),(40,8,47.62,565,6439.56,338.31,'PAID','1-15 March'),(41,1,44.4,878,6795.56,208.32,'PENDING','16-30 March'),(42,2,49.71,774,7667.72,413.45,'PENDING','16-30 March'),(43,3,32.01,897,7322.58,477.78,'PENDING','16-30 March'),(44,4,40.25,184,1966.92,46.55,'PENDING','16-30 March'),(45,5,51.67,193,1934.84,106.16,'PAID','16-30 March'),(46,6,47.63,898,8676.39,768.19,'PAID','16-30 March'),(47,7,56.59,662,7709.94,275.51,'PAID','16-30 March'),(48,8,42.05,490,3670.65,332.3,'PENDING','16-30 March'),(49,1,37.78,328,2714.28,124.18,'PENDING','1-15 April'),(50,2,27.95,423,5010.55,239.2,'PAID','1-15 April'),(51,3,50.23,207,2431.71,116.3,'PENDING','1-15 April'),(52,4,45.75,548,5461.18,354.13,'PENDING','1-15 April'),(53,5,56.56,690,6481.95,524.73,'PAID','1-15 April'),(54,6,51.36,196,1972.6,121.09,'PENDING','1-15 April'),(55,7,34.16,372,3084.02,105.5,'PENDING','1-15 April'),(56,8,47.1,343,3437.85,163.79,'PENDING','1-15 April'),(57,1,49.88,278,2773.96,99.21,'PAID','16-30 April'),(58,2,49.27,235,2701.5,163.8,'PAID','16-30 April'),(59,3,59.48,451,3682.81,235.38,'PENDING','16-30 April'),(60,4,51.12,796,7678.08,569.19,'PAID','16-30 April'),(61,5,41.54,536,5394.33,308.46,'PAID','16-30 April'),(62,6,46.99,774,6191.39,267.9,'PAID','16-30 April'),(63,7,44.4,173,1786.19,136.58,'PENDING','16-30 April'),(64,8,53.22,882,6555.42,170.21,'PAID','16-30 April'),(65,1,46.48,504,3870.12,99.53,'PAID','1-15 May'),(66,2,31.72,675,8150.21,177.46,'PENDING','1-15 May'),(67,3,37.58,544,5453.95,279.98,'PENDING','1-15 May'),(68,4,35.84,314,2881.06,143.52,'PENDING','1-15 May'),(69,5,48.24,538,6294.02,231.66,'PAID','1-15 May'),(70,6,46.95,180,1449.9,104.23,'PENDING','1-15 May'),(71,7,55.2,437,4566.33,289.31,'PAID','1-15 May'),(72,8,38.69,175,2389.63,57.03,'PENDING','1-15 May'),(73,1,44.53,425,4483.02,219.13,'PENDING','16-30 May'),(74,2,32.08,197,2317.96,216.13,'PENDING','16-30 May'),(75,3,25.29,193,2375.25,118.47,'PENDING','16-30 May'),(76,4,45.03,767,6837.37,451.42,'PENDING','16-30 May'),(77,5,52.47,309,3554.32,289.02,'PENDING','16-30 May'),(78,6,34.25,342,4349.24,166.89,'PAID','16-30 May'),(79,7,25.98,878,7319.77,536.77,'PENDING','16-30 May'),(80,8,25.75,229,1912.49,108.6,'PAID','16-30 May'),(81,1,34.4,564,6501.99,269.59,'PENDING','1-15 June'),(82,2,27.04,800,6491.67,337.46,'PENDING','1-15 June'),(83,3,57.92,322,2745.37,76.07,'PAID','1-15 June'),(84,4,38.9,826,7584.31,237.29,'PAID','1-15 June'),(85,5,38.21,273,2247.22,139.23,'PAID','1-15 June'),(86,6,29.6,623,5648.12,342.45,'PENDING','1-15 June'),(87,7,53.75,266,3009.08,112.36,'PAID','1-15 June'),(88,8,43.77,491,5756.41,506.58,'PAID','1-15 June'),(89,1,29.49,851,6496.19,195.97,'PENDING','16-30 June'),(90,2,54.7,683,5016.65,173.01,'PENDING','16-30 June'),(91,3,55.98,875,10182.44,386.85,'PAID','16-30 June'),(92,4,55.05,764,6429.87,464.82,'PAID','16-30 June'),(93,5,48.56,406,4228.07,376.3,'PAID','16-30 June'),(94,6,29.39,525,4685.18,166.83,'PAID','16-30 June'),(95,7,34.97,463,3836.18,302.83,'PAID','16-30 June'),(96,8,58.04,576,5825.99,373.61,'PAID','16-30 June'),(97,1,NULL,200,1600,NULL,'PENDING',NULL),(98,1,NULL,30,NULL,NULL,'PENDING',NULL);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `building_id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(100) NOT NULL,
  `building_type` varchar(50) NOT NULL,
  PRIMARY KEY (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'Ira Hall','Hostel'),(2,'Ananta Hall','Hostel'),(3,'Vasudha Hall','Hostel'),(4,'Central Library','Commercial'),(5,'Kravings','Canteen'),(6,'Anantam Hall','Hostel'),(7,'Admin Block','Office'),(8,'Sports Complex','General');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `complaint_id` int NOT NULL AUTO_INCREMENT,
  `building_id` int NOT NULL,
  `complaint_type` varchar(50) NOT NULL,
  `description` text,
  `complaint_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  PRIMARY KEY (`complaint_id`),
  KEY `building_id` (`building_id`),
  CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (1,1,'Meter Fault','Meter Fault reported in building 1','2025-06-25','RESOLVED'),(2,2,'Voltage Fluctuation','Voltage Fluctuation reported in building 2','2025-05-14','PENDING'),(3,7,'Voltage Fluctuation','Voltage Fluctuation reported in building 7','2025-03-01','RESOLVED'),(4,1,'Power Cut','Power Cut reported in building 1','2025-04-26','RESOLVED'),(5,7,'Power Cut','Power Cut reported in building 7','2025-04-05','PENDING'),(6,4,'Meter Fault','Meter Fault reported in building 4','2025-04-13','PENDING');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `high_consumption`
--

DROP TABLE IF EXISTS `high_consumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `high_consumption` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_id` int DEFAULT NULL,
  `meter_id` int DEFAULT NULL,
  `units_used` int DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `high_consumption`
--

LOCK TABLES `high_consumption` WRITE;
/*!40000 ALTER TABLE `high_consumption` DISABLE KEYS */;
INSERT INTO `high_consumption` VALUES (1,1,101,21,'High Usage'),(2,1,101,22,'High Usage'),(3,1,101,23,'High Usage'),(4,1,101,24,'High Usage'),(5,1,101,25,'High Usage'),(6,1,101,26,'High Usage'),(7,1,101,27,'High Usage'),(8,1,101,28,'High Usage'),(9,1,101,29,'High Usage'),(10,1,101,30,'High Usage'),(11,1,101,31,'High Usage'),(12,1,101,32,'High Usage'),(13,2,102,33,'High Usage'),(14,2,102,34,'High Usage'),(15,2,102,35,'High Usage'),(16,2,102,36,'High Usage'),(17,2,102,37,'High Usage'),(18,2,102,38,'High Usage'),(19,2,102,39,'High Usage'),(20,2,102,40,'High Usage'),(21,2,102,41,'High Usage'),(22,2,102,42,'High Usage'),(23,2,102,43,'High Usage'),(24,2,102,44,'High Usage'),(25,3,103,45,'High Usage'),(26,3,103,46,'High Usage'),(27,3,103,47,'High Usage'),(28,3,103,48,'High Usage'),(29,3,103,49,'High Usage'),(30,3,103,21,'High Usage'),(31,3,103,22,'High Usage'),(32,3,103,23,'High Usage'),(33,3,103,24,'High Usage'),(34,3,103,25,'High Usage'),(35,3,103,26,'High Usage'),(36,4,104,27,'High Usage'),(37,4,104,28,'High Usage'),(38,4,104,29,'High Usage'),(39,4,104,30,'High Usage'),(40,4,104,31,'High Usage'),(41,4,104,32,'High Usage'),(42,4,104,33,'High Usage'),(43,4,104,34,'High Usage'),(44,4,104,35,'High Usage'),(45,4,104,36,'High Usage'),(46,4,104,37,'High Usage'),(47,4,104,38,'High Usage'),(48,5,105,39,'High Usage'),(49,5,105,40,'High Usage'),(50,5,105,41,'High Usage'),(51,5,105,42,'High Usage'),(52,5,105,43,'High Usage'),(53,5,105,44,'High Usage'),(54,5,105,45,'High Usage'),(55,5,105,46,'High Usage'),(56,5,105,47,'High Usage'),(57,5,105,48,'High Usage'),(58,5,105,49,'High Usage'),(59,6,106,21,'High Usage'),(60,6,106,22,'High Usage'),(61,6,106,23,'High Usage'),(62,6,106,24,'High Usage'),(63,6,106,25,'High Usage'),(64,6,106,26,'High Usage'),(65,6,106,27,'High Usage'),(66,6,106,28,'High Usage'),(67,6,106,29,'High Usage'),(68,6,106,30,'High Usage'),(69,6,106,31,'High Usage'),(70,6,106,32,'High Usage'),(71,7,107,33,'High Usage'),(72,7,107,34,'High Usage'),(73,7,107,35,'High Usage'),(74,7,107,36,'High Usage'),(75,7,107,37,'High Usage'),(76,7,107,38,'High Usage'),(77,7,107,39,'High Usage'),(78,7,107,40,'High Usage'),(79,7,107,41,'High Usage'),(80,7,107,42,'High Usage'),(81,7,107,43,'High Usage'),(82,7,107,44,'High Usage'),(83,8,108,45,'High Usage'),(84,8,108,46,'High Usage'),(85,8,108,47,'High Usage'),(86,8,108,48,'High Usage'),(87,8,108,49,'High Usage'),(88,8,108,21,'High Usage'),(89,8,108,22,'High Usage'),(90,8,108,23,'High Usage'),(91,8,108,24,'High Usage'),(92,8,108,25,'High Usage'),(93,8,108,26,'High Usage'),(94,1,101,30,'High Usage'),(95,1,101,21,'High Usage'),(96,1,101,22,'High Usage'),(97,1,101,23,'High Usage'),(98,1,101,24,'High Usage'),(99,1,101,25,'High Usage'),(100,1,101,26,'High Usage'),(101,1,101,27,'High Usage'),(102,1,101,28,'High Usage'),(103,1,101,29,'High Usage'),(104,1,101,30,'High Usage'),(105,1,101,31,'High Usage'),(106,1,101,32,'High Usage'),(107,2,102,33,'High Usage'),(108,2,102,34,'High Usage'),(109,2,102,35,'High Usage'),(110,2,102,36,'High Usage'),(111,2,102,37,'High Usage'),(112,2,102,38,'High Usage'),(113,2,102,39,'High Usage'),(114,2,102,40,'High Usage'),(115,2,102,41,'High Usage'),(116,2,102,42,'High Usage'),(117,2,102,43,'High Usage'),(118,2,102,44,'High Usage'),(119,3,103,45,'High Usage'),(120,3,103,46,'High Usage'),(121,3,103,47,'High Usage'),(122,3,103,48,'High Usage'),(123,3,103,49,'High Usage'),(124,3,103,21,'High Usage'),(125,3,103,22,'High Usage'),(126,3,103,23,'High Usage'),(127,3,103,24,'High Usage'),(128,3,103,25,'High Usage'),(129,3,103,26,'High Usage'),(130,4,104,27,'High Usage'),(131,4,104,28,'High Usage'),(132,4,104,29,'High Usage'),(133,4,104,30,'High Usage'),(134,4,104,31,'High Usage'),(135,4,104,32,'High Usage'),(136,4,104,33,'High Usage'),(137,4,104,34,'High Usage'),(138,4,104,35,'High Usage'),(139,4,104,36,'High Usage'),(140,4,104,37,'High Usage'),(141,4,104,38,'High Usage'),(142,5,105,39,'High Usage'),(143,5,105,40,'High Usage'),(144,5,105,41,'High Usage'),(145,5,105,42,'High Usage'),(146,5,105,43,'High Usage'),(147,5,105,44,'High Usage'),(148,5,105,45,'High Usage'),(149,5,105,46,'High Usage'),(150,5,105,47,'High Usage'),(151,5,105,48,'High Usage'),(152,5,105,49,'High Usage'),(153,6,106,21,'High Usage'),(154,6,106,22,'High Usage'),(155,6,106,23,'High Usage'),(156,6,106,24,'High Usage'),(157,6,106,25,'High Usage'),(158,6,106,26,'High Usage'),(159,6,106,27,'High Usage'),(160,6,106,28,'High Usage'),(161,6,106,29,'High Usage'),(162,6,106,30,'High Usage'),(163,6,106,31,'High Usage'),(164,6,106,32,'High Usage'),(165,7,107,33,'High Usage'),(166,7,107,34,'High Usage'),(167,7,107,35,'High Usage'),(168,7,107,36,'High Usage'),(169,7,107,37,'High Usage'),(170,7,107,38,'High Usage'),(171,7,107,39,'High Usage'),(172,7,107,40,'High Usage'),(173,7,107,41,'High Usage'),(174,7,107,42,'High Usage'),(175,7,107,43,'High Usage'),(176,7,107,44,'High Usage'),(177,8,108,45,'High Usage'),(178,8,108,46,'High Usage'),(179,8,108,47,'High Usage'),(180,8,108,48,'High Usage'),(181,8,108,49,'High Usage'),(182,8,108,21,'High Usage'),(183,8,108,22,'High Usage'),(184,8,108,23,'High Usage'),(185,8,108,24,'High Usage'),(186,8,108,25,'High Usage'),(187,8,108,26,'High Usage'),(188,1,101,30,'High Usage'),(189,1,101,21,'High Usage'),(190,1,101,22,'High Usage'),(191,1,101,23,'High Usage'),(192,1,101,24,'High Usage'),(193,1,101,25,'High Usage'),(194,1,101,26,'High Usage'),(195,1,101,27,'High Usage'),(196,1,101,28,'High Usage'),(197,1,101,29,'High Usage'),(198,1,101,30,'High Usage'),(199,1,101,31,'High Usage'),(200,1,101,32,'High Usage'),(201,2,102,33,'High Usage'),(202,2,102,34,'High Usage'),(203,2,102,35,'High Usage'),(204,2,102,36,'High Usage'),(205,2,102,37,'High Usage'),(206,2,102,38,'High Usage'),(207,2,102,39,'High Usage'),(208,2,102,40,'High Usage'),(209,2,102,41,'High Usage'),(210,2,102,42,'High Usage'),(211,2,102,43,'High Usage'),(212,2,102,44,'High Usage'),(213,3,103,45,'High Usage'),(214,3,103,46,'High Usage'),(215,3,103,47,'High Usage'),(216,3,103,48,'High Usage'),(217,3,103,49,'High Usage'),(218,3,103,21,'High Usage'),(219,3,103,22,'High Usage'),(220,3,103,23,'High Usage'),(221,3,103,24,'High Usage'),(222,3,103,25,'High Usage'),(223,3,103,26,'High Usage'),(224,4,104,27,'High Usage'),(225,4,104,28,'High Usage'),(226,4,104,29,'High Usage'),(227,4,104,30,'High Usage'),(228,4,104,31,'High Usage'),(229,4,104,32,'High Usage'),(230,4,104,33,'High Usage'),(231,4,104,34,'High Usage'),(232,4,104,35,'High Usage'),(233,4,104,36,'High Usage'),(234,4,104,37,'High Usage'),(235,4,104,38,'High Usage'),(236,5,105,39,'High Usage'),(237,5,105,40,'High Usage'),(238,5,105,41,'High Usage'),(239,5,105,42,'High Usage'),(240,5,105,43,'High Usage'),(241,5,105,44,'High Usage'),(242,5,105,45,'High Usage'),(243,5,105,46,'High Usage'),(244,5,105,47,'High Usage'),(245,5,105,48,'High Usage'),(246,5,105,49,'High Usage'),(247,6,106,21,'High Usage'),(248,6,106,22,'High Usage'),(249,6,106,23,'High Usage'),(250,6,106,24,'High Usage'),(251,6,106,25,'High Usage'),(252,6,106,26,'High Usage'),(253,6,106,27,'High Usage'),(254,6,106,28,'High Usage'),(255,6,106,29,'High Usage'),(256,6,106,30,'High Usage'),(257,6,106,31,'High Usage'),(258,6,106,32,'High Usage'),(259,7,107,33,'High Usage'),(260,7,107,34,'High Usage'),(261,7,107,35,'High Usage'),(262,7,107,36,'High Usage'),(263,7,107,37,'High Usage'),(264,7,107,38,'High Usage'),(265,7,107,39,'High Usage'),(266,7,107,40,'High Usage'),(267,7,107,41,'High Usage'),(268,7,107,42,'High Usage'),(269,7,107,43,'High Usage'),(270,7,107,44,'High Usage'),(271,8,108,45,'High Usage'),(272,8,108,46,'High Usage'),(273,8,108,47,'High Usage'),(274,8,108,48,'High Usage'),(275,8,108,49,'High Usage'),(276,8,108,21,'High Usage'),(277,8,108,22,'High Usage'),(278,8,108,23,'High Usage'),(279,8,108,24,'High Usage'),(280,8,108,25,'High Usage'),(281,8,108,26,'High Usage'),(282,1,101,30,'High Usage'),(283,1,101,30,'High Usage'),(284,1,101,100,'High Usage'),(285,1,101,100,'High Usage'),(286,1,101,100,'High Usage'),(287,1,102,126,'High Usage'),(288,1,102,226,'High Usage'),(289,1,101,100,'High Usage'),(290,1,101,30,'High Usage'),(291,1,101,80,'High Usage'),(292,1,101,30,'High Usage'),(293,1,101,21,'High Usage'),(294,1,101,22,'High Usage'),(295,1,101,23,'High Usage'),(296,1,101,24,'High Usage'),(297,1,101,25,'High Usage'),(298,1,101,26,'High Usage'),(299,1,101,27,'High Usage'),(300,1,101,28,'High Usage'),(301,1,101,29,'High Usage'),(302,1,101,30,'High Usage'),(303,1,101,31,'High Usage'),(304,1,101,32,'High Usage'),(305,2,102,33,'High Usage'),(306,2,102,34,'High Usage'),(307,2,102,35,'High Usage'),(308,2,102,36,'High Usage'),(309,2,102,37,'High Usage'),(310,2,102,38,'High Usage'),(311,2,102,39,'High Usage'),(312,2,102,40,'High Usage'),(313,2,102,41,'High Usage'),(314,2,102,42,'High Usage'),(315,2,102,43,'High Usage'),(316,2,102,44,'High Usage'),(317,3,103,45,'High Usage'),(318,3,103,46,'High Usage'),(319,3,103,47,'High Usage'),(320,3,103,48,'High Usage'),(321,3,103,49,'High Usage'),(322,3,103,21,'High Usage'),(323,3,103,22,'High Usage'),(324,3,103,23,'High Usage'),(325,3,103,24,'High Usage'),(326,3,103,25,'High Usage'),(327,3,103,26,'High Usage'),(328,4,104,27,'High Usage'),(329,4,104,28,'High Usage'),(330,4,104,29,'High Usage'),(331,4,104,30,'High Usage'),(332,4,104,31,'High Usage'),(333,4,104,32,'High Usage'),(334,4,104,33,'High Usage'),(335,4,104,34,'High Usage'),(336,4,104,35,'High Usage'),(337,4,104,36,'High Usage'),(338,4,104,37,'High Usage'),(339,4,104,38,'High Usage'),(340,5,105,39,'High Usage'),(341,5,105,40,'High Usage'),(342,5,105,41,'High Usage'),(343,5,105,42,'High Usage'),(344,5,105,43,'High Usage'),(345,5,105,44,'High Usage'),(346,5,105,45,'High Usage'),(347,5,105,46,'High Usage'),(348,5,105,47,'High Usage'),(349,5,105,48,'High Usage'),(350,5,105,49,'High Usage'),(351,6,106,21,'High Usage'),(352,6,106,22,'High Usage'),(353,6,106,23,'High Usage'),(354,6,106,24,'High Usage'),(355,6,106,25,'High Usage'),(356,6,106,26,'High Usage'),(357,6,106,27,'High Usage'),(358,6,106,28,'High Usage'),(359,6,106,29,'High Usage'),(360,6,106,30,'High Usage'),(361,6,106,31,'High Usage'),(362,6,106,32,'High Usage'),(363,7,107,33,'High Usage'),(364,7,107,34,'High Usage'),(365,7,107,35,'High Usage'),(366,7,107,36,'High Usage'),(367,7,107,37,'High Usage'),(368,7,107,38,'High Usage'),(369,7,107,39,'High Usage'),(370,7,107,40,'High Usage'),(371,7,107,41,'High Usage'),(372,7,107,42,'High Usage'),(373,7,107,43,'High Usage'),(374,7,107,44,'High Usage'),(375,8,108,45,'High Usage'),(376,8,108,46,'High Usage'),(377,8,108,47,'High Usage'),(378,8,108,48,'High Usage'),(379,8,108,49,'High Usage'),(380,8,108,21,'High Usage'),(381,8,108,22,'High Usage'),(382,8,108,23,'High Usage'),(383,8,108,24,'High Usage'),(384,8,108,25,'High Usage'),(385,8,108,26,'High Usage'),(386,1,101,30,'High Usage'),(387,1,101,30,'High Usage'),(388,1,101,100,'High Usage'),(389,1,101,100,'High Usage'),(390,1,101,100,'High Usage'),(391,1,102,126,'High Usage'),(392,1,102,226,'High Usage'),(393,1,101,100,'High Usage'),(394,1,101,30,'High Usage'),(395,1,101,80,'High Usage'),(396,1,101,30,'High Usage'),(397,1,101,30,'High Usage'),(398,1,101,23,'High Usage'),(399,1,101,24,'High Usage'),(400,1,101,30,'High Usage');
/*!40000 ALTER TABLE `high_consumption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meter_readings`
--

DROP TABLE IF EXISTS `meter_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meter_readings` (
  `reading_id` int NOT NULL AUTO_INCREMENT,
  `building_id` int NOT NULL,
  `meter_id` int NOT NULL,
  `reading_date` date NOT NULL,
  `current_reading` int NOT NULL,
  `units_used` int DEFAULT NULL,
  `average_reading` double DEFAULT NULL,
  `actual_reading` int DEFAULT NULL,
  PRIMARY KEY (`reading_id`),
  KEY `building_id` (`building_id`),
  KEY `meter_id` (`meter_id`),
  CONSTRAINT `meter_readings_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`),
  CONSTRAINT `meter_readings_ibfk_2` FOREIGN KEY (`meter_id`) REFERENCES `number_of_meters` (`meter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meter_readings`
--

LOCK TABLES `meter_readings` WRITE;
/*!40000 ALTER TABLE `meter_readings` DISABLE KEYS */;
INSERT INTO `meter_readings` VALUES (1,1,101,'2025-01-01',501,21,1.4,480),(2,1,101,'2025-01-16',502,22,1.4666666666666666,480),(3,1,101,'2025-02-01',503,23,1.5333333333333334,480),(4,1,101,'2025-02-16',504,24,1.6,480),(5,1,101,'2025-03-01',505,25,1.6666666666666667,480),(6,1,101,'2025-03-16',506,26,1.7333333333333334,480),(7,1,101,'2025-04-01',507,27,1.8,480),(8,1,101,'2025-04-16',508,28,1.8666666666666667,480),(9,1,101,'2025-05-01',509,29,1.9333333333333331,480),(10,1,101,'2025-05-16',510,30,2,480),(11,1,101,'2025-06-01',511,31,2.066666666666667,480),(12,1,101,'2025-06-16',512,32,2.1333333333333333,480),(13,2,102,'2025-01-01',513,33,2.2,480),(14,2,102,'2025-01-16',514,34,2.2666666666666666,480),(15,2,102,'2025-02-01',515,35,2.333333333333333,480),(16,2,102,'2025-02-16',516,36,2.4,480),(17,2,102,'2025-03-01',517,37,2.466666666666667,480),(18,2,102,'2025-03-16',518,38,2.533333333333333,480),(19,2,102,'2025-04-01',519,39,2.6,480),(20,2,102,'2025-04-16',520,40,2.6666666666666665,480),(21,2,102,'2025-05-01',521,41,2.7333333333333334,480),(22,2,102,'2025-05-16',522,42,2.8,480),(23,2,102,'2025-06-01',523,43,2.8666666666666667,480),(24,2,102,'2025-06-16',524,44,2.933333333333333,480),(25,3,103,'2025-01-01',525,45,3,480),(26,3,103,'2025-01-16',526,46,3.066666666666667,480),(27,3,103,'2025-02-01',527,47,3.1333333333333333,480),(28,3,103,'2025-02-16',528,48,3.2,480),(29,3,103,'2025-03-01',529,49,3.2666666666666666,480),(30,3,103,'2025-03-16',530,20,1.3333333333333333,510),(31,3,103,'2025-04-01',531,21,1.4,510),(32,3,103,'2025-04-16',532,22,1.4666666666666666,510),(33,3,103,'2025-05-01',533,23,1.5333333333333334,510),(34,3,103,'2025-05-16',534,24,1.6,510),(35,3,103,'2025-06-01',535,25,1.6666666666666667,510),(36,3,103,'2025-06-16',536,26,1.7333333333333334,510),(37,4,104,'2025-01-01',537,27,1.8,510),(38,4,104,'2025-01-16',538,28,1.8666666666666667,510),(39,4,104,'2025-02-01',539,29,1.9333333333333331,510),(40,4,104,'2025-02-16',540,30,2,510),(41,4,104,'2025-03-01',541,31,2.066666666666667,510),(42,4,104,'2025-03-16',542,32,2.1333333333333333,510),(43,4,104,'2025-04-01',543,33,2.2,510),(44,4,104,'2025-04-16',544,34,2.2666666666666666,510),(45,4,104,'2025-05-01',545,35,2.333333333333333,510),(46,4,104,'2025-05-16',546,36,2.4,510),(47,4,104,'2025-06-01',547,37,2.466666666666667,510),(48,4,104,'2025-06-16',548,38,2.533333333333333,510),(49,5,105,'2025-01-01',549,39,2.6,510),(50,5,105,'2025-01-16',550,40,2.6666666666666665,510),(51,5,105,'2025-02-01',551,41,2.7333333333333334,510),(52,5,105,'2025-02-16',552,42,2.8,510),(53,5,105,'2025-03-01',553,43,2.8666666666666667,510),(54,5,105,'2025-03-16',554,44,2.933333333333333,510),(55,5,105,'2025-04-01',555,45,3,510),(56,5,105,'2025-04-16',556,46,3.066666666666667,510),(57,5,105,'2025-05-01',557,47,3.1333333333333333,510),(58,5,105,'2025-05-16',558,48,3.2,510),(59,5,105,'2025-06-01',559,49,3.2666666666666666,510),(60,5,105,'2025-06-16',560,20,1.3333333333333333,540),(61,6,106,'2025-01-01',561,21,1.4,540),(62,6,106,'2025-01-16',562,22,1.4666666666666666,540),(63,6,106,'2025-02-01',563,23,1.5333333333333334,540),(64,6,106,'2025-02-16',564,24,1.6,540),(65,6,106,'2025-03-01',565,25,1.6666666666666667,540),(66,6,106,'2025-03-16',566,26,1.7333333333333334,540),(67,6,106,'2025-04-01',567,27,1.8,540),(68,6,106,'2025-04-16',568,28,1.8666666666666667,540),(69,6,106,'2025-05-01',569,29,1.9333333333333331,540),(70,6,106,'2025-05-16',570,30,2,540),(71,6,106,'2025-06-01',571,31,2.066666666666667,540),(72,6,106,'2025-06-16',572,32,2.1333333333333333,540),(73,7,107,'2025-01-01',573,33,2.2,540),(74,7,107,'2025-01-16',574,34,2.2666666666666666,540),(75,7,107,'2025-02-01',575,35,2.333333333333333,540),(76,7,107,'2025-02-16',576,36,2.4,540),(77,7,107,'2025-03-01',577,37,2.466666666666667,540),(78,7,107,'2025-03-16',578,38,2.533333333333333,540),(79,7,107,'2025-04-01',579,39,2.6,540),(80,7,107,'2025-04-16',580,40,2.6666666666666665,540),(81,7,107,'2025-05-01',581,41,2.7333333333333334,540),(82,7,107,'2025-05-16',582,42,2.8,540),(83,7,107,'2025-06-01',583,43,2.8666666666666667,540),(84,7,107,'2025-06-16',584,44,2.933333333333333,540),(85,8,108,'2025-01-01',585,45,3,540),(86,8,108,'2025-01-16',586,46,3.066666666666667,540),(87,8,108,'2025-02-01',587,47,3.1333333333333333,540),(88,8,108,'2025-02-16',588,48,3.2,540),(89,8,108,'2025-03-01',589,49,3.2666666666666666,540),(90,8,108,'2025-03-16',590,20,1.3333333333333333,570),(91,8,108,'2025-04-01',591,21,1.4,570),(92,8,108,'2025-04-16',592,22,1.4666666666666666,570),(93,8,108,'2025-05-01',593,23,1.5333333333333334,570),(94,8,108,'2025-05-16',594,24,1.6,570),(95,8,108,'2025-06-01',595,25,1.6666666666666667,570),(96,8,108,'2025-06-16',596,26,1.7333333333333334,570),(97,1,101,'2025-12-01',520,30,2.5,520),(98,1,101,'2024-01-15',500,30,10,10),(99,1,101,'2025-03-18',620,100,-0.387596899,520),(100,1,101,'2025-03-18',620,100,-0.387596899,520),(101,1,101,'2025-03-18',620,100,-0.387596899,520),(102,1,102,'2025-03-18',650,126,-1.4,524),(103,1,102,'2025-03-18',750,226,-2.511111111,524),(104,1,101,'2025-12-01',520,0,0,520),(105,1,101,'2025-12-02',620,100,100,520),(106,1,101,'2025-12-01',515,NULL,NULL,NULL),(107,1,101,'2025-12-02',620,NULL,NULL,NULL),(108,1,101,'2025-12-01',500,NULL,NULL,NULL),(109,1,101,'2025-12-01',500,NULL,NULL,NULL),(110,1,101,'2025-12-05',515,NULL,NULL,NULL),(111,1,101,'2025-12-05',700,NULL,NULL,NULL),(112,1,101,'2025-12-01',520,30,2.5,520),(113,1,101,'2025-12-02',620,80,5,620),(114,1,101,'2025-12-01',520,30,2.5,520),(115,1,101,'2025-12-01',520,30,2.5,520),(116,1,101,'2025-11-01',510,23,1.533333333,480),(117,1,101,'2025-11-16',511,24,1.6,480),(118,1,101,'2025-12-01',520,30,2.5,520);
/*!40000 ALTER TABLE `meter_readings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meter_relationship`
--

DROP TABLE IF EXISTS `meter_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meter_relationship` (
  `relationship_id` int NOT NULL AUTO_INCREMENT,
  `meter_id` int NOT NULL,
  `reading_id` int NOT NULL,
  `building_id` int NOT NULL,
  `linking_date` date NOT NULL,
  PRIMARY KEY (`relationship_id`),
  KEY `meter_id` (`meter_id`),
  KEY `reading_id` (`reading_id`),
  KEY `building_id` (`building_id`),
  CONSTRAINT `meter_relationship_ibfk_1` FOREIGN KEY (`meter_id`) REFERENCES `number_of_meters` (`meter_id`),
  CONSTRAINT `meter_relationship_ibfk_2` FOREIGN KEY (`reading_id`) REFERENCES `meter_readings` (`reading_id`),
  CONSTRAINT `meter_relationship_ibfk_3` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meter_relationship`
--

LOCK TABLES `meter_relationship` WRITE;
/*!40000 ALTER TABLE `meter_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `meter_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `number_of_meters`
--

DROP TABLE IF EXISTS `number_of_meters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `number_of_meters` (
  `meter_id` int NOT NULL AUTO_INCREMENT,
  `meter_name` varchar(50) NOT NULL,
  `building_id` int NOT NULL,
  PRIMARY KEY (`meter_id`),
  KEY `building_id` (`building_id`),
  CONSTRAINT `number_of_meters_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `number_of_meters`
--

LOCK TABLES `number_of_meters` WRITE;
/*!40000 ALTER TABLE `number_of_meters` DISABLE KEYS */;
INSERT INTO `number_of_meters` VALUES (101,'Meter-1-H1',1),(102,'Meter-1-H2',2),(103,'Meter-1-H3',3),(104,'Meter-1-Library',4),(105,'Meter-1-Kravings',5),(106,'Meter-1-Anantam',6),(107,'Meter-1-Admin',7),(108,'Meter-1-Sports',8);
/*!40000 ALTER TABLE `number_of_meters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `bill_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `mode` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `paid_transaction_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `bill_id` (`bill_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,'2025-01-06','UPI',5468.57,'TXN100001'),(2,2,'2025-01-07','UPI',3209.73,'TXN100002'),(3,3,'2025-01-08','UPI',8489.64,'TXN100003'),(4,4,'2025-01-09','UPI',3035.82,'TXN100004'),(5,5,'2025-01-10','UPI',9145.2,'TXN100005'),(6,6,'2025-01-11','UPI',3007.8,'TXN100006'),(7,7,'2025-01-12','UPI',7294.52,'TXN100007'),(8,8,'2025-01-13','UPI',2491.59,'TXN100008'),(9,9,'2025-01-14','UPI',2006.37,'TXN100009'),(10,10,'2025-01-15','UPI',5325.3,'TXN100010'),(11,11,'2025-01-16','UPI',6354.89,'TXN100011'),(12,12,'2025-01-17','UPI',5119.35,'TXN100012'),(13,13,'2025-01-18','UPI',6221.9,'TXN100013'),(14,14,'2025-01-19','UPI',4643.33,'TXN100014'),(15,15,'2025-01-20','UPI',1981.92,'TXN100015'),(16,16,'2025-01-21','UPI',6537.01,'TXN100016'),(17,17,'2025-02-22','UPI',6116.21,'TXN100017'),(18,18,'2025-02-23','UPI',7117.18,'TXN100018'),(19,19,'2025-02-24','UPI',3838.5,'TXN100019'),(20,20,'2025-02-05','UPI',9423.22,'TXN100020'),(21,21,'2025-02-06','UPI',4050.39,'TXN100021'),(22,22,'2025-02-07','UPI',6371.52,'TXN100022'),(23,23,'2025-02-08','UPI',2033.14,'TXN100023'),(24,24,'2025-02-09','UPI',3557.26,'TXN100024'),(25,25,'2025-02-10','UPI',1365.29,'TXN100025'),(26,26,'2025-02-11','UPI',4068.02,'TXN100026'),(27,27,'2025-02-12','UPI',5564.32,'TXN100027'),(28,28,'2025-02-13','UPI',4908.42,'TXN100028'),(29,29,'2025-02-14','UPI',3098.12,'TXN100029'),(30,30,'2025-02-15','UPI',5611.58,'TXN100030'),(31,31,'2025-02-16','UPI',8243.06,'TXN100031'),(32,32,'2025-02-17','UPI',3291.73,'TXN100032'),(33,33,'2025-03-18','UPI',6290.02,'TXN100033'),(34,34,'2025-03-19','UPI',6579.15,'TXN100034'),(35,35,'2025-03-20','UPI',2245.74,'TXN100035'),(36,36,'2025-03-21','UPI',5014.99,'TXN100036'),(37,37,'2025-03-22','UPI',8266.84,'TXN100037'),(38,38,'2025-03-23','UPI',5996.67,'TXN100038'),(39,39,'2025-03-24','UPI',5108.48,'TXN100039'),(40,40,'2025-03-05','UPI',6439.56,'TXN100040'),(41,41,'2025-03-06','UPI',6587.24,'TXN100041'),(42,42,'2025-03-07','UPI',7254.27,'TXN100042'),(43,43,'2025-03-08','UPI',6844.8,'TXN100043'),(44,44,'2025-03-09','UPI',1920.37,'TXN100044'),(45,45,'2025-03-10','UPI',1934.84,'TXN100045'),(46,46,'2025-03-11','UPI',8676.39,'TXN100046'),(47,47,'2025-03-12','UPI',7709.94,'TXN100047'),(48,48,'2025-03-13','UPI',3338.35,'TXN100048'),(49,49,'2025-04-14','UPI',2590.1,'TXN100049'),(50,50,'2025-04-15','UPI',5010.55,'TXN100050'),(51,51,'2025-04-16','UPI',2315.41,'TXN100051'),(52,52,'2025-04-17','UPI',5107.05,'TXN100052'),(53,53,'2025-04-18','UPI',6481.95,'TXN100053'),(54,54,'2025-04-19','UPI',1851.51,'TXN100054'),(55,55,'2025-04-20','UPI',2978.52,'TXN100055'),(56,56,'2025-04-21','UPI',3274.06,'TXN100056'),(57,57,'2025-04-22','UPI',2773.96,'TXN100057'),(58,58,'2025-04-23','UPI',2701.5,'TXN100058'),(59,59,'2025-04-24','UPI',3447.43,'TXN100059'),(60,60,'2025-04-05','UPI',7678.08,'TXN100060'),(61,61,'2025-04-06','UPI',5394.33,'TXN100061'),(62,62,'2025-04-07','UPI',6191.39,'TXN100062'),(63,63,'2025-04-08','UPI',1649.61,'TXN100063'),(64,64,'2025-04-09','UPI',6555.42,'TXN100064'),(65,65,'2025-05-10','UPI',3870.12,'TXN100065'),(66,66,'2025-05-11','UPI',7972.75,'TXN100066'),(67,67,'2025-05-12','UPI',5173.97,'TXN100067'),(68,68,'2025-05-13','UPI',2737.54,'TXN100068'),(69,69,'2025-05-14','UPI',6294.02,'TXN100069'),(70,70,'2025-05-15','UPI',1345.67,'TXN100070'),(71,71,'2025-05-16','UPI',4566.33,'TXN100071'),(72,72,'2025-05-17','UPI',2332.6,'TXN100072'),(73,73,'2025-05-18','UPI',4263.89,'TXN100073'),(74,74,'2025-05-19','UPI',2101.83,'TXN100074'),(75,75,'2025-05-20','UPI',2256.78,'TXN100075'),(76,76,'2025-05-21','UPI',6385.95,'TXN100076'),(77,77,'2025-05-22','UPI',3265.3,'TXN100077'),(78,78,'2025-05-23','UPI',4349.24,'TXN100078'),(79,79,'2025-05-24','UPI',6783,'TXN100079'),(80,80,'2025-05-05','UPI',1912.49,'TXN100080'),(81,81,'2025-06-06','UPI',6232.4,'TXN100081'),(82,82,'2025-06-07','UPI',6154.21,'TXN100082'),(83,83,'2025-06-08','UPI',2745.37,'TXN100083'),(84,84,'2025-06-09','UPI',7584.31,'TXN100084'),(85,85,'2025-06-10','UPI',2247.22,'TXN100085'),(86,86,'2025-06-11','UPI',5305.67,'TXN100086'),(87,87,'2025-06-12','UPI',3009.08,'TXN100087'),(88,88,'2025-06-13','UPI',5756.41,'TXN100088'),(89,89,'2025-06-14','UPI',6300.22,'TXN100089'),(90,90,'2025-06-15','UPI',4843.64,'TXN100090'),(91,91,'2025-06-16','UPI',10182.44,'TXN100091'),(92,92,'2025-06-17','UPI',6429.87,'TXN100092'),(93,93,'2025-06-18','UPI',4228.07,'TXN100093'),(94,94,'2025-06-19','UPI',4685.18,'TXN100094'),(95,95,'2025-06-20','UPI',3836.18,'TXN100095'),(96,96,'2025-06-21','UPI',5825.99,'TXN100096');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff`
--

DROP TABLE IF EXISTS `tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariff` (
  `tariff_id` int NOT NULL AUTO_INCREMENT,
  `building_type` varchar(50) NOT NULL,
  `rate_per_unit` double NOT NULL,
  `fixed_charge` double NOT NULL,
  PRIMARY KEY (`tariff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff`
--

LOCK TABLES `tariff` WRITE;
/*!40000 ALTER TABLE `tariff` DISABLE KEYS */;
INSERT INTO `tariff` VALUES (1,'Hostel',6.5,150),(2,'Commercial',9,300),(3,'Canteen',7,200),(4,'Office',8,250),(5,'General',5.5,120);
/*!40000 ALTER TABLE `tariff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-27 17:39:22
