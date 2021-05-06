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
INSERT INTO `course` VALUES (1614697043090,'FANCOURT ','MON',18,36,36,72,3785,3557,6714,3461,3461,6714,'MONTAGU',1),(1620139804648,'FANCOURT','OUT',18,36,36,72,3423,3468,6301,3130,3130,6301,'OUTENIQUA',2);
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
INSERT INTO `courseholes` VALUES (1,1614697043090,'Hole 1',1,4,0,383),(2,1614697043090,'Hole 2',2,3,0,178),(3,1614697043090,'Hole 3',3,4,0,416),(4,1614697043090,'Hole 4',4,5,0,527),(5,1614697043090,'Hole 5',5,4,0,389),(6,1614697043090,'Hole 6',6,4,0,418),(7,1614697043090,'Hole 7',7,4,0,427),(8,1614697043090,'Hole 8',8,3,0,182),(9,1614697043090,'Hole 9',9,5,0,541),(10,1614697043090,'Hole 10',10,5,0,496),(11,1614697043090,'Hole 11',11,4,0,354),(12,1614697043090,'Hole 12',12,3,0,190),(13,1614697043090,'Hole 13',13,4,0,441),(14,1614697043090,'Hole 14',14,4,0,392),(15,1614697043090,'Hole 15',15,4,0,391),(16,1614697043090,'Hole 16',16,4,0,315),(17,1614697043090,'Hole 17',17,3,0,190),(18,1614697043090,'Hole 18',18,5,0,484),(19,1620139804648,'Hole 1',1,5,0,600);
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
INSERT INTO `players` VALUES (-1,' LINETTE',' HOLMSLYKKE','2021-05-05 11:12:37',NULL,'','DEN','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,-1,'0',0),(1614872890756,'ADRIEL','POONAN','1995-10-11 00:00:00','POO004','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 76.49','4 EAGLES IN 61 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,27,'0',0),(1614872890758,'CHRIS','SWANEPOEL','1984-11-22 00:00:00','SWA010','','RSA','','',NULL,0,'Year Turned Pro: 2003','Stroke Average: 72.09','4 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890760,'DESNE','VAN DEN BERGH','1989-10-20 00:00:00','VAN186','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.45','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890763,'PIETER','MOOLMAN','1991-02-26 00:00:00','MOO018','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 72.61','','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890764,'JARED','HARVEY','1988-08-06 00:00:00','HAR040','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 71.53','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1614872890765,'MUSIWALO','NETHUNZWI','1989-04-24 00:00:00','NET003','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.72','Year Turned Pro: 2013','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890766,'JACQUES','KRUYSWIJK','1992-10-16 00:00:00','KRU019','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.13','62 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,5,'49,375.00',2),(1614872890767,'JAKE','ROOS','1980-10-20 00:00:00','ROO003','','RSA','','',NULL,0,'2005','71.10','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'116,050.00',3),(1614872890768,'RUAN','KORB','1993-12-03 00:00:00','KOR003','','RSA','','',NULL,0,'2017','72.45','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890769,'JACO','PRINSLOO','1989-08-23 00:00:00','PRI022','','RSA','','',NULL,0,'2012','71.57','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,9,'184,860.71',3),(1614872890770,'JAKE','REDMAN','1987-04-26 00:00:00','RED004','','RSA','','',NULL,0,'Year Turned Pro: 2010','TIED 2ND IN THE SUNSHINE TOUR ORDER OF MERIT','Stroke Average: 72.23','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'106,850.00',3),(1614872890771,'ALEX','HAINDL','1983-02-03 00:00:00','HAI002','','RSA','','',NULL,0,'Year Turned Pro: 2000','Stroke Average: 71.72','3 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'0',0),(1614872890772,'THRISTON','LAWRENCE','1996-12-03 00:00:00','LAW008','','RSA','','',NULL,0,'2014','70.61','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'100,650.00',3),(1614872890773,'OCKIE','STRYDOM','1985-01-08 00:00:00','STR011','','RSA','','',NULL,0,'2009','71.71','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,24,'0',0),(1614872890774,'JACQUES','BLAAUW','1986-02-12 00:00:00','BLA019','','RSA','','',NULL,0,'Year Turned Pro: 2008','RANKED 414 IN THE OFFICIAL WORLD GOLF RANKINGS','4 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,12,'0',0),(1614872890776,'JEAN','HUGO','1975-12-03 00:00:00','HUG004','','RSA','','',NULL,0,'1999','70.76','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'84,766.67',3),(1614872890777,'ADILSON','DA SILVA','1972-01-24 00:00:00','DAS001','','SANTA CRUZ AND BELEM NOVO','','',NULL,0,'1994','70.61','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil',0,17,'51,450.00',3),(1614872890778,'JJ','SENEKAL','1988-01-25 00:00:00','SEN004','','RSA','','',NULL,0,'Amateur','Stroke Average: 72.42','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890779,'JAMES','KINGSTON','1965-11-30 00:00:00','KIN001','','RSA','','',NULL,0,'1988','71.40','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890780,'RHYS','ENOCH','1988-06-16 00:00:00','ENO002','','WAL','','',NULL,0,'Year Turned Pro: 2012','Residence: Cardiff, Wales','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales',0,NULL,'158,500.00',1),(1614872890781,'HENNIE','O\'KENNEDY','1996-09-02 00:00:00','OKE004','','RSA','','',NULL,0,'Amateur','Stroke Average: 73.82','63 LOWEST ROUND SCORE ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890782,'LUKE','BROWN','1998-06-02 00:00:00','BRO037','','RSA','','',NULL,0,'Year Turned Pro: 2018','Stroke Average: 72.63','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1614872890783,'MALCOLM','MITCHELL','1994-12-11 00:00:00','MIT007','','RSA','','',NULL,0,' 2019','70.63','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890784,'TRISTEN','STRYDOM','1997-02-21 00:00:00','STR026','','RSA','','',NULL,0,'2017','72.15','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'83,375.00',3),(1614872890785,'HEINRICH','BRUINERS','1987-10-07 00:00:00','BRU006','','RSA','','',NULL,0,'2006','72.69','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890786,'LYLE','ROWE','1987-06-13 00:00:00','ROW005','','RSA','','',NULL,0,'2009','72.11','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890787,'DEAN','BURMESTER','1989-06-02 00:00:00','BUR025','','RSA','','',NULL,0,'Year Turned Pro: 2010','7 TOURNAMENT WINS','RANKED 183 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'97,500.00',1),(1614872890788,'ZANDER','LOMBARD','1995-01-18 00:00:00','LOM010','','RSA','','',NULL,0,'Year Turned Pro: 2014','RANKED 371 IN THE OFFICIAL WORLD GOLF RANKINGS','2018/19 SUNSHINE TOUR WINNER','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890789,'JACO','AHLERS','1982-11-19 00:00:00','AHL001','','RSA','','',NULL,0,'Year Turned Pro: 2006','RANKED 280 IN THE OFFICIAL WORLD GOLF RANKINGS','9 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,4,'0',0),(1614872890790,'DARREN','FICHARDT','1975-05-13 00:00:00','FIC002','','RSA','','',NULL,0,'Year Turned Pro: 1994','18 TOURNAMENT WINS','RANKED 236 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,5,'0',0),(1614872890791,'KEENAN','DAVIDSE','1989-05-10 00:00:00','DAV019','','RSA','','',NULL,0,'Year Turned Pro: 2009','Stroke Average: 72.00','AVERAGES 4 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0),(1614872890792,'LOUIS','DE JAGER','1987-03-30 00:00:00','DEJ006','','RSA','','',NULL,0,'Year Turned Pro: 2008','5 TOURNAMENT WINS','RANKED 322 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890794,'NEIL','SCHIETEKAT','1984-01-31 00:00:00','SCH044','','RSA','','',NULL,0,'2006','71.17','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,12,'111,400.00',3),(1614872890795,'WILCO','NIENABER','2000-04-07 00:00:00','NIE008','','RSA','','',NULL,0,'Amateur','Stroke Average: 70.06','AVERAGES 5 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,6,'0',0),(1614872890796,'DYLAN','NAIDOO','1992-02-21 00:00:00','NAI013','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 71.91','65 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,18,'0',0),(1614872890798,'MERRICK','BREMNER','1986-03-26 00:00:00','BRE005','','RSA','','',NULL,0,'Year Turned Pro: 2005','Stroke Average: 71.62','7 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,17,'0',0),(1614872890799,'SHAUN','NORRIS','1982-05-14 00:00:00','NOR008','','RSA','','',NULL,0,'Year Turned Pro: 2002','2 TOURNAMENT WINS','RANKED 111 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890800,'JAYDEN','SCHAPER','2001-03-15 00:00:00','SCH079','','RSA','','',NULL,0,'Amateur','Stroke Average: 70.43','8 EAGLES IN 35 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890801,'GARRICK','HIGGO','1999-05-12 00:00:00','HIG006','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 70.10','10 EAGLES IN 63 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890802,'TOTO','THIMBA JNR','1986-02-10 00:00:00','THI001','','RSA','','',NULL,0,'Year Turned Pro: 2007','Stroke Average: 72.83','63 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890803,'MATIAS','CALDERON','1991-12-18 00:00:00','CAL012','','CHL','','',NULL,0,'Year Turned Pro: 2016','Stroke Average: 72.37','Residence: Region Metropolitana (Chile)','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Chile',0,NULL,'0',0),(1614872890804,'ANDRE','NEL','1995-05-31 00:00:00','NEL019','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.88','26 EAGLES IN 180 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,1,'0',0),(1614872890808,'MJ','VILJOEN','1995-05-08 00:00:00','VIL011','','RSA','','',NULL,0,'2014','71.94','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'70,075.00',3),(1614872890810,'HENNIE','DU PLESSIS','1996-10-14 00:00:00','DUP029','','RSA','','',NULL,0,'2015','71.34','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'54,500.00',2),(1614872890812,'CHRISTIAAN','BASSON','1984-04-30 00:00:00','BAS007','','RSA','','',NULL,0,'2007','71.39','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890813,'LUKE','JERLING','1992-07-10 00:00:00','JER001','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.58','30 EAGLES IN 212 ROUNDS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,3,'0',0),(1614872890814,'STEVE','SURRY','1982-02-11 00:00:00','SUR001','','ENG','','',NULL,0,'Year Turned Pro: 2003','RANKED 432 IN THE OFFICIAL WORLD GOLF RANKINGS','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England',0,NULL,'0',0),(1614872890815,'DANIEL','GREENE','1985-08-05 00:00:00','GRE022','','BOSCH HOEK GOLF CLUB','','',NULL,0,' 2010','71.73','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,1,'0',0),(1614872890816,'JAMES','DU PREEZ','1995-10-13 00:00:00','DUP028','','RSA','','',NULL,0,'2018','71.67','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890817,'RUAN','DE SMIDT','1989-10-25 00:00:00','DES005','','RSA','','',NULL,0,'Year Turned Pro: 2011','4 TOURNAMENT WINS','60 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890818,'STEPHEN','FERREIRA','1991-12-06 00:00:00','FER028','','POR','','',NULL,0,'2011','72.33','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal',0,16,'0',0),(1614872890819,'DEON','GERMISHUYS','1999-10-22 00:00:00','GER017','','RSA','','',NULL,0,'2019','70.74','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,8,'0',0),(1614872890820,'ANTHONY','MICHAEL','1985-08-22 00:00:00','MIC009','','RSA','','',NULL,0,'2009',' 71.64','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'60,166.67',3),(1614872890821,'KYLE','BARKER','1998-02-11 00:00:00','BAR054','','RSA','','',NULL,0,'2017','71.96','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0),(1614872890822,'DOUG','MCGUIGAN','1970-08-07 00:00:00','MCG001','','SCO','','',NULL,0,'1989','71.80','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland',0,NULL,'0',0),(1614872890823,'CALLUM','MOWAT','1992-02-11 00:00:00','MOW001','','RSA','','',NULL,0,'Year Turned Pro: 2014','Stroke Average: 72.41','61 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,3,'0',0),(1614872890824,'CJ','DU PLESSIS','1992-02-04 00:00:00','DUP022','','RSA','','',NULL,0,' 2013',' 72.40','4 ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,15,'0',0),(1614872890825,'ESTIAAN','CONRADIE','1997-10-12 00:00:00','CON007','','RSA','','',NULL,0,'Amateur','Stroke Average: 71.75','AVERAGES 4 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890826,'FREDRIK','FROM','1989-02-08 00:00:00','FRO006','','SWE','','',NULL,0,'2016','71.13','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,NULL,'0',0),(1614872890828,'CLINTON','GROBLER','1995-05-09 00:00:00','GRO026','','RSA','','',NULL,0,'','72.38','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890830,'ROURKE','VAN DER SPUY','1990-01-11 00:00:00','VAN178','','RSA','','',NULL,0,'Year Turned Pro: 2012','Stroke Average: 72.01','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890831,'ULRICH','VAN DEN BERG','1975-01-13 00:00:00','VAN060','','RSA','','',NULL,0,'Year Turned Pro: 1999','Stroke Average: 70.98','7 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890832,'MARTIN','ROHWER','1993-08-24 00:00:00','ROH001','','RSA','','',NULL,0,'2016','70.64','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'128,450.00',3),(1614872890833,'HENNIE','OTTO','1976-06-25 00:00:00','OTT002','','RSA','','',NULL,0,'1997',' 70.56','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,21,'118,000.00',3),(1614872890835,'MICHAEL','PALMER','1989-11-17 00:00:00','PAL008','','RSA','','',NULL,0,'Year Turned Pro: 2015','Stroke Average: 72.05','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890836,'RUAN','CONRADIE','1995-08-08 00:00:00','CON004','','RSA','','',NULL,0,'','71.48','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,8,'0',0),(1614872890837,'KEITH','HORNE','1971-06-09 00:00:00','HOR002','','RSA','','',NULL,0,'Year Turned Pro: 1996','9 TOURNAMENT WINS','RANKED 517 IN THE OFFICIAL WORLD GOLF RANKINGS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1614872890838,'JACO','VAN ZYL','1979-02-23 00:00:00','VAN062','','RSA','','',NULL,0,'2001','70.33','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,22,'0',0),(1614872890839,'TREVOR','FISHER JNR','1979-06-08 00:00:00','FIS005','','RSA','','',NULL,0,'2002','71.10','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',0,NULL,'56,825.00',3),(1614872890840,'OLIVER','BEKKER','1984-12-11 00:00:00','BEK004','','RSA','','',NULL,0,'2008','71.18','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,13,'68,760.71',3),(1614872890841,'JC','RITCHIE','1994-02-24 00:00:00','RIT004','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.26','2019/20 SUNSHINE TOUR ORDER OF MERIT WINNER','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,9,'0',0),(1614872890842,'JBE\'','KRUGER','1986-06-23 00:00:00','KRU013','','RSA','','',NULL,0,'2007','70.81','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'158,500.00',3),(1615544865998,'MICHAEL','HOLLICK','2021-03-12 10:27:48','HOL016','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 72.59','1 TOURNAMENT WIN','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544868676,'DANIEL','VAN TONDER','2021-03-12 10:27:49','VAN162','','RSA','','',NULL,0,'Year Turned Pro: 2011','7 TOURNAMENT WINS','Stroke Average: 70.63','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,15,'97,500.00',1),(1615544869184,'THANDA','MAVUNDLA','2021-03-12 10:27:49','MAV004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544869514,'ANDRE','BOSSERT','2021-03-12 10:27:49','BOS001','','SUI','','',NULL,0,'Year Turned Pro: 1989','Stroke Average: 71.91','64 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1615544869856,'PEETIE','VAN DER MERWE','2021-03-12 10:27:50','VAN283','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',2,NULL,'0',0),(1615544870238,'JASON','ROETS','2021-03-12 10:27:50','ROE009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544870433,'ROBERTO','LUPINI','2021-03-12 10:27:50','LUP002','','RSA','','',NULL,0,'Year Turned Pro: 2008','Stroke Average: 74.14','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544870564,'KEAGAN','THOMAS','2021-03-12 10:27:51','THO041','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544870980,'PAUL','BOSHOFF','2021-03-12 10:27:51','BOS015','','RSA','','',NULL,0,'AVERAGES 3 BIRDIES PER ROUND','Stroke Average: 73.58','63 LOWEST ROUND SCORE','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',3,NULL,'0',0),(1615544871120,'WALLIE','COETSEE','2021-03-12 10:27:51','COE001','','RSA','','',NULL,0,'Year Turned Pro: 1992','Stroke Average: 72.14','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871281,'COERT','GROENEWALD','2021-03-12 10:27:51','GRO014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871438,'WYNAND','DINGLE','2021-03-12 10:27:51','DIN004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,22,'0',0),(1615544871565,'HAYDEN','GRIFFITHS','2021-03-12 10:27:51','GRI013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544871744,'MADALITSO','MUTHIYA','2021-03-12 10:27:51','MUT002','','ZAM','','',NULL,0,' 2006','71.69','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,NULL,'0',0),(1615544871830,'JASON','SMITH','2021-03-12 10:27:52','SMI059','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1615544871971,'SHALAN','GOVENDER','2021-03-12 10:27:52','GOV005','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 78.61','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544872087,'STUART','SMITH','2021-03-12 10:27:52','SMI046','','BOT','','',NULL,0,'Year Turned Pro: 2011','AVERAGES 3 BIRDIES PER ROUND','Stroke Average: 73.98','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Botswana ',0,NULL,'0',0),(1615544872221,'BYRON','COETZEE','2021-03-12 10:27:52','COE034','','RSA','','',NULL,0,'2 EAGLES IN 17 ROUNDS','Stroke Average: 72.94','AVERAGE 4 BIRDIES PER ROUND ','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544872355,'PHILIP','GEERTS','2021-03-12 10:27:52','GEE003','','ITA','','',NULL,0,'2017','72.63','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1615544872499,'MARTHIN','SCHEEPERS','2021-03-12 10:27:53','SCH060','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544873098,'RUPERT','KAMINSKI','2021-03-12 10:27:53','KAM014','','RSA','','',NULL,0,'66 LOWEST ROUND SCORE','Stroke Average: 73.26','AVERAGES 3 BIRDIES PER ROUND','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544873364,'RICHIE','O\'DONOVAN','2021-03-12 10:27:53','ODO004','','IRL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Ireland ',0,1,'0',0),(1615544873568,'ANTON','HAIG','2021-03-12 10:27:53','HAI003','','RSA','','',NULL,0,'2004','71.93','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,23,'0',0),(1615544873866,'BEN','FIRTH','2021-03-12 10:27:54','FIR001','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1615544874093,'NIKHIL','RAMA','2021-03-12 10:27:54','RAM010','','RSA','','',NULL,0,'2020','72.54','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544874284,'LUCA','FILIPPI','2021-03-12 10:27:54','FIL002','','RSA','','',NULL,0,'','72.65','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544874469,'ALLISTER','DE KOCK','2021-03-12 10:27:54','DEK006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544874666,'VAUGHN','GROENEWALD','2021-03-12 10:27:54','GRO007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544874872,'JACQUES','DE VILLIERS','2021-03-12 10:27:55','DEV012','','RSA','','',NULL,0,'2013','72.61','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875052,'DWAYNE','BASSON','2021-03-12 10:27:55','BAS013','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875221,'QUINTIN','WILSNACH','2021-03-12 10:27:55','WIL054','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875393,'LOUIS','ALBERTSE','2021-03-12 10:27:55','ALB009','','RSA','','',NULL,0,'2018','71.76','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875560,'THERION','NEL','2021-03-12 10:27:55','NEL018','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875693,'TEAGHAN','GAUCHE','2021-03-12 10:27:55','GAU003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544875887,'GIDEON','VAN DER VYVER','2021-03-12 10:27:56','VAN285','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876026,'GREG','BENTLEY','2021-03-12 10:27:56','BEN018','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544876163,'THABI','NGCOBO','2021-03-12 10:27:56','NGC001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876319,'MAKHETHA','MAZIBUKO','2021-03-12 10:27:56','MAZ001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876474,'STEFAN','WEARS-TAYLOR','2021-03-12 10:27:56','WEA006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876644,'JEAN-PAUL','STRYDOM','2021-03-12 10:27:56','STR023','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544876782,'BROOKLIN','BAILEY','2021-03-12 10:27:57','BAI009','','USA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',0,15,'0',0),(1615544876969,'CLAYTON','MANSFIELD','2021-03-12 10:27:57','MAN033','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544877096,'ANDREW','VAN DER KNAAP','2021-03-12 10:27:57','VAN309','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544877277,'ANDRE','DE DECKER','2021-03-12 10:27:57','DED003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544877461,'SAMBA','NIANG','2021-03-12 10:27:57','NIA001','','SEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Senegal ',0,NULL,'0',0),(1615544877593,'MOHAMMAD','MANDHU','2021-03-12 10:27:57','MAN021','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544877783,'SEAN','BRADLEY','2021-03-12 10:27:58','BRA020','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',5,NULL,'0',0),(1615544877969,'JACK','DUTHIE','2021-03-12 10:27:58','DUT020','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878203,'JURAN','DREYER','2021-03-12 10:27:58','DRE012','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878446,'ALPHEUS','KELAPILE','2021-03-12 10:27:58','KEL014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878653,'EVANCE','VUKEYA','2021-03-12 10:27:58','VUK001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544878830,'MATTHEW','SPACEY','2021-03-12 10:28:00','SPA005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880189,'SIYANDA','MWANDLA','2021-03-12 10:28:00','MWA006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880229,'RICHARD','JOUBERT','2021-03-12 10:28:00','JOU009','','RSA','','',NULL,0,'','73.09','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,24,'0',0),(1615544880237,'THABANG','SIMON','2021-03-12 10:28:00','SIM006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544880253,'ALBERT','VENTER','2021-03-12 10:28:00','VEN017','','RSA','','',NULL,0,'2017','72.48','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,13,'0',0),(1615544880258,'BREYTEN','MEYER','2021-03-12 10:28:00','MEY014','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880263,'DAVID','MCINTYRE','2021-03-12 10:28:00','MCI006','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880266,'DESVONDE','BOTES','2021-03-12 10:28:00','BOT002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880274,'JASON','DIAB','2021-03-12 10:28:00','DIA002','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1,NULL,'0',0),(1615544880277,'ANDREW','WILLIAMSON','2021-03-12 10:28:00','WIL063','','RSA','','',NULL,0,NULL,'74.78','3','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880280,'DERICK','PETERSEN','2021-03-12 10:28:00','PET007','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880283,'DAYNE','MOORE','2021-03-12 10:28:00','MOO015','','ZAM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zambia ',0,NULL,'0',0),(1615544880289,'BRADFORD','VAUGHAN','2021-03-12 10:28:00','VAU001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880293,'PH','MCINTYRE','2021-03-12 10:28:00','MCI004','','RSA','','',NULL,0,'AVERAGES 3 BIRDIES PER ROUND','Stroke Average: 72.72','2 TOURNAMENT WINS','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880296,'AUBREY','BECKLEY','2021-03-12 10:28:00','BEC008','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880298,'TUMELO','MOLLOYI','2021-03-12 10:28:00','MOL019','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880301,'RIEKUS','NORTJE','2021-03-12 10:28:00','NOR017','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,27,'0',0),(1615544880304,'JAMES','PENNINGTON','2021-03-12 10:28:00','PEN002','','SWZ','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Swaziland ',0,NULL,'0',0),(1615544880310,'JACQUIN','HESS','2021-03-12 10:28:00','HES004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,27,'0',0),(1615544880313,'CAMERON','MORALEE','2021-03-12 10:28:00','MOR025','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880316,'SHAAHID','MAHMED','2021-03-12 10:28:00','MAH017','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1615544880319,'TRAVIS','LADNER','2021-03-12 10:28:00','LAD003','','RSA','','',NULL,1,NULL,NULL,'','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880326,'CHRIS','DAVISON','2021-03-12 10:28:00','DAV001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1615544880329,'IRVIN','MAZIBUKO','2021-03-12 10:28:00','MOS003','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616062258291,'BENJAMIN','FOLLETT-SMITH','2021-03-18 10:10:58','FOL001','','ZIM','','',NULL,0,'2018','71.93','4','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1616062258302,'JAMES','KAMTE','2021-03-18 10:10:58','KAM005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,2,'0',0),(1616062258322,'LEON','VISSER','2021-03-18 10:10:58','VIS015','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616076251413,'COLIN','NEL','2021-03-18 14:04:11','NEL009','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616076251428,'DANIEL','NDUVA','2021-03-18 14:04:11','NDU001','','KEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Kenya ',0,NULL,'0',0),(1616076251432,'MARK','WILLIAMS','2021-03-18 14:04:11','WIL030','','ZIM','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Zimbabwe ',0,NULL,'0',0),(1616076251436,'FREDDY','SCHOTT','2021-03-18 14:04:11','SCH098','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,5,'0',0),(1616504678203,'CHRISTIAAN','MAAS','2021-03-23 13:04:38','MAA006','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616583784429,'KYLE','MCCLATCHIE','2021-03-24 11:03:04','MCC023','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',3,NULL,'0',0),(1616835065472,'JOANNE','NEWELL','2021-03-27 08:51:05','NOR004','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616835065562,'DIRK','CLOETE','2021-03-27 08:51:05','CLO005','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616835065568,'DORNAY','LOMBARD','2021-03-27 08:51:05','LOM011','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1616835065574,'SONIA','SCHOEMAN','2021-03-27 08:51:05','SCH082','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1619088070248,'JONATHAN','THOMSON','2021-04-22 10:41:10','THO031','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,20,'0',0),(1619088070262,'NIKLAS','MOLLER','2021-04-22 10:41:10','MOL028','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,7,'0',0),(1619088070265,'MANUEL','ELVIRA','2021-04-22 10:41:10','ELV002','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1619088070268,'FELIX','MORY','2021-04-22 10:41:10','MOR035','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,2,'0',0),(1619088070271,'RYAN','EVANS','2021-04-22 10:41:10','EVA011','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619088070277,'ALEXANDER','KNAPPE','2021-04-22 10:41:10','KNA002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619088070281,'DAVID','BOOTE','2021-04-22 10:41:10','BOO014','','WAL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales ',0,3,'0',0),(1619088070289,'DANIEL','GAVINS','2021-04-22 10:41:10','GAV002','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,6,'0',0),(1619088070315,'DEYEN','LAWSON','2021-04-22 10:41:10','LAW013','','AUS','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Australia ',0,NULL,'0',0),(1619088070323,'OLIVER','LINDELL','2021-04-22 10:41:10','LIN024','','FIN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,NULL,'0',0),(1619088070353,'EMILIO','CUARTERO BLANCO','2021-04-22 10:41:10','CUA001','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,11,'0',0),(1619088070362,'JORDI','GARCIA DEL MORAL','2021-04-22 10:41:10','GAR019','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,2,'0',0),(1619088070367,'PETER','KARMIS','2021-04-22 10:41:10','KAR003','','GRE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Greece ',0,NULL,'0',0),(1619088070380,'JEONG','KO','2021-04-22 10:41:10','KOO005','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,9,'0',0),(1619088070394,'MICHAEL','HOEY','2021-04-22 10:41:10','HOE001','','NIR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Northern_Ireland ',0,NULL,'0',0),(1619088070407,'PHILIP','ERIKSSON','2021-04-22 10:41:10','ERI007','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,3,'0',0),(1619088070424,'MARCEL','SIEM','2021-04-22 10:41:10','SIE002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619088070442,'MORITZ','LAMPERT','2021-04-22 10:41:10','LAM008','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619088070446,'HENRIC','STUREHED','2021-04-22 10:41:10','STU003','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,23,'0',0),(1619088070451,'CHASE','HANNA','2021-04-22 10:41:10','HAN025','','USA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/United_States_of_America(USA) ',0,NULL,'0',0),(1619088070455,'ESPEN','KOFSTAD','2021-04-22 10:41:10','KOF001','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,4,'0',0),(1619088070462,'KRISTIAN','JOHANNESSEN','2021-04-22 10:41:10','JOH038','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619088070480,'LUCAS','VACARISAS','2021-04-22 10:41:10','VAC001','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,NULL,'0',0),(1619088070485,'ALLEN','JOHN','2021-04-22 10:41:10','JOH041','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,4,'0',0),(1619088070490,'LARS','KEUNEN','2021-04-22 10:41:10','KEU002','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0),(1619088070496,'ARON','ZEMMER','2021-04-22 10:41:10','ZEM001','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,7,'0',0),(1619088070506,'DAAN','HUIZING','2021-04-22 10:41:10','HUI001','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,2,'0',0),(1619088070511,'BRANDON','STONE','2021-04-22 10:41:10','STO012','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1619088070527,'RICARDO','GOUVEIA','2021-04-22 10:41:10','GOU018','','POR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal ',0,NULL,'0',0),(1619088070532,'MARTIN','SIMONSEN','2021-04-22 10:41:10','SIM022','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,16,'0',0),(1619088070542,'SANTIAGO','TARRIO','2021-04-22 10:41:10','TAR007','','ESP','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Spain ',0,12,'0',0),(1619088070547,'NICOLAI','KRISTENSEN','2021-04-22 10:41:10','KRI010','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,2,'0',0),(1619088070567,'GAVIN','MOYNIHAN','2021-04-22 10:41:10','MOY007','','IRL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Ireland ',0,19,'0',0),(1619088070596,'CASEY','JARVIS','2021-04-22 10:41:10','JAR004','','RSA','','',NULL,1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,NULL,'0',0),(1619088070606,'ROOPE','KAKKO','2021-04-22 10:41:10','KAK001','','FIN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Finland ',0,22,'0',0),(1619088070617,'ANTON','KARLSSON','2021-04-22 10:41:10','KAR009','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,13,'0',0),(1619088070628,'JESPER','SANDBORG','2021-04-22 10:41:10','SAN025','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0,16,'0',0),(1619104036943,'PELLE','EDBERG','2021-04-22 15:07:17','EDB001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,20,'0',0),(1619104037043,'KRISTOFFER','REITAN','2021-04-22 15:07:17','REI012','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619104037059,'MARCUS','HELLIGKILDE','2021-04-22 15:07:17','HEL004','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,NULL,'0',0),(1619104037071,'JENS','DANTORP','2021-04-22 15:07:17','DAN004','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037079,'MIKAEL','LINDBERG','2021-04-22 15:07:17','LIN027','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,11,'0',0),(1619104037087,'DANIEL','YOUNG','2021-04-22 15:07:17','YOU008','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0),(1619104037098,'JENS','FAHRBRING','2021-04-22 15:07:17','FAH001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,1,'0',0),(1619104037110,'RAPHAEL','DE SOUSA','2021-04-22 15:07:17','DES004','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,6,'0',0),(1619104037144,'ALFIE','PLANT','2021-04-22 15:07:17','PLA005','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037154,'GARY','STAL','2021-04-22 15:07:17','STA014','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,1,'0',0),(1619104037164,'UGO','COUSSAUD','2021-04-22 15:07:17','COU006','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619104037172,'BRYCE','EASTON','2021-04-22 15:07:17','EAS001','','RSA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,19,'0',0),(1619104037180,'JULIEN','BRUN','2021-04-22 15:07:17','BRU016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,3,'0',0),(1619104037190,'HURLY','LONG','2021-04-22 15:07:17','LON006','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,NULL,'0',0),(1619104037199,'CHRISTOPHER','MIVIS','2021-04-22 15:07:17','MIV001','','BEL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Belgium ',0,10,'0',0),(1619104037209,'KOEN','KOUWENAAR','2021-04-22 15:07:17','KOU006','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,NULL,'0',0),(1619104037235,'PER','LANGFORS','2021-04-22 15:07:17','LAN025','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',2,NULL,'0',0),(1619104037243,'EWEN','FERGUSON','2021-04-22 15:07:17','FER041','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,10,'0',0),(1619104037255,'CRAIG','HOWIE','2021-04-22 15:07:17','HOW011','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,14,'0',0),(1619104037269,'ROBIN','PETERSSON','2021-04-22 15:07:17','PET019','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,10,'0',0),(1619104037285,'BENJAMIN','RUSCH','2021-04-22 15:07:17','RUS010','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,7,'0',0),(1619104037293,'ROBBIE','VAN WEST','2021-04-22 15:07:17','VAN351','','NED','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Netherlands ',0,24,'0',0),(1619104037325,'TODD','CLEMENTS','2021-04-22 15:07:17','CLE004','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037333,'JACOB','OAKLEY','2021-04-22 15:07:17','OAK001','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037342,'ENRICO','DI NITTO','2021-04-22 15:07:17','DIN006','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1619104037351,'BRADLEY','MOORE','2021-04-22 15:07:17','MOO037','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,23,'0',0),(1619104037359,'BRADLEY','NEIL','2021-04-22 15:07:17','NEI005','','SCO','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,NULL,'0',0),(1619104037367,'NATHAN','KIMSEY','2021-04-22 15:07:17','KIM011','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037375,'MATTHEW','BALDWIN','2021-04-22 15:07:17','BAL006','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,2,'0',0),(1619104037384,'JORDAN','WRISDALE','2021-04-22 15:07:17','WRI012','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,NULL,'0',0),(1619104037394,'JACK','HARRISON','2021-04-22 15:07:17','HAR048','','ENG','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,3,'0',0),(1619104037409,'LUKAS','LIPOLD','2021-04-22 15:07:17','LIP005','','AUT','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0),(1619104037416,'JONAS','KOLBING','2021-04-22 15:07:17','KOL002','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,18,'0',0),(1619104037431,'HARALDUR','MAGNUS','2021-04-22 15:07:17','MAG010','','ISL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Iceland ',0,NULL,'0',0),(1619104037440,'EIRIK','JOHANSEN','2021-04-22 15:07:17','JOH031','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619104037450,'CHRISTOPHER','SAHLSTROM','2021-04-22 15:07:17','SAH001','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,20,'0',0),(1619104037461,'MARTIN','WIEGELE','2021-04-22 15:07:17','WIE005','','AUT','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Austria ',0,NULL,'0',0),(1619104037473,'DAMIEN','PERRIER','2021-04-22 15:07:17','PER016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619104037484,'ROMAIN','WATTEL','2021-04-22 15:07:17','WAT016','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1619104037492,'JOEL','GIRRBACH','2021-04-22 15:07:17','GIR003','','SUI','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,NULL,'0',0),(1619104037509,'FEDERICO','MACCARIO','2021-04-22 15:07:17','MAC033','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1619104037526,'CHRISTOFER','BLOMSTRAND','2021-04-22 15:07:17','BLO004','','SWE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,NULL,'0',0),(1619104037550,'EDOARDO','LIPPARELLI','2021-04-22 15:07:17','LIP004','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1619104037560,'THOMAS','ROSENMULLER','2021-04-22 15:07:17','ROS036','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,17,'0',0),(1619104037568,'HINRICH','ARKENAU','2021-04-22 15:07:17','ARK001','','GER','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,1,'0',0),(1619694651668,'JOHN','AXELSEN','2021-04-29 11:10:51','AXE002','','DEN','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Denmark ',0,14,'0',0),(1619694651781,'LORENZO','SCALISE','2021-04-29 11:10:51','SCA010','','ITA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Italy ',0,NULL,'0',0),(1619694652037,'STANISLAV','MATUS','2021-04-29 11:10:52','MAT046','','CZE','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Czech_Republic ',0,NULL,'0',0),(1619779151569,'DANIEL','HILLIER','2021-04-30 10:39:11','HIL012','','NZL','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/New_Zealand ',0,11,'0',0),(1619779151733,'ELIAS','BERTHEUSSEN','2021-04-30 10:39:11','BER038','','NOR','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,NULL,'0',0),(1619779151740,'MATHIEU','FENASSE','2021-04-30 10:39:11','FEN008','','FRA','','',NULL,0,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,NULL,'0',0),(1620209032069,'GEORGE','COETZEE','1986-07-18 00:00:00',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,-1,'0',0),(1620213081653,'RICHARD','STERNE','1981-08-27 00:00:00',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,-1,'0',0),(1620217785385,'ANNA','MAGNUSSON','2021-05-05 12:29:45',NULL,'','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,-1,'0',0),(1620218639556,'MIMMI','BERGMAN','2021-05-05 12:43:59',NULL,'','SWE','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden ',0,-1,'0',0),(1620218693819,'CLARA','PIETRI','2021-05-05 12:44:53',NULL,'','SUI','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,-1,'0',0),(1620218900291,'MONIQUE','SMIT','2021-05-05 12:48:20',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,-1,'0',0),(1620219162771,'NADIA','VAN DER WESTHUIZEN','2021-05-05 12:52:42',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,-1,'0',0),(1620219164115,'CAROLINE','ROMINGER','2021-05-05 12:52:44',NULL,'','SUI','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Switzerland ',0,-1,'0',0),(1620219331291,'SARINA','SCHMIDT','2021-05-05 12:55:31',NULL,'','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,-1,'0',0),(1620219331923,'LEE-ANNE','PACE','2021-05-05 12:55:31',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0,-1,'0',0),(1620219487803,'ANNE-LISE','CAUDAL','2021-05-05 12:58:07',NULL,'','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,-1,'0',0),(1620219490083,'OLIVIA','COWAN','2021-05-05 12:58:10',NULL,'','GER','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany ',0,-1,'0',0),(1620219490866,'CAITLYN','MACNAB','2021-05-05 12:58:10',NULL,'','','','',NULL,1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1620219910826,'MARIANNE','SKARPNORD','2021-05-05 13:05:10',NULL,'','NOR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,-1,'0',0),(1620219911482,'JUSTINE','DREHER','2021-05-05 13:05:11',NULL,'','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,-1,'0',0),(1620219912883,'MANON','GIDALI','2021-05-05 13:05:12',NULL,'','FRA','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/France ',0,-1,'0',0),(1620220124923,'LAUREN','TAYLOR','2021-05-05 13:08:44',NULL,'','ENG','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England ',0,-1,'0',0),(1620220125314,'RACHAEL','TAYLOR','2021-05-05 13:08:45',NULL,'','SCO','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland ',0,-1,'0',0),(1620220125690,'STINA','RESEN','2021-05-05 13:08:45',NULL,'','NOR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,-1,'0',0),(1620220132978,'TONJE','DAFFINRUD','2021-05-05 13:08:52',NULL,'','NOR','','',NULL,-1,NULL,NULL,NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Norway ',0,-1,'0',0),(1620220499241,'MICHELLE','LEIGH','2021-05-05 13:14:59',NULL,'','','','',NULL,-1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1620220499532,'000Name269','000Surname269','2021-05-05 13:14:59',NULL,'','','','',NULL,-1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1620220500041,'000Name270','000Surname270','2021-05-05 13:15:00',NULL,'','','','',NULL,-1,NULL,NULL,NULL,'','','',0,-1,'0',0),(1620220501056,'000Name271','000Surname271','2021-05-05 13:15:01',NULL,'','','','',NULL,-1,NULL,NULL,NULL,'','','',0,-1,'0',0);
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurnameIfDuplicate','SELECT GetPlayerSurnameIncludeInitialIfDupInTeamFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT metres FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 9,18;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 0,9) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(18,'SPHoles10to18Strokes','select * from (SELECT ifnull(strokes,\'\') strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry order by s.shotsid limit 9,18) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(19,'SPHoles1to9StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(20,'SPHoles10to18StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'STCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(32,'SPPosition','SELECT GetPlayerSelectedTournamentPosition(u.SelectedScoreEntry) FROM golf.uiselected u;'),(33,'SPCurrentHoleShot','SELECT s.strokes  CurrentShooting FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(34,'SRDescription','SELECT r.Description FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(35,'STDescription','SELECT t.description FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(36,'STLogo1','SELECT t.logo1 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(37,'STLogo2','SELECT t.logo2 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(38,'STLogo3','SELECT t.logo3 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(39,'SPStrokesSelectedHole','SELECT s.strokes FROM golf.shots s,golf.uiselected u where s.shotsid = u.SelectedHole;'),(40,'SPStrokeSelectedHoleDescription','SELECT GetPlayerSelectedStrokesFromHoleParDescription(u.SelectedHole) StrokeDescription FROM golf.uiselected u;'),(41,'SPStrokeSelectedHoleFlag','SELECT if(f.shotsflagid=s.strokes,GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(42,'SPHoles1to9StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 1 and 9) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(43,'SPHoles10to18StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 10 and 18) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(44,'STCourseDescription','SELECT sc.Description FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(159,'STLeadersScore','call GetTournamentSelectedLeaderBoard(6,0,1);'),(160,'SPTournamentScoreAtSelectedHole','SELECT 	GetPlayerSelectedTournamentScoreFromSelectedHole(s.playerid) ScoreAtHole FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry;'),(161,'SPCountryFlag','SELECT GetPlayerCountryFlagFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(177,'SPBio1','select c.Bio1 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(178,'SPBio2','select c.Bio2 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(179,'SPBio3','select c.Bio3 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(180,'SPRoundTotalPar','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),\'\') TotalPar FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(181,'STLeaderBoardPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,10);'),(182,'STLeaderBoardPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,10,1);'),(183,'STLeaderBoardPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,11,9);'),(184,'STLeaderBoardPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,20,1);'),(185,'STLeaderBoardPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,21,9);'),(186,'STLeaderBoardPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,30,1);'),(187,'STLeaderBoardPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,31,9);'),(188,'STLeaderBoardPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,40,1);'),(189,'STLeaderBoardPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,41,9);'),(190,'STLeaderBoardPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,50,1);'),(191,'STLeaderBoardPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,51,9);'),(192,'STLeaderBoardPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,60,1);'),(193,'STLeaderBoardPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,61,9);'),(194,'STLeaderBoardPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,70,1);'),(195,'STLeaderBoardPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,71,9);'),(196,'STLeaderBoardPage1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,0,10);'),(197,'STLeaderBoardPage2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,10,1);'),(198,'STLeaderBoardPage2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,11,9);'),(199,'STLeaderBoardPage3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,20,1);'),(200,'STLeaderBoardPage3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,21,9);'),(201,'STLeaderBoardPage4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,30,1);'),(202,'STLeaderBoardPage4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,31,9);'),(203,'STLeaderBoardPage5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,40,1);'),(204,'STLeaderBoardPage5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,41,9);'),(205,'STLeaderBoardPage6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,50,1);'),(206,'STLeaderBoardPage6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,51,9);'),(207,'STLeaderBoardPage7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,60,1);'),(208,'STLeaderBoardPage7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,61,9);'),(209,'STLeaderBoardPage8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,70,1);'),(210,'STLeaderBoardPage8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,71,9);'),(211,'SPRound1TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,1) Round1Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(212,'SPRound2TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,2) Round2Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(213,'SPRound3TotalParStrokes','SELECT GetPlayerRoundTotalStrokes(s.Playerid,3) Round3Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(214,'SPRound4TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerRoundTotalStrokes(s.Playerid,4),\'\'),\'\') Round4Total  FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry;'),(215,'STLeadersPage1Position','SELECT s.GraphicPos FROM golf.score s,golf.uiselected u where tournamentid = u.SelectedTournament  group by playerid order by sum((GetPlayerSelectedRoundHolesPlayedStrokes(idscore)-GetPlayerSelectedRoundHolesPlayedPar(idscore))),  cast(if(GetPlayerSelectedRoundScore(s.idscore)=\'E\',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,  GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,(`GetPlayerNameAndSurnameFromID`(s.Playerid)) asc limit 10;'),(216,'SPStrokeSelectedHoleFlagForBIRDIE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 4 when 4 then 3 when 3 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (4-Par) when 4 then (3-Par) when 3 then (2-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(217,'SPStrokeSelectedHoleFlagForEAGLE','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 3 when 4 then 2 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (3-Par) when 4 then (2-Par)  end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(218,'SPStrokeSelectedHoleFlagForPAR','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 5 when 4 then 4 when 3 then 3 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes(0),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(219,'SPStrokeSelectedHoleFlagForBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (6-Par) when 4 then (5-Par) when 3 then (4-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(220,'SPStrokeSelectedHoleFlagForDOUBLEBOGEY','SELECT if(f.shotsflagid=(SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole),GetPlayerSelectedHoleFlagFromStrokes((SELECT case Par when 5 then (7-Par) when 4 then (6-Par) when 3 then (5-Par) end FROM golf.courseholes sc,golf.shots s where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole)),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(221,'SPParStrokeAfterParBOGEY','SELECT case Par when 5 then 6 when 4 then 5 when 3 then 4 end ForBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(222,'SPParStrokeAfterParDOUBLEBOGEY','SELECT case Par when 5 then 7 when 4 then 6 when 3 then 5 end ForDoubleBogeyPar FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(223,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(224,'STLeaderBoardMiniPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,5);'),(225,'STLeaderBoardMiniPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,6,1);'),(226,'STLeaderBoardMiniPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,7,4);'),(227,'STLeaderBoardMiniPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,11,1);'),(228,'STLeaderBoardMiniPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,12,4);'),(229,'STLeaderBoardMiniPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,16,1);'),(230,'STLeaderBoardMiniPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,17,20);'),(231,'STLeaderBoardMiniPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,21,1);'),(232,'STLeaderBoardMiniPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,22,4);'),(233,'STLeaderBoardMiniPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,26,1);'),(234,'STLeaderBoardMiniPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,27,4);'),(235,'STLeaderBoardMiniPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,31,1);'),(236,'STLeaderBoardMiniPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,32,4);'),(237,'STLeaderBoardMiniPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,36,1);'),(238,'STLeaderBoardMiniPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,37,4);'),(239,'STLeaderBoardRound1Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,0,10);'),(240,'STLeaderBoardRound1Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,10,1);'),(241,'STLeaderBoardRound1Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,11,9);'),(242,'STLeaderBoardRound1Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,20,1);'),(243,'STLeaderBoardRound1Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,21,9);'),(244,'STLeaderBoardRound1Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,30,1);'),(245,'STLeaderBoardRound1Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,31,9);'),(246,'STLeaderBoardRound1Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,40,1);'),(247,'STLeaderBoardRound1Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,41,9);'),(248,'STLeaderBoardRound1Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,50,1);'),(249,'STLeaderBoardRound1Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,51,9);'),(250,'STLeaderBoardRound1Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,60,1);'),(251,'STLeaderBoardRound1Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,61,9);'),(252,'STLeaderBoardRound1Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(16,70,1);'),(253,'STLeaderBoardRound1Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(15,71,9);'),(254,'STLeaderBoardRound2Page1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,0,10);'),(255,'STLeaderBoardRound2Page2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,10,1);'),(256,'STLeaderBoardRound2Page2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,11,9);'),(257,'STLeaderBoardRound2Page3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,20,1);'),(258,'STLeaderBoardRound2Page3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,21,9);'),(259,'STLeaderBoardRound2Page4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,30,1);'),(260,'STLeaderBoardRound2Page4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,31,9);'),(261,'STLeaderBoardRound2Page5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,40,1);'),(262,'STLeaderBoardRound2Page5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,41,9);'),(263,'STLeaderBoardRound2Page6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,50,1);'),(264,'STLeaderBoardRound2Page6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,51,9);'),(265,'STLeaderBoardRound2Page7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,60,1);'),(266,'STLeaderBoardRound2Page7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,61,9);'),(267,'STLeaderBoardRound2Page8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(18,70,1);'),(268,'STLeaderBoardRound2Page8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(17,71,9);'),(269,'STLeaderBoardOVERALLPage1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,0,10);'),(270,'STLeaderBoardOVERALLPage2Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,10,1);'),(271,'STLeaderBoardOVERALLPage2ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,11,9);'),(272,'STLeaderBoardOVERALLPage3Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,20,1);'),(273,'STLeaderBoardOVERALLPage3ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,21,9);'),(274,'STLeaderBoardOVERALLPage4Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,30,1);'),(275,'STLeaderBoardOVERALLPage4ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,31,9);'),(276,'STLeaderBoardOVERALLPage5Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,40,1);'),(277,'STLeaderBoardOVERALLPage5ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,41,9);'),(278,'STLeaderBoardOVERALLPage6Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,50,1);'),(279,'STLeaderBoardOVERALLPage6ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,51,9);'),(280,'STLeaderBoardOVERALLPage7Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,60,1);'),(281,'STLeaderBoardOVERALLPage7ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,61,9);'),(282,'STLeaderBoardOVERALLPage8Line1ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(20,70,1);'),(283,'STLeaderBoardOVERALLPage8ColumnsPosNameSurnameTournamentScoreHoleFlagTextColor','call GetTournamentSelectedLeaderBoard(19,71,9);'),(289,'STLeaderBoardLeaderString','call GetTournamentSelectedLeaderBoard(4,0,1);'),(290,'SPRoundTotalParFlag',' SELECT  if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,case when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) < sc.Par then 2 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) = sc.Par then 3 when GetPlayerSelectedRoundHolesPlayedStrokes(SelectedScoreEntry) > sc.Par then 5 end,\'\') TotalParFlag  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(291,'SPHoles1to9StrokesTotalFlag','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',case when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) < sc.FrontPar then 2 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) = sc.FrontPar then 3 when GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry) > sc.FrontPar then 5 end ) ScoreTotal  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(292,'SPHoles10to18StrokesTotalFlag','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',case when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) < sc.BackPar then 2 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) = sc.BackPar then  3 when GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry) > sc.BackPar then  5 end ) ScoreTotal  FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(293,'STLeaderBoardTOTALSPage1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,0,10);'),(294,'STLeaderBoardTOTALSPage2Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,10,1);'),(295,'STLeaderBoardTOTALSPage2ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,11,9);'),(296,'STLeaderBoardTOTALSPage3Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,20,1);'),(297,'STLeaderBoardTOTALSPage3ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,21,9);'),(298,'STLeaderBoardTOTALSPage4Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,30,1);'),(299,'STLeaderBoardTOTALSPage4ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,31,9);'),(300,'STLeaderBoardTOTALSPage5Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,40,1);'),(301,'STLeaderBoardTOTALSPage5ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,41,9);'),(302,'STLeaderBoardTOTALSPage6Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,50,1);'),(303,'STLeaderBoardTOTALSPage6ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,51,9);'),(304,'STLeaderBoardTOTALSPage7Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,60,1);'),(305,'STLeaderBoardTOTALSPage7ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,61,9);'),(306,'STLeaderBoardTOTALSPage8Line1ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(8,70,1);'),(307,'STLeaderBoardTOTALSPage8ColumnsPosNameSurnameFlagR1R2R3R4TournamentScoreColor','call GetTournamentSelectedLeaderBoard(7,71,9);'),(308,'STShortDescription','SELECT t.ShortDescription FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(309,'SPAge','SELECT GetPlayerAgeFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(310,'SPHolePreviousRoundsScores','select group_concat(HoleRoundScore SEPARATOR \' | \') PreviousRounds from (select sc.roundid ,GetPlayerSelectedStrokeDescription(strokes,s.holeid) HoleRoundScore from golf.score sc,golf.shots s,golf.uiselected u  where s.idscore=sc.idscore and  sc.playerid=(SELECT playerid FROM golf.score s,golf.uiselected u where s.idscore=u.SelectedScoreEntry)  and s.holeid=(SELECT holeid FROM golf.shots s,golf.uiselected u WHERE s.shotsid=u.SelectedHole) and s.HoleStatus=2  and sc.roundid <> u.SelectedRound order by sc.roundid,s.shotsid ) as t;'),(311,'STHolesTopEagles','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-2 group by sh.holeid order by Totals desc limit 5;'),(312,'STHolesTopBirdies','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=-1 group by sh.holeid order by Totals desc limit 5;'),(313,'STHolesTopPars','SELECT concat(\'HOLE \',sh.holeid) HoleNumber ,count(*) Totals,0 Highlight FROM golf.shots sh, golf.score s ,golf.uiselected u WHERE s.Tournamentid=u.SelectedTournament and sh.idscore=s.idscore and sh.HoleStatus=2 and (sh.strokes-GetPlayerSelectedHoleParScore(sh.holeid))=0 group by sh.holeid order by Totals desc limit 5;'),(314,'AmateurLeaderBoard','select Pos,Description,Points,case Country when \'RSA\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa\' when \'SWE\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden\' when \'GER\' then \'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Germany\' end flag ,\'IMAGE*Seb4_Projects/Supersport_2018/_Images/Text_Colours/txt_Gold\' color  FROM golf.amateurs limit 10; '),(315,'SHTotalEagles','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-2  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(316,'SHTotalBirdies','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-1  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(317,'SHTotalPars','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=0  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(318,'SHTotalBogeys','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=1  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(319,'SHTotaOthers','SELECT count(*) FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))>=2  and s.holeid=(select holeid from  golf.shots s where   s.shotsid=u.SelectedHole);'),(320,'STDrawDescription','SELECT concat(\'MATCH \',Matchid) DrawHeading FROM golf.players p where playerid=(select playerid from golf.score s,golf.uiselected u where idscore = u.SelectedScoreEntry)'),(321,'STDrawLine1ColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(10,0,1);'),(322,'STDrawColumnsPosNameSurnameTournamentScoreCountryFlag','call GetTournamentSelectedLeaderBoard(11,1,2);'),(323,'SHAceOrEagleHole','SELECT  case Par when 3 then \'ACES\' else \'EAGLES\' end FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(324,'SPTodayEagles',' SELECT count(*) TodayEagles FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-2  and sc.idscore=u.SelectedScoreEntry;'),(325,'SPTodayBirdies','SELECT count(*) TodayBirdies  FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=-1  and sc.idscore=u.SelectedScoreEntry;'),(326,'SPTodayPars','SELECT count(*) TodayPars FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=0  and sc.idscore=u.SelectedScoreEntry;'),(327,'SPTodayBogeys','SELECT count(*) TodayBogeys FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))=1  and sc.idscore=u.SelectedScoreEntry;'),(328,'SPTodayOthers','SELECT count(*) TodayOther FROM golf.score sc,golf.shots s ,golf.uiselected u where sc.idscore=s.idscore and HoleStatus=2 and (s.strokes-GetPlayerSelectedHoleParScore(s.holeid))>=2  and sc.idscore=u.SelectedScoreEntry;'),(329,'SPTodaySummary','select GetPlayerSelectedRoundSummary();'),(330,'SPFront9Back9ScoreString','select GetPlayerSelectedRoundHolesPlayedFront9Back9TotalScoreString(SelectedScoreEntry) FROM golf.uiselected u;'),(331,'STCourseFullname1','SELECT Fullname FROM golf.course limit 0,1;'),(332,'STCourseFullname2','SELECT Fullname FROM golf.course limit 1,1;'),(333,'STExtraDesc','SELECT t.ExtraDesc FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(334,'STLeaderBoardPage1CourseColor','call GetTournamentSelectedLeaderBoard(21,0,10);'),(335,'STLeaderBoardPage2CourseColor','call GetTournamentSelectedLeaderBoard(21,10,10);'),(336,'STLeaderBoardPage3CourseColor','call GetTournamentSelectedLeaderBoard(21,20,10);'),(337,'STLeaderBoardPage4CourseColor','call GetTournamentSelectedLeaderBoard(21,30,10);'),(338,'STLeaderBoardPage5CourseColor','call GetTournamentSelectedLeaderBoard(21,40,10);'),(339,'STLeaderBoardPage6CourseColor','call GetTournamentSelectedLeaderBoard(21,50,10);'),(340,'STLeaderBoardPage7CourseColor','call GetTournamentSelectedLeaderBoard(21,60,10);'),(341,'STLeaderBoardPage8CourseColor','call GetTournamentSelectedLeaderBoard(21,70,10);');
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
INSERT INTO `rounds` VALUES (1,'ROUND 1',0),(2,'ROUND 2',0),(3,'ROUND 3',0),(4,'FINAL ROUND',0),(5,'PLAY-OFF',0),(1616604234843,'PLAY-OFF 2',0);
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
INSERT INTO `score` VALUES (1620207077667,1614872890804,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207112170,1615544873364,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207112986,1619104037568,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207160978,1619104037375,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207162048,1619088070268,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207162898,1616062258302,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207384058,1614872890813,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207385185,1614872890823,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207386065,1619104037394,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207452930,1614872890825,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207453906,1614872890763,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207454746,1619104037269,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207566401,1615544876644,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207567282,1614872890819,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207567865,1619088070506,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207648624,1619104037509,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207649176,1619088070451,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207649961,1619104037164,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207902177,1614872890803,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207903401,1619088070362,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620207904689,1619104037384,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620208020984,1615544875393,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208021959,1615544874284,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208022567,1619104037059,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208201001,1619088070527,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208202055,1619694652037,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208203608,1614872890812,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208273033,1619104037526,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208274193,1619104037293,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208275161,1614872890779,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208324536,1619104037154,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208325952,1619104037071,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208326849,1614872890836,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208399201,1619104037325,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208399652,1619088070480,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208400281,1619088070485,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208506409,1619694651781,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208507289,1619104037440,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208508289,1619104037359,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208689097,1615544876319,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208691568,1619104037431,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208694825,1614872890785,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620208825992,1614872890767,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620208827129,1619104037285,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620208828456,1619088070367,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620208951760,1619088070511,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620208952769,1614872890769,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620208953983,1620209032069,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209197087,1614872890795,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209198040,1614872890800,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209198800,1615544868676,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209287376,1614872890841,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209288727,1614872890790,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209290112,1619088070532,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209348856,1614872890789,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209349912,1619779151569,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209350784,1614872890810,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209395239,1614872890771,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209395912,1619088070462,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209396560,1619088070380,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620209668512,1615544865998,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620209669264,1615544876782,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620209670040,1615544874093,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620209761166,1614872890776,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620209762142,1619088070596,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620209762928,1614872890814,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620209919136,1614872890777,1614697043090,1,1,1,NULL,NULL,'-1','1','1',1,1,0,NULL),(1620209919751,1619088070277,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620209920316,1614872890815,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210052816,1614872890791,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210053831,1619104037144,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210054863,1619088070353,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210113182,1619088070262,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210113704,1614872890773,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210114270,1619104037087,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210150727,1614872890784,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210197352,1619104037484,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210198214,1614872890778,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620210213584,1615544880310,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210221135,1615544880301,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210221911,1614872890756,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210490806,1619104037342,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210491623,1619104037255,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210492815,1619088070394,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210884703,1619088070547,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210885407,1619088070289,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620210886199,1619088070271,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211011414,1614872890816,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211012342,1614872890833,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211013190,1619088070617,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211062031,1619088070606,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211062695,1619088070248,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211063247,1614872890768,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211103398,1614872890822,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211103905,1619088070323,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211104367,1619104036943,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211240806,1619779151740,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211241534,1619694651668,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211242302,1614872890835,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620211362542,1614872890808,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620211363262,1619088070496,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620211364150,1614872890772,1614697043090,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620211759773,1614872890794,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620211760478,1614872890832,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620211761014,1619104037098,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620212212142,1619088070542,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620212212654,1619104037079,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620212213389,1614872890774,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620212329053,1614872890840,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620212329598,1619088070424,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213167348,1620213081653,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213228077,1614872890766,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213228884,1614872890796,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213229661,1619088070315,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213302939,1619088070407,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213303685,1616062258291,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213304245,1619104037243,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213497675,1616076251436,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213498443,1614872890838,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213499116,1619104037550,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620213568636,1615544880189,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620213569164,1615544871438,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620213569988,1619104037180,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620213883700,1614872890837,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620213884373,1619088070628,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620213885124,1614872890818,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620213999900,1619104037367,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214000468,1614872890817,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214000971,1619104037110,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214125179,1619104037172,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214126036,1614872890802,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214129725,1619088070442,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214270235,1619104037409,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214270796,1615544871971,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214271340,1619088070265,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214332244,1619088070567,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214333068,1619104037560,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214333683,1614872890824,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214393244,1614872890831,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214393604,1619104037043,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214395059,1614872890798,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,0,0,NULL),(1620214507355,1614872890781,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214508164,1619088070281,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214511922,1615544880229,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214563299,1619088070490,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214563682,1619088070455,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214564227,1619104037473,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214604547,1619088070446,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214604923,1614872890820,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214605915,1614872890839,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214688210,1619779151733,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214688747,1619104037190,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214689994,1614872890770,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214787491,1615544873098,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214787994,1619104037450,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214788555,1619104037416,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214937779,1619104037351,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214938531,1619104037199,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620214939291,1615544880329,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620215017771,1619104037461,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620215018459,1614872890783,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL),(1620215018922,1614872890830,1620139804648,1,1,1,NULL,NULL,'-1','','1',1,1,0,NULL);
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
INSERT INTO `shots` VALUES (1620207077707,1620207077667,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077722,1620207077667,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077738,1620207077667,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077754,1620207077667,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077770,1620207077667,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077785,1620207077667,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077800,1620207077667,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077816,1620207077667,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077832,1620207077667,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077847,1620207077667,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077864,1620207077667,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077880,1620207077667,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077896,1620207077667,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077912,1620207077667,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077927,1620207077667,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077943,1620207077667,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077960,1620207077667,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207077975,1620207077667,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112212,1620207112170,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112228,1620207112170,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112243,1620207112170,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112259,1620207112170,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112274,1620207112170,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112290,1620207112170,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112305,1620207112170,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112321,1620207112170,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112337,1620207112170,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112352,1620207112170,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112368,1620207112170,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112383,1620207112170,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112398,1620207112170,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112415,1620207112170,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112430,1620207112170,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112446,1620207112170,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112462,1620207112170,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207112478,1620207112170,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113025,1620207112986,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113040,1620207112986,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113056,1620207112986,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113071,1620207112986,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113087,1620207112986,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113102,1620207112986,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113118,1620207112986,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113133,1620207112986,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113149,1620207112986,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113165,1620207112986,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113180,1620207112986,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113196,1620207112986,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113211,1620207112986,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113227,1620207112986,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113242,1620207112986,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113257,1620207112986,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113273,1620207112986,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207113289,1620207112986,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161020,1620207160978,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161036,1620207160978,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161051,1620207160978,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161066,1620207160978,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161082,1620207160978,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161097,1620207160978,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161113,1620207160978,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161129,1620207160978,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161144,1620207160978,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161160,1620207160978,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161175,1620207160978,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161190,1620207160978,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161206,1620207160978,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161221,1620207160978,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161237,1620207160978,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161252,1620207160978,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161268,1620207160978,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207161283,1620207160978,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162083,1620207162048,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162098,1620207162048,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162114,1620207162048,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162130,1620207162048,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162145,1620207162048,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162161,1620207162048,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162177,1620207162048,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162193,1620207162048,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162208,1620207162048,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162224,1620207162048,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162239,1620207162048,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162255,1620207162048,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162271,1620207162048,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162287,1620207162048,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162302,1620207162048,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162318,1620207162048,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162333,1620207162048,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162349,1620207162048,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162942,1620207162898,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162958,1620207162898,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162973,1620207162898,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207162989,1620207162898,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163005,1620207162898,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163020,1620207162898,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163036,1620207162898,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163051,1620207162898,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163066,1620207162898,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163082,1620207162898,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163098,1620207162898,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163113,1620207162898,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163129,1620207162898,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163144,1620207162898,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163160,1620207162898,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163175,1620207162898,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163191,1620207162898,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207163207,1620207162898,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384107,1620207384058,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384123,1620207384058,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384139,1620207384058,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384154,1620207384058,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384170,1620207384058,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384185,1620207384058,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384201,1620207384058,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384217,1620207384058,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384232,1620207384058,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384248,1620207384058,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384264,1620207384058,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384279,1620207384058,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384295,1620207384058,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384311,1620207384058,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384326,1620207384058,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384342,1620207384058,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384357,1620207384058,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207384372,1620207384058,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385228,1620207385185,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385243,1620207385185,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385259,1620207385185,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385275,1620207385185,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385290,1620207385185,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385306,1620207385185,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385321,1620207385185,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385337,1620207385185,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385353,1620207385185,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385368,1620207385185,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385384,1620207385185,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385399,1620207385185,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385415,1620207385185,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385430,1620207385185,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385446,1620207385185,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385462,1620207385185,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385477,1620207385185,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207385493,1620207385185,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386100,1620207386065,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386115,1620207386065,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386131,1620207386065,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386146,1620207386065,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386162,1620207386065,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386177,1620207386065,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386193,1620207386065,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386209,1620207386065,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386224,1620207386065,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386240,1620207386065,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386255,1620207386065,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386271,1620207386065,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386286,1620207386065,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386302,1620207386065,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386317,1620207386065,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386333,1620207386065,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386349,1620207386065,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207386365,1620207386065,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207452968,1620207452930,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207452984,1620207452930,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207452999,1620207452930,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453015,1620207452930,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453030,1620207452930,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453046,1620207452930,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453062,1620207452930,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453076,1620207452930,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453092,1620207452930,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453107,1620207452930,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453122,1620207452930,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453138,1620207452930,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453153,1620207452930,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453169,1620207452930,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453185,1620207452930,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453200,1620207452930,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453216,1620207452930,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453232,1620207452930,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453947,1620207453906,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453963,1620207453906,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453978,1620207453906,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207453994,1620207453906,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454010,1620207453906,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454026,1620207453906,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454042,1620207453906,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454058,1620207453906,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454073,1620207453906,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454089,1620207453906,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454105,1620207453906,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454121,1620207453906,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454136,1620207453906,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454151,1620207453906,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454166,1620207453906,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454181,1620207453906,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454197,1620207453906,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454212,1620207453906,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454790,1620207454746,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454806,1620207454746,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454821,1620207454746,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454837,1620207454746,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454853,1620207454746,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454868,1620207454746,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454883,1620207454746,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454899,1620207454746,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454915,1620207454746,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454930,1620207454746,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454946,1620207454746,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454962,1620207454746,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454978,1620207454746,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207454994,1620207454746,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207455009,1620207454746,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207455024,1620207454746,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207455039,1620207454746,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207455055,1620207454746,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566446,1620207566401,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566463,1620207566401,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566478,1620207566401,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566493,1620207566401,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566509,1620207566401,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566525,1620207566401,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566541,1620207566401,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566555,1620207566401,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566571,1620207566401,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566586,1620207566401,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566602,1620207566401,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566618,1620207566401,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566633,1620207566401,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566649,1620207566401,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566665,1620207566401,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566680,1620207566401,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566695,1620207566401,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207566711,1620207566401,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567322,1620207567282,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567337,1620207567282,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567353,1620207567282,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567368,1620207567282,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567383,1620207567282,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567399,1620207567282,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567415,1620207567282,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567430,1620207567282,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567446,1620207567282,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567462,1620207567282,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567477,1620207567282,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567493,1620207567282,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567508,1620207567282,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567525,1620207567282,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567541,1620207567282,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567555,1620207567282,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567571,1620207567282,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567586,1620207567282,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567913,1620207567865,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567929,1620207567865,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567945,1620207567865,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567961,1620207567865,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567976,1620207567865,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207567991,1620207567865,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568006,1620207567865,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568022,1620207567865,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568037,1620207567865,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568052,1620207567865,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568068,1620207567865,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568083,1620207567865,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568099,1620207567865,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568115,1620207567865,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568130,1620207567865,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568146,1620207567865,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568162,1620207567865,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207568177,1620207567865,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648662,1620207648624,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648678,1620207648624,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648694,1620207648624,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648709,1620207648624,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648725,1620207648624,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648740,1620207648624,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648756,1620207648624,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648772,1620207648624,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648786,1620207648624,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648802,1620207648624,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648818,1620207648624,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648833,1620207648624,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648849,1620207648624,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648865,1620207648624,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648880,1620207648624,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648896,1620207648624,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648911,1620207648624,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207648927,1620207648624,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649225,1620207649176,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649240,1620207649176,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649255,1620207649176,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649271,1620207649176,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649287,1620207649176,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649302,1620207649176,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649318,1620207649176,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649333,1620207649176,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649349,1620207649176,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649364,1620207649176,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649380,1620207649176,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649395,1620207649176,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649410,1620207649176,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649426,1620207649176,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649441,1620207649176,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649457,1620207649176,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649472,1620207649176,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207649488,1620207649176,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650003,1620207649961,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650018,1620207649961,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650034,1620207649961,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650050,1620207649961,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650066,1620207649961,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650081,1620207649961,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650097,1620207649961,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650113,1620207649961,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650129,1620207649961,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650145,1620207649961,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650160,1620207649961,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650176,1620207649961,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650191,1620207649961,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650207,1620207649961,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650222,1620207649961,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650238,1620207649961,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650253,1620207649961,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207650269,1620207649961,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902225,1620207902177,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902241,1620207902177,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902257,1620207902177,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902272,1620207902177,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902288,1620207902177,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902304,1620207902177,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902320,1620207902177,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902336,1620207902177,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902352,1620207902177,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902368,1620207902177,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902383,1620207902177,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902398,1620207902177,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902414,1620207902177,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902430,1620207902177,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902445,1620207902177,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902461,1620207902177,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902477,1620207902177,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207902493,1620207902177,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903445,1620207903401,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903460,1620207903401,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903476,1620207903401,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903491,1620207903401,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903507,1620207903401,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903523,1620207903401,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903538,1620207903401,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903554,1620207903401,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903570,1620207903401,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903586,1620207903401,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903602,1620207903401,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903617,1620207903401,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903633,1620207903401,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903648,1620207903401,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903663,1620207903401,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903679,1620207903401,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903694,1620207903401,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207903709,1620207903401,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904730,1620207904689,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904746,1620207904689,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904761,1620207904689,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904777,1620207904689,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904792,1620207904689,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904808,1620207904689,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904824,1620207904689,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904839,1620207904689,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904855,1620207904689,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904870,1620207904689,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904886,1620207904689,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904902,1620207904689,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904917,1620207904689,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904933,1620207904689,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904948,1620207904689,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904964,1620207904689,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904979,1620207904689,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620207904995,1620207904689,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021024,1620208020984,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021039,1620208020984,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021055,1620208020984,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021070,1620208020984,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021085,1620208020984,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021101,1620208020984,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021117,1620208020984,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021132,1620208020984,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021148,1620208020984,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021164,1620208020984,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021180,1620208020984,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021196,1620208020984,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021212,1620208020984,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021228,1620208020984,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021244,1620208020984,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021260,1620208020984,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021276,1620208020984,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021291,1620208020984,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208021995,1620208021959,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022011,1620208021959,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022027,1620208021959,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022042,1620208021959,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022058,1620208021959,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022074,1620208021959,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022089,1620208021959,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022105,1620208021959,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022121,1620208021959,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022136,1620208021959,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022152,1620208021959,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022167,1620208021959,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022183,1620208021959,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022198,1620208021959,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022214,1620208021959,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022230,1620208021959,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022246,1620208021959,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022262,1620208021959,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022607,1620208022567,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022623,1620208022567,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022639,1620208022567,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022655,1620208022567,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022671,1620208022567,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022687,1620208022567,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022703,1620208022567,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022719,1620208022567,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022734,1620208022567,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022750,1620208022567,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022766,1620208022567,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022782,1620208022567,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022798,1620208022567,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022813,1620208022567,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022828,1620208022567,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022844,1620208022567,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022860,1620208022567,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208022876,1620208022567,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201046,1620208201001,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201061,1620208201001,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201076,1620208201001,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201092,1620208201001,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201107,1620208201001,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201123,1620208201001,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201139,1620208201001,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201154,1620208201001,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201169,1620208201001,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201185,1620208201001,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201201,1620208201001,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201216,1620208201001,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201231,1620208201001,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201247,1620208201001,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201262,1620208201001,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201278,1620208201001,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201294,1620208201001,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208201310,1620208201001,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202089,1620208202055,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202104,1620208202055,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202120,1620208202055,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202136,1620208202055,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202151,1620208202055,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202166,1620208202055,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202182,1620208202055,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202198,1620208202055,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202214,1620208202055,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202229,1620208202055,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202244,1620208202055,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202259,1620208202055,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202275,1620208202055,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202291,1620208202055,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202307,1620208202055,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202322,1620208202055,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202337,1620208202055,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208202353,1620208202055,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203644,1620208203608,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203660,1620208203608,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203675,1620208203608,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203690,1620208203608,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203706,1620208203608,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203721,1620208203608,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203737,1620208203608,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203752,1620208203608,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203767,1620208203608,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203783,1620208203608,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203798,1620208203608,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203814,1620208203608,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203830,1620208203608,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203845,1620208203608,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203861,1620208203608,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203876,1620208203608,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203892,1620208203608,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208203908,1620208203608,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273071,1620208273033,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273087,1620208273033,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273102,1620208273033,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273118,1620208273033,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273133,1620208273033,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273149,1620208273033,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273164,1620208273033,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273180,1620208273033,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273195,1620208273033,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273211,1620208273033,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273227,1620208273033,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273242,1620208273033,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273258,1620208273033,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273273,1620208273033,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273289,1620208273033,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273305,1620208273033,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273320,1620208273033,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208273336,1620208273033,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274233,1620208274193,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274249,1620208274193,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274265,1620208274193,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274280,1620208274193,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274296,1620208274193,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274312,1620208274193,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274327,1620208274193,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274343,1620208274193,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274358,1620208274193,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274374,1620208274193,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274390,1620208274193,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274405,1620208274193,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274420,1620208274193,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274436,1620208274193,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274452,1620208274193,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274468,1620208274193,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274483,1620208274193,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208274499,1620208274193,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275206,1620208275161,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275221,1620208275161,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275237,1620208275161,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275251,1620208275161,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275267,1620208275161,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275283,1620208275161,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275298,1620208275161,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275314,1620208275161,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275330,1620208275161,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275346,1620208275161,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275361,1620208275161,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275376,1620208275161,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275391,1620208275161,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275407,1620208275161,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275423,1620208275161,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275439,1620208275161,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275454,1620208275161,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208275470,1620208275161,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324583,1620208324536,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324599,1620208324536,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324615,1620208324536,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324631,1620208324536,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324646,1620208324536,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324661,1620208324536,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324677,1620208324536,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324693,1620208324536,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324709,1620208324536,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324724,1620208324536,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324740,1620208324536,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324755,1620208324536,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324770,1620208324536,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324786,1620208324536,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324801,1620208324536,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324816,1620208324536,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324832,1620208324536,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208324848,1620208324536,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208325990,1620208325952,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326005,1620208325952,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326021,1620208325952,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326036,1620208325952,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326051,1620208325952,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326067,1620208325952,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326083,1620208325952,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326099,1620208325952,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326114,1620208325952,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326130,1620208325952,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326145,1620208325952,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326161,1620208325952,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326176,1620208325952,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326192,1620208325952,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326207,1620208325952,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326223,1620208325952,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326239,1620208325952,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326254,1620208325952,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326893,1620208326849,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326909,1620208326849,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326924,1620208326849,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326940,1620208326849,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326955,1620208326849,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326971,1620208326849,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208326987,1620208326849,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327003,1620208326849,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327018,1620208326849,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327033,1620208326849,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327049,1620208326849,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327065,1620208326849,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327081,1620208326849,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327096,1620208326849,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327112,1620208326849,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327128,1620208326849,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327144,1620208326849,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208327159,1620208326849,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399242,1620208399201,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399257,1620208399201,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399273,1620208399201,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399289,1620208399201,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399304,1620208399201,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399320,1620208399201,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399335,1620208399201,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399350,1620208399201,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399366,1620208399201,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399381,1620208399201,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399396,1620208399201,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399412,1620208399201,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399428,1620208399201,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399444,1620208399201,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399458,1620208399201,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399474,1620208399201,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399490,1620208399201,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399506,1620208399201,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399693,1620208399652,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399709,1620208399652,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399724,1620208399652,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399740,1620208399652,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399755,1620208399652,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399771,1620208399652,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399787,1620208399652,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399802,1620208399652,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399818,1620208399652,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399833,1620208399652,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399848,1620208399652,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399864,1620208399652,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399880,1620208399652,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399895,1620208399652,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399911,1620208399652,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399927,1620208399652,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399943,1620208399652,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208399958,1620208399652,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400318,1620208400281,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400333,1620208400281,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400349,1620208400281,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400364,1620208400281,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400380,1620208400281,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400396,1620208400281,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400411,1620208400281,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400427,1620208400281,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400443,1620208400281,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400458,1620208400281,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400473,1620208400281,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400489,1620208400281,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400504,1620208400281,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400520,1620208400281,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400535,1620208400281,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400551,1620208400281,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400566,1620208400281,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208400582,1620208400281,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506449,1620208506409,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506465,1620208506409,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506481,1620208506409,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506497,1620208506409,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506513,1620208506409,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506528,1620208506409,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506544,1620208506409,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506560,1620208506409,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506576,1620208506409,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506592,1620208506409,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506607,1620208506409,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506623,1620208506409,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506639,1620208506409,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506654,1620208506409,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506670,1620208506409,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506686,1620208506409,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506702,1620208506409,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208506717,1620208506409,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507325,1620208507289,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507341,1620208507289,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507357,1620208507289,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507372,1620208507289,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507388,1620208507289,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507404,1620208507289,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507419,1620208507289,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507435,1620208507289,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507450,1620208507289,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507465,1620208507289,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507481,1620208507289,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507497,1620208507289,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507513,1620208507289,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507528,1620208507289,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507543,1620208507289,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507561,1620208507289,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507574,1620208507289,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208507589,1620208507289,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508337,1620208508289,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508352,1620208508289,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508368,1620208508289,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508384,1620208508289,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508399,1620208508289,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508414,1620208508289,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508430,1620208508289,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508446,1620208508289,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508462,1620208508289,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508477,1620208508289,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508492,1620208508289,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508508,1620208508289,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508523,1620208508289,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508539,1620208508289,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508554,1620208508289,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508570,1620208508289,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508586,1620208508289,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208508601,1620208508289,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689143,1620208689097,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689159,1620208689097,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689174,1620208689097,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689190,1620208689097,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689205,1620208689097,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689221,1620208689097,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689237,1620208689097,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689252,1620208689097,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689268,1620208689097,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689284,1620208689097,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689300,1620208689097,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689315,1620208689097,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689330,1620208689097,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689346,1620208689097,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689361,1620208689097,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689377,1620208689097,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689392,1620208689097,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208689408,1620208689097,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691614,1620208691568,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691629,1620208691568,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691645,1620208691568,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691661,1620208691568,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691677,1620208691568,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691692,1620208691568,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691708,1620208691568,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691723,1620208691568,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691738,1620208691568,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691754,1620208691568,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691770,1620208691568,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691785,1620208691568,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691801,1620208691568,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691816,1620208691568,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691832,1620208691568,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691848,1620208691568,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691863,1620208691568,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208691879,1620208691568,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694874,1620208694825,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694890,1620208694825,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694906,1620208694825,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694921,1620208694825,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694937,1620208694825,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694952,1620208694825,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694968,1620208694825,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694983,1620208694825,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208694999,1620208694825,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695015,1620208694825,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695030,1620208694825,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695046,1620208694825,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695061,1620208694825,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695076,1620208694825,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695092,1620208694825,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695107,1620208694825,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695123,1620208694825,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208695139,1620208694825,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826033,1620208825992,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826048,1620208825992,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826063,1620208825992,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826078,1620208825992,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826094,1620208825992,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826110,1620208825992,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826126,1620208825992,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826142,1620208825992,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826157,1620208825992,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826173,1620208825992,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826189,1620208825992,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826205,1620208825992,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826220,1620208825992,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826236,1620208825992,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826252,1620208825992,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826267,1620208825992,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826283,1620208825992,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208826299,1620208825992,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827170,1620208827129,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827185,1620208827129,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827200,1620208827129,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827216,1620208827129,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827232,1620208827129,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827247,1620208827129,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827263,1620208827129,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827279,1620208827129,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827295,1620208827129,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827311,1620208827129,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827326,1620208827129,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827342,1620208827129,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827358,1620208827129,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827373,1620208827129,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827389,1620208827129,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827405,1620208827129,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827420,1620208827129,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208827436,1620208827129,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828499,1620208828456,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828514,1620208828456,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828530,1620208828456,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828546,1620208828456,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828562,1620208828456,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828577,1620208828456,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828592,1620208828456,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828609,1620208828456,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828624,1620208828456,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828639,1620208828456,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828655,1620208828456,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828670,1620208828456,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828687,1620208828456,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828701,1620208828456,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828717,1620208828456,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828732,1620208828456,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828747,1620208828456,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208828763,1620208828456,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951809,1620208951760,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951824,1620208951760,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951841,1620208951760,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951855,1620208951760,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951871,1620208951760,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951886,1620208951760,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951902,1620208951760,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951917,1620208951760,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951933,1620208951760,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951949,1620208951760,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951964,1620208951760,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951980,1620208951760,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208951995,1620208951760,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952010,1620208951760,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952027,1620208951760,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952042,1620208951760,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952058,1620208951760,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952073,1620208951760,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952809,1620208952769,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952824,1620208952769,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952840,1620208952769,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952855,1620208952769,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952871,1620208952769,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952887,1620208952769,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952902,1620208952769,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952918,1620208952769,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952933,1620208952769,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952949,1620208952769,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952964,1620208952769,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952980,1620208952769,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208952996,1620208952769,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208953012,1620208952769,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208953028,1620208952769,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208953043,1620208952769,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208953059,1620208952769,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208953074,1620208952769,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954028,1620208953983,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954043,1620208953983,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954058,1620208953983,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954074,1620208953983,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954090,1620208953983,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954105,1620208953983,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954121,1620208953983,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954136,1620208953983,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954152,1620208953983,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954168,1620208953983,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954183,1620208953983,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954199,1620208953983,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954214,1620208953983,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954230,1620208953983,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954245,1620208953983,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954261,1620208953983,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954277,1620208953983,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620208954292,1620208953983,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197132,1620209197087,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197148,1620209197087,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197164,1620209197087,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197179,1620209197087,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197195,1620209197087,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197210,1620209197087,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197226,1620209197087,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197241,1620209197087,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197257,1620209197087,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197273,1620209197087,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197289,1620209197087,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197304,1620209197087,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197320,1620209197087,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197336,1620209197087,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197352,1620209197087,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197367,1620209197087,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197383,1620209197087,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209197399,1620209197087,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198076,1620209198040,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198092,1620209198040,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198108,1620209198040,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198123,1620209198040,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198139,1620209198040,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198154,1620209198040,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198170,1620209198040,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198185,1620209198040,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198200,1620209198040,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198216,1620209198040,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198232,1620209198040,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198248,1620209198040,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198263,1620209198040,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198279,1620209198040,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198295,1620209198040,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198310,1620209198040,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198326,1620209198040,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198341,1620209198040,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198845,1620209198800,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198861,1620209198800,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198876,1620209198800,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198892,1620209198800,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198907,1620209198800,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198923,1620209198800,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198938,1620209198800,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198953,1620209198800,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198968,1620209198800,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198984,1620209198800,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209198999,1620209198800,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209199015,1620209198800,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209199031,1620209198800,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209199046,1620209198800,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209199062,1620209198800,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209199078,1620209198800,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209199093,1620209198800,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209199109,1620209198800,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287418,1620209287376,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287434,1620209287376,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287450,1620209287376,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287466,1620209287376,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287481,1620209287376,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287497,1620209287376,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287512,1620209287376,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287528,1620209287376,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287543,1620209287376,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287558,1620209287376,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287574,1620209287376,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287590,1620209287376,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287605,1620209287376,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287620,1620209287376,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287636,1620209287376,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287651,1620209287376,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287667,1620209287376,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209287683,1620209287376,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288776,1620209288727,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288792,1620209288727,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288807,1620209288727,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288822,1620209288727,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288838,1620209288727,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288854,1620209288727,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288869,1620209288727,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288885,1620209288727,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288900,1620209288727,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288916,1620209288727,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288932,1620209288727,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288947,1620209288727,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288963,1620209288727,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288978,1620209288727,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209288994,1620209288727,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209289009,1620209288727,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209289025,1620209288727,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209289041,1620209288727,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290149,1620209290112,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290165,1620209290112,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290181,1620209290112,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290196,1620209290112,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290212,1620209290112,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290227,1620209290112,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290242,1620209290112,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290258,1620209290112,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290274,1620209290112,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290289,1620209290112,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290305,1620209290112,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290321,1620209290112,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290337,1620209290112,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290353,1620209290112,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290368,1620209290112,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290383,1620209290112,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290399,1620209290112,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209290415,1620209290112,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209348903,1620209348856,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209348918,1620209348856,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209348934,1620209348856,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209348949,1620209348856,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209348964,1620209348856,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209348980,1620209348856,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209348996,1620209348856,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349011,1620209348856,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349027,1620209348856,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349043,1620209348856,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349059,1620209348856,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349075,1620209348856,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349090,1620209348856,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349106,1620209348856,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349121,1620209348856,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349137,1620209348856,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349153,1620209348856,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349168,1620209348856,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349949,1620209349912,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349965,1620209349912,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349981,1620209349912,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209349997,1620209349912,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350013,1620209349912,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350029,1620209349912,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350045,1620209349912,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350060,1620209349912,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350076,1620209349912,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350092,1620209349912,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350107,1620209349912,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350123,1620209349912,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350138,1620209349912,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350154,1620209349912,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350169,1620209349912,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350185,1620209349912,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350200,1620209349912,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350216,1620209349912,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350826,1620209350784,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350841,1620209350784,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350857,1620209350784,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350872,1620209350784,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350888,1620209350784,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350904,1620209350784,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350919,1620209350784,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350935,1620209350784,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350951,1620209350784,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350967,1620209350784,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350983,1620209350784,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209350999,1620209350784,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209351015,1620209350784,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209351031,1620209350784,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209351047,1620209350784,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209351063,1620209350784,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209351079,1620209350784,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209351095,1620209350784,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395276,1620209395239,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395292,1620209395239,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395308,1620209395239,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395324,1620209395239,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395340,1620209395239,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395355,1620209395239,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395371,1620209395239,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395387,1620209395239,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395402,1620209395239,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395418,1620209395239,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395433,1620209395239,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395449,1620209395239,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395465,1620209395239,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395480,1620209395239,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395496,1620209395239,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395512,1620209395239,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395527,1620209395239,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395542,1620209395239,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395948,1620209395912,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395963,1620209395912,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395979,1620209395912,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209395994,1620209395912,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396010,1620209395912,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396025,1620209395912,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396040,1620209395912,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396056,1620209395912,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396071,1620209395912,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396087,1620209395912,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396103,1620209395912,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396118,1620209395912,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396134,1620209395912,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396149,1620209395912,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396165,1620209395912,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396180,1620209395912,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396196,1620209395912,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396212,1620209395912,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396603,1620209396560,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396619,1620209396560,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396635,1620209396560,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396650,1620209396560,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396666,1620209396560,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396681,1620209396560,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396697,1620209396560,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396713,1620209396560,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396728,1620209396560,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396744,1620209396560,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396759,1620209396560,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396774,1620209396560,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396790,1620209396560,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396806,1620209396560,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396821,1620209396560,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396836,1620209396560,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396852,1620209396560,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209396867,1620209396560,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668556,1620209668512,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668572,1620209668512,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668588,1620209668512,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668603,1620209668512,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668618,1620209668512,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668634,1620209668512,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668650,1620209668512,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668666,1620209668512,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668681,1620209668512,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668697,1620209668512,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668712,1620209668512,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668728,1620209668512,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668743,1620209668512,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668758,1620209668512,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668774,1620209668512,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668789,1620209668512,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668806,1620209668512,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209668821,1620209668512,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669304,1620209669264,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669320,1620209669264,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669335,1620209669264,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669350,1620209669264,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669366,1620209669264,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669382,1620209669264,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669397,1620209669264,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669413,1620209669264,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669428,1620209669264,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669444,1620209669264,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669460,1620209669264,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669475,1620209669264,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669491,1620209669264,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669507,1620209669264,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669522,1620209669264,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669538,1620209669264,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669554,1620209669264,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209669570,1620209669264,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670086,1620209670040,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670101,1620209670040,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670116,1620209670040,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670132,1620209670040,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670148,1620209670040,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670164,1620209670040,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670180,1620209670040,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670195,1620209670040,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670211,1620209670040,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670226,1620209670040,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670242,1620209670040,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670257,1620209670040,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670273,1620209670040,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670288,1620209670040,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670304,1620209670040,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670320,1620209670040,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670336,1620209670040,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209670352,1620209670040,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761201,1620209761166,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761216,1620209761166,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761232,1620209761166,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761248,1620209761166,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761264,1620209761166,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761280,1620209761166,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761295,1620209761166,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761311,1620209761166,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761326,1620209761166,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761342,1620209761166,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761356,1620209761166,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761372,1620209761166,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761387,1620209761166,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761403,1620209761166,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761419,1620209761166,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761433,1620209761166,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761449,1620209761166,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209761464,1620209761166,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762187,1620209762142,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762203,1620209762142,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762218,1620209762142,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762234,1620209762142,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762249,1620209762142,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762265,1620209762142,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762281,1620209762142,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762297,1620209762142,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762313,1620209762142,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762329,1620209762142,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762345,1620209762142,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762361,1620209762142,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762376,1620209762142,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762392,1620209762142,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762408,1620209762142,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762423,1620209762142,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762439,1620209762142,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762455,1620209762142,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762971,1620209762928,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209762987,1620209762928,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763002,1620209762928,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763018,1620209762928,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763034,1620209762928,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763050,1620209762928,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763065,1620209762928,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763081,1620209762928,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763096,1620209762928,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763113,1620209762928,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763128,1620209762928,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763143,1620209762928,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763159,1620209762928,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763175,1620209762928,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763190,1620209762928,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763205,1620209762928,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763221,1620209762928,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209763237,1620209762928,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919183,1620209919136,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919198,1620209919136,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919214,1620209919136,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919230,1620209919136,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919245,1620209919136,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919260,1620209919136,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919276,1620209919136,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919292,1620209919136,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919307,1620209919136,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919323,1620209919136,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919339,1620209919136,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919354,1620209919136,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919370,1620209919136,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919386,1620209919136,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919401,1620209919136,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919417,1620209919136,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919433,1620209919136,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919448,1620209919136,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919791,1620209919751,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919807,1620209919751,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919822,1620209919751,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919837,1620209919751,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919852,1620209919751,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919867,1620209919751,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919883,1620209919751,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919898,1620209919751,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919914,1620209919751,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919929,1620209919751,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919944,1620209919751,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919961,1620209919751,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919975,1620209919751,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209919991,1620209919751,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920006,1620209919751,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920022,1620209919751,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920037,1620209919751,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920053,1620209919751,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920352,1620209920316,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920367,1620209920316,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920383,1620209920316,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920398,1620209920316,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920413,1620209920316,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920429,1620209920316,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920444,1620209920316,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920459,1620209920316,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920475,1620209920316,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920490,1620209920316,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920506,1620209920316,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920521,1620209920316,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920537,1620209920316,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920553,1620209920316,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920569,1620209920316,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920584,1620209920316,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920600,1620209920316,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620209920616,1620209920316,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052865,1620210052816,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052881,1620210052816,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052896,1620210052816,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052912,1620210052816,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052926,1620210052816,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052942,1620210052816,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052958,1620210052816,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052973,1620210052816,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210052989,1620210052816,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053004,1620210052816,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053020,1620210052816,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053035,1620210052816,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053050,1620210052816,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053066,1620210052816,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053081,1620210052816,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053098,1620210052816,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053114,1620210052816,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053129,1620210052816,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053871,1620210053831,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053886,1620210053831,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053902,1620210053831,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053918,1620210053831,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053934,1620210053831,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053950,1620210053831,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053965,1620210053831,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053981,1620210053831,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210053996,1620210053831,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054012,1620210053831,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054027,1620210053831,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054042,1620210053831,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054058,1620210053831,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054074,1620210053831,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054089,1620210053831,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054104,1620210053831,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054120,1620210053831,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054136,1620210053831,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054912,1620210054863,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054928,1620210054863,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054943,1620210054863,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054959,1620210054863,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054975,1620210054863,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210054991,1620210054863,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055007,1620210054863,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055023,1620210054863,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055038,1620210054863,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055054,1620210054863,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055069,1620210054863,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055085,1620210054863,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055101,1620210054863,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055116,1620210054863,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055131,1620210054863,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055147,1620210054863,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055162,1620210054863,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210055178,1620210054863,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113221,1620210113182,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113237,1620210113182,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113252,1620210113182,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113268,1620210113182,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113284,1620210113182,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113299,1620210113182,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113314,1620210113182,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113331,1620210113182,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113346,1620210113182,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113361,1620210113182,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113377,1620210113182,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113393,1620210113182,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113408,1620210113182,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113424,1620210113182,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113439,1620210113182,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113454,1620210113182,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113470,1620210113182,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113485,1620210113182,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113750,1620210113704,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113766,1620210113704,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113782,1620210113704,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113798,1620210113704,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113813,1620210113704,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113829,1620210113704,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113845,1620210113704,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113860,1620210113704,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113875,1620210113704,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113891,1620210113704,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113906,1620210113704,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113922,1620210113704,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113937,1620210113704,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113952,1620210113704,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113968,1620210113704,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113984,1620210113704,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210113999,1620210113704,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114015,1620210113704,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114311,1620210114270,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114326,1620210114270,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114342,1620210114270,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114358,1620210114270,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114373,1620210114270,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114389,1620210114270,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114404,1620210114270,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114420,1620210114270,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114435,1620210114270,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114451,1620210114270,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114467,1620210114270,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114482,1620210114270,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114498,1620210114270,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114514,1620210114270,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114529,1620210114270,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114546,1620210114270,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114562,1620210114270,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210114577,1620210114270,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150764,1620210150727,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150779,1620210150727,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150795,1620210150727,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150811,1620210150727,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150826,1620210150727,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150842,1620210150727,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150858,1620210150727,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150873,1620210150727,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150890,1620210150727,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150905,1620210150727,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150920,1620210150727,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150936,1620210150727,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150951,1620210150727,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150967,1620210150727,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150982,1620210150727,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210150997,1620210150727,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210151013,1620210150727,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210151028,1620210150727,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197388,1620210197352,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197404,1620210197352,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197420,1620210197352,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197435,1620210197352,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197450,1620210197352,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197466,1620210197352,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197481,1620210197352,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197497,1620210197352,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197514,1620210197352,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197529,1620210197352,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197544,1620210197352,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197561,1620210197352,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197575,1620210197352,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197591,1620210197352,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197606,1620210197352,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197622,1620210197352,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197639,1620210197352,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210197654,1620210197352,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198262,1620210198214,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198278,1620210198214,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198292,1620210198214,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198308,1620210198214,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198323,1620210198214,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198340,1620210198214,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198355,1620210198214,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198370,1620210198214,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198385,1620210198214,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198401,1620210198214,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198417,1620210198214,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198432,1620210198214,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198448,1620210198214,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198463,1620210198214,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198479,1620210198214,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198495,1620210198214,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198511,1620210198214,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210198526,1620210198214,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213620,1620210213584,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213636,1620210213584,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213651,1620210213584,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213666,1620210213584,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213682,1620210213584,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213698,1620210213584,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213712,1620210213584,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213727,1620210213584,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213744,1620210213584,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213760,1620210213584,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213775,1620210213584,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213792,1620210213584,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213808,1620210213584,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213824,1620210213584,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213840,1620210213584,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213855,1620210213584,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213871,1620210213584,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210213886,1620210213584,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221179,1620210221135,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221194,1620210221135,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221210,1620210221135,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221226,1620210221135,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221241,1620210221135,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221256,1620210221135,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221272,1620210221135,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221288,1620210221135,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221304,1620210221135,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221320,1620210221135,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221335,1620210221135,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221350,1620210221135,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221366,1620210221135,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221381,1620210221135,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221397,1620210221135,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221413,1620210221135,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221429,1620210221135,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221444,1620210221135,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221955,1620210221911,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221970,1620210221911,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210221986,1620210221911,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222002,1620210221911,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222018,1620210221911,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222034,1620210221911,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222049,1620210221911,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222065,1620210221911,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222081,1620210221911,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222097,1620210221911,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222112,1620210221911,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222128,1620210221911,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222144,1620210221911,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222160,1620210221911,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222176,1620210221911,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222191,1620210221911,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222207,1620210221911,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210222222,1620210221911,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210490846,1620210490806,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210491671,1620210491623,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210492857,1620210492815,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210884754,1620210884703,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210885452,1620210885407,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620210886248,1620210886199,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211011456,1620211011414,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211012392,1620211012342,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211013233,1620211013190,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211062070,1620211062031,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211062737,1620211062695,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211063297,1620211063247,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211103450,1620211103398,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211103947,1620211103905,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211104415,1620211104367,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211240845,1620211240806,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211241579,1620211241534,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211242338,1620211242302,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211362583,1620211362542,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211363311,1620211363262,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211364188,1620211364150,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211759819,1620211759773,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211760526,1620211760478,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620211761057,1620211761014,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620212212186,1620212212142,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620212212703,1620212212654,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620212213428,1620212213389,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620212329097,1620212329053,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620212329644,1620212329598,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213167389,1620213167348,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213228119,1620213228077,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213228920,1620213228884,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213229704,1620213229661,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213302986,1620213302939,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213303725,1620213303685,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213304290,1620213304245,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213497715,1620213497675,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213498492,1620213498443,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213499152,1620213499116,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213568688,1620213568636,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213569200,1620213569164,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213570029,1620213569988,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213883741,1620213883700,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213884415,1620213884373,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213885170,1620213885124,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620213999937,1620213999900,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214000516,1620214000468,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214001015,1620214000971,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214125229,1620214125179,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214126076,1620214126036,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214129765,1620214129725,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214270280,1620214270235,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214270846,1620214270796,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214271379,1620214271340,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214332287,1620214332244,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214333114,1620214333068,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214333724,1620214333683,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214393282,1620214393244,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214393644,1620214393604,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214395104,1620214395059,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214507391,1620214507355,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214508209,1620214508164,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214511968,1620214511922,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214563346,1620214563299,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214563724,1620214563682,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214564272,1620214564227,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214604593,1620214604547,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214604959,1620214604923,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214605962,1620214605915,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214688252,1620214688210,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214688786,1620214688747,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214690030,1620214689994,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214787532,1620214787491,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214788035,1620214787994,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214788597,1620214788555,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214937816,1620214937779,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214938569,1620214938531,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620214939339,1620214939291,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620215017821,1620215017771,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620215018508,1620215018459,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1620215018963,1620215018922,'19',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0);
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
  PRIMARY KEY (`tournamentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,1614697043090,'DIMENSION DATA PRO-AM','DIMENSION DATA PRO-AM','South Africa','2021-05-06 00:00:00','2021-05-09 00:00:00','9','9',1,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Dimension_Data_Pro-am ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Dimension_Data_Pro-am ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Dimension_Data_Pro-am ','MEN\'S'),(2,1614697043090,'DIMENSION DATA PRO-AM','DIMENSION DATA PRO-AM','South Africa','2021-05-06 00:00:00','2021-05-09 00:00:00','9','9',1,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Dimension_Data_Pro-am ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Dimension_Data_Pro-am ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Dimension_Data_Pro-am ','LADIES');
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
  `SelectedCourseid` bigint(20) DEFAULT '-1',
  `updatetimestamp` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`iduiselected`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uiselected`
--

LOCK TABLES `uiselected` WRITE;
/*!40000 ALTER TABLE `uiselected` DISABLE KEYS */;
INSERT INTO `uiselected` VALUES (0,1,1620212330165,1620160520463,1,1620139804648,'0000-00-00 00:00:00');
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

SELECT count(*) into retCountFront9 FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;
SELECT count(*) into retCountBack9 FROM golf.courseholes sc,golf.shots s  where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;

if retCountFront9 >0 then 
SELECT case  SIGN((sum(strokes)-sum(par)))  when 1 then concat('+',(sum(strokes)-sum(par))) when 0 then 'PAR' else (sum(strokes)-sum(par)) end into retFront9Score FROM golf.courseholes sc,golf.shots s ,golf.uiselected u 
where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 1 and 9;
end if;

if retCountBack9 >0 then 
SELECT case  SIGN((sum(strokes)-sum(par)))  when 1 then concat('+',(sum(strokes)-sum(par))) when 0 then 'PAR' else (sum(strokes)-sum(par)) end into retBack9Score FROM golf.courseholes sc,golf.shots s ,golf.uiselected u 
where sc.idcourseholes=s.holeid and   s.idscore = iSelectedID and HoleStatus=2  and sc.HoleNumber between 10 and 18;
end if;

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

declare iLeaderScore int ;
declare iPlayerID bigint default -1;
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

when 21 then
SELECT 
GetPlayerSelectedCourseColor(s.courseid) color FROM golf.score s,golf.uiselected u where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,s.teetime,Playoff desc,GetPlayerNameAndSurnameFromID(playerid) asc,PlayoffOrder desc,s.playerid  limit limitstart,limitCount;
                
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

-- Dump completed on 2021-05-05 14:25:28
