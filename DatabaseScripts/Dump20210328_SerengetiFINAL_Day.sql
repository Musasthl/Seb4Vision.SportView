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
INSERT INTO `course` VALUES (1614697043090,'Serengeti Estates',18,36,36,72,3570,3526,7096,3904,3857,7761),(1616834683986,'Par3',18,27,27,54,1769,1597,3366,1935,1745,3680);
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
INSERT INTO `courseholes` VALUES (1,1614697043090,'Hole 1',1,4,0,409),(2,1614697043090,'Hole 2',2,4,0,349),(3,1614697043090,'Hole 3',3,5,0,619),(4,1614697043090,'Hole 4',4,4,0,407),(5,1614697043090,'Hole 5',5,3,0,187),(6,1614697043090,'Hole 6',6,4,0,421),(7,1614697043090,'Hole 7',7,4,0,441),(8,1614697043090,'Hole 8',8,5,0,527),(9,1614697043090,'Hole 9',9,3,0,210),(10,1614697043090,'Hole 10',10,4,0,381),(11,1614697043090,'Hole 11',11,5,0,551),(12,1614697043090,'Hole 12',12,3,0,198),(13,1614697043090,'Hole 13',13,4,0,449),(14,1614697043090,'Hole 14',14,4,0,412),(15,1614697043090,'Hole 15',15,3,0,155),(16,1614697043090,'Hole 16',16,5,0,574),(17,1614697043090,'Hole 17',17,4,0,343),(18,1614697043090,'Hole 18',18,4,0,443),(19,1616834683986,'Hole 1',1,3,0,409),(20,1616834683986,'Hole 2',2,3,0,349),(21,1616834683986,'Hole 3',3,3,0,619),(22,1616834683986,'Hole 4',4,3,0,407),(23,1616834683986,'Hole 5',5,3,0,187),(24,1616834683986,'Hole 6',6,3,0,421),(25,1616834683986,'Hole 7',7,3,0,441),(26,1616834683986,'Hole 8',8,3,0,527),(27,1616834683986,'Hole 9',9,3,0,210),(28,1616834683986,'Hole 10',10,3,0,381),(29,1616834683986,'Hole 11',11,3,0,551),(30,1616834683986,'Hole 12',12,3,0,206),(31,1616834683986,'Hole 13',13,3,0,449),(32,1616834683986,'Hole 14',14,3,0,412),(33,1616834683986,'Hole 15',15,3,0,167),(34,1616834683986,'Hole 16',16,3,0,574),(35,1616834683986,'Hole 17',17,3,0,343),(36,1616834683986,'Hole 18',18,3,0,443);
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
INSERT INTO `players` VALUES (-1,' BEN','FIRTH','2021-03-03 21:30:00','0000','','ENG','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1614872890756,'ADRIEL','POONAN','1995-10-11 00:00:00','POO004','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 76.49','4 EAGLES IN 61 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890758,'CHRIS','SWANEPOEL','1984-11-22 00:00:00','SWA010','','RSA','','',NULL,0,'Year Turned Pro: 2003','Stroke Average: 72.09','4 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890760,'DESNE','VAN DEN BERGH','1989-10-20 00:00:00','VAN186','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.45','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,17,'0',0),(1614872890763,'PIETER','MOOLMAN','1991-02-26 00:00:00','MOO018','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 72.61','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,17,'0',0),(1614872890764,'JARED','HARVEY','1988-08-06 00:00:00','HAR040','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 71.53','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,6,'0',0),(1614872890765,'MUSIWALO','NETHUNZWI','1989-04-24 00:00:00','NET003','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.72','Year Turned Pro: 2013','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890766,'JACQUES','KRUYSWIJK','1992-10-16 00:00:00','KRU019','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.13','62 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'49,375.00',2),(1614872890767,'JAKE','ROOS','1980-10-20 00:00:00','ROO003','','RSA','','',NULL,0,'2005','71.10','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'116,050.00',3),(1614872890768,'RUAN','KORB','1993-12-03 00:00:00','KOR003','','RSA','','',NULL,0,'2017','72.45','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,11,'0',0),(1614872890769,'JACO','PRINSLOO','1989-08-23 00:00:00','PRI022','','THE ELS CLUB, COPPERLEAF','','',NULL,0,'2012','71.57','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,10,'184,860.71',3),(1614872890770,'JAKE','REDMAN','1987-04-26 00:00:00','RED004','','RSA','','',NULL,0,'Year Turned Pro: 2010','TIED 2ND IN THE SUNSHINE TOUR ORDER OF MERIT','Stroke Average: 72.23','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,26,'106,850.00',3),(1614872890771,'ALEX','HAINDL','1983-02-03 00:00:00','HAI002','','RSA','','',NULL,0,'Year Turned Pro: 2000','Stroke Average: 71.72','3 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890772,'THRISTON','LAWRENCE','1996-12-03 00:00:00','LAW008','','RSA','','',NULL,0,'2014','70.61','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'100,650.00',3),(1614872890773,'OCKIE','STRYDOM','1985-01-08 00:00:00','STR011','','RSA','','',NULL,0,'2009','71.71','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1614872890774,'JACQUES','BLAAUW','1986-02-12 00:00:00','BLA019','','RSA','','',NULL,0,'Year Turned Pro: 2008','RANKED 414 IN THE OFFICIAL WORLD GOLF RANKINGS','4 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890776,'JEAN','HUGO','1975-12-03 00:00:00','HUG004','','RSA','','',NULL,0,'1999','70.76','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,22,'84,766.67',3),(1614872890777,'ADILSON','DA SILVA','1972-01-24 00:00:00','DAS001','','SANTA CRUZ AND BELEM NOVO','','',NULL,0,'1994','70.61','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil',0,20,'51,450.00',3),(1614872890778,'JJ','SENEKAL','1988-01-25 00:00:00','SEN004','','RSA','','',NULL,0,'Amateur','Stroke Average: 72.42','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0),(1614872890779,'JAMES','KINGSTON','1965-11-30 00:00:00','KIN001','','RSA','','',NULL,0,'1988','71.40','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,24,'0',0),(1614872890780,'RHYS','ENOCH','1988-06-16 00:00:00','ENO002','','WAL','','',NULL,0,'Year Turned Pro: 2012','Residence: Cardiff, Wales','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales',0,NULL,'158,500.00',1),(1614872890781,'HENNIE','O\'KENNEDY','1996-09-02 00:00:00','OKE004','','RSA','','',NULL,0,'Amateur','Stroke Average: 73.82','63 LOWEST ROUND SCORE ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,26,'0',0),(1614872890782,'LUKE','BROWN','1998-06-02 00:00:00','BRO037','','RSA','','',NULL,0,'Year Turned Pro: 2018','Stroke Average: 72.63','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,2,'0',0),(1614872890783,'MALCOLM','MITCHELL','1994-12-11 00:00:00','MIT007','','RSA','','',NULL,0,' 2019','70.63','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,15,'0',0),(1614872890784,'TRISTEN','STRYDOM','1997-02-21 00:00:00','STR026','','RSA','','',NULL,0,'2017','72.15','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'83,375.00',3),(1614872890785,'HEINRICH','BRUINERS','1987-10-07 00:00:00','BRU006','','DAINFERN CC/OUBAAI','','',NULL,0,'2006','72.69','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1614872890786,'LYLE','ROWE','1987-06-13 00:00:00','ROW005','','RSA','','',NULL,0,'2009','72.11','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,12,'0',0),(1614872890787,'DEAN','BURMESTER','1989-06-02 00:00:00','BUR025','','RSA','','',NULL,0,'Year Turned Pro: 2010','7 TOURNAMENT WINS','RANKED 183 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'97,500.00',1),(1614872890788,'ZANDER','LOMBARD','1995-01-18 00:00:00','LOM010','','RSA','','',NULL,0,'Year Turned Pro: 2014','RANKED 371 IN THE OFFICIAL WORLD GOLF RANKINGS','2018/19 SUNSHINE TOUR WINNER','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890789,'JACO','AHLERS','1982-11-19 00:00:00','AHL001','','RSA','','',NULL,0,'Year Turned Pro: 2006','RANKED 280 IN THE OFFICIAL WORLD GOLF RANKINGS','9 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,13,'0',0),(1614872890790,'DARREN','FICHARDT','1975-05-13 00:00:00','FIC002','','RSA','','',NULL,0,'Year Turned Pro: 1994','18 TOURNAMENT WINS','RANKED 236 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890791,'KEENAN','DAVIDSE','1989-05-10 00:00:00','DAV019','','RSA','','',NULL,0,'Year Turned Pro: 2009','Stroke Average: 72.00','AVERAGES 4 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1614872890792,'LOUIS','DE JAGER','1987-03-30 00:00:00','DEJ006','','RSA','','',NULL,0,'Year Turned Pro: 2008','5 TOURNAMENT WINS','RANKED 322 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890794,'NEIL','SCHIETEKAT','1984-01-31 00:00:00','SCH044','','RSA','','',NULL,0,'2006','71.17','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,9,'111,400.00',3),(1614872890795,'WILCO','NIENABER','2000-04-07 00:00:00','NIE008','','RSA','','',NULL,0,'Amateur','Stroke Average: 70.06','AVERAGES 5 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890796,'DYLAN','NAIDOO','1992-02-21 00:00:00','NAI013','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 71.91','65 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890798,'MERRICK','BREMNER','1986-03-26 00:00:00','BRE005','','RSA','','',NULL,0,'Year Turned Pro: 2005','Stroke Average: 71.62','7 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890799,'SHAUN','NORRIS','1982-05-14 00:00:00','NOR008','','RSA','','',NULL,0,'Year Turned Pro: 2002','2 TOURNAMENT WINS','RANKED 111 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890800,'JAYDEN','SCHAPER','2001-03-15 00:00:00','SCH079','','RSA','','',NULL,0,'Amateur','Stroke Average: 70.43','8 EAGLES IN 35 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890801,'GARRICK','HIGGO','1999-05-12 00:00:00','HIG006','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 70.10','10 EAGLES IN 63 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890802,'TOTO','THIMBA JNR','1986-02-10 00:00:00','THI001','','RSA','','',NULL,0,'Year Turned Pro: 2007','Stroke Average: 72.83','63 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890803,'MATIAS','CALDERON','1991-12-18 00:00:00','CAL012','','CHL','','',NULL,0,'Year Turned Pro: 2016','Stroke Average: 72.37','Residence: Region Metropolitana (Chile)','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Chile',0,NULL,'0',0),(1614872890804,'ANDRE','NEL','1995-05-31 00:00:00','NEL019','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.88','26 EAGLES IN 180 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,5,'0',0),(1614872890808,'MJ','VILJOEN','1995-05-08 00:00:00','VIL011','','KINGSWOOD GOLF ESTATE','','',NULL,0,'2014','71.94','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,9,'70,075.00',3),(1614872890810,'HENNIE','DU PLESSIS','1996-10-14 00:00:00','DUP029','','RSA','','',NULL,0,'2015','71.34','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'54,500.00',2),(1614872890812,'CHRISTIAAN','BASSON','1984-04-30 00:00:00','BAS007','','RSA','','',NULL,0,'2007','71.39','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0),(1614872890813,'LUKE','JERLING','1992-07-10 00:00:00','JER001','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.58','30 EAGLES IN 212 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890814,'STEVE','SURRY','1982-02-11 00:00:00','SUR001','','ENG','','',NULL,0,'Year Turned Pro: 2003','RANKED 432 IN THE OFFICIAL WORLD GOLF RANKINGS','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England',0,25,'0',0),(1614872890815,'DANIEL','GREENE','1985-08-05 00:00:00','GRE022','','BOSCH HOEK GOLF CLUB','','',NULL,0,' 2010','71.73','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,14,'0',0),(1614872890816,'JAMES','DU PREEZ','1995-10-13 00:00:00','DUP028','','RSA','','',NULL,0,'2018','71.67','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,22,'0',0),(1614872890817,'RUAN','DE SMIDT','1989-10-25 00:00:00','DES005','','RSA','','',NULL,0,'Year Turned Pro: 2011','4 TOURNAMENT WINS','60 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890818,'STEPHEN','FERREIRA','1991-12-06 00:00:00','FER028','','POR','','',NULL,0,'2011','72.33','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal',0,NULL,'0',0),(1614872890819,'DEON','GERMISHUYS','1999-10-22 00:00:00','GER017','','RSA','','',NULL,0,'2019','70.74','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,12,'0',0),(1614872890820,'ANTHONY','MICHAEL','1985-08-22 00:00:00','MIC009','','RSA','','',NULL,0,'2009',' 71.64','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,8,'60,166.67',3),(1614872890821,'KYLE','BARKER','1998-02-11 00:00:00','BAR054','','RSA','','',NULL,0,'2017','71.96','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0),(1614872890822,'DOUG','McGUIGAN','1970-08-07 00:00:00','MCG001','','SCO','','',NULL,0,'1989','71.80','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland',0,NULL,'0',0),(1614872890823,'CALLUM','MOWAT','1992-02-11 00:00:00','MOW001','','RSA','','',NULL,0,'Year Turned Pro: 2014','Stroke Average: 72.41','61 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890824,'CJ','DU PLESSIS','1992-02-04 00:00:00','DUP022','','RSA','','',NULL,0,' 2013',' 72.40','4 ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,24,'0',0),(1614872890825,'ESTIAAN','CONRADIE','1997-10-12 00:00:00','CON007','','RSA','','',NULL,0,'Amateur','Stroke Average: 71.75','AVERAGES 4 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,23,'0',0),(1614872890826,'FREDRIK','FROM','1989-02-08 00:00:00','FRO006','','SWE','','',NULL,0,'2016','71.13','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',2,5,'0',0),(1614872890828,'CLINTON','GROBLER','1995-05-09 00:00:00','GRO026','','RSA','','',NULL,0,'','72.38','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,16,'0',0),(1614872890830,'ROURKE','VAN DER SPUY','1990-01-11 00:00:00','VAN178','','RSA','','',NULL,0,'Year Turned Pro: 2012','Stroke Average: 72.01','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890831,'ULRICH','VAN DEN BERG','1975-01-13 00:00:00','VAN060','','RSA','','',NULL,0,'Year Turned Pro: 1999','Stroke Average: 70.98','7 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890832,'MARTIN','ROHWER','1993-08-24 00:00:00','ROH001','','RSA','','',NULL,0,'2016','70.64','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,7,'128,450.00',3),(1614872890833,'HENNIE','OTTO','1976-06-25 00:00:00','OTT002','','','','',NULL,0,'1997',' 70.56','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'118,000.00',3),(1614872890835,'MICHAEL','PALMER','1989-11-17 00:00:00','PAL008','','RSA','','',NULL,0,'Year Turned Pro: 2015','Stroke Average: 72.05','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,1,'0',0),(1614872890836,'RUAN','CONRADIE','1995-08-08 00:00:00','CON004','','RSA','','',NULL,0,'','71.48','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,3,'0',0),(1614872890837,'KEITH','HORNE','1971-06-09 00:00:00','HOR002','','RSA','','',NULL,0,'Year Turned Pro: 1996','9 TOURNAMENT WINS','RANKED 517 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890838,'JACO','VAN ZYL','1979-02-23 00:00:00','VAN062','','RSA','','',NULL,0,'2001','70.33','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890839,'TREVOR','FISHER JNR','1979-06-08 00:00:00','FIS005','','RSA','','',NULL,0,'2002','71.10','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',3,NULL,'56,825.00',3),(1614872890840,'OLIVER','BEKKER','1984-12-11 00:00:00','BEK004','','RSA','','',NULL,0,'2008','71.18','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,3,'68,760.71',3),(1614872890841,'JC','RITCHIE','1994-02-24 00:00:00','RIT004','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.26','2019/20 SUNSHINE TOUR ORDER OF MERIT WINNER','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890842,'JBE\'','KRUGER','1986-06-23 00:00:00','KRU013','','RSA','','',NULL,0,'2007','70.81','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,4,'158,500.00',3),(1615544865998,'MICHAEL','HOLLICK','2021-03-12 10:27:48','HOL016','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 72.59','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'0',0),(1615544868676,'DANIEL','VAN TONDER','2021-03-12 10:27:49','VAN162','','RSA','','',NULL,0,'Year Turned Pro: 2011','7 TOURNAMENT WINS','Stroke Average: 70.63','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'97,500.00',1),(1615544869184,'THANDA','MAVUNDLA','2021-03-12 10:27:49','MAV004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544869514,'ANDRE','BOSSERT','2021-03-12 10:27:49','BOS001','','SUI','','',NULL,0,'Year Turned Pro: 1989','Stroke Average: 71.91','64 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1615544869856,'PEETIE','VAN DER MERWE','2021-03-12 10:27:50','VAN283','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,4,'0',0),(1615544870238,'JASON','ROETS','2021-03-12 10:27:50','ROE009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544870433,'ROBERTO','LUPINI','2021-03-12 10:27:50','LUP002','','RSA','','',NULL,0,'Year Turned Pro: 2008','Stroke Average: 74.14','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,7,'0',0),(1615544870564,'KEAGAN','THOMAS','2021-03-12 10:27:51','THO041','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0),(1615544870980,'PAUL','BOSHOFF','2021-03-12 10:27:51','BOS015','','RSA','','',NULL,0,'AVERAGES 3 BIRDIES PER ROUND','Stroke Average: 73.58','63 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1615544871120,'WALLIE','COETSEE','2021-03-12 10:27:51','COE001','','RSA','','',NULL,0,'Year Turned Pro: 1992','Stroke Average: 72.14','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871281,'COERT','GROENEWALD','2021-03-12 10:27:51','GRO014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,25,'0',0),(1615544871438,'WYNAND','DINGLE','2021-03-12 10:27:51','DIN004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871565,'HAYDEN','GRIFFITHS','2021-03-12 10:27:51','GRI013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871744,'MADALITSO','MUTHIYA','2021-03-12 10:27:51','MUT002','','ZAM','','',NULL,0,' 2006','71.69','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,NULL,'0',0),(1615544871830,'JASON','SMITH','2021-03-12 10:27:52','SMI059','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,13,'0',0),(1615544871971,'SHALAN','GOVENDER','2021-03-12 10:27:52','GOV005','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 78.61','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544872087,'STUART','SMITH','2021-03-12 10:27:52','SMI046','','BOT','','',NULL,0,'Year Turned Pro: 2011','AVERAGES 3 BIRDIES PER ROUND','Stroke Average: 73.98','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Botswana ',0,NULL,'0',0),(1615544872221,'BYRON','COETZEE','2021-03-12 10:27:52','COE034','','RSA','','',NULL,0,'2 EAGLES IN 17 ROUNDS','Stroke Average: 72.94','AVERAGE 4 BIRDIES PER ROUND ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544872355,'PHILIP','GEERTS','2021-03-12 10:27:52','GEE003','','ITA','','',NULL,0,'2017','72.63','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1615544872499,'MARTHIN','SCHEEPERS','2021-03-12 10:27:53','SCH060','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544873098,'RUPERT','KAMINSKI','2021-03-12 10:27:53','KAM014','','RSA','','',NULL,0,'66 LOWEST ROUND SCORE','Stroke Average: 73.26','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544873364,'RICHIE','O\'DONOVAN','2021-03-12 10:27:53','ODO004','','IRL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Ireland ',0,18,'0',0),(1615544873568,'ANTON','HAIG','2021-03-12 10:27:53','HAI003','','RSA','','',NULL,0,'2004','71.93','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,10,'0',0),(1615544873866,'BEN','FIRTH','2021-03-12 10:27:54','FIR001','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1615544874093,'NIKHIL','RAMA','2021-03-12 10:27:54','RAM010','','RSA','','',NULL,0,'2020','72.54','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1615544874284,'LUCA','FILIPPI','2021-03-12 10:27:54','FIL002','','RSA','','',NULL,0,'','72.65','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,15,'0',0),(1615544874469,'ALLISTER','DE KOCK','2021-03-12 10:27:54','DEK006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544874666,'VAUGHN','GROENEWALD','2021-03-12 10:27:54','GRO007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544874872,'JACQUES','DE VILLIERS','2021-03-12 10:27:55','DEV012','','RSA','','',NULL,0,'2013','72.61','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,16,'0',0),(1615544875052,'DWAYNE','BASSON','2021-03-12 10:27:55','BAS013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875221,'QUINTIN','WILSNACH','2021-03-12 10:27:55','WIL054','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875393,'LOUIS','ALBERTSE','2021-03-12 10:27:55','ALB009','','RSA','','',NULL,0,'2018','71.76','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,8,'0',0),(1615544875560,'THERION','NEL','2021-03-12 10:27:55','NEL018','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875693,'TEAGHAN','GAUCHE','2021-03-12 10:27:55','GAU003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,23,'0',0),(1615544875887,'GIDEON','VAN DER VYVER','2021-03-12 10:27:56','VAN285','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876026,'GREG','BENTLEY','2021-03-12 10:27:56','BEN018','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544876163,'THABI','NGCOBO','2021-03-12 10:27:56','NGC001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876319,'MAKHETHA','MAZIBUKO','2021-03-12 10:27:56','MAZ001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876474,'STEFAN','WEARS-TAYLOR','2021-03-12 10:27:56','WEA006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876644,'JEAN-PAUL','STRYDOM','2021-03-12 10:27:56','STR023','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,2,'0',0),(1615544876782,'BROOKLIN','BAILEY','2021-03-12 10:27:57','BAI009','','USA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',0,NULL,'0',0),(1615544876969,'CLAYTON','MANSFIELD','2021-03-12 10:27:57','MAN033','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,14,'0',0),(1615544877096,'ANDREW','VAN DER KNAAP','2021-03-12 10:27:57','VAN309','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544877277,'ANDRE','DE DECKER','2021-03-12 10:27:57','DED003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544877461,'SAMBA','NIANG','2021-03-12 10:27:57','NIA001','','SEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Senegal ',0,NULL,'0',0),(1615544877593,'MOHAMMAD','MANDHU','2021-03-12 10:27:57','MAN021','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544877783,'SEAN','BRADLEY','2021-03-12 10:27:58','BRA020','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1615544877969,'JACK','DUTHIE','2021-03-12 10:27:58','DUT020','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'0',0),(1615544878203,'JURAN','DREYER','2021-03-12 10:27:58','DRE012','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878446,'ALPHEUS','KELAPILE','2021-03-12 10:27:58','KEL014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878653,'EVANCE','VUKEYA','2021-03-12 10:27:58','VUK001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878830,'MATTHEW','SPACEY','2021-03-12 10:28:00','SPA005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880189,'SIYANDA','MWANDLA','2021-03-12 10:28:00','MWA006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880229,'RICHARD','JOUBERT','2021-03-12 10:28:00','JOU009','','RSA','','',NULL,0,'','73.09','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880237,'THABANG','SIMON','2021-03-12 10:28:00','SIM006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544880253,'ALBERT','VENTER','2021-03-12 10:28:00','VEN017','','RSA','','',NULL,0,'2017','72.48','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0),(1615544880258,'BREYTEN','MEYER','2021-03-12 10:28:00','MEY014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880263,'DAVID','MCINTYRE','2021-03-12 10:28:00','MCI006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880266,'DESVONDE','BOTES','2021-03-12 10:28:00','BOT002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880274,'JASON','DIAB','2021-03-12 10:28:00','DIA002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544880277,'ANDREW','WILLIAMSON','2021-03-12 10:28:00','WIL063','','RSA','','',NULL,0,NULL,'74.78','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880280,'DERICK','PETERSEN','2021-03-12 10:28:00','PET007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880283,'DAYNE','MOORE','2021-03-12 10:28:00','MOO015','','ZAM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,NULL,'0',0),(1615544880289,'BRADFORD','VAUGHAN','2021-03-12 10:28:00','VAU001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880293,'PH','MCINTYRE','2021-03-12 10:28:00','MCI004','','RSA','','',NULL,0,'AVERAGES 3 BIRDIES PER ROUND','Stroke Average: 72.72','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880296,'AUBREY','BECKLEY','2021-03-12 10:28:00','BEC008','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880298,'TUMELO','MOLLOYI','2021-03-12 10:28:00','MOL019','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880301,'RIEKUS','NORTJE','2021-03-12 10:28:00','NOR017','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,11,'0',0),(1615544880304,'JAMES','PENNINGTON','2021-03-12 10:28:00','PEN002','','SWZ','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,NULL,'0',0),(1615544880310,'JACQUIN','HESS','2021-03-12 10:28:00','HES004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880313,'CAMERON','MORALEE','2021-03-12 10:28:00','MOR025','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880316,'SHAAHID','MAHMED','2021-03-12 10:28:00','MAH017','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544880319,'TRAVIS','LADNER','2021-03-12 10:28:00','LAD003','','RSA','','',NULL,1,NULL,NULL,'','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880326,'CHRIS','DAVISON','2021-03-12 10:28:00','DAV001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880329,'IRVIN','MAZIBUKO','2021-03-12 10:28:00','MOS003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616062258291,'BENJAMIN','FOLLETT-SMITH','2021-03-18 10:10:58','FOL001','','ZIM','','',NULL,0,'2018','71.93','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1616062258302,'JAMES','KAMTE','2021-03-18 10:10:58','KAM005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616062258322,'LEON','VISSER','2021-03-18 10:10:58','VIS015','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616076251413,'COLIN','NEL','2021-03-18 14:04:11','NEL009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616076251428,'DANIEL','NDUVA','2021-03-18 14:04:11','NDU001','','KEN','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1616076251432,'MARK','WILLIAMS','2021-03-18 14:04:11','WIL030','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1616076251436,'FREDDY','SCHOTT','2021-03-18 14:04:11','SCH098','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',1,6,'0',0),(1616504678203,'CHRISTIAAN','MAAS','2021-03-23 13:04:38','MAA006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,20,'0',0),(1616583784429,'KYLE','McCLATCHIE','2021-03-24 11:03:04','MCC023','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',3,1,'0',0),(1616835065472,'Joanne','Newell','2021-03-27 08:51:05','NOR004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1616835065562,'Dirk','Cloete','2021-03-27 08:51:05','CLO005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1616835065568,'Dornay','Lombard','2021-03-27 08:51:05','LOM011','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,NULL,'0',0),(1616835065574,'Sonia','Schoeman','2021-03-27 08:51:05','SCH082','','RSA','','',NULL,1,NULL,NULL,NULL,'','','',0,NULL,'0',0);
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurnameIfDuplicate','SELECT GetPlayerSurnameIncludeInitialIfDupInTeamFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT metres FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 9,18;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 0,9) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(18,'SPHoles10to18Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 9,18) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(19,'SPHoles1to9StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(20,'SPHoles10to18StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'STCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(32,'SPPosition','SELECT GetPlayerSelectedTournamentPosition(u.SelectedScoreEntry) FROM golf.uiselected u;'),(33,'SPCurrentHoleShot','SELECT s.strokes  CurrentShooting FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(34,'SRDescription','SELECT r.Description FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(35,'STDescription','SELECT t.description FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(36,'STLogo1','SELECT t.logo1 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(37,'STLogo2','SELECT t.logo2 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(38,'STLogo3','SELECT t.logo3 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(39,'SPStrokesSelectedHole','SELECT s.strokes FROM golf.shots s,golf.uiselected u where s.shotsid = u.SelectedHole;'),(40,'SPStrokeSelectedHoleDescription','SELECT GetPlayerSelectedStrokesFromHoleParDescription(u.SelectedHole) StrokeDescription FROM golf.uiselected u;'),(41,'SPStrokeSelectedHoleFlag','SELECT if(f.shotsflagid=s.strokes,GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(42,'SPHoles1to9StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 1 and 9) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(43,'SPHoles10to18StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 10 and 18) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(44,'STCourseDescription','SELECT sc.Description FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(159,'STLeadersScore','call GetTournamentSelectedLeaderBoard(6,0,1);'),(160,'SPTournamentScoreAtSelectedHole','SELECT 	GetPlayerSelectedTournamentScoreFromSelectedHole(s.playerid) ScoreAtHole FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry;'),(161,'SPCountryFlag','SELECT GetPlayerCountryFlagFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(177,'SPBio1','select c.Bio1 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(178,'SPBio2','select c.Bio2 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(179,'SPBio3','select c.Bio3 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(180,'SPRoundTotalPar','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),\'\') TotalPar FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(181,'STLeaderBoardPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,10);'),(182,'STLeaderBoardPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,10,1);'),(183,'STLeaderBoardPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,11,9);'),(184,'STLeaderBoardPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,20,1);'),(185,'STLeaderBoardPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,21,9);'),(186,'STLeaderBoardPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,30,1);'),(187,'STLeaderBoardPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,31,9);'),(188,'STLeaderBoardPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,40,1);'),(189,'STLeaderBoardPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,41,9);'),(190,'STLeaderBoardPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,50,1);'),(191,'STLeaderBoardPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,51,9);'),(192,'STLeaderBoardPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,60,1);'),(193,'STLeaderBoardPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,61,9);'),(194,'STLeaderBoardPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,70,1);'),(195,'STLeaderBoardPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,71,9);'),(196,'STLeaderBoardPage1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,0,10);'),(197,'STLeaderBoardPage2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,10,1);'),(198,'STLeaderBoardPage2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,11,9);'),(199,'STLeaderBoardPage3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,20,1);'),(200,'STLeaderBoardPage3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,21,9);'),(201,'STLeaderBoardPage4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,30,1);'),(202,'STLeaderBoardPage4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,31,9);'),(203,'STLeaderBoardPage5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,40,1);'),(204,'STLeaderBoardPage5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,41,9);'),(205,'STLeaderBoardPage6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,50,1);'),(206,'STLeaderBoardPage6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,51,9);'),(207,'STLeaderBoardPage7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,60,1);'),(208,'STLeaderBoardPage7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,61,9);'),(209,'STLeaderBoardPage8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,70,1);'),(210,'STLeaderBoardPage8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,71,9);'),(211,'SPRound1TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(212,'SPRound2TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(213,'SPRound3TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(214,'SPRound4TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),\'\'),\'\') Round4Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(215,'STLeadersPage1Position','SELECT s.GraphicPos FROM golf.score s,golf.uiselected u where tournamentid = u.SelectedTournament  group by playerid order by sum((GetPlayerSelectedRoundHolesPlayedStrokes(idscore)-GetPlayerSelectedRoundHolesPlayedPar(idscore))),  cast(if(GetPlayerSelectedRoundScore(s.idscore)=\'E\',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,  GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,(`GetPlayerNameAndSurnameFromID`(s.Playerid)) asc limit 10;'),(216,'SPStrokeSelectedHoleFlagForBIRDIE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 4 when 4 then 3 when 3 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (4-Par) when 4 then (3-Par) when 3 then (2-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(217,'SPStrokeSelectedHoleFlagForEAGLE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 3 when 4 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (3-Par) when 4 then (2-Par)  end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(218,'SPStrokeSelectedHoleFlagForPAR','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 5 when 4 then 4 when 3 then 3 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes(0),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(219,'SPStrokeSelectedHoleFlagForBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (6-Par) when 4 then (5-Par) when 3 then (4-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(220,'SPStrokeSelectedHoleFlagForDOUBLEBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (7-Par) when 4 then (6-Par) when 3 then (5-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(221,'SPParStrokeAfterParBOGEY','SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end ForBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(222,'SPParStrokeAfterParDOUBLEBOGEY','SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end ForDoubleBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(223,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(224,'STLeaderBoardMiniPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,5);'),(225,'STLeaderBoardMiniPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,6,1);'),(226,'STLeaderBoardMiniPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,7,4);'),(227,'STLeaderBoardMiniPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,11,1);'),(228,'STLeaderBoardMiniPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,12,4);'),(229,'STLeaderBoardMiniPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,16,1);'),(230,'STLeaderBoardMiniPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,17,20);'),(231,'STLeaderBoardMiniPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,21,1);'),(232,'STLeaderBoardMiniPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,22,4);'),(233,'STLeaderBoardMiniPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,26,1);'),(234,'STLeaderBoardMiniPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,27,4);'),(235,'STLeaderBoardMiniPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,31,1);'),(236,'STLeaderBoardMiniPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,32,4);'),(237,'STLeaderBoardMiniPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,36,1);'),(238,'STLeaderBoardMiniPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,37,4);'),(239,'STLeaderBoardRound1Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,0,10);'),(240,'STLeaderBoardRound1Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,10,1);'),(241,'STLeaderBoardRound1Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,11,9);'),(242,'STLeaderBoardRound1Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,20,1);'),(243,'STLeaderBoardRound1Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,21,9);'),(244,'STLeaderBoardRound1Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,30,1);'),(245,'STLeaderBoardRound1Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,31,9);'),(246,'STLeaderBoardRound1Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,40,1);'),(247,'STLeaderBoardRound1Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,41,9);'),(248,'STLeaderBoardRound1Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,50,1);'),(249,'STLeaderBoardRound1Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,51,9);'),(250,'STLeaderBoardRound1Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,60,1);'),(251,'STLeaderBoardRound1Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,61,9);'),(252,'STLeaderBoardRound1Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,70,1);'),(253,'STLeaderBoardRound1Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,71,9);'),(254,'STLeaderBoardRound2Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,0,10);'),(255,'STLeaderBoardRound2Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,10,1);'),(256,'STLeaderBoardRound2Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,11,9);'),(257,'STLeaderBoardRound2Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,20,1);'),(258,'STLeaderBoardRound2Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,21,9);'),(259,'STLeaderBoardRound2Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,30,1);'),(260,'STLeaderBoardRound2Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,31,9);'),(261,'STLeaderBoardRound2Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,40,1);'),(262,'STLeaderBoardRound2Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,41,9);'),(263,'STLeaderBoardRound2Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,50,1);'),(264,'STLeaderBoardRound2Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,51,9);'),(265,'STLeaderBoardRound2Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,60,1);'),(266,'STLeaderBoardRound2Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,61,9);'),(267,'STLeaderBoardRound2Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,70,1);'),(268,'STLeaderBoardRound2Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,71,9);'),(269,'STLeaderBoardOVERALLPage1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,0,10);'),(270,'STLeaderBoardOVERALLPage2Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,10,1);'),(271,'STLeaderBoardOVERALLPage2ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,11,9);'),(272,'STLeaderBoardOVERALLPage3Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,20,1);'),(273,'STLeaderBoardOVERALLPage3ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,21,9);'),(274,'STLeaderBoardOVERALLPage4Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,30,1);'),(275,'STLeaderBoardOVERALLPage4ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,31,9);'),(276,'STLeaderBoardOVERALLPage5Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,40,1);'),(277,'STLeaderBoardOVERALLPage5ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,41,9);'),(278,'STLeaderBoardOVERALLPage6Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,50,1);'),(279,'STLeaderBoardOVERALLPage6ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,51,9);'),(280,'STLeaderBoardOVERALLPage7Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,60,1);'),(281,'STLeaderBoardOVERALLPage7ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,61,9);'),(282,'STLeaderBoardOVERALLPage8Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,70,1);'),(283,'STLeaderBoardOVERALLPage8ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,71,9);'),(289,'STLeaderBoardLeaderString','call GetTournamentSelectedLeaderBoard(4,0,1);'),(290,'SPRoundTotalParFlag',' SELECT  if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,case when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) < sc.Par then 2 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) = sc.Par then 3 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) > sc.Par then 5 end,\'\') TotalParFlag  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(291,'SPHoles1to9StrokesTotalFlag','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',case when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) < sc.FrontPar then 2 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) = sc.FrontPar then 3 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) > sc.FrontPar then 5 end ) ScoreTotal  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(292,'SPHoles10to18StrokesTotalFlag','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',case when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) < sc.BackPar then 2 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) = sc.BackPar then  3 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) > sc.BackPar then  5 end ) ScoreTotal  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(293,'STLeaderBoardTOTALSPage1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,0,10);'),(294,'STLeaderBoardTOTALSPage2Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,10,1);'),(295,'STLeaderBoardTOTALSPage2ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,11,9);'),(296,'STLeaderBoardTOTALSPage3Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,20,1);'),(297,'STLeaderBoardTOTALSPage3ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,21,9);'),(298,'STLeaderBoardTOTALSPage4Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,30,1);'),(299,'STLeaderBoardTOTALSPage4ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,31,9);'),(300,'STLeaderBoardTOTALSPage5Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,40,1);'),(301,'STLeaderBoardTOTALSPage5ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,41,9);'),(302,'STLeaderBoardTOTALSPage6Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,50,1);'),(303,'STLeaderBoardTOTALSPage6ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,51,9);'),(304,'STLeaderBoardTOTALSPage7Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,60,1);'),(305,'STLeaderBoardTOTALSPage7ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,61,9);'),(306,'STLeaderBoardTOTALSPage8Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,70,1);'),(307,'STLeaderBoardTOTALSPage8ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,71,9);'),(308,'STShortDescription','SELECT t.ShortDescription FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(309,'SPAge','SELECT GetPlayerAgeFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(310,'SPHolePreviousRoundsScores','select group_concat(GetPlayerSelectedStrokeDescription(strokes,s.holeid) SEPARATOR \' | \') PreviousRounds from golf.score sc,golf.shots s where s.idscore=sc.idscore and sc.playerid=(SELECT playerid FROM golf.score s,golf.uiselected u where s.idscore=u.SelectedScoreEntry) and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2;'),(311,'STHolesTopEagles','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and s.roundID <> 3 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-2 group by sh.holeid order by Totals desc limit 5;'),(312,'STHolesTopBirdies','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and s.roundID <> 3 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-1 group by sh.holeid order by Totals desc limit 5;'),(313,'STHolesTopPars','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and s.roundID <> 3 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=0 group by sh.holeid order by Totals desc limit 5;'),(314,'AmateurLeaderBoard','select Pos,Description,Points,case Country when \'RSA\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa\' when \'SWE\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden\' when \'GER\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany\' end flag ,\'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold\' color  FROM golf.amateurs limit 10; ');
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
INSERT INTO `rounds` VALUES (1,'ROUND 1',0),(2,'ROUND 2',0),(3,'ROUND 3',0),(4,'ROUND 4',0),(5,'FINAL ROUND',0),(1616604234843,'PLAY-OFF',0);
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
INSERT INTO `score` VALUES (1616584442524,1614872890769,1614697043090,1,1,2,'12:40',NULL,'18','2','2',1,0,0),(1616584442773,1614872890808,1614697043090,1,1,3,'13:00',NULL,'18','5','5',0,0,0),(1616584443034,1616583784429,1614697043090,1,1,12,'13:20',NULL,'18','','32',1,0,0),(1616584443306,1614872890816,1614697043090,1,1,14,'07:50',NULL,'18','59','59',1,0,0),(1616584443575,1614872890825,1614697043090,1,1,12,'12:20',NULL,'18','','32',1,0,0),(1616584443842,1614872890835,1614697043090,1,1,7,'12:30',NULL,'18','','14',1,0,0),(1616584444091,1615544876644,1614697043090,1,1,7,'08:10',NULL,'18','14','14',1,0,0),(1616584444358,1614872890820,1614697043090,1,1,7,'08:50',NULL,'18','','14',1,0,0),(1616584444625,1614872890760,1614697043090,1,1,13,'12:00',NULL,'18','','47',1,0,0),(1616584444912,1614872890776,1614697043090,1,1,10,'08:10',NULL,'18','24','24',1,0,0),(1616584445161,1614872890842,1614697043090,1,1,6,'08:30',NULL,'18','10','10',1,0,0),(1616584445429,1616076251436,1614697043090,1,1,5,'09:00',NULL,'18','8','8',1,0,0),(1616584445697,1615544880301,1614697043090,1,1,2,'12:30',NULL,'18','','2',1,0,0),(1616584445967,1614872890819,1614697043090,1,1,12,'12:30',NULL,'18','32','32',1,0,0),(1616584446201,1615544874284,1614697043090,1,1,16,'13:00',NULL,'18','','78',1,0,0),(1616584446444,1614872890815,1614697043090,1,1,7,'13:00',NULL,'18','','14',1,0,0),(1616584446712,1614872890781,1614697043090,1,1,15,'13:20',NULL,'18','67','67',1,0,0),(1616584446972,1615544875393,1614697043090,1,1,4,'13:30',NULL,'18','6','6',1,0,0),(1616584447228,1614872890764,1614697043090,1,1,5,'07:40',NULL,'18','','8',1,0,0),(1616584447501,1614872890789,1614697043090,1,1,1,'08:00',NULL,'18','1','1',0,0,0),(1616584447771,1614872890770,1614697043090,1,1,13,'12:20',NULL,'18','','47',1,0,0),(1616584448038,1614872890779,1614697043090,1,1,13,'12:20',NULL,'18','','47',1,0,0),(1616584448291,1614872890838,1614697043090,1,1,12,'08:20',NULL,'18','','32',1,0,0),(1616584448559,1615544871830,1614697043090,1,1,7,'12:50',NULL,'18','','14',1,0,0),(1616584448825,1614872890840,1614697043090,1,1,6,'12:50',NULL,'18','','10',1,0,0),(1616584449097,1614872890777,1614697043090,1,1,11,'12:50',NULL,'18','','28',1,0,0),(1616584449344,1615544873568,1614697043090,1,1,9,'13:00',NULL,'18','22','22',1,0,0),(1616584449612,1615544865998,1614697043090,1,1,19,'13:30',NULL,'18','','106',1,0,0),(1616584449882,1615544873364,1614697043090,1,1,10,'07:30',NULL,'18','','24',1,0,0),(1616584450155,1614872890767,1614697043090,1,1,13,'07:50',NULL,'18','47','47',1,0,0),(1616584450411,1616504678203,1614697043090,1,1,14,'08:00',NULL,'18','','59',1,0,0),(1616584450676,1614872890794,1614697043090,1,1,6,'08:00',NULL,'18','','10',1,0,0),(1616584450943,1614872890786,1614697043090,1,1,2,'08:20',NULL,'18','','2',1,0,0),(1616584451215,1614872890832,1614697043090,1,1,13,'08:20',NULL,'18','','47',1,0,0),(1616584451451,1614872890784,1614697043090,1,1,11,'08:30',NULL,'18','28','28',1,0,0),(1616584451693,1614872890814,1614697043090,1,1,13,'08:30',NULL,'18','','47',1,0,0),(1616584451961,1616062258291,1614697043090,1,1,12,'08:30',NULL,'18','','32',1,0,0),(1616584452224,1614872890826,1614697043090,1,1,6,'08:50',NULL,'18','','10',1,0,0),(1616584452479,1615544877969,1614697043090,1,1,21,'09:00',NULL,'18','117','117',1,0,0),(1616584452719,1615544870980,1614697043090,1,1,15,'12:10',NULL,'18','','67',1,0,0),(1616584452979,1615544874872,1614697043090,1,1,8,'12:40',NULL,'18','','19',1,0,0),(1616584453238,1614872890778,1614697043090,1,1,18,'12:40',NULL,'18','98','98',1,0,0),(1616584453491,1614872890802,1614697043090,1,1,17,'13:10',NULL,'18','90','90',1,0,0),(1616584453761,1615544880316,1614697043090,1,1,19,'07:30',NULL,'18','106','106',1,0,0),(1616584454030,1614872890824,1614697043090,1,1,12,'08:00',NULL,'18','','32',1,0,0),(1616584454294,1614872890810,1614697043090,1,1,13,'08:10',NULL,'18','','47',1,0,0),(1616584454549,1614872890783,1614697043090,1,1,8,'08:20',NULL,'18','19','19',1,0,0),(1616584454812,1614872890831,1614697043090,1,1,12,'08:30',NULL,'18','','32',1,0,0),(1616584455080,1614872890774,1614697043090,1,1,13,'08:30',NULL,'18','','47',1,0,0),(1616584455340,1615544869856,1614697043090,1,1,15,'12:10',NULL,'18','','67',1,0,0),(1616584455592,1615544880237,1614697043090,1,1,14,'12:10',NULL,'18','','59',1,0,0),(1616584455839,1614872890763,1614697043090,1,1,10,'12:20',NULL,'18','','24',1,0,0),(1616584456066,1614872890836,1614697043090,1,1,11,'12:30',NULL,'18','','28',1,0,0),(1616584456297,1615544870433,1614697043090,1,1,4,'12:40',NULL,'18','','6',1,0,0),(1616584456549,1614872890833,1614697043090,1,1,12,'12:50',NULL,'18','','32',1,0,0),(1616584456756,1614872890768,1614697043090,1,1,11,'13:00',NULL,'18','','28',1,0,0),(1616584457011,1616076251428,1614697043090,1,1,12,'13:10',NULL,'18','','32',1,0,0),(1616584457315,1614872890839,1614697043090,1,1,12,'13:10',NULL,'18','','32',1,0,0),(1616584457603,1615544870238,1614697043090,1,1,17,'13:20',NULL,'18','','90',1,0,0),(1616584457869,1616062258322,1614697043090,1,1,20,'13:40',NULL,'18','114','114',1,0,0),(1616584458139,1615544880310,1614697043090,1,1,17,'13:40',NULL,'18','','90',1,0,0),(1616584458410,1615544871744,1614697043090,1,1,12,'07:50',NULL,'18','','32',1,0,0),(1616584458678,1616076251432,1614697043090,1,1,16,'08:10',NULL,'18','','78',1,0,0),(1616584458931,1615544873098,1614697043090,1,1,13,'08:50',NULL,'18','','47',1,0,0),(1616584459206,1614872890818,1614697043090,1,1,16,'08:50',NULL,'18','','78',1,0,0),(1616584459472,1614872890813,1614697043090,1,1,14,'09:00',NULL,'18','','59',1,0,0),(1616584459745,1614872890828,1614697043090,1,1,8,'09:20',NULL,'18','','19',1,0,0),(1616584460004,1615544875693,1614697043090,1,1,22,'12:10',NULL,'18','121','121',1,0,0),(1616584460271,1614872890785,1614697043090,1,1,14,'12:20',NULL,'18','','59',1,0,0),(1616584460542,1614872890822,1614697043090,1,1,16,'12:50',NULL,'18','','78',1,0,0),(1616584460810,1614872890758,1614697043090,1,1,19,'13:30',NULL,'18','','106',1,0,0),(1616584461070,1615544872087,1614697043090,1,1,15,'07:40',NULL,'18','','67',1,0,0),(1616584461337,1614872890804,1614697043090,1,1,9,'08:20',NULL,'18','','22',1,0,0),(1616584461609,1615544876026,1614697043090,1,1,18,'08:40',NULL,'18','','98',1,0,0),(1616584461875,1614872890837,1614697043090,1,1,12,'08:40',NULL,'18','','32',1,0,0),(1616584462093,1614872890782,1614697043090,1,1,15,'08:40',NULL,'18','','67',1,0,0),(1616584462361,1615544877277,1614697043090,1,1,13,'08:50',NULL,'18','','47',1,0,0),(1616584462607,1615544877783,1614697043090,1,1,18,'08:50',NULL,'18','','98',1,0,0),(1616584462858,1615544876782,1614697043090,1,1,17,'09:10',NULL,'18','','90',1,0,0),(1616584463104,1615544870564,1614697043090,1,1,10,'09:10',NULL,'18','','24',1,0,0),(1616584463344,1615544871281,1614697043090,1,1,16,'09:20',NULL,'18','','78',1,0,0),(1616584463571,1615544880277,1614697043090,1,1,13,'12:10',NULL,'18','','47',1,0,0),(1616584463827,1614872890803,1614697043090,1,1,12,'12:20',NULL,'18','','32',1,0,0),(1616584464083,1614872890830,1614697043090,1,1,15,'12:40',NULL,'18','','67',1,0,0),(1616584464317,1614872890812,1614697043090,1,1,12,'12:40',NULL,'18','','32',1,0,0),(1616584464570,1614872890791,1614697043090,1,1,15,'12:50',NULL,'18','','67',1,0,0),(1616584464840,1615544878203,1614697043090,1,1,16,'13:10',NULL,'18','','78',1,0,0),(1616584465093,1614872890798,1614697043090,1,1,13,'13:10',NULL,'18','','47',1,0,0),(1616584465361,1615544880304,1614697043090,1,1,17,'13:20',NULL,'18','','90',1,0,0),(1616584465629,1615544880313,1614697043090,1,1,15,'13:40',NULL,'18','','67',1,0,0),(1616584465883,1614872890756,1614697043090,1,1,21,'13:40',NULL,'18','','117',1,0,0),(1616584466134,1615544872221,1614697043090,1,1,14,'07:50',NULL,'18','','59',1,0,0),(1616584466402,1615544880263,1614697043090,1,1,14,'07:50',NULL,'18','','59',1,0,0),(1616584466671,1615544880229,1614697043090,1,1,16,'08:20',NULL,'18','','78',1,0,0),(1616584466942,1615544876969,1614697043090,1,1,15,'08:40',NULL,'18','','67',1,0,0),(1616584467179,1614872890821,1614697043090,1,1,18,'09:10',NULL,'18','','98',1,0,0),(1616584467410,1615544874093,1614697043090,1,1,16,'09:10',NULL,'18','','78',1,0,0),(1616584467679,1616062258302,1614697043090,1,1,18,'12:10',NULL,'18','','98',1,0,0),(1616584467949,1615544873866,1614697043090,1,1,16,'13:10',NULL,'18','','78',1,0,0),(1616584468204,1615544880296,1614697043090,1,1,21,'07:30',NULL,'18','','117',1,0,0),(1616584468469,1615544878830,1614697043090,1,1,19,'07:30',NULL,'18','','106',1,0,0),(1616584468735,1615544880253,1614697043090,1,1,21,'08:00',NULL,'18','','117',1,0,0),(1616584469008,1616076251413,1614697043090,1,1,17,'09:10',NULL,'18','','90',1,0,0),(1616584469266,1615544880274,1614697043090,1,1,22,'09:20',NULL,'18','','121',1,0,0),(1616584469532,1615544871565,1614697043090,1,1,15,'09:20',NULL,'18','','67',1,0,0),(1616584469798,1615544875221,1614697043090,1,1,16,'12:00',NULL,'18','','78',1,0,0),(1616584470065,1614872890817,1614697043090,1,1,19,'13:30',NULL,'18','','106',1,0,0),(1616584470317,1615544878446,1614697043090,1,1,20,'07:30',NULL,'18','','114',1,0,0),(1616584470582,1615544874469,1614697043090,1,1,26,'07:30',NULL,'18','132','132',1,0,0),(1616584470849,1615544871438,1614697043090,1,1,18,'07:40',NULL,'18','','98',1,0,0),(1616584471117,1615544869184,1614697043090,1,1,14,'08:40',NULL,'18','','59',1,0,0),(1616584471372,1614872890823,1614697043090,1,1,22,'08:40',NULL,'18','','121',1,0,0),(1616584471639,1615544876474,1614697043090,1,1,19,'09:00',NULL,'18','','106',1,0,0),(1616584471908,1615544875887,1614697043090,1,1,17,'12:00',NULL,'18','','90',1,0,0),(1616584472174,1615544877096,1614697043090,1,1,16,'12:30',NULL,'18','78','78',1,0,0),(1616584472419,1614872890771,1614697043090,1,1,19,'12:30',NULL,'18','','106',1,0,0),(1616584472654,1614872890765,1614697043090,1,1,17,'13:30',NULL,'18','','90',1,0,0),(1616584472921,1614872890773,1614697043090,1,1,15,'07:40',NULL,'18','','67',1,0,0),(1616584473178,1615544871120,1614697043090,1,1,24,'08:00',NULL,'18','128','128',1,0,0),(1616584473434,1615544876163,1614697043090,1,1,18,'09:00',NULL,'18','','98',1,0,0),(1616584473702,1615544880319,1614697043090,1,1,23,'09:00',NULL,'18','126','126',1,0,0),(1616584473970,1615544880329,1614697043090,1,1,19,'13:40',NULL,'18','','106',1,0,0),(1616584474230,1615544877593,1614697043090,1,1,26,'07:40',NULL,'18','','132',1,0,0),(1616584474478,1614872890796,1614697043090,1,1,12,'07:40',NULL,'18','','32',1,0,0),(1616584474742,1615544872355,1614697043090,1,1,16,'08:10',NULL,'18','','78',1,0,0),(1616584475009,1615544877461,1614697043090,1,1,25,'09:20',NULL,'18','130','130',1,0,0),(1616584475275,1615544880283,1614697043090,1,1,22,'13:20',NULL,'18','','121',1,0,0),(1616584475522,1615544880189,1614697043090,1,1,18,'08:10',NULL,'18','','98',1,0,0),(1616584475785,1615544878653,1614697043090,1,1,22,'12:00',NULL,'18','','121',1,0,0),(1616584476051,1615544876319,1614697043090,1,1,20,'13:00',NULL,'18','','114',1,0,0),(1616584476309,1615544872499,1614697043090,1,1,24,'13:40',NULL,'18','','128',1,0,0),(1616584476564,1615544880298,1614697043090,1,1,25,'13:20',NULL,'18','','130',1,0,0),(1616584476829,1615544880258,1614697043090,1,1,23,'13:30',NULL,'18','','126',1,0,0),(1616584477098,1615544871971,1614697043090,1,1,27,'09:20',NULL,'18','134','134',0,0,0),(1616585304769,1614872890769,1614697043090,2,1,2,'07:10',NULL,'18','','2',1,0,0),(1616585305016,1614872890808,1614697043090,2,1,3,'07:30',NULL,'18','5','5',0,0,0),(1616585305236,1616583784429,1614697043090,2,1,12,'07:50',NULL,'18','','32',1,0,0),(1616585305457,1614872890816,1614697043090,2,1,14,'11:10',NULL,'18','','59',1,0,0),(1616585305676,1614872890825,1614697043090,2,1,12,'06:50',NULL,'18','32','32',1,0,0),(1616585305882,1614872890835,1614697043090,2,1,7,'07:00',NULL,'18','14','14',1,0,0),(1616585306105,1615544876644,1614697043090,2,1,7,'11:30',NULL,'18','','14',1,0,0),(1616585306363,1614872890820,1614697043090,2,1,7,'12:10',NULL,'18','','14',1,0,0),(1616585306602,1614872890760,1614697043090,2,1,13,'06:30',NULL,'18','','47',1,0,0),(1616585306845,1614872890776,1614697043090,2,1,10,'11:30',NULL,'18','','24',1,0,0),(1616585307073,1614872890842,1614697043090,2,1,6,'11:50',NULL,'18','','10',1,0,0),(1616585307311,1616076251436,1614697043090,2,1,5,'12:20',NULL,'18','8','8',1,0,0),(1616585307564,1615544880301,1614697043090,2,1,2,'07:00',NULL,'18','2','2',1,0,0),(1616585307815,1614872890819,1614697043090,2,1,12,'07:00',NULL,'18','','32',1,0,0),(1616585308058,1615544874284,1614697043090,2,1,16,'07:30',NULL,'18','78','78',1,0,0),(1616585308300,1614872890815,1614697043090,2,1,7,'07:30',NULL,'18','','14',1,0,0),(1616585308539,1614872890781,1614697043090,2,1,15,'07:50',NULL,'18','','67',1,0,0),(1616585308781,1615544875393,1614697043090,2,1,4,'08:00',NULL,'18','','6',1,0,0),(1616585309021,1614872890764,1614697043090,2,1,5,'11:00',NULL,'18','','8',1,0,0),(1616585309259,1614872890789,1614697043090,2,1,1,'11:20',NULL,'18','1','1',0,0,0),(1616585309517,1614872890770,1614697043090,2,1,13,'06:50',NULL,'18','','47',1,0,0),(1616585309764,1614872890779,1614697043090,2,1,13,'06:50',NULL,'18','','47',1,0,0),(1616585310017,1614872890838,1614697043090,2,1,12,'11:40',NULL,'18','','32',1,0,0),(1616585310276,1615544871830,1614697043090,2,1,7,'07:20',NULL,'18','','14',1,0,0),(1616585310541,1614872890840,1614697043090,2,1,6,'07:20',NULL,'18','','10',1,0,0),(1616585310810,1614872890777,1614697043090,2,1,11,'07:20',NULL,'18','28','28',1,0,0),(1616585311070,1615544873568,1614697043090,2,1,9,'07:30',NULL,'18','','22',1,0,0),(1616585311334,1615544865998,1614697043090,2,1,19,'08:00',NULL,'18','106','106',1,0,0),(1616585311604,1615544873364,1614697043090,2,1,10,'10:50',NULL,'18','','24',1,0,0),(1616585311860,1614872890767,1614697043090,2,1,13,'11:10',NULL,'18','','47',1,0,0),(1616585312165,1616504678203,1614697043090,2,1,14,'11:20',NULL,'18','59','59',1,0,0),(1616585312392,1614872890794,1614697043090,2,1,6,'11:20',NULL,'18','','10',1,0,0),(1616585312642,1614872890786,1614697043090,2,1,2,'11:40',NULL,'18','','2',1,0,0),(1616585312910,1614872890832,1614697043090,2,1,13,'11:40',NULL,'18','','47',1,0,0),(1616585313179,1614872890784,1614697043090,2,1,11,'11:50',NULL,'18','','28',1,0,0),(1616585313428,1614872890814,1614697043090,2,1,13,'11:50',NULL,'18','','47',1,0,0),(1616585313686,1616062258291,1614697043090,2,1,12,'11:50',NULL,'18','','32',1,0,0),(1616585313939,1614872890826,1614697043090,2,1,6,'12:10',NULL,'18','10','10',1,0,0),(1616585314207,1615544877969,1614697043090,2,1,21,'12:20',NULL,'18','117','117',1,0,0),(1616585314452,1615544870980,1614697043090,2,1,15,'06:40',NULL,'18','','67',1,0,0),(1616585314721,1615544874872,1614697043090,2,1,8,'07:10',NULL,'18','19','19',1,0,0),(1616585314987,1614872890778,1614697043090,2,1,18,'07:10',NULL,'18','98','98',1,0,0),(1616585315239,1614872890802,1614697043090,2,1,17,'07:40',NULL,'18','','90',1,0,0),(1616585315497,1615544880316,1614697043090,2,1,19,'10:50',NULL,'18','','106',1,0,0),(1616585315745,1614872890824,1614697043090,2,1,12,'11:20',NULL,'18','','32',1,0,0),(1616585315993,1614872890810,1614697043090,2,1,13,'11:30',NULL,'18','','47',1,0,0),(1616585316234,1614872890783,1614697043090,2,1,8,'11:40',NULL,'18','','19',1,0,0),(1616585316473,1614872890831,1614697043090,2,1,12,'11:50',NULL,'18','','32',1,0,0),(1616585316713,1614872890774,1614697043090,2,1,13,'11:50',NULL,'18','','47',1,0,0),(1616585316973,1615544869856,1614697043090,2,1,15,'06:40',NULL,'18','','67',1,0,0),(1616585317218,1615544880237,1614697043090,2,1,14,'06:40',NULL,'18','','59',1,0,0),(1616585317480,1614872890763,1614697043090,2,1,10,'06:50',NULL,'18','','24',1,0,0),(1616585317697,1614872890836,1614697043090,2,1,11,'07:00',NULL,'18','','28',1,0,0),(1616585317951,1615544870433,1614697043090,2,1,4,'07:10',NULL,'18','6','6',1,0,0),(1616585318188,1614872890833,1614697043090,2,1,12,'07:20',NULL,'18','','32',1,0,0),(1616585318433,1614872890768,1614697043090,2,1,11,'07:30',NULL,'18','','28',1,0,0),(1616585318687,1616076251428,1614697043090,2,1,12,'07:40',NULL,'18','','32',1,0,0),(1616585318955,1614872890839,1614697043090,2,1,12,'07:40',NULL,'18','','32',1,0,0),(1616585319206,1615544870238,1614697043090,2,1,17,'07:50',NULL,'18','','90',1,0,0),(1616585319448,1616062258322,1614697043090,2,1,20,'08:10',NULL,'18','','114',1,0,0),(1616585319684,1615544880310,1614697043090,2,1,17,'08:10',NULL,'18','','90',1,0,0),(1616585319925,1615544871744,1614697043090,2,1,12,'11:10',NULL,'18','','32',1,0,0),(1616585320169,1616076251432,1614697043090,2,1,16,'11:30',NULL,'18','','78',1,0,0),(1616585320407,1615544873098,1614697043090,2,1,13,'12:10',NULL,'18','','47',1,0,0),(1616585320649,1614872890818,1614697043090,2,1,16,'12:10',NULL,'18','','78',1,0,0),(1616585320888,1614872890813,1614697043090,2,1,14,'12:20',NULL,'18','','59',1,0,0),(1616585321127,1614872890828,1614697043090,2,1,8,'12:40',NULL,'18','','19',1,0,0),(1616585321365,1615544875693,1614697043090,2,1,22,'06:40',NULL,'18','121','121',1,0,0),(1616585321596,1614872890785,1614697043090,2,1,14,'06:50',NULL,'18','','59',1,0,0),(1616585321844,1614872890822,1614697043090,2,1,16,'07:20',NULL,'18','','78',1,0,0),(1616585322084,1614872890758,1614697043090,2,1,19,'08:00',NULL,'18','','106',1,0,0),(1616585322324,1615544872087,1614697043090,2,1,15,'11:00',NULL,'18','','67',1,0,0),(1616585322566,1614872890804,1614697043090,2,1,9,'11:40',NULL,'18','22','22',1,0,0),(1616585322797,1615544876026,1614697043090,2,1,18,'12:00',NULL,'18','','98',1,0,0),(1616585323027,1614872890837,1614697043090,2,1,12,'12:00',NULL,'18','','32',1,0,0),(1616585323273,1614872890782,1614697043090,2,1,15,'12:00',NULL,'18','','67',1,0,0),(1616585323520,1615544877277,1614697043090,2,1,13,'12:10',NULL,'18','','47',1,0,0),(1616585323763,1615544877783,1614697043090,2,1,18,'12:10',NULL,'18','','98',1,0,0),(1616585324005,1615544876782,1614697043090,2,1,17,'12:30',NULL,'18','','90',1,0,0),(1616585324253,1615544870564,1614697043090,2,1,10,'12:30',NULL,'18','24','24',1,0,0),(1616585324496,1615544871281,1614697043090,2,1,16,'12:40',NULL,'18','','78',1,0,0),(1616585324730,1615544880277,1614697043090,2,1,13,'06:40',NULL,'18','','47',1,0,0),(1616585324972,1614872890803,1614697043090,2,1,12,'06:50',NULL,'18','','32',1,0,0),(1616585325210,1614872890830,1614697043090,2,1,15,'07:10',NULL,'18','','67',1,0,0),(1616585325453,1614872890812,1614697043090,2,1,12,'07:10',NULL,'18','','32',1,0,0),(1616585325698,1614872890791,1614697043090,2,1,15,'07:20',NULL,'18','','67',1,0,0),(1616585325938,1615544878203,1614697043090,2,1,16,'07:40',NULL,'18','','78',1,0,0),(1616585326169,1614872890798,1614697043090,2,1,13,'07:40',NULL,'18','47','47',1,0,0),(1616585326413,1615544880304,1614697043090,2,1,17,'07:50',NULL,'18','90','90',1,0,0),(1616585326669,1615544880313,1614697043090,2,1,15,'08:10',NULL,'18','','67',1,0,0),(1616585326903,1614872890756,1614697043090,2,1,21,'08:10',NULL,'18','','117',1,0,0),(1616585327144,1615544872221,1614697043090,2,1,14,'11:10',NULL,'18','','59',1,0,0),(1616585327387,1615544880263,1614697043090,2,1,14,'11:10',NULL,'18','','59',1,0,0),(1616585327633,1615544880229,1614697043090,2,1,16,'11:40',NULL,'18','','78',1,0,0),(1616585327875,1615544876969,1614697043090,2,1,15,'12:00',NULL,'18','67','67',1,0,0),(1616585328102,1614872890821,1614697043090,2,1,18,'12:30',NULL,'18','','98',1,0,0),(1616585328344,1615544874093,1614697043090,2,1,16,'12:30',NULL,'18','','78',1,0,0),(1616585328591,1616062258302,1614697043090,2,1,18,'06:40',NULL,'18','','98',1,0,0),(1616585328820,1615544873866,1614697043090,2,1,16,'07:40',NULL,'18','','78',1,0,0),(1616585329056,1615544880296,1614697043090,2,1,21,'10:50',NULL,'18','','117',1,0,0),(1616585329278,1615544878830,1614697043090,2,1,19,'10:50',NULL,'18','','106',1,0,0),(1616585329497,1615544880253,1614697043090,2,1,21,'11:20',NULL,'18','','117',1,0,0),(1616585329696,1616076251413,1614697043090,2,1,17,'12:30',NULL,'18','','90',1,0,0),(1616585329957,1615544880274,1614697043090,2,1,22,'12:40',NULL,'18','','121',1,0,0),(1616585330193,1615544871565,1614697043090,2,1,15,'12:40',NULL,'18','','67',1,0,0),(1616585330432,1615544875221,1614697043090,2,1,16,'06:30',NULL,'18','','78',1,0,0),(1616585330674,1614872890817,1614697043090,2,1,19,'08:00',NULL,'18','','106',1,0,0),(1616585330916,1615544878446,1614697043090,2,1,20,'10:50',NULL,'18','','114',1,0,0),(1616585331162,1615544874469,1614697043090,2,1,26,'10:50',NULL,'18','','132',1,0,0),(1616585331411,1615544871438,1614697043090,2,1,18,'11:00',NULL,'18','','98',1,0,0),(1616585331681,1615544869184,1614697043090,2,1,14,'12:00',NULL,'18','','59',1,0,0),(1616585331938,1614872890823,1614697043090,2,1,22,'12:00',NULL,'18','','121',1,0,0),(1616585332193,1615544876474,1614697043090,2,1,19,'12:20',NULL,'18','','106',1,0,0),(1616585332443,1615544875887,1614697043090,2,1,17,'06:30',NULL,'18','','90',1,0,0),(1616585332699,1615544877096,1614697043090,2,1,16,'07:00',NULL,'18','','78',1,0,0),(1616585332951,1614872890771,1614697043090,2,1,19,'07:00',NULL,'18','','106',1,0,0),(1616585333186,1614872890765,1614697043090,2,1,17,'08:00',NULL,'18','','90',1,0,0),(1616585333403,1614872890773,1614697043090,2,1,15,'11:00',NULL,'18','','67',1,0,0),(1616585333663,1615544871120,1614697043090,2,1,24,'11:20',NULL,'18','','128',1,0,0),(1616585333910,1615544876163,1614697043090,2,1,18,'12:20',NULL,'18','','98',1,0,0),(1616585334150,1615544880319,1614697043090,2,1,23,'12:20',NULL,'18','','126',1,0,0),(1616585334386,1615544880329,1614697043090,2,1,19,'08:10',NULL,'18','','106',1,0,0),(1616585334625,1615544877593,1614697043090,2,1,26,'11:00',NULL,'18','132','132',1,0,0),(1616585334873,1614872890796,1614697043090,2,1,12,'11:00',NULL,'18','','32',1,0,0),(1616585335126,1615544872355,1614697043090,2,1,16,'11:30',NULL,'18','','78',1,0,0),(1616585335367,1615544877461,1614697043090,2,1,25,'12:40',NULL,'18','','130',1,0,0),(1616585335606,1615544880283,1614697043090,2,1,22,'07:50',NULL,'18','','121',1,0,0),(1616585335863,1615544880189,1614697043090,2,1,18,'11:30',NULL,'18','','98',1,0,0),(1616585336123,1615544878653,1614697043090,2,1,22,'06:30',NULL,'18','','121',1,0,0),(1616585336370,1615544876319,1614697043090,2,1,20,'07:30',NULL,'18','114','114',1,0,0),(1616585336626,1615544872499,1614697043090,2,1,24,'08:10',NULL,'18','128','128',1,0,0),(1616585336873,1615544880298,1614697043090,2,1,25,'07:50',NULL,'18','130','130',1,0,0),(1616585337109,1615544880258,1614697043090,2,1,23,'08:00',NULL,'18','126','126',1,0,0),(1616585337349,1615544871971,1614697043090,2,1,27,'12:40',NULL,'18','134','134',0,0,0),(1616835386786,1614872890808,1616834683986,3,1,3,'12:20',NULL,'18','5','5',0,0,0),(1616835387007,1614872890769,1616834683986,3,1,2,'12:30',NULL,'18','','2',1,0,0),(1616835387264,1615544880301,1616834683986,3,1,2,'11:35',NULL,'18','','2',1,0,0),(1616835387521,1614872890789,1616834683986,3,1,1,'11:15',NULL,'18','1','1',0,0,0),(1616835387779,1616076251436,1616834683986,3,1,5,'11:45',NULL,'18','8','8',1,0,0),(1616835388040,1614872890815,1616834683986,3,1,7,'09:55',NULL,'18','','14',1,0,0),(1616835388299,1614872890786,1616834683986,3,1,2,'09:25',NULL,'18','2','2',1,0,0),(1616835388564,1614872890760,1616834683986,3,1,13,'09:15',NULL,'18','49','49',1,0,0),(1616835388829,1614872890835,1616834683986,3,1,7,'11:25',NULL,'18','14','14',1,0,0),(1616835389081,1615544870433,1616834683986,3,1,4,'08:30',NULL,'18','6','6',1,0,0),(1616835389338,1614872890783,1616834683986,3,1,8,'10:15',NULL,'18','','19',1,0,0),(1616835389596,1614872890826,1616834683986,3,1,6,'10:55',NULL,'18','','10',1,0,0),(1616835389828,1615544876644,1616834683986,3,1,7,'10:35',NULL,'18','','14',1,0,0),(1616835390052,1614872890763,1616834683986,3,1,10,'09:15',NULL,'18','24','24',1,0,0),(1616835390299,1615544874872,1616834683986,3,1,8,'09:05',NULL,'18','19','19',1,0,0),(1616835390553,1615544871830,1616834683986,3,1,7,'11:15',NULL,'18','','14',1,0,0),(1616835390809,1615544875393,1616834683986,3,1,4,'10:25',NULL,'18','','6',1,0,0),(1616835391061,1614872890804,1616834683986,3,1,9,'10:55',NULL,'18','22','22',1,0,0),(1616835391318,1614872890842,1616834683986,3,1,6,'11:05',NULL,'18','','10',1,0,0),(1616835391582,1615544873568,1616834683986,3,1,9,'12:30',NULL,'18','','22',1,0,0),(1616835391846,1614872890828,1616834683986,3,1,8,'09:05',NULL,'18','','19',1,0,0),(1616835392091,1614872890825,1616834683986,3,1,12,'10:45',NULL,'18','','32',1,0,0),(1616835392349,1614872890819,1616834683986,3,1,12,'09:25',NULL,'18','','32',1,0,0),(1616835392616,1614872890764,1616834683986,3,1,5,'11:45',NULL,'18','','8',1,0,0),(1616835392842,1614872890794,1616834683986,3,1,6,'12:20',NULL,'18','10','10',1,0,0),(1616835393067,1614872890820,1616834683986,3,1,7,'10:25',NULL,'18','','14',1,0,0),(1616835393331,1615544873364,1616834683986,3,1,10,'09:45',NULL,'18','','24',1,0,0),(1616835393598,1615544869856,1616834683986,3,1,15,'11:05',NULL,'18','','69',1,0,0),(1616835393868,1614872890777,1616834683986,3,1,11,'12:00',NULL,'18','','28',1,0,0),(1616835394125,1614872890840,1616834683986,3,1,6,'08:10',NULL,'18','','10',1,0,0),(1616835394387,1614872890832,1616834683986,3,1,13,'08:30',NULL,'18','','49',1,0,0),(1616835394646,1614872890784,1616834683986,3,1,11,'09:35',NULL,'18','','28',1,0,0),(1616835394903,1616504678203,1616834683986,3,1,14,'12:00',NULL,'18','','61',1,0,0),(1616835395161,1615544870564,1616834683986,3,1,10,'08:50',NULL,'18','','24',1,0,0),(1616835395380,1614872890782,1616834683986,3,1,15,'10:35',NULL,'18','','69',1,0,0),(1616835395641,1616583784429,1616834683986,3,1,12,'11:25',NULL,'18','','32',1,0,0),(1616835395868,1615544871281,1616834683986,3,1,16,'08:00',NULL,'18','','80',1,0,0),(1616835396108,1614872890836,1616834683986,3,1,11,'08:10',NULL,'18','28','28',1,0,0),(1616835396371,1614872890824,1616834683986,3,1,12,'08:20',NULL,'18','','32',1,0,0),(1616835396624,1614872890781,1616834683986,3,1,15,'08:40',NULL,'18','','69',1,0,0),(1616835396891,1614872890776,1616834683986,3,1,10,'12:10',NULL,'18','','24',1,0,0),(1616835397153,1615544874284,1616834683986,3,1,16,'10:15',NULL,'18','','80',1,0,0),(1616835397406,1614872890770,1616834683986,3,1,13,'08:40',NULL,'18','','49',1,0,0),(1616835397662,1614872890778,1616834683986,3,1,18,'08:50',NULL,'18','','100',1,0,0),(1616835397920,1614872890768,1616834683986,3,1,11,'11:35',NULL,'18','','28',1,0,0),(1616835398188,1614872890816,1616834683986,3,1,14,'12:10',NULL,'18','','61',1,0,0),(1616835398446,1614872890814,1616834683986,3,1,13,'08:00',NULL,'18','','49',1,0,0),(1616835398701,1614872890779,1616834683986,3,1,13,'08:20',NULL,'18','','49',1,0,0),(1616835398925,1615544865998,1616834683986,3,1,19,'09:45',NULL,'18','','108',1,0,0),(1616835399162,1615544875693,1616834683986,3,1,22,'10:45',NULL,'18','','123',1,0,0),(1616835399422,1615544877969,1616834683986,3,1,21,'09:35',NULL,'18','','119',1,0,0),(1616835399694,1615544876969,1616834683986,3,1,15,'09:55',NULL,'18','','69',1,0,0),(1616835399963,1614872890803,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835400217,1614872890812,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835400469,1614872890833,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835400692,1616076251428,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835400945,1614872890839,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835401206,1614872890796,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835401461,1615544871744,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835401713,1614872890838,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835401935,1616062258291,1616834683986,3,1,12,'',NULL,'0','32','32',1,0,0),(1616835402164,1614872890831,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835402406,1614872890837,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835402633,1615544880277,1616834683986,3,1,13,'',NULL,'0','','49',1,0,0),(1616835402858,1614872890798,1616834683986,3,1,13,'',NULL,'0','','49',1,0,0),(1616835403058,1614872890767,1616834683986,3,1,13,'',NULL,'0','','49',1,0,0),(1616835403303,1614872890810,1616834683986,3,1,13,'',NULL,'0','','49',1,0,0),(1616835403547,1614872890774,1616834683986,3,1,13,'',NULL,'0','','49',1,0,0),(1616835403803,1615544877277,1616834683986,3,1,13,'',NULL,'0','','49',1,0,0),(1616835404061,1615544873098,1616834683986,3,1,13,'',NULL,'0','','49',1,0,0),(1616835404319,1615544880237,1616834683986,3,1,14,'',NULL,'0','','61',1,0,0),(1616835404582,1614872890785,1616834683986,3,1,14,'',NULL,'0','','61',1,0,0),(1616835404811,1615544880263,1616834683986,3,1,14,'',NULL,'0','','61',1,0,0),(1616835405038,1615544872221,1616834683986,3,1,14,'',NULL,'0','61','61',1,0,0),(1616835405286,1615544869184,1616834683986,3,1,14,'',NULL,'0','','61',1,0,0),(1616835405559,1614872890813,1616834683986,3,1,14,'',NULL,'0','','61',1,0,0),(1616835405793,1615544870980,1616834683986,3,1,15,'',NULL,'0','','69',1,0,0),(1616835406037,1614872890830,1616834683986,3,1,15,'',NULL,'0','','69',1,0,0),(1616835406299,1614872890791,1616834683986,3,1,15,'',NULL,'0','','69',1,0,0),(1616835406552,1615544880313,1616834683986,3,1,15,'',NULL,'0','69','69',1,0,0),(1616835406793,1614872890773,1616834683986,3,1,15,'',NULL,'0','','69',1,0,0),(1616835407061,1615544872087,1616834683986,3,1,15,'',NULL,'0','','69',1,0,0),(1616835407317,1615544871565,1616834683986,3,1,15,'',NULL,'0','','69',1,0,0),(1616835407570,1615544875221,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835407808,1615544877096,1616834683986,3,1,16,'',NULL,'0','80','80',1,0,0),(1616835408029,1614872890822,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835408292,1615544878203,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835408552,1615544873866,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835408814,1616076251432,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835409079,1615544872355,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835409339,1615544880229,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835409599,1614872890818,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835409861,1615544874093,1616834683986,3,1,16,'',NULL,'0','','80',1,0,0),(1616835410153,1615544875887,1616834683986,3,1,17,'',NULL,'0','','92',1,0,0),(1616835410439,1614872890802,1616834683986,3,1,17,'',NULL,'0','','92',1,0,0),(1616835410689,1615544870238,1616834683986,3,1,17,'',NULL,'0','','92',1,0,0),(1616835410914,1615544880304,1616834683986,3,1,17,'',NULL,'0','','92',1,0,0),(1616835411134,1614872890765,1616834683986,3,1,17,'',NULL,'0','','92',1,0,0),(1616835411404,1615544880310,1616834683986,3,1,17,'',NULL,'0','','92',1,0,0),(1616835411670,1615544876782,1616834683986,3,1,17,'',NULL,'0','92','92',1,0,0),(1616835411929,1616076251413,1616834683986,3,1,17,'',NULL,'0','','92',1,0,0),(1616835412187,1616062258302,1616834683986,3,1,18,'',NULL,'0','','100',1,0,0),(1616835412445,1615544871438,1616834683986,3,1,18,'',NULL,'0','','100',1,0,0),(1616835412705,1615544880189,1616834683986,3,1,18,'',NULL,'0','','100',1,0,0),(1616835412964,1615544876026,1616834683986,3,1,18,'',NULL,'0','100','100',1,0,0),(1616835413227,1615544877783,1616834683986,3,1,18,'',NULL,'0','','100',1,0,0),(1616835413485,1615544876163,1616834683986,3,1,18,'',NULL,'0','','100',1,0,0),(1616835413734,1614872890821,1616834683986,3,1,18,'',NULL,'0','','100',1,0,0),(1616835413958,1614872890771,1616834683986,3,1,19,'',NULL,'0','108','108',1,0,0),(1616835414191,1614872890758,1616834683986,3,1,19,'',NULL,'0','','108',1,0,0),(1616835414461,1614872890817,1616834683986,3,1,19,'',NULL,'0','','108',1,0,0),(1616835414728,1615544880329,1616834683986,3,1,19,'',NULL,'0','','108',1,0,0),(1616835414960,1615544878830,1616834683986,3,1,19,'',NULL,'0','','108',1,0,0),(1616835415241,1615544880316,1616834683986,3,1,19,'',NULL,'0','','108',1,0,0),(1616835415497,1615544876474,1616834683986,3,1,19,'',NULL,'0','','108',1,0,0),(1616835415741,1615544876319,1616834683986,3,1,20,'',NULL,'0','','116',1,0,0),(1616835416001,1616062258322,1616834683986,3,1,20,'',NULL,'0','','116',1,0,0),(1616835416230,1615544878446,1616834683986,3,1,20,'',NULL,'0','116','116',1,0,0),(1616835416462,1614872890756,1616834683986,3,1,21,'',NULL,'0','119','119',1,0,0),(1616835416710,1615544880296,1616834683986,3,1,21,'',NULL,'0','','119',1,0,0),(1616835416931,1615544880253,1616834683986,3,1,21,'',NULL,'0','','119',1,0,0),(1616835417156,1615544878653,1616834683986,3,1,22,'',NULL,'0','','123',1,0,0),(1616835417424,1615544880283,1616834683986,3,1,22,'',NULL,'0','','123',1,0,0),(1616835417693,1614872890823,1616834683986,3,1,22,'',NULL,'0','123','123',1,0,0),(1616835417938,1615544880274,1616834683986,3,1,22,'',NULL,'0','','123',1,0,0),(1616835418187,1615544880258,1616834683986,3,1,23,'',NULL,'0','128','128',1,0,0),(1616835418444,1615544880319,1616834683986,3,1,23,'',NULL,'0','','128',1,0,0),(1616835418707,1615544872499,1616834683986,3,1,24,'',NULL,'0','130','130',1,0,0),(1616835418966,1615544871120,1616834683986,3,1,24,'',NULL,'0','','130',1,0,0),(1616835419216,1615544880298,1616834683986,3,1,25,'',NULL,'0','','132',1,0,0),(1616835419461,1615544877461,1616834683986,3,1,25,'',NULL,'0','132','132',1,0,0),(1616835419713,1615544874469,1616834683986,3,1,26,'',NULL,'0','134','134',1,0,0),(1616835419940,1615544877593,1616834683986,3,1,26,'',NULL,'0','','134',1,0,0),(1616835420161,1615544871971,1616834683986,3,1,27,'',NULL,'0','136','136',0,0,0),(1616835420406,1615544880280,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616835420659,1615544880293,1616834683986,3,1,12,'',NULL,'0','','32',1,0,0),(1616837136342,1614872890808,1614697043090,4,1,2,'09:40',NULL,'18','','3',1,0,0),(1616837136587,1614872890769,1614697043090,4,1,1,'09:30',NULL,'18','','1',1,0,0),(1616837136847,1615544880301,1614697043090,4,1,3,'09:20',NULL,'18','','7',1,0,0),(1616837137092,1614872890789,1614697043090,4,1,1,'09:10',NULL,'18','1','1',1,0,0),(1616837137349,1616076251436,1614697043090,4,1,4,'09:00',NULL,'18','','10',1,0,0),(1616837137612,1614872890815,1614697043090,4,1,5,'08:30',NULL,'18','','14',1,0,0),(1616837137874,1614872890786,1614697043090,4,1,2,'08:50',NULL,'18','3','3',1,0,0),(1616837138133,1614872890760,1614697043090,4,1,13,'08:00',NULL,'18','','38',1,0,0),(1616837138386,1614872890835,1614697043090,4,1,2,'08:20',NULL,'18','','3',1,0,0),(1616837138649,1615544870433,1614697043090,4,1,2,'08:40',NULL,'18','','3',1,0,0),(1616837138871,1614872890783,1614697043090,4,1,7,'07:40',NULL,'18','18','18',0,0,0),(1616837139088,1614872890826,1614697043090,4,1,6,'07:50',NULL,'18','17','17',0,0,0),(1616837139321,1615544876644,1614697043090,4,1,8,'07:50',NULL,'18','','19',1,1,0),(1616837139560,1614872890763,1614697043090,4,1,8,'08:00',NULL,'18','','19',1,0,0),(1616837139808,1615544874872,1614697043090,4,1,12,'08:10',NULL,'18','','33',1,0,0),(1616837140054,1615544871830,1614697043090,4,1,4,'09:10',NULL,'18','','10',1,0,0),(1616837140317,1615544875393,1614697043090,4,1,4,'07:40',NULL,'18','10','10',1,1,0),(1616837140569,1614872890804,1614697043090,4,1,8,'07:50',NULL,'18','','19',1,0,0),(1616837140834,1614872890842,1614697043090,4,1,5,'08:20',NULL,'18','14','14',1,1,0),(1616837141100,1615544873568,1614697043090,4,1,8,'09:30',NULL,'18','','19',1,0,0),(1616837141366,1614872890828,1614697043090,4,1,11,'08:10',NULL,'18','31','31',1,0,0),(1616837141619,1614872890825,1614697043090,4,1,11,'08:10',NULL,'18','','31',1,1,0),(1616837141839,1614872890819,1614697043090,4,1,10,'08:50',NULL,'18','','28',1,0,0),(1616837142066,1614872890764,1614697043090,4,1,4,'09:00',NULL,'18','','10',1,0,0),(1616837142316,1614872890794,1614697043090,4,1,3,'09:40',NULL,'18','','7',1,0,0),(1616837142578,1614872890820,1614697043090,4,1,5,'07:40',NULL,'18','','14',1,1,0),(1616837142840,1615544873364,1614697043090,4,1,12,'08:00',NULL,'18','','33',1,1,0),(1616837143079,1615544869856,1614697043090,4,1,15,'08:20',NULL,'18','','45',1,1,0),(1616837143333,1614872890777,1614697043090,4,1,9,'08:30',NULL,'18','','25',1,1,0),(1616837143588,1614872890840,1614697043090,4,1,3,'08:40',NULL,'18','7','7',1,1,0),(1616837143841,1614872890832,1614697043090,4,1,10,'08:40',NULL,'18','','28',1,0,0),(1616837144071,1614872890784,1614697043090,4,1,10,'08:50',NULL,'18','28','28',1,1,0),(1616837144303,1616504678203,1614697043090,4,1,12,'08:30',NULL,'18','','33',1,1,0),(1616837144563,1615544870564,1614697043090,4,1,9,'09:00',NULL,'18','25','25',1,1,0),(1616837144789,1614872890782,1614697043090,4,1,16,'07:50',NULL,'18','','48',1,1,0),(1616837145011,1616583784429,1614697043090,4,1,9,'08:20',NULL,'18','','25',1,0,0),(1616837145243,1615544871281,1614697043090,4,1,14,'09:10',NULL,'18','','41',1,1,0),(1616837145489,1614872890836,1614697043090,4,1,13,'08:40',NULL,'18','38','38',1,1,0),(1616837145728,1614872890824,1614697043090,4,1,12,'09:20',NULL,'18','','33',1,1,0),(1616837145976,1614872890781,1614697043090,4,1,14,'09:30',NULL,'18','','41',1,1,0),(1616837146224,1614872890776,1614697043090,4,1,8,'09:40',NULL,'18','','19',1,1,0),(1616837146493,1615544874284,1614697043090,4,1,15,'07:40',NULL,'18','','45',1,0,0),(1616837146746,1614872890770,1614697043090,4,1,13,'09:30',NULL,'18','','38',1,1,0),(1616837147010,1614872890778,1614697043090,4,1,17,'09:00',NULL,'18','50','50',0,1,0),(1616837147271,1614872890768,1614697043090,4,1,8,'09:20',NULL,'18','19','19',1,0,0),(1616837147528,1614872890816,1614697043090,4,1,14,'09:40',NULL,'18','','41',1,1,0),(1616837147770,1614872890814,1614697043090,4,1,14,'09:10',NULL,'18','41','41',1,1,0),(1616837147990,1614872890779,1614697043090,4,1,12,'09:20',NULL,'18','33','33',1,1,0),(1616837148217,1615544865998,1614697043090,4,1,15,'08:00',NULL,'18','45','45',1,1,0),(1616837148482,1615544875693,1614697043090,4,1,18,'08:10',NULL,'18','','51',1,1,0),(1616837148739,1615544877969,1614697043090,4,1,18,'08:50',NULL,'18','51','51',1,1,0),(1616837148994,1615544876969,1614697043090,4,1,16,'08:30',NULL,'18','48','48',1,0,0),(1616918996303,1614872890789,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918996653,1614872890786,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918997010,1615544880301,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918997369,1614872890769,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918997724,1614872890808,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918998082,1615544875393,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918998423,1615544870433,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918998768,1616076251436,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918999127,1614872890764,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918999485,1614872890826,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616918999847,1614872890842,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919000206,1614872890840,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919000565,1614872890794,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919000924,1614872890835,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919001267,1614872890815,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919001614,1615544876644,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919001959,1614872890820,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919002302,1615544871830,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919002648,1614872890783,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919002993,1615544874872,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919003340,1614872890828,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919003686,1614872890804,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919004030,1615544873568,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919004374,1614872890763,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919004748,1615544873364,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919005090,1615544870564,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919005448,1614872890776,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919005806,1614872890777,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919006164,1614872890836,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919006523,1614872890784,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919006867,1614872890768,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919007226,1616583784429,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919007587,1614872890825,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919007943,1614872890819,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919008300,1614872890824,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919008644,1614872890760,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919008989,1614872890832,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919009332,1614872890814,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919009690,1614872890779,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919010050,1614872890770,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919010410,1615544876969,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919010755,1616504678203,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919011112,1614872890816,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919011472,1614872890782,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919011815,1615544869856,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919012175,1614872890781,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919012535,1615544874284,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919012890,1615544871281,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919013247,1614872890778,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919013590,1615544865998,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919013950,1615544877969,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919014308,1615544875693,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919014653,1614872890803,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919015011,1614872890812,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919015372,1614872890833,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919015748,1616076251428,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919016106,1614872890839,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919016464,1614872890796,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919016820,1615544871744,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919017179,1614872890838,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919017537,1616062258291,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919017898,1614872890831,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919018257,1614872890837,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919018614,1615544880277,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919018974,1614872890798,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919019334,1614872890767,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919019677,1614872890810,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919020034,1614872890774,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919020393,1615544877277,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919020739,1615544873098,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919021099,1615544880237,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919021458,1614872890785,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919021816,1615544880263,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919022174,1615544872221,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919022532,1615544869184,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919022890,1614872890813,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919023248,1615544870980,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919023605,1614872890830,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919023964,1614872890791,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919024323,1615544880313,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919024681,1614872890773,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919025024,1615544872087,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919025366,1615544871565,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919025725,1615544875221,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919026085,1615544877096,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919026445,1614872890822,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919026818,1615544878203,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919027176,1615544873866,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919027536,1616076251432,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919027894,1615544872355,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919028253,1615544880229,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919028611,1614872890818,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919028953,1615544874093,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919029313,1615544875887,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919029673,1614872890802,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919030030,1615544870238,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919030377,1615544880304,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919030721,1614872890765,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919031076,1615544880310,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919031434,1615544876782,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919031781,1616076251413,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919032139,1616062258302,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919032499,1615544871438,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919032841,1615544880189,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919033198,1615544876026,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919033556,1615544877783,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919033897,1615544876163,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919034240,1614872890821,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919034602,1614872890771,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919034961,1614872890758,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919035320,1614872890817,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919035677,1615544880329,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919036024,1615544878830,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919036384,1615544880316,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919036745,1615544876474,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919037104,1615544876319,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919037461,1616062258322,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919037835,1615544878446,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919038193,1614872890756,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919038552,1615544880296,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919038909,1615544880253,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919039267,1615544878653,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919039624,1615544880283,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919039981,1614872890823,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919040341,1615544880274,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919040700,1615544880258,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919041059,1615544880319,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919041402,1615544872499,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919041762,1615544871120,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919042119,1615544880298,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919042480,1615544877461,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919042824,1615544874469,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919043184,1615544877593,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919043543,1615544871971,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919043885,1615544880280,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919044245,1615544880293,1614697043090,1612735804051,1,-1,NULL,NULL,'-1',' ','',-1,0,0),(1616919213465,1614872890789,1614697043090,5,1,2,'09:12',NULL,'18','2','2',0,0,0),(1616919213810,1614872890786,1614697043090,5,1,11,'09:01',NULL,'18','','30',1,0,0),(1616919214171,1615544880301,1614697043090,5,1,5,'08:50',NULL,'18','','7',1,0,0),(1616919214512,1614872890769,1614697043090,5,1,1,'08:39',NULL,'18','1','1',0,0,0),(1616919214868,1614872890808,1614697043090,5,1,3,'08:28',NULL,'18','','3',1,0,0),(1616919215224,1615544875393,1614697043090,5,1,4,'08:17',NULL,'18','','5',1,0,0),(1616919215568,1615544870433,1614697043090,5,1,5,'08:06',NULL,'18','','7',1,0,0),(1616919215940,1616076251436,1614697043090,5,1,10,'07:55',NULL,'18','','26',1,0,0),(1616919216296,1614872890764,1614697043090,5,1,9,'07:55',NULL,'18','','21',1,0,0),(1616919216641,1614872890826,1614697043090,5,1,8,'07:44',NULL,'18','','15',1,0,0),(1616919216985,1614872890842,1614697043090,5,1,6,'07:33',NULL,'18','12','12',0,0,0),(1616919217344,1614872890840,1614697043090,5,1,4,'07:22',NULL,'18','5','5',1,0,0),(1616919217703,1614872890794,1614697043090,5,1,3,'08:28',NULL,'18','3','3',1,0,0),(1616919218060,1614872890835,1614697043090,5,1,5,'07:00',NULL,'18','7','7',1,0,0),(1616919218418,1614872890815,1614697043090,5,1,8,'07:00',NULL,'18','','15',1,1,0),(1616919218776,1615544876644,1614697043090,5,1,8,'07:11',NULL,'18','','15',1,0,0),(1616919219134,1614872890820,1614697043090,5,1,5,'08:17',NULL,'18','','7',1,0,0),(1616919219494,1615544871830,1614697043090,5,1,5,'09:12',NULL,'18','','7',1,0,0),(1616919219854,1614872890783,1614697043090,5,1,9,'07:11',NULL,'18','','21',1,1,0),(1616919220213,1615544874872,1614697043090,5,1,11,'07:22',NULL,'18','30','30',1,1,0),(1616919220572,1614872890828,1614697043090,5,1,13,'07:22',NULL,'18','','35',1,1,0),(1616919220934,1614872890804,1614697043090,5,1,10,'07:44',NULL,'18','','26',1,0,0),(1616919221293,1615544873568,1614697043090,5,1,7,'08:39',NULL,'18','','13',1,0,0),(1616919221653,1614872890763,1614697043090,5,1,8,'07:33',NULL,'18','','15',1,1,0),(1616919222014,1615544873364,1614697043090,5,1,15,'07:44',NULL,'18','','38',1,1,0),(1616919222360,1615544870564,1614697043090,5,1,9,'07:55',NULL,'18','','21',1,1,0),(1616919222720,1614872890776,1614697043090,5,1,9,'08:28',NULL,'18','','21',1,1,0),(1616919223077,1614872890777,1614697043090,5,1,10,'08:06',NULL,'18','26','26',1,1,0),(1616919223435,1614872890836,1614697043090,5,1,15,'07:22',NULL,'18','','38',1,0,0),(1616919223792,1614872890784,1614697043090,5,1,8,'08:17',NULL,'18','','15',1,1,0),(1616919224151,1614872890768,1614697043090,5,1,10,'08:50',NULL,'18','','26',1,0,0),(1616919224494,1616583784429,1614697043090,5,1,9,'07:00',NULL,'18','21','21',1,0,0),(1616919224853,1614872890825,1614697043090,5,1,15,'08:39',NULL,'18','','38',1,1,0),(1616919225212,1614872890819,1614697043090,5,1,12,'09:01',NULL,'18','','32',1,0,0),(1616919225556,1614872890824,1614697043090,5,1,8,'08:50',NULL,'18','15','15',1,1,0),(1616919225914,1614872890760,1614697043090,5,1,18,'07:33',NULL,'18','','47',1,1,0),(1616919226272,1614872890832,1614697043090,5,1,7,'08:06',NULL,'18','13','13',1,0,0),(1616919226630,1614872890814,1614697043090,5,1,17,'09:01',NULL,'18','','43',1,1,0),(1616919227004,1614872890779,1614697043090,5,1,12,'08:50',NULL,'18','','32',1,1,0),(1616919227364,1614872890770,1614697043090,5,1,14,'09:12',NULL,'18','37','37',0,1,0),(1616919227710,1615544876969,1614697043090,5,1,19,'07:00',NULL,'18','','49',1,1,0),(1616919228068,1616504678203,1614697043090,5,1,12,'08:06',NULL,'18','32','32',1,1,0),(1616919228427,1614872890816,1614697043090,5,1,13,'08:28',NULL,'18','35','35',1,1,0),(1616919228769,1614872890782,1614697043090,5,1,17,'07:11',NULL,'18','','43',1,0,0),(1616919229127,1615544869856,1614697043090,5,1,17,'07:33',NULL,'18','','43',1,0,0),(1616919229485,1614872890781,1614697043090,5,1,16,'09:12',NULL,'18','42','42',0,1,0),(1616919229844,1615544874284,1614697043090,5,1,18,'07:11',NULL,'18','47','47',1,1,0),(1616919230205,1615544871281,1614697043090,5,1,17,'09:01',NULL,'18','43','43',1,1,0),(1616919230563,1614872890778,1614697043090,5,1,19,'07:55',NULL,'18','49','49',1,1,0),(1616919230921,1615544865998,1614697043090,5,1,15,'07:44',NULL,'18','38','38',1,1,0),(1616919231280,1615544877969,1614697043090,5,1,20,'08:17',NULL,'18','51','51',0,1,0),(1616919231638,1615544875693,1614697043090,5,1,21,'08:39',NULL,'18','52','52',0,1,0);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
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
  PRIMARY KEY (`tournamentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,1614697043090,'SERENGETI PRO-AM INVITATIONAL','SERENGETI PRO-AM INVITATIONAL','South Africa','2020-12-04 00:00:00','2020-12-07 00:00:00','9','9',1,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Serengeti_Proam_Invitational ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Serengeti_Proam_Invitational ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Serengeti_Proam_Invitational ');
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
  `SelectedHole` bigint(20) DEFAULT '-1',
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
INSERT INTO `uiselected` VALUES (0,1,1616919213465,1616919213732,5,'0000-00-00 00:00:00');
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

SELECT   GetPlayerSelectedRoundHolesPlayedStrokes(iSelectedID) into retStrokesPlayed; 
SELECT   GetPlayerSelectedRoundHolesPlayedPar(iSelectedID) into retHolesPlayedPar;

if retStrokesPlayed=0 and retHolesPlayedPar=0 then
return '';
end if;

select (retStrokesPlayed - retHolesPlayedPar) into retscore;
select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'E' else retscore end into retResult;

RETURN retResult;
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
select '3 OVER PAR' into retResult;
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
declare playerShotsExist int default 0;

SELECT count(*) into playerShotsExist FROM golf.score sc,golf.shots s where sc.idscore = s.idscore and playerid=iSelectedID
and s.holestatus=2
group by playerid ;
#select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

if playerShotsExist=0 then
return '';
end if;

SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retscore
 FROM golf.score sc
where sc.playerid = iSelectedID and sc.Playerid <> -1;


select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'E' else retscore end into retResult;

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

#select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

select count(*)  into playerShotsExist FROM golf.shots s,golf.score sc where sc.idscore=s.idscore and  sc.playerid = (SELECT 	s.playerid FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry) and s.holestatus=2
group by playerid;

if playerShotsExist=0 then
return '';
end if;



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


#select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;
select count(*)  into playerShotsExist FROM golf.shots s,golf.score sc where sc.idscore=s.idscore and  sc.playerid =iSelectedID and s.holestatus=2
group by playerid;

if playerShotsExist=0 then
return '';
end if;

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


when 12 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName FROM golf.score s,golf.uiselected u 
where roundid =u.SelectedRound and tournamentid = u.SelectedTournament order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,
s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
              
when 13 then
SELECT s.GraphicPos,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;
                
when 14 then
SELECT s.Ranking,GetplayerNameFromID(s.playerid)PlayerName,GetplayerSurnameFromID(s.playerid)PlayerSurName,GetPlayerSelectedRoundScore(s.idscore) PlayerScore,GetPlayerSelectedTournamentScore(s.playerid) TournamentScore,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundHolesPlayed(s.idscore),'*'),if(GetPlayerSelectedRoundHolesPlayed(s.idscore)=0,s.teetime,GetPlayerSelectedRoundHolesPlayed(s.idscore))),'--')) TotalParORCompletedHole,
GetplayerCountryFlagFromID(s.playerid)PlayerName,
if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold','IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_White') TextColor FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(TournamentScore='E',0,TournamentScore) as signed) asc,cast(if(PlayerScore='E',0,PlayerScore) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,s.playerid  limit limitstart,limitCount;

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
 FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
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

-- Dump completed on 2021-03-28 14:38:25