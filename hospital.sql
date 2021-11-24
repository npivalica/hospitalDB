-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `town_ID` int DEFAULT NULL,
  PRIMARY KEY (`doctor_ID`),
  KEY `town_ID` (`town_ID`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`town_ID`) REFERENCES `town` (`town_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Miles','Teller',1),(2,'Alex','Turner',2),(3,'Nikolina','Pivalica',1),(4,'Ed','Sheeran',5),(5,'Henry','Cavill',5),(6,'Leonardo','DiCaprio',3),(7,'Harry','Potter',4),(8,'Frodo','Baggins',4),(9,'Bilbo','Baggins',4),(10,'Hermione','Granger',3),(11,'Miki','Ignjatovic',2);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `town_ID` int DEFAULT NULL,
  PRIMARY KEY (`patient_ID`),
  KEY `town_ID` (`town_ID`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`town_ID`) REFERENCES `town` (`town_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Miles','Teller',1),(2,'Alex','Turner',2),(3,'Nikolina','Pivalica',1),(4,'Ed','Sheeran',5),(5,'Henry','Cavill',5),(6,'Leonardo','DiCaprio',3),(7,'Harry','Potter',4),(8,'Frodo','Baggins',4),(9,'Bilbo','Baggins',4),(10,'Hermione','Granger',3),(11,'Miki','Ignjatovic',2);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `town`
--

DROP TABLE IF EXISTS `town`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `town` (
  `town_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`town_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `town`
--

LOCK TABLES `town` WRITE;
/*!40000 ALTER TABLE `town` DISABLE KEYS */;
INSERT INTO `town` VALUES (1,'London','12345'),(2,'Yorkshire','56945'),(3,'Sheffield','12885'),(4,'Shire','88845'),(5,'Surrey','12995');
/*!40000 ALTER TABLE `town` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `visit_ID` int NOT NULL AUTO_INCREMENT,
  `doctor_ID` int DEFAULT NULL,
  `patient_ID` int DEFAULT NULL,
  PRIMARY KEY (`visit_ID`),
  KEY `doctor_ID` (`doctor_ID`),
  KEY `patient_ID` (`patient_ID`),
  CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`doctor_ID`) REFERENCES `doctor` (`doctor_ID`),
  CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`patient_ID`) REFERENCES `patient` (`patient_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,1,3),(2,2,5),(3,1,8),(4,4,6),(5,8,6),(6,4,7),(7,3,1),(8,5,9),(9,6,11),(10,7,4),(11,3,10),(12,4,7),(13,9,5),(14,11,5),(15,4,6),(16,11,8);
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 12:57:52
