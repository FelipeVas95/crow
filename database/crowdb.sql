-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: univerfit
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day` (
  `idday` int NOT NULL AUTO_INCREMENT,
  `day` varchar(45) NOT NULL,
  PRIMARY KEY (`idday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_routine`
--

DROP TABLE IF EXISTS `day_routine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_routine` (
  `idday_routine` int NOT NULL,
  `idroutine` int NOT NULL,
  `idday` int NOT NULL,
  PRIMARY KEY (`idday_routine`),
  KEY `idday_idx` (`idday`),
  KEY `idroutine_idx` (`idroutine`),
  CONSTRAINT `idday` FOREIGN KEY (`idday`) REFERENCES `day` (`idday`),
  CONSTRAINT `idroutine` FOREIGN KEY (`idroutine`) REFERENCES `routine` (`idroutine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_routine`
--

LOCK TABLES `day_routine` WRITE;
/*!40000 ALTER TABLE `day_routine` DISABLE KEYS */;
/*!40000 ALTER TABLE `day_routine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise` (
  `idexercise` int NOT NULL AUTO_INCREMENT,
  `exercise` varchar(45) NOT NULL,
  `idtype_exercise` int NOT NULL,
  ` idmuscular_group` int NOT NULL,
  PRIMARY KEY (`idexercise`),
  KEY `idtype_exercise_idx` (`idtype_exercise`),
  KEY `idmuscular_group_idx` (` idmuscular_group`),
  CONSTRAINT `idmuscular_group` FOREIGN KEY (` idmuscular_group`) REFERENCES `muscular_group` (`idmuscular_group`),
  CONSTRAINT `idtype_exercise` FOREIGN KEY (`idtype_exercise`) REFERENCES `exercise_type` (`idtype_exercise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_day`
--

DROP TABLE IF EXISTS `exercise_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_day` (
  `idexercise_day` int NOT NULL,
  `idday` int NOT NULL,
  `idexercise` int NOT NULL,
  `series` varchar(45) NOT NULL,
  `repetition` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `rest` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  PRIMARY KEY (`idexercise_day`),
  KEY `idaday_idx` (`idday`),
  KEY `idexercise_idx` (`idexercise`),
  CONSTRAINT `idaday` FOREIGN KEY (`idday`) REFERENCES `day` (`idday`),
  CONSTRAINT `idexercise` FOREIGN KEY (`idexercise`) REFERENCES `exercise` (`idexercise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_day`
--

LOCK TABLES `exercise_day` WRITE;
/*!40000 ALTER TABLE `exercise_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercise_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_type`
--

DROP TABLE IF EXISTS `exercise_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_type` (
  `idtype_exercise` int NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idtype_exercise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_type`
--

LOCK TABLES `exercise_type` WRITE;
/*!40000 ALTER TABLE `exercise_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercise_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `idgender` int NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`idgender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muscular_group`
--

DROP TABLE IF EXISTS `muscular_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muscular_group` (
  `idmuscular_group` int NOT NULL,
  `muscular_group` varchar(45) NOT NULL,
  PRIMARY KEY (`idmuscular_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muscular_group`
--

LOCK TABLES `muscular_group` WRITE;
/*!40000 ALTER TABLE `muscular_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `muscular_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routine`
--

DROP TABLE IF EXISTS `routine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routine` (
  `idroutine` int NOT NULL AUTO_INCREMENT,
  `routine` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL,
  `idtype_routine` int NOT NULL,
  PRIMARY KEY (`idroutine`),
  KEY `idtype_routine_idx` (`idtype_routine`),
  CONSTRAINT `idtype_routine` FOREIGN KEY (`idtype_routine`) REFERENCES `type_routine` (`idtype_routine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routine`
--

LOCK TABLES `routine` WRITE;
/*!40000 ALTER TABLE `routine` DISABLE KEYS */;
/*!40000 ALTER TABLE `routine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_routine`
--

DROP TABLE IF EXISTS `type_routine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_routine` (
  `idtype_routine` int NOT NULL,
  `type_routine` varchar(45) NOT NULL,
  PRIMARY KEY (`idtype_routine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_routine`
--

LOCK TABLES `type_routine` WRITE;
/*!40000 ALTER TABLE `type_routine` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_routine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `weight` float NOT NULL,
  `age` int NOT NULL,
  `idgender` int NOT NULL,
  `exercise_historial` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `idgender_idx` (`idgender`),
  CONSTRAINT `idgender` FOREIGN KEY (`idgender`) REFERENCES `gender` (`idgender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'univerfit'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 23:21:22
