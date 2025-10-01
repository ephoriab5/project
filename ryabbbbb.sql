-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: r
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dystsyplina`
--

DROP TABLE IF EXISTS `dystsyplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dystsyplina` (
  `kod_dystsypliny` int(11) NOT NULL,
  `nazva_dystsypliny` char(30) DEFAULT NULL,
  `kod_vykladacha` int(11) DEFAULT NULL,
  PRIMARY KEY (`kod_dystsypliny`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dystsyplina`
--

LOCK TABLES `dystsyplina` WRITE;
/*!40000 ALTER TABLE `dystsyplina` DISABLE KEYS */;
INSERT INTO `dystsyplina` VALUES (1,'MATEMATIKA',1),(2,'PROGRAMYVANYA',2),(3,'MOVA',3),(4,'HIMIYA',4);
/*!40000 ALTER TABLE `dystsyplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hrupa20`
--

DROP TABLE IF EXISTS `hrupa20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hrupa20` (
  `kod_kafedry20` int(11) NOT NULL,
  `nazva_hrupy20` char(10) DEFAULT NULL,
  `kurs20` int(11) DEFAULT NULL,
  `chyslo_studentiv20` int(11) DEFAULT NULL,
  `prizvishche_kuratora20` char(20) DEFAULT NULL,
  PRIMARY KEY (`kod_kafedry20`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hrupa20`
--

LOCK TABLES `hrupa20` WRITE;
/*!40000 ALTER TABLE `hrupa20` DISABLE KEYS */;
INSERT INTO `hrupa20` VALUES (1,'OK',1,20,'SEREDA'),(2,'OA',1,25,'SIN'),(3,'TO',2,30,'SHPAK'),(4,'CO',2,35,'SHALAI');
/*!40000 ALTER TABLE `hrupa20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kafedra`
--

DROP TABLE IF EXISTS `kafedra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kafedra` (
  `kod_kafedry` int(11) NOT NULL,
  `nazva_kafedry` char(30) DEFAULT NULL,
  `zaviduvach_kafedry` char(20) DEFAULT NULL,
  `korpus` int(11) DEFAULT NULL,
  `fond_kafedry` int(11) DEFAULT NULL,
  PRIMARY KEY (`kod_kafedry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kafedra`
--

LOCK TABLES `kafedra` WRITE;
/*!40000 ALTER TABLE `kafedra` DISABLE KEYS */;
INSERT INTO `kafedra` VALUES (1,'OBSLUHOVOVANYA PC','SHMATKO',1,50000),(2,'ZASOBI PC','KULIK',2,200000);
/*!40000 ALTER TABLE `kafedra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otsinky`
--

DROP TABLE IF EXISTS `otsinky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otsinky` (
  `poriadkovyi_nomer` int(11) NOT NULL,
  `kod_studenta` int(11) DEFAULT NULL,
  `otsinka` int(11) DEFAULT NULL,
  `kod_dystsypliny` int(11) DEFAULT NULL,
  PRIMARY KEY (`poriadkovyi_nomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otsinky`
--

LOCK TABLES `otsinky` WRITE;
/*!40000 ALTER TABLE `otsinky` DISABLE KEYS */;
INSERT INTO `otsinky` VALUES (1,1,4,1),(2,2,5,2),(3,3,3,3),(4,4,4,4);
/*!40000 ALTER TABLE `otsinky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenty`
--

DROP TABLE IF EXISTS `studenty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studenty` (
  `kod_studenta` int(11) NOT NULL,
  `prizvyshchhe_studenta` char(20) DEFAULT NULL,
  `imia_studenta` char(20) DEFAULT NULL,
  `kod_hruy` int(11) DEFAULT NULL,
  PRIMARY KEY (`kod_studenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenty`
--

LOCK TABLES `studenty` WRITE;
/*!40000 ALTER TABLE `studenty` DISABLE KEYS */;
INSERT INTO `studenty` VALUES (1,'HELISH','OLEXANDR',1),(2,'PROC','OSTAP',2),(3,'TEREH','VOLODYA',3),(4,'UCA','NAZAR',4);
/*!40000 ALTER TABLE `studenty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabl`
--

DROP TABLE IF EXISTS `tabl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabl` (
  `a1` float DEFAULT NULL,
  `a2` float DEFAULT NULL,
  `a3` float DEFAULT NULL,
  `b1` tinytext DEFAULT NULL,
  `b2` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabl`
--

LOCK TABLES `tabl` WRITE;
/*!40000 ALTER TABLE `tabl` DISABLE KEYS */;
INSERT INTO `tabl` VALUES (3.454,100.5,10.75,'rare','gold');
/*!40000 ALTER TABLE `tabl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabl2`
--

DROP TABLE IF EXISTS `tabl2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabl2` (
  `a1` float DEFAULT NULL,
  `a2` float DEFAULT NULL,
  `a3` float DEFAULT NULL,
  `b1` tinytext DEFAULT NULL,
  `b2` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabl2`
--

LOCK TABLES `tabl2` WRITE;
/*!40000 ALTER TABLE `tabl2` DISABLE KEYS */;
INSERT INTO `tabl2` VALUES (2.5,1.2,0.5,'r','g');
/*!40000 ALTER TABLE `tabl2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vykladach`
--

DROP TABLE IF EXISTS `vykladach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vykladach` (
  `kod_vykladacha` int(14) NOT NULL,
  `kod_kafedry` int(14) DEFAULT NULL,
  `prizvishche_vykladacha` char(23) DEFAULT NULL,
  `imia_pobatkovi_vykladacha` char(43) DEFAULT NULL,
  `posada_vykladacha` char(23) DEFAULT NULL,
  `zarplata` int(14) DEFAULT NULL,
  `stazh` int(14) DEFAULT NULL,
  PRIMARY KEY (`kod_vykladacha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vykladach`
--

LOCK TABLES `vykladach` WRITE;
/*!40000 ALTER TABLE `vykladach` DISABLE KEYS */;
INSERT INTO `vykladach` VALUES (1,1,'LEH','VOLODYMYR OLEXANDROVICH','DIRECTOR',NULL,NULL),(2,1,'SHELEST','ROMAN PETROVICH','LABORANT',NULL,NULL),(3,2,'SINYO','STEPAN ROMANOVICH','VYKLADACH',NULL,NULL),(4,2,'MAMCHUR','MIKOLA VOLODYMUROVYCH','PROFESOR',NULL,NULL);
/*!40000 ALTER TABLE `vykladach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-01 10:06:56
