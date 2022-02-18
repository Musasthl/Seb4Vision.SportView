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
-- Table structure for table `amateurs`
--

DROP TABLE IF EXISTS `amateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amateurs` (
  `idamateurs` int(11) NOT NULL AUTO_INCREMENT,
  `Pos` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Points` varchar(45) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idamateurs`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amateurs`
--

LOCK TABLES `amateurs` WRITE;
/*!40000 ALTER TABLE `amateurs` DISABLE KEYS */;
INSERT INTO `amateurs` VALUES (491,'1','FAIRWAY NINJAS','-51','RSA'),(492,'2','GOLDEN KNIGHTS','-45','RSA'),(493,'3','SA POLICHEM','-43','RSA'),(494,'','AZMET','-43','RSA'),(495,'5','SIMCURA BUSINESS SYSTEMS','-42','RSA'),(496,'6','COOPERS','-41','RSA'),(497,'7','3SUM','-39','RSA'),(498,'8','LUCKY STRIKE','-38','RSA'),(499,'9','BLITZKRIEG','-37','RSA'),(500,'10','TRICOLT','-36','GER');
/*!40000 ALTER TABLE `amateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `countryid` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Flag` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'ESP','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain '),(2,'SWE','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden '),(3,'RSA','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa'),(4,'NOR','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway '),(5,'AUT','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria '),(6,'SUI','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland '),(7,'SCO','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland '),(8,'FRA','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France '),(9,'SWZ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland '),(10,'FIN','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland '),(11,'DEN','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark '),(12,'GER','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany '),(13,'NGR','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Nigeria '),(14,'CZE','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic '),(15,'ENG','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England '),(16,'NED','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands '),(17,'ITA','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy '),(18,'BEL','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Belgium '),(19,'USA','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) '),(20,'WAL','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales'),(21,'RUS','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Russian_Federation '),(22,'ARG','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Argentina '),(23,'BRA','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil'),(24,'SLO','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Slovenia '),(25,'MOR','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Morocco '),(26,'AUS','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Australia '),(27,'IND','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/India');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `courseid` bigint(20) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `ShortDesc` varchar(45) DEFAULT NULL,
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
  `FullName` varchar(45) DEFAULT NULL,
  `ColorCode` int(11) DEFAULT '0',
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1614697043090,'GARY PLAYER COUNTRY CLUB','GARY PLAYER COUNTRY CLUB',18,36,36,72,3421,3251,6672,3741,3555,7296,'MONTAGU',1);
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
  `courseid` bigint(20) DEFAULT NULL,
  `HoleDesc` varchar(80) DEFAULT NULL,
  `HoleNumber` int(11) DEFAULT '-1',
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
INSERT INTO `courseholes` VALUES (1,1614697043090,'Hole 1',1,4,0,336),(2,1614697043090,'Hole 2',2,5,0,509),(3,1614697043090,'Hole 3',3,4,0,441),(4,1614697043090,'Hole 4',4,5,0,541),(5,1614697043090,'Hole 5',5,3,0,189),(6,1614697043090,'Hole 6',6,4,0,432),(7,1614697043090,'Hole 7',7,3,0,179),(8,1614697043090,'Hole 8',8,4,0,427),(9,1614697043090,'Hole 9',9,4,0,367),(10,1614697043090,'Hole 10',10,4,0,313),(11,1614697043090,'Hole 11',11,4,0,399),(12,1614697043090,'Hole 12',12,3,0,169),(13,1614697043090,'Hole 13',13,5,0,527),(14,1614697043090,'Hole 14',14,3,0,137),(15,1614697043090,'Hole 15',15,4,0,406),(16,1614697043090,'Hole 16',16,4,0,369),(17,1614697043090,'Hole 17',17,5,0,512),(18,1614697043090,'Hole 18',18,4,0,419);
/*!40000 ALTER TABLE `courseholes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databaseversion`
--

DROP TABLE IF EXISTS `databaseversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databaseversion` (
  `idDataBaseVersion` int(11) NOT NULL,
  `VersionDescription` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idDataBaseVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databaseversion`
--

LOCK TABLES `databaseversion` WRITE;
/*!40000 ALTER TABLE `databaseversion` DISABLE KEYS */;
INSERT INTO `databaseversion` VALUES (1,'Golf2021-02-24');
/*!40000 ALTER TABLE `databaseversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `matchid` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'11'),(12,'12'),(13,'13'),(14,'14'),(15,'15');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
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
  `Fullname` varchar(250) DEFAULT '',
  `DOB` datetime DEFAULT CURRENT_TIMESTAMP,
  `webserverid` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT '',
  `country` varchar(200) DEFAULT '',
  `photopath` varchar(200) DEFAULT '',
  `videopath` varchar(200) DEFAULT '',
  `Ranking` varchar(45) DEFAULT NULL,
  `Pro` int(11) DEFAULT '-1',
  `Bio1` varchar(1000) DEFAULT NULL,
  `Bio2` varchar(1000) DEFAULT NULL,
  `Bio3` varchar(1000) DEFAULT NULL,
  `Logo1` varchar(500) DEFAULT '',
  `Logo2` varchar(500) DEFAULT '',
  `countryFlag` varchar(1000) DEFAULT '',
  `GroupID` int(11) DEFAULT '0',
  `Matchid` int(11) DEFAULT '-1',
  `Points` varchar(45) DEFAULT '0',
  `Events` int(11) DEFAULT '0',
  `MatchidIndex` int(11) DEFAULT '-1',
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (-1,'','','','1996-03-11 00:00:00','','','','','',NULL,-1,NULL,NULL,NULL,'','','',0,-1,'0',0,-1),(1614872890756,'ADRIEL','POONAN','ADRIEL POONAN','1995-10-11 00:00:00','POO004','','RSA','','',NULL,0,'49.24%','74.72','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,22,'0',0,3),(1614872890758,'CHRIS','SWANEPOEL','CHRIS SWANEPOEL','1984-11-22 00:00:00','SWA010','','RSA','','',NULL,0,'56.47%','73.90','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1614872890760,'DESNE','VAN DEN BERGH','DESNE VAN DEN BERGH','1989-10-20 00:00:00','VAN186','','RSA','','',NULL,0,'52.58%','72.94','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,50,'0',0,2),(1614872890763,'PIETER','MOOLMAN','PIETER MOOLMAN','1991-02-26 00:00:00','MOO018','','RSA','','',NULL,0,'58.33%','71.90','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,8,'0',0,3),(1614872890764,'JARED','HARVEY','JARED HARVEY','1988-08-06 00:00:00','HAR040','','RSA','','',NULL,0,'67.00%','71.82','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,35,'0',0,1),(1614872890765,'MUSIWALO','NETHUNZWI','MUSIWALO NETHUNZWI','1989-04-24 00:00:00','NET003','','RSA','','',NULL,0,'52.84%','75.73','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,40,'0',0,1),(1614872890766,'JACQUES','KRUYSWIJK','JACQUES KRUYSWIJK','1992-10-16 00:00:00','KRU019','','RSA','','',NULL,0,'55.88%','69.14','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,31,'49,375.00',2,1),(1614872890767,'JAKE','ROOS','JAKE ROOS','1980-10-20 00:00:00','ROO003','','RSA','','',NULL,0,'56.65%','70.86','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,42,'116,050.00',3,2),(1614872890768,'RUAN','KORB','RUAN KORB','1993-12-03 00:00:00','KOR003','','RSA','','',NULL,0,'54.74%','71.47','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,34,'0',0,2),(1614872890769,'JACO','PRINSLOO','JACO PRINSLOO','1989-08-23 00:00:00','PRI022','','RSA','','',NULL,0,'59.30%','69.82','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,6,'184,860.71',3,1),(1614872890770,'JAKE','REDMAN','JAKE REDMAN','1987-04-26 00:00:00','RED004','','RSA','','',NULL,0,'48.19%','71.98','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,45,'106,850.00',3,3),(1614872890771,'ALEX','HAINDL','ALEX HAINDL','1983-02-03 00:00:00','HAI002','','RSA','','',NULL,0,'64.80%','71.68','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,33,'0',0,3),(1614872890772,'THRISTON','LAWRENCE','THRISTON LAWRENCE','1996-12-03 00:00:00','LAW008','','RSA','','',NULL,0,'50.43%','71.06','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,30,'100,650.00',3,3),(1614872890773,'OCKIE','STRYDOM','OCKIE STRYDOM','1985-01-08 00:00:00','STR011','','RSA','','',NULL,0,'59.79%','71.39','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,46,'0',0,1),(1614872890774,'JACQUES','BLAAUW','JACQUES BLAAUW','1986-02-12 00:00:00','BLA019','','RSA','','',NULL,0,'61.34%','70.41','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,47,'0',0,3),(1614872890776,'JEAN','HUGO','JEAN HUGO','1975-12-03 00:00:00','HUG004','','RSA','','',NULL,0,'54.15%','71.52','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,33,'84,766.67',3,2),(1614872890777,'ADILSON','DA SILVA','ADILSON DA SILVA','1972-01-24 00:00:00','DAS001','','BRA','','',NULL,0,'','','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil',0,7,'51,450.00',3,1),(1614872890778,'JJ','SENEKAL','JJ SENEKAL','1988-01-25 00:00:00','SEN004','','RSA','','',NULL,0,'47.17%','73.77','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,3,'0',0,2),(1614872890779,'JAMES','KINGSTON','JAMES KINGSTON','1965-11-30 00:00:00','KIN001','','RSA','','',NULL,0,'68.78%','70.76','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'0',0,3),(1614872890780,'RHYS','ENOCH','RHYS ENOCH','1988-06-16 00:00:00','ENO002','','WAL','','',NULL,0,'60.00%','70.14','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales',0,45,'158,500.00',1,1),(1614872890781,'HENNIE','O\'KENNEDY','HENNIE O\'KENNEDY','1996-09-02 00:00:00','OKE004','','RSA','','',NULL,0,'57.25%','72.61','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,49,'0',0,1),(1614872890782,'LUKE','BROWN','LUKE BROWN','1998-06-02 00:00:00','BRO037','','RSA','','',NULL,0,'70.58%','71.32','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,32,'0',0,1),(1614872890783,'MALCOLM','MITCHELL','MALCOLM MITCHELL','1994-12-11 00:00:00','MIT007','','RSA','','',NULL,0,'58.32%','71.19','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,28,'0',0,1),(1614872890784,'TRISTEN','STRYDOM','TRISTEN STRYDOM','1997-02-21 00:00:00','STR026','','RSA','','',NULL,0,'51.70%','70.32','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,8,'83,375.00',3,2),(1614872890785,'HEINRICH','BRUINERS','HEINRICH BRUINERS','1987-10-07 00:00:00','BRU006','','RSA','','',NULL,0,'51.76%','72.12','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,32,'0',0,3),(1614872890786,'LYLE','ROWE','LYLE ROWE','1987-06-13 00:00:00','ROW005','','RSA','','',NULL,0,'56.56%','71.02','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,45,'0',0,2),(1614872890787,'DEAN','BURMESTER','DEAN BURMESTER','1989-06-02 00:00:00','BUR025','','RSA','','',NULL,0,'53.57%','68.33','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,17,'97,500.00',1,2),(1614872890788,'ZANDER','LOMBARD','ZANDER LOMBARD','1995-01-18 00:00:00','LOM010','','RSA','','',NULL,0,'21.43%','73.50','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,17,'0',0,1),(1614872890789,'JACO','AHLERS','JACO AHLERS','1982-11-19 00:00:00','AHL001','','RSA','','',NULL,0,'63.56%','69.79','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,17,'0',0,3),(1614872890790,'DARREN','FICHARDT','DARREN FICHARDT','1975-05-13 00:00:00','FIC002','','RSA','','',NULL,0,'68.18%','70.70','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0,-1),(1614872890791,'KEENAN','DAVIDSE','KEENAN DAVIDSE','1989-05-10 00:00:00','DAV019','','RSA','','',NULL,0,'59.49%','71.79','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,42,'0',0,1),(1614872890792,'LOUIS','DE JAGER','LOUIS DE JAGER','1987-03-30 00:00:00','DEJ006','','RSA','','',NULL,0,'','72.75','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,16,'0',0,1),(1614872890794,'NEIL','SCHIETEKAT','NEIL SCHIETEKAT','1984-01-31 00:00:00','SCH044','','RSA','','',NULL,0,'68.60%','69.96','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,44,'111,400.00',3,3),(1614872890795,'WILCO','NIENABER','WILCO NIENABER','2000-04-07 00:00:00','NIE008','','RSA','','',NULL,0,'57.54%','70.69','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0,3),(1614872890796,'DYLAN','NAIDOO','DYLAN NAIDOO','1992-02-21 00:00:00','NAI013','','RSA','','',NULL,0,'54.85%','71.71','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,44,'0',0,2),(1614872890798,'MERRICK','BREMNER','MERRICK BREMNER','1986-03-26 00:00:00','BRE005','','RSA','','',NULL,0,'45.69%','74.03','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'0',0,2),(1614872890799,'SHAUN','NORRIS','SHAUN NORRIS','1982-05-14 00:00:00','NOR008','','RSA','','',NULL,0,'38.46%','72.00','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,43,'0',0,2),(1614872890800,'JAYDEN','SCHAPER','JAYDEN SCHAPER','2001-03-15 00:00:00','SCH079','','RSA','','',NULL,0,'57.55%','71.21','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,42,'0',0,3),(1614872890801,'GARRICK','HIGGO','GARRICK HIGGO','1999-05-12 00:00:00','HIG006','','RSA','','',NULL,0,'54.76%','69.67','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,5,'0',0,1),(1614872890802,'TOTO','THIMBA JNR','TOTO THIMBA JNR','1986-02-10 00:00:00','THI001','','RSA','','',NULL,0,'65.06%','73.27','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,48,'0',0,1),(1614872890803,'MATIAS','CALDERON','','1991-12-18 00:00:00','CAL012','','CHL','','',NULL,0,'59.12%','70.92','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Chile',0,NULL,'0',0,-1),(1614872890804,'ANDRE','NEL','ANDRE NEL','1995-05-31 00:00:00','NEL019','','RSA','','',NULL,0,'52.92%','72.77','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1614872890808,'MJ','VILJOEN','MJ VILJOEN','1995-05-08 00:00:00','VIL011','','RSA','','',NULL,0,'70.60%','70.68','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,7,'70,075.00',3,3),(1614872890810,'HENNIE','DU PLESSIS','HENNIE DU PLESSIS','1996-10-14 00:00:00','DUP029','','RSA','','',NULL,0,'65.11%','70.76','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,15,'54,500.00',2,2),(1614872890812,'CHRISTIAAN','BASSON','CHRISTIAAN BASSON','1984-04-30 00:00:00','BAS007','','RSA','','',NULL,0,'61.41%','71.89','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,6,'0',0,2),(1614872890813,'LUKE','JERLING','LUKE JERLING','1992-07-10 00:00:00','JER001','','RSA','','',NULL,0,'41.05%','71.54','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,20,'0',0,2),(1614872890814,'STEVE','SURRY','STEVE SURRY','1982-02-11 00:00:00','SUR001','','ENG','','',NULL,0,'67.44%','71.31','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England',0,20,'0',0,3),(1614872890815,'DANIEL','GREENE','DANIEL GREENE','1985-08-05 00:00:00','GRE022','','RSA','','',NULL,0,'62.76%','71.39','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,16,'0',0,3),(1614872890816,'JAMES','DU PREEZ','JAMES HART DU PREEZ','1995-10-13 00:00:00','DUP028','','RSA','','',NULL,0,'46.26%','71.47','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,47,'0',0,1),(1614872890817,'RUAN','DE SMIDT','RUAN DE SMIDT','1989-10-25 00:00:00','DES005','','RSA','','',NULL,0,'48.87%','74.58','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,2,'0',0,3),(1614872890818,'STEPHEN','FERREIRA','STEPHEN FERREIRA','1991-12-06 00:00:00','FER028','','POR','','',NULL,0,'57.98%','71.88','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal',0,2,'0',0,2),(1614872890819,'DEON','GERMISHUYS','DEON GERMISHUYS','1999-10-22 00:00:00','GER017','','RSA','','',NULL,0,'70.68%','71.29','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'0',0,1),(1614872890820,'ANTHONY','MICHAEL','ANTHONY MICHAEL','1985-08-22 00:00:00','MIC009','','RSA','','',NULL,0,'47.64%','71.12','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,41,'60,166.67',3,2),(1614872890821,'KYLE','BARKER','KYLE BARKER','1998-02-11 00:00:00','BAR054','','RSA','','',NULL,0,'47.90%','72.68	','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,11,'0',0,1),(1614872890822,'DOUG','MCGUIGAN','DOUG MCGUIGAN','1970-08-07 00:00:00','MCG001','','SCO','','',NULL,0,'69.08%','72.11','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland',0,10,'0',0,2),(1614872890823,'CALLUM','MOWAT','CALLUM MOWAT','1992-02-11 00:00:00','MOW001','','RSA','','',NULL,0,'50.45%','73.64','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,34,'0',0,1),(1614872890824,'CJ','DU PLESSIS','CJ DU PLESSIS','1992-02-04 00:00:00','DUP022','','RSA','','',NULL,0,'67.71%','71.29','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,8,'0',0,1),(1614872890825,'ESTIAAN','CONRADIE','ESTIAAN CONRADIE','1997-10-12 00:00:00','CON007','','RSA','','',NULL,0,'50.55%','71.59','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,31,'0',0,3),(1614872890826,'FREDRIK','FROM','FREDRIK FROM','1989-02-08 00:00:00','FRO006','','SWE','','',NULL,0,'74.68%','71.05','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0,-1),(1614872890828,'CLINTON','GROBLER','CLINTON GROBLER','1995-05-09 00:00:00','GRO026','','RSA','','',NULL,0,'56.27%','72.31','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,24,'0',0,1),(1614872890830,'ROURKE','VAN DER SPUY','ROURKE VAN DER SPUY','1990-01-11 00:00:00','VAN178','','RSA','','',NULL,0,'53.63%','73.38','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,3,'0',0,3),(1614872890831,'ULRICH','VAN DEN BERG','ULRICH VAN DEN BERG','1975-01-13 00:00:00','VAN060','','RSA','','',NULL,0,'67.65%','71.43','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,47,'0',0,2),(1614872890832,'MARTIN','ROHWER','MARTIN ROHWER','1993-08-24 00:00:00','ROH001','','RSA','','',NULL,0,'59.50%','70.13','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,32,'128,450.00',3,2),(1614872890833,'HENNIE','OTTO','HENNIE OTTO','1976-06-25 00:00:00','OTT002','','RSA','','',NULL,0,'63.35%','71.30','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'118,000.00',3,1),(1614872890835,'MICHAEL','PALMER','MICHAEL PALMER','1989-11-17 00:00:00','PAL008','','RSA','','',NULL,0,'53.38%','70.83','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0,3),(1614872890836,'RUAN','CONRADIE','RUAN CONRADIE','1995-08-08 00:00:00','CON004','','RSA','','',NULL,0,'60.90%','70.95','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,46,'0',0,2),(1614872890837,'KEITH','HORNE','KEITH HORNE','1971-06-09 00:00:00','HOR002','','RSA','','',NULL,0,'64.80%','72.24','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1614872890838,'JACO','VAN ZYL','JACO VAN ZYL','1979-02-23 00:00:00','VAN062','','RSA','','',NULL,0,'63.16%','71.45','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,29,'0',0,2),(1614872890839,'TREVOR','FISHER JNR','TREVOR FISHER JNR','1979-06-08 00:00:00','FIS005','','RSA','','',NULL,0,'65.12%','70.86','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',0,7,'56,825.00',3,2),(1614872890840,'OLIVER','BEKKER','OLIVER BEKKER','1984-12-11 00:00:00','BEK004','','RSA','','',NULL,0,'59.55%','68.43','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,15,'68,760.71',3,1),(1614872890841,'JC','RITCHIE','JC RITCHIE','1994-02-24 00:00:00','RIT004','','RSA','','',NULL,0,'61.66%','69.88','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0,1),(1614872890842,'JBE\'','KRUGER','JBE\' KRUGER','1986-06-23 00:00:00','KRU013','','RSA','','',NULL,0,'69.46%','68.38','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,20,'158,500.00',3,1),(1615544865998,'MICHAEL','HOLLICK','MICHAEL HOLLICK','2021-03-12 10:27:48','HOL016','','RSA','','',NULL,0,'62.27%','72.35','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,9,'0',0,1),(1615544868676,'DANIEL','VAN TONDER','DANIEL VAN TONDER','2021-03-12 10:27:49','VAN162','','RSA','','',NULL,0,'54.08%','69.50','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,31,'97,500.00',1,2),(1615544869184,'THANDA','MAVUNDLA','THANDA MAVUNDLA','2021-03-12 10:27:49','MAV004','','RSA','','',NULL,0,'68.42%','73.89',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,49,'0',0,3),(1615544869514,'ANDRE','BOSSERT','','2021-03-12 10:27:49','BOS001','','SUI','','',NULL,0,'','70.67','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1615544869856,'PEETIE','VAN DER MERWE','PEETIE VAN DER MERWE','2021-03-12 10:27:50','VAN283','','RSA','','',NULL,0,'58.39%','72.91',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,35,'0',0,2),(1615544870238,'JASON','ROETS','JASON ROETS','2021-03-12 10:27:50','ROE009','','RSA','','',NULL,0,'49.21%','73.43',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,24,'0',0,2),(1615544870433,'ROBERTO','LUPINI','ROBERTO LUPINI','2021-03-12 10:27:50','LUP002','','RSA','','',NULL,0,'47.56%','71.95','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544870564,'KEAGAN','THOMAS','KEAGAN THOMAS','2021-03-12 10:27:51','THO041','','RSA','','',NULL,0,'66.30%','70.55',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,41,'0',0,1),(1615544870980,'PAUL','BOSHOFF','PAUL BOSHOFF','2021-03-12 10:27:51','BOS015','','RSA','','',NULL,0,'72.39%','71.87','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,49,'0',0,2),(1615544871120,'WALLIE','COETSEE','WALLIE COETSEE','2021-03-12 10:27:51','COE001','','RSA','','',NULL,0,'81.70%','73.65','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,25,'0',0,1),(1615544871281,'COERT','GROENEWALD','COERT GROENEWALD','2021-03-12 10:27:51','GRO014','','RSA','','',NULL,0,'58.54%','73.22',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,12,'0',0,3),(1615544871438,'WYNAND','DINGLE','WYNAND DINGLE','2021-03-12 10:27:51','DIN004','','RSA','','',NULL,0,'49.53%','73.09',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,10,'0',0,1),(1615544871565,'HAYDEN','GRIFFITHS','HAYDEN GRIFFITHS','2021-03-12 10:27:51','GRI013','','RSA','','',NULL,0,'52.49%','73.33',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,50,'0',0,3),(1615544871744,'MADALITSO','MUTHIYA','MADALITSO MUTHIYA','2021-03-12 10:27:51','MUT002','','ZAM','','',NULL,0,'62.03%','71.70','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,28,'0',0,2),(1615544871830,'JASON','SMITH','JASON SMITH','2021-03-12 10:27:52','SMI059','','RSA','','',NULL,0,'64.97%','72.41',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,36,'0',0,3),(1615544871971,'SHALAN','GOVENDER','SHALAN GOVENDER','2021-03-12 10:27:52','GOV005','','RSA','','',NULL,0,'53.99%','77.04','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,39,'0',0,2),(1615544872087,'STUART','SMITH','STUART SMITH','2021-03-12 10:27:52','SMI046','','BOT','','',NULL,0,'52.81%','72.80','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Botswana ',0,NULL,'0',0,-1),(1615544872221,'BYRON','COETZEE','','2021-03-12 10:27:52','COE034','','RSA','','',NULL,0,'71.43%','72.80','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544872355,'PHILIP','GEERTS','PHILIP GEERTS','2021-03-12 10:27:52','GEE003','','ITA','','',NULL,0,'64.08%','74.04','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,9,'0',0,3),(1615544872499,'MARTHIN','SCHEEPERS','MARTHIN SCHEEPERS','2021-03-12 10:27:53','SCH060','','RSA','','',NULL,0,'56.73%','76.10',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544873098,'RUPERT','KAMINSKI','RUPERT KAMINSKI','2021-03-12 10:27:53','KAM014','','RSA','','',NULL,0,'50.16%','72.52','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,10,'0',0,3),(1615544873364,'RICHIE','O\'DONOVAN','RICHIE O\'DONOVAN','2021-03-12 10:27:53','ODO004','','IRL','','',NULL,0,'64.00%','73.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Ireland ',0,36,'0',0,2),(1615544873568,'ANTON','HAIG','ANTON HAIG','2021-03-12 10:27:53','HAI003','','RSA','','',NULL,0,'51.06%','71.23','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,29,'0',0,1),(1615544873866,'BEN','FIRTH','BEN FIRTH','2021-03-12 10:27:54','FIR001','','ENG','','',NULL,0,NULL,'74.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1615544874093,'NIKHIL','RAMA','NIKHIL RAMA','2021-03-12 10:27:54','RAM010','','RSA','','',NULL,0,'65.77%','73.00','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,23,'0',0,2),(1615544874284,'LUCA','FILIPPI','LUCA FILIPPI','2021-03-12 10:27:54','FIL002','','RSA','','',NULL,0,'70.41%','71.63','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,9,'0',0,2),(1615544874469,'ALLISTER','DE KOCK','ALLISTER DE KOCK','2021-03-12 10:27:54','DEK006','','RSA','','',NULL,0,'60.81%','75.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,25,'0',0,2),(1615544874666,'VAUGHN','GROENEWALD','','2021-03-12 10:27:54','GRO007','','RSA','','',NULL,0,'51.79%','77.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544874872,'JACQUES','DE VILLIERS','JACQUES P DE VILLIERS','2021-03-12 10:27:55','DEV012','','RSA','','',NULL,0,'55.56%','72.44','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,35,'0',0,3),(1615544875052,'DWAYNE','BASSON','DWAYNE BASSON','2021-03-12 10:27:55','BAS013','','RSA','','',NULL,0,'60.62%','74.40',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,26,'0',0,3),(1615544875221,'QUINTIN','WILSNACH','QUINTIN WILSNACH','2021-03-12 10:27:55','WIL054','','RSA','','',NULL,0,'39.15%','74.63',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544875393,'LOUIS','ALBERTSE','LOUIS ALBERTSE','2021-03-12 10:27:55','ALB009','','RSA','','',NULL,0,'57.62%','70.57','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,16,'0',0,2),(1615544875560,'THERION','NEL','','2021-03-12 10:27:55','NEL018','','RSA','','',NULL,0,NULL,'72.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544875693,'TEAGHAN','GAUCHE','TEAGHAN GAUCHE','2021-03-12 10:27:55','GAU003','','RSA','','',NULL,0,'49.51%','73.42',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544875887,'GIDEON','VAN DER VYVER','GIDEON VAN DER VYVER','2021-03-12 10:27:56','VAN285','','RSA','','',NULL,0,'68.18%','73.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,37,'0',0,2),(1615544876026,'GREG','BENTLEY','GREG BENTLEY','2021-03-12 10:27:56','BEN018','','ZIM','','',NULL,0,'59.38%','75.93',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0,-1),(1615544876163,'THABI','NGCOBO','THABISO NGCOBO','2021-03-12 10:27:56','NGC001','','RSA','','',NULL,0,'46.67%','76.07',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,37,'0',0,1),(1615544876319,'MAKHETHA','MAZIBUKO','MAKHETHA MAZIBUKO','2021-03-12 10:27:56','MAZ001','','RSA','','',NULL,0,'60.22%','73.54',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,50,'0',0,1),(1615544876474,'STEFAN','WEARS-TAYLOR','STEFAN WEARS-TAYLOR','2021-03-12 10:27:56','WEA006','','RSA','','',NULL,0,'46.17%','73.52',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,14,'0',0,2),(1615544876644,'JEAN-PAUL','STRYDOM','JEAN-PAUL STRYDOM','2021-03-12 10:27:56','STR023','','RSA','','',NULL,0,'59.73%','71.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544876782,'BROOKLIN','BAILEY','','2021-03-12 10:27:57','BAI009','','USA','','',NULL,0,NULL,'71.07',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',0,NULL,'0',0,-1),(1615544876969,'CLAYTON','MANSFIELD','CLAYTON MANSFIELD','2021-03-12 10:27:57','MAN033','','RSA','','',NULL,0,'54.92%','73.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,39,'0',0,3),(1615544877096,'ANDREW','VAN DER KNAAP','','2021-03-12 10:27:57','VAN309','','RSA','','',NULL,0,'64.75%','73.30',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544877277,'ANDRE','DE DECKER','ANDRE DE DECKER','2021-03-12 10:27:57','DED003','','RSA','','',NULL,0,'56.53%','73.13',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544877461,'SAMBA','NIANG','','2021-03-12 10:27:57','NIA001','','SEN','','',NULL,0,'46.43%','77.33',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Senegal ',0,NULL,'0',0,-1),(1615544877593,'MOHAMMAD','MANDHU','MOHAMMAD RAUF MANDHU','2021-03-12 10:27:57','MAN021','','ZIM','','',NULL,0,'70.56%','75.89',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,1,'0',0,3),(1615544877783,'SEAN','BRADLEY','','2021-03-12 10:27:58','BRA020','','RSA','','',NULL,0,'58.04%','72.88',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0,-1),(1615544877969,'JACK','DUTHIE','JACK DUTHIE','2021-03-12 10:27:58','DUT020','','RSA','','',NULL,0,'62.71%','73.26',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,11,'0',0,2),(1615544878203,'JURAN','DREYER','JURAN DREYER','2021-03-12 10:27:58','DRE012','','RSA','','',NULL,0,'59.21%','76.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544878446,'ALPHEUS','KELAPILE','ALPHIUS KELAPILE','2021-03-12 10:27:58','KEL014','','RSA','','',NULL,0,'60.00%','75.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,38,'0',0,1),(1615544878653,'EVANCE','VUKEYA','EVANCE VUKEYA','2021-03-12 10:27:58','VUK001','','RSA','','',NULL,0,'50.00%','77.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,34,'0',0,3),(1615544878830,'MATTHEW','SPACEY','MATTHEW SPACEY','2021-03-12 10:28:00','SPA005','','RSA','','',NULL,0,'60.00%','74.22',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,14,'0',0,3),(1615544880189,'SIYANDA','MWANDLA','SIYANDA MWANDLA','2021-03-12 10:28:00','MWA006','','RSA','','',NULL,0,'63.64%','74.61',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544880229,'RICHARD','JOUBERT','RICHARD JOUBERT','2021-03-12 10:28:00','JOU009','','RSA','','',NULL,0,'62.90%','73.57','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,48,'0',0,3),(1615544880237,'THABANG','SIMON','THABANG SIMON','2021-03-12 10:28:00','SIM006','','RSA','','',NULL,0,'57.69%','75.25',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,51,'0',0,3),(1615544880253,'ALBERT','VENTER','ALBERT VENTER','2021-03-12 10:28:00','VEN017','','RSA','','',NULL,0,'56.49%','72.17','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,28,'0',0,3),(1615544880258,'BREYTEN','MEYER','','2021-03-12 10:28:00','MEY014','','RSA','','',NULL,0,'61.26%','73.25',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544880263,'DAVID','MCINTYRE','','2021-03-12 10:28:00','MCI006','','RSA','','',NULL,0,'53.33%','75.29',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544880266,'DESVONDE','BOTES','DESVONDE BOTES','2021-03-12 10:28:00','BOT002','','RSA','','',NULL,0,'74.04%','74.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,25,'0',0,3),(1615544880274,'JASON','DIAB','JASON DIAB','2021-03-12 10:28:00','DIA002','','RSA','','',NULL,0,'58.45%','75.61',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0,-1),(1615544880277,'ANDREW','WILLIAMSON','ANDREW WILLIAMSON','2021-03-12 10:28:00','WIL063','','RSA','','',NULL,0,'60.67%','73.16','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,23,'0',0,1),(1615544880280,'DERICK','PETERSEN','DERICK PETERSEN','2021-03-12 10:28:00','PET007','','RSA','','',NULL,0,'48.53%','75.68',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,12,'0',0,1),(1615544880283,'DAYNE','MOORE','DAYNE MOORE','2021-03-12 10:28:00','MOO015','','ZAM','','',NULL,0,'43.23%','75.88',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,NULL,'0',0,-1),(1615544880289,'BRADFORD','VAUGHAN','BRADFORD VAUGHAN','2021-03-12 10:28:00','VAU001','','RSA','','',NULL,0,'68.29%','74.70',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,27,'0',0,3),(1615544880293,'PH','MCINTYRE','PH MCINTYRE','2021-03-12 10:28:00','MCI004','','RSA','','',NULL,0,'49.34%','75.00','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,38,'0',0,3),(1615544880296,'AUBREY','BECKLEY','AUBREY BECKLEY','2021-03-12 10:28:00','BEC008','','RSA','','',NULL,0,'68.10%','74.19',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,23,'0',0,3),(1615544880298,'TUMELO','MOLLOYI','TUMELO MOLLOYI','2021-03-12 10:28:00','MOL019','','RSA','','',NULL,0,'47.18%','77.18',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,14,'0',0,1),(1615544880301,'RIEKUS','NORTJE','RIEKUS NORTJE','2021-03-12 10:28:00','NOR017','','RSA','','',NULL,0,'52.23%','71.02',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'0',0,3),(1615544880304,'JAMES','PENNINGTON','JAMES PENNINGTON','2021-03-12 10:28:00','PEN002','','SWZ','','',NULL,0,'54.30%','75.29',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,51,'0',0,2),(1615544880310,'JACQUIN','HESS','JACQUIN HESS','2021-03-12 10:28:00','HES004','','RSA','','',NULL,0,'51.00%','74.32',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,37,'0',0,3),(1615544880313,'CAMERON','MORALEE','CAMERON MORALEE','2021-03-12 10:28:00','MOR025','','RSA','','',NULL,0,'50.50%','74.06',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,38,'0',0,2),(1615544880316,'SHAAHID','MAHMED','SHAAHID MAHMED','2021-03-12 10:28:00','MAH017','','ZIM','','',NULL,0,'65.06%','75.33',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0,-1),(1615544880319,'TRAVIS','LADNER','','2021-03-12 10:28:00','LAD003','','RSA','','',NULL,1,NULL,NULL,'','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544880326,'CHRIS','DAVISON','','2021-03-12 10:28:00','DAV001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1615544880329,'IRVIN','MAZIBUKO','IRVIN MAZIBUKO','2021-03-12 10:28:00','MOS003','','RSA','','',NULL,0,'52.69%','76.14',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,27,'0',0,2),(1616062258291,'BENJAMIN','FOLLETT-SMITH','BENJAMIN FOLLETT-SMITH','2021-03-18 10:10:58','FOL001','','ZIM','','',NULL,0,'49.10%','73.52','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0,-1),(1616062258302,'JAMES','KAMTE','JAMES KAMTE','2021-03-18 10:10:58','KAM005','','RSA','','',NULL,0,'62.73%','74.09',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,36,'0',0,1),(1616062258322,'LEON','VISSER','LEON VISSER','2021-03-18 10:10:58','VIS015','','RSA','','',NULL,0,'58.82%','74.84',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,13,'0',0,3),(1616076251413,'COLIN','NEL','COLIN NEL','2021-03-18 14:04:11','NEL009','','RSA','','',NULL,0,'55.32%','74.88',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1616076251428,'DANIEL','NDUVA','DANIEL NDUVA','2021-03-18 14:04:11','NDU001','','KEN','','',NULL,0,'63.58%','73.21',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Kenya ',0,NULL,'0',0,-1),(1616076251432,'MARK','WILLIAMS','MARK WILLIAMS','2021-03-18 14:04:11','WIL030','','ZIM','','',NULL,0,'62.83%','75.36',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,39,'0',0,1),(1616076251436,'FREDDY','SCHOTT','','2021-03-18 14:04:11','SCH098','','GER','','',NULL,0,NULL,'69.88',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',3,NULL,'0',0,-1),(1616504678203,'CHRISTIAAN','MAAS','CHRISTIAAN MAAS','2021-03-23 13:04:38','MAA006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,30,'0',0,2),(1616583784429,'KYLE','MCCLATCHIE','','2021-03-24 11:03:04','MCC023','','RSA','','',NULL,0,'69.64%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',3,NULL,'0',0,-1),(1616835065472,'JOANNE','NEWELL','','2021-03-27 08:51:05','NOR004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1616835065562,'DIRK','CLOETE','','2021-03-27 08:51:05','CLO005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1616835065568,'DORNAY','LOMBARD','','2021-03-27 08:51:05','LOM011','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1616835065574,'SONIA','SCHOEMAN','','2021-03-27 08:51:05','SCH082','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1619088070248,'JONATHAN','THOMSON','','2021-04-22 10:41:10','THO031','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619088070262,'NIKLAS','MOLLER','','2021-04-22 10:41:10','MOL028','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',1,NULL,'0',0,-1),(1619088070265,'MANUEL','ELVIRA','','2021-04-22 10:41:10','ELV002','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1619088070268,'FELIX','MORY','','2021-04-22 10:41:10','MOR035','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1619088070271,'RYAN','EVANS','','2021-04-22 10:41:10','EVA011','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',1,NULL,'0',0,-1),(1619088070277,'ALEXANDER','KNAPPE','','2021-04-22 10:41:10','KNA002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619088070281,'DAVID','BOOTE','','2021-04-22 10:41:10','BOO014','','WAL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales ',0,NULL,'0',0,-1),(1619088070289,'DANIEL','GAVINS','','2021-04-22 10:41:10','GAV002','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',3,NULL,'0',0,-1),(1619088070315,'DEYEN','LAWSON','','2021-04-22 10:41:10','LAW013','','AUS','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Australia ',0,NULL,'0',0,-1),(1619088070323,'OLIVER','LINDELL','','2021-04-22 10:41:10','LIN024','','FIN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0,-1),(1619088070353,'EMILIO','CUARTERO BLANCO','','2021-04-22 10:41:10','CUA001','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1619088070362,'JORDI','GARCIA DEL MORAL','','2021-04-22 10:41:10','GAR019','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1619088070367,'PETER','KARMIS','PETER KARMIS','2021-04-22 10:41:10','KAR003','','GRE','','',NULL,0,'66.15%','72.27',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Greece ',0,22,'0',0,2),(1619088070380,'JEONG','KO','','2021-04-22 10:41:10','KOO005','','FRA','','',NULL,0,NULL,'70.25',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',2,NULL,'0',0,-1),(1619088070394,'MICHAEL','HOEY','','2021-04-22 10:41:10','HOE001','','NIR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Northern_Ireland ',2,NULL,'0',0,-1),(1619088070407,'PHILIP','ERIKSSON','','2021-04-22 10:41:10','ERI007','','SWE','','',NULL,0,'56.12%','71.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1619088070424,'MARCEL','SIEM','','2021-04-22 10:41:10','SIE002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619088070442,'MORITZ','LAMPERT','','2021-04-22 10:41:10','LAM008','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619088070446,'HENRIC','STUREHED','','2021-04-22 10:41:10','STU003','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',5,NULL,'0',0,-1),(1619088070451,'CHASE','HANNA','','2021-04-22 10:41:10','HAN025','','USA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',5,NULL,'0',0,-1),(1619088070455,'ESPEN','KOFSTAD','','2021-04-22 10:41:10','KOF001','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1619088070462,'KRISTIAN','JOHANNESSEN','','2021-04-22 10:41:10','JOH038','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1619088070480,'LUCAS','VACARISAS','','2021-04-22 10:41:10','VAC001','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1619088070485,'ALLEN','JOHN','','2021-04-22 10:41:10','JOH041','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619088070490,'LARS','KEUNEN','','2021-04-22 10:41:10','KEU002','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0,-1),(1619088070496,'ARON','ZEMMER','','2021-04-22 10:41:10','ZEM001','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',2,NULL,'0',0,-1),(1619088070506,'DAAN','HUIZING','DAAN HUIZING','2021-04-22 10:41:10','HUI001','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',5,22,'0',0,1),(1619088070511,'BRANDON','STONE','BRANDON STONE','2021-04-22 10:41:10','STO012','','RSA','','',NULL,0,NULL,'71.75',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'0',0,2),(1619088070527,'RICARDO','GOUVEIA','','2021-04-22 10:41:10','GOU018','','POR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal ',0,NULL,'0',0,-1),(1619088070532,'MARTIN','SIMONSEN','','2021-04-22 10:41:10','SIM022','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0,-1),(1619088070542,'SANTIAGO','TARRIO','','2021-04-22 10:41:10','TAR007','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',2,NULL,'0',0,-1),(1619088070547,'NICOLAI','KRISTENSEN','','2021-04-22 10:41:10','KRI010','','DEN','','',NULL,0,NULL,'70.75',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0,-1),(1619088070567,'GAVIN','MOYNIHAN','','2021-04-22 10:41:10','MOY007','','IRL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Ireland ',0,NULL,'0',0,-1),(1619088070596,'CASEY','JARVIS','CASEY JARVIS','2021-04-22 10:41:10','JAR004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,5,'0',0,3),(1619088070606,'ROOPE','KAKKO','','2021-04-22 10:41:10','KAK001','','FIN','','',NULL,0,NULL,NULL,'','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0,-1),(1619088070617,'ANTON','KARLSSON','','2021-04-22 10:41:10','KAR009','','SWE','','',NULL,0,'60.87%','69.60',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',3,NULL,'0',0,-1),(1619088070628,'JESPER','SANDBORG','','2021-04-22 10:41:10','SAN025','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0,-1),(1619104036943,'PELLE','EDBERG','','2021-04-22 15:07:17','EDB001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1619104037043,'KRISTOFFER','REITAN','','2021-04-22 15:07:17','REI012','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1619104037059,'MARCUS','HELLIGKILDE','','2021-04-22 15:07:17','HEL004','','DEN','','',NULL,0,NULL,'71.75',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0,-1),(1619104037071,'JENS','DANTORP','','2021-04-22 15:07:17','DAN004','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1619104037079,'MIKAEL','LINDBERG','','2021-04-22 15:07:17','LIN027','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',2,NULL,'0',0,-1),(1619104037087,'DANIEL','YOUNG','','2021-04-22 15:07:17','YOU008','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0,-1),(1619104037098,'JENS','FAHRBRING','','2021-04-22 15:07:17','FAH001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1619104037110,'RAPHAEL','DE SOUSA','','2021-04-22 15:07:17','DES004','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1619104037144,'ALFIE','PLANT','','2021-04-22 15:07:17','PLA005','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619104037154,'GARY','STAL','','2021-04-22 15:07:17','STA014','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1619104037164,'UGO','COUSSAUD','','2021-04-22 15:07:17','COU006','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',3,NULL,'0',0,-1),(1619104037172,'BRYCE','EASTON','BRYCE EASTON','2021-04-22 15:07:17','EAS001','','RSA','','',NULL,0,'63.57%','72.40',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,4,'0',0,3),(1619104037180,'JULIEN','BRUN','','2021-04-22 15:07:17','BRU016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1619104037190,'HURLY','LONG','','2021-04-22 15:07:17','LON006','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619104037199,'CHRISTOPHER','MIVIS','','2021-04-22 15:07:17','MIV001','','BEL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Belgium ',3,NULL,'0',0,-1),(1619104037209,'KOEN','KOUWENAAR','','2021-04-22 15:07:17','KOU006','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0,-1),(1619104037235,'PER','LANGFORS','','2021-04-22 15:07:17','LAN025','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',2,NULL,'0',0,-1),(1619104037243,'EWEN','FERGUSON','','2021-04-22 15:07:17','FER041','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0,-1),(1619104037255,'CRAIG','HOWIE','','2021-04-22 15:07:17','HOW011','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',1,NULL,'0',0,-1),(1619104037269,'ROBIN','PETERSSON','','2021-04-22 15:07:17','PET019','','SWE','','',NULL,0,NULL,'',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1619104037285,'BENJAMIN','RUSCH','','2021-04-22 15:07:17','RUS010','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',1,NULL,'0',0,-1),(1619104037293,'ROBBIE','VAN WEST','','2021-04-22 15:07:17','VAN351','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0,-1),(1619104037325,'TODD','CLEMENTS','','2021-04-22 15:07:17','CLE004','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619104037333,'JACOB','OAKLEY','','2021-04-22 15:07:17','OAK001','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619104037342,'ENRICO','DI NITTO','','2021-04-22 15:07:17','DIN006','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',5,NULL,'0',0,-1),(1619104037351,'BRADLEY','MOORE','','2021-04-22 15:07:17','MOO037','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619104037359,'BRADLEY','NEIL','','2021-04-22 15:07:17','NEI005','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0,-1),(1619104037367,'NATHAN','KIMSEY','','2021-04-22 15:07:17','KIM011','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619104037375,'MATTHEW','BALDWIN','','2021-04-22 15:07:17','BAL006','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',1,NULL,'0',0,-1),(1619104037384,'JORDAN','WRISDALE','','2021-04-22 15:07:17','WRI012','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619104037394,'JACK','HARRISON','','2021-04-22 15:07:17','HAR048','','ENG','','',NULL,0,'60.71%','74.13',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1619104037409,'LUKAS','LIPOLD','','2021-04-22 15:07:17','LIP005','','AUT','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0,-1),(1619104037416,'JONAS','KOLBING','','2021-04-22 15:07:17','KOL002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619104037431,'HARALDUR','MAGNUS','','2021-04-22 15:07:17','MAG010','','ISL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Iceland ',0,NULL,'0',0,-1),(1619104037440,'EIRIK','JOHANSEN','','2021-04-22 15:07:17','JOH031','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1619104037450,'CHRISTOPHER','SAHLSTROM','','2021-04-22 15:07:17','SAH001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1619104037461,'MARTIN','WIEGELE','','2021-04-22 15:07:17','WIE005','','AUT','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0,-1),(1619104037473,'DAMIEN','PERRIER','','2021-04-22 15:07:17','PER016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1619104037484,'ROMAIN','WATTEL','','2021-04-22 15:07:17','WAT016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1619104037492,'JOEL','GIRRBACH','','2021-04-22 15:07:17','GIR003','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1619104037509,'FEDERICO','MACCARIO','','2021-04-22 15:07:17','MAC033','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0,-1),(1619104037526,'CHRISTOFER','BLOMSTRAND','','2021-04-22 15:07:17','BLO004','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1619104037550,'EDOARDO','LIPPARELLI','','2021-04-22 15:07:17','LIP004','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0,-1),(1619104037560,'THOMAS','ROSENMULLER','','2021-04-22 15:07:17','ROS036','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619104037568,'HINRICH','ARKENAU','','2021-04-22 15:07:17','ARK001','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1619694651668,'JOHN','AXELSEN','','2021-04-29 11:10:51','AXE002','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0,-1),(1619694651781,'LORENZO','SCALISE','','2021-04-29 11:10:51','SCA010','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0,-1),(1619694652037,'STANISLAV','MATUS','','2021-04-29 11:10:52','MAT046','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',5,NULL,'0',0,-1),(1619779151569,'DANIEL','HILLIER','','2021-04-30 10:39:11','HIL012','','NZL','','',NULL,0,NULL,'71.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/New_Zealand ',0,NULL,'0',0,-1),(1619779151733,'ELIAS','BERTHEUSSEN','','2021-04-30 10:39:11','BER038','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1619779151740,'MATHIEU','FENASSE','','2021-04-30 10:39:11','FEN008','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620220124923,'LAUREN','TAYLOR','','2021-05-05 13:08:44','TAY021','','ENG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1620220125314,'RACHAEL','TAYLOR','','2021-05-05 13:08:45','TAY026','','SCO','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0,-1),(1620220499241,'MICHELLE','LEIGH','','2021-05-05 13:14:59','LEI004','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620233170062,'BRITTNEY-FAY','BERGER','','2021-05-05 16:46:10','BER033','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620233514119,'FRANCESCA','CUTURI','','2021-05-05 16:51:54','CUT003','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620233514687,'CHIARA','CONTOMATHIOS','','2021-05-05 16:51:54','CON006','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620291125303,'RICHARD','STERNE','RICHARD STERNE','2021-05-06 08:52:05','STE009','','RSA','','',NULL,0,NULL,'72.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,29,'0',0,3),(1620292340642,'GEORGE','COETZEE','GEORGE COETZEE','2021-05-06 09:12:20','COE015','','RSA','','',NULL,0,'71.95%','67.86',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,43,'0',0,1),(1620293707959,'NICOLE','GARCIA','','2021-05-06 09:35:08','GAR021','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293708050,'TANDI','MCCALLUM','','2021-05-06 09:35:08','VON004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293708053,'KELSEY','NICHOLAS','','2021-05-06 09:35:08','NIC013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293708056,'ANNA','MAGNUSSON','','2021-05-06 09:35:08','MAG009','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1620293708059,'CASANDRA','HALL','','2021-05-06 09:35:08','HAL013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0,-1),(1620293708062,'GEORGIA','OBOH','','2021-05-06 09:35:08','OBO001','','NGA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Nigeria ',0,NULL,'0',0,-1),(1620293708065,'NOBUHLE','DLAMINI','','2021-05-06 09:35:08','DLA011','','SWZ','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,NULL,'0',0,-1),(1620293708068,'MIMMI','BERGMAN','','2021-05-06 09:35:08','BER036','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1620293839440,'CARA','GORLEI','','2021-05-06 09:37:19','GOR008','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293839557,'FLORENTYNA','PARKER','','2021-05-06 09:37:19','PAR021','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1620293839560,'MAIKEN','PAULSEN','','2021-05-06 09:37:19','PAU005','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1620293839564,'LINDI','COETZEE','','2021-05-06 09:37:19','COE029','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293839570,'MONIQUE','SMIT','','2021-05-06 09:37:19','SMI047','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293839575,'SARINA','SCHMIDT','','2021-05-06 09:37:19','SCH096','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1620293839578,'STACY','BREGMAN','','2021-05-06 09:37:19','BRE007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293839582,'MICHAELA','FLETCHER','','2021-05-06 09:37:19','FLE006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293839586,'LORA','ASSAD','','2021-05-06 09:37:19','ASS002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293839590,'SIDERI','VANOVA','','2021-05-06 09:37:19','VAN329','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',0,NULL,'0',0,-1),(1620293839593,'KATERINA','VLASINOVA','','2021-05-06 09:37:19','VLA001','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',0,NULL,'0',0,-1),(1620293839600,'LINETTE','HOLMSLYKKE','','2021-05-06 09:37:19','HOL030','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0,-1),(1620293839603,'MARIA','BEAUTELL','','2021-05-06 09:37:19','BEA010','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620293839607,'PASQUALLE','COFFA','','2021-05-06 09:37:19','COF002','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0,-1),(1620293839610,'KRISTYNA','NAPOLEAOVA','','2021-05-06 09:37:19','NAP002','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',0,NULL,'0',0,-1),(1620293839614,'CLARA','PIETRI','','2021-05-06 09:37:19','PIE026','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1620293839620,'NADIA','VAN DER WESTHUIZEN','','2021-05-06 09:37:19','VAN294','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620293839623,'CAROLINE','ROMINGER','','2021-05-06 09:37:19','ROM004','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1620304855674,'LEE-ANNE','PACE','','2021-05-06 12:40:55','PAC002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0,-1),(1620304855774,'OLIVIA','COWAN','','2021-05-06 12:40:55','COW002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',5,NULL,'0',0,-1),(1620304855779,'MARIANNE','SKARPNORD','','2021-05-06 12:40:55','SKA001','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',5,NULL,'0',0,-1),(1620304855786,'TONJE','DAFFINRUD','','2021-05-06 12:40:55','DAF002','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1620304855792,'STINA','RESEN','','2021-05-06 12:40:55','RES002','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1620304855804,'JANE','TURNER','','2021-05-06 12:40:55','TUR009','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland',0,NULL,'0',0,-1),(1620304855811,'KYLIE','HENRY','','2021-05-06 12:40:55','WAL020','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0,-1),(1620304855824,'CAITLYN','MACNAB','','2021-05-06 12:40:55','MAC023','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620304855830,'LEJAN','LEWTHWAITE','','2021-05-06 12:40:55','LEW009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620306241923,'KIM','WILLIAMS','','2021-05-06 13:04:02','WIL045','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620306242010,'EMIE','PERONNIN','','2021-05-06 13:04:02','PER021','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620306242015,'JUSTINE','DREHER','','2021-05-06 13:04:02','DRE016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620306242022,'ALEXANDRA','BONETTI','','2021-05-06 13:04:02','BON010','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620306242027,'ASTRID','DE PRADENNE','','2021-05-06 13:04:02','DEP002','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620306242033,'LETICIA','RAS-ANDERICA','','2021-05-06 13:04:02','RAS010','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1620306242038,'TARA','GRIEBENOW','','2021-05-06 13:04:02','GRI016','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620306242044,'ROMY','MEEKERS','','2021-05-06 13:04:02','MEE003','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0,-1),(1620306242049,'IVANNA','SAMU','','2021-05-06 13:04:02','SAM007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620306242056,'ANNE-LISE','CAUDAL','','2021-05-06 13:04:02','CAU001','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620306242061,'MANON','GIDALI','','2021-05-06 13:04:02','GID004','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620306242077,'FRANZISKA','FRIEDRICH','','2021-05-06 13:04:02','FRI010','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1620331528215,'TINA','MAZARINO','','2021-05-06 20:05:28','MAZ006','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1620331528313,'SHAWNELLE','DE LANGE','','2021-05-06 20:05:28','DEL024','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620331528323,'CHRISTINA','GLOOR','','2021-05-06 20:05:28','GLO004','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1620814379490,'KARINA','KUKKONEN','','1995-11-22 00:00:00','KUK003','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0,-1),(1620816274192,'AGATHE','SAUZON','','1992-01-25 00:00:00','SAU007','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620818350974,'CARMEN','ALONSO','','1984-07-15 00:00:00','ALO002','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620818632598,'MADELENE','STAVNAR','','2021-05-12 11:23:52','STA030','','NOR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1620819251606,'ISABELLE','BOINEAU','','1989-06-13 00:00:00','BOI001','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620819957517,'SHANI','BRYNARD','','2021-05-12 11:45:57','BRY003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620820269894,'LYDIA','HALL','','1987-12-14 00:00:00','HAL012','','Wal','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales ',0,NULL,'0',0,-1),(1620820562830,'JORDAN','ROTHMAN','','2002-10-04 00:00:00','ROT006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620820829149,'KAYLAH','WILLIAMS','','2002-04-02 00:00:00','WIL064','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620820975022,'PIA',' BABNIK','','2004-01-02 00:00:00','BAB002','','SVN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Slovenia ',0,NULL,'0',0,-1),(1620821174974,'KAROLINE','LUND','','2021-05-12 12:06:14','LUN006','','NOR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0,-1),(1620821438086,'AMY','WALSH','','1996-03-14 00:00:00','WAL029','','AUS','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Australia ',0,NULL,'0',0,-1),(1620821570110,'YOLANDA','DUMA','','1990-03-09 00:00:00','DUM002','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620833034267,'TIIA','KOIVISTO','','1994-02-06 00:00:00','KOI002','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0,-1),(1620833349487,'MARIA','HERNANDEZ','','1986-03-24 00:00:00','HER021','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620833697829,'SAMANTHA','WHATELEY','','2204-01-14 00:00:00','WHA004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620833946533,'LINA','BOQVIST','','1991-05-25 00:00:00','BOQ001','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1620834115156,'JENNY','HAGLUND','','1993-06-26 00:00:00','HAG004','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1620834122212,'CHRISTINE','WOLF','','1989-03-05 00:00:00','WOL010','','AUT','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0,-1),(1620834452108,'HARANG','LEE','','1995-12-23 00:00:00','LEE031','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620834848148,'EMILIE','BORGGEN','','2021-05-12 15:54:08','BOR008','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0,-1),(1620835930234,'ANNE-CHARLOTTE','MORA','','2021-05-12 16:12:10','MOR036','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620836540961,'LEONIE ','HARM','','1997-01-01 00:00:00','HAR061','','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1620836982171,'CLOE','FRANKISH','','1999-03-08 00:00:00','FRA024','','ENG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1620837222940,'ZETHU','MYEKI','','1993-11-17 00:00:00','MYE002','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620838033106,'URSULA ','WIKSTROM','','1980-07-03 00:00:00','WIK001','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0,-1),(1620838243984,'CELINE','HERBIN ','','1982-10-30 00:00:00','HER015','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1620838376618,'CAROLINE','HEDWALL','','1989-05-13 00:00:00','HED004','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1620838984511,'KAROLIN','LAMPERT','','1995-02-20 00:00:00','LAM011','','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1620840281422,'SILVIA','BANON','','1992-10-21 00:00:00','BAN008','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620840826373,'EMMA','NILSSON ','','1994-03-08 00:00:00','NIL008','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0,-1),(1620841099750,'PATRICIA','SANZ BARRIO','','2021-05-12 17:38:19','SAN020','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620843176304,'MAHA','HADDIOUI','','1988-05-15 00:00:00','HAD001','','MAR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Morocco ',0,NULL,'0',0,-1),(1620843424241,'MANON','DE ROEY','','1991-12-12 00:00:00','DER005','','BEL','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Belgium ',0,NULL,'0',0,-1),(1620843682585,'KATJA','POGACAR','','1994-04-12 00:00:00','POG001','','SVN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Slovenia ',0,NULL,'0',0,-1),(1620843920928,'LINE','TOFT HANSEN','','2021-05-12 18:25:20','HAN029','','DEN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0,-1),(1620844713552,'ODETTE','BOOYSEN','','1995-09-10 00:00:00','BOO008','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620846052385,'LYNETTE ','FOURIE','','1993-02-02 00:00:00','PRE020','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620846322437,'NINA','PEGOVA','','1994-01-05 00:00:00','PEG001','','RUS','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Russian_Federation ',0,NULL,'0',0,-1),(1620846586339,'CASSIDY','WILLIAMS','','2001-03-07 00:00:00','WIL055','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620847026634,'TVESA','MALIK','','2021-05-12 19:17:06','MAL026','','IND','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/India ',0,NULL,'0',0,-1),(1620848832680,'ELINA','NUMMENPAA','','1983-09-07 00:00:00','NUM001','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0,-1),(1620849129408,'SANNA','NUUTINEN','','1991-04-08 00:00:00','NUU001','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0,-1),(1620849532999,'CAROLIN','KAUFFMANN','','2021-05-12 19:58:53','KAU004','','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0,-1),(1620849836159,'AMELIA','LEWIS','','1991-02-23 00:00:00','LEW007','','USA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',0,NULL,'0',0,-1),(1620850397957,'ISABELLA','VAN ROOYEN','','2021-05-12 20:13:17','VAN343','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620850994549,'MIREIA ','PRAT','','2021-05-12 20:23:14','PRA004','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620851188829,'NOEMI',' JIMENEZ MARTIN','','1993-11-12 00:00:00','JIM003','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620851464956,'JOHANNA','GUSTAVSSON','','1992-12-13 00:00:00','GUS005','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1620851885796,'LAURA ','GOMEZ RUIZ','','2021-05-12 20:38:05','GOM005','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620852003805,'ELIA','FOLCH','','2021-05-12 20:40:03','FOL002','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0,-1),(1620852190020,'SARAH','SCHOBER','','1992-04-15 00:00:00','SCH086','','AUT','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0,-1),(1620852365147,'LUIZA','ALTMANN','','2021-05-12 20:46:05','ALT002','','BRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil',0,NULL,'0',0,-1),(1620852522795,'KIM','METRAUX','','1995-05-21 00:00:00','MET003','','SUI','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1620852785433,'MAGDALENA ','SIMMERMACHER','','1996-03-23 00:00:00','SIM030','','ARG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Argentina ',0,NULL,'0',0,-1),(1620853126793,'ELEANOR','GIVENS','','1989-03-09 00:00:00','GIV002','','ENG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1620853277882,'KATIA','SHAFF','','1995-10-05 00:00:00','SHA027','','AUT','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0,-1),(1620853447202,'NINA ','GREY','','1986-01-29 00:00:00','GRE033','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1620899056332,'LUCREZIA ','COLOMBOTTO ROSSO','','2021-05-13 09:44:16','COL025','','ITA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0,-1),(1620900430607,'ANNELIE','SJOHOLM','','1995-09-07 00:00:00','SJO004','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0,-1),(1620905898587,'CAMILLE','CHEVALIER','','2021-05-13 11:38:18','CHE012','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0,-1),(1628091869416,'YUBIN','JUNG','YUBIN JUNG','2021-08-04 15:44:29','JUN003','','RSA','','',NULL,0,'70.99%','73.47',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,24,'0',0,3),(1628091869494,'ALAN','MICHELL','','2021-08-04 15:44:29','MIC002','','RSA','','',NULL,0,'60.71%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869512,'COMBRINCK','SMIT','COMBRINCK SMIT','2021-08-04 15:44:29','SMI063','','RSA','','',NULL,0,'54.27%','74.57',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,11,'0',0,3),(1628091869533,'ANDREW','CURLEWIS','ANDREW CURLEWIS','2021-08-04 15:44:29','CUR004','','RSA','','',NULL,0,'32.14%','73.84',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869535,'LUAN','BOSHOFF','','2021-08-04 15:44:29','BOS019','','RSA','','',NULL,0,'64.00%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869546,'ERHARD','LAMBRECHTS','','2021-08-04 15:44:29','LAM014','','RSA','','',NULL,0,'59.26%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869563,'NEIL','WHITEHORN','','2021-08-04 15:44:29','WHI022','','RSA','','',NULL,0,'64.29%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869568,'GAVIN','VORSTER','','2021-08-04 15:44:29','VOR007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869571,'STIAAN','ALBERTYN','','2021-08-04 15:44:29','ALB011','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869576,'M.S.','CALITZ','','2021-08-04 15:44:29','CAL013','','RSA','','',NULL,0,'50.00%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869578,'TERENCE','COUTINHO','','2021-08-04 15:44:29','COU004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869579,'STEPHAN','SIEBERHAGEN','','2021-08-04 15:44:29','SIE006','','RSA','','',NULL,0,'71.43%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869580,'MATTHEW','SPEELMAN','','2021-08-04 15:44:29','SPE009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869581,'JACO','THERON','','2021-08-04 15:44:29','THE016','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1628091869583,'JEAN','DJEZOU','','2021-08-04 15:44:29','DJE001','','CIV','','',NULL,0,'54.26%','79.70',NULL,'','','',0,NULL,'0',0,-1),(1629991552573,'KAYYAM','MANDHU','','2021-08-26 15:25:52','MAN025','','ZIM','','',NULL,0,'55.91%','76.38',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0,-1),(1629991552635,'ETHAN','SMITH','','2021-08-26 15:25:52','SMI074','','RSA','','',NULL,1,'',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1631181122143,'DYLAN','MOSTERT','DYLAN MOSTERT','2021-09-09 09:52:02','MOS013','','RSA','','',NULL,0,NULL,'72.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1631181122372,'FRANKLIN','MANCHEST','','2021-09-09 09:52:02','MAN034','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1631181122398,'RYAN','VAN VELZEN','RYAN VAN VELZEN','2021-09-09 09:52:02','VAN303','','RSA','','',NULL,0,'60.00%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,1,'0',0,2),(1631181122480,'DIVAN','VAN DEN HEEVER','DIVAN VAN DEN HEEVER','2021-09-09 09:52:02','VAN079','','RSA','','',NULL,0,'47.17','73.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,13,'0',0,2),(1631181122503,'BRANDON-JUDE','RENNIE','BRANDON-JUDE RENNIE','2021-09-09 09:52:02','REN009','','SWZ','','',NULL,0,'60.00%','79.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,NULL,'0',0,-1),(1631874299137,'LINDANI','NDWANDWE','LINDANI NDWANDWE','2021-09-17 10:24:59','NDW001','','RSA','','',NULL,0,'53.85%','75.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,51,'0',0,1),(1631874299163,'SP','MTHETHWA','','2021-09-17 10:24:59','MTH004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1631874299167,'ARNO','VAN HEERDEN','','2021-09-17 10:24:59','VAN355','','RSA','','',NULL,0,'38.46%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1633004539397,'FEZEKILE','KANA','','2021-09-30 12:22:19','KAN005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1633004539424,'MAURICE','PRINSLOO','MAURICE PRINSLOO','2021-09-30 12:22:19','PRI021','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1633004539437,'LWAZI','GQIRA','','2021-09-30 12:22:19','GQI001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483930,'RUBIN','POGIR','TEAM RUBIN POGIR','2021-10-13 15:38:03','POG005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483947,'CLINTON','HEAP','TEAM HEAP','2021-10-13 15:38:03','HEA006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483948,'FERNANDO','DUARTE','TEAM SUN CITY 5','2021-10-13 15:38:03','DUA002','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483951,'VELILE','MCOBOTHI','TEAM MCOBOTHI','2021-10-13 15:38:03','MCO001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483952,'MARK','CURRIE','TEAM CURRIE','2021-10-13 15:38:03','CUR011','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483954,'ERROL','CIVIN','TEAM CIVIN','2021-10-13 15:38:03','CIV001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483955,'DAVID','NAGLE','TEAM NAGLE','2021-10-13 15:38:03','NAG003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483957,'PAUL','DE JAGER','TEAM SUN CITY 3','2021-10-13 15:38:03','DEJ015','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483958,'LES','RUTTENBURG','TEAM RUTTENBURG','2021-10-13 15:38:03','RUT007','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483960,'BARNEY','GURNIN','TEAM GIRNUN','2021-10-13 15:38:03','GUR004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483961,'ANTON','VAN VUGHT','TEAM VAN VUGHT','2021-10-13 15:38:03','VAN373','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483963,'MANNY','CARVALHO','TEAM SUN CITY 4','2021-10-13 15:38:03','CAR050','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483964,'MOSHE','DUEK','TEAM DUEK','2021-10-13 15:38:03','DUE001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483965,'JEFFREY','LIVINGSTONE','TEAM LIVINGSTONE','2021-10-13 15:38:03','LIV002','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483968,'MATTHEW','KRETZMER','TEAM KRETZMER','2021-10-13 15:38:03','KRE005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483970,'EVAN','RUBIN','TEAM RUBIN','2021-10-13 15:38:03','RUB003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483972,'LOUIS','VAN EEDEN','TEAM SUN CITY 2','2021-10-13 15:38:03','VAN375','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483974,'MARTINIS','BARNARD','TEAM BARNARD','2021-10-13 15:38:03','BAR069','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483975,'GRAHAM','JOSSET','TEAM JOSSET','2021-10-13 15:38:03','JOS007','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483979,'LYNETTE','FINLAY','TEAM FINLAY','2021-10-13 15:38:03','FIN005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483981,'ERIC','MOSS','TEAM MOSS','2021-10-13 15:38:03','MOS020','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483982,'LARRY','POGIR','TEAM LARRY POGIR','2021-10-13 15:38:03','POG004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483984,'GAVIN','BERNSTEIN','TEAM BERNSTEIN','2021-10-13 15:38:03','BER022','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483986,'LAURENCE','MICHEL','TEAM MICHEL','2021-10-13 15:38:03','MIC013','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483990,'CANSIN','BOREK','TEAM BOREK','2021-10-13 15:38:03','BOR010','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483992,'MARK','JANKELOWITZ','TEAM JANKELOWITZ','2021-10-13 15:38:03','JAN024','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483994,'MARK','LEVY','TEAM LEVY','2021-10-13 15:38:03','LEV014','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483995,'RYAN','NESTADT','TEAM RYAN NESTADT','2021-10-13 15:38:03','NES007','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483997,'BRETT','COPANS','TEAM COPANS','2021-10-13 15:38:03','COP004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139483998,'DAVE','KUMING','TEAM KUMING','2021-10-13 15:38:03','KUM005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484000,'ANDREW','DUNN','TEAM DUNN','2021-10-13 15:38:04','DUN014','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484002,'SELWYN','NATHAN','TEAM NATHAN','2021-10-13 15:38:04','NAT001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484004,'JASON','NESTADT','TEAM JASON NESTADT','2021-10-13 15:38:04','NES005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484005,'JARRYD','LAHOUD','TEAM LAHOUD','2021-10-13 15:38:04','LAH003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484007,'MATHEW','GIURICICH','TEAM GIURICICH','2021-10-13 15:38:04','GIU003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484008,'GREG','WEINSTEIN','TEAM WEINSTEIN','2021-10-13 15:38:04','WEI013','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484010,'RICCI','CLOUD','TEAM CLOUD','2021-10-13 15:38:04','CLO010','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484012,'BRETT','POZNIAK','TEAM POZNIAK','2021-10-13 15:38:04','POZ001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634139484013,'GRAHAM','WOOD','TEAM SUN CITY 1','2021-10-13 15:38:04','WOO030','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634815077927,'CHRIS','CANNON','CHRIS CANNON','2021-10-21 11:17:57','CAN007','','ENG','','',NULL,0,'55.77%','73.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,41,'0',0,3),(1634815078044,'REGAN','STEYN','REGAN STEYN','2021-10-21 11:17:58','STE066','','RSA','','',NULL,0,'42.31%','76.00',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634895388165,'CHRISTIAAN','BURKE','CHRISTIAAN BURKE','2021-10-22 09:36:28','BUR041','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,4,'0',0,1),(1634895388408,'PAUL','MARKS','PAUL MARKS','2021-10-22 09:36:28','MAR007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1634895388434,'DYLAN','O\'LEARY','DYLAN O\'LEARY','2021-10-22 09:36:28','OLE002','','RSA','','',NULL,0,'69.23%',NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344743,'ROBIN','WILLIAMS','ROBIN WILLIAMS','2021-11-05 09:25:44','WIL059','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1636104344891,'HENK','ALBERTS','HENK ALBERTS','2021-11-05 09:25:44','ALB002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344894,'ASHLEY','MANSELL','ASHLEY MANSELL','2021-11-05 09:25:44','MAN037','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0,-1),(1636104344902,'GREGG','UPTON','GREGG UPTON','2021-11-05 09:25:44','UPT002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344903,'DEAN','NYSSCHEN','DEAN NYSSCHEN','2021-11-05 09:25:44','NYS001','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0,-1),(1636104344915,'TYRAN','VAN LIESHOUT','TYRAN VAN LIESHOUT','2021-11-05 09:25:44','VAN112','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344925,'ROBERT','WIEDERKEHR','ROBERT WIEDERKEHR','2021-11-05 09:25:44','WIE002','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0,-1),(1636104344932,'CALVIN','CALDEIRA','CALVIN CALDEIRA','2021-11-05 09:25:44','CAL010','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344939,'BASIL','WRIGHT JR','BASIL WRIGHT JR','2021-11-05 09:25:44','WRI011','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,52,'0',0,3),(1636104344945,'GREG','JACOBS','GREG JACOBS','2021-11-05 09:25:44','JAC008','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344949,'RUDY','WHITFIELD','RUDY WHITFIELD','2021-11-05 09:25:44','WHI012','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344954,'RYAN','TIPPING','RYAN TIPPING','2021-11-05 09:25:44','TIP001','','RSA','','',NULL,0,'53.57%','75.50',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344962,'JEREMY','SHARPE','JEREMY SHARPE','2021-11-05 09:25:44','SHA020','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1636104344966,'THINUS','KELLER','THINUS KELLER','2021-11-05 09:25:44','KEL018','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0,-1),(1638361103771,'KYLE','DE BEER','KYLE DE BEER','2021-12-01 12:18:23','DEB021','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',0,1,'0',0,1),(1638361103823,'LARS','VAN MEIJEL','LARS VAN MEIJEL','2021-12-01 12:18:23','VAN350','','NED','','',NULL,0,NULL,NULL,NULL,'','','',0,2,'0',0,1),(1638361103848,'KIERON','VAN WYK','KIERON VAN WYK','2021-12-01 12:18:23','VAN305','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,3,'0',0,1),(1638361103873,'THOMAS','AIKEN','THOMAS AIKEN','2021-12-01 12:18:23','AIK001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,4,'0',0,2),(1638361103888,'MARTIN','VORSTER','MARTIN VORSTER','2021-12-01 12:18:23','VOR009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,5,'0',0,2),(1638361103913,'HAYDN','PORTEOUS','HAYDN PORTEOUS','2021-12-01 12:18:23','POR005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,6,'0',0,3),(1638361104033,'IVAN','VERSTER','IVAN VERSTER','2021-12-01 12:18:24','VER029','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,12,'0',0,2),(1638361104043,'YURAV','PREMLALL','YURAV PREMLALL','2021-12-01 12:18:24','PRE022','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,13,'0',0,1),(1638361104093,'JOVAN','REBULA','JOVAN REBULA','2021-12-01 12:18:24','REB001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,15,'0',0,3),(1638361104164,'JORDAN','DUMINY','JORDAN DUMINY','2021-12-01 12:18:24','DUM003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,19,'0',0,2),(1638361104293,'WERNER','DEYZEL','WERNER DEYZEL','2021-12-01 12:18:24','DEY001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,26,'0',0,1),(1638361104298,'WAYNE','STROEBEL','WAYNE STROEBEL','2021-12-01 12:18:24','STR021','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,26,'0',0,2),(1638361104308,'RUAN','GROENEWALD','RUAN GROENEWALD','2021-12-01 12:18:24','GRO032','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,27,'0',0,1),(1638361104364,'CHRISTIAAN','BEZUIDENHOUT','CHRISTIAAN BEZUIDENHOUT','2021-12-01 12:18:24','BEZ004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',0,30,'0',0,1),(1638361104423,'DAVID','DRYSDALE','DAVID DRYSDALE','2021-12-01 12:18:24','DRY001','','SCO','','',NULL,0,NULL,NULL,NULL,'','','',0,33,'0',0,1),(1638361104558,'LEON','VORSTER','LEON VORSTER','2021-12-01 12:18:24','VOR008','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,40,'0',0,2),(1638361104564,'GREGORY','MCKAY','GREGORY MCKAY','2021-12-01 12:18:24','MCK011','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,40,'0',0,3),(1638361104623,'DYLAN','FRITTELLI','DYLAN FRITTELLI','2021-12-01 12:18:24','FRI004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,43,'0',0,3),(1638361108523,'DARIUS','VAN DRIEL','DARIUS VAN DRIEL','2021-12-01 12:18:28','VAN308','','NED','','',NULL,0,NULL,NULL,NULL,'','','',0,48,'0',0,2),(1638361108608,'DYLAN','KOK','DYLAN KOK','2021-12-01 12:18:28','KOK007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,52,'0',0,1);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playgroup`
--

DROP TABLE IF EXISTS `playgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playgroup` (
  `groupid` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playgroup`
--

LOCK TABLES `playgroup` WRITE;
/*!40000 ALTER TABLE `playgroup` DISABLE KEYS */;
INSERT INTO `playgroup` VALUES (0,'None'),(1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'Hot List');
/*!40000 ALTER TABLE `playgroup` ENABLE KEYS */;
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
INSERT INTO `progresstatus` VALUES (0,''),(1,'In Progress'),(2,'Completed');
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurnameIfDuplicate','SELECT GetPlayerSurnameIncludeInitialIfDupInTeamFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT case SelectedTournament when 1 then metres when 2 then yards end FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT if(GetPlayerSelectedTournamentScore(s.playerid)=\'\',\'E\', GetPlayerSelectedTournamentScore(s.playerid)) TournamentScore FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc where sc.courseid=(select courseid from golf.score s,golf.uiselected u where s.idscore= u.SelectedScoreEntry) limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc where sc.courseid=(select courseid from golf.score s,golf.uiselected u where s.idscore= u.SelectedScoreEntry) limit 9,9;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 0,9) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(18,'SPHoles10to18Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 9,18) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(19,'SPHoles1to9StrokesTotal','SELECT case idscoringtype when 1 then if(GetPlayerSelectedRoundHolesPlayedFront9(u.SelectedScoreEntry)<9,\'\',GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)) else if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)) end ScoreTotal  FROM golf.uiselected u,golf.tournament t WHERE  t.tournamentid= u.SelectedTournament;'),(20,'SPHoles10to18StrokesTotal','SELECT case idscoringtype when 1 then if(GetPlayerSelectedRoundHolesPlayedBack9(u.SelectedScoreEntry)<9,\'\',GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)) else if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)) end ScoreTotal  FROM golf.uiselected u,golf.tournament t WHERE  t.tournamentid= u.SelectedTournament;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'STCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(32,'SPPosition','SELECT GetPlayerSelectedTournamentPosition(u.SelectedScoreEntry) FROM golf.uiselected u;'),(33,'SPCurrentHoleShot','SELECT s.strokes  CurrentShooting FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(34,'SRDescription','SELECT if(u.roundcomplete=1,concat(\'AFTER \',r.Description), r.Description) RoundDesc FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(35,'STDescription','SELECT t.description FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(36,'STLogo1','SELECT t.logo1 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(37,'STLogo2','SELECT t.logo2 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(38,'STLogo3','SELECT t.logo3 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(39,'SPStrokesSelectedHole','SELECT s.strokes FROM golf.shots s,golf.uiselected u where s.shotsid = u.SelectedHole;'),(40,'SPStrokeSelectedHoleDescription','SELECT GetPlayerSelectedStrokesFromHoleParDescription(u.SelectedHole) StrokeDescription FROM golf.uiselected u;'),(41,'SPStrokeSelectedHoleFlag','SELECT if(f.shotsflagid=s.strokes,GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(42,'SPHoles1to9StrokesFlag','select * from (SELECT if(HoleStatus=2,GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid),0) flag FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 0,9) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(43,'SPHoles10to18StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 10 and 18) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(44,'STCourseDescription','SELECT sc.Description FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(159,'STLeadersScore','call GetTournamentSelectedLeaderBoard(6,0,1);'),(160,'SPTournamentScoreAtSelectedHole','SELECT 	GetPlayerSelectedTournamentScoreFromSelectedHole(s.playerid) ScoreAtHole FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry;'),(161,'SPCountryFlag','SELECT GetPlayerCountryFlagFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(177,'SPBio1','select c.Bio1 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(178,'SPBio2','select c.Bio2 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(179,'SPBio3','select c.Bio3 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(180,'SPRoundTotalPar','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),\'\') TotalPar FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(181,'STLeaderBoardPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,10);'),(182,'STLeaderBoardPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,10,1);'),(183,'STLeaderBoardPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,11,9);'),(184,'STLeaderBoardPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,20,1);'),(185,'STLeaderBoardPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,21,9);'),(186,'STLeaderBoardPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,30,1);'),(187,'STLeaderBoardPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,31,9);'),(188,'STLeaderBoardPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,40,1);'),(189,'STLeaderBoardPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,41,9);'),(190,'STLeaderBoardPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,50,1);'),(191,'STLeaderBoardPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,51,9);'),(192,'STLeaderBoardPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,60,1);'),(193,'STLeaderBoardPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,61,9);'),(194,'STLeaderBoardPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,70,1);'),(195,'STLeaderBoardPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,71,9);'),(196,'STLeaderBoardPage1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,0,10);'),(197,'STLeaderBoardPage2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,10,1);'),(198,'STLeaderBoardPage2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,11,9);'),(199,'STLeaderBoardPage3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,20,1);'),(200,'STLeaderBoardPage3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,21,9);'),(201,'STLeaderBoardPage4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,30,1);'),(202,'STLeaderBoardPage4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,31,9);'),(203,'STLeaderBoardPage5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,40,1);'),(204,'STLeaderBoardPage5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,41,9);'),(205,'STLeaderBoardPage6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,50,1);'),(206,'STLeaderBoardPage6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,51,9);'),(207,'STLeaderBoardPage7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,60,1);'),(208,'STLeaderBoardPage7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,61,9);'),(209,'STLeaderBoardPage8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,70,1);'),(210,'STLeaderBoardPage8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,71,9);'),(211,'SPRound1TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(212,'SPRound2TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(213,'SPRound3TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(214,'SPRound4TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),\'\'),\'\') Round4Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(215,'STLeadersPage1Position','SELECT s.GraphicPos FROM golf.score s,golf.uiselected u where tournamentid = u.SelectedTournament  group by playerid order by sum((GetPlayerSelectedRoundHolesPlayedStrokes(idscore)-GetPlayerSelectedRoundHolesPlayedPar(idscore))),  cast(if(GetPlayerSelectedRoundScore(s.idscore)=\'E\',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,  GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,(`GetPlayerNameAndSurnameFromID`(s.Playerid)) asc limit 10;'),(216,'SPStrokeSelectedHoleFlagForBIRDIE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 4 when 4 then 3 when 3 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (4-Par) when 4 then (3-Par) when 3 then (2-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(217,'SPStrokeSelectedHoleFlagForEAGLE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 3 when 4 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (3-Par) when 4 then (2-Par)  end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(218,'SPStrokeSelectedHoleFlagForPAR','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 5 when 4 then 4 when 3 then 3 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes(0),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(219,'SPStrokeSelectedHoleFlagForBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (6-Par) when 4 then (5-Par) when 3 then (4-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(220,'SPStrokeSelectedHoleFlagForDOUBLEBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (7-Par) when 4 then (6-Par) when 3 then (5-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(221,'SPParStrokeAfterParBOGEY','SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end ForBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(222,'SPParStrokeAfterParDOUBLEBOGEY','SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end ForDoubleBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(223,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(224,'STLeaderBoardMiniPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,5);'),(225,'STLeaderBoardMiniPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,5,1);'),(226,'STLeaderBoardMiniPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,6,4);'),(227,'STLeaderBoardMiniPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,10,1);'),(228,'STLeaderBoardMiniPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,11,4);'),(229,'STLeaderBoardMiniPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,15,1);'),(230,'STLeaderBoardMiniPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,16,20);'),(231,'STLeaderBoardMiniPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,20,1);'),(232,'STLeaderBoardMiniPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,21,4);'),(233,'STLeaderBoardMiniPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,25,1);'),(234,'STLeaderBoardMiniPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,26,4);'),(235,'STLeaderBoardMiniPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,30,1);'),(236,'STLeaderBoardMiniPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,31,4);'),(237,'STLeaderBoardMiniPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,35,1);'),(238,'STLeaderBoardMiniPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,36,4);'),(239,'STLeaderBoardRound1Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,0,10);'),(240,'STLeaderBoardRound1Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,10,1);'),(241,'STLeaderBoardRound1Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,11,9);'),(242,'STLeaderBoardRound1Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,20,1);'),(243,'STLeaderBoardRound1Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,21,9);'),(244,'STLeaderBoardRound1Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,30,1);'),(245,'STLeaderBoardRound1Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,31,9);'),(246,'STLeaderBoardRound1Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,40,1);'),(247,'STLeaderBoardRound1Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,41,9);'),(248,'STLeaderBoardRound1Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,50,1);'),(249,'STLeaderBoardRound1Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,51,9);'),(250,'STLeaderBoardRound1Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,60,1);'),(251,'STLeaderBoardRound1Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,61,9);'),(252,'STLeaderBoardRound1Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,70,1);'),(253,'STLeaderBoardRound1Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,71,9);'),(254,'STLeaderBoardRound2Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,0,10);'),(255,'STLeaderBoardRound2Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,10,1);'),(256,'STLeaderBoardRound2Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,11,9);'),(257,'STLeaderBoardRound2Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,20,1);'),(258,'STLeaderBoardRound2Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,21,9);'),(259,'STLeaderBoardRound2Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,30,1);'),(260,'STLeaderBoardRound2Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,31,9);'),(261,'STLeaderBoardRound2Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,40,1);'),(262,'STLeaderBoardRound2Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,41,9);'),(263,'STLeaderBoardRound2Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,50,1);'),(264,'STLeaderBoardRound2Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,51,9);'),(265,'STLeaderBoardRound2Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,60,1);'),(266,'STLeaderBoardRound2Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,61,9);'),(267,'STLeaderBoardRound2Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,70,1);'),(268,'STLeaderBoardRound2Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,71,9);'),(269,'STLeaderBoardOVERALLPage1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,0,10);'),(270,'STLeaderBoardOVERALLPage2Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,10,1);'),(271,'STLeaderBoardOVERALLPage2ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,11,9);'),(272,'STLeaderBoardOVERALLPage3Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,20,1);'),(273,'STLeaderBoardOVERALLPage3ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,21,9);'),(274,'STLeaderBoardOVERALLPage4Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,30,1);'),(275,'STLeaderBoardOVERALLPage4ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,31,9);'),(276,'STLeaderBoardOVERALLPage5Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,40,1);'),(277,'STLeaderBoardOVERALLPage5ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,41,9);'),(278,'STLeaderBoardOVERALLPage6Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,50,1);'),(279,'STLeaderBoardOVERALLPage6ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,51,9);'),(280,'STLeaderBoardOVERALLPage7Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,60,1);'),(281,'STLeaderBoardOVERALLPage7ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,61,9);'),(282,'STLeaderBoardOVERALLPage8Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,70,1);'),(283,'STLeaderBoardOVERALLPage8ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,71,9);'),(289,'STLeaderBoardLeaderString','call GetTournamentSelectedLeaderBoard(4,0,1);'),(290,'SPRoundTotalParFlag',' SELECT  if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,case when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) < sc.Par then 2 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) = sc.Par then 3 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) > sc.Par then 5 end,\'\') TotalParFlag  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(291,'SPHoles1to9StrokesTotalFlag','SELECT case idscoringtype when 1 then  if(GetPlayerSelectedRoundHolesPlayedFront9(u.SelectedScoreEntry)<9,\'\', case when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) < 0 then 5 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) = 0 then 3 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) > 0 then 2 end)  else   if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\', case when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) < sc.FrontPar then 2 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) = sc.FrontPar then 3 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) > sc.FrontPar then 5 end ) end  ScoreTotal   FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(292,'SPHoles10to18StrokesTotalFlag','SELECT case idscoringtype when 1 then if(GetPlayerSelectedRoundHolesPlayedBack9(u.SelectedScoreEntry)<9,\'\',case when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) < 0 then 5 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) = 0 then 3 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) > 0 then 2 end) else if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',case when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) < sc.BackPar then 2 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) = sc.BackPar then  3 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) > sc.BackPar then  5 end ) end ScoreTotal  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(293,'STLeaderBoardTOTALSPage1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,0,10);'),(294,'STLeaderBoardTOTALSPage2Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,10,1);'),(295,'STLeaderBoardTOTALSPage2ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,11,9);'),(296,'STLeaderBoardTOTALSPage3Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,20,1);'),(297,'STLeaderBoardTOTALSPage3ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,21,9);'),(298,'STLeaderBoardTOTALSPage4Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,30,1);'),(299,'STLeaderBoardTOTALSPage4ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,31,9);'),(300,'STLeaderBoardTOTALSPage5Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,40,1);'),(301,'STLeaderBoardTOTALSPage5ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,41,9);'),(302,'STLeaderBoardTOTALSPage6Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,50,1);'),(303,'STLeaderBoardTOTALSPage6ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,51,9);'),(304,'STLeaderBoardTOTALSPage7Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,60,1);'),(305,'STLeaderBoardTOTALSPage7ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,61,9);'),(306,'STLeaderBoardTOTALSPage8Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,70,1);'),(307,'STLeaderBoardTOTALSPage8ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,71,9);'),(308,'STShortDescription','SELECT t.ShortDescription FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(309,'SPAge','SELECT GetPlayerAgeFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(310,'SPHolePreviousRoundsScores','select group_concat(HoleRoundScore SEPARATOR \' | \') PreviousRounds from (select sc.roundid ,GetPlayerSelectedStrokeDescription(strokes,s.holeid) HoleRoundScore from golf.score sc,golf.shots s,golf.uiselected u  where s.idscore=sc.idscore and  sc.playerid=(SELECT playerid FROM golf.score s,golf.uiselected u where s.idscore=u.SelectedScoreEntry)  and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2  and sc.roundid <> u.SelectedRound order by sc.roundid,s.shotsid ) as t;'),(311,'STHolesTopEagles','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-2 group by sh.holeid order by Totals desc limit 5;'),(312,'STHolesTopBirdies','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-1 group by sh.holeid order by Totals desc limit 5;'),(313,'STHolesTopPars','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=0 group by sh.holeid order by Totals desc limit 5;'),(314,'AmateurLeaderBoard','select Pos,Description,Points,case Country when \'RSA\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa\' when \'SWE\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden\' when \'GER\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany\' end flag ,\'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold\' color  FROM golf.amateurs limit 10; '),(315,'SHTotalEagles','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-2  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(316,'SHTotalBirdies','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-1  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(317,'SHTotalPars','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=0  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(318,'SHTotalBogeys','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=1  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(319,'SHTotaOthers','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))>=2  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(320,'STDrawDescription','SELECT concat(\'MATCH \',Matchid) DrawHeading FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)'),(321,'STDrawLine1ColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(10,0,1);'),(322,'STDrawColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(11,1,2);'),(323,'SHAceOrEagleHole','SELECT  case Par when 3 then \'ACES\' else \'EAGLES\' end FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(324,'SPTodayEagles','select GetPlayerSelectedRoundEagles(SelectedScoreEntry) FROM golf.uiselected u;'),(325,'SPTodayBirdies','select GetPlayerSelectedRoundBirdies(SelectedScoreEntry) FROM golf.uiselected u;'),(326,'SPTodayPars','select GetPlayerSelectedRoundPars(SelectedScoreEntry) FROM golf.uiselected u;'),(327,'SPTodayBogeys','select GetPlayerSelectedRoundBogeys(SelectedScoreEntry) FROM golf.uiselected u;'),(328,'SPTodayOthers','select GetPlayerSelectedRoundOthers(SelectedScoreEntry) FROM golf.uiselected u;'),(329,'SPTodaySummary','select GetPlayerSelectedRoundSummary();'),(330,'SPFront9Back9ScoreString','select GetPlayerSelectedRoundHolesPlayedFront9Back9TotalScoreString(SelectedScoreEntry) FROM golf.uiselected u;'),(331,'STCourseFullname1','SELECT Fullname FROM golf.course limit 0,1;'),(332,'STCourseFullname2','SELECT Fullname FROM golf.course limit 1,1;'),(333,'STExtraDesc','SELECT t.ExtraDesc FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(334,'STLeaderBoardPage1CourseColor','call GetTournamentSelectedLeaderBoard(21,0,10);'),(335,'STLeaderBoardPage2CourseColor','call GetTournamentSelectedLeaderBoard(21,10,10);'),(336,'STLeaderBoardPage3CourseColor','call GetTournamentSelectedLeaderBoard(21,20,10);'),(337,'STLeaderBoardPage4CourseColor','call GetTournamentSelectedLeaderBoard(21,30,10);'),(338,'STLeaderBoardPage5CourseColor','call GetTournamentSelectedLeaderBoard(21,40,10);'),(339,'STLeaderBoardPage6CourseColor','call GetTournamentSelectedLeaderBoard(21,50,10);'),(340,'STLeaderBoardPage7CourseColor','call GetTournamentSelectedLeaderBoard(21,60,10);'),(341,'STLeaderBoardPage8CourseColor','call GetTournamentSelectedLeaderBoard(21,70,10);'),(342,'STMINILeaderBoardPage1CourseColor','call GetTournamentSelectedLeaderBoard(21,0,5);'),(343,'STMINILeaderBoardPage2CourseColor','call GetTournamentSelectedLeaderBoard(21,5,5);'),(344,'STMINILeaderBoardPage3CourseColor','call GetTournamentSelectedLeaderBoard(21,10,5);'),(345,'STMINILeaderBoardPage4CourseColor','call GetTournamentSelectedLeaderBoard(21,15,5);'),(346,'STMINILeaderBoardPage5CourseColor','call GetTournamentSelectedLeaderBoard(21,20,5);'),(347,'STMINILeaderBoardPage6CourseColor','call GetTournamentSelectedLeaderBoard(21,25,5);'),(348,'STMINILeaderBoardPage7CourseColor','call GetTournamentSelectedLeaderBoard(21,30,5);'),(349,'STMINILeaderBoardPage8CourseColor','call GetTournamentSelectedLeaderBoard(21,35,5);'),(350,'STLeaderBoardPage9Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,80,1);'),(351,'STLeaderBoardPage9ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,81,9);'),(352,'STLeaderBoardPage10Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,90,1);'),(353,'STLeaderBoardPage10ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,91,9);'),(354,'STLeaderBoardPage11Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,100,1);'),(355,'STLeaderBoardPage11ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,101,9);'),(356,'STLeaderBoardPage12Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,110,1);'),(357,'STLeaderBoardPage12ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,111,9);'),(358,'STLeaderBoardPage13Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,120,1);'),(359,'STLeaderBoardPage13ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,121,9);'),(360,'STLeaderBoardPage14Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,130,1);'),(361,'STLeaderBoardPage14ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,131,9);'),(362,'STLeaderBoardPage15Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,140,1);'),(363,'STLeaderBoardPage15ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,141,9);'),(364,'STLeaderBoardPage9CourseColor','call GetTournamentSelectedLeaderBoard(21,80,10);'),(365,'STLeaderBoardPage10CourseColor','call GetTournamentSelectedLeaderBoard(21,90,10);'),(366,'STLeaderBoardPage11CourseColor','call GetTournamentSelectedLeaderBoard(21,100,10);'),(367,'STLeaderBoardPage12CourseColor','call GetTournamentSelectedLeaderBoard(21,110,10);'),(368,'STLeaderBoardPage13CourseColor','call GetTournamentSelectedLeaderBoard(21,120,10);'),(369,'STLeaderBoardPage14CourseColor','call GetTournamentSelectedLeaderBoard(21,130,10);'),(370,'STLeaderBoardPage15CourseColor','call GetTournamentSelectedLeaderBoard(21,140,10);'),(371,'SHPutt1','select count(*) Putts1 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=1 and HoleStatus=2 ;'),(372,'SHPutt2','select count(*) Putts2 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=2 and HoleStatus=2 ;'),(373,'SHPutt3','select count(*) Putts3 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=3 and HoleStatus=2 ;'),(374,'SHPutt4','select count(*) Putts4 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=4 and HoleStatus=2 ;'),(375,'STLeaderboardDayDescTODAYorBLANK','SELECT if(u.roundcomplete=1,\'\', \'TODAY\') daydesc FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(376,'STDrawHoleScoreLine1ColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(22,0,1);'),(377,'STDrawHoleScoreColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(23,1,2);'),(378,'SPFullName','SELECT GetPlayerFullNameFromID(s.playerid) FullName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(379,'SPRoundScoreWithPlusSIGNifPositive','select case  SIGN(GetPlayerSelectedRoundScore(u.SelectedScoreEntry))  when 1 then concat(\'+\',GetPlayerSelectedRoundScore(u.SelectedScoreEntry)) else GetPlayerSelectedRoundScore(u.SelectedScoreEntry) end RoundPoints FROM golf.uiselected u;'),(380,'ScoreCaptureIndividualPage1PlayerName','SELECT Name1Player FROM golf.scorecapturedata order by idscorecapturedata;'),(381,'ScoreCaptureIndividualPage1PlayerSurName','SELECT Surname1Player FROM golf.scorecapturedata order by idscorecapturedata;'),(382,'ScoreCaptureIndividualPage1PlayerHandicap','SELECT concat(\'[\',HandiCap,\']\') Hc FROM golf.scorecapturedata order by idscorecapturedata;'),(383,'ScoreCaptureIndividualPage1PlayerGraphicPos','SELECT GraphicPos FROM golf.scorecapturedata order by idscorecapturedata;'),(384,'ScoreCaptureIndividualPage1PlayerRoundScore','SELECT RoundScore FROM golf.scorecapturedata order by  idscorecapturedata;'),(385,'ScoreCaptureIndividualPage1PlayerName2','SELECT Name2Player FROM golf.scorecapturedata order by idscorecapturedata;'),(386,'ScoreCaptureIndividualPage1PlayerSurName2','SELECT Surname2Player FROM golf.scorecapturedata order by idscorecapturedata;'),(387,'ScoreCaptureIndividualPage1PlayerHandicap2','SELECT concat(\'[\',HandiCap1,\']\') Hc FROM golf.scorecapturedata order by idscorecapturedata;'),(388,'ScoreCaptureSelectedPlayerFirstName','SELECT firstname FROM golf.scorecaptureplayers p,golf.uiselected u WHERE p.playerid=u.SelectedScoreEntry;'),(389,'ScoreCaptureSelectedPlayeLastName','SELECT lastname FROM golf.scorecaptureplayers p,golf.uiselected u WHERE p.playerid=u.SelectedScoreEntry;'),(390,'ScoreCaptureSelectedPlayerCompanyTitle','SELECT concat(p.title,\' \',p.company) Position FROM golf.scorecaptureplayers p,golf.uiselected u WHERE p.playerid=u.SelectedScoreEntry;'),(391,'ScoreCaptureSelectedPlayerBio2','SELECT Bio2 FROM golf.scorecaptureplayers p,golf.uiselected u WHERE p.playerid=u.SelectedScoreEntry;'),(392,'ScoreCaptureSelectedPlayerBio3','SELECT Bio3 FROM golf.scorecaptureplayers p,golf.uiselected u WHERE p.playerid=u.SelectedScoreEntry;'),(393,'ScoreCaptureSelectedPlayerHandiCap','SELECT concat(\'[\',HandiCap,\']                                                                         \') Hc  FROM golf.scorecaptureplayers p,golf.uiselected u WHERE p.playerid=u.SelectedScoreEntry;'),(394,'ScoreCaptureIndividualPage2Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 10,1;'),(395,'ScoreCaptureIndividualPage2','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 11,9;'),(396,'ScoreCaptureIndividualPage3Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 20,1;'),(397,'ScoreCaptureIndividualPage3','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 21,9;'),(398,'ScoreCaptureIndividualPage4Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 30,1;'),(399,'ScoreCaptureIndividualPage4','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 31,9;'),(400,'ScoreCaptureIndividualPage5Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 40,1;'),(401,'ScoreCaptureIndividualPage5','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 41,9;'),(402,'ScoreCaptureIndividualPage6Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 50,1;'),(403,'ScoreCaptureIndividualPage6','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 51,9;'),(404,'ScoreCaptureIndividualPage7Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 60,1;'),(405,'ScoreCaptureIndividualPage7','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 61,9;'),(406,'ScoreCaptureIndividualPage8Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 70,1;'),(407,'ScoreCaptureIndividualPage8','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 71,9;'),(408,'ScoreCaptureIndividualPage9Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 80,1;'),(409,'ScoreCaptureIndividualPage9','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 81,9;'),(410,'ScoreCaptureIndividualPage10Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 90,1;'),(412,'ScoreCaptureIndividualPage10','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 91,9;'),(413,'ScoreCaptureIndividualPage11Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 100,1;'),(414,'ScoreCaptureIndividualPage11','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 101,9;'),(415,'ScoreCaptureIndividualTeamsPage2Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 10,1;'),(416,'ScoreCaptureIndividualTeamsPage2','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 11,9;'),(417,'ScoreCaptureIndividualTeamsPage3Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 20,1;'),(418,'ScoreCaptureIndividualTeamsPage3','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 21,9;'),(419,'ScoreCaptureIndividualTeamsPage4Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 30,1;'),(420,'ScoreCaptureIndividualTeamsPage4','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 31,9;'),(421,'ScoreCaptureIndividualTeamsPage5Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 40,1;'),(422,'ScoreCaptureIndividualTeamsPage5','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 41,9;'),(423,'ScoreCaptureIndividualTeamsPage6Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 50,1;'),(424,'ScoreCaptureIndividualTeamsPage6','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 51,9;'),(425,'ScoreCaptureIndividualTeamsPage7Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 60,1;'),(426,'ScoreCaptureIndividualTeamsPage7','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 61,9;'),(427,'ScoreCaptureIndividualTeamsPage8Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 70,1;'),(428,'ScoreCaptureIndividualTeamsPage8','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 71,9;'),(429,'ScoreCaptureIndividualTeamsPage9Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 80,1;'),(430,'ScoreCaptureIndividualTeamsPage9','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 81,9;'),(431,'ScoreCaptureIndividualTeamsPage10Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 90,1;'),(432,'ScoreCaptureIndividualTeamsPage10','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 91,9;'),(433,'ScoreCaptureIndividualTeamsPage11Line1','SELECT Pos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 100,1;'),(434,'ScoreCaptureIndividualTeamsPage11','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 101,9;'),(435,'ScoreCaptureIndividualTeamsPage1','SELECT GraphicPos,Name1Player,Surname1Player,concat(\'[\',HandiCap,\']\'),Name2Player ,Surname2Player,concat(\'[\',HandiCap1,\']\'),RoundScore FROM golf.scorecapturedata order by idscorecapturedata limit 10;'),(436,'SPTodayParScoresBreakdown','select GetPlayerSelectedRoundParsScoreBreakdown();');
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
INSERT INTO `rounds` VALUES (1,'ROUND 1',0),(2,'ROUND 2',0),(3,'ROUND 3 ',0),(4,'FINAL ROUND',0),(5,'PLAY-OFF',0),(1616604234843,'PLAY-OFF 2',0);
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
  `TeeTime` varchar(45) DEFAULT NULL,
  `startingtee` int(11) DEFAULT NULL,
  `holesplayed` varchar(45) DEFAULT '-1',
  `GraphicPos` varchar(45) DEFAULT ' ',
  `Ranking` varchar(45) DEFAULT '',
  `Tied` int(11) DEFAULT '-1',
  `Back9Start` int(11) DEFAULT '0',
  `Playoff` int(11) DEFAULT '0',
  `PlayoffOrder` int(11) DEFAULT NULL,
  `Oom_pos` varchar(45) DEFAULT NULL,
  `Oom_curr_pos` varchar(45) DEFAULT NULL,
  `Oom_diff_pos` varchar(45) DEFAULT NULL,
  `conflict` int(11) DEFAULT '0',
  PRIMARY KEY (`idscore`),
  KEY `fk_playerid_idx` (`playerid`),
  CONSTRAINT `fk_playerid` FOREIGN KEY (`playerid`) REFERENCES `players` (`playerid`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1638361109167,1638361103771,1614697043090,1,1,1,'06:30',NULL,'','1','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361109573,1631181122398,1614697043090,1,1,1,'06:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361109997,1615544877593,1614697043090,1,1,1,'06:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361110398,1638361103823,1614697043090,1,1,1,'06:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361110800,1614872890818,1614697043090,1,1,1,'06:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361111201,1614872890817,1614697043090,1,1,1,'06:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361111603,1638361103848,1614697043090,1,1,1,'06:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361112019,1614872890778,1614697043090,1,1,1,'06:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361112420,1614872890830,1614697043090,1,1,1,'06:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361112837,1634895388165,1614697043090,1,1,1,'07:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361113238,1638361103873,1614697043090,1,1,1,'07:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361113640,1619104037172,1614697043090,1,1,1,'07:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361114041,1614872890801,1614697043090,1,1,1,'07:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361114443,1638361103888,1614697043090,1,1,1,'07:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361114844,1619088070596,1614697043090,1,1,1,'07:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361115277,1614872890769,1614697043090,1,1,1,'07:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361115694,1614872890812,1614697043090,1,1,1,'07:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361116118,1638361103913,1614697043090,1,1,1,'07:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361116519,1614872890777,1614697043090,1,1,1,'07:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361116920,1614872890839,1614697043090,1,1,1,'07:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361117320,1614872890808,1614697043090,1,1,1,'07:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361117722,1614872890824,1614697043090,1,1,1,'07:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361118123,1614872890784,1614697043090,1,1,1,'07:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361118524,1614872890763,1614697043090,1,1,1,'07:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361118925,1615544865998,1614697043090,1,1,1,'07:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361119326,1615544874284,1614697043090,1,1,1,'07:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361119744,1615544872355,1614697043090,1,1,1,'07:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361120145,1615544871438,1614697043090,1,1,1,'08:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361120546,1614872890822,1614697043090,1,1,1,'08:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361120995,1615544873098,1614697043090,1,1,1,'08:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361121412,1614872890821,1614697043090,1,1,1,'08:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361121836,1615544877969,1614697043090,1,1,1,'08:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361122237,1628091869512,1614697043090,1,1,1,'08:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361122638,1615544880280,1614697043090,1,1,1,'08:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361123039,1638361104033,1614697043090,1,1,1,'08:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361123456,1615544871281,1614697043090,1,1,1,'08:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361123857,1638361104043,1614697043090,1,1,1,'08:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361124259,1631181122480,1614697043090,1,1,1,'08:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361124676,1616062258322,1614697043090,1,1,1,'08:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361125077,1615544880298,1614697043090,1,1,1,'06:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361125479,1615544876474,1614697043090,1,1,1,'06:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361125911,1615544878830,1614697043090,1,1,1,'06:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361126313,1614872890840,1614697043090,1,1,1,'06:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361126730,1614872890810,1614697043090,1,1,1,'06:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361127153,1638361104093,1614697043090,1,1,1,'06:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361127570,1614872890792,1614697043090,1,1,1,'06:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361127987,1615544875393,1614697043090,1,1,1,'06:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361128390,1614872890815,1614697043090,1,1,1,'06:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361128789,1614872890788,1614697043090,1,1,1,'07:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361129190,1614872890787,1614697043090,1,1,1,'07:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361129592,1614872890789,1614697043090,1,1,1,'07:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361129993,1614872890833,1614697043090,1,1,1,'07:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361130396,1619088070511,1614697043090,1,1,1,'07:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361130796,1614872890779,1614697043090,1,1,1,'07:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361131229,1614872890841,1614697043090,1,1,1,'07:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361131646,1638361104164,1614697043090,1,1,1,'07:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361132069,1614872890835,1614697043090,1,1,1,'07:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361132486,1614872890842,1614697043090,1,1,1,'07:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361132902,1614872890813,1614697043090,1,1,1,'07:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361133304,1614872890814,1614697043090,1,1,1,'07:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361133720,1614872890819,1614697043090,1,1,1,'07:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361134152,1614872890798,1614697043090,1,1,1,'07:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361134573,1615544880301,1614697043090,1,1,1,'07:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361134974,1619088070506,1614697043090,1,1,1,'07:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361135414,1619088070367,1614697043090,1,1,1,'07:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361135870,1614872890756,1614697043090,1,1,1,'07:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361136271,1615544880277,1614697043090,1,1,1,'08:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361136688,1615544874093,1614697043090,1,1,1,'08:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361137089,1615544880296,1614697043090,1,1,1,'08:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361137522,1614872890828,1614697043090,1,1,1,'08:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361137936,1615544870238,1614697043090,1,1,1,'08:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361138340,1628091869416,1614697043090,1,1,1,'08:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361138763,1615544871120,1614697043090,1,1,1,'08:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361139164,1615544874469,1614697043090,1,1,1,'08:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361139565,1615544880266,1614697043090,1,1,1,'08:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361139967,1638361104293,1614697043090,1,1,1,'08:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361140368,1638361104298,1614697043090,1,1,1,'08:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361140785,1615544875052,1614697043090,1,1,1,'08:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361141180,1638361104308,1614697043090,1,1,1,'11:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361141569,1615544880329,1614697043090,1,1,1,'11:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361141986,1615544880289,1614697043090,1,1,1,'11:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361142433,1614872890783,1614697043090,1,1,1,'11:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361142825,1615544871744,1614697043090,1,1,1,'11:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361143240,1615544880253,1614697043090,1,1,1,'11:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361143641,1615544873568,1614697043090,1,1,1,'11:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361144058,1614872890838,1614697043090,1,1,1,'11:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361144443,1620291125303,1614697043090,1,1,1,'11:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361144828,1638361104364,1614697043090,1,1,1,'12:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361145214,1616504678203,1614697043090,1,1,1,'12:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361145615,1614872890772,1614697043090,1,1,1,'12:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361146016,1614872890766,1614697043090,1,1,1,'12:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361146417,1615544868676,1614697043090,1,1,1,'12:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361146818,1614872890825,1614697043090,1,1,1,'12:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361147235,1614872890782,1614697043090,1,1,1,'12:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361147636,1614872890832,1614697043090,1,1,1,'12:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361148037,1614872890785,1614697043090,1,1,1,'12:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361148446,1638361104423,1614697043090,1,1,1,'12:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361148854,1614872890776,1614697043090,1,1,1,'12:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361149253,1614872890771,1614697043090,1,1,1,'12:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361149656,1614872890823,1614697043090,1,1,1,'12:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361150041,1614872890768,1614697043090,1,1,1,'12:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361150426,1615544878653,1614697043090,1,1,1,'12:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361150843,1614872890764,1614697043090,1,1,1,'12:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361151244,1615544869856,1614697043090,1,1,1,'12:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361151646,1615544874872,1614697043090,1,1,1,'12:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361152047,1616062258302,1614697043090,1,1,1,'13:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361152448,1615544873364,1614697043090,1,1,1,'13:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361152849,1615544871830,1614697043090,1,1,1,'13:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361153266,1615544876163,1614697043090,1,1,1,'13:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361153667,1615544875887,1614697043090,1,1,1,'13:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361154068,1615544880310,1614697043090,1,1,1,'13:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361154470,1615544878446,1614697043090,1,1,1,'13:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361154871,1615544880313,1614697043090,1,1,1,'13:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361155272,1615544880293,1614697043090,1,1,1,'13:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361155673,1616076251432,1614697043090,1,1,1,'13:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361156074,1615544871971,1614697043090,1,1,1,'13:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361156507,1615544876969,1614697043090,1,1,1,'13:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361156924,1614872890765,1614697043090,1,1,1,'11:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361157347,1638361104558,1614697043090,1,1,1,'11:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361157749,1638361104564,1614697043090,1,1,1,'11:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361158150,1615544870564,1614697043090,1,1,1,'11:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361158629,1614872890820,1614697043090,1,1,1,'11:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361159052,1634815077927,1614697043090,1,1,1,'11:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361159453,1614872890791,1614697043090,1,1,1,'11:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361159854,1614872890767,1614697043090,1,1,1,'11:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361160270,1614872890800,1614697043090,1,1,1,'11:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361160671,1620292340642,1614697043090,1,1,1,'12:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361161073,1614872890799,1614697043090,1,1,1,'12:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361161474,1638361104623,1614697043090,1,1,1,'12:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361161876,1614872890796,1614697043090,1,1,1,'12:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361162277,1614872890794,1614697043090,1,1,1,'12:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361162677,1614872890780,1614697043090,1,1,1,'12:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361163141,1614872890786,1614697043090,1,1,1,'12:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361163608,1614872890770,1614697043090,1,1,1,'12:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361164022,1614872890773,1614697043090,1,1,1,'12:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361164445,1614872890836,1614697043090,1,1,1,'12:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361164846,1614872890795,1614697043090,1,1,1,'12:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361165247,1614872890816,1614697043090,1,1,1,'12:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361165649,1614872890831,1614697043090,1,1,1,'12:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361166081,1614872890774,1614697043090,1,1,1,'12:40',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361166482,1614872890802,1614697043090,1,1,1,'12:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361166883,1638361108523,1614697043090,1,1,1,'12:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361167285,1615544880229,1614697043090,1,1,1,'12:50',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361167686,1614872890781,1614697043090,1,1,1,'13:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361168087,1615544870980,1614697043090,1,1,1,'13:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361168488,1615544869184,1614697043090,1,1,1,'13:00',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361168889,1615544876319,1614697043090,1,1,1,'13:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361169321,1614872890760,1614697043090,1,1,1,'13:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361169737,1615544871565,1614697043090,1,1,1,'13:10',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361170138,1631874299137,1614697043090,1,1,1,'13:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361170561,1615544880304,1614697043090,1,1,1,'13:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361170962,1615544880237,1614697043090,1,1,1,'13:20',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361171362,1638361108608,1614697043090,1,1,1,'13:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0),(1638361171763,1636104344939,1614697043090,1,1,1,'13:30',NULL,'','','1',1,0,0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scorecapturedata`
--

DROP TABLE IF EXISTS `scorecapturedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scorecapturedata` (
  `idscorecapturedata` bigint(20) NOT NULL,
  `Pos` varchar(45) DEFAULT NULL,
  `Player1Name` varchar(150) DEFAULT NULL,
  `Player2Name` varchar(150) DEFAULT NULL,
  `Player3Name` varchar(150) DEFAULT NULL,
  `Player4Name` varchar(150) DEFAULT NULL,
  `TeamName` varchar(150) DEFAULT NULL,
  `RoundScore` varchar(45) DEFAULT NULL,
  `OverallScore` varchar(45) DEFAULT NULL,
  `Holes` varchar(45) DEFAULT NULL,
  `GraphicPos` varchar(45) DEFAULT NULL,
  `HandiCap` varchar(45) DEFAULT NULL,
  `Name1Player` varchar(150) DEFAULT NULL,
  `Surname1Player` varchar(150) DEFAULT NULL,
  `Name2Player` varchar(150) DEFAULT NULL,
  `Surname2Player` varchar(150) DEFAULT NULL,
  `HandiCap1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idscorecapturedata`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scorecapturedata`
--

LOCK TABLES `scorecapturedata` WRITE;
/*!40000 ALTER TABLE `scorecapturedata` DISABLE KEYS */;
INSERT INTO `scorecapturedata` VALUES (1635689444241,'1','Breyton Paulse','Riyadh Peer','','','B Paulse (7) & R Peer (1)','-17','','36','1','7','BREYTON','PAULSE','RIYADH','PEER','1'),(1635689444347,'2','Ian Eveleigh','Mark Anders','','','M Anders (+2) & I Eveleigh (2)','-12','','36','2','2','IAN','EVELEIGH','MARK','ANDERS','+2'),(1635689444454,'3','Dave Stafford','Graham Berry','','','D Stafford (6) & G Berry (5)','-11','','36','3','6','DAVE','STAFFORD','GRAHAM','BERRY','5'),(1635689444563,'3','Byron Petzer','Thomas Abt','','','T Abt (2) & B Petzer (16)','-11','','36','','16','BYRON','PETZER','THOMAS','ABT','2'),(1635689444671,'5','John Plant','Shaheen Vawda','','','S Vawda (6) & J Plant (1)','-9','','36','5','1','JOHN','PLANT','SHAHEEN','VAWDA','6'),(1635689444779,'6','Herschelle Gibbs','Henry Davids','','','H Gibbs (2) & H Davids (2)','-8','','36','6','2','HERSCHELLE','GIBBS','HENRY','DAVIDS','2'),(1635689444884,'7','Marius Schoeman','Impi Visser','','','M Schoeman (9) & I Visser (9)','-6','','36','7','9','MARIUS','SCHOEMAN','IMPI','VISSER','9'),(1635689444991,'7','Marco Wentzel','Schalk Brits','','','S Brits (2) & M Wentzel (5)','-6','','36','','5','MARCO','WENTZEL','SCHALK','BRITS','2'),(1635689445099,'9','Danie Visser','Adrian Hansen','','','D Visser (6) & A Hansen (2)','-5','','36','9','6','DANIE','VISSER','ADRIAN','HANSEN','2'),(1635689445207,'10','Odwa Ndungane','Akona Ndungane','','','O Ndungane (8) & A Ndungane (6)','-4','','36','10','8','ODWA','NDUNGANE','AKONA','NDUNGANE','6'),(1635689445315,'10','Burger Van Der Merwe','Francois Pienaar','','','F Pienaar (9) & B Van Der Merwe (8)','-4','','36','','8','BURGER','VAN DER','FRANCOIS','PIENAAR','9'),(1635689445422,'12','Nick Pagden','Nick Mallet','','','N Mallet (10) & N Pagden (7)','-3','','36','12','7','NICK','PAGDEN','NICK','MALLET','10'),(1635689445530,'12','Pieter Karsten','Arrie Rautenbach','','','A Rautenbach (14) & P Karsten (11)','-3','','36','','11','PIETER','KARSTEN','ARRIE','RAUTENBACH','14'),(1635689445638,'12','Neil McKenzie','Graeme Smith','','','G Smith (9) & N McKenzie (3)','-3','','36','','3','NEIL','MCKENZIE','GRAEME','SMITH','9'),(1635689445745,'12','Craig Frauenstein','Martin Banner','','','M Banner (2) & C Frauenstein (1)','-3','','36','','1','CRAIG','FRAUENSTEIN','MARTIN','BANNER','2'),(1635689445853,'16','Kevin Ullyett','Shaun Pollock','','','S Pollock (1) & K Ullyett (+2)','-2','','36','16','+2','KEVIN','ULLYETT','SHAUN','POLLOCK','1'),(1635689445959,'16','Andile Khumalo','Zukile Nomvete','','','A Khumalo (10) & Z Nomvete (9)','-2','','36','','10','ANDILE','KHUMALO','ZUKILE','NOMVETE','9'),(1635689446068,'18','Victor Matfield','Fourie du Preez','','','V Matfield (7) & F du Preez (2)','-1','','36','18','7','VICTOR','MATFIELD','FOURIE','DU PREEZ','2'),(1635689446175,'18','Murray Collins','Gary Teichmann','','','G Teichmann (10) & M Collins (12)','-1','','36','','12','MURRAY','COLLINS','GARY','TEICHMANN','10'),(1635689446282,'18','Neil Tovey','Mark Tovey','','','N Tovey (3) & M Tovey (4)','-1','','36','','3','NEIL','TOVEY','MARK','TOVEY','4'),(1635689446390,'21','Butch James','Jean de Villiers','','','J de Villiers (10) & B James (3)','E','','36','21','3','BUTCH','JAMES','JEAN','DE VILLIERS','10'),(1635689446496,'22','Shaun Bartlett','Stanton Fredericks','','','S Bartlett (5) & S Fredericks (7)','+1','','36','22','5','SHAUN','BARTLETT','STANTON','FREDERICKS','7'),(1635689446603,'22','Jimmy Sounes','Jonas Bogoshi','','','J Bogoshi (14) & J Sounes (5)','+1','','36','','5','JIMMY','SOUNES','JONAS','BOGOSHI','14'),(1635689446711,'22','Gary Hackner','Selwyn Nathan','','','S Nathan (4) & G Hackner (8)','+1','','36','','8','GARY','HACKNER','SELWYN','NATHAN','4'),(1635689446819,'22','Marc Jury','Darryl Egdes','','','M Jury (5) & D Egdes (5)','+1','','36','','5','MARC','JURY','DARRYL','EGDES','5'),(1635689446927,'22','Abdool Saib','Nkosinathi Biko','','','N Biko (15) & A Saib (8)','+1','','36','','8','ABDOOL','SAIB','NKOSINATHI','BIKO','15'),(1635689447034,'22','Josiah Mashigo','Mogopodi Mokoena','','','M Mokoena (13) & J Mashigo (16)','+1','','33','','16','JOSIAH','MASHIGO','MOGOPODI','MOKOENA','13'),(1635689447142,'22','Elton Masia','William Mzimba','','','W Mzimba (8) & E Masia (6)','+1','','33','','6','ELTON','MASIA','WILLIAM','MZIMBA','8'),(1635689447250,'29','Mark Williams','Neil Andrews','','','N Andrews (13) & M Williams (8)','+2','','36','29','8','MARK','WILLIAMS','NEIL','ANDREWS','13'),(1635689447356,'29','Sello Moloko','Salala Lesela','','','S Lesela (4) & S Moloko (11)','+2','','36','','11','SELLO','MOLOKO','SALALA','LESELA','4'),(1635689447465,'29','Thabo Mosololi','Lwazi Mabuza','','','T Mosololi (4) & L Mabuza (7)','+2','','36','','4','THABO','MOSOLOLI','LWAZI','MABUZA','7'),(1635689447572,'29','Jacques du Toit','Gary Rudling','','','J du Toit (7) & G Rudling (4)','+2','','36','','7','JACQUES','DU TOIT','GARY','RUDLING','4'),(1635689447680,'29','Brad Kark','Jola Nase','','','J Nase (7) & B Kark (2)','+2','','36','','2','BRAD','KARK','JOLA','NASE','7'),(1635689447788,'29','Jason Quinn','Graeme Watson','','','J Quinn (10) & G Watson (+2)','+2','','36','','10','JASON','QUINN','GRAEME','WATSON','+2'),(1635689447897,'35','Alex Maditsi','Mogologolo Phasha','','','A Maditsi (8) & M Phasha (13)','+3','','36','35','8','ALEX','MADITSI','MOGOLOGOLO','PHASHA','13'),(1635689448004,'36','Karl Dahl','Brendan Jones','','','K Dahl (17) & B Jones (4)','+4','','36','36','17','KARL','DAHL','BRENDAN','JONES','4'),(1635689448112,'36','Andries Rossouw','Nqaba Ndiweni','','','N Ndiweni (11) & A Rossouw (8)','+4','','36','','8','ANDRIES','ROSSOUW','NQABA','NDIWENI','11'),(1635689448218,'36','Mandla Mlangeni','Moss Ngoasheng','','','M Ngoasheng (5) & M Mlangeni (8)','+4','','36','','8','MANDLA','MLANGENI','MOSS','NGOASHENG','5'),(1635689448325,'39','Dawie De Villiers','Althon Beukes','','','D De Villiers (14) & A Beukes (6)','+5','','36','39','14','DAWIE','DE VILLIERS','ALTHON','BEUKES','6'),(1635689448432,'39','Anton Du Randt','Costa Natsas','','','A Du Randt (2) & C Natsas (16)','+5','','36','','2','ANTON','DU RANDT','COSTA','NATSAS','16'),(1635689448539,'39','Maps Maponyane','Owen Nkumane','','','O Nkumane (5) & M Maponyane (2)','+5','','36','','2','MAPS','MAPONYANE','OWEN','NKUMANE','5'),(1635689448647,'42','Bryden Rose','Craig Comins','','','C Comins (4) & B Rose (0)','+6','','36','42','0','BRYDEN','ROSE','CRAIG','COMINS','4'),(1635689448755,'42','Stuart Berry','Imtiaz Patel','','','I Patel (11) & S Berry (6)','+6','','36','','6','STUART','BERRY','IMTIAZ','PATEL','11'),(1635689448863,'44','Jimmy Tau','Matthew Booth','','','M Booth (8) & J Tau (6)','+7','','36','44','6','JIMMY','TAU','MATTHEW','BOOTH','8'),(1635689448971,'44','Stephen Nale','Sedise Moseneke','','','S Moseneke (8) & S Nale (8)','+7','','36','','8','STEPHEN','NALE','SEDISE','MOSENEKE','8'),(1635689449080,'44','Anton Van Wyk','Deon Storm','','','A Van Wyk (14) & D Storm (5)','+7','','36','','14','ANTON','VAN WYK','DEON','STORM','5'),(1635689449186,'47','Ayanda Swana','Reagile Moatshe','','','R Moatshe (10) & A Swana (10)','+9','','36','47','10','AYANDA','SWANA','REAGILE','MOATSHE','10'),(1635689449295,'47','Pieter Wasserfall','Rafik Mohamed','','','R Mohamed (13) & P Wasserfall (11)','+9','','36','','11','PIETER','WASSERFALL','RAFIK','MOHAMED','13'),(1635689449401,'49','Patrick Lambie','Bryan Habana','','','B Habana (12) & P Lambie (8)','+10','','36','49','8','PATRICK','LAMBIE','BRYAN','HABANA','12'),(1635689449508,'49','Mark Wilcox','Gerhard Van Der Merwe','','','M Wilcox (8) & G Van Der Merwe (6)','+10','','36','','8','MARK','WILCOX','GERHARD','VAN DER MERWE','6'),(1635689449616,'49','Michal Kotze','Hamil Bhoora','','','M Kotze (6) & H Bhoora (11)','+10','','36','','6','MICHAL','KOTZE','HAMIL','BHOORA','11'),(1635689449723,'52','JC Pretorius','Shakes Soyizwapi','','','S Soyizwapi (11) & J Pretorius (11)','+11','','36','52','11','JC','PRETORIUS','SHAKES','SOYIZWAPI','11'),(1635689449833,'52','Sadiq Dindar','Nazeer Camaroodeen','','','N Camaroodeen (10) & S Dindar (8)','+11','','36','','8','SADIQ','DINDAR','NAZEER','CAMAROODEEN','10'),(1635689449941,'54','Heinrich Du Preez','Stefan Terblanche','','','H Du Preez (7) & S Terblanche (8)','+12','','36','54','7','HEINRICH','DU PREEZ','STEFAN','TERBLANCHE','8'),(1635689450049,'55','Sturu Pasiya','Brett Rowlands','','','S Pasiya (8) & B Rowlands (8)','+13','','36','55','8','STURU','PASIYA','BRETT','ROWLANDS','8'),(1635689450155,'55','Gcobani Bobo','Hanyani Shimange','','','G Bobo (9) & H Shimange (14)','+13','','36','','9','GCOBANI','BOBO','HANYANI','SHIMANGE','14'),(1635689450262,'57','Mohamed Saloojee','James du Preez','','','M Saloojee (+2) & J du Preez (5)','+16','','36','57','+2','MOHAMED','SALOOJEE','JAMES','DU PREEZ','5'),(1635689450371,'58','Byron Du Plessis','Jim Volkwyn','','','J Volkwyn (14) & B Du Plessis (8)','+17','','36','58','8','BYRON','DU PLESSIS','JIM','VOLKWYN','14'),(1635689450478,'58','Serame Taukobang','Khaya Gobodo','','','S Taukobang (14) & K Gobodo (12)','+17','','36','','14','SERAME','TAUKOBANG','KHAYA','GOBODO','12'),(1635689450585,'60','Achmat Jacobs','Faisal Mkhize','','','F Mkhize (18) & A Jacobs (13)','+18','','36','60','13','ACHMAT','JACOBS','FAISAL','MKHIZE','18'),(1635689450691,'61','Bantu Holomisa','Ike Ngwena','','','B Holomisa (8) & I Ngwena (8)','+21','','36','61','8','BANTU','HOLOMISA','IKE','NGWENA','8'),(1635689450800,'62','Corne Krige','JP Pietersen','','','C Krige (14) & J Pietersen (16)','+27','','36','62','14','CORNE','KRIGE','JP','PIETERSEN','16'),(1635689450909,'63','Rudi Hanekom','Jurie Hanekom','','','R Hanekom (17) & J Hanekom (14)','+37','','36','63','17','RUDI','HANEKOM','JURIE','HANEKOM','14'),(1635689451017,'63','Hein Koegelenberg','Toks van der Linde','','','H Koegelenberg (7) & T van der Linde (10)','+11','','36','','7','HEIN','KOEGELENBERG','TOKS','VAN DER  MERWE','10');
/*!40000 ALTER TABLE `scorecapturedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scorecaptureplayers`
--

DROP TABLE IF EXISTS `scorecaptureplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scorecaptureplayers` (
  `playerid` bigint(20) NOT NULL,
  `Firstname` varchar(150) DEFAULT NULL,
  `Lastname` varchar(150) DEFAULT NULL,
  `Company` varchar(45) DEFAULT NULL,
  `Title` varchar(150) DEFAULT NULL,
  `Bio2` varchar(300) DEFAULT NULL,
  `Bio3` varchar(300) DEFAULT NULL,
  `HandiCap` varchar(45) DEFAULT NULL,
  `HotList` bigint(20) DEFAULT '0',
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scorecaptureplayers`
--

LOCK TABLES `scorecaptureplayers` WRITE;
/*!40000 ALTER TABLE `scorecaptureplayers` DISABLE KEYS */;
INSERT INTO `scorecaptureplayers` VALUES (5042,'MATTHEW','CARVELL','','','','',NULL,0),(5810,'MARK','TOVEY','NIKE GOLF','PRODUCT MANAGER: ','HAS MADE 2 HOLE-IN-ONES','PROFESSIONAL FOOTBALLER FOR 21 SEASONS','4',0),(26676,'THOMAS','ABT','SUNSHINE TOUR COMMISSIONER','','HAS BEEN TO 5 MASTERS, 3 RYDER CUPS AND 5 BRITISH OPENS','TRAVELLED TO INDIA TO RUN THE INDIAN OPEN','2',1635586424418),(26690,'JAMES','DU PREEZ','','','','','5',0),(29190,'DEON','STORM','PWC','PARTNER: ','HAS MADE A HOLE-IN-ONE ','ENJOYS TRAVELLING AND  FINE WINE','5',0),(29319,'WILLIAM','MZIMBA','VODACOM BUSINESS GROUP','CEO: ','','','8',0),(29709,'RIYADH','PEER','','','','','1',0),(31652,'ZUKILE','NOMVETE','KAKANYO BUSINESS SOLUTIONS','CHAIRMAN: ','ATTENDED THE 2019 RUGBY WORLD CUP IN JAPAN','HOME CLUB: RUIMSIG COUNTRY CLUB','9',0),(33157,'FOURIE','DU PREEZ','FLEDGE CAPITAL','BOARD OF ITNA/MUNSOFT: ','LEOPARD CREEK COUNTRY CLUB MEMBER','BEST SCORE: 67 (LEOPARD CREEK COUNTRY CLUB)','2',0),(33191,'SELWYN','NATHAN','SUNSHINE TOUR','DEPUTY DIRECTOR :','','','4',0),(34295,'CRAIG','COMINS','GLOBAL GOLF ','MERCHANDISE DIRECTOR: ','HOWICK GOLF CLUB MEMBER','BEST SCORE: 69 (PARKVIEW GOLF CLUB)','4',0),(44602,'IKE','NGWENA','MTHA CONSULTING SERVICES','CHAIRMAN: ','HOME CLUB: EAST LONDON GOLF CLUB','BEST ROUND: 76','8',0),(47255,'TOKS','VAN DER LINDE','SUPERSPORT','COMMENTATOR & ANALYST: ','','HOST OF TOKS N TJOPS','10',0),(47916,'GRAEME','SMITH',' CSA ','DIRECTOR OF CRICKET: ','REPRESENTED SOUTH AFRICA IN 117 TEST MATCHES','','9',0),(48948,'DARRYL','EGDES','MORECORP','CEO: ','','','5',0),(49196,'COSTA','NATSAS','PWC','PARTNER: ','ATTENDED 3 RUGBY WORLD CUP TOURNAMENTS','BEST ROUND: 85','16',0),(49348,'NQABA','NDIWENI','PWC','DIRECTOR: ','BEST ROUND: 77','ASPIRES TO ATTEND THE RYDER CUP','11',0),(49547,'HAMIL','BHOORA','PWC','PARTNER: ','THE COUNTRY CLUB JOHANNESBURG MEMBER','BEST SCORE: 85 (CCJ ROCKLANDS)','11',0),(49741,'GRAEME','WATSON','SUPERGROUP','DEALERSHIP CEO: ','','','-2',0),(50601,'BANTU','HOLOMISA','UDM','PRESIDENT: ','','','8',0),(51262,'OWEN','NKUMANE','FRONT ROW AUTO BODY','DIRECTOR: ','SUPERSPORT PRESENTER & ANALYST','BEST ROUND: 73','5',0),(51263,'MATTHEW','BOOTH','ARTIFICIAL GRASS SA ','DIRECTOR: ','REPRESENTATED SOUTH AFRICA IN THE OLYMPICS IN THE YEAR 2000','REPRESENTED SOUTH AFRICA IN THE FIFA WORLD CUP U20 AND SNR','8',1635586641640),(51373,'JASON','QUINN','ABSA BANK LIMITED','INTERIM CEO: ','BEST ROUND: 79','CFO OF THE YEAR IN 2020','10',0),(51374,'ARRIE','RAUTENBACH','ABSA','CE RETAIL & BUSINESS BANKING: ','BEST ROUND: 74','HOME COURSE: DURBAN COUNTRY CLUB','14',0),(51382,'SEDISE','MOSENEKE','ENCHA GROUP','CEO: ','','','8',0),(51393,'NEIL','ANDREWS','SUPERSPORT ','BRAND AMBASSADOR: SUPERPICKS - ','EAGLE CANYON GOLF CLUB MEMBER','BEST SCORE: 85 ( THE WANDERERS GOLF CLUB)','13',0),(51400,'SHAUN','POLLOCK','SUPERSPORT','CRICKET ANALYST: ','421 WICKETS IN 108 TEST MATCHES FOR SOUTH AFRICA','','1',0),(51404,'HENRY','DAVIDS','','','ODI DEBUT: 2013 v PAKISTAN','SCORED 6990 RUNS IN 132 FIRST-CLASS APPEARANCES','2',0),(51407,'ADRIAN','HANSEN','3PM INVESTMENTS','ASSET MANAGER: ','DURBAN COUNTRY CLUB MEMBER','BEST SCORE: 68 (DURBAN COUNTRY CLUB)','2',1635586559786),(51423,'AKONA','NDUNGANE','','','REPRESENTED THE SPRINGBOKS IN 11 TEST MATCHES','MADE 108 APPEARANCES FOR THE BULLS','6',0),(51424,'BREYTON','PAULSE','SUPERSPORT','RUGBY ANALYST: ','REPRESENTED THE SPRINGBOKS IN 64 TEST MATCHES','MADE 57 APPEARANCES FOR THE STORMERS','7',0),(51429,'NICK','MALLET','SUPERSPORT','RUGBY ANALYST: ','SPRINGBOK HEAD COACH (1997 - 2000)','ITALY HEAD COACH (2007 - 2011)','10',0),(51430,'STEFAN','TERBLANCHE','ST15 FITNESS AND HEALTH','FITNESS GUIDE & ENTREPENEUR: ','SUMMITED KILIMANJARO','TOOK PART IN THE 2014 CAPE EPIC','8',0),(51432,'GARY','TEICHMANN','TEICHMANN CONSTRUCTION','DIRECTOR: ','BEST ROUND: 79','REPRESENTED SOUTH AFRICA IN 42 TEST MATCHES','10',0),(51434,'JEAN','DE VILLIERS','CITADEL WEALTH MANAGEMENT','HEAD OF PHILANTHROPY: ','PAARL GOLF CLUB MEMBER','FORMER SPRINGBOK CAPTAIN','10',0),(51437,'VICTOR','MATFIELD','SUPERSPORT','RUGBY ANALYST: ','2007 RUGBY WORLD CUP WINNER','3-TIME SUPER RUGBY WINNER','7',0),(51439,'STANTON','FREDERICKS','SUPERSPORT ','FOOTBALL ANALYST: ','FORMER FOOTBALLER','CATHEDRAL PEAK MEMBER','7',0),(51444,'IMTIAZ','PATEL','MULTICHOICE GROUP','EXECUTIVE CHAIRMAN: ','','','11',0),(51445,'JIM','VOLKWYN','MULTICHOICE','NON-EXECUTIVE DIRECTOR: ','','','14',0),(51446,'NAZEER','CAMAROODEEN','','','','','10',0),(51451,'RAFIK','MOHAMED','E-TILE','GENERAL MANAGER: ','','','13',0),(51459,'DANIE','VISSER','','','1990 & 1993 AUSTRALIAN OPEN DOUBLES WINNER','1990 US OPEN DOUBLES WINNER','6',1635586550853),(51576,'ODWA','NDUNGANE','NDUNGANE CONSTRUCTION','DIRECTOR: ','REPRESENTED THE SPRINGBOKS IN 9 TEST MATCHES','ATTENDED HUDSON PARK HIGH SCHOOL','8',0),(51967,'KEVIN','ULLYETT','','','2005 AUSTRALIAN OPEN DOUBLES WINNER','2001 US OPEN DOUBLES WINNER','-2',0),(53507,'JIMMY','TAU','SUPERSPORT','FOOTBALL ANALYST: ','','','6',1635586617822),(53918,'GARY','RUDLING','FIRST NATIONAL BANK','IT HEAD: ','HAS MADE 3 HOLE-IN-ONES','BEST ROUND: 65','4',0),(55695,'MARTIN','BANNER','NATIONAL AIRWAYS CORPORATION','CHIEF EXECUTIVE OFFICER: ','THE RIVER CLUB GOLF COURSE MEMBER','FIXED WING AND HELICOPTER PILOT','2',0),(56621,'JACQUES','DU TOIT','VOX TELECOM','CEO: ','','','7',0),(57381,'ANTON','DU RANDT','PWC','PARTNER: ','','','2',0),(57464,'MOHAMED','SALOOJEE','','','','','-2',0),(58518,'SALALA','LESELA','JOLA CAPITAL ','CHIEF EXECUTIVE OFFICER: ','THE WANDERES GOFL CLLUB)','BEST SCORE: 70 (THE WANDERES GOLF CLUB)','4',0),(58624,'MOSS','NGOASHENG','SAFIKA HOLDINGS','CEO: ','','','5',0),(58674,'ELTON','MASIA','UBS','EXECUTIVE DIRECTOR: ','','','6',0),(69041,'ALTHON','BEUKES','OPENSERVE','CEO: ','','','6',0),(69484,'ANDILE','KHUMALO','','','','','10',0),(69626,'GARY','HACKNER','','','','','8',0),(71570,'SELLO','MOLOKO','THESELE GROUP','CHAIRMAN: ','','','11',0),(71620,'KHAYA','GOBODO','OLD MUTUAL INVESTMENTS','MANAGING DIRECTOR: ','METROPOLITAN GOLF CLUB MEMBER','MANANGER OF THE YEAR 2018 - BLACK MANAGEMENT FORUM','12',0),(71889,'SHAUN','BARTLETT','CAPE TOWN SPURS','FOOTBALL COACH: ','AFRICAN CUP OF NATIONS WINNER: 1996','2001 ENGLISH PREMIER LEAGUE GOAL OF THE SEASON WINNER','5',1635586511246),(71905,'NICK','PAGDEN','CITIGROUP SOUTH AFRICA','CHAIRMAN: ','HAS MADE 2 HOLE-IN-ONES','BEST ROUND: 71','7',0),(71962,'LWAZI','MABUZA','TEZA INVESTMENTS','DIRECTOR: ','THE RIVER CLUB GOLF COURSE MEMBER','BEST SCORE: 79 (SIMOLA)','7',0),(72170,'BUTCH','JAMES','SUPERSPORT ','COMMENTATOR: ','MOUNT EDGECOMBE COUNTRY CLUB MEMBER','BEST SCORE: 69 (ROYAL DURBAN COUNTRY CLUB)','3',0),(75105,'THABO','MOSOLOLI','TRUWORTHS','NON EXECUTIVE DIRECTOR: ','','','4',0),(75927,'CRAIG','FRAUENSTEIN','RLG AFRICA','CHIEF OPERATING OFFICER: ','THE ELS CLUB MEMBER','BEST SCOER: 68 (THE ELS CLUB, COPPERLEAF)','1',0),(76163,'GRAHAM','BERRY','FORUS','EXECUTIVE: ','ROYAL DURBAN GOLF CLUB MEMBER','RAN THE COMRADES MARATHON IN THE YEAR 2000 ','5',0),(87020,'MARC','JURY','SUPERSPORT','CEO: ','','','5',0),(97664,'BRYDEN','ROSE','MORECORP','GROUP BUYING MANAGER: ','HAS MADE 2 HOLE-IN-ONES','BEST ROUND: 69','0',0),(98684,'MARK','ANDERS','GLOBAL GOLF ','MANAGING DIRECTOR: ','PARKVIEW GOLF CLUB MEMBER','BEST SCORE: 65 (ROYAL DURBAN GOLF CLUB)','-2',1635586525663),(99304,'MICHAL','KOTZE','PWC','PARTNER: ','','','6',0),(99749,'HEINRICH','DU PREEZ','EV GLOBAL','CHIEF EXECUTIVE OFFICER :','THE FIRST PERSON TO HAVE PLAYED A ROUND OF GOLF ON ALL 6 CONTINENTS IN JUST 5 DAYS','MADE 7 HOLE IN ONES TWO OF THEM ON PAR 4\'S','7',0),(99834,'MOGOPODI','MOKOENA','CHANCELLOR HOUSE HOLDINGS','MANAGING DIRECTOR: ','PECANWOOD GOLF & COUNTRY CLUB MEMBER','BEST SCORE: 85 (PECANWOOD GOLF & COUNTRY CLUB)','13',0),(99859,'MANDLA','MLANGENI','','','','','8',0),(99864,'JONAS','BOGOSHI','BCX','CHIEF EXECUTIVE OFFICER: ','ATTENDED THE UNIVERSITY OF CAPE TOWN','BEST SCORE: 78 (WOODHILL ESTATE AND COUNTRY CLUB)','14',0),(99865,'SHAHEEN','VAWDA','BCX','CHIEF OF SALES: ','','','6',0),(110690,'ANTON','VAN WYK','','','','','14',0),(111932,'REAGILE','MOATSHE','INVESTEC','HEAD - CORPORATE CLIENT COVERAGE: ','','','10',0),(112064,'MAPS','MAPONYANE','','','ENTREPRENEUR','GQ BEST DRESSED MAN 2011','2',0),(112278,'MOGOLOGOLO','PHASHA','BLACK IQ PHARMA','CEO: ','BEST ROUND: 84','LOVES BUNGEE JUMPING','13',0),(124371,'NKOSINATHI','BIKO','STEVE BIKO FOUNDATION','CEO: ','','','15',0),(135418,'JOHN','SMIT','SSG HOLDINGS','CEO: ','2007 RUGBY WORLD CUP WINNING CAPTAIN','MADE 125 APPEARANCES FOR THE SHARKS',NULL,0),(156266,'BRENDAN','JONES','BMW FINANCIAL SERVICES','NATIONAL SALES MANAGER: ','CLOVELY COUNTRY CLUB MEMBER','BEST SCORE: 73 (SOMERSET WES GOLF CLUB)','3',0),(167199,'IRVIN','KHOZA','ORLANDO PIRATES','CHAIRMAN: ','','',NULL,0),(167200,'HEIN','KOEGELENBERG','LA MOTTE WINE ESTATE','CEO: ','','','7',0),(167207,'JOLA','NASE','','','','','7',0),(167210,'FRANCOIS','PIENAAR','ASEM','FOUNDER & CEO: ','BEST ROUND: LEVEL PAR','1995 RUGBY WORLD CUP WINNING CAPTAIN','9',0),(167214,'BRETT','ROWLANDS','SUPERGROUP DEALERSHIP','FRANCHISE EXECUTIVE: ','HAS MADE 2 HOLE-IN-ONES','BEST ROUND: 70','8',0),(167215,'HANYANI','SHIMANGE','SUPERSPORT','RUGBY ANALYST: ','REPRESENTED THE SPRINGBOKS IN 9 TEST MATCHES','MADE 35 APPEARANCES FOR THE CHEETAHS','14',0),(167218,'SHAKES','SOYIZWAPI','SOUTH AFRICAN 7\'S TEAM','CAPTAIN: ','89 APPEARANCES FOR THE BLITZBOKKE','35 APPEARANCES FOR THE EP KINGS','11',0),(167224,'IMPI','VISSER','','','BORN IN PONGOLA, SOUTH AFRICA','REPRESENTED UP-TUKS IN THE VARSITY CUP','9',1635586506027),(167227,'HERSCHELLE','GIBBS','','','','6167 TEST RUNS AT AN AVERAGE OF 41.95','2',0),(167995,'MURRAY','COLLINS','COLLINS RESIDENTIAL','DIRECTOR: ','MOUNT EDGECOMBE COUNTRY CLUB MEMBER','BEST SCORE: 76 (UMHLALI COUNTRY CLUB)','12',0),(180094,'NEIL','MCKENZIE','','','','MADE HIS ODI DEBUT IN 2000 v ZIMBABWE','3',0),(192696,'KARL','DAHL','BMW PAARLBERG','MANAGING DIRECTOR: ','','','13',0),(194276,'STEPHEN','NALE','STEPHEN NALE PROPERTIES','CEO: ','','','8',0),(194607,'ANDRIES','ROSSOUW','PWC','PARTNER: ','BEST ROUND: 80','STARTED PLAYING GOLF IN PORT MORESBY','8',0),(195460,'JC','PRETORIUS','','','','REPRESENTED SA SCHOOLS 2016','11',0),(198199,'FAISAL','MKHIZE','ABSA BANK','MANAGING EXECUTIVE: ','','','18',0),(200939,'ALEX','MADITSI','ARM','NON-EXECUTIVE DIRECTOR: ','','','8',1635586607897),(201245,'JP','PIETERSEN','','','2007 RUGBY WORLD CUP WINNER','137 APPEARANCES FOR THE SHARKS','16',0),(202213,'NEIL','TOVEY','MNB ENERGY','DIRECTOR: ','HAS MADE 2 HOLE-IN-ONES','1996 AFCON WINNING CAPTAIN','3',0),(202478,'JOSIAH','MASHIGO','ATLATSA RESOURCES','CHIEF OPERATING OFFICER: ','THE ELS CLUB MEMBER','BEST SCORE: 86 (THE ELS CLUB)','16',0),(205171,'IAN','EVELEIGH','GLOBAL GOLF / ONE UP GOLF','GENERAL MANAGER: ','REPRESENTED SOUTH AFRICA IN THE PGA EUROPEAN TEAM CHAMPS, TURKEY 2014','PGA ENTREPRENEUR OF THE YEAR AWARD 2020','2',1635586539211),(207316,'SERAME','TAUKOBANG','TELKOM','CEO: ','','','14',0),(208120,'BRYAN','HABANA','','','2007 RUGBY WORLD CUP WINNER','REPRESENTED THE SPRINGBOKS IN 124 TEST MATCHES','12',0),(208121,'BURGER','VAN DER MERWE','WOOLWORTHS','DIRECTOR OF RETAIL OPERATIONS: ','BEST ROUND: 78','HOME COURSE: DE ZALZE','8',0),(208127,'JIMMY','SOUNES','CAPITEC','MANAGER OF CARD OPERTIONS: ','BEST ROUND: -1','HAS BEEN A CADDIE FOR FRIENDS OF THE SUNSHINE TOUR','5',0),(208131,'MARIUS','SCHOEMAN','SA RUGBY','SARU 7\'S HIGH PERFORMANCE MANAGER,','SCORED 103 TRIES ON THE WORLD 7\'S CIRCUIT','COMPLETED THE CAPE ARGUS 3 TIMES','9',1635586533089),(208137,'PIETER','KARSTEN','','','','','11',0),(218794,'ABDOOL','SAIB','BCX','CHIEF OF CONVERGED COMMUNICATIONS: ','','','8',0),(240162,'JOHN','PLANT','INVESTEC BANK LIMITED','HEAD OF SUPPLIER FINANCE: ','HAS MADE 2 HOLE-IN-ONES','PLAYED IPT GOLF AS A JUNIOR','1',0),(240603,'MARK','WILLIAMS','SUPERSPORT','FOOTBALL ANALYST: ','23 APPEARANCES FOR BAFANA BAFANA','','8',0),(242275,'CORNE','KRIGE','','','FORMER SPRINGBOK CAPTAIN','REPRESENTED THE SPRINGBOKS IN 39 TEST MATCHES','14',0),(244589,'SCHALK','BRITS','REMGRO','','GUINNESS WORLD RECORD FOR SMILLING THE LONGEST','BEST SCORE: 69 (STELLENBOSCH GOLF CLUB)','2',0),(244910,'SADIQ','DINDAR','SOUTH AFRICAN TOURISM','MANAGER: MARKETING AND PROMOTIONS MIDDLE EAST AND TURKEY: ','REPRESENTATED SOUTH AFRICA AT THE WORLD GOLF AMATEUR CHAMPS TURKEY 2016','BEST SCORE: 76 ( THE WANDERERS GOLF CLUB)','8',0),(246395,'BRAD','KARK','KLT HOLDINGS LIMITED','CEO: ','','','2',0),(246826,'ACHMAT','JACOBS','RONDEBOSCH EAST TOYOTA','GENERAL MANAGER: ','BUSINESS PERSON OF THE YEAR FINALIST (FNB)','BEST SCORE: 78 (MILNERTON GOLF CLUB)','13',0),(246827,'AYANDA','SWANA','SIEMENS HEALTHCARE','CEO: ','BEST ROUND: 86','HOME COURSE: RANDPARK COUNTRY CLUB','10',0),(246828,'BYRON','DU PLESSIS','MULTICHOICE GROUP','CORPORATE CHIEF FINANCIAL OFFICER: ','SWAM THE MIDMAR MILE 3 TIMES','BEST SCORE: 83 (RANDPARK GOLF CLUB)','8',0),(246829,'BYRON','PETZER','KINGMAKERS','CEO: ','','','16',1635586807594),(246830,'DAVE','STAFFORD','GLOBIS NETWOR SOLUTIONS','DIRECTOR: ','HOME COURSE: PEARL VALLEY','ENJOYS HELI-SKIING','6',0),(246831,'DAWIE','DE VILLIERS','ALEXANDER FORBES','CHIEF EXECUTIVE OFFICER: ','COMPLETED 2 ABSA CAPE EPICS','HOBBY: MOUNTAIN BIKING','14',0),(246832,'GCOBANI','BOBO','SHADOWBALL','DIRECTOR OF RUGBY: ','EAGLE CANYON GOLF CLUB MEMBER','BEST SCORE: 83 (HUDDLE PARK GOLF AND RECREATION)','9',0),(246833,'GERHARD','VAN DER MERWE','','','','','6',0),(246834,'JANNIE','DURAND','REMGRO','CEO: ','','','6',0),(246835,'JURIE','HANEKOM','TS 5 MINING GROUP','DIRECTOR OF OPERATIONS: ','H 562 PORT SHEPSTONE','BEST SCORE: 84 (NABOOMSPRUIT GOLF CLUB)','14',0),(246836,'MARK','WILCOX','ISM','CHAIRMAN: ','MADE A HOLE-IN-ONE ON A PAR 4','BEST ROUND: 69','8',0),(246838,'PATRICK','LAMBIE','COLLINS RESIDENTIAL','RESIDENTIAL PROJECTS: ','BOSCHOEK GOLF CLUB MEMBER','FORMER SPRINGBOK PLAYER','8',0),(246842,'PIETER','WASSERFALL','SIX33 GROUP','MANAGING DIRECTOR: ','BEST ROUND: 75','TES','11',0),(246844,'RUDI','HANEKOM','TS 5 MINING GROUP','PROJECT LEADER: ','LYNDEN INDOOR CRICKET CHAMPIONS 2019','BEST SCORE: 89 (LYNDEN GOLF CLUB)','17',0),(246847,'STURU','PASIYA','PAN AFRICAN ENERGY PROPERTIES','CHAIRMAN: ','ONE OF THE FORMER FOUNDERS OF THE PSL','CHAIRMAN OF BUSH BUCKS FOOTBALL CLUB','8',0),(246934,'MARCO','WENTZEL','','','','','5',0),(2469347,'DAMIAN','WRIGLEY','PEARL VALLEY GOLF ESTATE','GENERAL MANAGER:','','','',0);
/*!40000 ALTER TABLE `scorecaptureplayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoringpoints`
--

DROP TABLE IF EXISTS `scoringpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scoringpoints` (
  `idscoringpoints` int(11) NOT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `Points` int(11) DEFAULT NULL,
  PRIMARY KEY (`idscoringpoints`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoringpoints`
--

LOCK TABLES `scoringpoints` WRITE;
/*!40000 ALTER TABLE `scoringpoints` DISABLE KEYS */;
INSERT INTO `scoringpoints` VALUES (1,'Albatross',8),(2,'Eagle',5),(3,'Birdie',2),(4,'Par',0),(5,'Bogey',-1),(6,'Double Bogey or more',-3),(7,'Double Bogey or more',-3),(8,'Double Bogey or more',-3),(9,'Double Bogey or more',-3),(10,'Double Bogey or more',-3);
/*!40000 ALTER TABLE `scoringpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoringtype`
--

DROP TABLE IF EXISTS `scoringtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scoringtype` (
  `idscoringtype` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idscoringtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoringtype`
--

LOCK TABLES `scoringtype` WRITE;
/*!40000 ALTER TABLE `scoringtype` DISABLE KEYS */;
INSERT INTO `scoringtype` VALUES (0,'Strokes'),(1,'StableFord');
/*!40000 ALTER TABLE `scoringtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shots`
--

DROP TABLE IF EXISTS `shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shots` (
  `shotsid` bigint(20) NOT NULL,
  `idscore` bigint(20) DEFAULT '0',
  `holeid` varchar(45) DEFAULT '0',
  `strokes` varchar(45) DEFAULT NULL,
  `LiveStroke` varchar(45) DEFAULT NULL,
  `Putts` varchar(45) DEFAULT NULL,
  `Bunkers` varchar(45) DEFAULT '',
  `Fairway` varchar(45) DEFAULT '',
  `Gir` varchar(45) DEFAULT '',
  `Drive` int(11) DEFAULT NULL,
  `Chips` int(11) DEFAULT NULL,
  `Sand` int(11) DEFAULT NULL,
  `Penalties` int(11) DEFAULT NULL,
  `HoleStatus` int(11) DEFAULT '0',
  PRIMARY KEY (`shotsid`),
  KEY `fkidScore_idx` (`idscore`),
  CONSTRAINT `fk_Score` FOREIGN KEY (`idscore`) REFERENCES `score` (`idscore`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
INSERT INTO `shots` VALUES (1638361109210,1638361109167,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109226,1638361109167,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109241,1638361109167,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109257,1638361109167,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109272,1638361109167,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109295,1638361109167,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109310,1638361109167,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109326,1638361109167,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109342,1638361109167,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109357,1638361109167,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109373,1638361109167,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109395,1638361109167,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109411,1638361109167,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109426,1638361109167,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109442,1638361109167,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109457,1638361109167,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109473,1638361109167,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109495,1638361109167,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109627,1638361109573,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109642,1638361109573,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109658,1638361109573,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109674,1638361109573,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109696,1638361109573,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109711,1638361109573,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109727,1638361109573,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109743,1638361109573,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109758,1638361109573,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109774,1638361109573,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109796,1638361109573,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109812,1638361109573,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109827,1638361109573,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109843,1638361109573,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109859,1638361109573,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109874,1638361109573,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109896,1638361109573,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361109912,1638361109573,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110044,1638361109997,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110059,1638361109997,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110075,1638361109997,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110097,1638361109997,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110113,1638361109997,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110128,1638361109997,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110144,1638361109997,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110160,1638361109997,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110175,1638361109997,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110197,1638361109997,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110213,1638361109997,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110229,1638361109997,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110244,1638361109997,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110260,1638361109997,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110276,1638361109997,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110298,1638361109997,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110313,1638361109997,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110329,1638361109997,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110445,1638361110398,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110461,1638361110398,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110476,1638361110398,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110499,1638361110398,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110514,1638361110398,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110530,1638361110398,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110545,1638361110398,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110561,1638361110398,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110577,1638361110398,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110599,1638361110398,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110615,1638361110398,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110630,1638361110398,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110646,1638361110398,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110661,1638361110398,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110677,1638361110398,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110699,1638361110398,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110715,1638361110398,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110731,1638361110398,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110846,1638361110800,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110862,1638361110800,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110878,1638361110800,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110900,1638361110800,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110916,1638361110800,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110931,1638361110800,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110947,1638361110800,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110963,1638361110800,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361110978,1638361110800,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111000,1638361110800,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111016,1638361110800,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111032,1638361110800,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111047,1638361110800,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111063,1638361110800,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111079,1638361110800,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111101,1638361110800,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111116,1638361110800,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111132,1638361110800,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111248,1638361111201,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111264,1638361111201,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111279,1638361111201,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111301,1638361111201,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111317,1638361111201,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111333,1638361111201,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111348,1638361111201,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111364,1638361111201,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111380,1638361111201,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111402,1638361111201,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111417,1638361111201,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111433,1638361111201,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111449,1638361111201,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111464,1638361111201,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111480,1638361111201,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111502,1638361111201,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111518,1638361111201,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111533,1638361111201,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111649,1638361111603,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111665,1638361111603,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111680,1638361111603,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111703,1638361111603,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111718,1638361111603,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111734,1638361111603,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111750,1638361111603,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111765,1638361111603,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111781,1638361111603,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111803,1638361111603,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111819,1638361111603,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111834,1638361111603,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111850,1638361111603,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111865,1638361111603,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111881,1638361111603,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111903,1638361111603,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111935,1638361111603,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361111950,1638361111603,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112066,1638361112019,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112082,1638361112019,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112104,1638361112019,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112120,1638361112019,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112135,1638361112019,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112151,1638361112019,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112167,1638361112019,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112182,1638361112019,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112204,1638361112019,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112220,1638361112019,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112236,1638361112019,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112251,1638361112019,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112267,1638361112019,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112283,1638361112019,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112305,1638361112019,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112320,1638361112019,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112336,1638361112019,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112352,1638361112019,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112467,1638361112420,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112483,1638361112420,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112505,1638361112420,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112521,1638361112420,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112536,1638361112420,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112552,1638361112420,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112568,1638361112420,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112583,1638361112420,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112605,1638361112420,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112621,1638361112420,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112649,1638361112420,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112664,1638361112420,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112680,1638361112420,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112706,1638361112420,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112721,1638361112420,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112737,1638361112420,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112752,1638361112420,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112768,1638361112420,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112884,1638361112837,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112906,1638361112837,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112922,1638361112837,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112938,1638361112837,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112953,1638361112837,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112969,1638361112837,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361112984,1638361112837,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113007,1638361112837,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113022,1638361112837,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113038,1638361112837,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113053,1638361112837,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113069,1638361112837,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113085,1638361112837,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113107,1638361112837,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113123,1638361112837,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113138,1638361112837,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113154,1638361112837,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113169,1638361112837,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113285,1638361113238,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113308,1638361113238,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113323,1638361113238,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113339,1638361113238,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113354,1638361113238,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113370,1638361113238,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113386,1638361113238,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113408,1638361113238,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113424,1638361113238,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113439,1638361113238,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113455,1638361113238,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113470,1638361113238,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113486,1638361113238,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113508,1638361113238,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113524,1638361113238,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113540,1638361113238,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113555,1638361113238,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113571,1638361113238,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113687,1638361113640,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113709,1638361113640,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113725,1638361113640,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113740,1638361113640,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113756,1638361113640,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113772,1638361113640,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113787,1638361113640,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113809,1638361113640,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113825,1638361113640,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113841,1638361113640,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113856,1638361113640,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113872,1638361113640,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113888,1638361113640,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113910,1638361113640,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113925,1638361113640,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113941,1638361113640,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113957,1638361113640,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361113972,1638361113640,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114088,1638361114041,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114111,1638361114041,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114126,1638361114041,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114142,1638361114041,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114157,1638361114041,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114173,1638361114041,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114189,1638361114041,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114211,1638361114041,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114226,1638361114041,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114242,1638361114041,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114258,1638361114041,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114273,1638361114041,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114289,1638361114041,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114311,1638361114041,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114327,1638361114041,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114342,1638361114041,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114358,1638361114041,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114374,1638361114041,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114490,1638361114443,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114512,1638361114443,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114527,1638361114443,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114543,1638361114443,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114559,1638361114443,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114574,1638361114443,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114590,1638361114443,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114612,1638361114443,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114628,1638361114443,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114643,1638361114443,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114659,1638361114443,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114675,1638361114443,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114690,1638361114443,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114713,1638361114443,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114728,1638361114443,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114744,1638361114443,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114759,1638361114443,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114775,1638361114443,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114891,1638361114844,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114913,1638361114844,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114929,1638361114844,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114945,1638361114844,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114960,1638361114844,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114976,1638361114844,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361114991,1638361114844,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115014,1638361114844,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115029,1638361114844,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115061,1638361114844,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115076,1638361114844,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115092,1638361114844,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115114,1638361114844,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115130,1638361114844,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115145,1638361114844,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115161,1638361114844,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115177,1638361114844,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115192,1638361114844,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115330,1638361115277,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115346,1638361115277,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115362,1638361115277,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115377,1638361115277,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115393,1638361115277,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115415,1638361115277,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115431,1638361115277,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115446,1638361115277,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115462,1638361115277,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115478,1638361115277,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115493,1638361115277,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115515,1638361115277,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115531,1638361115277,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115547,1638361115277,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115562,1638361115277,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115578,1638361115277,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115594,1638361115277,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115616,1638361115277,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115747,1638361115694,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115763,1638361115694,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115779,1638361115694,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115794,1638361115694,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115816,1638361115694,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115832,1638361115694,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115848,1638361115694,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115863,1638361115694,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115879,1638361115694,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115895,1638361115694,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115917,1638361115694,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115932,1638361115694,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115948,1638361115694,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115964,1638361115694,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115979,1638361115694,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361115995,1638361115694,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116017,1638361115694,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116033,1638361115694,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116164,1638361116118,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116180,1638361116118,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116196,1638361116118,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116218,1638361116118,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116234,1638361116118,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116249,1638361116118,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116265,1638361116118,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116280,1638361116118,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116296,1638361116118,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116318,1638361116118,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116334,1638361116118,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116350,1638361116118,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116365,1638361116118,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116381,1638361116118,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116398,1638361116118,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116418,1638361116118,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116434,1638361116118,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116450,1638361116118,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116566,1638361116519,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116581,1638361116519,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116597,1638361116519,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116619,1638361116519,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116635,1638361116519,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116650,1638361116519,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116666,1638361116519,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116682,1638361116519,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116697,1638361116519,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116719,1638361116519,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116735,1638361116519,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116751,1638361116519,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116766,1638361116519,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116782,1638361116519,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116798,1638361116519,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116820,1638361116519,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116835,1638361116519,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116851,1638361116519,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116966,1638361116920,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116982,1638361116920,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361116998,1638361116920,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117020,1638361116920,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117035,1638361116920,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117051,1638361116920,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117067,1638361116920,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117082,1638361116920,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117098,1638361116920,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117120,1638361116920,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117136,1638361116920,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117151,1638361116920,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117167,1638361116920,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117183,1638361116920,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117198,1638361116920,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117220,1638361116920,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117236,1638361116920,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117251,1638361116920,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117367,1638361117320,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117383,1638361117320,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117399,1638361117320,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117421,1638361117320,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117436,1638361117320,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117452,1638361117320,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117468,1638361117320,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117483,1638361117320,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117499,1638361117320,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117521,1638361117320,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117537,1638361117320,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117552,1638361117320,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117568,1638361117320,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117584,1638361117320,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117599,1638361117320,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117622,1638361117320,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117637,1638361117320,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117653,1638361117320,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117769,1638361117722,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117784,1638361117722,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117800,1638361117722,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117822,1638361117722,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117838,1638361117722,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117854,1638361117722,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117874,1638361117722,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117890,1638361117722,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117906,1638361117722,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117922,1638361117722,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117938,1638361117722,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117954,1638361117722,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117969,1638361117722,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361117985,1638361117722,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118000,1638361117722,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118023,1638361117722,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118038,1638361117722,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118054,1638361117722,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118170,1638361118123,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118186,1638361118123,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118201,1638361118123,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118223,1638361118123,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118239,1638361118123,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118255,1638361118123,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118270,1638361118123,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118286,1638361118123,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118302,1638361118123,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118324,1638361118123,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118339,1638361118123,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118355,1638361118123,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118371,1638361118123,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118388,1638361118123,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118404,1638361118123,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118424,1638361118123,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118440,1638361118123,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118455,1638361118123,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118571,1638361118524,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118587,1638361118524,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118602,1638361118524,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118624,1638361118524,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118640,1638361118524,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118655,1638361118524,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118671,1638361118524,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118687,1638361118524,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118702,1638361118524,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118724,1638361118524,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118740,1638361118524,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118756,1638361118524,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118771,1638361118524,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118787,1638361118524,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118803,1638361118524,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118825,1638361118524,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118841,1638361118524,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118856,1638361118524,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118972,1638361118925,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361118988,1638361118925,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119003,1638361118925,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119026,1638361118925,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119041,1638361118925,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119057,1638361118925,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119073,1638361118925,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119088,1638361118925,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119104,1638361118925,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119126,1638361118925,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119145,1638361118925,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119160,1638361118925,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119176,1638361118925,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119192,1638361118925,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119207,1638361118925,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119226,1638361118925,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119242,1638361118925,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119257,1638361118925,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119373,1638361119326,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119389,1638361119326,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119405,1638361119326,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119427,1638361119326,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119442,1638361119326,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119458,1638361119326,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119474,1638361119326,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119489,1638361119326,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119505,1638361119326,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119527,1638361119326,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119543,1638361119326,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119574,1638361119326,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119590,1638361119326,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119605,1638361119326,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119628,1638361119326,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119643,1638361119326,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119659,1638361119326,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119674,1638361119326,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119790,1638361119744,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119806,1638361119744,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119828,1638361119744,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119844,1638361119744,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119859,1638361119744,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119875,1638361119744,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119891,1638361119744,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119906,1638361119744,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119929,1638361119744,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119944,1638361119744,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119960,1638361119744,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119975,1638361119744,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361119991,1638361119744,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120007,1638361119744,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120029,1638361119744,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120045,1638361119744,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120060,1638361119744,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120076,1638361119744,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120192,1638361120145,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120207,1638361120145,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120230,1638361120145,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120245,1638361120145,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120261,1638361120145,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120277,1638361120145,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120292,1638361120145,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120308,1638361120145,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120330,1638361120145,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120346,1638361120145,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120361,1638361120145,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120377,1638361120145,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120394,1638361120145,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120410,1638361120145,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120430,1638361120145,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120446,1638361120145,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120462,1638361120145,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120477,1638361120145,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120593,1638361120546,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120631,1638361120546,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120647,1638361120546,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120662,1638361120546,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120678,1638361120546,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120694,1638361120546,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120709,1638361120546,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120731,1638361120546,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120763,1638361120546,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120778,1638361120546,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120794,1638361120546,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120810,1638361120546,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120832,1638361120546,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120848,1638361120546,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120863,1638361120546,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120879,1638361120546,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120894,1638361120546,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361120910,1638361120546,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121048,1638361120995,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121064,1638361120995,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121080,1638361120995,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121095,1638361120995,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121111,1638361120995,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121133,1638361120995,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121149,1638361120995,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121164,1638361120995,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121180,1638361120995,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121195,1638361120995,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121211,1638361120995,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121233,1638361120995,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121249,1638361120995,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121265,1638361120995,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121280,1638361120995,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121296,1638361120995,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121312,1638361120995,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121334,1638361120995,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121465,1638361121412,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121481,1638361121412,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121497,1638361121412,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121512,1638361121412,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121534,1638361121412,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121550,1638361121412,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121566,1638361121412,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121581,1638361121412,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121597,1638361121412,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121613,1638361121412,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121635,1638361121412,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121650,1638361121412,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121666,1638361121412,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121682,1638361121412,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121697,1638361121412,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121713,1638361121412,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121735,1638361121412,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121751,1638361121412,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121882,1638361121836,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121898,1638361121836,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121914,1638361121836,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121936,1638361121836,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121952,1638361121836,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121967,1638361121836,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121983,1638361121836,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361121998,1638361121836,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122014,1638361121836,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122036,1638361121836,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122052,1638361121836,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122067,1638361121836,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122083,1638361121836,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122099,1638361121836,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122114,1638361121836,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122139,1638361121836,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122154,1638361121836,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122170,1638361121836,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122284,1638361122237,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122300,1638361122237,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122315,1638361122237,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122337,1638361122237,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122353,1638361122237,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122369,1638361122237,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122386,1638361122237,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122401,1638361122237,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122417,1638361122237,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122437,1638361122237,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122453,1638361122237,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122469,1638361122237,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122484,1638361122237,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122500,1638361122237,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122515,1638361122237,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122538,1638361122237,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122553,1638361122237,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122569,1638361122237,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122685,1638361122638,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122700,1638361122638,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122716,1638361122638,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122738,1638361122638,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122754,1638361122638,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122770,1638361122638,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122785,1638361122638,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122801,1638361122638,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122816,1638361122638,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122839,1638361122638,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122854,1638361122638,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122870,1638361122638,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122885,1638361122638,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122901,1638361122638,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122917,1638361122638,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122939,1638361122638,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122955,1638361122638,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361122970,1638361122638,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123098,1638361123039,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123114,1638361123039,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123139,1638361123039,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123155,1638361123039,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123171,1638361123039,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123186,1638361123039,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123202,1638361123039,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123217,1638361123039,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123240,1638361123039,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123255,1638361123039,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123271,1638361123039,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123287,1638361123039,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123302,1638361123039,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123318,1638361123039,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123340,1638361123039,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123356,1638361123039,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123371,1638361123039,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123387,1638361123039,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123503,1638361123456,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123519,1638361123456,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123541,1638361123456,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123556,1638361123456,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123572,1638361123456,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123588,1638361123456,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123603,1638361123456,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123619,1638361123456,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123641,1638361123456,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123657,1638361123456,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123672,1638361123456,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123688,1638361123456,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123704,1638361123456,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123719,1638361123456,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123741,1638361123456,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123757,1638361123456,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123773,1638361123456,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123788,1638361123456,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123904,1638361123857,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123920,1638361123857,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123942,1638361123857,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123958,1638361123857,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123973,1638361123857,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361123989,1638361123857,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124005,1638361123857,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124020,1638361123857,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124043,1638361123857,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124058,1638361123857,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124074,1638361123857,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124089,1638361123857,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124105,1638361123857,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124121,1638361123857,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124143,1638361123857,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124159,1638361123857,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124174,1638361123857,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124190,1638361123857,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124306,1638361124259,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124321,1638361124259,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124344,1638361124259,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124359,1638361124259,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124375,1638361124259,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124392,1638361124259,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124408,1638361124259,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124424,1638361124259,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124444,1638361124259,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124459,1638361124259,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124475,1638361124259,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124491,1638361124259,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124506,1638361124259,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124522,1638361124259,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124544,1638361124259,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124560,1638361124259,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124591,1638361124259,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124607,1638361124259,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124723,1638361124676,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124745,1638361124676,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124761,1638361124676,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124776,1638361124676,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124792,1638361124676,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124807,1638361124676,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124823,1638361124676,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124845,1638361124676,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124861,1638361124676,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124876,1638361124676,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124892,1638361124676,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124908,1638361124676,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124923,1638361124676,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124946,1638361124676,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124961,1638361124676,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124977,1638361124676,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361124992,1638361124676,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125008,1638361124676,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125124,1638361125077,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125146,1638361125077,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125162,1638361125077,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125178,1638361125077,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125193,1638361125077,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125209,1638361125077,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125224,1638361125077,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125247,1638361125077,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125262,1638361125077,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125278,1638361125077,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125294,1638361125077,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125309,1638361125077,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125325,1638361125077,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125347,1638361125077,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125363,1638361125077,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125378,1638361125077,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125394,1638361125077,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125410,1638361125077,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125526,1638361125479,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125548,1638361125479,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125563,1638361125479,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125595,1638361125479,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125610,1638361125479,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125626,1638361125479,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125648,1638361125479,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125664,1638361125479,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125679,1638361125479,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125695,1638361125479,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125711,1638361125479,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125726,1638361125479,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125748,1638361125479,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125764,1638361125479,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125780,1638361125479,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125795,1638361125479,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125811,1638361125479,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125827,1638361125479,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125949,1638361125911,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125965,1638361125911,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125980,1638361125911,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361125996,1638361125911,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126012,1638361125911,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126027,1638361125911,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126050,1638361125911,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126065,1638361125911,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126081,1638361125911,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126096,1638361125911,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126112,1638361125911,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126128,1638361125911,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126150,1638361125911,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126165,1638361125911,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126181,1638361125911,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126197,1638361125911,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126212,1638361125911,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126228,1638361125911,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126366,1638361126313,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126382,1638361126313,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126399,1638361126313,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126415,1638361126313,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126430,1638361126313,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126451,1638361126313,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126467,1638361126313,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126482,1638361126313,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126498,1638361126313,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126513,1638361126313,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126529,1638361126313,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126551,1638361126313,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126567,1638361126313,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126583,1638361126313,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126598,1638361126313,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126614,1638361126313,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126629,1638361126313,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126652,1638361126313,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126783,1638361126730,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126799,1638361126730,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126815,1638361126730,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126830,1638361126730,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126852,1638361126730,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126868,1638361126730,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126884,1638361126730,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126899,1638361126730,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126915,1638361126730,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126930,1638361126730,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126953,1638361126730,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126968,1638361126730,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361126984,1638361126730,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127000,1638361126730,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127015,1638361126730,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127031,1638361126730,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127053,1638361126730,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127069,1638361126730,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127200,1638361127153,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127216,1638361127153,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127232,1638361127153,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127254,1638361127153,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127269,1638361127153,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127285,1638361127153,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127301,1638361127153,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127316,1638361127153,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127332,1638361127153,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127347,1638361127153,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127376,1638361127153,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127392,1638361127153,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127419,1638361127153,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127435,1638361127153,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127454,1638361127153,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127470,1638361127153,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127485,1638361127153,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127501,1638361127153,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127617,1638361127570,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127633,1638361127570,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127654,1638361127570,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127670,1638361127570,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127686,1638361127570,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127701,1638361127570,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127717,1638361127570,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127733,1638361127570,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127755,1638361127570,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127770,1638361127570,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127786,1638361127570,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127802,1638361127570,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127817,1638361127570,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127833,1638361127570,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127855,1638361127570,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127871,1638361127570,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127886,1638361127570,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361127918,1638361127570,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128034,1638361127987,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128056,1638361127987,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128072,1638361127987,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128087,1638361127987,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128103,1638361127987,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128118,1638361127987,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128134,1638361127987,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128156,1638361127987,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128172,1638361127987,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128187,1638361127987,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128203,1638361127987,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128219,1638361127987,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128234,1638361127987,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128257,1638361127987,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128272,1638361127987,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128288,1638361127987,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128303,1638361127987,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128319,1638361127987,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128437,1638361128390,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128457,1638361128390,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128473,1638361128390,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128488,1638361128390,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128504,1638361128390,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128519,1638361128390,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128535,1638361128390,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128557,1638361128390,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128573,1638361128390,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128589,1638361128390,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128604,1638361128390,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128620,1638361128390,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128635,1638361128390,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128658,1638361128390,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128673,1638361128390,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128689,1638361128390,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128704,1638361128390,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128720,1638361128390,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128836,1638361128789,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128858,1638361128789,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128874,1638361128789,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128890,1638361128789,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128905,1638361128789,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128921,1638361128789,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128936,1638361128789,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128959,1638361128789,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128974,1638361128789,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361128990,1638361128789,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129005,1638361128789,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129021,1638361128789,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129037,1638361128789,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129058,1638361128789,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129074,1638361128789,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129090,1638361128789,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129105,1638361128789,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129121,1638361128789,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129237,1638361129190,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129259,1638361129190,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129275,1638361129190,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129290,1638361129190,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129306,1638361129190,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129322,1638361129190,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129337,1638361129190,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129360,1638361129190,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129375,1638361129190,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129391,1638361129190,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129406,1638361129190,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129422,1638361129190,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129438,1638361129190,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129460,1638361129190,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129476,1638361129190,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129491,1638361129190,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129507,1638361129190,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129522,1638361129190,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129638,1638361129592,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129661,1638361129592,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129676,1638361129592,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129692,1638361129592,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129708,1638361129592,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129723,1638361129592,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129739,1638361129592,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129761,1638361129592,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129777,1638361129592,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129792,1638361129592,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129808,1638361129592,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129824,1638361129592,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129839,1638361129592,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129861,1638361129592,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129877,1638361129592,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129893,1638361129592,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129908,1638361129592,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361129924,1638361129592,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130040,1638361129993,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130062,1638361129993,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130078,1638361129993,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130094,1638361129993,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130109,1638361129993,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130125,1638361129993,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130140,1638361129993,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130163,1638361129993,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130178,1638361129993,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130194,1638361129993,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130209,1638361129993,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130225,1638361129993,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130241,1638361129993,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130263,1638361129993,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130279,1638361129993,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130294,1638361129993,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130310,1638361129993,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130325,1638361129993,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130443,1638361130396,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130464,1638361130396,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130479,1638361130396,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130495,1638361130396,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130510,1638361130396,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130526,1638361130396,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130542,1638361130396,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130564,1638361130396,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130580,1638361130396,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130595,1638361130396,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130611,1638361130396,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130626,1638361130396,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130642,1638361130396,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130664,1638361130396,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130680,1638361130396,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130696,1638361130396,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130711,1638361130396,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130727,1638361130396,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130843,1638361130796,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130865,1638361130796,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130881,1638361130796,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130896,1638361130796,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130928,1638361130796,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130943,1638361130796,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130965,1638361130796,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130981,1638361130796,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361130997,1638361130796,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131012,1638361130796,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131028,1638361130796,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131044,1638361130796,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131066,1638361130796,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131081,1638361130796,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131097,1638361130796,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131113,1638361130796,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131128,1638361130796,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131144,1638361130796,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131282,1638361131229,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131298,1638361131229,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131313,1638361131229,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131329,1638361131229,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131345,1638361131229,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131367,1638361131229,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131383,1638361131229,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131398,1638361131229,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131414,1638361131229,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131429,1638361131229,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131445,1638361131229,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131467,1638361131229,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131483,1638361131229,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131499,1638361131229,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131514,1638361131229,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131530,1638361131229,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131545,1638361131229,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131568,1638361131229,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131699,1638361131646,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131715,1638361131646,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131731,1638361131646,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131746,1638361131646,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131768,1638361131646,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131784,1638361131646,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131800,1638361131646,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131815,1638361131646,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131831,1638361131646,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131846,1638361131646,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131869,1638361131646,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131884,1638361131646,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131900,1638361131646,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131916,1638361131646,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131931,1638361131646,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131947,1638361131646,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131969,1638361131646,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361131985,1638361131646,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132116,1638361132069,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132132,1638361132069,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132148,1638361132069,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132170,1638361132069,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132185,1638361132069,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132201,1638361132069,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132217,1638361132069,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132232,1638361132069,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132248,1638361132069,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132270,1638361132069,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132286,1638361132069,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132301,1638361132069,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132317,1638361132069,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132333,1638361132069,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132348,1638361132069,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132364,1638361132069,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132390,1638361132069,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132408,1638361132069,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132533,1638361132486,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132548,1638361132486,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132571,1638361132486,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132586,1638361132486,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132602,1638361132486,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132617,1638361132486,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132648,1638361132486,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132670,1638361132486,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132686,1638361132486,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132702,1638361132486,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132717,1638361132486,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132733,1638361132486,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132749,1638361132486,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132771,1638361132486,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132786,1638361132486,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132802,1638361132486,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132818,1638361132486,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132833,1638361132486,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132949,1638361132902,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132971,1638361132902,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361132987,1638361132902,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133003,1638361132902,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133018,1638361132902,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133034,1638361132902,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133050,1638361132902,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133072,1638361132902,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133087,1638361132902,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133103,1638361132902,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133119,1638361132902,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133134,1638361132902,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133150,1638361132902,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133172,1638361132902,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133188,1638361132902,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133203,1638361132902,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133219,1638361132902,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133235,1638361132902,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133351,1638361133304,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133373,1638361133304,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133388,1638361133304,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133404,1638361133304,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133420,1638361133304,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133435,1638361133304,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133451,1638361133304,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133473,1638361133304,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133489,1638361133304,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133504,1638361133304,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133520,1638361133304,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133536,1638361133304,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133551,1638361133304,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133573,1638361133304,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133593,1638361133304,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133609,1638361133304,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133624,1638361133304,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133640,1638361133304,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133774,1638361133720,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133790,1638361133720,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133805,1638361133720,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133821,1638361133720,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133852,1638361133720,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133868,1638361133720,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133884,1638361133720,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133900,1638361133720,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133921,1638361133720,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133937,1638361133720,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133953,1638361133720,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133974,1638361133720,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361133989,1638361133720,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134005,1638361133720,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134021,1638361133720,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134036,1638361133720,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134052,1638361133720,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134074,1638361133720,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134194,1638361134152,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134210,1638361134152,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134226,1638361134152,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134241,1638361134152,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134257,1638361134152,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134273,1638361134152,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134295,1638361134152,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134310,1638361134152,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134326,1638361134152,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134342,1638361134152,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134357,1638361134152,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134373,1638361134152,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134395,1638361134152,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134410,1638361134152,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134436,1638361134152,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134451,1638361134152,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134467,1638361134152,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134495,1638361134152,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134610,1638361134573,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134626,1638361134573,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134642,1638361134573,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134657,1638361134573,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134673,1638361134573,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134695,1638361134573,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134711,1638361134573,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134726,1638361134573,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134742,1638361134573,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134758,1638361134573,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134773,1638361134573,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134795,1638361134573,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134811,1638361134573,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134827,1638361134573,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134842,1638361134573,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134858,1638361134573,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134874,1638361134573,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361134896,1638361134573,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135012,1638361134974,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135027,1638361134974,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135043,1638361134974,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135058,1638361134974,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135074,1638361134974,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135091,1638361134974,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135111,1638361134974,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135131,1638361134974,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135151,1638361134974,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135171,1638361134974,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135192,1638361134974,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135212,1638361134974,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135232,1638361134974,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135252,1638361134974,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135272,1638361134974,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135292,1638361134974,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135313,1638361134974,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135333,1638361134974,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135454,1638361135414,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135474,1638361135414,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135494,1638361135414,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135515,1638361135414,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135535,1638361135414,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135555,1638361135414,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135575,1638361135414,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135595,1638361135414,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135615,1638361135414,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135635,1638361135414,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135656,1638361135414,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135676,1638361135414,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135696,1638361135414,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135717,1638361135414,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135737,1638361135414,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135758,1638361135414,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135778,1638361135414,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135798,1638361135414,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135917,1638361135870,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135932,1638361135870,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135954,1638361135870,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135970,1638361135870,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361135986,1638361135870,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136001,1638361135870,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136017,1638361135870,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136033,1638361135870,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136055,1638361135870,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136070,1638361135870,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136086,1638361135870,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136102,1638361135870,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136117,1638361135870,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136133,1638361135870,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136155,1638361135870,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136171,1638361135870,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136186,1638361135870,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136202,1638361135870,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136318,1638361136271,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136356,1638361136271,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136372,1638361136271,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136389,1638361136271,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136404,1638361136271,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136420,1638361136271,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136436,1638361136271,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136456,1638361136271,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136471,1638361136271,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136487,1638361136271,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136503,1638361136271,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136518,1638361136271,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136534,1638361136271,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136556,1638361136271,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136572,1638361136271,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136587,1638361136271,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136603,1638361136271,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136619,1638361136271,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136735,1638361136688,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136757,1638361136688,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136773,1638361136688,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136788,1638361136688,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136804,1638361136688,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136819,1638361136688,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136835,1638361136688,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136857,1638361136688,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136873,1638361136688,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136889,1638361136688,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136904,1638361136688,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136920,1638361136688,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136935,1638361136688,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136958,1638361136688,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136973,1638361136688,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361136989,1638361136688,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137004,1638361136688,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137020,1638361136688,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137136,1638361137089,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137158,1638361137089,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137174,1638361137089,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137190,1638361137089,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137205,1638361137089,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137221,1638361137089,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137236,1638361137089,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137259,1638361137089,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137274,1638361137089,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137290,1638361137089,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137305,1638361137089,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137321,1638361137089,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137337,1638361137089,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137359,1638361137089,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137375,1638361137089,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137390,1638361137089,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137406,1638361137089,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137437,1638361137089,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137575,1638361137522,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137591,1638361137522,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137607,1638361137522,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137622,1638361137522,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137638,1638361137522,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137660,1638361137522,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137676,1638361137522,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137691,1638361137522,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137707,1638361137522,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137723,1638361137522,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137738,1638361137522,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137760,1638361137522,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137776,1638361137522,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137792,1638361137522,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137807,1638361137522,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137823,1638361137522,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137838,1638361137522,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137861,1638361137522,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137976,1638361137936,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361137992,1638361137936,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138007,1638361137936,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138023,1638361137936,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138039,1638361137936,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138061,1638361137936,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138076,1638361137936,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138092,1638361137936,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138108,1638361137936,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138123,1638361137936,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138139,1638361137936,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138161,1638361137936,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138177,1638361137936,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138192,1638361137936,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138208,1638361137936,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138224,1638361137936,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138239,1638361137936,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138262,1638361137936,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138396,1638361138340,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138412,1638361138340,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138427,1638361138340,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138443,1638361138340,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138462,1638361138340,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138478,1638361138340,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138493,1638361138340,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138509,1638361138340,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138524,1638361138340,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138540,1638361138340,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138562,1638361138340,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138578,1638361138340,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138594,1638361138340,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138609,1638361138340,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138625,1638361138340,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138640,1638361138340,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138663,1638361138340,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138678,1638361138340,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138810,1638361138763,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138825,1638361138763,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138841,1638361138763,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138863,1638361138763,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138879,1638361138763,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138894,1638361138763,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138910,1638361138763,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138926,1638361138763,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138941,1638361138763,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138964,1638361138763,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138979,1638361138763,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361138995,1638361138763,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139010,1638361138763,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139026,1638361138763,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139042,1638361138763,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139064,1638361138763,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139080,1638361138763,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139095,1638361138763,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139211,1638361139164,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139227,1638361139164,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139242,1638361139164,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139265,1638361139164,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139280,1638361139164,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139296,1638361139164,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139311,1638361139164,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139327,1638361139164,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139343,1638361139164,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139365,1638361139164,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139381,1638361139164,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139396,1638361139164,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139412,1638361139164,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139427,1638361139164,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139443,1638361139164,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139465,1638361139164,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139481,1638361139164,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139496,1638361139164,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139612,1638361139565,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139628,1638361139565,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139644,1638361139565,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139666,1638361139565,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139681,1638361139565,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139697,1638361139565,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139713,1638361139565,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139728,1638361139565,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139744,1638361139565,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139766,1638361139565,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139782,1638361139565,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139797,1638361139565,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139813,1638361139565,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139829,1638361139565,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139844,1638361139565,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139866,1638361139565,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139882,1638361139565,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361139898,1638361139565,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140014,1638361139967,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140029,1638361139967,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140045,1638361139967,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140067,1638361139967,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140083,1638361139967,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140098,1638361139967,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140114,1638361139967,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140129,1638361139967,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140145,1638361139967,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140167,1638361139967,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140183,1638361139967,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140199,1638361139967,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140214,1638361139967,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140230,1638361139967,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140245,1638361139967,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140268,1638361139967,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140283,1638361139967,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140299,1638361139967,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140417,1638361140368,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140432,1638361140368,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140448,1638361140368,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140468,1638361140368,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140484,1638361140368,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140499,1638361140368,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140515,1638361140368,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140530,1638361140368,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140546,1638361140368,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140568,1638361140368,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140599,1638361140368,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140615,1638361140368,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140631,1638361140368,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140646,1638361140368,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140669,1638361140368,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140684,1638361140368,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140700,1638361140368,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140716,1638361140368,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140831,1638361140785,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140846,1638361140785,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140861,1638361140785,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140877,1638361140785,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140899,1638361140785,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140915,1638361140785,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140930,1638361140785,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140945,1638361140785,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140961,1638361140785,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140976,1638361140785,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361140991,1638361140785,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141007,1638361140785,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141023,1638361140785,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141038,1638361140785,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141054,1638361140785,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141069,1638361140785,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141085,1638361140785,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141100,1638361140785,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141231,1638361141180,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141247,1638361141180,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141269,1638361141180,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141285,1638361141180,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141300,1638361141180,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141316,1638361141180,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141331,1638361141180,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141346,1638361141180,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141362,1638361141180,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141378,1638361141180,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141394,1638361141180,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141410,1638361141180,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141425,1638361141180,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141440,1638361141180,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141456,1638361141180,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141472,1638361141180,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141488,1638361141180,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141504,1638361141180,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141617,1638361141569,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141632,1638361141569,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141648,1638361141569,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141664,1638361141569,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141684,1638361141569,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141704,1638361141569,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141721,1638361141569,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141737,1638361141569,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141753,1638361141569,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141769,1638361141569,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141784,1638361141569,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141799,1638361141569,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141815,1638361141569,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141831,1638361141569,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141847,1638361141569,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141863,1638361141569,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141885,1638361141569,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361141905,1638361141569,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142026,1638361141986,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142047,1638361141986,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142067,1638361141986,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142087,1638361141986,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142108,1638361141986,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142128,1638361141986,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142148,1638361141986,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142168,1638361141986,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142189,1638361141986,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142209,1638361141986,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142229,1638361141986,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142250,1638361141986,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142270,1638361141986,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142291,1638361141986,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142306,1638361141986,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142322,1638361141986,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142338,1638361141986,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142353,1638361141986,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142479,1638361142433,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142494,1638361142433,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142510,1638361142433,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142526,1638361142433,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142541,1638361142433,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142557,1638361142433,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142573,1638361142433,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142589,1638361142433,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142604,1638361142433,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142619,1638361142433,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142635,1638361142433,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142651,1638361142433,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142666,1638361142433,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142682,1638361142433,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142697,1638361142433,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142713,1638361142433,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142730,1638361142433,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142746,1638361142433,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142871,1638361142825,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142887,1638361142825,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142902,1638361142825,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142917,1638361142825,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142933,1638361142825,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142949,1638361142825,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142965,1638361142825,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361142981,1638361142825,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143008,1638361142825,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143024,1638361142825,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143040,1638361142825,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143055,1638361142825,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143071,1638361142825,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143086,1638361142825,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143109,1638361142825,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143124,1638361142825,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143140,1638361142825,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143166,1638361142825,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143287,1638361143240,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143309,1638361143240,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143325,1638361143240,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143340,1638361143240,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143356,1638361143240,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143372,1638361143240,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143387,1638361143240,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143409,1638361143240,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143425,1638361143240,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143441,1638361143240,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143456,1638361143240,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143472,1638361143240,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143487,1638361143240,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143510,1638361143240,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143525,1638361143240,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143541,1638361143240,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143556,1638361143240,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143572,1638361143240,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143688,1638361143641,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143710,1638361143641,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143726,1638361143641,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143741,1638361143641,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143757,1638361143641,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143773,1638361143641,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143788,1638361143641,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143810,1638361143641,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143826,1638361143641,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143842,1638361143641,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143857,1638361143641,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143873,1638361143641,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143889,1638361143641,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143911,1638361143641,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143926,1638361143641,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143942,1638361143641,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143963,1638361143641,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361143979,1638361143641,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144106,1638361144058,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144121,1638361144058,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144145,1638361144058,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144161,1638361144058,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144177,1638361144058,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144193,1638361144058,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144208,1638361144058,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144224,1638361144058,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144239,1638361144058,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144255,1638361144058,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144271,1638361144058,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144287,1638361144058,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144296,1638361144058,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144312,1638361144058,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144328,1638361144058,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144343,1638361144058,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144359,1638361144058,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144374,1638361144058,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144490,1638361144443,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144506,1638361144443,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144521,1638361144443,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144536,1638361144443,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144552,1638361144443,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144568,1638361144443,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144583,1638361144443,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144599,1638361144443,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144615,1638361144443,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144630,1638361144443,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144645,1638361144443,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144661,1638361144443,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144676,1638361144443,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144691,1638361144443,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144707,1638361144443,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144722,1638361144443,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144737,1638361144443,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144762,1638361144443,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144875,1638361144828,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144890,1638361144828,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144906,1638361144828,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144921,1638361144828,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144937,1638361144828,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144953,1638361144828,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144969,1638361144828,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144984,1638361144828,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361144999,1638361144828,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145015,1638361144828,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145031,1638361144828,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145046,1638361144828,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145061,1638361144828,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145077,1638361144828,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145093,1638361144828,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145114,1638361144828,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145131,1638361144828,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145147,1638361144828,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145261,1638361145214,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145277,1638361145214,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145293,1638361145214,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145315,1638361145214,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145330,1638361145214,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145346,1638361145214,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145362,1638361145214,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145377,1638361145214,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145395,1638361145214,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145415,1638361145214,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145430,1638361145214,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145448,1638361145214,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145464,1638361145214,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145479,1638361145214,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145495,1638361145214,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145515,1638361145214,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145531,1638361145214,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145546,1638361145214,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145662,1638361145615,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145678,1638361145615,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145693,1638361145615,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145716,1638361145615,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145731,1638361145615,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145747,1638361145615,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145762,1638361145615,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145778,1638361145615,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145794,1638361145615,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145816,1638361145615,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145831,1638361145615,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145847,1638361145615,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145863,1638361145615,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145878,1638361145615,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145894,1638361145615,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145916,1638361145615,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145932,1638361145615,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361145947,1638361145615,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146063,1638361146016,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146079,1638361146016,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146094,1638361146016,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146117,1638361146016,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146132,1638361146016,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146148,1638361146016,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146163,1638361146016,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146179,1638361146016,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146195,1638361146016,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146217,1638361146016,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146232,1638361146016,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146248,1638361146016,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146264,1638361146016,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146279,1638361146016,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146295,1638361146016,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146317,1638361146016,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146333,1638361146016,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146348,1638361146016,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146464,1638361146417,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146480,1638361146417,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146495,1638361146417,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146517,1638361146417,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146533,1638361146417,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146549,1638361146417,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146564,1638361146417,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146580,1638361146417,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146596,1638361146417,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146618,1638361146417,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146633,1638361146417,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146649,1638361146417,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146665,1638361146417,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146680,1638361146417,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146696,1638361146417,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146718,1638361146417,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146734,1638361146417,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146749,1638361146417,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146881,1638361146818,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146894,1638361146818,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146918,1638361146818,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146934,1638361146818,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146950,1638361146818,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146965,1638361146818,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146981,1638361146818,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361146996,1638361146818,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147019,1638361146818,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147034,1638361146818,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147050,1638361146818,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147066,1638361146818,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147081,1638361146818,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147097,1638361146818,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147119,1638361146818,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147135,1638361146818,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147150,1638361146818,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147166,1638361146818,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147282,1638361147235,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147297,1638361147235,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147320,1638361147235,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147335,1638361147235,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147351,1638361147235,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147367,1638361147235,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147382,1638361147235,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147398,1638361147235,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147420,1638361147235,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147436,1638361147235,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147451,1638361147235,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147467,1638361147235,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147482,1638361147235,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147498,1638361147235,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147511,1638361147235,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147526,1638361147235,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147542,1638361147235,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147558,1638361147235,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147683,1638361147636,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147698,1638361147636,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147721,1638361147636,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147736,1638361147636,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147752,1638361147636,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147767,1638361147636,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147783,1638361147636,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147799,1638361147636,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147821,1638361147636,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147836,1638361147636,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147852,1638361147636,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147868,1638361147636,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147883,1638361147636,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147899,1638361147636,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147921,1638361147636,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147937,1638361147636,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147952,1638361147636,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361147968,1638361147636,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148084,1638361148037,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148100,1638361148037,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148122,1638361148037,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148137,1638361148037,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148153,1638361148037,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148169,1638361148037,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148184,1638361148037,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148200,1638361148037,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148222,1638361148037,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148238,1638361148037,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148253,1638361148037,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148269,1638361148037,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148285,1638361148037,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148300,1638361148037,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148323,1638361148037,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148338,1638361148037,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148354,1638361148037,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148369,1638361148037,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148493,1638361148446,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148523,1638361148446,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148538,1638361148446,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148554,1638361148446,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148574,1638361148446,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148590,1638361148446,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148605,1638361148446,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148623,1638361148446,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148639,1638361148446,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148654,1638361148446,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148674,1638361148446,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148690,1638361148446,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148706,1638361148446,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148723,1638361148446,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148739,1638361148446,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148754,1638361148446,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148770,1638361148446,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148786,1638361148446,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148901,1638361148854,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148923,1638361148854,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148939,1638361148854,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148954,1638361148854,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148970,1638361148854,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361148986,1638361148854,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149001,1638361148854,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149017,1638361148854,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149032,1638361148854,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149048,1638361148854,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149063,1638361148854,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149079,1638361148854,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149095,1638361148854,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149111,1638361148854,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149127,1638361148854,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149143,1638361148854,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149159,1638361148854,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149175,1638361148854,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149308,1638361149253,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149325,1638361149253,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149340,1638361149253,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149356,1638361149253,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149372,1638361149253,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149388,1638361149253,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149403,1638361149253,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149424,1638361149253,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149440,1638361149253,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149456,1638361149253,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149471,1638361149253,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149487,1638361149253,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149503,1638361149253,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149525,1638361149253,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149540,1638361149253,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149555,1638361149253,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149575,1638361149253,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149590,1638361149253,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149703,1638361149656,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149725,1638361149656,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149741,1638361149656,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149757,1638361149656,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149773,1638361149656,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149788,1638361149656,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149803,1638361149656,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149818,1638361149656,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149834,1638361149656,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149850,1638361149656,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149865,1638361149656,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149880,1638361149656,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149896,1638361149656,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149911,1638361149656,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149926,1638361149656,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149942,1638361149656,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149958,1638361149656,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361149973,1638361149656,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150088,1638361150041,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150104,1638361150041,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150118,1638361150041,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150134,1638361150041,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150149,1638361150041,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150164,1638361150041,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150180,1638361150041,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150196,1638361150041,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150211,1638361150041,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150226,1638361150041,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150242,1638361150041,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150258,1638361150041,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150273,1638361150041,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150289,1638361150041,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150305,1638361150041,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150320,1638361150041,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150336,1638361150041,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150352,1638361150041,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150473,1638361150426,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150504,1638361150426,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150527,1638361150426,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150542,1638361150426,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150558,1638361150426,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150574,1638361150426,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150589,1638361150426,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150605,1638361150426,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150627,1638361150426,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150643,1638361150426,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150658,1638361150426,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150673,1638361150426,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150690,1638361150426,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150706,1638361150426,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150727,1638361150426,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150743,1638361150426,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150758,1638361150426,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150774,1638361150426,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150890,1638361150843,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150906,1638361150843,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150928,1638361150843,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150944,1638361150843,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150959,1638361150843,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150975,1638361150843,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361150990,1638361150843,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151006,1638361150843,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151028,1638361150843,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151044,1638361150843,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151060,1638361150843,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151075,1638361150843,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151091,1638361150843,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151106,1638361150843,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151129,1638361150843,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151144,1638361150843,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151160,1638361150843,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151176,1638361150843,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151291,1638361151244,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151307,1638361151244,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151329,1638361151244,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151345,1638361151244,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151360,1638361151244,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151376,1638361151244,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151392,1638361151244,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151407,1638361151244,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151429,1638361151244,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151445,1638361151244,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151461,1638361151244,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151476,1638361151244,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151492,1638361151244,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151508,1638361151244,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151530,1638361151244,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151545,1638361151244,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151561,1638361151244,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151577,1638361151244,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151693,1638361151646,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151708,1638361151646,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151730,1638361151646,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151746,1638361151646,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151761,1638361151646,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151777,1638361151646,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151792,1638361151646,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151808,1638361151646,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151830,1638361151646,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151846,1638361151646,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151862,1638361151646,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151877,1638361151646,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151893,1638361151646,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151908,1638361151646,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151931,1638361151646,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151946,1638361151646,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151962,1638361151646,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361151978,1638361151646,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152090,1638361152047,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152106,1638361152047,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152121,1638361152047,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152136,1638361152047,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152155,1638361152047,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152171,1638361152047,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152187,1638361152047,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152202,1638361152047,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152217,1638361152047,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152233,1638361152047,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152256,1638361152047,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152271,1638361152047,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152287,1638361152047,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152303,1638361152047,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152332,1638361152047,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152348,1638361152047,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152364,1638361152047,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152379,1638361152047,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152495,1638361152448,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152511,1638361152448,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152533,1638361152448,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152549,1638361152448,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152564,1638361152448,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152580,1638361152448,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152595,1638361152448,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152611,1638361152448,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152633,1638361152448,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152649,1638361152448,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152664,1638361152448,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152680,1638361152448,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152696,1638361152448,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152711,1638361152448,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152734,1638361152448,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152749,1638361152448,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152765,1638361152448,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152780,1638361152448,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152896,1638361152849,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152912,1638361152849,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152934,1638361152849,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152950,1638361152849,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152965,1638361152849,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152981,1638361152849,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361152997,1638361152849,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153012,1638361152849,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153034,1638361152849,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153050,1638361152849,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153066,1638361152849,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153097,1638361152849,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153113,1638361152849,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153134,1638361152849,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153150,1638361152849,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153166,1638361152849,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153181,1638361152849,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153197,1638361152849,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153313,1638361153266,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153335,1638361153266,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153351,1638361153266,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153366,1638361153266,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153382,1638361153266,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153398,1638361153266,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153413,1638361153266,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153435,1638361153266,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153451,1638361153266,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153467,1638361153266,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153482,1638361153266,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153498,1638361153266,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153513,1638361153266,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153536,1638361153266,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153551,1638361153266,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153567,1638361153266,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153583,1638361153266,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153598,1638361153266,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153715,1638361153667,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153736,1638361153667,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153752,1638361153667,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153767,1638361153667,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153783,1638361153667,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153799,1638361153667,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153814,1638361153667,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153836,1638361153667,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153852,1638361153667,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153868,1638361153667,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153883,1638361153667,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153899,1638361153667,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153915,1638361153667,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153937,1638361153667,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153952,1638361153667,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153968,1638361153667,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153984,1638361153667,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361153999,1638361153667,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154115,1638361154068,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154138,1638361154068,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154153,1638361154068,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154169,1638361154068,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154184,1638361154068,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154200,1638361154068,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154216,1638361154068,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154238,1638361154068,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154253,1638361154068,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154269,1638361154068,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154285,1638361154068,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154300,1638361154068,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154316,1638361154068,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154338,1638361154068,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154354,1638361154068,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154369,1638361154068,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154387,1638361154068,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154403,1638361154068,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154516,1638361154470,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154539,1638361154470,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154554,1638361154470,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154570,1638361154470,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154585,1638361154470,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154601,1638361154470,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154617,1638361154470,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154639,1638361154470,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154655,1638361154470,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154670,1638361154470,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154691,1638361154470,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154707,1638361154470,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154722,1638361154470,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154739,1638361154470,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154755,1638361154470,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154770,1638361154470,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154786,1638361154470,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154801,1638361154470,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154917,1638361154871,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154940,1638361154871,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154955,1638361154871,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154971,1638361154871,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361154987,1638361154871,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155002,1638361154871,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155018,1638361154871,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155040,1638361154871,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155056,1638361154871,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155071,1638361154871,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155087,1638361154871,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155103,1638361154871,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155118,1638361154871,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155140,1638361154871,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155156,1638361154871,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155172,1638361154871,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155187,1638361154871,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155203,1638361154871,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155319,1638361155272,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155341,1638361155272,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155357,1638361155272,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155372,1638361155272,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155388,1638361155272,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155403,1638361155272,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155419,1638361155272,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155441,1638361155272,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155457,1638361155272,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155473,1638361155272,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155488,1638361155272,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155504,1638361155272,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155519,1638361155272,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155542,1638361155272,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155557,1638361155272,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155573,1638361155272,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155589,1638361155272,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155604,1638361155272,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155720,1638361155673,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155742,1638361155673,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155758,1638361155673,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155774,1638361155673,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155789,1638361155673,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155805,1638361155673,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155820,1638361155673,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155843,1638361155673,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155858,1638361155673,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155874,1638361155673,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155889,1638361155673,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155905,1638361155673,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155921,1638361155673,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155943,1638361155673,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155958,1638361155673,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155974,1638361155673,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361155990,1638361155673,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156005,1638361155673,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156121,1638361156074,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156143,1638361156074,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156159,1638361156074,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156174,1638361156074,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156190,1638361156074,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156221,1638361156074,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156243,1638361156074,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156259,1638361156074,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156275,1638361156074,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156290,1638361156074,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156306,1638361156074,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156322,1638361156074,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156344,1638361156074,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156359,1638361156074,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156375,1638361156074,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156392,1638361156074,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156408,1638361156074,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156423,1638361156074,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156560,1638361156507,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156576,1638361156507,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156591,1638361156507,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156607,1638361156507,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156623,1638361156507,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156645,1638361156507,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156660,1638361156507,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156676,1638361156507,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156692,1638361156507,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156707,1638361156507,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156723,1638361156507,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156745,1638361156507,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156761,1638361156507,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156776,1638361156507,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156792,1638361156507,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156808,1638361156507,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156823,1638361156507,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156846,1638361156507,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156977,1638361156924,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361156993,1638361156924,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157008,1638361156924,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157024,1638361156924,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157046,1638361156924,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157062,1638361156924,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157078,1638361156924,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157093,1638361156924,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157109,1638361156924,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157124,1638361156924,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157147,1638361156924,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157162,1638361156924,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157178,1638361156924,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157194,1638361156924,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157209,1638361156924,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157225,1638361156924,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157247,1638361156924,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157263,1638361156924,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157394,1638361157347,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157410,1638361157347,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157425,1638361157347,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157448,1638361157347,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157463,1638361157347,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157479,1638361157347,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157494,1638361157347,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157510,1638361157347,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157526,1638361157347,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157548,1638361157347,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157563,1638361157347,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157579,1638361157347,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157595,1638361157347,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157610,1638361157347,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157626,1638361157347,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157648,1638361157347,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157664,1638361157347,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157679,1638361157347,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157795,1638361157749,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157811,1638361157749,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157827,1638361157749,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157849,1638361157749,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157865,1638361157749,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157880,1638361157749,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157896,1638361157749,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157911,1638361157749,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157927,1638361157749,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157949,1638361157749,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157965,1638361157749,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157981,1638361157749,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361157996,1638361157749,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158012,1638361157749,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158027,1638361157749,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158050,1638361157749,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158065,1638361157749,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158081,1638361157749,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158197,1638361158150,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158212,1638361158150,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158228,1638361158150,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158250,1638361158150,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158266,1638361158150,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158281,1638361158150,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158297,1638361158150,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158313,1638361158150,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158328,1638361158150,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158366,1638361158150,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158398,1638361158150,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158414,1638361158150,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158430,1638361158150,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158450,1638361158150,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158466,1638361158150,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158497,1638361158150,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158528,1638361158150,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158551,1638361158150,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158667,1638361158629,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158682,1638361158629,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158698,1638361158629,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158713,1638361158629,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158729,1638361158629,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158751,1638361158629,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158767,1638361158629,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158782,1638361158629,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158798,1638361158629,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158814,1638361158629,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158829,1638361158629,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158851,1638361158629,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158867,1638361158629,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158883,1638361158629,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158898,1638361158629,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158914,1638361158629,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158930,1638361158629,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361158960,1638361158629,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159099,1638361159052,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159114,1638361159052,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159130,1638361159052,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159152,1638361159052,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159168,1638361159052,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159183,1638361159052,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159199,1638361159052,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159215,1638361159052,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159230,1638361159052,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159252,1638361159052,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159268,1638361159052,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159284,1638361159052,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159299,1638361159052,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159315,1638361159052,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159330,1638361159052,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159346,1638361159052,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159368,1638361159052,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159383,1638361159052,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159500,1638361159453,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159515,1638361159453,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159531,1638361159453,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159553,1638361159453,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159569,1638361159453,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159584,1638361159453,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159600,1638361159453,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159615,1638361159453,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159631,1638361159453,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159653,1638361159453,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159669,1638361159453,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159685,1638361159453,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159700,1638361159453,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159716,1638361159453,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159731,1638361159453,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159754,1638361159453,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159769,1638361159453,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159785,1638361159453,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159901,1638361159854,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159925,1638361159854,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159954,1638361159854,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159969,1638361159854,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361159985,1638361159854,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160001,1638361159854,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160016,1638361159854,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160032,1638361159854,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160054,1638361159854,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160070,1638361159854,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160085,1638361159854,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160101,1638361159854,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160117,1638361159854,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160132,1638361159854,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160154,1638361159854,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160170,1638361159854,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160186,1638361159854,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160201,1638361159854,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160317,1638361160270,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160333,1638361160270,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160355,1638361160270,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160371,1638361160270,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160389,1638361160270,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160405,1638361160270,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160420,1638361160270,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160436,1638361160270,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160455,1638361160270,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160471,1638361160270,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160487,1638361160270,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160502,1638361160270,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160518,1638361160270,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160533,1638361160270,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160556,1638361160270,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160571,1638361160270,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160587,1638361160270,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160602,1638361160270,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160718,1638361160671,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160734,1638361160671,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160756,1638361160671,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160772,1638361160671,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160787,1638361160671,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160803,1638361160671,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160819,1638361160671,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160834,1638361160671,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160856,1638361160671,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160872,1638361160671,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160888,1638361160671,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160903,1638361160671,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160919,1638361160671,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160935,1638361160671,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160957,1638361160671,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160972,1638361160671,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361160988,1638361160671,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161004,1638361160671,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161120,1638361161073,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161135,1638361161073,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161158,1638361161073,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161173,1638361161073,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161189,1638361161073,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161205,1638361161073,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161220,1638361161073,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161236,1638361161073,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161258,1638361161073,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161274,1638361161073,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161289,1638361161073,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161305,1638361161073,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161320,1638361161073,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161336,1638361161073,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161358,1638361161073,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161374,1638361161073,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161390,1638361161073,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161405,1638361161073,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161521,1638361161474,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161536,1638361161474,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161551,1638361161474,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161581,1638361161474,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161597,1638361161474,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161613,1638361161474,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161628,1638361161474,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161644,1638361161474,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161660,1638361161474,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161675,1638361161474,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161691,1638361161474,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161706,1638361161474,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161722,1638361161474,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161738,1638361161474,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161760,1638361161474,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161776,1638361161474,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161791,1638361161474,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161807,1638361161474,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161923,1638361161876,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161938,1638361161876,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161960,1638361161876,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161976,1638361161876,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361161992,1638361161876,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162007,1638361161876,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162023,1638361161876,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162039,1638361161876,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162061,1638361161876,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162076,1638361161876,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162092,1638361161876,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162108,1638361161876,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162123,1638361161876,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162139,1638361161876,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162161,1638361161876,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162176,1638361161876,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162192,1638361161876,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162207,1638361161876,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162323,1638361162277,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162339,1638361162277,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162361,1638361162277,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162377,1638361162277,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162396,1638361162277,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162411,1638361162277,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162427,1638361162277,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162443,1638361162277,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162461,1638361162277,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162477,1638361162277,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162493,1638361162277,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162508,1638361162277,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162524,1638361162277,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162539,1638361162277,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162562,1638361162277,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162577,1638361162277,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162593,1638361162277,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162608,1638361162277,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162724,1638361162677,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162740,1638361162677,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162757,1638361162677,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162777,1638361162677,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162797,1638361162677,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162817,1638361162677,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162837,1638361162677,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162857,1638361162677,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162877,1638361162677,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162897,1638361162677,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162918,1638361162677,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162938,1638361162677,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162958,1638361162677,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162978,1638361162677,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361162999,1638361162677,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163019,1638361162677,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163039,1638361162677,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163060,1638361162677,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163182,1638361163141,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163202,1638361163141,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163222,1638361163141,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163242,1638361163141,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163263,1638361163141,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163283,1638361163141,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163304,1638361163141,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163324,1638361163141,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163345,1638361163141,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163365,1638361163141,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163386,1638361163141,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163406,1638361163141,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163426,1638361163141,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163446,1638361163141,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163467,1638361163141,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163487,1638361163141,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163507,1638361163141,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163527,1638361163141,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163659,1638361163608,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163675,1638361163608,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163690,1638361163608,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163706,1638361163608,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163722,1638361163608,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163744,1638361163608,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163759,1638361163608,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163775,1638361163608,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163791,1638361163608,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163806,1638361163608,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163822,1638361163608,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163844,1638361163608,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163860,1638361163608,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163877,1638361163608,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163893,1638361163608,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163908,1638361163608,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163924,1638361163608,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361163944,1638361163608,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164076,1638361164022,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164091,1638361164022,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164107,1638361164022,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164123,1638361164022,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164145,1638361164022,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164161,1638361164022,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164176,1638361164022,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164192,1638361164022,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164207,1638361164022,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164223,1638361164022,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164238,1638361164022,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164257,1638361164022,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164273,1638361164022,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164288,1638361164022,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164304,1638361164022,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164320,1638361164022,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164345,1638361164022,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164361,1638361164022,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164492,1638361164445,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164508,1638361164445,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164523,1638361164445,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164545,1638361164445,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164561,1638361164445,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164576,1638361164445,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164592,1638361164445,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164608,1638361164445,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164623,1638361164445,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164645,1638361164445,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164661,1638361164445,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164677,1638361164445,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164692,1638361164445,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164708,1638361164445,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164724,1638361164445,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164746,1638361164445,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164761,1638361164445,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164777,1638361164445,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164893,1638361164846,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164909,1638361164846,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164924,1638361164846,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164946,1638361164846,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164962,1638361164846,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164978,1638361164846,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361164993,1638361164846,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165009,1638361164846,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165024,1638361164846,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165047,1638361164846,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165062,1638361164846,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165078,1638361164846,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165093,1638361164846,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165109,1638361164846,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165125,1638361164846,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165147,1638361164846,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165163,1638361164846,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165178,1638361164846,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165294,1638361165247,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165310,1638361165247,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165325,1638361165247,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165348,1638361165247,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165363,1638361165247,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165379,1638361165247,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165394,1638361165247,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165410,1638361165247,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165426,1638361165247,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165448,1638361165247,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165464,1638361165247,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165479,1638361165247,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165495,1638361165247,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165510,1638361165247,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165526,1638361165247,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165548,1638361165247,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165564,1638361165247,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165580,1638361165247,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165696,1638361165649,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165711,1638361165649,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165727,1638361165649,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165749,1638361165649,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165765,1638361165649,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165780,1638361165649,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165796,1638361165649,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165811,1638361165649,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165827,1638361165649,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165849,1638361165649,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165865,1638361165649,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165896,1638361165649,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165912,1638361165649,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165927,1638361165649,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165950,1638361165649,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165965,1638361165649,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361165981,1638361165649,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166006,1638361165649,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166128,1638361166081,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166150,1638361166081,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166166,1638361166081,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166181,1638361166081,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166197,1638361166081,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166212,1638361166081,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166228,1638361166081,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166250,1638361166081,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166266,1638361166081,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166281,1638361166081,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166297,1638361166081,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166313,1638361166081,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166328,1638361166081,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166351,1638361166081,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166366,1638361166081,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166382,1638361166081,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166400,1638361166081,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166416,1638361166081,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166529,1638361166482,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166551,1638361166482,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166567,1638361166482,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166582,1638361166482,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166598,1638361166482,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166613,1638361166482,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166629,1638361166482,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166651,1638361166482,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166667,1638361166482,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166682,1638361166482,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166698,1638361166482,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166714,1638361166482,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166729,1638361166482,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166752,1638361166482,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166767,1638361166482,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166783,1638361166482,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166798,1638361166482,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166814,1638361166482,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166930,1638361166883,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166952,1638361166883,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166968,1638361166883,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166983,1638361166883,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361166999,1638361166883,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167015,1638361166883,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167030,1638361166883,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167053,1638361166883,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167068,1638361166883,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167084,1638361166883,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167099,1638361166883,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167115,1638361166883,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167131,1638361166883,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167153,1638361166883,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167169,1638361166883,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167184,1638361166883,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167200,1638361166883,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167215,1638361166883,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167331,1638361167285,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167354,1638361167285,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167369,1638361167285,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167385,1638361167285,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167400,1638361167285,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167416,1638361167285,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167432,1638361167285,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167454,1638361167285,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167470,1638361167285,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167485,1638361167285,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167501,1638361167285,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167516,1638361167285,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167532,1638361167285,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167554,1638361167285,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167570,1638361167285,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167586,1638361167285,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167601,1638361167285,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167617,1638361167285,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167733,1638361167686,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167755,1638361167686,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167771,1638361167686,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167786,1638361167686,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167802,1638361167686,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167817,1638361167686,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167833,1638361167686,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167855,1638361167686,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167871,1638361167686,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167886,1638361167686,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167902,1638361167686,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167918,1638361167686,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167933,1638361167686,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167955,1638361167686,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167971,1638361167686,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361167987,1638361167686,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168002,1638361167686,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168018,1638361167686,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168134,1638361168087,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168156,1638361168087,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168172,1638361168087,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168187,1638361168087,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168203,1638361168087,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168219,1638361168087,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168234,1638361168087,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168256,1638361168087,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168272,1638361168087,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168288,1638361168087,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168303,1638361168087,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168319,1638361168087,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168335,1638361168087,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168357,1638361168087,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168372,1638361168087,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168391,1638361168087,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168406,1638361168087,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168422,1638361168087,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168535,1638361168488,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168557,1638361168488,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168573,1638361168488,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168588,1638361168488,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168604,1638361168488,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168620,1638361168488,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168635,1638361168488,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168657,1638361168488,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168673,1638361168488,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168689,1638361168488,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168704,1638361168488,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168720,1638361168488,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168736,1638361168488,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168758,1638361168488,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168773,1638361168488,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168789,1638361168488,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168805,1638361168488,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168820,1638361168488,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168936,1638361168889,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168958,1638361168889,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168974,1638361168889,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361168989,1638361168889,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169005,1638361168889,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169036,1638361168889,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169058,1638361168889,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169074,1638361168889,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169090,1638361168889,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169105,1638361168889,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169121,1638361168889,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169136,1638361168889,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169158,1638361168889,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169174,1638361168889,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169189,1638361168889,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169205,1638361168889,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169221,1638361168889,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169236,1638361168889,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169374,1638361169321,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169390,1638361169321,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169406,1638361169321,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169421,1638361169321,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169437,1638361169321,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169459,1638361169321,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169474,1638361169321,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169495,1638361169321,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169511,1638361169321,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169526,1638361169321,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169542,1638361169321,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169559,1638361169321,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169575,1638361169321,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169590,1638361169321,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169606,1638361169321,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169622,1638361169321,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169637,1638361169321,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169659,1638361169321,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169775,1638361169737,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169791,1638361169737,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169806,1638361169737,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169822,1638361169737,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169838,1638361169737,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169860,1638361169737,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169876,1638361169737,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169891,1638361169737,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169907,1638361169737,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169923,1638361169737,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169938,1638361169737,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169960,1638361169737,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169975,1638361169737,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361169991,1638361169737,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170007,1638361169737,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170022,1638361169737,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170038,1638361169737,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170060,1638361169737,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170176,1638361170138,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170207,1638361170138,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170223,1638361170138,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170239,1638361170138,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170260,1638361170138,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170276,1638361170138,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170292,1638361170138,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170307,1638361170138,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170323,1638361170138,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170339,1638361170138,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170361,1638361170138,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170376,1638361170138,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170394,1638361170138,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170409,1638361170138,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170425,1638361170138,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170441,1638361170138,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170461,1638361170138,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170477,1638361170138,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170608,1638361170561,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170624,1638361170561,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170639,1638361170561,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170661,1638361170561,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170677,1638361170561,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170693,1638361170561,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170708,1638361170561,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170724,1638361170561,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170740,1638361170561,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170761,1638361170561,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170777,1638361170561,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170793,1638361170561,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170808,1638361170561,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170824,1638361170561,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170839,1638361170561,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170862,1638361170561,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170877,1638361170561,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361170893,1638361170561,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171009,1638361170962,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171024,1638361170962,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171040,1638361170962,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171062,1638361170962,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171078,1638361170962,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171093,1638361170962,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171109,1638361170962,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171125,1638361170962,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171143,1638361170962,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171162,1638361170962,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171178,1638361170962,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171194,1638361170962,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171209,1638361170962,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171225,1638361170962,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171240,1638361170962,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171263,1638361170962,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171278,1638361170962,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171294,1638361170962,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171409,1638361171362,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171425,1638361171362,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171441,1638361171362,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171463,1638361171362,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171478,1638361171362,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171494,1638361171362,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171509,1638361171362,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171525,1638361171362,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171541,1638361171362,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171563,1638361171362,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171579,1638361171362,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171594,1638361171362,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171610,1638361171362,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171625,1638361171362,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171641,1638361171362,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171663,1638361171362,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171679,1638361171362,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171694,1638361171362,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171810,1638361171763,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171826,1638361171763,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171841,1638361171763,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171863,1638361171763,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171879,1638361171763,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171895,1638361171763,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171910,1638361171763,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171926,1638361171763,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171942,1638361171763,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171964,1638361171763,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171979,1638361171763,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361171995,1638361171763,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361172011,1638361171763,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361172026,1638361171763,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361172042,1638361171763,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361172064,1638361171763,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361172080,1638361171763,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1638361172095,1638361171763,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shotsflag`
--

DROP TABLE IF EXISTS `shotsflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shotsflag` (
  `shotsflagid` int(11) NOT NULL,
  `Desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`shotsflagid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shotsflag`
--

LOCK TABLES `shotsflag` WRITE;
/*!40000 ALTER TABLE `shotsflag` DISABLE KEYS */;
INSERT INTO `shotsflag` VALUES (1,'1st Shot'),(2,'2nd Shot'),(3,'3rd Shot'),(4,'4th Shot'),(5,'5th Shot'),(6,'6th Shot'),(7,'7th Shot'),(8,'8th Shot'),(9,'9th Shot'),(10,'10th Shot');
/*!40000 ALTER TABLE `shotsflag` ENABLE KEYS */;
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
  `ShortDescription` varchar(250) DEFAULT '',
  `Country` varchar(100) DEFAULT NULL,
  `BeginDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `LastRoundCompleted` varchar(100) DEFAULT NULL,
  `CurrentRound` varchar(100) DEFAULT NULL,
  `statusid` int(11) DEFAULT NULL,
  `webserverid` bigint(20) DEFAULT NULL,
  `Logo1` varchar(1000) DEFAULT '',
  `Logo2` varchar(1000) DEFAULT '',
  `Logo3` varchar(1000) DEFAULT '',
  `ExtraDesc` varchar(45) DEFAULT NULL,
  `idscoringtype` int(11) DEFAULT '0',
  `TeamEvent` int(11) DEFAULT '0',
  PRIMARY KEY (`tournamentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,1614697043090,'SA OPEN CHAMPIONSHIP','SA OPEN CHAMPIONSHIP','South Africa','2021-12-02 00:00:00','2021-12-05 00:00:00','9','9',2,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/ECPGALOGO ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/ECPGALOGO ','','MENS',0,0);
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uiquickcaptions`
--

DROP TABLE IF EXISTS `uiquickcaptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uiquickcaptions` (
  `iduiquickcaptions` bigint(20) NOT NULL,
  `idscore` bigint(20) DEFAULT NULL,
  `shotsid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`iduiquickcaptions`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uiquickcaptions`
--

LOCK TABLES `uiquickcaptions` WRITE;
/*!40000 ALTER TABLE `uiquickcaptions` DISABLE KEYS */;
INSERT INTO `uiquickcaptions` VALUES (1635588666990,26676,1),(1635588671149,167224,1),(1635588677666,71889,1),(1635588686830,98684,1),(1635588694602,208131,1),(1635588701149,205171,1),(1635588706684,167224,1),(1635588717486,51459,1),(1635588723814,51400,1),(1635588729400,51459,1),(1635588734451,26676,1),(1635588740163,51407,1),(1635588748164,98684,1),(1635588754642,71889,1),(1635588761809,246829,1),(1635588767670,26676,1),(1635588777660,200939,1),(1635588782631,53507,1),(1635588789008,195460,1),(1635588796346,51263,1),(1635589933683,51373,3),(1635589939428,44602,3),(1635589946447,50601,3),(1635589954216,51459,3),(1635589962235,51400,3),(1635589968625,71962,3),(1635589977593,50601,3),(1635589988363,51262,3),(1635589994521,99749,3),(1635589999817,244910,3),(1635590008777,99834,3),(1635590017740,26676,3),(1635590032979,29319,3),(1635590039251,58674,3),(1635590046653,51576,3),(1635590055435,242275,3),(1635590062651,51439,3),(1635590070183,51576,3),(1635590077913,246934,3),(1635590085642,244589,3),(1635590095710,51439,3),(1635590102459,194276,3),(1635590108159,51434,3),(1635590503852,2469347,2),(1635590511450,98684,2),(1635590516963,75105,2),(1635590521451,71962,2),(1635590527443,200939,2),(1635590532645,167224,2),(1635590542415,208131,2),(1635590550605,71889,2),(1635590558862,51263,2),(1635590566112,53507,2),(1635590572600,71962,2),(1635590582003,99834,2),(1635590586968,75105,2),(1635590593464,53507,2),(1635590614769,51262,2),(1635590624768,51400,2),(1635590629258,51262,2),(1635590635505,201245,2),(1635590642715,242275,2),(1635590649453,51576,2),(1635590656902,51423,2);
/*!40000 ALTER TABLE `uiquickcaptions` ENABLE KEYS */;
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
  `SelectedHole` bigint(20) DEFAULT '-1',
  `SelectedRound` bigint(20) DEFAULT '-1',
  `SelectedCourseid` bigint(20) DEFAULT '-1',
  `RoundComplete` int(11) DEFAULT '0',
  `updatetimestamp` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`iduiselected`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uiselected`
--

LOCK TABLES `uiselected` WRITE;
/*!40000 ALTER TABLE `uiselected` DISABLE KEYS */;
INSERT INTO `uiselected` VALUES (0,1,1638361109167,1638361109226,1,1614697043090,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `uiselected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'golf'
--
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerAgeFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerAgeFromID`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare Age int;
SELECT FLOOR(((TO_DAYS(NOW())+1)- TO_DAYS(DOB)) / (365.25)) into Age FROM golf.players where playerid = iSelectedID;

RETURN Age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerCountryFlagFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerCountryFlagFromID`(iSelectedId bigint) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retCountryFlag varchar(400) default '';
select c.countryFlag into retCountryFlag from players c where PlayerID = iSelectedId;

RETURN retCountryFlag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerCountryFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerCountryFromID`(iSelectedId bigint) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retCountry varchar(400) default '';
select c.country into retCountry from players c where PlayerID = iSelectedId;

RETURN retCountry;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerFullNameFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerFullNameFromID`(iSelectedId bigint) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retSurname varchar(400) default '';
select c.fullname into retSurname from players c where PlayerID = iSelectedId;

RETURN retSurname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerInitialAndSurnameFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerInitialAndSurnameFromID`(iSelectedId bigint) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare result varchar(400) default '';
select concat(left(firstname,1),'. ', lastname) into result from players c where PlayerID = iSelectedId;

RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerNameAndSurnameFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerNameAndSurnameFromID`(iSelectedId bigint) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retSurname varchar(400) default '';
select concat(c.firstname,' ',c.lastname) into retSurname from players c where PlayerID = iSelectedId;

RETURN retSurname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerNameFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerNameFromID`(iSelectedId bigint) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retname varchar(400) default '';
select c.firstname into retname from players c where PlayerID = iSelectedId;

RETURN retname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerNameIfSurnameEmpty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerNameIfSurnameEmpty`(iPlayerID BIGINT) RETURNS varchar(120) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE ReturnName varchar(120); 
select if(lastname IS NULL OR lastname = '',firstname,lastname) INTO ReturnName from golf.players where playerid =  iPlayerID;
RETURN ReturnName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerRoundTotalStrokes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerRoundTotalStrokes`(iSelectedID BIGINT, iRoundID int) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retStrokes int default 0;

SELECT sum(strokes) into retStrokes FROM golf.shots sh where sh.idscore =  
(SELECT idscore FROM golf.score s,golf.uiselected u WHERE s.Playerid = iSelectedID and s.roundid=iRoundID);

RETURN retStrokes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedCourseColor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedCourseColor`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retResult int default 0;

SELECT ColorCode into retResult  FROM golf.course WHERE courseid = iSelectedID;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedHoleFlagFromStrokes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedHoleFlagFromStrokes`(iStroke int) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult int default 0;

case iStroke 

when -2 then
select 	1 into retResult;
when -1 then
select 2 into retResult;
when 0 then
select 3 into retResult;
when 1 then
select 4 into retResult;
when 2 then
select 5 into retResult;
when 3 then
select 5 into retResult;
when 4 then
select 5 into retResult;
else
select case iStroke 
when 1 then 0
when 2 then 0 
end into retResult;
end case;


RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedHoleParScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedHoleParScore`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retPar int default 0;
SELECT c.par into retPar FROM golf.courseholes c where  c.idcourseholes = iSelectedID;

RETURN retPar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedHoleScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedHoleScore`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retscore int default 0;
declare retStrokesPlayed int default 0;
declare retHolesPlayedPar int default 0;
declare retResult varchar(45) default '';
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;


case TournamentType

when 1 then 

select sum(strokes) into retscore from (
select sc.roundid ,strokes from golf.score sc,golf.shots s,golf.uiselected u  
where s.idscore=sc.idscore and  sc.playerid=iSelectedID
and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2  and sc.roundid <> u.SelectedRound order by sc.roundid,s.shotsid) as t;

select retscore into retResult;

else

select sum(strokes)-sum(Par) into retscore from (
select sc.roundid ,strokes,GetPlayerSelectedHoleParScore(s.holeid) Par from golf.score sc,golf.shots s,golf.uiselected u  
where s.idscore=sc.idscore and  sc.playerid=iSelectedID
and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2  and sc.roundid <> u.SelectedRound order by sc.roundid,s.shotsid) as t;

#if retStrokesPlayed=0 and retHolesPlayedPar=0 then
#return '';
#end if;

#select (retStrokesPlayed - retHolesPlayedPar) into retscore;
select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'E' else retscore end into retResult;

end case;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedHoleScorePoints` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedHoleScorePoints`(iSelectedID BIGINT,istrokes int) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retPar int default 0;
declare retResult int default 0;
SELECT c.par into retPar FROM golf.courseholes c where  c.idcourseholes = iSelectedID;

case retPar

when 3 then 
SELECT Points into retResult FROM golf.scoringpoints where idscoringpoints=(istrokes+1);

when 4 then 
SELECT Points into retResult FROM golf.scoringpoints where idscoringpoints=istrokes;

when 5 then 
SELECT Points into retResult FROM golf.scoringpoints where idscoringpoints=(istrokes-1);

end case;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedHoleStrokesScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedHoleStrokesScore`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retResult varchar(45) default '';
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;


case TournamentType

when 1 then 

select strokes into retResult from golf.score sc,golf.shots s,golf.uiselected u  
where s.idscore=sc.idscore and  sc.playerid=iSelectedID
and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2;

select retscore into retResult;

else

select strokes-GetPlayerSelectedHoleParScore(s.holeid) into retResult from golf.score sc,golf.shots s,golf.uiselected u  
where s.idscore=sc.idscore and  sc.playerid=iSelectedID
and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2;

end case;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundBirdies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundBirdies`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult int default 0;
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then 
SELECT count(*) into retResult  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=2  and sc.idscore=u.SelectedScoreEntry;

else
 SELECT count(*) into retResult  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-1  and sc.idscore=u.SelectedScoreEntry;
 
end case;



RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundBogeys` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundBogeys`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult int default 0;
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then 
SELECT count(*) into retResult  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=-1  and sc.idscore=u.SelectedScoreEntry;

else
 SELECT count(*) into retResult FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=1  and sc.idscore=u.SelectedScoreEntry;
 
end case;



RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundEagles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundEagles`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult int default 0;
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then 
SELECT count(*) into retResult FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=-5  and sc.idscore=u.SelectedScoreEntry;

else
 SELECT count(*) into retResult FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-2  and sc.idscore=u.SelectedScoreEntry;
 
end case;



RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayed`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retResult int default 0;

SELECT Count(*)  into retResult FROM golf.shots s where s.idscore = iSelectedID and HoleStatus=2;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayedBack9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayedBack9`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retResult int default 0;

SELECT count(*) into retResult FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayedBack9Total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayedBack9Total`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retCount int default 0;
declare retResult int default 0;

SELECT count(*) into retCount FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;

if retCount <9 then 
return 0;
end if;
SELECT sum(s.strokes) into retResult FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;
RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayedFront9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayedFront9`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retResult int default 0;

SELECT count(*) into retResult  FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayedFront9Back9TotalScoreString` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayedFront9Back9TotalScoreString`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retCountFront9 int default 0;
declare retCountBack9 int default 0;
declare retFront9Score varchar(45) default '';
declare retBack9Score varchar(45) default '';
declare retResult varchar(45) default '';
declare TournamentType int default 0;

SELECT count(*) into retCountFront9 FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;
SELECT count(*) into retCountBack9 FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;


case TournamentType

when 1 then

if retCountFront9 >0 then 
SELECT case  SIGN(sum(strokes))  when 1 then concat('+',sum(strokes)) else sum(strokes) end into retFront9Score FROM golf.courseholes sc,golf.shots s ,golf.uiselected u 
where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;
end if;

if retCountBack9 >0 then 
SELECT case  SIGN(sum(strokes))  when 1 then concat('+',sum(strokes)) else sum(strokes) end into retBack9Score FROM golf.courseholes sc,golf.shots s ,golf.uiselected u 
where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;
end if;

else


if retCountFront9 >0 then 
SELECT case  SIGN((sum(strokes)-sum(par)))  when 1 then concat('+',(sum(strokes)-sum(par))) when 0 then 'PAR' else (sum(strokes)-sum(par)) end into retFront9Score FROM golf.courseholes sc,golf.shots s ,golf.uiselected u 
where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;
end if;

if retCountBack9 >0 then 
SELECT case  SIGN((sum(strokes)-sum(par)))  when 1 then concat('+',(sum(strokes)-sum(par))) when 0 then 'PAR' else (sum(strokes)-sum(par)) end into retBack9Score FROM golf.courseholes sc,golf.shots s ,golf.uiselected u 
where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;
end if;

end case;

if retCountFront9 >0  and retCountBack9 =0 then 
select concat('TODAY  -   FRONT 9:  ',retFront9Score) into retResult;
elseif retCountFront9 =0  and retCountBack9 >0 then 
select concat('TODAY  -   BACK 9:  ',retBack9Score) into retResult;
else
select concat('TODAY  -   FRONT 9:  ',retFront9Score,'          BACK 9:  ',retBack9Score) into retResult;
end if;


RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayedFront9Total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayedFront9Total`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retCount int default 0;
declare retResult int default 0;

SELECT count(*) into retCount FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;

if retCount < 9 then 
return 0;
end if;
SELECT sum(s.strokes) into retResult FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;
RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayedPar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayedPar`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retPar int default 0;
SELECT ifnull(sum(c.par),0) into retPar FROM golf.shots s,golf.courseholes c where s.idscore = iSelectedID and HoleStatus=2 and c.idcourseholes = holeid;

RETURN retPar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundHolesPlayedStrokes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundHolesPlayedStrokes`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retStrokes int default 0;
SELECT ifnull(sum(s.strokes),0) into retStrokes FROM golf.shots s where s.idscore = iSelectedID and HoleStatus=2;

RETURN retStrokes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundLastCompletedHole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundLastCompletedHole`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retResult int default 0;


SELECT HoleNumber  into retResult
FROM golf.shots s,golf.score sc,golf.courseholes c where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore = iSelectedID and s.HoleStatus=2

order by if(sc.back9start=1, if(c.HoleNumber>9,(c.HoleNumber-9),c.HoleNumber+9),c.HoleNumber) desc
limit 1;

#SELECT HoleNumber into retResult  FROM golf.courseholes where idcourseholes =
#(SELECT holeid FROM golf.shots WHERE shotsid= (SELECT MAX(shotsid) FROM golf.shots s,golf.uiselected u where s.idscore = iSelectedID and s.HoleStatus=2));

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundOthers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundOthers`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult int default 0;
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then 
SELECT count(*) into retResult  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=-3  and sc.idscore=u.SelectedScoreEntry;

else
SELECT count(*)  into retResult FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))>=2  and sc.idscore=u.SelectedScoreEntry;
 
end case;



RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundPars` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundPars`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult int default 0;
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then 
SELECT count(*) into retResult  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=0  and sc.idscore=u.SelectedScoreEntry;

else
 SELECT count(*) into retResult FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=0  and sc.idscore=u.SelectedScoreEntry;
 
end case;



RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundParsScoreBreakdown` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundParsScoreBreakdown`() RETURNS varchar(200) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult varchar(200) default '';
declare retPar3 int default null;
declare retPar4 int default null;
declare retPar5 int default null;
declare retParScore3  varchar(200) default '';
declare retParScore4  varchar(200) default '';
declare retParScore5  varchar(200) default '';
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then 
SELECT count(*) into retResult  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=0  and sc.idscore=u.SelectedScoreEntry;

else
 SELECT sum(strokes)-(sum(GetPlayerSelectedHoleParScore(holeid))) into retPar5  FROM golf.shots s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry AND GetPlayerSelectedHoleParScore(holeid)=5 AND s.HoleStatus=2;
 SELECT sum(strokes)-(sum(GetPlayerSelectedHoleParScore(holeid))) into retPar4 FROM golf.shots s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry AND GetPlayerSelectedHoleParScore(holeid)=4 AND s.HoleStatus=2;
 SELECT sum(strokes)-(sum(GetPlayerSelectedHoleParScore(holeid))) into retPar3 FROM golf.shots s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry AND GetPlayerSelectedHoleParScore(holeid)=3 AND s.HoleStatus=2;
 
 
 

if  retPar3 is not null and retPar4 is not null and  retPar5 is not null then

select case  SIGN(retPar3)  when 1 then concat('+',retPar3) when 0 then 'E' else retPar3 end into retParScore3;
select case  SIGN(retPar4)  when 1 then concat('+',retPar4) when 0 then 'E' else retPar4 end into retParScore4;
select case  SIGN(retPar5)  when 1 then concat('+',retPar5) when 0 then 'E' else retPar5 end into retParScore5;

select concat("TODAY-   PAR 3's: ",retParScore3,"           PAR 4's: ",retParScore4,"           PAR 5's: ",retParScore5)  into retResult;

elseif retPar3 is not null and retPar4 is not null then

select case  SIGN(retPar3)  when 1 then concat('+',retPar3) when 0 then 'E' else retPar3 end into retParScore3;
select case  SIGN(retPar4)  when 1 then concat('+',retPar4) when 0 then 'E' else retPar4 end into retParScore4;

select concat("TODAY-   PAR 3's: ",retParScore3,"       PAR 4's: ",retParScore4)  into retResult;

elseif retPar4 is not null and retPar5 is not null then

select case  SIGN(retPar5)  when 1 then concat('+',retPar5) when 0 then 'E' else retPar5 end into retParScore5;
select case  SIGN(retPar4)  when 1 then concat('+',retPar4) when 0 then 'E' else retPar4 end into retParScore4;

select concat("TODAY-   PAR 4's: ",retParScore4,"       PAR 5's: ",retParScore5)  into retResult;

else

select concat("TODAY's SCORE: ",GetPlayerSelectedRoundScore(u.SelectedScoreEntry)) from golf.uiselected u into retResult;

end if;



end case;



RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundScore`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retscore int default 0;
declare retStrokesPlayed int default 0;
declare retHolesPlayedPar int default 0;
declare retResult varchar(45) default '';
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

SELECT   GetPlayerSelectedRoundHolesPlayedStrokes(iSelectedID) into retStrokesPlayed; 
SELECT   GetPlayerSelectedRoundHolesPlayedPar(iSelectedID) into retHolesPlayedPar;

if retStrokesPlayed=0 and retHolesPlayedPar=0 then
return '';
end if;

case TournamentType

when 1 then 
select retStrokesPlayed into retResult;

else
select (retStrokesPlayed - retHolesPlayedPar) into retscore;
select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'E' else retscore end into retResult;
end case;



RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedRoundSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedRoundSummary`() RETURNS varchar(200) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retSummary varchar(200) default '';
declare retToday varchar(200) default '';

declare varEagles int default 0;
declare varBirdie int default 0;
declare varPar int default 0;
declare varBogey int default 0;
declare varOther int default 0;
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then
 
select (SELECT count(*)  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=5  and sc.idscore=u.SelectedScoreEntry)
TodayEagles,
(SELECT count(*)   FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=2  and sc.idscore=u.SelectedScoreEntry)
TodayBirdies,
 (SELECT count(*)  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=0  and sc.idscore=u.SelectedScoreEntry)
TodayPars,
  (SELECT count(*) TodayBogeys FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=-1  and sc.idscore=u.SelectedScoreEntry)
TodayBogeys,
   (SELECT count(*)  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and s.strokes=-3  and sc.idscore=u.SelectedScoreEntry) 
   TodayOther into varEagles,varBirdie,varPar,varBogey, varOther;
   
else
 
select (SELECT count(*)  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-2  and sc.idscore=u.SelectedScoreEntry)
TodayEagles,
(SELECT count(*)   FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-1  and sc.idscore=u.SelectedScoreEntry)
TodayBirdies,
 (SELECT count(*)  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=0  and sc.idscore=u.SelectedScoreEntry)
TodayPars,
  (SELECT count(*) TodayBogeys FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=1  and sc.idscore=u.SelectedScoreEntry)
TodayBogeys,
   (SELECT count(*)  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))>=2  and sc.idscore=u.SelectedScoreEntry) 
   TodayOther into varEagles,varBirdie,varPar,varBogey, varOther;
   
end case;
   
if varEagles>0 then
select concat(retToday,'  EAGLES: ',varEagles) into retToday;
end  if;

if varBirdie>0 then
select concat(retToday,'   BIRDIES: ',varBirdie)  into retToday;
end  if;

if varPar>0 then
select concat(retToday,'   PARS: ',varPar)  into retToday;
end  if;

if varBogey>0 then
select concat(retToday,'   BOGEYS: ',varBogey)  into retToday;
end  if;

if varOther>0 then
select concat(retToday,'   OTHER: ',varOther)  into retToday;
end  if;

select concat('TODAY -',retToday) into retSummary;

RETURN retSummary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedStrokeDescription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedStrokeDescription`(iStrokes int,iHoleid int) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult varchar(45) default '';
declare varStrokes int default -1;
declare varPar int default -1;
declare VarTotal int;
declare TournamentType int default 0;

#SELECT Par into varPar  FROM golf.courseholes sc where sc.Holenumber=iHoleid;





SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then


case iStrokes 

when 5 then
select 'EAGLE' into retResult;
when 2 then
select 'BIRDIE' into retResult;
when 0 then
select 'PAR' into retResult;
when -1 then
select 'BOGEY' into retResult;
when -3 then
select 'DOUBLE BOGEY' into retResult;
end case;

else

SELECT Par into varPar  FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;

select (iStrokes - varPar) into VarTotal;

case VarTotal 

when -2 then
select 'EAGLE' into retResult;
when -1 then
select 'BIRDIE' into retResult;
when 0 then
select 'PAR' into retResult;
when 1 then
select 'BOGEY' into retResult;
when 2 then
select 'DOUBLE BOGEY' into retResult;
when 3 then
select 'TRIPLE BOGEY' into retResult;
when 4 then
select '4 OVER PAR' into retResult;
else
select case varStrokes 
when 1 then 'TEE SHOT'
when 2 then '2nd SHOT' 
end into retResult;

end case;

end case;


RETURN retResult;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedStrokesFromHoleParDescription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedStrokesFromHoleParDescription`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult varchar(45) default '';
declare varStrokes int default -1;
declare varPar int default -1;
declare VarTotal int;

SELECT s.strokes into varStrokes FROM golf.shots s where s.shotsid =iSelectedID;

SELECT Par into varPar  FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;

select (varStrokes - varPar) into VarTotal;

case VarTotal 

when -2 then
select 'FOR EAGLE' into retResult;
when -1 then
select 'FOR BIRDIE' into retResult;
when 0 then
select 'FOR PAR' into retResult;
when 1 then
select 'FOR BOGEY' into retResult;
when 2 then
select 'FOR DOUBLE BOGEY' into retResult;
when 3 then
select '3 OVER PAR' into retResult;
when 4 then
select '4 OVER PAR' into retResult;
else
select case varStrokes 
when 1 then '1st SHOT'
when 2 then '2nd SHOT' 
end into retResult;
end case;


RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedStrokesFromHoleParFlag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedStrokesFromHoleParFlag`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare varStrokes int default -1;
declare varPar int default -1;
declare VarTotal int;
declare retResult int default 0;
declare TournamentType int default 0;

SELECT s.strokes into varStrokes FROM golf.shots s where s.shotsid =iSelectedID;


SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then

case varStrokes 

when 5 then
select 	1 into retResult;
when 2 then
select 2 into retResult;
when 0 then
select 3 into retResult;
when -1 then
select 5 into retResult;
when -3 then
select 5 into retResult;
end case;

else


SELECT Par into varPar  FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=iSelectedID;

select (varStrokes - varPar) into VarTotal;

case VarTotal 

when -2 then
select 	1 into retResult;
when -1 then
select 2 into retResult;
when 0 then
select 3 into retResult;
when 1 then
select 4 into retResult;
when 2 then
select 5 into retResult;
when 3 then
select 5 into retResult;
when 4 then
select 5 into retResult;
else
select case varStrokes 
when 1 then 0
when 2 then 0 
end into retResult;
end case;

end case;


RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedTournamentPosition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedTournamentPosition`(iSelectedID BIGINT) RETURNS varchar(200) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN

	declare Pos int default 0;
    declare Tied int default 0;
	declare retResult varchar(45) default '';
    declare playerShotsExist int default 0;
    declare playerIDExist BIGINT default -1;
    
    SELECT s.playerid into playerIDExist FROM golf.score s where s.idscore = iSelectedID;
    
    
    
    SELECT count(*) into playerShotsExist FROM golf.score sc,golf.shots s where sc.idscore = s.idscore and playerid=playerIDExist
and s.holestatus=2
group by playerid;

if playerShotsExist=0 then
return '';
end if;


		SELECT s.Ranking,s.tied into Pos,Tied FROM golf.score s where s.idscore = iSelectedID;
        
        if Tied=1 then
        
        SELECT concat('T',s.Ranking) into retResult FROM golf.score s where s.idscore = iSelectedID;
        
        
        else

		select concat(convert(Pos,char(11)),
		case 
		when Pos%100 BETWEEN 11 AND 13 THEN 'th' 
		when Pos%10 = 1 THEN 'st' 
		WHEN Pos%10 = 2 THEN 'nd' 
		WHEN Pos%10 = 3 THEN 'rd'  
		ELSE 'th' end   )  into retResult;
        
        end if;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedTournamentScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedTournamentScore`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retscore int default 0;
declare retResult varchar(45) default '';
declare TournamentType int default 0;
declare playerShotsExist int default 0;

SELECT count(*) into playerShotsExist FROM golf.score sc,golf.shots s where sc.idscore = s.idscore and playerid=iSelectedID
and s.holestatus=2
group by playerid ;
#select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

if playerShotsExist=0 then
return '';
end if;

#SELECT 
#sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retscore
# FROM golf.score sc
#where sc.playerid = iSelectedID and sc.Playerid <> -1;



SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then

SELECT 
sum(GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)) into retscore
 FROM golf.score sc ,golf.uiselected u
where sc.playerid = iSelectedID and sc.Playerid <> -1
and sc.roundid <= u.SelectedRound;


select  retscore  into retResult;

else

SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retscore
 FROM golf.score sc ,golf.uiselected u
where sc.playerid = iSelectedID and sc.Playerid <> -1
and sc.roundid <= u.SelectedRound;


select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'E' else retscore end into retResult;

end case;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedTournamentScoreFromSelectedHole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedTournamentScoreFromSelectedHole`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retscore int default 0;
declare retParStrokes int default 0;
declare retRoundsScore int default 0;
declare retResult varchar(45) default '';
declare returnTournamentScore int default 0;
declare TournamentType int default 0;
declare playerShotsExist int default 0;
declare BackStart int default 0;

#select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;
select count(*)  into playerShotsExist FROM golf.shots s,golf.score sc where sc.idscore=s.idscore and  sc.playerid = (SELECT 	s.playerid FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry) and s.holestatus=2
group by playerid;

if playerShotsExist=0 then
return '';
end if;


SELECT sc.back9start  into BackStart
 FROM golf.score sc,golf.uiselected u
where sc.playerid = (Select Playerid FROM golf.score s where s.idscore=u.SelectedScoreEntry) and sc.roundid= u.SelectedRound;

if BackStart=1 then
return GetPlayerSelectedTournamentScoreFromSelectedHoleBack9Start((Select Playerid FROM golf.score s,golf.uiselected u where s.idscore=u.SelectedScoreEntry));
end if;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then
SELECT 
sum(GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)) into retRoundsScore
 FROM golf.score sc,golf.uiselected u
where sc.playerid = (Select Playerid FROM golf.score s where s.idscore=u.SelectedScoreEntry) and sc.Playerid <> -1 and sc.roundid<u.SelectedRound and sc.roundid<>u.SelectedRound;


SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber < (SELECT HoleNumber FROM golf.shots s,golf.courseholes h,golf.uiselected u where s.holeid=h.idcourseholes and s.shotsid = u.SelectedHole)

order by if(sc.back9start=1, if(c.HoleNumber>9,(c.HoleNumber-9),c.HoleNumber+9),c.HoleNumber) desc;


if retRoundsScore is not null then
select (retRoundsScore + retscore) into returnTournamentScore;
else
select retscore into returnTournamentScore;
end if;

select returnTournamentScore end into retResult;

else

SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retRoundsScore
 FROM golf.score sc,golf.uiselected u
where sc.playerid = (Select Playerid FROM golf.score s where s.idscore=u.SelectedScoreEntry) and sc.Playerid <> -1 and sc.roundid<u.SelectedRound and sc.roundid<>u.SelectedRound;


SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber < (SELECT HoleNumber FROM golf.shots s,golf.courseholes h,golf.uiselected u where s.holeid=h.idcourseholes and s.shotsid = u.SelectedHole)

order by if(sc.back9start=1, if(c.HoleNumber>9,(c.HoleNumber-9),c.HoleNumber+9),c.HoleNumber) desc;


if retRoundsScore is not null then
select (retRoundsScore -(-1*retscore)) into returnTournamentScore;
else
select retscore into returnTournamentScore;
end if;

select case  SIGN(returnTournamentScore)  when 1 then concat('+',returnTournamentScore) when 0 then 'E' else returnTournamentScore end into retResult;
end case;
RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedTournamentScoreFromSelectedHoleBack9Start` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedTournamentScoreFromSelectedHoleBack9Start`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retscore int default 0;
declare retscoreBack9 int default 0;
declare retscoreFront9 int default 0;
declare retParStrokes int default 0;
declare retRoundsScore int default 0;
declare retResult varchar(45) default '';
declare retSelectedHole int default 0;
declare returnTournamentScore int default 0;
declare playerShotsExist int default 0;
declare TournamentType int default 0;

#select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

select count(*)  into playerShotsExist FROM golf.shots s,golf.score sc where sc.idscore=s.idscore and  sc.playerid = (SELECT 	s.playerid FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry) and s.holestatus=2
group by playerid;

if playerShotsExist=0 then
return '';
end if;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;


case TournamentType

when 1 then

SELECT 
sum(GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)) into retRoundsScore
 FROM golf.score sc,golf.uiselected u
where sc.playerid = (Select Playerid FROM golf.score s where s.idscore=u.SelectedScoreEntry) and sc.Playerid <> -1 and sc.roundid<u.SelectedRound and sc.roundid<>u.SelectedRound;


SELECT sum(s.strokes)Score into retscoreBack9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber <= 18;


SELECT HoleNumber into retSelectedHole FROM golf.shots s,golf.courseholes h,golf.uiselected u where s.holeid=h.idcourseholes and s.shotsid = u.SelectedHole;

case  retSelectedHole 

when 1 then 

select retscoreBack9 into retscore;

 when 2 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
and HoleNumber=1;

select (retscoreBack9+retscoreFront9) into retscore;
 
 
 when 3 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 3;

select (retscoreBack9 +retscoreFront9) into retscore;
 
 
when 4 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 4;

select (retscoreBack9+retscoreFront9) into retscore;
 
 
when 5 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 5;

select (retscoreBack9+retscoreFront9) into retscore;
 
 
 when 6 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 6;

select (retscoreBack9+retscoreFront9) into retscore;
 
 
  when 7 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 7;

select (retscoreBack9+retscoreFront9) into retscore;
 
 
   when 8 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 8;

select (retscoreBack9+retscoreFront9) into retscore;
 
 
 when 9 then 

SELECT sum(s.strokes)Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 9;

select (retscoreBack9+retscoreFront9) into retscore;

when 10 then 

return '';

 when 11 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
and HoleNumber > 9 and HoleNumber < 11;
 
 
 when 12 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 12;
 
 
when 13 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 13;
 
 
when 14 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 14;
 
 
 when 15 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 15;
 
 
  when 16 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 16;
 
 
   when 17 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 17;
 
 
 when 18 then 

SELECT sum(s.strokes)Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 18;
 
 
end case;


if retRoundsScore is not null then
select (retRoundsScore + retscore) into returnTournamentScore;
else
select retscore into returnTournamentScore;
end if;

select returnTournamentScore into retResult;








else







SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retRoundsScore
 FROM golf.score sc,golf.uiselected u
where sc.playerid = (Select Playerid FROM golf.score s where s.idscore=u.SelectedScoreEntry) and sc.Playerid <> -1 and sc.roundid<u.SelectedRound and sc.roundid<>u.SelectedRound;


SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreBack9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber <= 18;


SELECT HoleNumber into retSelectedHole FROM golf.shots s,golf.courseholes h,golf.uiselected u where s.holeid=h.idcourseholes and s.shotsid = u.SelectedHole;

case  retSelectedHole 

when 1 then 

select retscoreBack9 into retscore;

 when 2 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
and HoleNumber=1;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;
 
 
 when 3 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 3;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;
 
 
when 4 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 4;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;
 
 
when 5 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 5;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;
 
 
 when 6 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 6;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;
 
 
  when 7 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 7;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;
 
 
   when 8 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 8;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;
 
 
 when 9 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscoreFront9
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber >= 1 and HoleNumber < 9;

select (retscoreBack9 -(-1*retscoreFront9)) into retscore;

when 10 then 

SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retResult
 FROM golf.score sc,golf.uiselected u
where sc.playerid = (Select Playerid FROM golf.score s where s.idscore=u.SelectedScoreEntry) and sc.Playerid <> -1 and sc.roundid<u.SelectedRound and sc.roundid<>u.SelectedRound;


 when 11 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
and HoleNumber > 9 and HoleNumber < 11;
 
 
 when 12 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 12;
 
 
when 13 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 13;
 
 
when 14 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 14;
 
 
 when 15 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 15;
 
 
  when 16 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 16;
 
 
   when 17 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 17;
 
 
 when 18 then 

SELECT (sum(s.strokes) - sum(c.Par) )Score into retscore
FROM golf.shots s,golf.score sc,golf.courseholes c,golf.uiselected u
 where s.holeid=c.idcourseholes and sc.idscore = s.idscore and  s.idscore =  u.SelectedScoreEntry  and s.HoleStatus=2
 
 and HoleNumber > 9 and HoleNumber < 18;
 
 
end case;


if retRoundsScore is not null then
select (retRoundsScore -(-1*retscore)) into returnTournamentScore;
else
select retscore into returnTournamentScore;
end if;

select case  SIGN(returnTournamentScore)  when 1 then concat('+',returnTournamentScore) when 0 then 'E' else returnTournamentScore end into retResult;

end case;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSelectedTournamentScoreFromSelRound` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedTournamentScoreFromSelRound`(iSelectedID BIGINT,iRoundID int) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retscore int default 0;
declare retParStrokes int default 0;
declare retRoundsScore int default 0;
declare retResult varchar(45) default '';
declare returnTournamentScore int default 0;
declare playerShotsExist int default 0;
declare TournamentType int default 0;


#select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;
select count(*)  into playerShotsExist FROM golf.shots s,golf.score sc where sc.idscore=s.idscore and  sc.playerid =iSelectedID and s.holestatus=2
group by playerid;

if playerShotsExist=0 then
return '';
end if;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then

SELECT 
sum(GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)) into retRoundsScore
 FROM golf.score sc,golf.uiselected u
where sc.playerid = iSelectedID and sc.Playerid <> -1 and sc.roundid<iRoundID and sc.roundid<>iRoundID;


SELECT 
sum(GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)) into retscore
 FROM golf.score sc
