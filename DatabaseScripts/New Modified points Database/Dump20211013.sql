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
INSERT INTO `course` VALUES (1614697043090,'GARY PLAYER COUNTRY  CLUB, SUN CITY','GARY PLAYER COUNTRY  CLUB, SUN CITY',18,36,36,72,3595,3567,7162,3931,3900,7831,'MONTAGU',1);
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
INSERT INTO `courseholes` VALUES (1,1614697043090,'Hole 1',1,5,0,500),(2,1614697043090,'Hole 2',2,4,0,419),(3,1614697043090,'Hole 3',3,3,0,200),(4,1614697043090,'Hole 4',4,4,0,406),(5,1614697043090,'Hole 5',5,5,0,550),(6,1614697043090,'Hole 6',6,4,0,431),(7,1614697043090,'Hole 7',7,3,0,193),(8,1614697043090,'Hole 8',8,4,0,437),(9,1614697043090,'Hole 9',9,4,0,459),(10,1614697043090,'Hole 10',10,4,0,403),(11,1614697043090,'Hole 11',11,5,0,520),(12,1614697043090,'Hole 12',12,4,0,411),(13,1614697043090,'Hole 13',13,3,0,195),(14,1614697043090,'Hole 14',14,4,0,449),(15,1614697043090,'Hole 15',15,4,0,388),(16,1614697043090,'Hole 16',16,3,0,206),(17,1614697043090,'Hole 17',17,4,0,450),(18,1614697043090,'Hole 18',18,5,0,545);
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
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (-1,'','','','1996-03-11 00:00:00','','','','','',NULL,-1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1614872890756,'ADRIEL','POONAN','','1995-10-11 00:00:00','POO004','','RSA','','',NULL,0,'50.17%','76.01','4 EAGLES IN 61 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1614872890758,'CHRIS','SWANEPOEL','','1984-11-22 00:00:00','SWA010','','RSA','','',NULL,0,'Year Turned Pro: 2003','Stroke Average: 72.09','4 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890760,'DESNE','VAN DEN BERGH','DESNE VAN DEN BERGH','1989-10-20 00:00:00','VAN186','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.45','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,16,'0',0),(1614872890763,'PIETER','MOOLMAN','PIETER MOOLMAN','1991-02-26 00:00:00','MOO018','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 72.61','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890764,'JARED','HARVEY','JARED HARVEY','1988-08-06 00:00:00','HAR040','','RSA','','',NULL,0,'64.00%','71.52','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,12,'0',0),(1614872890765,'MUSIWALO','NETHUNZWI','','1989-04-24 00:00:00','NET003','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.72','Year Turned Pro: 2013','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890766,'JACQUES','KRUYSWIJK','','1992-10-16 00:00:00','KRU019','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.13','62 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'49,375.00',2),(1614872890767,'JAKE','ROOS','','1980-10-20 00:00:00','ROO003','','RSA','','',NULL,0,'2005','71.10','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'116,050.00',3),(1614872890768,'RUAN','KORB','RUAN KORB','1993-12-03 00:00:00','KOR003','','RSA','','',NULL,0,'71.43','55.63%','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,23,'0',0),(1614872890769,'JACO','PRINSLOO','','1989-08-23 00:00:00','PRI022','','RSA','','',NULL,0,'58.11%','71.44','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'184,860.71',3),(1614872890770,'JAKE','REDMAN','JAKE REDMAN','1987-04-26 00:00:00','RED004','','RSA','','',NULL,0,'49.61%','72.22','Stroke Average: 72.23','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'106,850.00',3),(1614872890771,'ALEX','HAINDL','ALEX HAINDL','1983-02-03 00:00:00','HAI002','','RSA','','',NULL,0,'Year Turned Pro: 2000','Stroke Average: 71.72','3 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,3,'0',0),(1614872890772,'THRISTON','LAWRENCE','THRISTON LAWRENCE','1996-12-03 00:00:00','LAW008','','RSA','','',NULL,0,'2014','70.61','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,3,'100,650.00',3),(1614872890773,'OCKIE','STRYDOM','OCKIE STRYDOM','1985-01-08 00:00:00','STR011','','RSA','','',NULL,0,'58.37%','71.69','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,13,'0',0),(1614872890774,'JACQUES','BLAAUW','','1986-02-12 00:00:00','BLA019','','RSA','','',NULL,0,'Year Turned Pro: 2008','RANKED 414 IN THE OFFICIAL WORLD GOLF RANKINGS','4 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1614872890776,'JEAN','HUGO','JEAN HUGO','1975-12-03 00:00:00','HUG004','','RSA','','',NULL,0,'71.10%','70.76','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,25,'84,766.67',3),(1614872890777,'ADILSON','DA SILVA','ADILSON DA SILVA','1972-01-24 00:00:00','DAS001','','BRA','','',NULL,0,'81.17%','70.63','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil',0,5,'51,450.00',3),(1614872890778,'JJ','SENEKAL','JJ SENEKAL','1988-01-25 00:00:00','SEN004','','RSA','','',NULL,0,'Amateur','Stroke Average: 72.42','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,11,'0',0),(1614872890779,'JAMES','KINGSTON','','1965-11-30 00:00:00','KIN001','','RSA','','',NULL,0,'1988','71.40','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890780,'RHYS','ENOCH','RHYS ENOCH','1988-06-16 00:00:00','ENO002','','WAL','','',NULL,0,'Year Turned Pro: 2012','Residence: Cardiff, Wales','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales',0,NULL,'158,500.00',1),(1614872890781,'HENNIE','O\'KENNEDY','HENNIE O\'KENNEDY','1996-09-02 00:00:00','OKE004','','RSA','','',NULL,0,'Amateur','Stroke Average: 73.82','63 LOWEST ROUND SCORE ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890782,'LUKE','BROWN','LUKE BROWN','1998-06-02 00:00:00','BRO037','','RSA','','',NULL,0,'68.60%','72.14','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,4,'0',0),(1614872890783,'MALCOLM','MITCHELL','MALCOLM MITCHELL','1994-12-11 00:00:00','MIT007','','RSA','','',NULL,0,'70.78','56.14%','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890784,'TRISTEN','STRYDOM','TRISTEN STRYDOM','1997-02-21 00:00:00','STR026','','RSA','','',NULL,0,'69.88%','71.63','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,27,'83,375.00',3),(1614872890785,'HEINRICH','BRUINERS','HEINRICH BRUINERS','1987-10-07 00:00:00','BRU006','','RSA','','',NULL,0,'51.46','51.68%','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'0',0),(1614872890786,'LYLE','ROWE','LYLE ROWE','1987-06-13 00:00:00','ROW005','','RSA','','',NULL,0,'54.46%','72.07','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'0',0),(1614872890787,'DEAN','BURMESTER','','1989-06-02 00:00:00','BUR025','','RSA','','',NULL,0,'Year Turned Pro: 2010','7 TOURNAMENT WINS','RANKED 183 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'97,500.00',1),(1614872890788,'ZANDER','LOMBARD','','1995-01-18 00:00:00','LOM010','','RSA','','',NULL,0,'Year Turned Pro: 2014','RANKED 371 IN THE OFFICIAL WORLD GOLF RANKINGS','2018/19 SUNSHINE TOUR WINNER','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890789,'JACO','AHLERS','JACO AHLERS','1982-11-19 00:00:00','AHL001','','RSA','','',NULL,0,'Year Turned Pro: 2006','RANKED 280 IN THE OFFICIAL WORLD GOLF RANKINGS','9 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1614872890790,'DARREN','FICHARDT','','1975-05-13 00:00:00','FIC002','','RSA','','',NULL,0,'Year Turned Pro: 1994','18 TOURNAMENT WINS','RANKED 236 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0),(1614872890791,'KEENAN','DAVIDSE','KEENAN DAVIDSE','1989-05-10 00:00:00','DAV019','','RSA','','',NULL,0,'61.16%','71.97','AVERAGES 4 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1614872890792,'LOUIS','DE JAGER','','1987-03-30 00:00:00','DEJ006','','RSA','','',NULL,0,'Year Turned Pro: 2008','5 TOURNAMENT WINS','RANKED 322 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890794,'NEIL','SCHIETEKAT','NEIL SCHIETEKAT','1984-01-31 00:00:00','SCH044','','RSA','','',NULL,0,'68.86%','71.13','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'111,400.00',3),(1614872890795,'WILCO','NIENABER','','2000-04-07 00:00:00','NIE008','','RSA','','',NULL,0,'Amateur','Stroke Average: 70.06','AVERAGES 5 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1614872890796,'DYLAN','NAIDOO','','1992-02-21 00:00:00','NAI013','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 71.91','65 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890798,'MERRICK','BREMNER','MERRICK BREMNER','1986-03-26 00:00:00','BRE005','','RSA','','',NULL,0,'Year Turned Pro: 2005','Stroke Average: 71.62','7 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,14,'0',0),(1614872890799,'SHAUN','NORRIS','','1982-05-14 00:00:00','NOR008','','RSA','','',NULL,0,'Year Turned Pro: 2002','2 TOURNAMENT WINS','RANKED 111 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890800,'JAYDEN','SCHAPER','JAYDEN SCHAPER','2001-03-15 00:00:00','SCH079','','RSA','','',NULL,0,'71.27%','Stroke Average: 70.43','8 EAGLES IN 35 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890801,'GARRICK','HIGGO','','1999-05-12 00:00:00','HIG006','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 70.10','10 EAGLES IN 63 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890802,'TOTO','THIMBA JNR','TOTO THIMBA JNR','1986-02-10 00:00:00','THI001','','RSA','','',NULL,0,'Year Turned Pro: 2007','Stroke Average: 72.83','63 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890803,'MATIAS','CALDERON','','1991-12-18 00:00:00','CAL012','','CHL','','',NULL,0,'Year Turned Pro: 2016','Stroke Average: 72.37','Residence: Region Metropolitana (Chile)','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Chile',0,NULL,'0',0),(1614872890804,'ANDRE','NEL','ANDRE NEL','1995-05-31 00:00:00','NEL019','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.88','26 EAGLES IN 180 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890808,'MJ','VILJOEN','','1995-05-08 00:00:00','VIL011','','RSA','','',NULL,0,'2014','71.94','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'70,075.00',3),(1614872890810,'HENNIE','DU PLESSIS','','1996-10-14 00:00:00','DUP029','','RSA','','',NULL,0,'2015','71.34','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'54,500.00',2),(1614872890812,'CHRISTIAAN','BASSON','CHRISTIAAN BASSON','1984-04-30 00:00:00','BAS007','','RSA','','',NULL,0,'71.71','61.36%','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890813,'LUKE','JERLING','LUKE JERLING','1992-07-10 00:00:00','JER001','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.58','30 EAGLES IN 212 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,31,'0',0),(1614872890814,'STEVE','SURRY','STEVE SURRY','1982-02-11 00:00:00','SUR001','','ENG','','',NULL,0,'70.48','69.28%','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England',0,26,'0',0),(1614872890815,'DANIEL','GREENE','DANIEL GREENE','1985-08-05 00:00:00','GRE022','','RSA','','',NULL,0,'70.63%','71.68','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,24,'0',0),(1614872890816,'JAMES HART','DU PREEZ','','1995-10-13 00:00:00','DUP028','','RSA','','',NULL,0,'2018','71.67','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1614872890817,'RUAN','DE SMIDT','RUAN DE SMIDT','1989-10-25 00:00:00','DES005','','RSA','','',NULL,0,'Year Turned Pro: 2011','4 TOURNAMENT WINS','60 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,7,'0',0),(1614872890818,'STEPHEN','FERREIRA','STEPHEN FERREIRA','1991-12-06 00:00:00','FER028','','POR','','',NULL,0,'58.60%','72.30','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal',0,6,'0',0),(1614872890819,'DEON','GERMISHUYS','DEON GERMISHUYS','1999-10-22 00:00:00','GER017','','RSA','','',NULL,0,'70.20%','70.90','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,28,'0',0),(1614872890820,'ANTHONY','MICHAEL','ANTHONY MICHAEL','1985-08-22 00:00:00','MIC009','','RSA','','',NULL,0,'2009',' 71.64','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'60,166.67',3),(1614872890821,'KYLE','BARKER','KYLE BARKER','1998-02-11 00:00:00','BAR054','','RSA','','',NULL,0,'2017','71.96','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,4,'0',0),(1614872890822,'DOUG','MCGUIGAN','DOUG MCGUIGAN','1970-08-07 00:00:00','MCG001','','SCO','','',NULL,0,'66.76%','71.80','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland',0,NULL,'0',0),(1614872890823,'CALLUM','MOWAT','CALLUM MOWAT','1992-02-11 00:00:00','MOW001','','RSA','','',NULL,0,'Year Turned Pro: 2014','Stroke Average: 72.41','61 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,31,'0',0),(1614872890824,'CJ','DU PLESSIS','CJ DU PLESSIS','1992-02-04 00:00:00','DUP022','','RSA','','',NULL,0,'65.35%',' 72.31','4 ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,43,'0',0),(1614872890825,'ESTIAAN','CONRADIE','ESTIAAN CONRADIE','1997-10-12 00:00:00','CON007','','RSA','','',NULL,0,'Amateur','Stroke Average: 71.75','AVERAGES 4 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890826,'FREDRIK','FROM','FREDRIK FROM','1989-02-08 00:00:00','FRO006','','SWE','','',NULL,0,'74.36%','71.17','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,30,'0',0),(1614872890828,'CLINTON','GROBLER','','1995-05-09 00:00:00','GRO026','','RSA','','',NULL,0,'','72.38','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890830,'ROURKE','VAN DER SPUY','ROURKE VAN DER SPUY','1990-01-11 00:00:00','VAN178','','RSA','','',NULL,0,'Year Turned Pro: 2012','Stroke Average: 72.01','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,16,'0',0),(1614872890831,'ULRICH','VAN DEN BERG','ULRICH VAN DEN BERG','1975-01-13 00:00:00','VAN060','','RSA','','',NULL,0,'Year Turned Pro: 1999','Stroke Average: 70.98','7 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890832,'MARTIN','ROHWER','','1993-08-24 00:00:00','ROH001','','RSA','','',NULL,0,'2016','70.64','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'128,450.00',3),(1614872890833,'HENNIE','OTTO','HENNIE OTTO','1976-06-25 00:00:00','OTT002','','RSA','','',NULL,0,'70.79','66.36%','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,15,'118,000.00',3),(1614872890835,'MICHAEL','PALMER','MICHAEL PALMER','1989-11-17 00:00:00','PAL008','','RSA','','',NULL,0,'70.56','53.31%','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890836,'RUAN','CONRADIE','RUAN CONRADIE','1995-08-08 00:00:00','CON004','','RSA','','',NULL,0,'','71.48','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,9,'0',0),(1614872890837,'KEITH','HORNE','','1971-06-09 00:00:00','HOR002','','RSA','','',NULL,0,'Year Turned Pro: 1996','9 TOURNAMENT WINS','RANKED 517 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890838,'JACO','VAN ZYL','JACO VAN ZYL','1979-02-23 00:00:00','VAN062','','RSA','','',NULL,0,'63.54%','70.34','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,10,'0',0),(1614872890839,'TREVOR','FISHER JNR','TREVOR FISHER JNR','1979-06-08 00:00:00','FIS005','','RSA','','',NULL,0,'64.74%','71.12','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',0,29,'56,825.00',3),(1614872890840,'OLIVER','BEKKER','','1984-12-11 00:00:00','BEK004','','RSA','','',NULL,0,'2008','71.18','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'68,760.71',3),(1614872890841,'JC','RITCHIE','','1994-02-24 00:00:00','RIT004','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.26','2019/20 SUNSHINE TOUR ORDER OF MERIT WINNER','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890842,'JBE\'','KRUGER','','1986-06-23 00:00:00','KRU013','','RSA','','',NULL,0,'2007','70.81','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'158,500.00',3),(1615544865998,'MICHAEL','HOLLICK','MICHAEL HOLLICK','2021-03-12 10:27:48','HOL016','','RSA','','',NULL,0,'61.27%','72.55','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,8,'0',0),(1615544868676,'DANIEL','VAN TONDER','','2021-03-12 10:27:49','VAN162','','RSA','','',NULL,0,'Year Turned Pro: 2011','7 TOURNAMENT WINS','Stroke Average: 70.63','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'97,500.00',1),(1615544869184,'THANDA','MAVUNDLA','','2021-03-12 10:27:49','MAV004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544869514,'ANDRE','BOSSERT','','2021-03-12 10:27:49','BOS001','','SUI','','',NULL,0,'Year Turned Pro: 1989','Stroke Average: 71.91','64 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1615544869856,'PEETIE','VAN DER MERWE','','2021-03-12 10:27:50','VAN283','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0),(1615544870238,'JASON','ROETS','','2021-03-12 10:27:50','ROE009','','RSA','','',NULL,0,'48.21%','74.26',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544870433,'ROBERTO','LUPINI','ROBERTO LUPINI','2021-03-12 10:27:50','LUP002','','RSA','','',NULL,0,'50.53%','73.83','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0),(1615544870564,'KEAGAN','THOMAS','KEAGAN THOMAS','2021-03-12 10:27:51','THO041','','RSA','','',NULL,0,'65.46%','71.53',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,42,'0',0),(1615544870980,'PAUL','BOSHOFF','PAUL BOSHOFF','2021-03-12 10:27:51','BOS015','','RSA','','',NULL,0,'73.55%','72.94','63 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,18,'0',0),(1615544871120,'WALLIE','COETSEE','','2021-03-12 10:27:51','COE001','','RSA','','',NULL,0,'Year Turned Pro: 1992','Stroke Average: 72.14','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871281,'COERT','GROENEWALD','','2021-03-12 10:27:51','GRO014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871438,'WYNAND','DINGLE','WYNAND DINGLE','2021-03-12 10:27:51','DIN004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,30,'0',0),(1615544871565,'HAYDEN','GRIFFITHS','','2021-03-12 10:27:51','GRI013','','RSA','','',NULL,0,'52.36%','73.08',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871744,'MADALITSO','MUTHIYA','MADALITSO MUTHIYA','2021-03-12 10:27:51','MUT002','','ZAM','','',NULL,0,' 2006','71.69','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,NULL,'0',0),(1615544871830,'JASON','SMITH','JASON SMITH','2021-03-12 10:27:52','SMI059','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,42,'0',0),(1615544871971,'SHALAN','GOVENDER','','2021-03-12 10:27:52','GOV005','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 78.61','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544872087,'STUART','SMITH','STUART SMITH','2021-03-12 10:27:52','SMI046','','BOT','','',NULL,0,'72.67','51.96%','Stroke Average: 73.98','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Botswana ',0,43,'0',0),(1615544872221,'BYRON','COETZEE','','2021-03-12 10:27:52','COE034','','RSA','','',NULL,0,'2 EAGLES IN 17 ROUNDS','Stroke Average: 72.94','AVERAGE 4 BIRDIES PER ROUND ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544872355,'PHILIP','GEERTS','','2021-03-12 10:27:52','GEE003','','ITA','','',NULL,0,'61.98%','72.99','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1615544872499,'MARTHIN','SCHEEPERS','','2021-03-12 10:27:53','SCH060','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544873098,'RUPERT','KAMINSKI','RUPERT KAMINSKI','2021-03-12 10:27:53','KAM014','','RSA','','',NULL,0,'66 LOWEST ROUND SCORE','Stroke Average: 73.26','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,2,'0',0),(1615544873364,'RICHIE','O\'DONOVAN','','2021-03-12 10:27:53','ODO004','','IRL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Ireland ',0,NULL,'0',0),(1615544873568,'ANTON','HAIG','ANTON HAIG','2021-03-12 10:27:53','HAI003','','RSA','','',NULL,0,'48.69%','71.88','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544873866,'BEN','FIRTH','','2021-03-12 10:27:54','FIR001','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1615544874093,'NIKHIL','RAMA','NIKHIL RAMA','2021-03-12 10:27:54','RAM010','','RSA','','',NULL,0,'2020','72.54','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,2,'0',0),(1615544874284,'LUCA','FILIPPI','LUCA FILIPPI','2021-03-12 10:27:54','FIL002','','RSA','','',NULL,0,'','72.65','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,30,'0',0),(1615544874469,'ALLISTER','DE KOCK','ALLISTER DE KOCK','2021-03-12 10:27:54','DEK006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,4,'0',0),(1615544874666,'VAUGHN','GROENEWALD','','2021-03-12 10:27:54','GRO007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544874872,'JACQUES','DE VILLIERS','JACQUES P DE VILLIERS','2021-03-12 10:27:55','DEV012','','RSA','','',NULL,0,'2013','72.61','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,3,'0',0),(1615544875052,'DWAYNE','BASSON','','2021-03-12 10:27:55','BAS013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875221,'QUINTIN','WILSNACH','QUINTIN WILSNACH','2021-03-12 10:27:55','WIL054','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,2,'0',0),(1615544875393,'LOUIS','ALBERTSE','LOUIS ALBERTSE','2021-03-12 10:27:55','ALB009','','RSA','','',NULL,0,'56.38%','71.53','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,22,'0',0),(1615544875560,'THERION','NEL','','2021-03-12 10:27:55','NEL018','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875693,'TEAGHAN','GAUCHE','','2021-03-12 10:27:55','GAU003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875887,'GIDEON','VAN DER VYVER','','2021-03-12 10:27:56','VAN285','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876026,'GREG','BENTLEY','','2021-03-12 10:27:56','BEN018','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544876163,'THABI','NGCOBO','','2021-03-12 10:27:56','NGC001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876319,'MAKHETHA','MAZIBUKO','','2021-03-12 10:27:56','MAZ001','','RSA','','',NULL,0,'57.54%','84.88',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876474,'STEFAN','WEARS-TAYLOR','STEFAN WEARS-TAYLOR','2021-03-12 10:27:56','WEA006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876644,'JEAN-PAUL','STRYDOM','JEAN-PAUL STRYDOM','2021-03-12 10:27:56','STR023','','RSA','','',NULL,0,'59.16%','71.78',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876782,'BROOKLIN','BAILEY','','2021-03-12 10:27:57','BAI009','','USA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',0,NULL,'0',0),(1615544876969,'CLAYTON','MANSFIELD','','2021-03-12 10:27:57','MAN033','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544877096,'ANDREW','VAN DER KNAAP','','2021-03-12 10:27:57','VAN309','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544877277,'ANDRE','DE DECKER','ANDRE DE DECKER','2021-03-12 10:27:57','DED003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,1,'0',0),(1615544877461,'SAMBA','NIANG','','2021-03-12 10:27:57','NIA001','','SEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Senegal ',0,NULL,'0',0),(1615544877593,'MOHAMMAD','MANDHU','','2021-03-12 10:27:57','MAN021','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544877783,'SEAN','BRADLEY','','2021-03-12 10:27:58','BRA020','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1615544877969,'JACK','DUTHIE','','2021-03-12 10:27:58','DUT020','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878203,'JURAN','DREYER','','2021-03-12 10:27:58','DRE012','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878446,'ALPHEUS','KELAPILE','','2021-03-12 10:27:58','KEL014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878653,'EVANCE','VUKEYA','','2021-03-12 10:27:58','VUK001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878830,'MATTHEW','SPACEY','MATTHEW SPACEY','2021-03-12 10:28:00','SPA005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'0',0),(1615544880189,'SIYANDA','MWANDLA','SIYANDA MWANDLA','2021-03-12 10:28:00','MWA006','','RSA','','',NULL,0,'63.64%','75.53',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0),(1615544880229,'RICHARD','JOUBERT','RICHARD JOUBERT','2021-03-12 10:28:00','JOU009','','RSA','','',NULL,0,'73.27','63.93%','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,43,'0',0),(1615544880237,'THABANG','SIMON','','2021-03-12 10:28:00','SIM006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544880253,'ALBERT','VENTER','ALBERT VENTER','2021-03-12 10:28:00','VEN017','','RSA','','',NULL,0,'2017','72.48','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,17,'0',0),(1615544880258,'BREYTEN','MEYER','','2021-03-12 10:28:00','MEY014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880263,'DAVID','MCINTYRE','','2021-03-12 10:28:00','MCI006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880266,'DESVONDE','BOTES','','2021-03-12 10:28:00','BOT002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880274,'JASON','DIAB','','2021-03-12 10:28:00','DIA002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544880277,'ANDREW','WILLIAMSON','ANDREW WILLIAMSON','2021-03-12 10:28:00','WIL063','','RSA','','',NULL,0,'50.46%','73.86','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880280,'DERICK','PETERSEN','','2021-03-12 10:28:00','PET007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880283,'DAYNE','MOORE','DAYNE MOORE','2021-03-12 10:28:00','MOO015','','ZAM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,31,'0',0),(1615544880289,'BRADFORD','VAUGHAN','','2021-03-12 10:28:00','VAU001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880293,'PH','MCINTYRE','','2021-03-12 10:28:00','MCI004','','RSA','','',NULL,0,'AVERAGES 3 BIRDIES PER ROUND','Stroke Average: 72.72','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880296,'AUBREY','BECKLEY','','2021-03-12 10:28:00','BEC008','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880298,'TUMELO','MOLLOYI','','2021-03-12 10:28:00','MOL019','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880301,'RIEKUS','NORTJE','RIEKUS NORTJE','2021-03-12 10:28:00','NOR017','','RSA','','',NULL,0,'51.11%','72.57',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1615544880304,'JAMES','PENNINGTON','','2021-03-12 10:28:00','PEN002','','SWZ','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,NULL,'0',0),(1615544880310,'JACQUIN','HESS','JACQUIN HESS','2021-03-12 10:28:00','HES004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,17,'0',0),(1615544880313,'CAMERON','MORALEE','','2021-03-12 10:28:00','MOR025','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880316,'SHAAHID','MAHMED','','2021-03-12 10:28:00','MAH017','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544880319,'TRAVIS','LADNER','','2021-03-12 10:28:00','LAD003','','RSA','','',NULL,1,NULL,NULL,'','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880326,'CHRIS','DAVISON','','2021-03-12 10:28:00','DAV001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880329,'IRVIN','MAZIBUKO','','2021-03-12 10:28:00','MOS003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616062258291,'BENJAMIN','FOLLETT-SMITH','BENJAMIN FOLLETT-SMITH','2021-03-18 10:10:58','FOL001','','ZIM','','',NULL,0,'2018','71.93','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,20,'0',0),(1616062258302,'JAMES','KAMTE','JAMES KAMTE','2021-03-18 10:10:58','KAM005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,42,'0',0),(1616062258322,'LEON','VISSER','','2021-03-18 10:10:58','VIS015','','RSA','','',NULL,0,'57.66%','75.73',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616076251413,'COLIN','NEL','','2021-03-18 14:04:11','NEL009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616076251428,'DANIEL','NDUVA','','2021-03-18 14:04:11','NDU001','','KEN','','',NULL,0,'59.70%','73.07',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Kenya ',0,NULL,'0',0),(1616076251432,'MARK','WILLIAMS','','2021-03-18 14:04:11','WIL030','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1616076251436,'FREDDY','SCHOTT','','2021-03-18 14:04:11','SCH098','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',3,NULL,'0',0),(1616504678203,'CHRISTIAAN','MAAS','','2021-03-23 13:04:38','MAA006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616583784429,'KYLE','MCCLATCHIE','','2021-03-24 11:03:04','MCC023','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',3,NULL,'0',0),(1616835065472,'JOANNE','NEWELL','','2021-03-27 08:51:05','NOR004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616835065562,'DIRK','CLOETE','','2021-03-27 08:51:05','CLO005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616835065568,'DORNAY','LOMBARD','','2021-03-27 08:51:05','LOM011','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616835065574,'SONIA','SCHOEMAN','','2021-03-27 08:51:05','SCH082','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1619088070248,'JONATHAN','THOMSON','','2021-04-22 10:41:10','THO031','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619088070262,'NIKLAS','MOLLER','','2021-04-22 10:41:10','MOL028','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',1,NULL,'0',0),(1619088070265,'MANUEL','ELVIRA','','2021-04-22 10:41:10','ELV002','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1619088070268,'FELIX','MORY','','2021-04-22 10:41:10','MOR035','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619088070271,'RYAN','EVANS','','2021-04-22 10:41:10','EVA011','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',1,NULL,'0',0),(1619088070277,'ALEXANDER','KNAPPE','','2021-04-22 10:41:10','KNA002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619088070281,'DAVID','BOOTE','','2021-04-22 10:41:10','BOO014','','WAL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales ',0,NULL,'0',0),(1619088070289,'DANIEL','GAVINS','','2021-04-22 10:41:10','GAV002','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',3,NULL,'0',0),(1619088070315,'DEYEN','LAWSON','','2021-04-22 10:41:10','LAW013','','AUS','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Australia ',0,NULL,'0',0),(1619088070323,'OLIVER','LINDELL','','2021-04-22 10:41:10','LIN024','','FIN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1619088070353,'EMILIO','CUARTERO BLANCO','','2021-04-22 10:41:10','CUA001','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1619088070362,'JORDI','GARCIA DEL MORAL','','2021-04-22 10:41:10','GAR019','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1619088070367,'PETER','KARMIS','PETER KARMIS','2021-04-22 10:41:10','KAR003','','GRE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Greece ',0,NULL,'0',0),(1619088070380,'JEONG','KO','','2021-04-22 10:41:10','KOO005','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',2,NULL,'0',0),(1619088070394,'MICHAEL','HOEY','','2021-04-22 10:41:10','HOE001','','NIR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Northern_Ireland ',2,NULL,'0',0),(1619088070407,'PHILIP','ERIKSSON','','2021-04-22 10:41:10','ERI007','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619088070424,'MARCEL','SIEM','','2021-04-22 10:41:10','SIE002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619088070442,'MORITZ','LAMPERT','','2021-04-22 10:41:10','LAM008','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619088070446,'HENRIC','STUREHED','','2021-04-22 10:41:10','STU003','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',5,NULL,'0',0),(1619088070451,'CHASE','HANNA','','2021-04-22 10:41:10','HAN025','','USA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',5,NULL,'0',0),(1619088070455,'ESPEN','KOFSTAD','','2021-04-22 10:41:10','KOF001','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619088070462,'KRISTIAN','JOHANNESSEN','','2021-04-22 10:41:10','JOH038','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619088070480,'LUCAS','VACARISAS','','2021-04-22 10:41:10','VAC001','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1619088070485,'ALLEN','JOHN','','2021-04-22 10:41:10','JOH041','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619088070490,'LARS','KEUNEN','','2021-04-22 10:41:10','KEU002','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0),(1619088070496,'ARON','ZEMMER','','2021-04-22 10:41:10','ZEM001','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',2,NULL,'0',0),(1619088070506,'DAAN','HUIZING','','2021-04-22 10:41:10','HUI001','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',5,NULL,'0',0),(1619088070511,'BRANDON','STONE','','2021-04-22 10:41:10','STO012','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1619088070527,'RICARDO','GOUVEIA','','2021-04-22 10:41:10','GOU018','','POR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal ',0,NULL,'0',0),(1619088070532,'MARTIN','SIMONSEN','','2021-04-22 10:41:10','SIM022','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0),(1619088070542,'SANTIAGO','TARRIO','','2021-04-22 10:41:10','TAR007','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',2,NULL,'0',0),(1619088070547,'NICOLAI','KRISTENSEN','','2021-04-22 10:41:10','KRI010','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0),(1619088070567,'GAVIN','MOYNIHAN','','2021-04-22 10:41:10','MOY007','','IRL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Ireland ',0,NULL,'0',0),(1619088070596,'CASEY','JARVIS','','2021-04-22 10:41:10','JAR004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1619088070606,'ROOPE','KAKKO','','2021-04-22 10:41:10','KAK001','','FIN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1619088070617,'ANTON','KARLSSON','','2021-04-22 10:41:10','KAR009','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',3,NULL,'0',0),(1619088070628,'JESPER','SANDBORG','','2021-04-22 10:41:10','SAN025','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0),(1619104036943,'PELLE','EDBERG','','2021-04-22 15:07:17','EDB001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037043,'KRISTOFFER','REITAN','','2021-04-22 15:07:17','REI012','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619104037059,'MARCUS','HELLIGKILDE','','2021-04-22 15:07:17','HEL004','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0),(1619104037071,'JENS','DANTORP','','2021-04-22 15:07:17','DAN004','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037079,'MIKAEL','LINDBERG','','2021-04-22 15:07:17','LIN027','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',2,NULL,'0',0),(1619104037087,'DANIEL','YOUNG','','2021-04-22 15:07:17','YOU008','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0),(1619104037098,'JENS','FAHRBRING','','2021-04-22 15:07:17','FAH001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037110,'RAPHAEL','DE SOUSA','','2021-04-22 15:07:17','DES004','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1619104037144,'ALFIE','PLANT','','2021-04-22 15:07:17','PLA005','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037154,'GARY','STAL','','2021-04-22 15:07:17','STA014','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619104037164,'UGO','COUSSAUD','','2021-04-22 15:07:17','COU006','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',3,NULL,'0',0),(1619104037172,'BRYCE','EASTON','','2021-04-22 15:07:17','EAS001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1619104037180,'JULIEN','BRUN','','2021-04-22 15:07:17','BRU016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619104037190,'HURLY','LONG','','2021-04-22 15:07:17','LON006','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619104037199,'CHRISTOPHER','MIVIS','','2021-04-22 15:07:17','MIV001','','BEL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Belgium ',3,NULL,'0',0),(1619104037209,'KOEN','KOUWENAAR','','2021-04-22 15:07:17','KOU006','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0),(1619104037235,'PER','LANGFORS','','2021-04-22 15:07:17','LAN025','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',2,NULL,'0',0),(1619104037243,'EWEN','FERGUSON','','2021-04-22 15:07:17','FER041','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0),(1619104037255,'CRAIG','HOWIE','','2021-04-22 15:07:17','HOW011','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',1,NULL,'0',0),(1619104037269,'ROBIN','PETERSSON','','2021-04-22 15:07:17','PET019','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037285,'BENJAMIN','RUSCH','','2021-04-22 15:07:17','RUS010','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',1,NULL,'0',0),(1619104037293,'ROBBIE','VAN WEST','','2021-04-22 15:07:17','VAN351','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0),(1619104037325,'TODD','CLEMENTS','','2021-04-22 15:07:17','CLE004','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037333,'JACOB','OAKLEY','','2021-04-22 15:07:17','OAK001','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037342,'ENRICO','DI NITTO','','2021-04-22 15:07:17','DIN006','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',5,NULL,'0',0),(1619104037351,'BRADLEY','MOORE','','2021-04-22 15:07:17','MOO037','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037359,'BRADLEY','NEIL','','2021-04-22 15:07:17','NEI005','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0),(1619104037367,'NATHAN','KIMSEY','','2021-04-22 15:07:17','KIM011','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037375,'MATTHEW','BALDWIN','','2021-04-22 15:07:17','BAL006','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',1,NULL,'0',0),(1619104037384,'JORDAN','WRISDALE','','2021-04-22 15:07:17','WRI012','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037394,'JACK','HARRISON','','2021-04-22 15:07:17','HAR048','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037409,'LUKAS','LIPOLD','','2021-04-22 15:07:17','LIP005','','AUT','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0),(1619104037416,'JONAS','KOLBING','','2021-04-22 15:07:17','KOL002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619104037431,'HARALDUR','MAGNUS','','2021-04-22 15:07:17','MAG010','','ISL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Iceland ',0,NULL,'0',0),(1619104037440,'EIRIK','JOHANSEN','','2021-04-22 15:07:17','JOH031','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619104037450,'CHRISTOPHER','SAHLSTROM','','2021-04-22 15:07:17','SAH001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037461,'MARTIN','WIEGELE','','2021-04-22 15:07:17','WIE005','','AUT','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0),(1619104037473,'DAMIEN','PERRIER','','2021-04-22 15:07:17','PER016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619104037484,'ROMAIN','WATTEL','','2021-04-22 15:07:17','WAT016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619104037492,'JOEL','GIRRBACH','','2021-04-22 15:07:17','GIR003','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1619104037509,'FEDERICO','MACCARIO','','2021-04-22 15:07:17','MAC033','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1619104037526,'CHRISTOFER','BLOMSTRAND','','2021-04-22 15:07:17','BLO004','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037550,'EDOARDO','LIPPARELLI','','2021-04-22 15:07:17','LIP004','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1619104037560,'THOMAS','ROSENMULLER','','2021-04-22 15:07:17','ROS036','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619104037568,'HINRICH','ARKENAU','','2021-04-22 15:07:17','ARK001','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619694651668,'JOHN','AXELSEN','','2021-04-29 11:10:51','AXE002','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0),(1619694651781,'LORENZO','SCALISE','','2021-04-29 11:10:51','SCA010','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1619694652037,'STANISLAV','MATUS','','2021-04-29 11:10:52','MAT046','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',5,NULL,'0',0),(1619779151569,'DANIEL','HILLIER','','2021-04-30 10:39:11','HIL012','','NZL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/New_Zealand ',0,NULL,'0',0),(1619779151733,'ELIAS','BERTHEUSSEN','','2021-04-30 10:39:11','BER038','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619779151740,'MATHIEU','FENASSE','','2021-04-30 10:39:11','FEN008','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620220124923,'LAUREN','TAYLOR','','2021-05-05 13:08:44','TAY021','','ENG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1620220125314,'RACHAEL','TAYLOR','','2021-05-05 13:08:45','TAY026','','SCO','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0),(1620220499241,'MICHELLE','LEIGH','','2021-05-05 13:14:59','LEI004','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620233170062,'BRITTNEY-FAY','BERGER','','2021-05-05 16:46:10','BER033','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620233514119,'FRANCESCA','CUTURI','','2021-05-05 16:51:54','CUT003','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620233514687,'CHIARA','CONTOMATHIOS','','2021-05-05 16:51:54','CON006','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620291125303,'RICHARD','STERNE','','2021-05-06 08:52:05','STE009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1620292340642,'GEORGE','COETZEE','','2021-05-06 09:12:20','COE015','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1620293707959,'NICOLE','GARCIA','','2021-05-06 09:35:08','GAR021','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293708050,'TANDI','MCCALLUM','','2021-05-06 09:35:08','VON004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293708053,'KELSEY','NICHOLAS','','2021-05-06 09:35:08','NIC013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293708056,'ANNA','MAGNUSSON','','2021-05-06 09:35:08','MAG009','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1620293708059,'CASANDRA','HALL','','2021-05-06 09:35:08','HAL013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1620293708062,'GEORGIA','OBOH','','2021-05-06 09:35:08','OBO001','','NGA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Nigeria ',0,NULL,'0',0),(1620293708065,'NOBUHLE','DLAMINI','','2021-05-06 09:35:08','DLA011','','SWZ','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,NULL,'0',0),(1620293708068,'MIMMI','BERGMAN','','2021-05-06 09:35:08','BER036','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1620293839440,'CARA','GORLEI','','2021-05-06 09:37:19','GOR008','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293839557,'FLORENTYNA','PARKER','','2021-05-06 09:37:19','PAR021','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1620293839560,'MAIKEN','PAULSEN','','2021-05-06 09:37:19','PAU005','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1620293839564,'LINDI','COETZEE','','2021-05-06 09:37:19','COE029','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293839570,'MONIQUE','SMIT','','2021-05-06 09:37:19','SMI047','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293839575,'SARINA','SCHMIDT','','2021-05-06 09:37:19','SCH096','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1620293839578,'STACY','BREGMAN','','2021-05-06 09:37:19','BRE007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293839582,'MICHAELA','FLETCHER','','2021-05-06 09:37:19','FLE006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293839586,'LORA','ASSAD','','2021-05-06 09:37:19','ASS002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293839590,'SIDERI','VANOVA','','2021-05-06 09:37:19','VAN329','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',0,NULL,'0',0),(1620293839593,'KATERINA','VLASINOVA','','2021-05-06 09:37:19','VLA001','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',0,NULL,'0',0),(1620293839600,'LINETTE','HOLMSLYKKE','','2021-05-06 09:37:19','HOL030','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0),(1620293839603,'MARIA','BEAUTELL','','2021-05-06 09:37:19','BEA010','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620293839607,'PASQUALLE','COFFA','','2021-05-06 09:37:19','COF002','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0),(1620293839610,'KRISTYNA','NAPOLEAOVA','','2021-05-06 09:37:19','NAP002','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',0,NULL,'0',0),(1620293839614,'CLARA','PIETRI','','2021-05-06 09:37:19','PIE026','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1620293839620,'NADIA','VAN DER WESTHUIZEN','','2021-05-06 09:37:19','VAN294','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620293839623,'CAROLINE','ROMINGER','','2021-05-06 09:37:19','ROM004','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1620304855674,'LEE-ANNE','PACE','','2021-05-06 12:40:55','PAC002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1620304855774,'OLIVIA','COWAN','','2021-05-06 12:40:55','COW002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',5,NULL,'0',0),(1620304855779,'MARIANNE','SKARPNORD','','2021-05-06 12:40:55','SKA001','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',5,NULL,'0',0),(1620304855786,'TONJE','DAFFINRUD','','2021-05-06 12:40:55','DAF002','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1620304855792,'STINA','RESEN','','2021-05-06 12:40:55','RES002','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1620304855804,'JANE','TURNER','','2021-05-06 12:40:55','TUR009','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland',0,NULL,'0',0),(1620304855811,'KYLIE','HENRY','','2021-05-06 12:40:55','WAL020','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0),(1620304855824,'CAITLYN','MACNAB','','2021-05-06 12:40:55','MAC023','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620304855830,'LEJAN','LEWTHWAITE','','2021-05-06 12:40:55','LEW009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620306241923,'KIM','WILLIAMS','','2021-05-06 13:04:02','WIL045','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620306242010,'EMIE','PERONNIN','','2021-05-06 13:04:02','PER021','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620306242015,'JUSTINE','DREHER','','2021-05-06 13:04:02','DRE016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620306242022,'ALEXANDRA','BONETTI','','2021-05-06 13:04:02','BON010','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620306242027,'ASTRID','DE PRADENNE','','2021-05-06 13:04:02','DEP002','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620306242033,'LETICIA','RAS-ANDERICA','','2021-05-06 13:04:02','RAS010','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1620306242038,'TARA','GRIEBENOW','','2021-05-06 13:04:02','GRI016','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620306242044,'ROMY','MEEKERS','','2021-05-06 13:04:02','MEE003','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0),(1620306242049,'IVANNA','SAMU','','2021-05-06 13:04:02','SAM007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620306242056,'ANNE-LISE','CAUDAL','','2021-05-06 13:04:02','CAU001','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620306242061,'MANON','GIDALI','','2021-05-06 13:04:02','GID004','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620306242077,'FRANZISKA','FRIEDRICH','','2021-05-06 13:04:02','FRI010','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1620331528215,'TINA','MAZARINO','','2021-05-06 20:05:28','MAZ006','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1620331528313,'SHAWNELLE','DE LANGE','','2021-05-06 20:05:28','DEL024','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620331528323,'CHRISTINA','GLOOR','','2021-05-06 20:05:28','GLO004','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1620814379490,'KARINA','KUKKONEN','','1995-11-22 00:00:00','KUK003','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1620816274192,'AGATHE','SAUZON','','1992-01-25 00:00:00','SAU007','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620818350974,'CARMEN','ALONSO','','1984-07-15 00:00:00','ALO002','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620818632598,'MADELENE','STAVNAR','','2021-05-12 11:23:52','STA030','','NOR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1620819251606,'ISABELLE','BOINEAU','','1989-06-13 00:00:00','BOI001','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620819957517,'SHANI','BRYNARD','','2021-05-12 11:45:57','BRY003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620820269894,'LYDIA','HALL','','1987-12-14 00:00:00','HAL012','','Wal','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales ',0,NULL,'0',0),(1620820562830,'JORDAN','ROTHMAN','','2002-10-04 00:00:00','ROT006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620820829149,'KAYLAH','WILLIAMS','','2002-04-02 00:00:00','WIL064','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620820975022,'PIA',' BABNIK','','2004-01-02 00:00:00','BAB002','','SVN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Slovenia ',0,NULL,'0',0),(1620821174974,'KAROLINE','LUND','','2021-05-12 12:06:14','LUN006','','NOR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1620821438086,'AMY','WALSH','','1996-03-14 00:00:00','WAL029','','AUS','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Australia ',0,NULL,'0',0),(1620821570110,'YOLANDA','DUMA','','1990-03-09 00:00:00','DUM002','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620833034267,'TIIA','KOIVISTO','','1994-02-06 00:00:00','KOI002','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1620833349487,'MARIA','HERNANDEZ','','1986-03-24 00:00:00','HER021','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620833697829,'SAMANTHA','WHATELEY','','2204-01-14 00:00:00','WHA004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620833946533,'LINA','BOQVIST','','1991-05-25 00:00:00','BOQ001','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1620834115156,'JENNY','HAGLUND','','1993-06-26 00:00:00','HAG004','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1620834122212,'CHRISTINE','WOLF','','1989-03-05 00:00:00','WOL010','','AUT','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0),(1620834452108,'HARANG','LEE','','1995-12-23 00:00:00','LEE031','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620834848148,'EMILIE','BORGGEN','','2021-05-12 15:54:08','BOR008','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0),(1620835930234,'ANNE-CHARLOTTE','MORA','','2021-05-12 16:12:10','MOR036','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620836540961,'LEONIE ','HARM','','1997-01-01 00:00:00','HAR061','','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1620836982171,'CLOE','FRANKISH','','1999-03-08 00:00:00','FRA024','','ENG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1620837222940,'ZETHU','MYEKI','','1993-11-17 00:00:00','MYE002','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620838033106,'URSULA ','WIKSTROM','','1980-07-03 00:00:00','WIK001','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1620838243984,'CELINE','HERBIN ','','1982-10-30 00:00:00','HER015','','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620838376618,'CAROLINE','HEDWALL','','1989-05-13 00:00:00','HED004','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1620838984511,'KAROLIN','LAMPERT','','1995-02-20 00:00:00','LAM011','','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1620840281422,'SILVIA','BANON','','1992-10-21 00:00:00','BAN008','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620840826373,'EMMA','NILSSON ','','1994-03-08 00:00:00','NIL008','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0),(1620841099750,'PATRICIA','SANZ BARRIO','','2021-05-12 17:38:19','SAN020','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620843176304,'MAHA','HADDIOUI','','1988-05-15 00:00:00','HAD001','','MAR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Morocco ',0,NULL,'0',0),(1620843424241,'MANON','DE ROEY','','1991-12-12 00:00:00','DER005','','BEL','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Belgium ',0,NULL,'0',0),(1620843682585,'KATJA','POGACAR','','1994-04-12 00:00:00','POG001','','SVN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Slovenia ',0,NULL,'0',0),(1620843920928,'LINE','TOFT HANSEN','','2021-05-12 18:25:20','HAN029','','DEN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0),(1620844713552,'ODETTE','BOOYSEN','','1995-09-10 00:00:00','BOO008','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620846052385,'LYNETTE ','FOURIE','','1993-02-02 00:00:00','PRE020','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620846322437,'NINA','PEGOVA','','1994-01-05 00:00:00','PEG001','','RUS','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Russian_Federation ',0,NULL,'0',0),(1620846586339,'CASSIDY','WILLIAMS','','2001-03-07 00:00:00','WIL055','','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620847026634,'TVESA','MALIK','','2021-05-12 19:17:06','MAL026','','IND','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/India ',0,NULL,'0',0),(1620848832680,'ELINA','NUMMENPAA','','1983-09-07 00:00:00','NUM001','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1620849129408,'SANNA','NUUTINEN','','1991-04-08 00:00:00','NUU001','','FIN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1620849532999,'CAROLIN','KAUFFMANN','','2021-05-12 19:58:53','KAU004','','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1620849836159,'AMELIA','LEWIS','','1991-02-23 00:00:00','LEW007','','USA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',0,NULL,'0',0),(1620850397957,'ISABELLA','VAN ROOYEN','','2021-05-12 20:13:17','VAN343','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620850994549,'MIREIA ','PRAT','','2021-05-12 20:23:14','PRA004','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620851188829,'NOEMI',' JIMENEZ MARTIN','','1993-11-12 00:00:00','JIM003','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620851464956,'JOHANNA','GUSTAVSSON','','1992-12-13 00:00:00','GUS005','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1620851885796,'LAURA ','GOMEZ RUIZ','','2021-05-12 20:38:05','GOM005','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620852003805,'ELIA','FOLCH','','2021-05-12 20:40:03','FOL002','','ESP','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1620852190020,'SARAH','SCHOBER','','1992-04-15 00:00:00','SCH086','','AUT','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0),(1620852365147,'LUIZA','ALTMANN','','2021-05-12 20:46:05','ALT002','','BRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil',0,NULL,'0',0),(1620852522795,'KIM','METRAUX','','1995-05-21 00:00:00','MET003','','SUI','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1620852785433,'MAGDALENA ','SIMMERMACHER','','1996-03-23 00:00:00','SIM030','','ARG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Argentina ',0,NULL,'0',0),(1620853126793,'ELEANOR','GIVENS','','1989-03-09 00:00:00','GIV002','','ENG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1620853277882,'KATIA','SHAFF','','1995-10-05 00:00:00','SHA027','','AUT','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0),(1620853447202,'NINA ','GREY','','1986-01-29 00:00:00','GRE033','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1620899056332,'LUCREZIA ','COLOMBOTTO ROSSO','','2021-05-13 09:44:16','COL025','','ITA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1620900430607,'ANNELIE','SJOHOLM','','1995-09-07 00:00:00','SJO004','','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1620905898587,'CAMILLE','CHEVALIER','','2021-05-13 11:38:18','CHE012','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1628091869416,'YUBIN','JUNG','','2021-08-04 15:44:29','JUN003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1628091869494,'ALAN','MICHELL','','2021-08-04 15:44:29','MIC002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1628091869512,'COMBRINCK','SMIT','','2021-08-04 15:44:29','SMI063','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1628091869533,'ANDREW','CURLEWIS','ANDREW CURLEWIS','2021-08-04 15:44:29','CUR004','','RSA','','',NULL,0,'32.14%','71.85',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,1,'0',0),(1628091869535,'LUAN','BOSHOFF','','2021-08-04 15:44:29','BOS019','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1628091869546,'ERHARD','LAMBRECHTS','','2021-08-04 15:44:29','LAM014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1628091869563,'NEIL','WHITEHORN','','2021-08-04 15:44:29','WHI022','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1628091869568,'GAVIN','VORSTER','','2021-08-04 15:44:29','VOR007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1628091869571,'STIAAN','ALBERTYN','','2021-08-04 15:44:29','ALB011','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1628091869576,'M.S.','CALITZ','','2021-08-04 15:44:29','CAL013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1628091869578,'TERENCE','COUTINHO','','2021-08-04 15:44:29','COU004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1628091869579,'STEPHAN','SIEBERHAGEN','','2021-08-04 15:44:29','SIE006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1628091869580,'MATTHEW','SPEELMAN','','2021-08-04 15:44:29','SPE009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1628091869581,'JACO','THERON','','2021-08-04 15:44:29','THE016','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1628091869583,'JEAN','DJEZOU','','2021-08-04 15:44:29','DJE001','','CIV','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1629991552573,'KAYYAM','MANDHU','','2021-08-26 15:25:52','MAN025','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1629991552635,'ETHAN','SMITH','','2021-08-26 15:25:52','SMI074','','RSA','','',NULL,1,'Amateur',NULL,NULL,'','','',0,NULL,'0',0),(1631181122143,'DYLAN','MOSTERT','DYLAN MOSTERT','2021-09-09 09:52:02','MOS013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,19,'0',0),(1631181122372,'FRANKLIN','MANCHEST','','2021-09-09 09:52:02','MAN034','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1631181122398,'RYAN','VAN VELZEN','','2021-09-09 09:52:02','VAN303','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1631181122480,'DIVAN','VAN DEN HEEVER','','2021-09-09 09:52:02','VAN079','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1631181122503,'BRANDON-JUDE','RENNIE','','2021-09-09 09:52:02','REN009','','SWZ','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,NULL,'0',0),(1631874299137,'LINDANI','NDWANDWE','','2021-09-17 10:24:59','NDW001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1631874299163,'SP','MTHETHWA','','2021-09-17 10:24:59','MTH004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1631874299167,'ARNO','VAN HEERDEN','','2021-09-17 10:24:59','VAN355','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1633004539397,'FEZEKILE','KANA','','2021-09-30 12:22:19','KAN005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1633004539424,'MAURICE','PRINSLOO','','2021-09-30 12:22:19','PRI021','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1633004539437,'LWAZI','GQIRA','','2021-09-30 12:22:19','GQI001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1634139483930,'RUBIN','POGIR','TEAM RUBIN POGIR','2021-10-13 15:38:03','POG005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483947,'CLINTON','HEAP','TEAM HEAP','2021-10-13 15:38:03','HEA006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483948,'FERNANDO','DUARTE','TEAM SUN CITY 5','2021-10-13 15:38:03','DUA002','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483951,'VELILE','MCOBOTHI','TEAM MCOBOTHI','2021-10-13 15:38:03','MCO001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483952,'MARK','CURRIE','TEAM CURRIE','2021-10-13 15:38:03','CUR011','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483954,'ERROL','CIVIN','TEAM CIVIN','2021-10-13 15:38:03','CIV001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483955,'DAVID','NAGLE','TEAM NAGLE','2021-10-13 15:38:03','NAG003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483957,'PAUL','DE JAGER','TEAM SUN CITY 3','2021-10-13 15:38:03','DEJ015','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483958,'LES','RUTTENBURG','TEAM RUTTENBURG','2021-10-13 15:38:03','RUT007','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483960,'BARNEY','GURNIN','TEAM GURNIN','2021-10-13 15:38:03','GUR004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483961,'ANDREW','VAN VUGHT','TEAM VAN VUGHT','2021-10-13 15:38:03','VAN373','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483963,'MANNY','CARVALHO','TEAM SUN CITY 4','2021-10-13 15:38:03','CAR050','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483964,'MOSHE','DUEK','TEAM DUEK','2021-10-13 15:38:03','DUE001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483965,'JEFFREY','LIVINGSTONE','TEAM LIVINGSTONE','2021-10-13 15:38:03','LIV002','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483968,'MATTHEW','KRETZMER','TEAM KRETZMER','2021-10-13 15:38:03','KRE005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483970,'EVAN','RUBIN','TEAM RUBEN','2021-10-13 15:38:03','RUB003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483972,'LOUIS','VAN EEDEN','TEAM SUN CITY 2','2021-10-13 15:38:03','VAN375','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483974,'MARTINIS','BARNARD','TEAM BARNARD','2021-10-13 15:38:03','BAR069','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483975,'GRAHAM','JOSSET','TEAM JOSSET','2021-10-13 15:38:03','JOS007','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483979,'LYNETTE','FINLAY','TEAM FINLAY','2021-10-13 15:38:03','FIN005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483981,'ERIC','MOSS','TEAM MOSS','2021-10-13 15:38:03','MOS020','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483982,'LARRY','POGIR','TEAM LARRY POGIR','2021-10-13 15:38:03','POG004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483984,'GAVIN','BERNSTEIN','TEAM BERNSTEIN','2021-10-13 15:38:03','BER022','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483986,'LAURENCE','MICHEL','TEAM MICHEL','2021-10-13 15:38:03','MIC013','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483990,'CANSIN','BOREK','TEAM BOREK','2021-10-13 15:38:03','BOR010','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483992,'MARK','JANKELOWITZ','TEAM JANKELOWITZ','2021-10-13 15:38:03','JAN024','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483994,'MARK','LEVY','TEAM LEVY','2021-10-13 15:38:03','LEV014','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483995,'RYAN','NESTADT','TEAM RYAN NESTADT','2021-10-13 15:38:03','NES007','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483997,'BRETT','COPANS','TEAM COPANS','2021-10-13 15:38:03','COP004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139483998,'DAVE','KUMING','TEAM KUMING','2021-10-13 15:38:03','KUM005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484000,'ANDREW','DUNN','TEAM DUNN','2021-10-13 15:38:04','DUN014','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484002,'SELWYN','NATHAN','TEAM NATHAN','2021-10-13 15:38:04','NAT001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484004,'JASON','NESTADT','TEAM JASON NESTADT','2021-10-13 15:38:04','NES005','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484005,'JARRYD','LAHOUD','TEAM LAHOUD','2021-10-13 15:38:04','LAH003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484007,'MATHEW','GIURICICH','TEAM GIURICICH','2021-10-13 15:38:04','GIU003','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484008,'GREG','WEINSTEIN','TEAM WEINSTEIN','2021-10-13 15:38:04','WEI013','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484010,'RICCI','CLOUD','TEAM CLOUD','2021-10-13 15:38:04','CLO010','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484012,'BRETT','POZNIAK','TEAM POZNIAK','2021-10-13 15:38:04','POZ001','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1634139484013,'GRAHAM','WOOD','TEAM SUN CITY 1','2021-10-13 15:38:04','WOO030','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0);
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurnameIfDuplicate','SELECT GetPlayerSurnameIncludeInitialIfDupInTeamFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT case SelectedTournament when 1 then metres when 2 then yards end FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT if(GetPlayerSelectedTournamentScore(s.playerid)=\'\',\'E\', GetPlayerSelectedTournamentScore(s.playerid)) TournamentScore FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc where sc.courseid=(select courseid from golf.score s,golf.uiselected u where s.idscore= u.SelectedScoreEntry) limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc where sc.courseid=(select courseid from golf.score s,golf.uiselected u where s.idscore= u.SelectedScoreEntry) limit 9,9;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 0,9) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(18,'SPHoles10to18Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 9,18) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(19,'SPHoles1to9StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(20,'SPHoles10to18StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'STCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(32,'SPPosition','SELECT GetPlayerSelectedTournamentPosition(u.SelectedScoreEntry) FROM golf.uiselected u;'),(33,'SPCurrentHoleShot','SELECT s.strokes  CurrentShooting FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(34,'SRDescription','SELECT case u.SelectedTournament  when 2 then \'FINAL ROUND\' else   if(u.roundcomplete=1,concat(\'AFTER \',r.Description), r.Description) end RoundDesc FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(35,'STDescription','SELECT t.description FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(36,'STLogo1','SELECT t.logo1 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(37,'STLogo2','SELECT t.logo2 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(38,'STLogo3','SELECT t.logo3 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(39,'SPStrokesSelectedHole','SELECT s.strokes FROM golf.shots s,golf.uiselected u where s.shotsid = u.SelectedHole;'),(40,'SPStrokeSelectedHoleDescription','SELECT GetPlayerSelectedStrokesFromHoleParDescription(u.SelectedHole) StrokeDescription FROM golf.uiselected u;'),(41,'SPStrokeSelectedHoleFlag','SELECT if(f.shotsflagid=s.strokes,GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(42,'SPHoles1to9StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 1 and 9) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(43,'SPHoles10to18StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 10 and 18) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(44,'STCourseDescription','SELECT sc.Description FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(159,'STLeadersScore','call GetTournamentSelectedLeaderBoard(6,0,1);'),(160,'SPTournamentScoreAtSelectedHole','SELECT 	GetPlayerSelectedTournamentScoreFromSelectedHole(s.playerid) ScoreAtHole FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry;'),(161,'SPCountryFlag','SELECT GetPlayerCountryFlagFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(177,'SPBio1','select c.Bio1 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(178,'SPBio2','select c.Bio2 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(179,'SPBio3','select c.Bio3 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(180,'SPRoundTotalPar','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),\'\') TotalPar FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(181,'STLeaderBoardPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,10);'),(182,'STLeaderBoardPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,10,1);'),(183,'STLeaderBoardPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,11,9);'),(184,'STLeaderBoardPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,20,1);'),(185,'STLeaderBoardPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,21,9);'),(186,'STLeaderBoardPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,30,1);'),(187,'STLeaderBoardPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,31,9);'),(188,'STLeaderBoardPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,40,1);'),(189,'STLeaderBoardPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,41,9);'),(190,'STLeaderBoardPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,50,1);'),(191,'STLeaderBoardPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,51,9);'),(192,'STLeaderBoardPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,60,1);'),(193,'STLeaderBoardPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,61,9);'),(194,'STLeaderBoardPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,70,1);'),(195,'STLeaderBoardPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,71,9);'),(196,'STLeaderBoardPage1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,0,10);'),(197,'STLeaderBoardPage2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,10,1);'),(198,'STLeaderBoardPage2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,11,9);'),(199,'STLeaderBoardPage3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,20,1);'),(200,'STLeaderBoardPage3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,21,9);'),(201,'STLeaderBoardPage4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,30,1);'),(202,'STLeaderBoardPage4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,31,9);'),(203,'STLeaderBoardPage5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,40,1);'),(204,'STLeaderBoardPage5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,41,9);'),(205,'STLeaderBoardPage6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,50,1);'),(206,'STLeaderBoardPage6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,51,9);'),(207,'STLeaderBoardPage7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,60,1);'),(208,'STLeaderBoardPage7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,61,9);'),(209,'STLeaderBoardPage8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,70,1);'),(210,'STLeaderBoardPage8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,71,9);'),(211,'SPRound1TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(212,'SPRound2TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(213,'SPRound3TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(214,'SPRound4TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),\'\'),\'\') Round4Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(215,'STLeadersPage1Position','SELECT s.GraphicPos FROM golf.score s,golf.uiselected u where tournamentid = u.SelectedTournament  group by playerid order by sum((GetPlayerSelectedRoundHolesPlayedStrokes(idscore)-GetPlayerSelectedRoundHolesPlayedPar(idscore))),  cast(if(GetPlayerSelectedRoundScore(s.idscore)=\'E\',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,  GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,(`GetPlayerNameAndSurnameFromID`(s.Playerid)) asc limit 10;'),(216,'SPStrokeSelectedHoleFlagForBIRDIE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 4 when 4 then 3 when 3 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (4-Par) when 4 then (3-Par) when 3 then (2-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(217,'SPStrokeSelectedHoleFlagForEAGLE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 3 when 4 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (3-Par) when 4 then (2-Par)  end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(218,'SPStrokeSelectedHoleFlagForPAR','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 5 when 4 then 4 when 3 then 3 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes(0),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(219,'SPStrokeSelectedHoleFlagForBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (6-Par) when 4 then (5-Par) when 3 then (4-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(220,'SPStrokeSelectedHoleFlagForDOUBLEBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (7-Par) when 4 then (6-Par) when 3 then (5-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(221,'SPParStrokeAfterParBOGEY','SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end ForBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(222,'SPParStrokeAfterParDOUBLEBOGEY','SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end ForDoubleBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(223,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(224,'STLeaderBoardMiniPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,5);'),(225,'STLeaderBoardMiniPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,5,1);'),(226,'STLeaderBoardMiniPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,6,4);'),(227,'STLeaderBoardMiniPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,10,1);'),(228,'STLeaderBoardMiniPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,11,4);'),(229,'STLeaderBoardMiniPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,15,1);'),(230,'STLeaderBoardMiniPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,16,20);'),(231,'STLeaderBoardMiniPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,20,1);'),(232,'STLeaderBoardMiniPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,21,4);'),(233,'STLeaderBoardMiniPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,25,1);'),(234,'STLeaderBoardMiniPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,26,4);'),(235,'STLeaderBoardMiniPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,30,1);'),(236,'STLeaderBoardMiniPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,31,4);'),(237,'STLeaderBoardMiniPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,35,1);'),(238,'STLeaderBoardMiniPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,36,4);'),(239,'STLeaderBoardRound1Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,0,10);'),(240,'STLeaderBoardRound1Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,10,1);'),(241,'STLeaderBoardRound1Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,11,9);'),(242,'STLeaderBoardRound1Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,20,1);'),(243,'STLeaderBoardRound1Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,21,9);'),(244,'STLeaderBoardRound1Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,30,1);'),(245,'STLeaderBoardRound1Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,31,9);'),(246,'STLeaderBoardRound1Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,40,1);'),(247,'STLeaderBoardRound1Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,41,9);'),(248,'STLeaderBoardRound1Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,50,1);'),(249,'STLeaderBoardRound1Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,51,9);'),(250,'STLeaderBoardRound1Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,60,1);'),(251,'STLeaderBoardRound1Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,61,9);'),(252,'STLeaderBoardRound1Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,70,1);'),(253,'STLeaderBoardRound1Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,71,9);'),(254,'STLeaderBoardRound2Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,0,10);'),(255,'STLeaderBoardRound2Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,10,1);'),(256,'STLeaderBoardRound2Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,11,9);'),(257,'STLeaderBoardRound2Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,20,1);'),(258,'STLeaderBoardRound2Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,21,9);'),(259,'STLeaderBoardRound2Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,30,1);'),(260,'STLeaderBoardRound2Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,31,9);'),(261,'STLeaderBoardRound2Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,40,1);'),(262,'STLeaderBoardRound2Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,41,9);'),(263,'STLeaderBoardRound2Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,50,1);'),(264,'STLeaderBoardRound2Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,51,9);'),(265,'STLeaderBoardRound2Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,60,1);'),(266,'STLeaderBoardRound2Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,61,9);'),(267,'STLeaderBoardRound2Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,70,1);'),(268,'STLeaderBoardRound2Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,71,9);'),(269,'STLeaderBoardOVERALLPage1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,0,10);'),(270,'STLeaderBoardOVERALLPage2Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,10,1);'),(271,'STLeaderBoardOVERALLPage2ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,11,9);'),(272,'STLeaderBoardOVERALLPage3Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,20,1);'),(273,'STLeaderBoardOVERALLPage3ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,21,9);'),(274,'STLeaderBoardOVERALLPage4Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,30,1);'),(275,'STLeaderBoardOVERALLPage4ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,31,9);'),(276,'STLeaderBoardOVERALLPage5Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,40,1);'),(277,'STLeaderBoardOVERALLPage5ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,41,9);'),(278,'STLeaderBoardOVERALLPage6Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,50,1);'),(279,'STLeaderBoardOVERALLPage6ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,51,9);'),(280,'STLeaderBoardOVERALLPage7Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,60,1);'),(281,'STLeaderBoardOVERALLPage7ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,61,9);'),(282,'STLeaderBoardOVERALLPage8Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,70,1);'),(283,'STLeaderBoardOVERALLPage8ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,71,9);'),(289,'STLeaderBoardLeaderString','call GetTournamentSelectedLeaderBoard(4,0,1);'),(290,'SPRoundTotalParFlag',' SELECT  if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,case when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) < sc.Par then 2 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) = sc.Par then 3 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) > sc.Par then 5 end,\'\') TotalParFlag  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(291,'SPHoles1to9StrokesTotalFlag','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',case when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) < sc.FrontPar then 2 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) = sc.FrontPar then 3 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) > sc.FrontPar then 5 end ) ScoreTotal  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(292,'SPHoles10to18StrokesTotalFlag','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',case when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) < sc.BackPar then 2 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) = sc.BackPar then  3 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) > sc.BackPar then  5 end ) ScoreTotal  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(293,'STLeaderBoardTOTALSPage1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,0,10);'),(294,'STLeaderBoardTOTALSPage2Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,10,1);'),(295,'STLeaderBoardTOTALSPage2ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,11,9);'),(296,'STLeaderBoardTOTALSPage3Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,20,1);'),(297,'STLeaderBoardTOTALSPage3ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,21,9);'),(298,'STLeaderBoardTOTALSPage4Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,30,1);'),(299,'STLeaderBoardTOTALSPage4ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,31,9);'),(300,'STLeaderBoardTOTALSPage5Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,40,1);'),(301,'STLeaderBoardTOTALSPage5ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,41,9);'),(302,'STLeaderBoardTOTALSPage6Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,50,1);'),(303,'STLeaderBoardTOTALSPage6ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,51,9);'),(304,'STLeaderBoardTOTALSPage7Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,60,1);'),(305,'STLeaderBoardTOTALSPage7ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,61,9);'),(306,'STLeaderBoardTOTALSPage8Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,70,1);'),(307,'STLeaderBoardTOTALSPage8ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,71,9);'),(308,'STShortDescription','SELECT t.ShortDescription FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(309,'SPAge','SELECT GetPlayerAgeFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(310,'SPHolePreviousRoundsScores','select group_concat(HoleRoundScore SEPARATOR \' | \') PreviousRounds from (select sc.roundid ,GetPlayerSelectedStrokeDescription(strokes,s.holeid) HoleRoundScore from golf.score sc,golf.shots s,golf.uiselected u  where s.idscore=sc.idscore and  sc.playerid=(SELECT playerid FROM golf.score s,golf.uiselected u where s.idscore=u.SelectedScoreEntry)  and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2  and sc.roundid <> u.SelectedRound order by sc.roundid,s.shotsid ) as t;'),(311,'STHolesTopEagles','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-2 group by sh.holeid order by Totals desc limit 5;'),(312,'STHolesTopBirdies','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-1 group by sh.holeid order by Totals desc limit 5;'),(313,'STHolesTopPars','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=0 group by sh.holeid order by Totals desc limit 5;'),(314,'AmateurLeaderBoard','select Pos,Description,Points,case Country when \'RSA\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa\' when \'SWE\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden\' when \'GER\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany\' end flag ,\'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold\' color  FROM golf.amateurs limit 10; '),(315,'SHTotalEagles','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-2  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(316,'SHTotalBirdies','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-1  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(317,'SHTotalPars','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=0  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(318,'SHTotalBogeys','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=1  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(319,'SHTotaOthers','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.Tournamentid=u.SelectedTournament and  sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))>=2  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(320,'STDrawDescription','SELECT concat(\'MATCH \',Matchid) DrawHeading FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)'),(321,'STDrawLine1ColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(10,0,1);'),(322,'STDrawColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(11,1,2);'),(323,'SHAceOrEagleHole','SELECT  case Par when 3 then \'ACES\' else \'EAGLES\' end FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(324,'SPTodayEagles',' SELECT count(*) TodayEagles FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-2  and sc.idscore=u.SelectedScoreEntry;'),(325,'SPTodayBirdies','SELECT count(*) TodayBirdies  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-1  and sc.idscore=u.SelectedScoreEntry;'),(326,'SPTodayPars','SELECT count(*) TodayPars FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=0  and sc.idscore=u.SelectedScoreEntry;'),(327,'SPTodayBogeys','SELECT count(*) TodayBogeys FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=1  and sc.idscore=u.SelectedScoreEntry;'),(328,'SPTodayOthers','SELECT count(*) TodayOther FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))>=2  and sc.idscore=u.SelectedScoreEntry;'),(329,'SPTodaySummary','select GetPlayerSelectedRoundSummary();'),(330,'SPFront9Back9ScoreString','select GetPlayerSelectedRoundHolesPlayedFront9Back9TotalScoreString(SelectedScoreEntry) FROM golf.uiselected u;'),(331,'STCourseFullname1','SELECT Fullname FROM golf.course limit 0,1;'),(332,'STCourseFullname2','SELECT Fullname FROM golf.course limit 1,1;'),(333,'STExtraDesc','SELECT t.ExtraDesc FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(334,'STLeaderBoardPage1CourseColor','call GetTournamentSelectedLeaderBoard(21,0,10);'),(335,'STLeaderBoardPage2CourseColor','call GetTournamentSelectedLeaderBoard(21,10,10);'),(336,'STLeaderBoardPage3CourseColor','call GetTournamentSelectedLeaderBoard(21,20,10);'),(337,'STLeaderBoardPage4CourseColor','call GetTournamentSelectedLeaderBoard(21,30,10);'),(338,'STLeaderBoardPage5CourseColor','call GetTournamentSelectedLeaderBoard(21,40,10);'),(339,'STLeaderBoardPage6CourseColor','call GetTournamentSelectedLeaderBoard(21,50,10);'),(340,'STLeaderBoardPage7CourseColor','call GetTournamentSelectedLeaderBoard(21,60,10);'),(341,'STLeaderBoardPage8CourseColor','call GetTournamentSelectedLeaderBoard(21,70,10);'),(342,'STMINILeaderBoardPage1CourseColor','call GetTournamentSelectedLeaderBoard(21,0,5);'),(343,'STMINILeaderBoardPage2CourseColor','call GetTournamentSelectedLeaderBoard(21,5,5);'),(344,'STMINILeaderBoardPage3CourseColor','call GetTournamentSelectedLeaderBoard(21,10,5);'),(345,'STMINILeaderBoardPage4CourseColor','call GetTournamentSelectedLeaderBoard(21,15,5);'),(346,'STMINILeaderBoardPage5CourseColor','call GetTournamentSelectedLeaderBoard(21,20,5);'),(347,'STMINILeaderBoardPage6CourseColor','call GetTournamentSelectedLeaderBoard(21,25,5);'),(348,'STMINILeaderBoardPage7CourseColor','call GetTournamentSelectedLeaderBoard(21,30,5);'),(349,'STMINILeaderBoardPage8CourseColor','call GetTournamentSelectedLeaderBoard(21,35,5);'),(350,'STLeaderBoardPage9Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,80,1);'),(351,'STLeaderBoardPage9ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,81,9);'),(352,'STLeaderBoardPage10Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,90,1);'),(353,'STLeaderBoardPage10ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,91,9);'),(354,'STLeaderBoardPage11Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,100,1);'),(355,'STLeaderBoardPage11ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,101,9);'),(356,'STLeaderBoardPage12Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,110,1);'),(357,'STLeaderBoardPage12ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,111,9);'),(358,'STLeaderBoardPage13Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,120,1);'),(359,'STLeaderBoardPage13ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,121,9);'),(360,'STLeaderBoardPage14Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,130,1);'),(361,'STLeaderBoardPage14ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,131,9);'),(362,'STLeaderBoardPage15Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,140,1);'),(363,'STLeaderBoardPage15ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,141,9);'),(364,'STLeaderBoardPage9CourseColor','call GetTournamentSelectedLeaderBoard(21,80,10);'),(365,'STLeaderBoardPage10CourseColor','call GetTournamentSelectedLeaderBoard(21,90,10);'),(366,'STLeaderBoardPage11CourseColor','call GetTournamentSelectedLeaderBoard(21,100,10);'),(367,'STLeaderBoardPage12CourseColor','call GetTournamentSelectedLeaderBoard(21,110,10);'),(368,'STLeaderBoardPage13CourseColor','call GetTournamentSelectedLeaderBoard(21,120,10);'),(369,'STLeaderBoardPage14CourseColor','call GetTournamentSelectedLeaderBoard(21,130,10);'),(370,'STLeaderBoardPage15CourseColor','call GetTournamentSelectedLeaderBoard(21,140,10);'),(371,'SHPutt1','select count(*) Putts1 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=1 and HoleStatus=2 ;'),(372,'SHPutt2','select count(*) Putts2 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=2 and HoleStatus=2 ;'),(373,'SHPutt3','select count(*) Putts3 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=3 and HoleStatus=2 ;'),(374,'SHPutt4','select count(*) Putts4 from  golf.shots s,golf.uiselected u  where  s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole) and Putts=4 and HoleStatus=2 ;'),(375,'STLeaderboardDayDescTODAYorBLANK','SELECT if(u.roundcomplete=1,\'\', \'TODAY\') daydesc FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(376,'STDrawHoleScoreLine1ColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(22,0,1);'),(377,'STDrawHoleScoreColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(23,1,2);');
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
INSERT INTO `rounds` VALUES (1,'ROUND 1',0),(2,'ROUND 2',0),(3,'FINAL ROUND',0),(4,'ROUND 4',0),(5,'PLAY-OFF',0),(1616604234843,'PLAY-OFF 2',0);
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
INSERT INTO `score` VALUES (1634142058070,1614872890773,1614697043090,1,1,1,'08:20',NULL,'18','1','1',0,0,0,NULL,NULL,NULL,NULL,0),(1634142058465,1614872890768,1614697043090,1,1,2,'07:30',NULL,'18','2','2',0,0,0,NULL,NULL,NULL,NULL,0),(1634142058858,1614872890789,1614697043090,1,1,3,'12:00',NULL,'15','3','3',0,0,0,NULL,NULL,NULL,NULL,0),(1634142059253,1614872890763,1614697043090,1,1,4,'11:50',NULL,'15','4','4',1,0,0,NULL,NULL,NULL,NULL,0),(1634142059640,1614872890780,1614697043090,1,1,4,'12:50',NULL,'12','','4',1,0,0,NULL,NULL,NULL,NULL,0),(1634142060031,1614872890818,1614697043090,1,1,5,'07:10',NULL,'18','6','6',1,0,0,NULL,NULL,NULL,NULL,0),(1634142060425,1614872890839,1614697043090,1,1,5,'08:30',NULL,'18','','6',1,0,0,NULL,NULL,NULL,NULL,0),(1634142060818,1615544870564,1614697043090,1,1,5,'11:30',NULL,'18','','6',1,0,0,NULL,NULL,NULL,NULL,0),(1634142061207,1614872890782,1614697043090,1,1,6,'06:50',NULL,'18','','9',1,0,0,NULL,NULL,NULL,NULL,0),(1634142061596,1631181122143,1614697043090,1,1,6,'06:50',NULL,'18','9','9',1,0,0,NULL,NULL,NULL,NULL,0),(1634142061986,1614872890802,1614697043090,1,1,6,'12:10',NULL,'15','','9',1,0,0,NULL,NULL,NULL,NULL,0),(1634142062375,1614872890800,1614697043090,1,1,6,'12:20',NULL,'12','','9',1,0,0,NULL,NULL,NULL,NULL,0),(1634142062762,1614872890830,1614697043090,1,1,7,'06:20',NULL,'18','13','13',1,0,0,NULL,NULL,NULL,NULL,0),(1634142063157,1614872890786,1614697043090,1,1,7,'06:40',NULL,'18','','13',1,0,0,NULL,NULL,NULL,NULL,0),(1634142063542,1615544870433,1614697043090,1,1,7,'06:50',NULL,'18','','13',1,0,0,NULL,NULL,NULL,NULL,0),(1634142063930,1615544880229,1614697043090,1,1,8,'11:40',NULL,'18','','17',1,0,0,NULL,NULL,NULL,NULL,0),(1634142064318,1615544878830,1614697043090,1,1,8,'06:40',NULL,'18','17','17',1,0,0,NULL,NULL,NULL,NULL,0),(1634142064702,1614872890838,1614697043090,1,1,8,'07:50',NULL,'18','','17',1,0,0,NULL,NULL,NULL,NULL,0),(1634142065092,1614872890764,1614697043090,1,1,8,'08:10',NULL,'18','','17',1,0,0,NULL,NULL,NULL,NULL,0),(1634142065480,1614872890794,1614697043090,1,1,8,'12:30',NULL,'12','','17',1,0,0,NULL,NULL,NULL,NULL,0),(1634142065870,1614872890821,1614697043090,1,1,9,'06:50',NULL,'18','22','22',1,0,0,NULL,NULL,NULL,NULL,0),(1634142066263,1614872890819,1614697043090,1,1,9,'08:20',NULL,'18','','22',1,0,0,NULL,NULL,NULL,NULL,0),(1634142066666,1615544872087,1614697043090,1,1,7,'11:40',NULL,'18','','13',1,0,0,NULL,NULL,NULL,NULL,0),(1634142067059,1615544871744,1614697043090,1,1,9,'11:50',NULL,'15','','22',1,0,0,NULL,NULL,NULL,NULL,0),(1634142067451,1614872890812,1614697043090,1,1,9,'12:40',NULL,'12','','22',1,0,0,NULL,NULL,NULL,NULL,0),(1634142067839,1615544877277,1614697043090,1,1,10,'06:20',NULL,'18','27','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142068229,1614872890772,1614697043090,1,1,10,'06:40',NULL,'18','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142068622,1614872890777,1614697043090,1,1,10,'07:00',NULL,'18','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142069008,1615544865998,1614697043090,1,1,10,'07:30',NULL,'18','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142069403,1614872890836,1614697043090,1,1,10,'07:40',NULL,'18','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142069798,1614872890778,1614697043090,1,1,10,'08:00',NULL,'18','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142070192,1616062258302,1614697043090,1,1,10,'11:30',NULL,'18','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142070602,1614872890823,1614697043090,1,1,10,'11:40',NULL,'15','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142070993,1614872890824,1614697043090,1,1,10,'11:40',NULL,'18','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142071380,1615544880301,1614697043090,1,1,10,'11:50',NULL,'15','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142071774,1614872890822,1614697043090,1,1,10,'13:20',NULL,'10','','27',1,0,0,NULL,NULL,NULL,NULL,0),(1634142072164,1615544880253,1614697043090,1,1,11,'06:30',NULL,'18','38','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142072553,1614872890771,1614697043090,1,1,11,'06:40',NULL,'18','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142072946,1614872890817,1614697043090,1,1,11,'07:20',NULL,'18','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142073335,1615544875393,1614697043090,1,1,11,'07:20',NULL,'18','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142073730,1615544874284,1614697043090,1,1,9,'11:30',NULL,'18','','22',1,0,0,NULL,NULL,NULL,NULL,0),(1634142074122,1615544876474,1614697043090,1,1,11,'11:50',NULL,'15','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142074512,1614872890804,1614697043090,1,1,11,'11:50',NULL,'15','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142074908,1614872890831,1614697043090,1,1,11,'12:40',NULL,'12','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142075306,1619088070367,1614697043090,1,1,11,'12:50',NULL,'12','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142075697,1615544873568,1614697043090,1,1,11,'13:10',NULL,'10','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142076089,1614872890770,1614697043090,1,1,11,'13:20',NULL,'10','','38',1,0,0,NULL,NULL,NULL,NULL,0),(1634142076476,1615544880310,1614697043090,1,1,12,'06:30',NULL,'18','48','48',1,0,0,NULL,NULL,NULL,NULL,0),(1634142076870,1614872890785,1614697043090,1,1,12,'07:10',NULL,'18','','48',1,0,0,NULL,NULL,NULL,NULL,0),(1634142077263,1614872890815,1614697043090,1,1,12,'07:40',NULL,'18','','48',1,0,0,NULL,NULL,NULL,NULL,0),(1634142077648,1614872890776,1614697043090,1,1,12,'07:50',NULL,'18','','48',1,0,0,NULL,NULL,NULL,NULL,0),(1634142078036,1615544871438,1614697043090,1,1,13,'11:30',NULL,'18','','55',1,0,0,NULL,NULL,NULL,NULL,0),(1634142078425,1614872890826,1614697043090,1,1,12,'11:30',NULL,'18','','48',1,0,0,NULL,NULL,NULL,NULL,0),(1634142078831,1614872890813,1614697043090,1,1,12,'11:40',NULL,'15','','48',1,0,0,NULL,NULL,NULL,NULL,0),(1634142079226,1614872890835,1614697043090,1,1,12,'12:10',NULL,'15','','48',1,0,0,NULL,NULL,NULL,NULL,0),(1634142079620,1614872890833,1614697043090,1,1,13,'08:40',NULL,'18','55','55',1,0,0,NULL,NULL,NULL,NULL,0),(1634142080011,1615544880277,1614697043090,1,1,13,'11:50',NULL,'15','','55',1,0,0,NULL,NULL,NULL,NULL,0),(1634142080406,1628091869533,1614697043090,1,1,14,'06:20',NULL,'18','58','58',1,0,0,NULL,NULL,NULL,NULL,0),(1634142080797,1615544873098,1614697043090,1,1,14,'06:30',NULL,'18','','58',1,0,0,NULL,NULL,NULL,NULL,0),(1634142081184,1615544871830,1614697043090,1,1,14,'11:30',NULL,'18','','58',1,0,0,NULL,NULL,NULL,NULL,0),(1634142081575,1615544880283,1614697043090,1,1,14,'11:40',NULL,'15','','58',1,0,0,NULL,NULL,NULL,NULL,0),(1634142081967,1614872890781,1614697043090,1,1,15,'13:00',NULL,'12','62','62',1,0,0,NULL,NULL,NULL,NULL,0),(1634142082355,1615544876644,1614697043090,1,1,15,'13:00',NULL,'10','','62',1,0,0,NULL,NULL,NULL,NULL,0),(1634142082760,1615544874872,1614697043090,1,1,16,'06:40',NULL,'18','64','64',1,0,0,NULL,NULL,NULL,NULL,0),(1634142083153,1614872890783,1614697043090,1,1,16,'12:30',NULL,'12','','64',1,0,0,NULL,NULL,NULL,NULL,0),(1634142083542,1615544874469,1614697043090,1,1,17,'06:50',NULL,'18','66','66',1,0,0,NULL,NULL,NULL,NULL,0),(1634142083936,1614872890791,1614697043090,1,1,17,'12:00',NULL,'15','','66',1,0,0,NULL,NULL,NULL,NULL,0),(1634142084328,1614872890820,1614697043090,1,1,18,'12:20',NULL,'15','','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142084722,1615544875221,1614697043090,1,1,18,'06:30',NULL,'18','68','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142085114,1615544870980,1614697043090,1,1,18,'06:40',NULL,'18','','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142085506,1615544880189,1614697043090,1,1,18,'06:50',NULL,'18','','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142085897,1614872890814,1614697043090,1,1,18,'08:00',NULL,'18','','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142086291,1614872890784,1614697043090,1,1,18,'08:10',NULL,'18','','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142086687,1614872890798,1614697043090,1,1,18,'08:30',NULL,'18','','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142087076,1614872890825,1614697043090,1,1,18,'13:10',NULL,'10','','68',1,0,0,NULL,NULL,NULL,NULL,0),(1634142087467,1615544874093,1614697043090,1,1,19,'06:30',NULL,'18','76','76',0,0,0,NULL,NULL,NULL,NULL,0),(1634142087863,1614872890760,1614697043090,1,1,20,'06:20',NULL,'18','77','77',0,0,0,NULL,NULL,NULL,NULL,0),(1634142088257,1616062258291,1614697043090,1,1,21,'07:00',NULL,'18','78','78',0,0,0,NULL,NULL,NULL,NULL,0),(1634142104196,1634139483930,1614697043090,1,2,1,'08:00',NULL,'18','1','1',0,0,0,NULL,NULL,NULL,NULL,0),(1634142104598,1634139483947,1614697043090,1,2,2,'07:50',NULL,'18','2','2',1,0,0,NULL,NULL,NULL,NULL,0),(1634142104987,1634139483948,1614697043090,1,2,2,'08:00',NULL,'18','','2',1,0,0,NULL,NULL,NULL,NULL,0),(1634142105376,1634139483951,1614697043090,1,2,3,'07:20',NULL,'18','4','4',0,0,0,NULL,NULL,NULL,NULL,0),(1634142105766,1634139483952,1614697043090,1,2,4,'07:00',NULL,'18','5','5',1,0,0,NULL,NULL,NULL,NULL,0),(1634142106157,1634139483954,1614697043090,1,2,4,'07:30',NULL,'18','','5',1,0,0,NULL,NULL,NULL,NULL,0),(1634142106552,1634139483955,1614697043090,1,2,4,'08:10',NULL,'18','','5',1,0,0,NULL,NULL,NULL,NULL,0),(1634142106948,1634139483957,1614697043090,1,2,5,'07:00',NULL,'18','8','8',1,0,0,NULL,NULL,NULL,NULL,0),(1634142107340,1634139483958,1614697043090,1,2,5,'07:50',NULL,'18','','8',1,0,0,NULL,NULL,NULL,NULL,0),(1634142107732,1634139483960,1614697043090,1,2,5,'08:10',NULL,'18','','8',1,0,0,NULL,NULL,NULL,NULL,0),(1634142108124,1634139483961,1614697043090,1,2,6,'07:30',NULL,'18','11','11',1,0,0,NULL,NULL,NULL,NULL,0),(1634142108514,1634139483963,1614697043090,1,2,6,'08:20',NULL,'18','','11',1,0,0,NULL,NULL,NULL,NULL,0),(1634142108908,1634139483964,1614697043090,1,2,7,'07:10',NULL,'18','13','13',0,0,0,NULL,NULL,NULL,NULL,0),(1634142109302,1634139483965,1614697043090,1,2,8,'08:30',NULL,'18','14','14',0,0,0,NULL,NULL,NULL,NULL,0),(1634142109695,1634139483968,1614697043090,1,2,9,'07:10',NULL,'18','15','15',0,0,0,NULL,NULL,NULL,NULL,0),(1634142110096,1634139483970,1614697043090,1,2,10,'08:20',NULL,'18','16','16',0,0,0,NULL,NULL,NULL,NULL,0),(1634142110490,1634139483972,1614697043090,1,2,11,'07:40',NULL,'18','17','17',1,0,0,NULL,NULL,NULL,NULL,0),(1634142110882,1634139483974,1614697043090,1,2,11,'08:40',NULL,'18','','17',1,0,0,NULL,NULL,NULL,NULL,0),(1634142111278,1634139483982,1614697043090,1,2,12,'12:10',NULL,'15','19','19',1,0,0,NULL,NULL,NULL,NULL,0),(1634142111667,1634139483975,1614697043090,1,2,13,'07:20',NULL,'18','21','21',1,0,0,NULL,NULL,NULL,NULL,0),(1634142112058,1634139483979,1614697043090,1,2,13,'07:40',NULL,'18','','21',1,0,0,NULL,NULL,NULL,NULL,0),(1634142112452,1634139483986,1614697043090,1,2,13,'12:10',NULL,'15','','21',1,0,0,NULL,NULL,NULL,NULL,0),(1634142112843,1634139483990,1614697043090,1,2,14,'12:00',NULL,'15','24','24',1,0,0,NULL,NULL,NULL,NULL,0),(1634142113233,1634139483981,1614697043090,1,2,15,'08:30',NULL,'18','26','26',0,0,0,NULL,NULL,NULL,NULL,0),(1634142113627,1634139483984,1614697043090,1,2,16,'12:00',NULL,'15','27','27',0,0,0,NULL,NULL,NULL,NULL,0),(1634142114017,1634139483994,1614697043090,1,2,12,'12:20',NULL,'15','','19',1,0,0,NULL,NULL,NULL,NULL,0),(1634142114408,1634139483995,1614697043090,1,2,18,'12:40',NULL,'12','29','29',0,0,0,NULL,NULL,NULL,NULL,0),(1634142114802,1634139484004,1614697043090,1,2,14,'12:30',NULL,'13','','24',1,0,0,NULL,NULL,NULL,NULL,0),(1634142115192,1634139483998,1614697043090,1,2,20,'13:00',NULL,'10','31','31',0,0,0,NULL,NULL,NULL,NULL,0),(1634142115588,1634139483992,1614697043090,1,2,17,'12:20',NULL,'15','28','28',0,0,0,NULL,NULL,NULL,NULL,0),(1634142115982,1634139484008,1614697043090,1,2,21,'12:50',NULL,'12','32','32',0,0,0,NULL,NULL,NULL,NULL,0),(1634142116371,1634139484007,1614697043090,1,2,22,'13:00',NULL,'12','33','33',1,0,0,NULL,NULL,NULL,NULL,0),(1634142116766,1634139483997,1614697043090,1,2,22,'12:40',NULL,'10','','33',1,0,0,NULL,NULL,NULL,NULL,0),(1634142117160,1634139484002,1614697043090,1,2,22,'13:10',NULL,'10','','33',1,0,0,NULL,NULL,NULL,NULL,0),(1634142117552,1634139484013,1614697043090,1,2,23,'13:20',NULL,'10','','36',1,0,0,NULL,NULL,NULL,NULL,0),(1634142117946,1634139484010,1614697043090,1,2,23,'13:20',NULL,'10','36','36',1,0,0,NULL,NULL,NULL,NULL,0),(1634142118338,1634139484000,1614697043090,1,2,24,'12:50',NULL,'10','38','38',0,0,0,NULL,NULL,NULL,NULL,0),(1634142118731,1634139484012,1614697043090,1,2,19,'13:10',NULL,'12','30','30',0,0,0,NULL,NULL,NULL,NULL,0),(1634142119131,1634139484005,1614697043090,1,2,25,'12:30',NULL,'10','39','39',0,0,0,NULL,NULL,NULL,NULL,0);
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
  PRIMARY KEY (`idscorecapturedata`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scorecapturedata`
--

LOCK TABLES `scorecapturedata` WRITE;
/*!40000 ALTER TABLE `scorecapturedata` DISABLE KEYS */;
INSERT INTO `scorecapturedata` VALUES (1631100481682,'1','Dave Hilewitz ','','','','','-6','42','18','1'),(1631100481702,'2','David Kuming ','','','','','-4','40','18','2'),(1631100481722,'3','Brian Leftin ','','','','','-3','39','18','3'),(1631100481742,'3','Marc Snaid ','','','','','-3','39','18',''),(1631100481762,'5','Colin Berger ','','','','','-2','38','18','5'),(1631100481782,'5','Dylan Forman ','','','','','-2','38','18',''),(1631100481802,'5','Jacob Lazarus ','','','','','-2','38','18',''),(1631100481822,'5','Michael Katz ','','','','','-2','38','18',''),(1631100481842,'9','David Farber ','','','','','-1','37','18','9'),(1631100481862,'9','Michael Wainbergas ','','','','','-1','37','18',''),(1631100481882,'9','Philip Ephron ','','','','','-1','37','18',''),(1631100481902,'12','Chad Jacobs ','','','','','','36','18','12'),(1631100481922,'12','Dean Forman ','','','','','','36','18',''),(1631100481942,'12','Gerald Kay ','','','','','','36','18',''),(1631100481962,'12','Jordan Kuming ','','','','','','36','18',''),(1631100481982,'12','Rael Polakow ','','','','','','36','18',''),(1631100481997,'12','Raymond Mashazi ','','','','','','36','18',''),(1631100482012,'12','Ronald Buch ','','','','','','36','18',''),(1631100482032,'12','Ross Kirschner ','','','','','','36','18',''),(1631100482052,'20','Benjamin Lazarus ','','','','','1','35','18','20'),(1631100482072,'20','Frank Levenberg ','','','','','1','35','18',''),(1631100482092,'20','Mervyn Goldsmith ','','','','','1','35','18',''),(1631100482107,'20','Rasheed Amod ','','','','','1','35','18',''),(1631100482124,'24','Harold Magid ','','','','','2','34','18','24'),(1631100482142,'24','Jared Kangisser ','','','','','2','34','18',''),(1631100482162,'24','Joel Wilensky ','','','','','2','34','18',''),(1631100482182,'24','Jonathan Kaplan ','','','','','2','34','18',''),(1631100482202,'24','Josh Lasker ','','','','','2','34','18',''),(1631100482222,'24','Joshua Oliver ','','','','','2','34','18',''),(1631100482232,'24','Nimrod Barlev ','','','','','2','34','18',''),(1631100482262,'24','Richard Koseff ','','','','','2','34','18',''),(1631100482282,'24','Ryan Licht ','','','','','2','34','18',''),(1631100482302,'24','Yoav Lipschitz ','','','','','2','34','18',''),(1631100482322,'34','Ian Delacour ','','','','','3','33','18','34'),(1631100482342,'34','Jeff Pokroy ','','','','','3','33','18',''),(1631100482362,'34','Stefan Drue ','','','','','3','33','18',''),(1631100482382,'37','Brad Elin ','','','','','4','32','18','37'),(1631100482402,'37','Charles Telela ','','','','','4','32','18',''),(1631100482422,'37','Clayton Thomas ','','','','','4','32','18',''),(1631100482442,'37','Gary Treger ','','','','','4','32','18',''),(1631100482462,'37','Harvey Chait ','','','','','4','32','18',''),(1631100482482,'37','Khunji Ngumbela ','','','','','4','32','18',''),(1631100482502,'37','Michael Barnett ','','','','','4','32','18',''),(1631100482522,'37','Saul Daleski ','','','','','4','32','18',''),(1631100482542,'45','Daniel Bersiks ','','','','','5','31','18','45'),(1631100482562,'45','Dylan Brayshaw ','','','','','5','31','18',''),(1631100482612,'45','Jason Cohen ','','','','','5','31','18',''),(1631100482632,'45','Martin Glasenberg ','','','','','5','31','18',''),(1631100482652,'45','Norman Kagan ','','','','','5','31','18',''),(1631100482672,'50','Jessica Segal ','','','','','6','30','18','50'),(1631100482692,'50','Ryan de miranda ','','','','','6','30','18',''),(1631100482712,'50','Selwyn Machet ','','','','','6','30','18',''),(1631100482732,'53','Alessio De Gouveia ','','','','','7','29','18','53'),(1631100482752,'53','Nic Frangos ','','','','','7','29','18',''),(1631100482766,'53','Saul Maserow ','','','','','7','29','18',''),(1631100482779,'53','Thabo Seopa ','','','','','7','29','18',''),(1631100482802,'53','Warren Green ','','','','','7','29','18',''),(1631100482822,'58','Clinton Yung Fah ','','','','','8','28','18','58'),(1631100482842,'58','David Jaffit ','','','','','8','28','18',''),(1631100482862,'58','David Nestadt ','','','','','8','28','18',''),(1631100482882,'58','Jonathan Josset ','','','','','8','28','18',''),(1631100482902,'58','Martin Klein ','','','','','8','28','18',''),(1631100482922,'58','Mervyn Ossip ','','','','','8','28','18',''),(1631100482942,'58','Rodney Rottanburg ','','','','','8','28','18',''),(1631100482962,'58','The Ghost ','','','','','8','28','18',''),(1631100482982,'58','The Ghost ','','','','','8','28','18',''),(1631100483002,'58','The Ghost ','','','','','8','28','18',''),(1631100483022,'58','The Ghost ','','','','','8','28','18',''),(1631100483042,'58','The Ghost ','','','','','8','28','18',''),(1631100483062,'58','The Ghost ','','','','','8','28','18',''),(1631100483082,'71','Chad Regenbaum ','','','','','9','27','18','71'),(1631100483102,'71','Jared Nestadt ','','','','','9','27','18',''),(1631100483122,'71','Ryan Brick ','','','','','9','27','18',''),(1631100483142,'71','Warren Zwick ','','','','','9','27','18',''),(1631100483162,'75','Litha Nyhonyha ','','','','','10','26','18','75'),(1631100483182,'76','Eric Mataba ','','','','','11','25','18','76'),(1631100483202,'76','Martin Brauer ','','','','','11','25','18',''),(1631100483222,'78','Adam Levendig ','','','','','12','24','18','78'),(1631100483242,'79','Jignesh Dave ','','','','','13','23','18','79'),(1631100483262,'79','Les Cohen ','','','','','13','23','18',''),(1631100483282,'79','Martin Modlin ','','','','','13','23','18',''),(1631100483302,'82','Ryan Gordon ','','','','','14','22','18','82'),(1631100483322,'83','Elias Borole ','','','','','15','21','18','83'),(1631100483342,'84','Stanley Marcus ','','','','','17','19','18','84');
/*!40000 ALTER TABLE `scorecapturedata` ENABLE KEYS */;
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
INSERT INTO `shots` VALUES (1634142058105,1634142058070,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058121,1634142058070,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058137,1634142058070,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058153,1634142058070,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058169,1634142058070,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058184,1634142058070,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058200,1634142058070,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058216,1634142058070,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058232,1634142058070,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058263,1634142058070,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058279,1634142058070,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058294,1634142058070,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058310,1634142058070,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058326,1634142058070,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058342,1634142058070,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058357,1634142058070,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058372,1634142058070,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058386,1634142058070,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058513,1634142058465,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058529,1634142058465,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058544,1634142058465,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058560,1634142058465,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058576,1634142058465,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058591,1634142058465,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058607,1634142058465,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058623,1634142058465,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058637,1634142058465,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058654,1634142058465,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058670,1634142058465,'11','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058685,1634142058465,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058701,1634142058465,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058717,1634142058465,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058733,1634142058465,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058749,1634142058465,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058764,1634142058465,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058780,1634142058465,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058905,1634142058858,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058921,1634142058858,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058937,1634142058858,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058953,1634142058858,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058968,1634142058858,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058983,1634142058858,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142058999,1634142058858,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059015,1634142058858,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059031,1634142058858,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059047,1634142058858,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059063,1634142058858,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059079,1634142058858,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059094,1634142058858,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059111,1634142058858,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059126,1634142058858,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059143,1634142058858,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059159,1634142058858,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059174,1634142058858,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059300,1634142059253,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059317,1634142059253,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059333,1634142059253,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059349,1634142059253,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059364,1634142059253,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059379,1634142059253,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059394,1634142059253,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059409,1634142059253,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059424,1634142059253,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059440,1634142059253,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059455,1634142059253,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059470,1634142059253,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059485,1634142059253,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059501,1634142059253,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059516,1634142059253,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059532,1634142059253,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059548,1634142059253,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059564,1634142059253,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059687,1634142059640,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059703,1634142059640,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059719,1634142059640,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059735,1634142059640,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059751,1634142059640,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059766,1634142059640,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059782,1634142059640,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059798,1634142059640,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059814,1634142059640,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142059830,1634142059640,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059845,1634142059640,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059861,1634142059640,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059877,1634142059640,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059893,1634142059640,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059909,1634142059640,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059924,1634142059640,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059940,1634142059640,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142059955,1634142059640,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060078,1634142060031,'1','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060093,1634142060031,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060109,1634142060031,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060125,1634142060031,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060141,1634142060031,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060157,1634142060031,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060173,1634142060031,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060189,1634142060031,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060205,1634142060031,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060221,1634142060031,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060237,1634142060031,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060253,1634142060031,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060269,1634142060031,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060285,1634142060031,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060300,1634142060031,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060316,1634142060031,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060331,1634142060031,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060347,1634142060031,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060473,1634142060425,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060489,1634142060425,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060504,1634142060425,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060520,1634142060425,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060535,1634142060425,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060551,1634142060425,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060566,1634142060425,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060581,1634142060425,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060597,1634142060425,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060613,1634142060425,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060629,1634142060425,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060645,1634142060425,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060660,1634142060425,'13','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060676,1634142060425,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060693,1634142060425,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060708,1634142060425,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060724,1634142060425,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060740,1634142060425,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060865,1634142060818,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060881,1634142060818,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060897,1634142060818,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060913,1634142060818,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060929,1634142060818,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060945,1634142060818,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060960,1634142060818,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060975,1634142060818,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142060991,1634142060818,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061006,1634142060818,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061022,1634142060818,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061037,1634142060818,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061052,1634142060818,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061068,1634142060818,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061083,1634142060818,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061098,1634142060818,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061115,1634142060818,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061130,1634142060818,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061253,1634142061207,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061269,1634142061207,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061284,1634142061207,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061300,1634142061207,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061315,1634142061207,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061331,1634142061207,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061346,1634142061207,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061362,1634142061207,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061378,1634142061207,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061394,1634142061207,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061410,1634142061207,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061425,1634142061207,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061441,1634142061207,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061457,1634142061207,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061472,1634142061207,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061488,1634142061207,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061503,1634142061207,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061518,1634142061207,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061644,1634142061596,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061660,1634142061596,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061676,1634142061596,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061692,1634142061596,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061707,1634142061596,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061722,1634142061596,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061738,1634142061596,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061753,1634142061596,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061769,1634142061596,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061784,1634142061596,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061800,1634142061596,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061815,1634142061596,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061831,1634142061596,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061846,1634142061596,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061861,1634142061596,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061876,1634142061596,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061892,1634142061596,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142061907,1634142061596,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062033,1634142061986,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062048,1634142061986,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062063,1634142061986,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062079,1634142061986,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062095,1634142061986,'5','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062110,1634142061986,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062126,1634142061986,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062142,1634142061986,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062158,1634142061986,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062173,1634142061986,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062188,1634142061986,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062204,1634142061986,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062219,1634142061986,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062234,1634142061986,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062250,1634142061986,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062266,1634142061986,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062281,1634142061986,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062296,1634142061986,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062421,1634142062375,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062437,1634142062375,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062452,1634142062375,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062468,1634142062375,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062483,1634142062375,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062499,1634142062375,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062514,1634142062375,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062530,1634142062375,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062545,1634142062375,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062560,1634142062375,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062575,1634142062375,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062591,1634142062375,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062607,1634142062375,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062622,1634142062375,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062637,1634142062375,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062653,1634142062375,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062668,1634142062375,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062684,1634142062375,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142062810,1634142062762,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062826,1634142062762,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062842,1634142062762,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062858,1634142062762,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062873,1634142062762,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062889,1634142062762,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062905,1634142062762,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062921,1634142062762,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062936,1634142062762,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062952,1634142062762,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062968,1634142062762,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142062984,1634142062762,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063000,1634142062762,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063016,1634142062762,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063031,1634142062762,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063046,1634142062762,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063062,1634142062762,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063078,1634142062762,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063203,1634142063157,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063219,1634142063157,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063234,1634142063157,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063250,1634142063157,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063265,1634142063157,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063280,1634142063157,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063296,1634142063157,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063311,1634142063157,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063326,1634142063157,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063342,1634142063157,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063357,1634142063157,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063373,1634142063157,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063388,1634142063157,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063403,1634142063157,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063419,1634142063157,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063434,1634142063157,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063450,1634142063157,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063465,1634142063157,'18','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063589,1634142063542,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063604,1634142063542,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063619,1634142063542,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063635,1634142063542,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063650,1634142063542,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063666,1634142063542,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063681,1634142063542,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063696,1634142063542,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063711,1634142063542,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063727,1634142063542,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063743,1634142063542,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063759,1634142063542,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063774,1634142063542,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063789,1634142063542,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063805,1634142063542,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063821,1634142063542,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063837,1634142063542,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063852,1634142063542,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063978,1634142063930,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142063993,1634142063930,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064008,1634142063930,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064024,1634142063930,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064040,1634142063930,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064055,1634142063930,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064071,1634142063930,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064087,1634142063930,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064102,1634142063930,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064117,1634142063930,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064132,1634142063930,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064148,1634142063930,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064163,1634142063930,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064179,1634142063930,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064194,1634142063930,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064209,1634142063930,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064224,1634142063930,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064239,1634142063930,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064364,1634142064318,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064379,1634142064318,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064394,1634142064318,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064410,1634142064318,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064426,1634142064318,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064441,1634142064318,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064457,1634142064318,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064472,1634142064318,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064487,1634142064318,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064502,1634142064318,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064517,1634142064318,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064532,1634142064318,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064548,1634142064318,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064564,1634142064318,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064579,1634142064318,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064595,1634142064318,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064610,1634142064318,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064626,1634142064318,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064749,1634142064702,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064764,1634142064702,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064780,1634142064702,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064796,1634142064702,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064812,1634142064702,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064827,1634142064702,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064842,1634142064702,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064857,1634142064702,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064873,1634142064702,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064889,1634142064702,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064905,1634142064702,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064920,1634142064702,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064936,1634142064702,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064952,1634142064702,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064967,1634142064702,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064983,1634142064702,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142064999,1634142064702,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065015,1634142064702,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065138,1634142065092,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065153,1634142065092,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065169,1634142065092,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065185,1634142065092,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065200,1634142065092,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065216,1634142065092,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065232,1634142065092,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065247,1634142065092,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065263,1634142065092,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065279,1634142065092,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065295,1634142065092,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065310,1634142065092,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065326,1634142065092,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065341,1634142065092,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065356,1634142065092,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065372,1634142065092,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065387,1634142065092,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065402,1634142065092,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065527,1634142065480,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065542,1634142065480,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065557,1634142065480,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065572,1634142065480,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142065587,1634142065480,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142065604,1634142065480,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142065620,1634142065480,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142065636,1634142065480,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142065652,1634142065480,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142065667,1634142065480,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065682,1634142065480,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065697,1634142065480,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065713,1634142065480,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065728,1634142065480,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065744,1634142065480,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065759,1634142065480,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065775,1634142065480,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065791,1634142065480,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065917,1634142065870,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065932,1634142065870,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065948,1634142065870,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065963,1634142065870,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065979,1634142065870,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142065994,1634142065870,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066010,1634142065870,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066027,1634142065870,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066042,1634142065870,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066058,1634142065870,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066073,1634142065870,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066089,1634142065870,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066104,1634142065870,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066120,1634142065870,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066136,1634142065870,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066152,1634142065870,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066168,1634142065870,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066184,1634142065870,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066309,1634142066263,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066340,1634142066263,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066356,1634142066263,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066371,1634142066263,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066387,1634142066263,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066403,1634142066263,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066418,1634142066263,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066434,1634142066263,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066450,1634142066263,'9','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066465,1634142066263,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066480,1634142066263,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066495,1634142066263,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066511,1634142066263,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066526,1634142066263,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066541,1634142066263,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066557,1634142066263,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066573,1634142066263,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066589,1634142066263,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066713,1634142066666,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066728,1634142066666,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066744,1634142066666,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066760,1634142066666,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066776,1634142066666,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066792,1634142066666,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066807,1634142066666,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066824,1634142066666,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066839,1634142066666,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066854,1634142066666,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066870,1634142066666,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066886,1634142066666,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066902,1634142066666,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066917,1634142066666,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066933,1634142066666,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066949,1634142066666,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066964,1634142066666,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142066980,1634142066666,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067106,1634142067059,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067122,1634142067059,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067138,1634142067059,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067154,1634142067059,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067169,1634142067059,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067185,1634142067059,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067201,1634142067059,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067217,1634142067059,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067233,1634142067059,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067248,1634142067059,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067263,1634142067059,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067279,1634142067059,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067295,1634142067059,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067310,1634142067059,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067325,1634142067059,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067342,1634142067059,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067357,1634142067059,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067373,1634142067059,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067497,1634142067451,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067513,1634142067451,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067528,1634142067451,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067544,1634142067451,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067560,1634142067451,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067575,1634142067451,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067591,1634142067451,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067606,1634142067451,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067621,1634142067451,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067636,1634142067451,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067652,1634142067451,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067668,1634142067451,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067683,1634142067451,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067699,1634142067451,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067714,1634142067451,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067730,1634142067451,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067745,1634142067451,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067761,1634142067451,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142067885,1634142067839,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067900,1634142067839,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067916,1634142067839,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067932,1634142067839,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067948,1634142067839,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067964,1634142067839,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067979,1634142067839,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142067994,1634142067839,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068010,1634142067839,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068025,1634142067839,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068041,1634142067839,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068057,1634142067839,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068073,1634142067839,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068090,1634142067839,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068105,1634142067839,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068121,1634142067839,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068137,1634142067839,'17','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068152,1634142067839,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068275,1634142068229,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068290,1634142068229,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068305,1634142068229,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068321,1634142068229,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068337,1634142068229,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068353,1634142068229,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068369,1634142068229,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068384,1634142068229,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068400,1634142068229,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068416,1634142068229,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068432,1634142068229,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068448,1634142068229,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068464,1634142068229,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068480,1634142068229,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068495,1634142068229,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068511,1634142068229,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068527,1634142068229,'17','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068543,1634142068229,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068669,1634142068622,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068684,1634142068622,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068699,1634142068622,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068714,1634142068622,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068730,1634142068622,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068745,1634142068622,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068760,1634142068622,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068776,1634142068622,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068792,1634142068622,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068807,1634142068622,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068823,1634142068622,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068835,1634142068622,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068850,1634142068622,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068865,1634142068622,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068882,1634142068622,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068897,1634142068622,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068913,1634142068622,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142068929,1634142068622,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069056,1634142069008,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069072,1634142069008,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069088,1634142069008,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069104,1634142069008,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069120,1634142069008,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069135,1634142069008,'6','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069151,1634142069008,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069167,1634142069008,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069183,1634142069008,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069199,1634142069008,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069214,1634142069008,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069230,1634142069008,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069246,1634142069008,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069262,1634142069008,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069278,1634142069008,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069294,1634142069008,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069309,1634142069008,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069325,1634142069008,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069450,1634142069403,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069466,1634142069403,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069482,1634142069403,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069497,1634142069403,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069513,1634142069403,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069529,1634142069403,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069545,1634142069403,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069561,1634142069403,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069576,1634142069403,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069592,1634142069403,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069608,1634142069403,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069623,1634142069403,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069640,1634142069403,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069656,1634142069403,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069672,1634142069403,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069687,1634142069403,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069704,1634142069403,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069719,1634142069403,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069844,1634142069798,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069860,1634142069798,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069875,1634142069798,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069891,1634142069798,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069907,1634142069798,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069923,1634142069798,'6','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069939,1634142069798,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069956,1634142069798,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069970,1634142069798,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142069985,1634142069798,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070001,1634142069798,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070017,1634142069798,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070033,1634142069798,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070049,1634142069798,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070064,1634142069798,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070080,1634142069798,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070096,1634142069798,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070112,1634142069798,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070239,1634142070192,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070254,1634142070192,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070270,1634142070192,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070285,1634142070192,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070301,1634142070192,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070317,1634142070192,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070333,1634142070192,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070349,1634142070192,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070365,1634142070192,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070396,1634142070192,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070412,1634142070192,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070428,1634142070192,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070444,1634142070192,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070460,1634142070192,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070475,1634142070192,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070491,1634142070192,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070507,1634142070192,'17','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070523,1634142070192,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070649,1634142070602,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070665,1634142070602,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070681,1634142070602,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070696,1634142070602,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070712,1634142070602,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070728,1634142070602,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070744,1634142070602,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070760,1634142070602,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070775,1634142070602,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070791,1634142070602,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070807,1634142070602,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070823,1634142070602,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070839,1634142070602,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070854,1634142070602,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070870,1634142070602,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142070885,1634142070602,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142070901,1634142070602,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142070916,1634142070602,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142071040,1634142070993,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071055,1634142070993,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071070,1634142070993,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071085,1634142070993,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071100,1634142070993,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071116,1634142070993,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071131,1634142070993,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071147,1634142070993,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071163,1634142070993,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071178,1634142070993,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071194,1634142070993,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071210,1634142070993,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071226,1634142070993,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071242,1634142070993,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071257,1634142070993,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071272,1634142070993,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071288,1634142070993,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071304,1634142070993,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071427,1634142071380,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071442,1634142071380,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071458,1634142071380,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071474,1634142071380,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071490,1634142071380,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071505,1634142071380,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071520,1634142071380,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142071536,1634142071380,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142071552,1634142071380,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142071567,1634142071380,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071583,1634142071380,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071599,1634142071380,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071615,1634142071380,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071631,1634142071380,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071647,1634142071380,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071662,1634142071380,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071679,1634142071380,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071695,1634142071380,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071821,1634142071774,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071837,1634142071774,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071852,1634142071774,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071867,1634142071774,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071883,1634142071774,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071899,1634142071774,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071914,1634142071774,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071930,1634142071774,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071946,1634142071774,'9','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071962,1634142071774,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142071978,1634142071774,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142071994,1634142071774,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142072009,1634142071774,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142072024,1634142071774,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142072039,1634142071774,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142072056,1634142071774,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142072071,1634142071774,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142072087,1634142071774,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142072211,1634142072164,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072226,1634142072164,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072241,1634142072164,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072257,1634142072164,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072273,1634142072164,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072289,1634142072164,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072305,1634142072164,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072321,1634142072164,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072336,1634142072164,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072352,1634142072164,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072369,1634142072164,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072384,1634142072164,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072400,1634142072164,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072416,1634142072164,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072432,1634142072164,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072447,1634142072164,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072463,1634142072164,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072479,1634142072164,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072600,1634142072553,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072615,1634142072553,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072631,1634142072553,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072647,1634142072553,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072662,1634142072553,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072678,1634142072553,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072693,1634142072553,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072710,1634142072553,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072726,1634142072553,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072742,1634142072553,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072758,1634142072553,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072773,1634142072553,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072789,1634142072553,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072805,1634142072553,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072820,1634142072553,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072836,1634142072553,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072852,1634142072553,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072867,1634142072553,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142072993,1634142072946,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073009,1634142072946,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073024,1634142072946,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073040,1634142072946,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073055,1634142072946,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073071,1634142072946,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073087,1634142072946,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073103,1634142072946,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073118,1634142072946,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073133,1634142072946,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073149,1634142072946,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073165,1634142072946,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073180,1634142072946,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073195,1634142072946,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073210,1634142072946,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073225,1634142072946,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073241,1634142072946,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073256,1634142072946,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073383,1634142073335,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073399,1634142073335,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073414,1634142073335,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073430,1634142073335,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073446,1634142073335,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073462,1634142073335,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073478,1634142073335,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073494,1634142073335,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073510,1634142073335,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073525,1634142073335,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073541,1634142073335,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073556,1634142073335,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073573,1634142073335,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073589,1634142073335,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073604,1634142073335,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073620,1634142073335,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073636,1634142073335,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073652,1634142073335,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073777,1634142073730,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073793,1634142073730,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073809,1634142073730,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073825,1634142073730,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073840,1634142073730,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073856,1634142073730,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073872,1634142073730,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073888,1634142073730,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073904,1634142073730,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073920,1634142073730,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073935,1634142073730,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073951,1634142073730,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073967,1634142073730,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073983,1634142073730,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142073998,1634142073730,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074014,1634142073730,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074030,1634142073730,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074045,1634142073730,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074169,1634142074122,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074184,1634142074122,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074200,1634142074122,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074216,1634142074122,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074231,1634142074122,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074246,1634142074122,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074261,1634142074122,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074277,1634142074122,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074292,1634142074122,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074307,1634142074122,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074323,1634142074122,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074339,1634142074122,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074354,1634142074122,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074370,1634142074122,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074385,1634142074122,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074401,1634142074122,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142074416,1634142074122,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142074432,1634142074122,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142074559,1634142074512,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074575,1634142074512,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074591,1634142074512,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074607,1634142074512,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074622,1634142074512,'5','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074639,1634142074512,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074654,1634142074512,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142074670,1634142074512,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142074686,1634142074512,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142074702,1634142074512,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074717,1634142074512,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074733,1634142074512,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074749,1634142074512,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074765,1634142074512,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074781,1634142074512,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074797,1634142074512,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074813,1634142074512,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074829,1634142074512,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074956,1634142074908,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074972,1634142074908,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142074987,1634142074908,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075003,1634142074908,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075019,1634142074908,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075035,1634142074908,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075051,1634142074908,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075066,1634142074908,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075083,1634142074908,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075099,1634142074908,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075114,1634142074908,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075133,1634142074908,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075149,1634142074908,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075164,1634142074908,'14','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075181,1634142074908,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075196,1634142074908,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075212,1634142074908,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075228,1634142074908,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075352,1634142075306,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075368,1634142075306,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075383,1634142075306,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075398,1634142075306,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075414,1634142075306,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075430,1634142075306,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075445,1634142075306,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075460,1634142075306,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075476,1634142075306,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075491,1634142075306,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075507,1634142075306,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075523,1634142075306,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075538,1634142075306,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075554,1634142075306,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075570,1634142075306,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075586,1634142075306,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075602,1634142075306,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075617,1634142075306,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075744,1634142075697,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075760,1634142075697,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075776,1634142075697,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075792,1634142075697,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075807,1634142075697,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075823,1634142075697,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075839,1634142075697,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075854,1634142075697,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075870,1634142075697,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075886,1634142075697,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142075902,1634142075697,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075917,1634142075697,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075933,1634142075697,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075949,1634142075697,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075964,1634142075697,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075980,1634142075697,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142075996,1634142075697,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076012,1634142075697,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076136,1634142076089,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076151,1634142076089,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076167,1634142076089,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076179,1634142076089,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076194,1634142076089,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076209,1634142076089,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076225,1634142076089,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076241,1634142076089,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076256,1634142076089,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142076272,1634142076089,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076288,1634142076089,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076304,1634142076089,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076319,1634142076089,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076335,1634142076089,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076351,1634142076089,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076367,1634142076089,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076383,1634142076089,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076399,1634142076089,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076523,1634142076476,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076538,1634142076476,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076554,1634142076476,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076569,1634142076476,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076585,1634142076476,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076601,1634142076476,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076617,1634142076476,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076632,1634142076476,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076648,1634142076476,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076664,1634142076476,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076680,1634142076476,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076696,1634142076476,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076712,1634142076476,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076727,1634142076476,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076743,1634142076476,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076759,1634142076476,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076775,1634142076476,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076791,1634142076476,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076917,1634142076870,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076932,1634142076870,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076949,1634142076870,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076964,1634142076870,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076980,1634142076870,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142076995,1634142076870,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077011,1634142076870,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077027,1634142076870,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077043,1634142076870,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077059,1634142076870,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077074,1634142076870,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077090,1634142076870,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077106,1634142076870,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077122,1634142076870,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077137,1634142076870,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077153,1634142076870,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077169,1634142076870,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077185,1634142076870,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077309,1634142077263,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077325,1634142077263,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077340,1634142077263,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077356,1634142077263,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077372,1634142077263,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077387,1634142077263,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077403,1634142077263,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077419,1634142077263,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077435,1634142077263,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077451,1634142077263,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077466,1634142077263,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077482,1634142077263,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077498,1634142077263,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077508,1634142077263,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077524,1634142077263,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077539,1634142077263,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077554,1634142077263,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077571,1634142077263,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077695,1634142077648,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077711,1634142077648,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077727,1634142077648,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077743,1634142077648,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077759,1634142077648,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077774,1634142077648,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077789,1634142077648,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077804,1634142077648,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077820,1634142077648,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077836,1634142077648,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077851,1634142077648,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077866,1634142077648,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077882,1634142077648,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077897,1634142077648,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077913,1634142077648,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077928,1634142077648,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077944,1634142077648,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142077959,1634142077648,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078082,1634142078036,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078097,1634142078036,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078113,1634142078036,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078129,1634142078036,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078145,1634142078036,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078160,1634142078036,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078176,1634142078036,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078192,1634142078036,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078208,1634142078036,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078223,1634142078036,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078239,1634142078036,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078254,1634142078036,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078270,1634142078036,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078285,1634142078036,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078301,1634142078036,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078316,1634142078036,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078331,1634142078036,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078347,1634142078036,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078473,1634142078425,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078504,1634142078425,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078520,1634142078425,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078535,1634142078425,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078551,1634142078425,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078567,1634142078425,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078583,1634142078425,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078599,1634142078425,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078615,1634142078425,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078630,1634142078425,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078645,1634142078425,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078661,1634142078425,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078676,1634142078425,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078692,1634142078425,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078707,1634142078425,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078723,1634142078425,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078738,1634142078425,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078753,1634142078425,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078879,1634142078831,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078895,1634142078831,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078911,1634142078831,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078926,1634142078831,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078942,1634142078831,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078957,1634142078831,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078972,1634142078831,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142078988,1634142078831,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079004,1634142078831,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079020,1634142078831,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079035,1634142078831,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079051,1634142078831,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079067,1634142078831,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079083,1634142078831,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079099,1634142078831,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079115,1634142078831,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142079131,1634142078831,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142079146,1634142078831,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142079273,1634142079226,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079288,1634142079226,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079304,1634142079226,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079320,1634142079226,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079335,1634142079226,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079351,1634142079226,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079367,1634142079226,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142079383,1634142079226,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142079398,1634142079226,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142079414,1634142079226,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079430,1634142079226,'11','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079446,1634142079226,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079462,1634142079226,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079477,1634142079226,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079494,1634142079226,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079509,1634142079226,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079525,1634142079226,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079541,1634142079226,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079667,1634142079620,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079683,1634142079620,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079699,1634142079620,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079715,1634142079620,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079730,1634142079620,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079745,1634142079620,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079761,1634142079620,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079776,1634142079620,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079792,1634142079620,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079808,1634142079620,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079824,1634142079620,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079839,1634142079620,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079854,1634142079620,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079870,1634142079620,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079885,1634142079620,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079901,1634142079620,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079917,1634142079620,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142079933,1634142079620,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080059,1634142080011,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080074,1634142080011,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080090,1634142080011,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080106,1634142080011,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080122,1634142080011,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080138,1634142080011,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080154,1634142080011,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142080170,1634142080011,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142080186,1634142080011,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142080202,1634142080011,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080217,1634142080011,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080233,1634142080011,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080249,1634142080011,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080265,1634142080011,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080281,1634142080011,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080296,1634142080011,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080312,1634142080011,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080328,1634142080011,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080452,1634142080406,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080467,1634142080406,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080482,1634142080406,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080498,1634142080406,'4','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080514,1634142080406,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080530,1634142080406,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080545,1634142080406,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080561,1634142080406,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080577,1634142080406,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080593,1634142080406,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080609,1634142080406,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080624,1634142080406,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080640,1634142080406,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080656,1634142080406,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080672,1634142080406,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080687,1634142080406,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080703,1634142080406,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080720,1634142080406,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080843,1634142080797,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080859,1634142080797,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080874,1634142080797,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080889,1634142080797,'4','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080904,1634142080797,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080919,1634142080797,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080935,1634142080797,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080950,1634142080797,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080965,1634142080797,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080981,1634142080797,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142080996,1634142080797,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081012,1634142080797,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081028,1634142080797,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081043,1634142080797,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081059,1634142080797,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081074,1634142080797,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081090,1634142080797,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081106,1634142080797,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081231,1634142081184,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081247,1634142081184,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081262,1634142081184,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081278,1634142081184,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081294,1634142081184,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081309,1634142081184,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081325,1634142081184,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081341,1634142081184,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081358,1634142081184,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081372,1634142081184,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081388,1634142081184,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081404,1634142081184,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081419,1634142081184,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081434,1634142081184,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081450,1634142081184,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081465,1634142081184,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081480,1634142081184,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081496,1634142081184,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081621,1634142081575,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081637,1634142081575,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081652,1634142081575,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081668,1634142081575,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081683,1634142081575,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081699,1634142081575,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081714,1634142081575,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081730,1634142081575,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081746,1634142081575,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081761,1634142081575,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081777,1634142081575,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081792,1634142081575,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081808,1634142081575,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081824,1634142081575,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081840,1634142081575,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142081856,1634142081575,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142081872,1634142081575,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142081887,1634142081575,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082013,1634142081967,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082028,1634142081967,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082044,1634142081967,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082059,1634142081967,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082074,1634142081967,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082090,1634142081967,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082105,1634142081967,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082121,1634142081967,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082136,1634142081967,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082151,1634142081967,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082167,1634142081967,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082182,1634142081967,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082198,1634142081967,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082214,1634142081967,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082230,1634142081967,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082245,1634142081967,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082261,1634142081967,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082277,1634142081967,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082402,1634142082355,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082417,1634142082355,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082433,1634142082355,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082450,1634142082355,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082465,1634142082355,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082481,1634142082355,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082497,1634142082355,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082513,1634142082355,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082528,1634142082355,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082543,1634142082355,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082574,1634142082355,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082589,1634142082355,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082604,1634142082355,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082620,1634142082355,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082636,1634142082355,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082651,1634142082355,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082666,1634142082355,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082681,1634142082355,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142082807,1634142082760,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082822,1634142082760,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082837,1634142082760,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082853,1634142082760,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082869,1634142082760,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082884,1634142082760,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082900,1634142082760,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082916,1634142082760,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082932,1634142082760,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082949,1634142082760,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082964,1634142082760,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082980,1634142082760,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142082996,1634142082760,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083012,1634142082760,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083027,1634142082760,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083043,1634142082760,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083059,1634142082760,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083074,1634142082760,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083198,1634142083153,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083214,1634142083153,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083230,1634142083153,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083246,1634142083153,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083261,1634142083153,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083276,1634142083153,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083292,1634142083153,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083307,1634142083153,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083323,1634142083153,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083339,1634142083153,'10','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083354,1634142083153,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083370,1634142083153,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083385,1634142083153,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142083401,1634142083153,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142083417,1634142083153,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142083433,1634142083153,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142083448,1634142083153,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142083464,1634142083153,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142083589,1634142083542,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083604,1634142083542,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083620,1634142083542,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083636,1634142083542,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083652,1634142083542,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083667,1634142083542,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083683,1634142083542,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083699,1634142083542,'8','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083715,1634142083542,'9','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083731,1634142083542,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083746,1634142083542,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083762,1634142083542,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083778,1634142083542,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083794,1634142083542,'14','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083809,1634142083542,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083825,1634142083542,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083841,1634142083542,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083856,1634142083542,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083984,1634142083936,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142083999,1634142083936,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084015,1634142083936,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084031,1634142083936,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084047,1634142083936,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084063,1634142083936,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084079,1634142083936,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084094,1634142083936,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084110,1634142083936,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084126,1634142083936,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084141,1634142083936,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084157,1634142083936,'12','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084173,1634142083936,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084189,1634142083936,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084204,1634142083936,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084220,1634142083936,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142084236,1634142083936,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142084251,1634142083936,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142084375,1634142084328,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084389,1634142084328,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084406,1634142084328,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084421,1634142084328,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084437,1634142084328,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084453,1634142084328,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084469,1634142084328,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142084485,1634142084328,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142084500,1634142084328,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142084516,1634142084328,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084534,1634142084328,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084550,1634142084328,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084565,1634142084328,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084581,1634142084328,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084597,1634142084328,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084613,1634142084328,'16','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084629,1634142084328,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084645,1634142084328,'18','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084768,1634142084722,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084783,1634142084722,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084798,1634142084722,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084814,1634142084722,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084829,1634142084722,'5','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084845,1634142084722,'6','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084861,1634142084722,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084877,1634142084722,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084893,1634142084722,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084908,1634142084722,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084924,1634142084722,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084940,1634142084722,'12','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084955,1634142084722,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084971,1634142084722,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142084987,1634142084722,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085003,1634142084722,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085019,1634142084722,'17','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085034,1634142084722,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085162,1634142085114,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085178,1634142085114,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085194,1634142085114,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085210,1634142085114,'4','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085225,1634142085114,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085241,1634142085114,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085257,1634142085114,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085273,1634142085114,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085289,1634142085114,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085305,1634142085114,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085321,1634142085114,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085337,1634142085114,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085353,1634142085114,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085368,1634142085114,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085384,1634142085114,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085400,1634142085114,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085415,1634142085114,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085430,1634142085114,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085552,1634142085506,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085568,1634142085506,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085584,1634142085506,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085599,1634142085506,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085615,1634142085506,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085631,1634142085506,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085646,1634142085506,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085662,1634142085506,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085678,1634142085506,'9','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085694,1634142085506,'10','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085709,1634142085506,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085725,1634142085506,'12','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085741,1634142085506,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085756,1634142085506,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085773,1634142085506,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085788,1634142085506,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085804,1634142085506,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085819,1634142085506,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085945,1634142085897,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085961,1634142085897,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085976,1634142085897,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142085992,1634142085897,'4','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086008,1634142085897,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086024,1634142085897,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086040,1634142085897,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086055,1634142085897,'8','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086071,1634142085897,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086086,1634142085897,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086102,1634142085897,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086118,1634142085897,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086133,1634142085897,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086149,1634142085897,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086165,1634142085897,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086181,1634142085897,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086197,1634142085897,'17','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086213,1634142085897,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086339,1634142086291,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086354,1634142086291,'2','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086370,1634142086291,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086386,1634142086291,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086402,1634142086291,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086417,1634142086291,'6','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086433,1634142086291,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086449,1634142086291,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086465,1634142086291,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086481,1634142086291,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086497,1634142086291,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086514,1634142086291,'12','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086529,1634142086291,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086545,1634142086291,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086560,1634142086291,'15','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086576,1634142086291,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086592,1634142086291,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086608,1634142086291,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086735,1634142086687,'1','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086750,1634142086687,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086765,1634142086687,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086781,1634142086687,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086797,1634142086687,'5','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086813,1634142086687,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086828,1634142086687,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086843,1634142086687,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086859,1634142086687,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086874,1634142086687,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086890,1634142086687,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086906,1634142086687,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086922,1634142086687,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086937,1634142086687,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086953,1634142086687,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086968,1634142086687,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086984,1634142086687,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142086999,1634142086687,'18','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087122,1634142087076,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087138,1634142087076,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087154,1634142087076,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087170,1634142087076,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087186,1634142087076,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087202,1634142087076,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087217,1634142087076,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087233,1634142087076,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087249,1634142087076,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142087264,1634142087076,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087280,1634142087076,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087295,1634142087076,'12','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087310,1634142087076,'13','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087326,1634142087076,'14','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087342,1634142087076,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087357,1634142087076,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087373,1634142087076,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087389,1634142087076,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087514,1634142087467,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087530,1634142087467,'2','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087545,1634142087467,'3','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087562,1634142087467,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087577,1634142087467,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087593,1634142087467,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087609,1634142087467,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087624,1634142087467,'8','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087640,1634142087467,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087655,1634142087467,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087671,1634142087467,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087687,1634142087467,'12','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087702,1634142087467,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087718,1634142087467,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087733,1634142087467,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087753,1634142087467,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087769,1634142087467,'17','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087785,1634142087467,'18','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087911,1634142087863,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087927,1634142087863,'2','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087943,1634142087863,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087959,1634142087863,'4','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087974,1634142087863,'5','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142087991,1634142087863,'6','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088006,1634142087863,'7','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088022,1634142087863,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088037,1634142087863,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088052,1634142087863,'10','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088068,1634142087863,'11','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088083,1634142087863,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088099,1634142087863,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088115,1634142087863,'14','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088131,1634142087863,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088146,1634142087863,'16','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088161,1634142087863,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088177,1634142087863,'18','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088303,1634142088257,'1','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088318,1634142088257,'2','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088334,1634142088257,'3','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088350,1634142088257,'4','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088365,1634142088257,'5','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088380,1634142088257,'6','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088395,1634142088257,'7','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088411,1634142088257,'8','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088427,1634142088257,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088443,1634142088257,'10','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088459,1634142088257,'11','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088475,1634142088257,'12','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088491,1634142088257,'13','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088507,1634142088257,'14','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088523,1634142088257,'15','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088539,1634142088257,'16','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088555,1634142088257,'17','-1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142088571,1634142088257,'18','-3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104238,1634142104196,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104253,1634142104196,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104269,1634142104196,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104284,1634142104196,'4','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104300,1634142104196,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104330,1634142104196,'6','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104346,1634142104196,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104361,1634142104196,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104377,1634142104196,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104393,1634142104196,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104409,1634142104196,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104425,1634142104196,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104441,1634142104196,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104456,1634142104196,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104471,1634142104196,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104487,1634142104196,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104503,1634142104196,'17','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104519,1634142104196,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104645,1634142104598,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104660,1634142104598,'2','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104675,1634142104598,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104691,1634142104598,'4','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104707,1634142104598,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104722,1634142104598,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104738,1634142104598,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104753,1634142104598,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104769,1634142104598,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104785,1634142104598,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104801,1634142104598,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104816,1634142104598,'12','8',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104831,1634142104598,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104847,1634142104598,'14','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104862,1634142104598,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104878,1634142104598,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104893,1634142104598,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142104909,1634142104598,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105033,1634142104987,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105048,1634142104987,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105064,1634142104987,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105080,1634142104987,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105095,1634142104987,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105111,1634142104987,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105126,1634142104987,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105141,1634142104987,'8','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105156,1634142104987,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105172,1634142104987,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105187,1634142104987,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105203,1634142104987,'12','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105219,1634142104987,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105234,1634142104987,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105250,1634142104987,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105266,1634142104987,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105281,1634142104987,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105297,1634142104987,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105423,1634142105376,'1','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105439,1634142105376,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105454,1634142105376,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105471,1634142105376,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105486,1634142105376,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105502,1634142105376,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105518,1634142105376,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105534,1634142105376,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105550,1634142105376,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105565,1634142105376,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105581,1634142105376,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105596,1634142105376,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105612,1634142105376,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105628,1634142105376,'14','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105643,1634142105376,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105658,1634142105376,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105673,1634142105376,'17','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105688,1634142105376,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105812,1634142105766,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105827,1634142105766,'2','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105843,1634142105766,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105858,1634142105766,'4','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105874,1634142105766,'5','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105890,1634142105766,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105905,1634142105766,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105921,1634142105766,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105936,1634142105766,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105953,1634142105766,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105969,1634142105766,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142105984,1634142105766,'12','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106000,1634142105766,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106016,1634142105766,'14','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106032,1634142105766,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106048,1634142105766,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106064,1634142105766,'17','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106080,1634142105766,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106203,1634142106157,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106219,1634142106157,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106235,1634142106157,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106251,1634142106157,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106267,1634142106157,'5','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106283,1634142106157,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106298,1634142106157,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106314,1634142106157,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106329,1634142106157,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106345,1634142106157,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106361,1634142106157,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106377,1634142106157,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106393,1634142106157,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106409,1634142106157,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106424,1634142106157,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106440,1634142106157,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106456,1634142106157,'17','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106472,1634142106157,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106599,1634142106552,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106615,1634142106552,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106631,1634142106552,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106647,1634142106552,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106663,1634142106552,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106679,1634142106552,'6','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106694,1634142106552,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106710,1634142106552,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106726,1634142106552,'9','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106742,1634142106552,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106757,1634142106552,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106773,1634142106552,'12','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106790,1634142106552,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106805,1634142106552,'14','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106821,1634142106552,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106837,1634142106552,'16','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106853,1634142106552,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106869,1634142106552,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142106995,1634142106948,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107011,1634142106948,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107027,1634142106948,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107043,1634142106948,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107059,1634142106948,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107074,1634142106948,'6','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107090,1634142106948,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107106,1634142106948,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107122,1634142106948,'9','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107138,1634142106948,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107154,1634142106948,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107170,1634142106948,'12','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107185,1634142106948,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107201,1634142106948,'14','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107216,1634142106948,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107231,1634142106948,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107246,1634142106948,'17','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107262,1634142106948,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107386,1634142107340,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107401,1634142107340,'2','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107417,1634142107340,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107433,1634142107340,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107449,1634142107340,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107465,1634142107340,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107480,1634142107340,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107497,1634142107340,'8','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107513,1634142107340,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107528,1634142107340,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107544,1634142107340,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107560,1634142107340,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107575,1634142107340,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107591,1634142107340,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107607,1634142107340,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107623,1634142107340,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107638,1634142107340,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107654,1634142107340,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107779,1634142107732,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107795,1634142107732,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107810,1634142107732,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107825,1634142107732,'4','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107841,1634142107732,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107857,1634142107732,'6','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107873,1634142107732,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107889,1634142107732,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107904,1634142107732,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107920,1634142107732,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107936,1634142107732,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107952,1634142107732,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107968,1634142107732,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142107984,1634142107732,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108000,1634142107732,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108015,1634142107732,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108031,1634142107732,'17','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108046,1634142107732,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108172,1634142108124,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108187,1634142108124,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108202,1634142108124,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108218,1634142108124,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108233,1634142108124,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108249,1634142108124,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108265,1634142108124,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108281,1634142108124,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108296,1634142108124,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108312,1634142108124,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108327,1634142108124,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108342,1634142108124,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108358,1634142108124,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108374,1634142108124,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108389,1634142108124,'15','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108405,1634142108124,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108420,1634142108124,'17','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108436,1634142108124,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108562,1634142108514,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108577,1634142108514,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108592,1634142108514,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108608,1634142108514,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108624,1634142108514,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108640,1634142108514,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108655,1634142108514,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108671,1634142108514,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108687,1634142108514,'9','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108703,1634142108514,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108719,1634142108514,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108734,1634142108514,'12','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108750,1634142108514,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108766,1634142108514,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108782,1634142108514,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108798,1634142108514,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108814,1634142108514,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108830,1634142108514,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108954,1634142108908,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108970,1634142108908,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142108986,1634142108908,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109002,1634142108908,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109017,1634142108908,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109033,1634142108908,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109049,1634142108908,'7','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109065,1634142108908,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109081,1634142108908,'9','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109096,1634142108908,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109112,1634142108908,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109128,1634142108908,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109144,1634142108908,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109160,1634142108908,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109176,1634142108908,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109192,1634142108908,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109207,1634142108908,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109223,1634142108908,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109348,1634142109302,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109364,1634142109302,'2','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109380,1634142109302,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109395,1634142109302,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109411,1634142109302,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109427,1634142109302,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109443,1634142109302,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109458,1634142109302,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109474,1634142109302,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109489,1634142109302,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109505,1634142109302,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109521,1634142109302,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109537,1634142109302,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109553,1634142109302,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109569,1634142109302,'15','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109585,1634142109302,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109601,1634142109302,'17','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109617,1634142109302,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109742,1634142109695,'1','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109758,1634142109695,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109773,1634142109695,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109788,1634142109695,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109814,1634142109695,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109829,1634142109695,'6','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109845,1634142109695,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109860,1634142109695,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109876,1634142109695,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109892,1634142109695,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109908,1634142109695,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109924,1634142109695,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109939,1634142109695,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109954,1634142109695,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109970,1634142109695,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142109985,1634142109695,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110001,1634142109695,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110017,1634142109695,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110143,1634142110096,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110159,1634142110096,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110175,1634142110096,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110191,1634142110096,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110206,1634142110096,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110222,1634142110096,'6','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110238,1634142110096,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110254,1634142110096,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110270,1634142110096,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110285,1634142110096,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110301,1634142110096,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110317,1634142110096,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110333,1634142110096,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110349,1634142110096,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110365,1634142110096,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110381,1634142110096,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110397,1634142110096,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110413,1634142110096,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110536,1634142110490,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110551,1634142110490,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110567,1634142110490,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110582,1634142110490,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110597,1634142110490,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110613,1634142110490,'6','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110629,1634142110490,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110645,1634142110490,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110661,1634142110490,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110676,1634142110490,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110693,1634142110490,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110709,1634142110490,'12','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110724,1634142110490,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110740,1634142110490,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110755,1634142110490,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110771,1634142110490,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110787,1634142110490,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110803,1634142110490,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110930,1634142110882,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110945,1634142110882,'2','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110961,1634142110882,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110977,1634142110882,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142110993,1634142110882,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111009,1634142110882,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111025,1634142110882,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111041,1634142110882,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111056,1634142110882,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111072,1634142110882,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111088,1634142110882,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111104,1634142110882,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111119,1634142110882,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111135,1634142110882,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111151,1634142110882,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111167,1634142110882,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111183,1634142110882,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111199,1634142110882,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111325,1634142111278,'1','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111340,1634142111278,'2','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111356,1634142111278,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111371,1634142111278,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111387,1634142111278,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111403,1634142111278,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111418,1634142111278,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111434,1634142111278,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111449,1634142111278,'9','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111465,1634142111278,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111481,1634142111278,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111496,1634142111278,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111512,1634142111278,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111527,1634142111278,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111543,1634142111278,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111559,1634142111278,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142111575,1634142111278,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142111590,1634142111278,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142111713,1634142111667,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111729,1634142111667,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111745,1634142111667,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111761,1634142111667,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111776,1634142111667,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111792,1634142111667,'6','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111807,1634142111667,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111823,1634142111667,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111839,1634142111667,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111854,1634142111667,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111870,1634142111667,'11','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111886,1634142111667,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111902,1634142111667,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111918,1634142111667,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111934,1634142111667,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111949,1634142111667,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111964,1634142111667,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142111980,1634142111667,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112105,1634142112058,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112121,1634142112058,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112137,1634142112058,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112153,1634142112058,'4','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112169,1634142112058,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112184,1634142112058,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112201,1634142112058,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112216,1634142112058,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112232,1634142112058,'9','0',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112248,1634142112058,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112264,1634142112058,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112280,1634142112058,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112295,1634142112058,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112311,1634142112058,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112327,1634142112058,'15','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112343,1634142112058,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112358,1634142112058,'17','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112374,1634142112058,'18','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112500,1634142112452,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112515,1634142112452,'2','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112530,1634142112452,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112546,1634142112452,'4','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112562,1634142112452,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112578,1634142112452,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112594,1634142112452,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142112610,1634142112452,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142112625,1634142112452,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142112642,1634142112452,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112657,1634142112452,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112673,1634142112452,'12','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112689,1634142112452,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112705,1634142112452,'14','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112720,1634142112452,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112736,1634142112452,'16','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112751,1634142112452,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112766,1634142112452,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112890,1634142112843,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112905,1634142112843,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112921,1634142112843,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112937,1634142112843,'4','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112953,1634142112843,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112968,1634142112843,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142112983,1634142112843,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142112999,1634142112843,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142113015,1634142112843,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142113031,1634142112843,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113046,1634142112843,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113061,1634142112843,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113077,1634142112843,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113092,1634142112843,'14','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113108,1634142112843,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113123,1634142112843,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113139,1634142112843,'17','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113154,1634142112843,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113280,1634142113233,'1','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113296,1634142113233,'2','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113312,1634142113233,'3','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113328,1634142113233,'4','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113344,1634142113233,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113360,1634142113233,'6','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113375,1634142113233,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113391,1634142113233,'8','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113407,1634142113233,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113423,1634142113233,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113439,1634142113233,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113455,1634142113233,'12','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113471,1634142113233,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113486,1634142113233,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113502,1634142113233,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113518,1634142113233,'16','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113534,1634142113233,'17','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113549,1634142113233,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113674,1634142113627,'1','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113689,1634142113627,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113705,1634142113627,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113721,1634142113627,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113736,1634142113627,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113752,1634142113627,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113768,1634142113627,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113784,1634142113627,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113799,1634142113627,'9','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113814,1634142113627,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113830,1634142113627,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113845,1634142113627,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113861,1634142113627,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113877,1634142113627,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113892,1634142113627,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142113907,1634142113627,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142113923,1634142113627,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142113938,1634142113627,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114063,1634142114017,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114078,1634142114017,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114094,1634142114017,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114110,1634142114017,'4','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114126,1634142114017,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114142,1634142114017,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114157,1634142114017,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114173,1634142114017,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114188,1634142114017,'9','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114204,1634142114017,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114219,1634142114017,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114235,1634142114017,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114250,1634142114017,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114266,1634142114017,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114282,1634142114017,'15','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114298,1634142114017,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114313,1634142114017,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114330,1634142114017,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114455,1634142114408,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114471,1634142114408,'2','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114486,1634142114408,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114502,1634142114408,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114519,1634142114408,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114534,1634142114408,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114550,1634142114408,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114566,1634142114408,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114581,1634142114408,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114597,1634142114408,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114612,1634142114408,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114628,1634142114408,'12','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114643,1634142114408,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114660,1634142114408,'14','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114675,1634142114408,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114691,1634142114408,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114707,1634142114408,'17','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114722,1634142114408,'18','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114849,1634142114802,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114865,1634142114802,'2','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114881,1634142114802,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114896,1634142114802,'4','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114912,1634142114802,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114928,1634142114802,'6','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142114944,1634142114802,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114960,1634142114802,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114975,1634142114802,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142114990,1634142114802,'10','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115006,1634142114802,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115022,1634142114802,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115037,1634142114802,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115052,1634142114802,'14','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115068,1634142114802,'15','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115083,1634142114802,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115099,1634142114802,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115115,1634142114802,'18','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115240,1634142115192,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115255,1634142115192,'2','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115271,1634142115192,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115287,1634142115192,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115303,1634142115192,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115319,1634142115192,'6','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115334,1634142115192,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115350,1634142115192,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115366,1634142115192,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115382,1634142115192,'10','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115397,1634142115192,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115413,1634142115192,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115429,1634142115192,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115445,1634142115192,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115461,1634142115192,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115477,1634142115192,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115493,1634142115192,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115509,1634142115192,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115635,1634142115588,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115650,1634142115588,'2','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115666,1634142115588,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115682,1634142115588,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115698,1634142115588,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115714,1634142115588,'6','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115730,1634142115588,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115745,1634142115588,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115761,1634142115588,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142115777,1634142115588,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115793,1634142115588,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115808,1634142115588,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115824,1634142115588,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115840,1634142115588,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115855,1634142115588,'15','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115871,1634142115588,'16','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115887,1634142115588,'17','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142115903,1634142115588,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116029,1634142115982,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116044,1634142115982,'2','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116060,1634142115982,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116075,1634142115982,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116090,1634142115982,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116105,1634142115982,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116120,1634142115982,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116136,1634142115982,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116151,1634142115982,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116167,1634142115982,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116182,1634142115982,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116198,1634142115982,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116213,1634142115982,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116229,1634142115982,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116244,1634142115982,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116260,1634142115982,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116276,1634142115982,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116292,1634142115982,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116417,1634142116371,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116433,1634142116371,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116450,1634142116371,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116465,1634142116371,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116481,1634142116371,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116497,1634142116371,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116513,1634142116371,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116529,1634142116371,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116545,1634142116371,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116561,1634142116371,'10','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116577,1634142116371,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116593,1634142116371,'12','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116609,1634142116371,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116624,1634142116371,'14','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116640,1634142116371,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116656,1634142116371,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116671,1634142116371,'17','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116687,1634142116371,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116814,1634142116766,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116830,1634142116766,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116845,1634142116766,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116861,1634142116766,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116877,1634142116766,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116893,1634142116766,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116909,1634142116766,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116924,1634142116766,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116940,1634142116766,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116956,1634142116766,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142116972,1634142116766,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142116987,1634142116766,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117003,1634142116766,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117019,1634142116766,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117034,1634142116766,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117049,1634142116766,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117065,1634142116766,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117081,1634142116766,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117205,1634142117160,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117221,1634142117160,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117236,1634142117160,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117251,1634142117160,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117267,1634142117160,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117283,1634142117160,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117298,1634142117160,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117314,1634142117160,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117332,1634142117160,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117348,1634142117160,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117363,1634142117160,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117379,1634142117160,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117395,1634142117160,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117411,1634142117160,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117426,1634142117160,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117442,1634142117160,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117457,1634142117160,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117473,1634142117160,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117600,1634142117552,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117615,1634142117552,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117631,1634142117552,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117647,1634142117552,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117662,1634142117552,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117678,1634142117552,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117694,1634142117552,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117710,1634142117552,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117725,1634142117552,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117742,1634142117552,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142117757,1634142117552,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117773,1634142117552,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117788,1634142117552,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117804,1634142117552,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117820,1634142117552,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117835,1634142117552,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117851,1634142117552,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117867,1634142117552,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142117994,1634142117946,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118010,1634142117946,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118026,1634142117946,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118042,1634142117946,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118057,1634142117946,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118072,1634142117946,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118087,1634142117946,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118103,1634142117946,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118119,1634142117946,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118135,1634142117946,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118151,1634142117946,'11','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118167,1634142117946,'12','7',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118182,1634142117946,'13','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118198,1634142117946,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118214,1634142117946,'15','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118229,1634142117946,'16','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118244,1634142117946,'17','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118259,1634142117946,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118385,1634142118338,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118401,1634142118338,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118417,1634142118338,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118433,1634142118338,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118449,1634142118338,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118464,1634142118338,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118480,1634142118338,'7','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118495,1634142118338,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118511,1634142118338,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118526,1634142118338,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118543,1634142118338,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118558,1634142118338,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118574,1634142118338,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118590,1634142118338,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118605,1634142118338,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118621,1634142118338,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118637,1634142118338,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118653,1634142118338,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118784,1634142118731,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118800,1634142118731,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118816,1634142118731,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118832,1634142118731,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118847,1634142118731,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118863,1634142118731,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118878,1634142118731,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118894,1634142118731,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118910,1634142118731,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142118925,1634142118731,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118941,1634142118731,'11','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118957,1634142118731,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118973,1634142118731,'13','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142118989,1634142118731,'14','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119004,1634142118731,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119020,1634142118731,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119035,1634142118731,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119051,1634142118731,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119177,1634142119131,'1','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119192,1634142119131,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119208,1634142119131,'3','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119224,1634142119131,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119240,1634142119131,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119255,1634142119131,'6','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119271,1634142119131,'7','1',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119287,1634142119131,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119303,1634142119131,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119319,1634142119131,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1634142119334,1634142119131,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142119350,1634142119131,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142119365,1634142119131,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142119380,1634142119131,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142119395,1634142119131,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142119411,1634142119131,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142119426,1634142119131,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1634142119441,1634142119131,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0);
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
  PRIMARY KEY (`tournamentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,1614697043090,'BLUE LABEL CHALLENGE','GARY PLAYER COUNTRY  CLUB, SUN CITY','South Africa','2021-09-13 00:00:00','2021-10-16 00:00:00','9','9',2,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Blue_Label_Challenge_02 ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Blue_Label_Challenge_02 ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Blue_Label_Challenge_02 ','MENS',1),(2,1614697043090,'BLUE LABEL CHALLENGE','GARY PLAYER COUNTRY  CLUB, SUN CITY','South Africa','2021-09-13 00:00:00','2021-10-16 00:00:00','9','9',2,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Blue_Label_Challenge_02 ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Blue_Label_Challenge_02 ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Blue_Label_Challenge_02 ','MENS',1);
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
INSERT INTO `uiselected` VALUES (0,2,1634141299050,1633158206200,1,1614697043090,0,'0000-00-00 00:00:00');
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


#SELECT Par into varPar  FROM golf.courseholes sc where sc.Holenumber=iHoleid;
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

SELECT s.strokes into varStrokes FROM golf.shots s where s.shotsid =iSelectedID;

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
select 5 into retResult;
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

return '';

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
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
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
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
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
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid limit limitstart,limitCount;


when 12 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament  order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
              
when 13 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;
                
when 14 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;

when 15 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =1 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 16 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =1 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 17 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =2 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 18 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScoreFromSelRound(s.playerid,roundid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =2 and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(PlayerScore='E',0,PlayerScore) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

when 19 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament  and GetPlayerSelectedRoundHolesPlayed(s.idscore)>0 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) desc,cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) desc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 20 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
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

-- Dump completed on 2021-10-13 19:09:54
