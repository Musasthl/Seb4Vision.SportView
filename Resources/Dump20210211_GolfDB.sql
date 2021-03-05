CREATE DATABASE  IF NOT EXISTS `golf` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `golf`;
-- MySQL dump 10.13  Distrib 5.6.51, for Win64 (x86_64)
--
-- Host: localhost    Database: golf
-- ------------------------------------------------------
-- Server version	5.6.51-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `courseid` bigint(20) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Holes` int(11) DEFAULT '0',
  `frontpar` int(11) DEFAULT '0',
  `BackPar` int(11) DEFAULT '0',
  `Par` int(11) DEFAULT '0',
  `frontmetres` int(11) DEFAULT '0',
  `backmetres` int(11) DEFAULT '0',
  `totalmetres` int(11) DEFAULT '0',
  `frontyards` int(11) DEFAULT '0',
  `backyards` int(11) DEFAULT '0',
  `totalyards` int(11) DEFAULT '0',
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Gary Player Country Club',18,36,36,72,3610,3553,7163,3947,3885,7832),(2,'Randpark Golf Club',18,35,36,71,3258,3604,6862,3564,3942,7506);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseholes`
--

DROP TABLE IF EXISTS `courseholes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courseholes` (
  `idcourseholes` int(11) NOT NULL,
  `courseid` int(11) DEFAULT NULL,
  `hole` int(11) DEFAULT NULL,
  `par` int(11) DEFAULT NULL,
  `yards` int(11) DEFAULT NULL,
  `metres` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcourseholes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseholes`
--

LOCK TABLES `courseholes` WRITE;
/*!40000 ALTER TABLE `courseholes` DISABLE KEYS */;
INSERT INTO `courseholes` VALUES (1,1,1,5,547,500),(2,1,2,4,458,419),(3,1,3,3,219,200),(4,1,4,4,444,406),(5,1,5,5,601,550),(6,1,6,4,471,431),(7,1,7,3,211,193),(8,1,8,4,478,437),(9,1,9,4,518,474),(10,1,10,4,441,403),(11,1,11,5,569,520),(12,1,12,4,449,411),(13,1,13,3,213,195),(14,1,14,4,491,449),(15,1,15,4,424,388),(16,1,16,3,210,192),(17,1,17,4,492,450),(18,1,18,5,596,545),(19,2,1,4,407,372),(20,2,2,4,503,460),(21,2,3,4,418,382),(22,2,4,5,597,546),(23,2,5,3,182,166),(24,2,6,4,400,366),(25,2,7,4,468,428),(26,2,8,3,208,190),(27,2,9,4,381,348),(28,2,10,4,487,445),(29,2,11,4,467,427),(30,2,12,5,593,542),(31,2,13,4,442,404),(32,2,14,5,547,500),(33,2,15,3,188,172),(34,2,16,4,488,446),(35,2,17,3,223,204),(36,2,18,4,507,464);
/*!40000 ALTER TABLE `courseholes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `playerid` bigint(20) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `DOB` datetime DEFAULT CURRENT_TIMESTAMP,
  `webserverid` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT '',
  `country` varchar(200) DEFAULT '',
  `photopath` varchar(200) DEFAULT '',
  `videopath` varchar(200) DEFAULT '',
  `Ranking` varchar(45) DEFAULT NULL,
  `Bio1` varchar(1000) DEFAULT NULL,
  `Bio2` varchar(1000) DEFAULT NULL,
  `Bio3` varchar(1000) DEFAULT NULL,
  `Logo1` varchar(500) DEFAULT '',
  `Logo2` varchar(500) DEFAULT '',
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Wilco','Nienaber','2021-02-08 17:11:28','43143',NULL,'RSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Jake','Redman','2021-02-08 17:11:28','36648',NULL,'RSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'David','Law','2021-02-08 17:11:28','37562',NULL,'SCO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Scott','Jamieson','2021-02-08 17:11:28','34771',NULL,'SCO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Adrian','Otaegui','2021-02-08 00:00:00','37793','','ESP','','','','','','',NULL,NULL),(6,'Daniel','Van Tonder','2021-02-08 17:11:28','38017',NULL,'RSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Ruan','Conradie','2021-02-08 17:11:28','43166',NULL,'RSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Oliver','Farr','2021-02-08 17:11:28','36301',NULL,'WAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Shaun','Norris','2021-02-08 17:11:28','32013',NULL,'RSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Deon','Germishuys','2021-02-08 17:11:28','43142',NULL,'RSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progresstatus`
--

DROP TABLE IF EXISTS `progresstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progresstatus` (
  `statusid` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progresstatus`
--

LOCK TABLES `progresstatus` WRITE;
/*!40000 ALTER TABLE `progresstatus` DISABLE KEYS */;
INSERT INTO `progresstatus` VALUES (0,'Not Started'),(1,'In Progress'),(2,'Completed');
/*!40000 ALTER TABLE `progresstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `QueriesID` int(11) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Query` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`QueriesID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rounds`
--

DROP TABLE IF EXISTS `rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rounds` (
  `roundid` bigint(20) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `statusid` int(11) DEFAULT '0',
  PRIMARY KEY (`roundid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rounds`
--

LOCK TABLES `rounds` WRITE;
/*!40000 ALTER TABLE `rounds` DISABLE KEYS */;
INSERT INTO `rounds` VALUES (1,'Round 1',1),(2,'Round 2',0),(3,'Round 3',0),(4,'Round 4',0),(1612735804051,'PlayOffs',0);
/*!40000 ALTER TABLE `rounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `idscore` bigint(20) NOT NULL,
  `playerid` bigint(20) DEFAULT '-1',
  `courseid` bigint(20) NOT NULL,
  `roundid` bigint(20) NOT NULL,
  `Tournamentid` bigint(20) NOT NULL,
  `position` int(11) DEFAULT '-1',
  `TeeTime` datetime DEFAULT NULL,
  `startingtee` int(11) DEFAULT NULL,
  `holesplayed` int(11) DEFAULT '-1',
  `Hole1` int(11) DEFAULT '0',
  `Hole2` int(11) DEFAULT '0',
  `Hole3` int(11) DEFAULT '0',
  `Hole4` int(11) DEFAULT '0',
  `Hole5` int(11) DEFAULT '0',
  `Hole6` int(11) DEFAULT '0',
  `Hole7` int(11) DEFAULT '0',
  `Hole8` int(11) DEFAULT '0',
  `Hole9` int(11) DEFAULT '0',
  `Hole10` int(11) DEFAULT '0',
  `Hole11` int(11) DEFAULT '0',
  `Hole12` int(11) DEFAULT '0',
  `Hole13` int(11) DEFAULT '0',
  `Hole14` int(11) DEFAULT '0',
  `Hole15` int(11) DEFAULT '0',
  `Hole16` int(11) DEFAULT '0',
  `Hole17` int(11) DEFAULT '0',
  `Hole18` int(11) DEFAULT '0',
  PRIMARY KEY (`idscore`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,1,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,3,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1612695381395,10,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1612695409125,9,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1612695409444,2,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1612695409622,8,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1612696249748,7,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1612696249931,4,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shots`
--

DROP TABLE IF EXISTS `shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shots` (
  `shotsid` int(11) NOT NULL,
  `idscore` bigint(20) NOT NULL,
  `holeid` int(11) NOT NULL,
  `strokes` int(11) DEFAULT NULL,
  `Putts` int(11) DEFAULT NULL,
  `Drive` int(11) DEFAULT NULL,
  `Chips` int(11) DEFAULT NULL,
  `Sand` int(11) DEFAULT NULL,
  `Penalties` int(11) DEFAULT NULL,
  `HoleStatus` int(11) DEFAULT '0',
  PRIMARY KEY (`shotsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
/*!40000 ALTER TABLE `shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament` (
  `tournamentid` bigint(20) NOT NULL,
  `courseid` bigint(20) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `BeginDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `LastRoundCompleted` varchar(100) DEFAULT NULL,
  `CurrentRound` varchar(100) DEFAULT NULL,
  `statusid` int(11) DEFAULT NULL,
  `webserverid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`tournamentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,1,'SA Open Championship','South Africa','2020-12-04 00:00:00','2020-12-07 00:00:00','9','9',1,2020105),(2,2,'Joburg Open','South Africa','2020-11-19 00:00:00','2020-11-23 00:00:00','9','9',0,2020103);
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uiselected`
--

DROP TABLE IF EXISTS `uiselected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uiselected` (
  `iduiselected` int(11) NOT NULL,
  `SelectedTournament` bigint(20) DEFAULT '-1',
  `SelectedScoreEntry` bigint(20) DEFAULT '-1',
  `SelectedHole` int(11) DEFAULT '-1',
  `SelectedRound` bigint(20) DEFAULT '-1',
  `updatetimestamp` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`iduiselected`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uiselected`
--

LOCK TABLES `uiselected` WRITE;
/*!40000 ALTER TABLE `uiselected` DISABLE KEYS */;
INSERT INTO `uiselected` VALUES (0,1,2,-1,1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `uiselected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'golf'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-11 10:48:45