where sc.playerid = iSelectedID and sc.Playerid <> -1 and sc.Roundid =iRoundID ;
 


if retRoundsScore is not null then
select (retRoundsScore + retscore) into returnTournamentScore;
else
select retscore into returnTournamentScore;
end if;

select returnTournamentScore into retResult;


else

SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retRoundsScore
 FROM golf.score sc,golf.uiselected u
where sc.playerid = iSelectedID and sc.Playerid <> -1 and sc.roundid<iRoundID and sc.roundid<>iRoundID;


SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retscore
 FROM golf.score sc
where sc.playerid = iSelectedID and sc.Playerid <> -1 and sc.Roundid =iRoundID ;
 


if retRoundsScore is not null then
select (retRoundsScore -(-1*retscore)) into returnTournamentScore;
else
select retscore into returnTournamentScore;
end if;

select case  SIGN(returnTournamentScore)  when 1 then concat('+',returnTournamentScore) when 0 then 'E' else returnTournamentScore end into retResult;

end case;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSurNameFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSurNameFromID`(iSelectedId bigint) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retname varchar(400) default '';
select if(pro=1,concat(c.lastname,' [A]'),c.lastname) into retname from players c where PlayerID = iSelectedId;

RETURN retname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPlayerSurnameIncludeInitialIfDupInTeamFromID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSurnameIncludeInitialIfDupInTeamFromID`(iSelectedId BIGINT) RETURNS varchar(400) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retSurname varchar(400);

select if((select a.lastname not in(SELECT s.lastname FROM golf.players s where s.playerid<> iSelectedId)),
if(pro=1,concat(a.lastname,' [A]'),a.lastname),
concat(left(a.firstname,1),'. ',if(pro=1,concat(a.lastname,' [A]'),a.lastname))) into retSurname
from golf.players a where a.playerid = iSelectedId;

RETURN retSurname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTournamentSelectedCourseHolesNumber` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTournamentSelectedCourseHolesNumber`(iSelectedID BIGINT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare retResult int default 0;

SELECT Holes into retResult  FROM golf.course WHERE courseid = iSelectedID;

RETURN retResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTournamentSelectedLeaderBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTournamentSelectedLeaderBoard`(iColumn int,limitstart int, limitCount int)
BEGIN

declare iLeaderScore int ;
declare iPlayerID bigint default -1;
declare TournamentType int default 0;

SELECT t.idscoringtype into TournamentType FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;

case TournamentType

when 1 then 
 call GetTournamentSelectedLeaderBoardStableford(iColumn,limitstart,limitCount);
 
else


case 

iColumn

when 0 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 3 then

SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,s.playerid into iLeaderScore,iPlayerID
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

SELECT
 case  
 when iPlayerID <> s.playerid then
 concat('BEHIND LEADER: ',iLeaderScore-(GetPlayerSelectedTournamentScore(s.playerid)))  end 
 FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;


when 4 then

SELECT  if(s.tied=1,Concat('LEADERS: ', GetPlayerSelectedTournamentScore(s.playerid)),Concat('LEADER: ', GetPlayerSelectedTournamentScore(s.playerid)))LeadersString
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

when 5 then

SELECT  s.Ranking
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

when 6 then

SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

when 7 then

SELECT s.GraphicPos,GetplayerCountryFlagFromID(s.playerid)PlayerCountry,GetplayerNameFromID(s.playerid)PlayerName,
GetplayerSurnameFromID(s.playerid)PlayerSurName,
GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total,
GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total,
GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),''),'')Round4Total,

GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White' TextColor 
FROM golf.score s,golf.uiselected u 
where tournamentid = u.SelectedTournament and roundid = u.SelectedRound
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 8 then

SELECT s.Ranking,GetplayerCountryFlagFromID(s.playerid)PlayerCountry,GetplayerNameFromID(s.playerid)PlayerName,
GetplayerSurnameFromID(s.playerid)PlayerSurName,
GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total,
GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total,
GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),''),'')Round4Total,

GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White' TextColor 
FROM golf.score s,golf.uiselected u 
where tournamentid = u.SelectedTournament and roundid = u.SelectedRound
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 10 then

SELECT s.ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 11 then

SELECT s.ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;


when 12 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament  order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
              
when 13 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;
                
when 14 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;

when 15 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =1 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 16 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =1 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 17 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =2 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 18 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =2 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 19 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament  and GetPlayerSelectedRoundHolesPlayed(s.idscore)>0 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 20 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 21 then
SELECT 
GetPlayerSelectedCourseColor(s.courseid) color FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;
  
when 22 then

SELECT GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedHoleScore(s.playerid) HoleScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(HoleScore='E',0,HoleScore) as signed) asc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 23 then

SELECT GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedHoleScore(s.playerid) HoleScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(HoleScore='E',0,HoleScore) as signed) asc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;
  
end case;
end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTournamentSelectedLeaderBoardStableford` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTournamentSelectedLeaderBoardStableford`(iColumn int,limitstart int, limitCount int)
BEGIN

declare iLeaderScore int ;
declare iPlayerID bigint default -1;
case 

iColumn

when 0 then
SELECT s.GraphicPos,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =u.SelectedRound and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 3 then

SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,s.playerid into iLeaderScore,iPlayerID
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

SELECT
 case  
 when iPlayerID <> s.playerid then
 concat('BEHIND LEADER: ',iLeaderScore-(GetPlayerSelectedTournamentScore(s.playerid)))  end 
 FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;


when 4 then

SELECT  if(s.tied=1,Concat('LEADERS: ', GetPlayerSelectedTournamentScore(s.playerid)),Concat('LEADER: ', GetPlayerSelectedTournamentScore(s.playerid)))LeadersString
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

when 5 then

SELECT  s.Ranking
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by 
cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

when 6 then

SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore
 FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit  limitstart,limitCount;

when 7 then

SELECT s.GraphicPos,GetplayerCountryFlagFromID(s.playerid)PlayerCountry,GetplayerNameFromID(s.playerid)PlayerName,
GetplayerSurnameFromID(s.playerid)PlayerSurName,
GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total,
GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total,
GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),''),'')Round4Total,

GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White' TextColor 
FROM golf.score s,golf.uiselected u 
where tournamentid = u.SelectedTournament and roundid = u.SelectedRound
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 8 then

SELECT s.Ranking,GetplayerCountryFlagFromID(s.playerid)PlayerCountry,GetplayerNameFromID(s.playerid)PlayerName,
GetplayerSurnameFromID(s.playerid)PlayerSurName,
GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total,
GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total,
GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),''),'')Round4Total,

GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White' TextColor 
FROM golf.score s,golf.uiselected u 
where tournamentid = u.SelectedTournament and roundid = u.SelectedRound
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 10 then

SELECT s.ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 11 then

SELECT s.ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;


when 12 then
SELECT s.Ranking,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =u.SelectedRound and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament  order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
              
when 13 then
SELECT s.GraphicPos,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor 
FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =u.SelectedRound and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;
                
when 14 then
SELECT s.Ranking,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor 
FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =u.SelectedRound and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;

when 15 then
SELECT s.GraphicPos,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor 
FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =1 and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 16 then
SELECT s.Ranking,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor 
FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =1 and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 17 then
SELECT s.GraphicPos,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor 
FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =2 and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 18 then
SELECT s.Ranking,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor 
FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =2 and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 19 then
SELECT s.GraphicPos,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor
 FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =u.SelectedRound and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament  and GetPlayerSelectedRoundHolesPlayed(s.idscore)>0 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 20 then
SELECT s.Ranking,if(TeamEvent=1,'',GetplayerNameFromID(s.playerid))PlayerName,if(TeamEvent=1,GetPlayerFullNameFromID(s.playerid),GetplayerSurnameFromID(s.playerid))PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			if(s.back9start=1,'F*','F'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor
FROM golf.score s,golf.uiselected u,golf.tournament t 
where roundid =u.SelectedRound and s.tournamentid=t.tournamentid and s.tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 21 then
SELECT 
GetPlayerSelectedCourseColor(s.courseid) color FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;
  
when 22 then

SELECT GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedHoleScore(s.playerid) HoleScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(HoleScore='E',0,HoleScore) as signed) desc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;

when 23 then

SELECT GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedHoleScore(s.playerid) HoleScore,
GetplayerCountryFlagFromID(s.playerid) PlayerCountryFlag
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament and playerid in 
 (SELECT concat(playerid) FROM golf.players p where p.Matchid=(SELECT Matchid FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)))
order by cast(if(HoleScore='E',0,HoleScore) as signed) desc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;
  
end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 15:37:08
