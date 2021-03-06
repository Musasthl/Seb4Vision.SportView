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
INSERT INTO `course` VALUES (1614697043090,'Royal Johannesburg & Kensington Golf Club',18,37,35,72,3604,3397,7001,3941,3715,7656);
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
INSERT INTO `courseholes` VALUES (1,1614697043090,'Hole 1',1,5,0,472),(2,1614697043090,'Hole 2',2,3,0,231),(3,1614697043090,'Hole 3',3,4,0,459),(4,1614697043090,'Hole 4',4,4,0,435),(5,1614697043090,'Hole 5',5,3,0,162),(6,1614697043090,'Hole 6',6,5,0,530),(7,1614697043090,'Hole 7',7,4,0,420),(8,1614697043090,'Hole 8',8,5,0,506),(9,1614697043090,'Hole 9',9,4,0,389),(10,1614697043090,'Hole 10',10,4,0,474),(11,1614697043090,'Hole 11',11,4,0,457),(12,1614697043090,'Hole 12',12,3,0,166),(13,1614697043090,'Hole 13',13,4,0,384),(14,1614697043090,'Hole 14',14,4,0,413),(15,1614697043090,'Hole 15',15,4,0,440),(16,1614697043090,'Hole 16',16,3,0,179),(17,1614697043090,'Hole 17',17,4,0,354),(18,1614697043090,'Hole 18',18,5,0,504);
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
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (-1,' ',' ','2021-03-03 21:30:00','0000','','','','',NULL,-1,NULL,NULL,NULL,'','','',0),(1614872890756,'ADRIEL','POONAN','1995-10-11 00:00:00','POO004','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 76.46',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890758,'CHRIS','SWANEPOEL','1984-11-22 00:00:00','SWA010','','RSA','','',NULL,0,'Year Turned Pro: 2003','Stroke Average: 72.09',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890760,'DESNE','VAN DEN BERGH','1989-10-20 00:00:00','VAN186','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.45',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890763,'PIETER','MOOLMAN','1991-02-26 00:00:00','MOO018','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 72.61',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890764,'JARED','HARVEY','1988-08-06 00:00:00','HAR040','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 71.52',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890765,'MUSIWALO','NETHUNZWI','1989-04-24 00:00:00','NET003','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 73.72',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890766,'JACQUES','KRUYSWIJK','1992-10-16 00:00:00','KRU019','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.14',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890767,'JAKE','ROOS','1980-10-20 00:00:00','ROO003','','RSA','','',NULL,0,'Year Turned Pro: 2005','Stroke Average: 71.13',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890768,'RUAN','KORB','1993-12-03 00:00:00','KOR003','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 72.78',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890769,'JACO','PRINSLOO','1989-08-23 00:00:00','PRI022','','RSA','','',NULL,0,'Year Turned Pro: 2012','Stroke Average: 71.65',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890770,'JAKE','REDMAN','1987-04-26 00:00:00','RED004','','RSA','','',NULL,0,'Year Turned Pro: 2010','Stroke Average: 72.25',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890771,'ALEX','HAINDL','1983-02-03 00:00:00','HAI002','','RSA','','',NULL,0,'Year Turned Pro: 2000','Stroke Average: 71.72',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890772,'THRISTON','LAWRENCE','1996-12-03 00:00:00','LAW008','','RSA','','',NULL,0,'Year Turned Pro: 2014','Stroke Average: 70.72',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890773,'OCKIE','STRYDOM','1985-01-08 00:00:00','STR011','','RSA','','',NULL,0,'Year Turned Pro: 2009','Stroke Average: 71.71',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890774,'JACQUES','BLAAUW','1986-02-12 00:00:00','BLA019','','RSA','','',NULL,0,'Year Turned Pro: 2008','Stroke Average: 70.86',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890776,'JEAN','HUGO','1975-12-03 00:00:00','HUG004','','RSA','','',NULL,0,'Year Turned Pro: 1999','Stroke Average: 70.77',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890777,'ADILSON','DA SILVA','1972-01-24 00:00:00','DAS001','','BRA','','',NULL,0,'Year Turned Pro: 1994','Stroke Average: 70.61',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Brazil',0),(1614872890778,'JJ','SENEKAL','1988-01-25 00:00:00','SEN004','','RSA','','',NULL,0,'Amateur','Stroke Average: 72.42',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890779,'JAMES','KINGSTON','1965-11-30 00:00:00','KIN001','','RSA','','',NULL,0,'Year Turned Pro: 1988','Stroke Average: 71.40',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890780,'RHYS','ENOCH','1988-06-16 00:00:00','ENO002','','WAL','','',NULL,0,'Year Turned Pro: 2012','Stroke Average: 71.47',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Wales',0),(1614872890781,'HENNIE','O\'KENNEDY','1996-09-02 00:00:00','OKE004','','RSA','','',NULL,0,'Amateur','Stroke Average: 73.82',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890782,'LUKE','BROWN','1998-06-02 00:00:00','BRO037','','RSA','','',NULL,0,'Year Turned Pro: 2018','Stroke Average: 72.63',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890783,'MALCOLM','MITCHELL','1994-12-11 00:00:00','MIT007','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 71.06',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890784,'TRISTEN','STRYDOM','1997-02-21 00:00:00','STR026','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 72.64',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890785,'HEINRICH','BRUINERS','1987-10-07 00:00:00','BRU006','','RSA','','',NULL,0,'Year Turned Pro: 2006','Stroke Average: 72.71',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890786,'LYLE','ROWE','1987-06-13 00:00:00','ROW005','','RSA','','',NULL,0,'Year Turned Pro: 2009','Stroke Average: 72.13',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890787,'DEAN','BURMESTER','1989-06-02 00:00:00','BUR025','','RSA','','',NULL,0,'Year Turned Pro: 2010','Stroke Average: 70.92',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890788,'ZANDER','LOMBARD','1995-01-18 00:00:00','LOM010','','RSA','','',NULL,0,'Year Turned Pro: 2014','Stroke Average: 71.45',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890789,'JACO','AHLERS','1982-11-19 00:00:00','AHL001','','RSA','','',NULL,0,'Year Turned Pro: 2006','Stroke Average: 71.01',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890790,'DARREN','FICHARDT','1975-05-13 00:00:00','FIC002','','RSA','','',NULL,0,'Year Turned Pro: 1994','Stroke Average: 70.82',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890791,'KEENAN','DAVIDSE','1989-05-10 00:00:00','DAV019','','RSA','','',NULL,0,'Year Turned Pro: 2009','Stroke Average: 71.99',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890792,'LOUIS','DE JAGER','1987-03-30 00:00:00','DEJ006','','RSA','','',NULL,0,'Year Turned Pro: 2008','Stroke Average: 71.02',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890794,'NEIL','SCHIETEKAT','1984-01-31 00:00:00','SCH044','','RSA','','',NULL,0,'Year Turned Pro: 2006','Stroke Average: 71.18',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890795,'WILCO','NIENABER','2000-04-07 00:00:00','NIE008','','RSA','','',NULL,0,'Amateur','Stroke Average: 70.06',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890796,'DYLAN','NAIDOO','1992-02-21 00:00:00','NAI013','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 71.91',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890798,'MERRICK','BREMNER','1986-03-26 00:00:00','BRE005','','RSA','','',NULL,0,'Year Turned Pro: 2005','Stroke Average: 71.62',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890799,'SHAUN','NORRIS','1982-05-14 00:00:00','NOR008','','RSA','','',NULL,0,'Year Turned Pro: 2002','Stroke Average: 72.13',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890800,'JAYDEN','SCHAPER','2001-03-15 00:00:00','SCH079','','RSA','','',NULL,0,'Amateur','Stroke Average: 70.43',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890801,'GARRICK','HIGGO','1999-05-12 00:00:00','HIG006','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 70.10',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890802,'TOTO','THIMBA JNR','1986-02-10 00:00:00','THI001','','RSA','','',NULL,0,'Year Turned Pro: 2007','Stroke Average: 72.83',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890803,'MATIAS','CALDERON','1991-12-18 00:00:00','CAL012','','CHL','','',NULL,0,'Year Turned Pro: 2016','Stroke Average: 72.38',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Chile',0),(1614872890804,'ANDRE','NEL','1995-05-31 00:00:00','NEL019','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.88',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890808,'MJ','VILJOEN','1995-05-08 00:00:00','VIL011','','RSA','','',NULL,0,'Year Turned Pro: 2014','Stroke Average: 71.97',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890810,'HENNIE','DU PLESSIS','1996-10-14 00:00:00','DUP029','','RSA','','',NULL,0,'Year Turned Pro: 2015','Stroke Average: 71.37',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890812,'CHRISTIAAN','BASSON','1984-04-30 00:00:00','BAS007','','RSA','','',NULL,0,'Year Turned Pro: 2007','Stroke Average: 71.40',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890813,'LUKE','JERLING','1992-07-10 00:00:00','JER001','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 71.58',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890814,'STEVE','SURRY','1982-02-11 00:00:00','SUR001','','ENG','','',NULL,0,'Year Turned Pro: 2003','Stroke Average: 71.56',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/England',0),(1614872890815,'DANIEL','GREENE','1985-08-05 00:00:00','GRE022','','RSA','','',NULL,0,'Year Turned Pro: 2010','Stroke Average: 71.73',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890816,'JAMES','DU PREEZ','1995-10-13 00:00:00','DUP028','','RSA','','',NULL,0,'Year Turned Pro: 2018','Stroke Average: 71.71',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890817,'RUAN','DE SMIDT','1989-10-25 00:00:00','DES005','','RSA','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 71.60',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890818,'STEPHEN','FERREIRA','1991-12-06 00:00:00','FER028','','POR','','',NULL,0,'Year Turned Pro: 2011','Stroke Average: 72.36',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Portugal',0),(1614872890819,'DEON','GERMISHUYS','1999-10-22 00:00:00','GER017','','RSA','','',NULL,0,'Year Turned Pro: 2019','Stroke Average: 70.68',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890820,'ANTHONY','MICHAEL','1985-08-22 00:00:00','MIC009','','RSA','','',NULL,0,'Year Turned Pro: 2009','Stroke Average: 71.65',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890821,'KYLE','BARKER','1998-02-11 00:00:00','BAR054','','RSA','','',NULL,0,'Year Turned Pro: 2017','Stroke Average: 72.06',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890822,'DOUG','MCGUIGAN','1970-08-07 00:00:00','MCG001','','SCO','','',NULL,0,'Year Turned Pro: 1989','Stroke Average: 71.79',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Scotland',0),(1614872890823,'CALLUM','MOWAT','1992-02-11 00:00:00','MOW001','','RSA','','',NULL,0,'Year Turned Pro: 2014','Stroke Average: 72.41',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890824,'CJ','DU PLESSIS','1992-02-04 00:00:00','DUP022','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 72.41',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890825,'ESTIAAN','CONRADIE','1997-10-12 00:00:00','CON007','','RSA','','',NULL,0,'Amateur','Stroke Average: 71.75',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890826,'FREDRIK','FROM','1989-02-08 00:00:00','FRO006','','SWE','','',NULL,0,'Year Turned Pro: 2016','Stroke Average: 71.26',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/Sweden',0),(1614872890828,'CLINTON','GROBLER','1995-05-09 00:00:00','GRO026','','RSA','','',NULL,0,'Amateur','Stroke Average: 72.52',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890830,'ROURKE','VAN DER SPUY','1990-01-11 00:00:00','VAN178','','RSA','','',NULL,0,'Year Turned Pro: 2012','Stroke Average: 72.01',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890831,'ULRICH','VAN DEN BERG','1975-01-13 00:00:00','VAN060','','RSA','','',NULL,0,'Year Turned Pro: 1999','Stroke Average: 70.98',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890832,'MARTIN','ROHWER','1993-08-24 00:00:00','ROH001','','RSA','','',NULL,0,'Year Turned Pro: 2016','Stroke Average: 70.63',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890833,'HENNIE','OTTO','1976-06-25 00:00:00','OTT002','','RSA','','',NULL,0,'Year Turned Pro: 1997','Stroke Average: 70.56',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890835,'MICHAEL','PALMER','1989-11-17 00:00:00','PAL008','','RSA','','',NULL,0,'Year Turned Pro: 2015','Stroke Average: 72.02',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890836,'RUAN','CONRADIE','1995-08-08 00:00:00','CON004','','RSA','','',NULL,0,'Amateur','Stroke Average: 71.56',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890837,'KEITH','HORNE','1971-06-09 00:00:00','HOR002','','RSA','','',NULL,0,'Year Turned Pro: 1996','Stroke Average: 71.10',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890838,'JACO','VAN ZYL','1979-02-23 00:00:00','VAN062','','RSA','','',NULL,0,'Year Turned Pro: 2001','Stroke Average: 70.32',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890839,'TREVOR','FISHER JNR','1979-06-08 00:00:00','FIS005','','RSA','','',NULL,0,'Year Turned Pro: 2002','Stroke Average: 71.12',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa ',0),(1614872890840,'OLIVER','BEKKER','1984-12-11 00:00:00','BEK004','','RSA','','',NULL,0,'Year Turned Pro: 2008','Stroke Average: 71.21',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',0),(1614872890841,'JC','RITCHIE','1994-02-24 00:00:00','RIT004','','RSA','','',NULL,0,'Year Turned Pro: 2013','Stroke Average: 71.27','2019/20 Sunshine Tour Order of Merit Winner','','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1),(1614872890842,'JBE\'','KRUGER','1986-06-23 00:00:00','KRU013','','RSA','','',NULL,0,'Year Turned Pro: 2007','Stroke Average: 70.80',NULL,'','','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Golf_Flags/South_Africa',1);
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
INSERT INTO `playgroup` VALUES (0,'None'),(1,'A'),(2,'B'),(3,'C'),(4,'D');
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT metres FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 9,18;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','select * from (SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 0,9) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(18,'SPHoles10to18Strokes','select * from (SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 9,18) as t union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' union all select \'\' limit 9;'),(19,'SPHoles1to9StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(20,'SPHoles10to18StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'STCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(24,'STLeaderBoardPage1PlayerPos','call GetTournamentSelectedLeaderBoard(1,0,10);'),(25,'STLeaderBoardPage1PlayerName','call GetTournamentSelectedLeaderBoard(2,0,10);'),(26,'STLeaderBoardPage1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,0,10);'),(27,'STLeaderBoardPage1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,0,10);'),(28,'STLeaderBoardPage1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,0,10);'),(29,'STLeaderBoardPage1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,0,10);'),(30,'STLeaderBoardPage1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,0,10);'),(31,'STLeaderBoardPage1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,0,10);'),(32,'SPPosition','SELECT GetPlayerSelectedTournamentPosition(u.SelectedScoreEntry) FROM golf.uiselected u;'),(33,'SPCurrentHoleShot','SELECT s.strokes  CurrentShooting FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(34,'SRDescription','SELECT r.Description FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(35,'STDescription','SELECT t.description FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(36,'STLogo1','SELECT t.logo1 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(37,'STLogo2','SELECT t.logo2 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(38,'STLogo3','SELECT t.logo3 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(39,'SPStrokesSelectedHole','SELECT s.strokes FROM golf.shots s,golf.uiselected u where s.shotsid = u.SelectedHole;'),(40,'SPStrokeSelectedHoleDescription','SELECT GetPlayerSelectedStrokesFromHoleParDescription(u.SelectedHole) StrokeDescription FROM golf.uiselected u;'),(41,'SPStrokeSelectedHoleFlag','SELECT if(f.shotsflagid=s.strokes,GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(42,'SPHoles1to9StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 1 and 9) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(43,'SPHoles10to18StrokesFlag','select * from (SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2   and sc.HoleNumber between 10 and 18) as t union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 union all select 0 limit 9;'),(44,'STCourseDescription','SELECT sc.Description FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(159,'STLeadersScore','call GetTournamentSelectedLeaderBoard(6,0,1);'),(160,'SPTournamentScoreAtSelectedHole','SELECT 	GetPlayerSelectedTournamentScoreFromSelectedHole(s.playerid) ScoreAtHole FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry;'),(161,'SPCountryFlag','SELECT GetPlayerCountryFlagFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(162,'STLeaderBoardPage1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,0,10);'),(177,'SPBio1','select c.Bio1 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(178,'SPBio2','select c.Bio2 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(179,'SPBio3','select c.Bio3 from players c where PlayerID = (select playerid from golf.score s ,golf.uiselected u where s.idscore=u.SelectedScoreEntry);'),(180,'SPRoundTotalPar','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),\'\') TotalPar FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(181,'STLeaderBoardPage1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,0,10);'),(182,'STLeaderBoardPage2Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,10,1);'),(183,'STLeaderBoardPage2ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,11,9);'),(184,'STLeaderBoardPage3Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,20,1);'),(185,'STLeaderBoardPage3ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,21,9);'),(186,'STLeaderBoardPage4Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,30,1);'),(187,'STLeaderBoardPage4ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,31,9);'),(188,'STLeaderBoardPage5Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,40,1);'),(189,'STLeaderBoardPage5ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,41,9);'),(190,'STLeaderBoardPage6Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,50,1);'),(191,'STLeaderBoardPage6ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,51,9);'),(192,'STLeaderBoardPage7Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,60,1);'),(193,'STLeaderBoardPage7ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,61,9);'),(194,'STLeaderBoardPage8Line1ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(12,70,1);'),(195,'STLeaderBoardPage8ColumnsPosNameSurnameScoreHoleFlag','call GetTournamentSelectedLeaderBoard(0,71,9);'),(196,'STLeaderBoardPage1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,0,10);'),(197,'STLeaderBoardPage2Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,10,1);'),(198,'STLeaderBoardPage2ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,11,9);'),(199,'STLeaderBoardPage3Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,20,1);'),(200,'STLeaderBoardPage3ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,21,9);'),(201,'STLeaderBoardPage4Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,30,1);'),(202,'STLeaderBoardPage4ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,31,9);'),(203,'STLeaderBoardPage5Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,40,1);'),(204,'STLeaderBoardPage5ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,41,9);'),(205,'STLeaderBoardPage6Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,50,1);'),(206,'STLeaderBoardPage6ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,51,9);'),(207,'STLeaderBoardPage7Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,60,1);'),(208,'STLeaderBoardPage7ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,61,9);'),(209,'STLeaderBoardPage8Line1ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(14,70,1);'),(210,'STLeaderBoardPage8ColumnsPosNameSurnameRoundScoreTournamentScoreHoleFlag','call GetTournamentSelectedLeaderBoard(13,71,9);'),(211,'SPRound1TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(idscore) ,GetPlayerSelectedRoundHolesPlayedStrokes(idscore),\'\') Round1 FROM golf.score s,golf.tournament t,golf.uiselected u where playerid=(SELECT playerid FROM golf.score s  WHERE s.idscore=u.SelectedScoreEntry) and t.tournamentid=u.SelectedTournament  and roundid=1;'),(212,'SPRound2TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(idscore) ,GetPlayerSelectedRoundHolesPlayedStrokes(idscore),\'\') Round1 FROM golf.score s,golf.tournament t,golf.uiselected u where playerid=(SELECT playerid FROM golf.score s  WHERE s.idscore=u.SelectedScoreEntry) and t.tournamentid=u.SelectedTournament  and roundid=2;'),(213,'SPRound3TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(idscore) ,GetPlayerSelectedRoundHolesPlayedStrokes(idscore),\'\') Round1 FROM golf.score s,golf.tournament t,golf.uiselected u where playerid=(SELECT playerid FROM golf.score s  WHERE s.idscore=u.SelectedScoreEntry) and t.tournamentid=u.SelectedTournament  and roundid=3;'),(214,'SPRound4TotalParStrokes','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(idscore) ,GetPlayerSelectedRoundHolesPlayedStrokes(idscore),\'\') Round1 FROM golf.score s,golf.tournament t,golf.uiselected u where playerid=(SELECT playerid FROM golf.score s  WHERE s.idscore=u.SelectedScoreEntry) and t.tournamentid=u.SelectedTournament  and roundid=4;');
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
INSERT INTO `rounds` VALUES (1,'ROUND 1',2),(2,'ROUND 2',0),(3,'ROUND 3',0),(4,'FINAL ROUND',0),(1612735804051,'PlayOffs',0);
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
INSERT INTO `score` VALUES (1614874188278,1614872890756,1614697043090,1,1,10,'06:40',NULL,'18','58','58',1,0),(1614874188604,1614872890758,1614697043090,1,1,12,'06:40',NULL,'18','68','68',1,0),(1614874188853,1614872890760,1614697043090,1,1,9,'06:40',NULL,'18','52','52',1,0),(1614874189101,1614872890763,1614697043090,1,1,10,'06:50',NULL,'18','','58',1,0),(1614874189355,1614872890764,1614697043090,1,1,8,'06:50',NULL,'18','','46',1,0),(1614874189613,1614872890765,1614697043090,1,1,11,'06:50',NULL,'18','66','66',1,0),(1614874189883,1614872890766,1614697043090,1,1,3,'07:00',NULL,'18','6','6',1,0),(1614874190145,1614872890767,1614697043090,1,1,3,'07:00',NULL,'18','','6',1,0),(1614874190397,1614872890768,1614697043090,1,1,3,'07:10',NULL,'18','','6',1,0),(1614874190664,1614872890769,1614697043090,1,1,7,'07:10',NULL,'18','39','39',1,0),(1614874190936,1614872890770,1614697043090,1,1,2,'07:20',NULL,'18','','3',1,0),(1614874191171,1614872890771,1614697043090,1,1,4,'07:20',NULL,'18','13','13',1,0),(1614874191391,1614872890772,1614697043090,1,1,4,'07:30',NULL,'18','','13',1,0),(1614874191657,1614872890773,1614697043090,1,1,1,'07:30',NULL,'18','','1',1,0),(1614874191901,1614872890774,1614697043090,1,1,10,'07:40',NULL,'18','','58',1,0),(1614874192147,1614872890776,1614697043090,1,1,5,'07:40',NULL,'18','','19',1,0),(1614874192394,1614872890777,1614697043090,1,1,5,'07:50',NULL,'18','','19',1,0),(1614874192637,1614872890778,1614697043090,1,1,14,'07:50',NULL,'18','72','72',0,0),(1614874192877,1614872890779,1614697043090,1,1,11,'08:00',NULL,'18','','66',1,0),(1614874193122,1614872890780,1614697043090,1,1,2,'08:00',NULL,'18','','3',1,0),(1614874193367,1614872890781,1614697043090,1,1,6,'06:40',NULL,'18','32','32',1,1),(1614874193610,1614872890782,1614697043090,1,1,5,'06:40',NULL,'18','19','19',1,1),(1614874193882,1614872890783,1614697043090,1,1,2,'06:40',NULL,'18','3','3',1,1),(1614874194152,1614872890784,1614697043090,1,1,5,'06:50',NULL,'18','','19',1,1),(1614874194418,1614872890785,1614697043090,1,1,8,'06:50',NULL,'18','46','46',1,1),(1614874194678,1614872890786,1614697043090,1,1,10,'06:50',NULL,'18','','58',1,1),(1614874194946,1614872890787,1614697043090,1,1,1,'07:00',NULL,'18','1','1',1,1),(1614874195199,1614872890788,1614697043090,1,1,12,'07:00',NULL,'18','','68',1,1),(1614874195429,1614872890789,1614697043090,1,1,9,'07:10',NULL,'18','','52',1,1),(1614874195678,1614872890790,1614697043090,1,1,6,'07:10',NULL,'18','','32',1,1),(1614874195940,1614872890791,1614697043090,1,1,10,'07:20',NULL,'18','','58',1,1),(1614874196204,1614872890792,1614697043090,1,1,8,'07:20',NULL,'18','','46',1,1),(1614874196426,1614872890794,1614697043090,1,1,7,'07:30',NULL,'18','','39',1,1),(1614874196617,1614872890795,1614697043090,1,1,5,'07:30',NULL,'18','','19',1,1),(1614874196867,1614872890796,1614697043090,1,1,6,'07:40',NULL,'18','','32',1,1),(1614874197114,1614872890798,1614697043090,1,1,9,'07:40',NULL,'18','','52',1,1),(1614874197358,1614872890799,1614697043090,1,1,7,'07:50',NULL,'18','','39',1,1),(1614874197603,1614872890800,1614697043090,1,1,4,'07:50',NULL,'18','','13',1,1),(1614874197846,1614872890801,1614697043090,1,1,3,'08:00',NULL,'18','','6',1,1),(1614874198107,1614872890802,1614697043090,1,1,7,'08:00',NULL,'18','','39',1,1),(1614874198363,1614872890803,1614697043090,1,1,3,'10:50',NULL,'18','','6',1,0),(1614874198609,1614872890804,1614697043090,1,1,7,'10:50',NULL,'18','','39',1,0),(1614874198863,1614872890808,1614697043090,1,1,5,'11:00',NULL,'18','','19',1,0),(1614874199134,1614872890810,1614697043090,1,1,3,'11:00',NULL,'18','','6',1,0),(1614874199383,1614872890812,1614697043090,1,1,6,'11:10',NULL,'18','','32',1,0),(1614874199570,1614872890813,1614697043090,1,1,4,'11:10',NULL,'18','','13',1,0),(1614874199779,1614872890814,1614697043090,1,1,10,'11:20',NULL,'18','','58',1,0),(1614874199997,1614872890815,1614697043090,1,1,9,'11:20',NULL,'18','','52',1,0),(1614874200205,1614872890816,1614697043090,1,1,5,'11:30',NULL,'18','','19',1,0),(1614874200417,1614872890817,1614697043090,1,1,6,'11:30',NULL,'18','','32',1,0),(1614874200627,1614872890818,1614697043090,1,1,6,'11:40',NULL,'18','','32',1,0),(1614874200833,1614872890819,1614697043090,1,1,7,'11:40',NULL,'18','','39',1,0),(1614874201047,1614872890820,1614697043090,1,1,4,'11:50',NULL,'18','','13',1,0),(1614874201245,1614872890821,1614697043090,1,1,9,'11:50',NULL,'18','','52',1,0),(1614874201444,1614872890822,1614697043090,1,1,12,'12:00',NULL,'18','','68',1,0),(1614874201642,1614872890823,1614697043090,1,1,4,'12:00',NULL,'18','','13',1,0),(1614874201826,1614872890824,1614697043090,1,1,5,'10:50',NULL,'18','','19',1,1),(1614874202022,1614872890825,1614697043090,1,1,8,'10:50',NULL,'18','','46',1,1),(1614874202216,1614872890826,1614697043090,1,1,7,'11:00',NULL,'18','','39',1,1),(1614874202405,1614872890828,1614697043090,1,1,6,'11:00',NULL,'18','','32',1,1),(1614874202585,1614872890830,1614697043090,1,1,10,'11:10',NULL,'18','','58',1,1),(1614874202776,1614872890831,1614697043090,1,1,5,'11:10',NULL,'18','','19',1,1),(1614874202969,1614872890832,1614697043090,1,1,5,'11:20',NULL,'18','','19',1,1),(1614874203218,1614872890833,1614697043090,1,1,5,'11:20',NULL,'18','','19',1,1),(1614874203474,1614872890835,1614697043090,1,1,13,'11:30',NULL,'18','71','71',0,1),(1614874203722,1614872890836,1614697043090,1,1,8,'11:30',NULL,'18','','46',1,1),(1614874203974,1614872890837,1614697043090,1,1,3,'11:40',NULL,'18','','6',1,1),(1614874204259,1614872890838,1614697043090,1,1,10,'11:40',NULL,'18','','58',1,1),(1614874204530,1614872890839,1614697043090,1,1,9,'11:50',NULL,'18','','52',1,1),(1614874204784,1614872890840,1614697043090,1,1,5,'11:50',NULL,'18','','19',1,1),(1614874205041,1614872890841,1614697043090,1,1,8,'12:00',NULL,'18','','46',1,1),(1614874205293,1614872890842,1614697043090,1,1,5,'12:00',NULL,'18','','19',1,1),(1614984096571,1614872890756,1614697043090,2,1,10,NULL,NULL,'-1','58','58',1,0),(1614984096832,1614872890758,1614697043090,2,1,12,NULL,NULL,'-1','68','68',1,0),(1614984097097,1614872890760,1614697043090,2,1,9,NULL,NULL,'-1','','52',1,0),(1614984097356,1614872890763,1614697043090,2,1,10,NULL,NULL,'-1','','58',1,0),(1614984097588,1614872890764,1614697043090,2,1,8,NULL,NULL,'-1','','46',1,0),(1614984097819,1614872890765,1614697043090,2,1,11,NULL,NULL,'-1','','66',1,0),(1614984098086,1614872890766,1614697043090,2,1,3,NULL,NULL,'-1','','6',1,0),(1614984098350,1614872890767,1614697043090,2,1,3,NULL,NULL,'-1','','6',1,0),(1614984098614,1614872890768,1614697043090,2,1,3,NULL,NULL,'-1','','6',1,0),(1614984098873,1614872890769,1614697043090,2,1,7,NULL,NULL,'-1','','39',1,0),(1614984099137,1614872890770,1614697043090,2,1,2,NULL,NULL,'-1','3','3',1,0),(1614984099377,1614872890771,1614697043090,2,1,4,NULL,NULL,'-1','13','13',1,0),(1614984099610,1614872890772,1614697043090,2,1,4,NULL,NULL,'-1','','13',1,0),(1614984099869,1614872890773,1614697043090,2,1,1,NULL,NULL,'-1','','1',1,0),(1614984100134,1614872890774,1614697043090,2,1,10,NULL,NULL,'-1','','58',1,0),(1614984100402,1614872890776,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984100654,1614872890777,1614697043090,2,1,5,NULL,NULL,'-1','19','19',1,0),(1614984100920,1614872890778,1614697043090,2,1,14,NULL,NULL,'-1','72','72',0,0),(1614984101184,1614872890779,1614697043090,2,1,11,NULL,NULL,'-1','66','66',1,0),(1614984101444,1614872890780,1614697043090,2,1,2,NULL,NULL,'-1','','3',1,0),(1614984101670,1614872890781,1614697043090,2,1,6,NULL,NULL,'-1','','32',1,0),(1614984101922,1614872890782,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984102191,1614872890783,1614697043090,2,1,2,NULL,NULL,'-1','','3',1,0),(1614984102426,1614872890784,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984102676,1614872890785,1614697043090,2,1,8,NULL,NULL,'-1','','46',1,0),(1614984102935,1614872890786,1614697043090,2,1,10,NULL,NULL,'-1','','58',1,0),(1614984103186,1614872890787,1614697043090,2,1,1,NULL,NULL,'-1','1','1',1,0),(1614984103458,1614872890788,1614697043090,2,1,12,NULL,NULL,'-1','','68',1,0),(1614984103719,1614872890789,1614697043090,2,1,9,NULL,NULL,'-1','','52',1,0),(1614984103988,1614872890790,1614697043090,2,1,6,NULL,NULL,'-1','','32',1,0),(1614984104255,1614872890791,1614697043090,2,1,10,NULL,NULL,'-1','','58',1,0),(1614984104521,1614872890792,1614697043090,2,1,8,NULL,NULL,'-1','','46',1,0),(1614984104764,1614872890794,1614697043090,2,1,7,NULL,NULL,'-1','','39',1,0),(1614984105024,1614872890795,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984105282,1614872890796,1614697043090,2,1,6,NULL,NULL,'-1','','32',1,0),(1614984105521,1614872890798,1614697043090,2,1,9,NULL,NULL,'-1','','52',1,0),(1614984105764,1614872890799,1614697043090,2,1,7,NULL,NULL,'-1','','39',1,0),(1614984106031,1614872890800,1614697043090,2,1,4,NULL,NULL,'-1','','13',1,0),(1614984106294,1614872890801,1614697043090,2,1,3,NULL,NULL,'-1','6','6',1,0),(1614984106558,1614872890802,1614697043090,2,1,7,NULL,NULL,'-1','','39',1,0),(1614984106812,1614872890803,1614697043090,2,1,3,NULL,NULL,'-1','','6',1,0),(1614984107049,1614872890804,1614697043090,2,1,7,NULL,NULL,'-1','39','39',1,0),(1614984107287,1614872890808,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984107548,1614872890810,1614697043090,2,1,3,NULL,NULL,'-1','','6',1,0),(1614984107809,1614872890812,1614697043090,2,1,6,NULL,NULL,'-1','32','32',1,0),(1614984108076,1614872890813,1614697043090,2,1,4,NULL,NULL,'-1','','13',1,0),(1614984108332,1614872890814,1614697043090,2,1,10,NULL,NULL,'-1','','58',1,0),(1614984108558,1614872890815,1614697043090,2,1,9,NULL,NULL,'-1','52','52',1,0),(1614984108820,1614872890816,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984109072,1614872890817,1614697043090,2,1,6,NULL,NULL,'-1','','32',1,0),(1614984109335,1614872890818,1614697043090,2,1,6,NULL,NULL,'-1','','32',1,0),(1614984109596,1614872890819,1614697043090,2,1,7,NULL,NULL,'-1','','39',1,0),(1614984109846,1614872890820,1614697043090,2,1,4,NULL,NULL,'-1','','13',1,0),(1614984110063,1614872890821,1614697043090,2,1,9,NULL,NULL,'-1','','52',1,0),(1614984110292,1614872890822,1614697043090,2,1,12,NULL,NULL,'-1','','68',1,0),(1614984110569,1614872890823,1614697043090,2,1,4,NULL,NULL,'-1','','13',1,0),(1614984110829,1614872890824,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984111089,1614872890825,1614697043090,2,1,8,NULL,NULL,'-1','46','46',1,0),(1614984111331,1614872890826,1614697043090,2,1,7,NULL,NULL,'-1','','39',1,0),(1614984111560,1614872890828,1614697043090,2,1,6,NULL,NULL,'-1','','32',1,0),(1614984111825,1614872890830,1614697043090,2,1,10,NULL,NULL,'-1','','58',1,0),(1614984112084,1614872890831,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984112350,1614872890832,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984112613,1614872890833,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984112874,1614872890835,1614697043090,2,1,13,NULL,NULL,'-1','71','71',0,0),(1614984113123,1614872890836,1614697043090,2,1,8,NULL,NULL,'-1','','46',1,0),(1614984113388,1614872890837,1614697043090,2,1,3,NULL,NULL,'-1','','6',1,0),(1614984113655,1614872890838,1614697043090,2,1,10,NULL,NULL,'-1','','58',1,0),(1614984113923,1614872890839,1614697043090,2,1,9,NULL,NULL,'-1','','52',1,0),(1614984114181,1614872890840,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0),(1614984114429,1614872890841,1614697043090,2,1,8,NULL,NULL,'-1','','46',1,0),(1614984114661,1614872890842,1614697043090,2,1,5,NULL,NULL,'-1','','19',1,0);
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
INSERT INTO `shots` VALUES (1614874188367,1614874188278,'1','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188378,1614874188278,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188387,1614874188278,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188397,1614874188278,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188407,1614874188278,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188417,1614874188278,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188428,1614874188278,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188438,1614874188278,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188448,1614874188278,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188458,1614874188278,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188467,1614874188278,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188478,1614874188278,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188488,1614874188278,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188499,1614874188278,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188511,1614874188278,'15','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188521,1614874188278,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188532,1614874188278,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188543,1614874188278,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188611,1614874188604,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188623,1614874188604,'2','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188633,1614874188604,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188643,1614874188604,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188654,1614874188604,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188666,1614874188604,'6','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188676,1614874188604,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188687,1614874188604,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188697,1614874188604,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188707,1614874188604,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188717,1614874188604,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188728,1614874188604,'12','4',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874188738,1614874188604,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188749,1614874188604,'14','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188760,1614874188604,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188770,1614874188604,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188781,1614874188604,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188792,1614874188604,'18','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874188860,1614874188853,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188873,1614874188853,'2','4',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874188885,1614874188853,'3','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188896,1614874188853,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188907,1614874188853,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188918,1614874188853,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188929,1614874188853,'7','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188940,1614874188853,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188951,1614874188853,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188963,1614874188853,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874188973,1614874188853,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188982,1614874188853,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874188991,1614874188853,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189000,1614874188853,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189010,1614874188853,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189020,1614874188853,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189030,1614874188853,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189041,1614874188853,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189109,1614874189101,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189121,1614874189101,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189132,1614874189101,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189143,1614874189101,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189154,1614874189101,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189165,1614874189101,'6','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189176,1614874189101,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189186,1614874189101,'8','7',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874189197,1614874189101,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189208,1614874189101,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189218,1614874189101,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189229,1614874189101,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189239,1614874189101,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189250,1614874189101,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189261,1614874189101,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189272,1614874189101,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189282,1614874189101,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189293,1614874189101,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189363,1614874189355,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189375,1614874189355,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189387,1614874189355,'3','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189397,1614874189355,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189407,1614874189355,'5','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189417,1614874189355,'6','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189427,1614874189355,'7','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189437,1614874189355,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189447,1614874189355,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189457,1614874189355,'10','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874189469,1614874189355,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189481,1614874189355,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189492,1614874189355,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189504,1614874189355,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189516,1614874189355,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189528,1614874189355,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189540,1614874189355,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189552,1614874189355,'18','5',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874189620,1614874189613,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189633,1614874189613,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189644,1614874189613,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189656,1614874189613,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189668,1614874189613,'5','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189680,1614874189613,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189692,1614874189613,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189704,1614874189613,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189716,1614874189613,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189728,1614874189613,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189741,1614874189613,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189753,1614874189613,'12','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189764,1614874189613,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189775,1614874189613,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189786,1614874189613,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189797,1614874189613,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189808,1614874189613,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189820,1614874189613,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189891,1614874189883,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189903,1614874189883,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189915,1614874189883,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189926,1614874189883,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189937,1614874189883,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189949,1614874189883,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189961,1614874189883,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189972,1614874189883,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874189984,1614874189883,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874189996,1614874189883,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190008,1614874189883,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190019,1614874189883,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190029,1614874189883,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190039,1614874189883,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190049,1614874189883,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190060,1614874189883,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190071,1614874189883,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190082,1614874189883,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190154,1614874190145,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190166,1614874190145,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190178,1614874190145,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190189,1614874190145,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190201,1614874190145,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190212,1614874190145,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190222,1614874190145,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190233,1614874190145,'8','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190243,1614874190145,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190253,1614874190145,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190263,1614874190145,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190274,1614874190145,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190284,1614874190145,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190294,1614874190145,'14','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190304,1614874190145,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190314,1614874190145,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190325,1614874190145,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190336,1614874190145,'18','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190405,1614874190397,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190416,1614874190397,'2','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874190426,1614874190397,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190437,1614874190397,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190448,1614874190397,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190459,1614874190397,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190470,1614874190397,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190482,1614874190397,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190494,1614874190397,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190507,1614874190397,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190518,1614874190397,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190530,1614874190397,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190542,1614874190397,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190554,1614874190397,'14','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190565,1614874190397,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190577,1614874190397,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190589,1614874190397,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190601,1614874190397,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190672,1614874190664,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190685,1614874190664,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190697,1614874190664,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190708,1614874190664,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190719,1614874190664,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190731,1614874190664,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190743,1614874190664,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190755,1614874190664,'8','6',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874190769,1614874190664,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190781,1614874190664,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190793,1614874190664,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190805,1614874190664,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190817,1614874190664,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190828,1614874190664,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190839,1614874190664,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190851,1614874190664,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190863,1614874190664,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190874,1614874190664,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190944,1614874190936,'1','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190957,1614874190936,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190968,1614874190936,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874190980,1614874190936,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874190992,1614874190936,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191004,1614874190936,'6','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191014,1614874190936,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191023,1614874190936,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191032,1614874190936,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191041,1614874190936,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191050,1614874190936,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191058,1614874190936,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191069,1614874190936,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191077,1614874190936,'14','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874191087,1614874190936,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191096,1614874190936,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191105,1614874190936,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191113,1614874190936,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191174,1614874191171,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191184,1614874191171,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191193,1614874191171,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191202,1614874191171,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191210,1614874191171,'5','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191218,1614874191171,'6','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191227,1614874191171,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191236,1614874191171,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191245,1614874191171,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191254,1614874191171,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191263,1614874191171,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191272,1614874191171,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191282,1614874191171,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191292,1614874191171,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191302,1614874191171,'15','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874191312,1614874191171,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191322,1614874191171,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191331,1614874191171,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191399,1614874191391,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191413,1614874191391,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191427,1614874191391,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191438,1614874191391,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191450,1614874191391,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191461,1614874191391,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191473,1614874191391,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191484,1614874191391,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191496,1614874191391,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191506,1614874191391,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191517,1614874191391,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191529,1614874191391,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191540,1614874191391,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191553,1614874191391,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191564,1614874191391,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191575,1614874191391,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191585,1614874191391,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191595,1614874191391,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191663,1614874191657,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191674,1614874191657,'2','4',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874191684,1614874191657,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191694,1614874191657,'4','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191704,1614874191657,'5','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191715,1614874191657,'6','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874191725,1614874191657,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191735,1614874191657,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191746,1614874191657,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191757,1614874191657,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191767,1614874191657,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191777,1614874191657,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191787,1614874191657,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191797,1614874191657,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191808,1614874191657,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191818,1614874191657,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191829,1614874191657,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191839,1614874191657,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191908,1614874191901,'1','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191919,1614874191901,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191930,1614874191901,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191941,1614874191901,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191951,1614874191901,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191962,1614874191901,'6','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191972,1614874191901,'7','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874191983,1614874191901,'8','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874191994,1614874191901,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192004,1614874191901,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192014,1614874191901,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192025,1614874191901,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192036,1614874191901,'13','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192047,1614874191901,'14','7',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192058,1614874191901,'15','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874192068,1614874191901,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192078,1614874191901,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192088,1614874191901,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192152,1614874192147,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192164,1614874192147,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192176,1614874192147,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192187,1614874192147,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192198,1614874192147,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192208,1614874192147,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192218,1614874192147,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192228,1614874192147,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192238,1614874192147,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192248,1614874192147,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192259,1614874192147,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192269,1614874192147,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192280,1614874192147,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192291,1614874192147,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874192302,1614874192147,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192312,1614874192147,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192322,1614874192147,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192332,1614874192147,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874192400,1614874192394,'1','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192412,1614874192394,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192423,1614874192394,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192434,1614874192394,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192444,1614874192394,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192456,1614874192394,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192465,1614874192394,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192476,1614874192394,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192486,1614874192394,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192496,1614874192394,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192507,1614874192394,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192518,1614874192394,'12','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192528,1614874192394,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192537,1614874192394,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192547,1614874192394,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192557,1614874192394,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192567,1614874192394,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192577,1614874192394,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192644,1614874192637,'1','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192655,1614874192637,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192666,1614874192637,'3','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192676,1614874192637,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192686,1614874192637,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192696,1614874192637,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192705,1614874192637,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192715,1614874192637,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192726,1614874192637,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192736,1614874192637,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192745,1614874192637,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192756,1614874192637,'12','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192766,1614874192637,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192776,1614874192637,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192787,1614874192637,'15','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192799,1614874192637,'16','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192809,1614874192637,'17','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192818,1614874192637,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192884,1614874192877,'1','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192894,1614874192877,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192904,1614874192877,'3','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192914,1614874192877,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192924,1614874192877,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192934,1614874192877,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192945,1614874192877,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192955,1614874192877,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192965,1614874192877,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192977,1614874192877,'10','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192987,1614874192877,'11','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874192997,1614874192877,'12','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874193008,1614874192877,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874193018,1614874192877,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874193029,1614874192877,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874193040,1614874192877,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874193051,1614874192877,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874193061,1614874192877,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874193128,1614874193122,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193140,1614874193122,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193149,1614874193122,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193158,1614874193122,'4','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193167,1614874193122,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193177,1614874193122,'6','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193187,1614874193122,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193197,1614874193122,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193207,1614874193122,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193218,1614874193122,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193229,1614874193122,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193239,1614874193122,'12','2',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874193249,1614874193122,'13','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874193259,1614874193122,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193269,1614874193122,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193280,1614874193122,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193294,1614874193122,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193305,1614874193122,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193374,1614874193367,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193385,1614874193367,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193395,1614874193367,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193405,1614874193367,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193416,1614874193367,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193426,1614874193367,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193435,1614874193367,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193445,1614874193367,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193455,1614874193367,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193465,1614874193367,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193475,1614874193367,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193485,1614874193367,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193495,1614874193367,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193505,1614874193367,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193515,1614874193367,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193526,1614874193367,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193536,1614874193367,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193547,1614874193367,'18','5',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874193618,1614874193610,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193631,1614874193610,'2','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193643,1614874193610,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193655,1614874193610,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193667,1614874193610,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193679,1614874193610,'6','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193691,1614874193610,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193703,1614874193610,'8','6',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874193715,1614874193610,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193727,1614874193610,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193738,1614874193610,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193750,1614874193610,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193762,1614874193610,'13','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874193773,1614874193610,'14','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193785,1614874193610,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193796,1614874193610,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193808,1614874193610,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193820,1614874193610,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193890,1614874193882,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193903,1614874193882,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193914,1614874193882,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193926,1614874193882,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193938,1614874193882,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193950,1614874193882,'6','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874193962,1614874193882,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193974,1614874193882,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193986,1614874193882,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874193998,1614874193882,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194010,1614874193882,'11','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194022,1614874193882,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194033,1614874193882,'13','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194045,1614874193882,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194056,1614874193882,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194068,1614874193882,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194079,1614874193882,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194090,1614874193882,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194159,1614874194152,'1','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194172,1614874194152,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194182,1614874194152,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194192,1614874194152,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194204,1614874194152,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194216,1614874194152,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194228,1614874194152,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194239,1614874194152,'8','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194251,1614874194152,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194263,1614874194152,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194275,1614874194152,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194287,1614874194152,'12','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194298,1614874194152,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194309,1614874194152,'14','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194320,1614874194152,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194332,1614874194152,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194344,1614874194152,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194355,1614874194152,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194425,1614874194418,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194437,1614874194418,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194449,1614874194418,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194461,1614874194418,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194472,1614874194418,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194484,1614874194418,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194496,1614874194418,'7','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194508,1614874194418,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194520,1614874194418,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194532,1614874194418,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194544,1614874194418,'11','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194556,1614874194418,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194567,1614874194418,'13','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874194577,1614874194418,'14','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874194587,1614874194418,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194597,1614874194418,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194607,1614874194418,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194617,1614874194418,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194685,1614874194678,'1','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194697,1614874194678,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194709,1614874194678,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194721,1614874194678,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194732,1614874194678,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194743,1614874194678,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194755,1614874194678,'7','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194766,1614874194678,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194778,1614874194678,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194790,1614874194678,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194801,1614874194678,'11','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194814,1614874194678,'12','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194826,1614874194678,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194837,1614874194678,'14','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194850,1614874194678,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194862,1614874194678,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194873,1614874194678,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194884,1614874194678,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874194954,1614874194946,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874194967,1614874194946,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194978,1614874194946,'3','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874194990,1614874194946,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195002,1614874194946,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195014,1614874194946,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195026,1614874194946,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195038,1614874194946,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195048,1614874194946,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195059,1614874194946,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195069,1614874194946,'11','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195079,1614874194946,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195089,1614874194946,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195099,1614874194946,'14','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195109,1614874194946,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195119,1614874194946,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195129,1614874194946,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195139,1614874194946,'18','5',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874195202,1614874195199,'1','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195211,1614874195199,'2','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195219,1614874195199,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195227,1614874195199,'4','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195236,1614874195199,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195245,1614874195199,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195255,1614874195199,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195265,1614874195199,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195276,1614874195199,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195286,1614874195199,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195297,1614874195199,'11','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195307,1614874195199,'12','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195317,1614874195199,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195327,1614874195199,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195338,1614874195199,'15','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195348,1614874195199,'16','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195359,1614874195199,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195369,1614874195199,'18','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195435,1614874195429,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195447,1614874195429,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195458,1614874195429,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195468,1614874195429,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195479,1614874195429,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195489,1614874195429,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195500,1614874195429,'7','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195511,1614874195429,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195521,1614874195429,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195533,1614874195429,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195543,1614874195429,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195554,1614874195429,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195564,1614874195429,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195574,1614874195429,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195584,1614874195429,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195594,1614874195429,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195605,1614874195429,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195616,1614874195429,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195685,1614874195678,'1','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195697,1614874195678,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195708,1614874195678,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195719,1614874195678,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195730,1614874195678,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195741,1614874195678,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195753,1614874195678,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195765,1614874195678,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195777,1614874195678,'9','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195788,1614874195678,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195800,1614874195678,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195812,1614874195678,'12','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195823,1614874195678,'13','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195835,1614874195678,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195847,1614874195678,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195858,1614874195678,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195868,1614874195678,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195878,1614874195678,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874195948,1614874195940,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874195960,1614874195940,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195972,1614874195940,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195983,1614874195940,'4','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874195994,1614874195940,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196006,1614874195940,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196017,1614874195940,'7','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196029,1614874195940,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196040,1614874195940,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196051,1614874195940,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196062,1614874195940,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196074,1614874195940,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196085,1614874195940,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196096,1614874195940,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196107,1614874195940,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196119,1614874195940,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196131,1614874195940,'17','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196142,1614874195940,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196213,1614874196204,'1','6',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196226,1614874196204,'2','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196238,1614874196204,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196249,1614874196204,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196259,1614874196204,'5','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196269,1614874196204,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196279,1614874196204,'7','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196290,1614874196204,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196300,1614874196204,'9','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196308,1614874196204,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196316,1614874196204,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196323,1614874196204,'12','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196331,1614874196204,'13','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196339,1614874196204,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196346,1614874196204,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196354,1614874196204,'16','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196361,1614874196204,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196369,1614874196204,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874196429,1614874196426,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196437,1614874196426,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196445,1614874196426,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196452,1614874196426,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196459,1614874196426,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196466,1614874196426,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196473,1614874196426,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196480,1614874196426,'8','6',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874196488,1614874196426,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196495,1614874196426,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196503,1614874196426,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196511,1614874196426,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196518,1614874196426,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196526,1614874196426,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196534,1614874196426,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196542,1614874196426,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196550,1614874196426,'17','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196558,1614874196426,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196623,1614874196617,'1','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196634,1614874196617,'2','4',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874196644,1614874196617,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196655,1614874196617,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196665,1614874196617,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196676,1614874196617,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196687,1614874196617,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196697,1614874196617,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196707,1614874196617,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196717,1614874196617,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196728,1614874196617,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196739,1614874196617,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196749,1614874196617,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196759,1614874196617,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196770,1614874196617,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196782,1614874196617,'16','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196793,1614874196617,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196804,1614874196617,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196875,1614874196867,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196886,1614874196867,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196896,1614874196867,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196905,1614874196867,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196914,1614874196867,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196925,1614874196867,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196935,1614874196867,'7','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874196945,1614874196867,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196956,1614874196867,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196966,1614874196867,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196977,1614874196867,'11','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874196988,1614874196867,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874196999,1614874196867,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197009,1614874196867,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197019,1614874196867,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197030,1614874196867,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197041,1614874196867,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197052,1614874196867,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197121,1614874197114,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197132,1614874197114,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197142,1614874197114,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197152,1614874197114,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197162,1614874197114,'5','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197172,1614874197114,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197183,1614874197114,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197195,1614874197114,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197206,1614874197114,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197216,1614874197114,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197226,1614874197114,'11','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874197236,1614874197114,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197246,1614874197114,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197257,1614874197114,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197267,1614874197114,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197278,1614874197114,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197289,1614874197114,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197298,1614874197114,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197365,1614874197358,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197375,1614874197358,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197385,1614874197358,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197395,1614874197358,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197405,1614874197358,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197415,1614874197358,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197426,1614874197358,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197436,1614874197358,'8','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197447,1614874197358,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197457,1614874197358,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197467,1614874197358,'11','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197478,1614874197358,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197489,1614874197358,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197499,1614874197358,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197509,1614874197358,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197520,1614874197358,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197531,1614874197358,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197542,1614874197358,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197610,1614874197603,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197621,1614874197603,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197632,1614874197603,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197642,1614874197603,'4','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197653,1614874197603,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197663,1614874197603,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197673,1614874197603,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197682,1614874197603,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197692,1614874197603,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197703,1614874197603,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197714,1614874197603,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197725,1614874197603,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197735,1614874197603,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197745,1614874197603,'14','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197755,1614874197603,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197765,1614874197603,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197775,1614874197603,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197785,1614874197603,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197852,1614874197846,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197863,1614874197846,'2','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197874,1614874197846,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197886,1614874197846,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197898,1614874197846,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197909,1614874197846,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197921,1614874197846,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197932,1614874197846,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197944,1614874197846,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197955,1614874197846,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197966,1614874197846,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874197977,1614874197846,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197988,1614874197846,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874197999,1614874197846,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198010,1614874197846,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198021,1614874197846,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198033,1614874197846,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198045,1614874197846,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198115,1614874198107,'1','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198127,1614874198107,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198138,1614874198107,'3','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198148,1614874198107,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198159,1614874198107,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198169,1614874198107,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198179,1614874198107,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198190,1614874198107,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198201,1614874198107,'9','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874198212,1614874198107,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198224,1614874198107,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198234,1614874198107,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198245,1614874198107,'13','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874198257,1614874198107,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198268,1614874198107,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198279,1614874198107,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198290,1614874198107,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198302,1614874198107,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198369,1614874198363,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198381,1614874198363,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198390,1614874198363,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198399,1614874198363,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198407,1614874198363,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198417,1614874198363,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198427,1614874198363,'7','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198437,1614874198363,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198447,1614874198363,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198458,1614874198363,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198469,1614874198363,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198480,1614874198363,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198491,1614874198363,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198502,1614874198363,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198514,1614874198363,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198525,1614874198363,'16','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198536,1614874198363,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198547,1614874198363,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198616,1614874198609,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198629,1614874198609,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198639,1614874198609,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198650,1614874198609,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198661,1614874198609,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198672,1614874198609,'6','6',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198682,1614874198609,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198693,1614874198609,'8','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198704,1614874198609,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198715,1614874198609,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198726,1614874198609,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198737,1614874198609,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198747,1614874198609,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198757,1614874198609,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874198768,1614874198609,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198779,1614874198609,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198790,1614874198609,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198801,1614874198609,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874198870,1614874198863,'1','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198883,1614874198863,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198894,1614874198863,'3','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198905,1614874198863,'4','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198916,1614874198863,'5','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198927,1614874198863,'6','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198938,1614874198863,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198949,1614874198863,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198960,1614874198863,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198974,1614874198863,'10','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198985,1614874198863,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874198997,1614874198863,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874199008,1614874198863,'13','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874199024,1614874198863,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874199036,1614874198863,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874199047,1614874198863,'16','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874199059,1614874198863,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874199071,1614874198863,'18','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874199142,1614874199134,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199155,1614874199134,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199166,1614874199134,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199177,1614874199134,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199195,1614874199134,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199207,1614874199134,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199217,1614874199134,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199226,1614874199134,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199235,1614874199134,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199244,1614874199134,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199253,1614874199134,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199263,1614874199134,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199273,1614874199134,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199284,1614874199134,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199293,1614874199134,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199303,1614874199134,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199312,1614874199134,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199321,1614874199134,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199385,1614874199383,'1','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199393,1614874199383,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199400,1614874199383,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199407,1614874199383,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199414,1614874199383,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199422,1614874199383,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199430,1614874199383,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199438,1614874199383,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199445,1614874199383,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199452,1614874199383,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199459,1614874199383,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199466,1614874199383,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199473,1614874199383,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199480,1614874199383,'14','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199487,1614874199383,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199495,1614874199383,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199502,1614874199383,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199510,1614874199383,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199575,1614874199570,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199585,1614874199570,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199593,1614874199570,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199602,1614874199570,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199612,1614874199570,'5','4',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874199621,1614874199570,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199629,1614874199570,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199637,1614874199570,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199646,1614874199570,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199655,1614874199570,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199662,1614874199570,'11','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199669,1614874199570,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199676,1614874199570,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199684,1614874199570,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199692,1614874199570,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199701,1614874199570,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199710,1614874199570,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199719,1614874199570,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199783,1614874199779,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199793,1614874199779,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199803,1614874199779,'3','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199813,1614874199779,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199822,1614874199779,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199831,1614874199779,'6','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199840,1614874199779,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199849,1614874199779,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199858,1614874199779,'9','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199867,1614874199779,'10','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874199875,1614874199779,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199883,1614874199779,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874199892,1614874199779,'13','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874199901,1614874199779,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199910,1614874199779,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199919,1614874199779,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199928,1614874199779,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874199937,1614874199779,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200002,1614874199997,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200012,1614874199997,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200021,1614874199997,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200029,1614874199997,'4','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200037,1614874199997,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200045,1614874199997,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200053,1614874199997,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200060,1614874199997,'8','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200067,1614874199997,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200075,1614874199997,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200084,1614874199997,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200093,1614874199997,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200101,1614874199997,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200109,1614874199997,'14','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200118,1614874199997,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200127,1614874199997,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200136,1614874199997,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200145,1614874199997,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200210,1614874200205,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200222,1614874200205,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200231,1614874200205,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200240,1614874200205,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200249,1614874200205,'5','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200257,1614874200205,'6','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200266,1614874200205,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200274,1614874200205,'8','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200282,1614874200205,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200290,1614874200205,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200299,1614874200205,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200308,1614874200205,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200316,1614874200205,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200325,1614874200205,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200333,1614874200205,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200342,1614874200205,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200350,1614874200205,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200358,1614874200205,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200421,1614874200417,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200430,1614874200417,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200439,1614874200417,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200447,1614874200417,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200455,1614874200417,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200463,1614874200417,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200471,1614874200417,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200479,1614874200417,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200487,1614874200417,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200495,1614874200417,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200503,1614874200417,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200511,1614874200417,'12','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200519,1614874200417,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200528,1614874200417,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200537,1614874200417,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200546,1614874200417,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200556,1614874200417,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200566,1614874200417,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200631,1614874200627,'1','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200641,1614874200627,'2','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200650,1614874200627,'3','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200659,1614874200627,'4','3',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200667,1614874200627,'5','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200676,1614874200627,'6','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200685,1614874200627,'7','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200694,1614874200627,'8','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200702,1614874200627,'9','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200710,1614874200627,'10','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200718,1614874200627,'11','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200727,1614874200627,'12','2',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200735,1614874200627,'13','5',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200742,1614874200627,'14','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200749,1614874200627,'15','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200757,1614874200627,'16','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200764,1614874200627,'17','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200773,1614874200627,'18','4',NULL,'','','','',NULL,NULL,NULL,NULL,2),(1614874200837,1614874200833,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200847,1614874200833,'2','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200856,1614874200833,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200865,1614874200833,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200873,1614874200833,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200882,1614874200833,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200891,1614874200833,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200900,1614874200833,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200909,1614874200833,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200918,1614874200833,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200927,1614874200833,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200936,1614874200833,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874200944,1614874200833,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200953,1614874200833,'14','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200961,1614874200833,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200970,1614874200833,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200979,1614874200833,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874200988,1614874200833,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201049,1614874201047,'1','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201057,1614874201047,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201065,1614874201047,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201073,1614874201047,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201081,1614874201047,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201089,1614874201047,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201097,1614874201047,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201106,1614874201047,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201114,1614874201047,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201123,1614874201047,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201131,1614874201047,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201139,1614874201047,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201147,1614874201047,'13','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201154,1614874201047,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201161,1614874201047,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201169,1614874201047,'16','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201177,1614874201047,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201185,1614874201047,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201249,1614874201245,'1','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201259,1614874201245,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201267,1614874201245,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201275,1614874201245,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201283,1614874201245,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201290,1614874201245,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201297,1614874201245,'7','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201304,1614874201245,'8','6',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201312,1614874201245,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201320,1614874201245,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201327,1614874201245,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201335,1614874201245,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201343,1614874201245,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201351,1614874201245,'14','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201359,1614874201245,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201368,1614874201245,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201376,1614874201245,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201385,1614874201245,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201447,1614874201444,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201457,1614874201444,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201465,1614874201444,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201472,1614874201444,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201479,1614874201444,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201487,1614874201444,'6','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201495,1614874201444,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201503,1614874201444,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201511,1614874201444,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201519,1614874201444,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201527,1614874201444,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201535,1614874201444,'12','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201543,1614874201444,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201551,1614874201444,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201559,1614874201444,'15','6',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201568,1614874201444,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201576,1614874201444,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201584,1614874201444,'18','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201644,1614874201642,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201652,1614874201642,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201659,1614874201642,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201666,1614874201642,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201674,1614874201642,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201682,1614874201642,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201689,1614874201642,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201696,1614874201642,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201704,1614874201642,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201712,1614874201642,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201719,1614874201642,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201726,1614874201642,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201733,1614874201642,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201740,1614874201642,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201747,1614874201642,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201754,1614874201642,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201761,1614874201642,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201768,1614874201642,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201828,1614874201826,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201836,1614874201826,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201844,1614874201826,'3','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201852,1614874201826,'4','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201859,1614874201826,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201866,1614874201826,'6','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201873,1614874201826,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201880,1614874201826,'8','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201888,1614874201826,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201896,1614874201826,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201904,1614874201826,'11','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874201912,1614874201826,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201919,1614874201826,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201927,1614874201826,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201935,1614874201826,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201944,1614874201826,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874201953,1614874201826,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874201963,1614874201826,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202024,1614874202022,'1','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202034,1614874202022,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202042,1614874202022,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202050,1614874202022,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202058,1614874202022,'5','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202066,1614874202022,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202074,1614874202022,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202082,1614874202022,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202090,1614874202022,'9','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202098,1614874202022,'10','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202106,1614874202022,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202114,1614874202022,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202122,1614874202022,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202129,1614874202022,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202136,1614874202022,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202143,1614874202022,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202150,1614874202022,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202158,1614874202022,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202218,1614874202216,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202226,1614874202216,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202234,1614874202216,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202242,1614874202216,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202249,1614874202216,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202257,1614874202216,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202265,1614874202216,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202273,1614874202216,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202280,1614874202216,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202288,1614874202216,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202295,1614874202216,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202302,1614874202216,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202309,1614874202216,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202316,1614874202216,'14','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202324,1614874202216,'15','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202331,1614874202216,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202338,1614874202216,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202346,1614874202216,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202407,1614874202405,'1','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202415,1614874202405,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202422,1614874202405,'3','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202429,1614874202405,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202436,1614874202405,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202443,1614874202405,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202450,1614874202405,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202457,1614874202405,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202464,1614874202405,'9','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202471,1614874202405,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202478,1614874202405,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202485,1614874202405,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202492,1614874202405,'13','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202499,1614874202405,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202506,1614874202405,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202513,1614874202405,'16','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202520,1614874202405,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202527,1614874202405,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202588,1614874202585,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202596,1614874202585,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202604,1614874202585,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202612,1614874202585,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202619,1614874202585,'5','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202626,1614874202585,'6','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202633,1614874202585,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202641,1614874202585,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202649,1614874202585,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202657,1614874202585,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202664,1614874202585,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202672,1614874202585,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202679,1614874202585,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202686,1614874202585,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202694,1614874202585,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202702,1614874202585,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202710,1614874202585,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202718,1614874202585,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202778,1614874202776,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202786,1614874202776,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202794,1614874202776,'3','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202802,1614874202776,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202809,1614874202776,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202816,1614874202776,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202823,1614874202776,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202831,1614874202776,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202839,1614874202776,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202847,1614874202776,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202855,1614874202776,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202863,1614874202776,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202871,1614874202776,'13','6',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874202879,1614874202776,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202887,1614874202776,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202895,1614874202776,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202903,1614874202776,'17','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202911,1614874202776,'18','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202973,1614874202969,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874202983,1614874202969,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874202994,1614874202969,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203005,1614874202969,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203016,1614874202969,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203028,1614874202969,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203041,1614874202969,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203051,1614874202969,'8','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874203061,1614874202969,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203073,1614874202969,'10','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203083,1614874202969,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203094,1614874202969,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203105,1614874202969,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203116,1614874202969,'14','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203127,1614874202969,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203137,1614874202969,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203147,1614874202969,'17','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203158,1614874202969,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203225,1614874203218,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203239,1614874203218,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203250,1614874203218,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203262,1614874203218,'4','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874203273,1614874203218,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203284,1614874203218,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203294,1614874203218,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203305,1614874203218,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203315,1614874203218,'9','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203327,1614874203218,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203337,1614874203218,'11','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203348,1614874203218,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203359,1614874203218,'13','6',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874203370,1614874203218,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203381,1614874203218,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203391,1614874203218,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203400,1614874203218,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203411,1614874203218,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203481,1614874203474,'1','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203493,1614874203474,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203504,1614874203474,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203515,1614874203474,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203526,1614874203474,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203537,1614874203474,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203546,1614874203474,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203555,1614874203474,'8','6',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203563,1614874203474,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203573,1614874203474,'10','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203584,1614874203474,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203595,1614874203474,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203606,1614874203474,'13','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203617,1614874203474,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203628,1614874203474,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203639,1614874203474,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203649,1614874203474,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203660,1614874203474,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203728,1614874203722,'1','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203740,1614874203722,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203750,1614874203722,'3','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203760,1614874203722,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203770,1614874203722,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203781,1614874203722,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203792,1614874203722,'7','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203802,1614874203722,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203812,1614874203722,'9','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203823,1614874203722,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203833,1614874203722,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203844,1614874203722,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203855,1614874203722,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203866,1614874203722,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203877,1614874203722,'15','4',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874203889,1614874203722,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203901,1614874203722,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203912,1614874203722,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874203982,1614874203974,'1','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874203995,1614874203974,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204007,1614874203974,'3','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204019,1614874203974,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204030,1614874203974,'5','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204043,1614874203974,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204055,1614874203974,'7','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204066,1614874203974,'8','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204079,1614874203974,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204091,1614874203974,'10','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204111,1614874203974,'11','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204124,1614874203974,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204135,1614874203974,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204146,1614874203974,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204159,1614874203974,'15','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204171,1614874203974,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204184,1614874203974,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204197,1614874203974,'18','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204266,1614874204259,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204278,1614874204259,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204291,1614874204259,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204304,1614874204259,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204316,1614874204259,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204329,1614874204259,'6','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204341,1614874204259,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204353,1614874204259,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204365,1614874204259,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204377,1614874204259,'10','6',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204389,1614874204259,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204400,1614874204259,'12','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204411,1614874204259,'13','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204423,1614874204259,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204434,1614874204259,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204445,1614874204259,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204457,1614874204259,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204468,1614874204259,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204539,1614874204530,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204552,1614874204530,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204564,1614874204530,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204575,1614874204530,'4','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204585,1614874204530,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204595,1614874204530,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204605,1614874204530,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204615,1614874204530,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204625,1614874204530,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204637,1614874204530,'10','6',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874204648,1614874204530,'11','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204659,1614874204530,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204671,1614874204530,'13','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204683,1614874204530,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204693,1614874204530,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204703,1614874204530,'16','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204713,1614874204530,'17','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204723,1614874204530,'18','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204791,1614874204784,'1','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204804,1614874204784,'2','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204815,1614874204784,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204827,1614874204784,'4','5',NULL,'3','','','',NULL,NULL,NULL,NULL,2),(1614874204838,1614874204784,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204849,1614874204784,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204860,1614874204784,'7','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204871,1614874204784,'8','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204882,1614874204784,'9','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204892,1614874204784,'10','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204904,1614874204784,'11','3',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874204914,1614874204784,'12','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204924,1614874204784,'13','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204935,1614874204784,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204946,1614874204784,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204957,1614874204784,'16','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874204968,1614874204784,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874204979,1614874204784,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205048,1614874205041,'1','6',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205061,1614874205041,'2','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205073,1614874205041,'3','5',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205085,1614874205041,'4','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205097,1614874205041,'5','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205109,1614874205041,'6','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205120,1614874205041,'7','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205131,1614874205041,'8','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205142,1614874205041,'9','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205153,1614874205041,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205164,1614874205041,'11','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205175,1614874205041,'12','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205186,1614874205041,'13','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205195,1614874205041,'14','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205204,1614874205041,'15','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205215,1614874205041,'16','2',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205224,1614874205041,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205233,1614874205041,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205300,1614874205293,'1','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205311,1614874205293,'2','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205322,1614874205293,'3','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205333,1614874205293,'4','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205343,1614874205293,'5','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205354,1614874205293,'6','5',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205365,1614874205293,'7','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205375,1614874205293,'8','4',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874205385,1614874205293,'9','4',NULL,'0','','','',NULL,NULL,NULL,NULL,2),(1614874205396,1614874205293,'10','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205406,1614874205293,'11','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205417,1614874205293,'12','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205427,1614874205293,'13','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205437,1614874205293,'14','3',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205448,1614874205293,'15','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614874205459,1614874205293,'16','3',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205469,1614874205293,'17','4',NULL,'2','','','',NULL,NULL,NULL,NULL,2),(1614874205480,1614874205293,'18','4',NULL,'1','','','',NULL,NULL,NULL,NULL,2),(1614984096577,1614984096571,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096588,1614984096571,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096598,1614984096571,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096607,1614984096571,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096617,1614984096571,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096630,1614984096571,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096642,1614984096571,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096654,1614984096571,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096665,1614984096571,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096676,1614984096571,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096687,1614984096571,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096699,1614984096571,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096711,1614984096571,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096723,1614984096571,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096735,1614984096571,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096747,1614984096571,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096758,1614984096571,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096769,1614984096571,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096840,1614984096832,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096853,1614984096832,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096864,1614984096832,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096875,1614984096832,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096886,1614984096832,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096898,1614984096832,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096910,1614984096832,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096922,1614984096832,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096933,1614984096832,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096944,1614984096832,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096955,1614984096832,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096966,1614984096832,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096978,1614984096832,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984096990,1614984096832,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097001,1614984096832,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097012,1614984096832,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097024,1614984096832,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097035,1614984096832,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097105,1614984097097,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097118,1614984097097,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097129,1614984097097,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097141,1614984097097,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097152,1614984097097,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097164,1614984097097,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097176,1614984097097,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097187,1614984097097,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097199,1614984097097,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097210,1614984097097,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097221,1614984097097,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097232,1614984097097,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097245,1614984097097,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097255,1614984097097,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097265,1614984097097,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097275,1614984097097,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097285,1614984097097,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097295,1614984097097,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097362,1614984097356,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097372,1614984097356,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097382,1614984097356,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097392,1614984097356,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097401,1614984097356,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097410,1614984097356,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097420,1614984097356,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097430,1614984097356,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097440,1614984097356,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097450,1614984097356,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097460,1614984097356,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097470,1614984097356,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097480,1614984097356,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097489,1614984097356,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097499,1614984097356,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097508,1614984097356,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097517,1614984097356,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097527,1614984097356,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097593,1614984097588,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097603,1614984097588,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097613,1614984097588,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097623,1614984097588,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097632,1614984097588,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097641,1614984097588,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097650,1614984097588,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097660,1614984097588,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097669,1614984097588,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097678,1614984097588,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097688,1614984097588,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097697,1614984097588,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097706,1614984097588,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097716,1614984097588,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097726,1614984097588,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097737,1614984097588,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097747,1614984097588,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097757,1614984097588,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097826,1614984097819,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097840,1614984097819,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097851,1614984097819,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097863,1614984097819,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097875,1614984097819,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097886,1614984097819,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097897,1614984097819,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097909,1614984097819,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097921,1614984097819,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097932,1614984097819,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097943,1614984097819,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097954,1614984097819,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097965,1614984097819,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097976,1614984097819,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097988,1614984097819,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984097999,1614984097819,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098011,1614984097819,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098023,1614984097819,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098094,1614984098086,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098107,1614984098086,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098119,1614984098086,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098130,1614984098086,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098141,1614984098086,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098152,1614984098086,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098164,1614984098086,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098176,1614984098086,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098188,1614984098086,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098199,1614984098086,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098210,1614984098086,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098222,1614984098086,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098232,1614984098086,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098244,1614984098086,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098255,1614984098086,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098267,1614984098086,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098278,1614984098086,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098289,1614984098086,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098357,1614984098350,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098370,1614984098350,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098382,1614984098350,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098393,1614984098350,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098404,1614984098350,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098415,1614984098350,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098427,1614984098350,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098439,1614984098350,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098451,1614984098350,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098462,1614984098350,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098473,1614984098350,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098484,1614984098350,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098496,1614984098350,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098507,1614984098350,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098518,1614984098350,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098529,1614984098350,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098540,1614984098350,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098551,1614984098350,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098622,1614984098614,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098634,1614984098614,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098646,1614984098614,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098657,1614984098614,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098668,1614984098614,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098680,1614984098614,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098693,1614984098614,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098706,1614984098614,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098719,1614984098614,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098729,1614984098614,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098739,1614984098614,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098749,1614984098614,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098759,1614984098614,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098769,1614984098614,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098779,1614984098614,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098789,1614984098614,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098800,1614984098614,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098811,1614984098614,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098881,1614984098873,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098894,1614984098873,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098906,1614984098873,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098917,1614984098873,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098928,1614984098873,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098939,1614984098873,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098950,1614984098873,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098961,1614984098873,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098974,1614984098873,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098985,1614984098873,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984098996,1614984098873,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099008,1614984098873,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099019,1614984098873,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099030,1614984098873,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099042,1614984098873,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099053,1614984098873,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099064,1614984098873,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099075,1614984098873,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099145,1614984099137,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099157,1614984099137,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099169,1614984099137,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099181,1614984099137,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099193,1614984099137,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099204,1614984099137,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099214,1614984099137,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099224,1614984099137,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099233,1614984099137,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099243,1614984099137,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099252,1614984099137,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099261,1614984099137,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099271,1614984099137,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099281,1614984099137,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099290,1614984099137,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099299,1614984099137,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099308,1614984099137,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099317,1614984099137,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099382,1614984099377,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099392,1614984099377,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099401,1614984099377,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099410,1614984099377,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099419,1614984099377,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099428,1614984099377,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099437,1614984099377,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099447,1614984099377,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099456,1614984099377,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099466,1614984099377,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099476,1614984099377,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099485,1614984099377,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099495,1614984099377,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099506,1614984099377,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099517,1614984099377,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099528,1614984099377,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099539,1614984099377,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099549,1614984099377,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099618,1614984099610,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099631,1614984099610,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099643,1614984099610,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099655,1614984099610,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099666,1614984099610,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099678,1614984099610,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099689,1614984099610,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099699,1614984099610,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099710,1614984099610,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099720,1614984099610,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099730,1614984099610,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099740,1614984099610,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099751,1614984099610,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099762,1614984099610,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099773,1614984099610,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099784,1614984099610,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099796,1614984099610,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099807,1614984099610,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099877,1614984099869,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099890,1614984099869,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099902,1614984099869,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099913,1614984099869,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099924,1614984099869,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099935,1614984099869,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099946,1614984099869,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099957,1614984099869,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099968,1614984099869,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099979,1614984099869,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984099991,1614984099869,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100003,1614984099869,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100015,1614984099869,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100026,1614984099869,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100038,1614984099869,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100050,1614984099869,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100061,1614984099869,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100072,1614984099869,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100142,1614984100134,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100155,1614984100134,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100167,1614984100134,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100179,1614984100134,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100190,1614984100134,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100201,1614984100134,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100213,1614984100134,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100225,1614984100134,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100236,1614984100134,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100248,1614984100134,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100259,1614984100134,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100271,1614984100134,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100282,1614984100134,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100294,1614984100134,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100306,1614984100134,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100317,1614984100134,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100328,1614984100134,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100339,1614984100134,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100407,1614984100402,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100418,1614984100402,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100428,1614984100402,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100438,1614984100402,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100449,1614984100402,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100459,1614984100402,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100469,1614984100402,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100479,1614984100402,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100490,1614984100402,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100502,1614984100402,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100513,1614984100402,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100524,1614984100402,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100535,1614984100402,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100546,1614984100402,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100558,1614984100402,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100569,1614984100402,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100580,1614984100402,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100592,1614984100402,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100662,1614984100654,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100675,1614984100654,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100686,1614984100654,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100697,1614984100654,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100709,1614984100654,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100720,1614984100654,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100731,1614984100654,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100742,1614984100654,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100754,1614984100654,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100766,1614984100654,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100777,1614984100654,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100788,1614984100654,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100799,1614984100654,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100811,1614984100654,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100822,1614984100654,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100833,1614984100654,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100845,1614984100654,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100857,1614984100654,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100928,1614984100920,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100940,1614984100920,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100951,1614984100920,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100962,1614984100920,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100973,1614984100920,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100985,1614984100920,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984100997,1614984100920,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101008,1614984100920,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101020,1614984100920,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101032,1614984100920,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101043,1614984100920,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101054,1614984100920,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101065,1614984100920,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101076,1614984100920,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101089,1614984100920,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101100,1614984100920,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101112,1614984100920,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101123,1614984100920,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101192,1614984101184,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101205,1614984101184,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101216,1614984101184,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101227,1614984101184,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101239,1614984101184,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101254,1614984101184,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101265,1614984101184,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101276,1614984101184,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101287,1614984101184,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101298,1614984101184,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101309,1614984101184,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101320,1614984101184,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101331,1614984101184,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101342,1614984101184,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101353,1614984101184,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101363,1614984101184,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101373,1614984101184,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101383,1614984101184,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101448,1614984101444,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101459,1614984101444,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101469,1614984101444,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101478,1614984101444,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101487,1614984101444,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101496,1614984101444,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101506,1614984101444,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101515,1614984101444,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101525,1614984101444,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101535,1614984101444,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101544,1614984101444,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101553,1614984101444,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101562,1614984101444,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101571,1614984101444,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101580,1614984101444,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101589,1614984101444,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101598,1614984101444,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101608,1614984101444,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101674,1614984101670,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101685,1614984101670,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101694,1614984101670,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101704,1614984101670,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101713,1614984101670,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101723,1614984101670,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101732,1614984101670,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101742,1614984101670,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101753,1614984101670,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101765,1614984101670,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101776,1614984101670,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101788,1614984101670,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101803,1614984101670,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101815,1614984101670,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101826,1614984101670,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101837,1614984101670,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101849,1614984101670,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101860,1614984101670,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101930,1614984101922,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101942,1614984101922,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101953,1614984101922,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101965,1614984101922,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101977,1614984101922,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984101989,1614984101922,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102000,1614984101922,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102011,1614984101922,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102023,1614984101922,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102034,1614984101922,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102046,1614984101922,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102057,1614984101922,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102069,1614984101922,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102080,1614984101922,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102092,1614984101922,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102104,1614984101922,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102116,1614984101922,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102128,1614984101922,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102197,1614984102191,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102208,1614984102191,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102218,1614984102191,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102228,1614984102191,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102237,1614984102191,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102247,1614984102191,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102256,1614984102191,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102266,1614984102191,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102276,1614984102191,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102286,1614984102191,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102296,1614984102191,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102306,1614984102191,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102316,1614984102191,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102326,1614984102191,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102336,1614984102191,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102346,1614984102191,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102356,1614984102191,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102365,1614984102191,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102431,1614984102426,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102441,1614984102426,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102450,1614984102426,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102460,1614984102426,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102472,1614984102426,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102481,1614984102426,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102492,1614984102426,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102503,1614984102426,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102514,1614984102426,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102525,1614984102426,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102536,1614984102426,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102547,1614984102426,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102558,1614984102426,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102569,1614984102426,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102581,1614984102426,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102592,1614984102426,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102603,1614984102426,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102614,1614984102426,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102683,1614984102676,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102695,1614984102676,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102706,1614984102676,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102717,1614984102676,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102728,1614984102676,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102739,1614984102676,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102750,1614984102676,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102761,1614984102676,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102772,1614984102676,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102783,1614984102676,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102795,1614984102676,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102806,1614984102676,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102817,1614984102676,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102828,1614984102676,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102839,1614984102676,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102850,1614984102676,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102862,1614984102676,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102873,1614984102676,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102942,1614984102935,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102953,1614984102935,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102964,1614984102935,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102975,1614984102935,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102986,1614984102935,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984102997,1614984102935,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103008,1614984102935,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103018,1614984102935,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103028,1614984102935,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103038,1614984102935,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103049,1614984102935,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103060,1614984102935,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103071,1614984102935,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103081,1614984102935,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103091,1614984102935,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103102,1614984102935,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103113,1614984102935,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103125,1614984102935,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103194,1614984103186,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103207,1614984103186,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103219,1614984103186,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103232,1614984103186,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103244,1614984103186,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103255,1614984103186,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103266,1614984103186,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103278,1614984103186,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103290,1614984103186,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103301,1614984103186,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103312,1614984103186,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103324,1614984103186,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103335,1614984103186,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103347,1614984103186,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103358,1614984103186,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103370,1614984103186,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103382,1614984103186,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103395,1614984103186,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103466,1614984103458,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103479,1614984103458,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103491,1614984103458,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103502,1614984103458,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103513,1614984103458,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103523,1614984103458,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103533,1614984103458,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103543,1614984103458,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103554,1614984103458,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103564,1614984103458,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103574,1614984103458,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103586,1614984103458,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103598,1614984103458,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103609,1614984103458,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103621,1614984103458,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103633,1614984103458,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103644,1614984103458,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103656,1614984103458,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103727,1614984103719,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103740,1614984103719,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103752,1614984103719,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103764,1614984103719,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103776,1614984103719,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103788,1614984103719,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103800,1614984103719,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103812,1614984103719,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103823,1614984103719,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103834,1614984103719,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103845,1614984103719,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103857,1614984103719,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103868,1614984103719,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103881,1614984103719,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103892,1614984103719,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103903,1614984103719,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103915,1614984103719,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103927,1614984103719,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984103997,1614984103988,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104009,1614984103988,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104021,1614984103988,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104032,1614984103988,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104044,1614984103988,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104056,1614984103988,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104068,1614984103988,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104079,1614984103988,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104091,1614984103988,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104102,1614984103988,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104113,1614984103988,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104124,1614984103988,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104135,1614984103988,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104147,1614984103988,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104159,1614984103988,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104171,1614984103988,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104182,1614984103988,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104193,1614984103988,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104264,1614984104255,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104276,1614984104255,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104288,1614984104255,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104300,1614984104255,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104311,1614984104255,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104322,1614984104255,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104333,1614984104255,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104344,1614984104255,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104355,1614984104255,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104366,1614984104255,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104378,1614984104255,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104390,1614984104255,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104402,1614984104255,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104413,1614984104255,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104424,1614984104255,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104436,1614984104255,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104447,1614984104255,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104458,1614984104255,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104529,1614984104521,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104542,1614984104521,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104553,1614984104521,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104564,1614984104521,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104574,1614984104521,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104584,1614984104521,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104594,1614984104521,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104603,1614984104521,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104612,1614984104521,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104621,1614984104521,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104630,1614984104521,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104639,1614984104521,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104648,1614984104521,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104658,1614984104521,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104668,1614984104521,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104681,1614984104521,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104691,1614984104521,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104702,1614984104521,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104772,1614984104764,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104785,1614984104764,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104796,1614984104764,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104807,1614984104764,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104818,1614984104764,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104829,1614984104764,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104841,1614984104764,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104853,1614984104764,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104864,1614984104764,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104876,1614984104764,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104887,1614984104764,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104898,1614984104764,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104909,1614984104764,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104920,1614984104764,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104931,1614984104764,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104942,1614984104764,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104953,1614984104764,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984104963,1614984104764,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105030,1614984105024,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105042,1614984105024,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105052,1614984105024,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105062,1614984105024,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105073,1614984105024,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105084,1614984105024,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105095,1614984105024,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105107,1614984105024,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105118,1614984105024,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105129,1614984105024,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105140,1614984105024,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105151,1614984105024,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105164,1614984105024,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105176,1614984105024,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105188,1614984105024,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105200,1614984105024,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105211,1614984105024,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105221,1614984105024,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105290,1614984105282,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105302,1614984105282,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105313,1614984105282,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105323,1614984105282,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105333,1614984105282,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105343,1614984105282,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105355,1614984105282,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105365,1614984105282,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105373,1614984105282,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105383,1614984105282,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105392,1614984105282,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105402,1614984105282,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105412,1614984105282,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105422,1614984105282,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105431,1614984105282,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105441,1614984105282,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105451,1614984105282,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105461,1614984105282,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105525,1614984105521,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105536,1614984105521,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105546,1614984105521,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105556,1614984105521,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105566,1614984105521,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105575,1614984105521,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105585,1614984105521,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105596,1614984105521,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105607,1614984105521,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105618,1614984105521,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105629,1614984105521,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105640,1614984105521,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105650,1614984105521,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105660,1614984105521,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105671,1614984105521,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105681,1614984105521,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105691,1614984105521,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105701,1614984105521,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105772,1614984105764,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105784,1614984105764,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105795,1614984105764,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105807,1614984105764,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105818,1614984105764,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105830,1614984105764,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105841,1614984105764,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105854,1614984105764,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105865,1614984105764,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105877,1614984105764,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105889,1614984105764,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105901,1614984105764,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105912,1614984105764,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105923,1614984105764,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105934,1614984105764,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105945,1614984105764,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105957,1614984105764,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984105969,1614984105764,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106039,1614984106031,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106051,1614984106031,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106062,1614984106031,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106073,1614984106031,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106084,1614984106031,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106095,1614984106031,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106108,1614984106031,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106119,1614984106031,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106131,1614984106031,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106142,1614984106031,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106153,1614984106031,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106164,1614984106031,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106176,1614984106031,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106187,1614984106031,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106199,1614984106031,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106211,1614984106031,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106222,1614984106031,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106233,1614984106031,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106302,1614984106294,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106315,1614984106294,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106326,1614984106294,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106337,1614984106294,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106348,1614984106294,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106359,1614984106294,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106370,1614984106294,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106382,1614984106294,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106393,1614984106294,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106404,1614984106294,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106416,1614984106294,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106427,1614984106294,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106439,1614984106294,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106450,1614984106294,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106462,1614984106294,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106473,1614984106294,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106484,1614984106294,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106496,1614984106294,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106566,1614984106558,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106578,1614984106558,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106589,1614984106558,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106602,1614984106558,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106614,1614984106558,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106625,1614984106558,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106636,1614984106558,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106647,1614984106558,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106658,1614984106558,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106669,1614984106558,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106680,1614984106558,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106691,1614984106558,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106701,1614984106558,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106711,1614984106558,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106721,1614984106558,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106731,1614984106558,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106741,1614984106558,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106751,1614984106558,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106817,1614984106812,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106828,1614984106812,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106838,1614984106812,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106848,1614984106812,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106858,1614984106812,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106868,1614984106812,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106878,1614984106812,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106888,1614984106812,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106898,1614984106812,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106908,1614984106812,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106918,1614984106812,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106928,1614984106812,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106938,1614984106812,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106948,1614984106812,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106958,1614984106812,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106968,1614984106812,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106978,1614984106812,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984106988,1614984106812,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107054,1614984107049,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107065,1614984107049,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107075,1614984107049,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107085,1614984107049,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107095,1614984107049,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107106,1614984107049,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107116,1614984107049,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107126,1614984107049,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107136,1614984107049,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107146,1614984107049,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107156,1614984107049,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107166,1614984107049,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107176,1614984107049,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107186,1614984107049,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107196,1614984107049,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107206,1614984107049,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107216,1614984107049,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107226,1614984107049,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107294,1614984107287,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107306,1614984107287,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107317,1614984107287,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107329,1614984107287,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107340,1614984107287,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107351,1614984107287,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107362,1614984107287,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107374,1614984107287,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107385,1614984107287,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107396,1614984107287,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107407,1614984107287,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107419,1614984107287,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107430,1614984107287,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107441,1614984107287,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107452,1614984107287,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107463,1614984107287,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107474,1614984107287,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107486,1614984107287,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107556,1614984107548,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107569,1614984107548,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107580,1614984107548,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107591,1614984107548,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107603,1614984107548,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107614,1614984107548,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107626,1614984107548,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107638,1614984107548,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107649,1614984107548,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107660,1614984107548,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107672,1614984107548,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107683,1614984107548,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107694,1614984107548,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107705,1614984107548,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107716,1614984107548,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107727,1614984107548,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107738,1614984107548,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107749,1614984107548,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107817,1614984107809,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107830,1614984107809,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107841,1614984107809,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107853,1614984107809,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107865,1614984107809,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107876,1614984107809,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107887,1614984107809,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107898,1614984107809,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107910,1614984107809,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107921,1614984107809,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107933,1614984107809,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107946,1614984107809,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107958,1614984107809,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107969,1614984107809,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107980,1614984107809,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984107992,1614984107809,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108004,1614984107809,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108015,1614984107809,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108084,1614984108076,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108098,1614984108076,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108110,1614984108076,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108121,1614984108076,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108132,1614984108076,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108143,1614984108076,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108155,1614984108076,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108167,1614984108076,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108179,1614984108076,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108191,1614984108076,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108202,1614984108076,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108213,1614984108076,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108223,1614984108076,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108233,1614984108076,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108243,1614984108076,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108253,1614984108076,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108262,1614984108076,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108271,1614984108076,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108337,1614984108332,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108347,1614984108332,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108355,1614984108332,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108365,1614984108332,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108374,1614984108332,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108383,1614984108332,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108392,1614984108332,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108402,1614984108332,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108411,1614984108332,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108420,1614984108332,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108432,1614984108332,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108441,1614984108332,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108450,1614984108332,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108460,1614984108332,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108469,1614984108332,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108478,1614984108332,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108487,1614984108332,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108498,1614984108332,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108566,1614984108558,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108578,1614984108558,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108590,1614984108558,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108601,1614984108558,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108612,1614984108558,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108623,1614984108558,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108635,1614984108558,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108646,1614984108558,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108657,1614984108558,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108668,1614984108558,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108680,1614984108558,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108691,1614984108558,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108702,1614984108558,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108714,1614984108558,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108725,1614984108558,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108736,1614984108558,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108747,1614984108558,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108758,1614984108558,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108826,1614984108820,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108836,1614984108820,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108847,1614984108820,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108857,1614984108820,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108867,1614984108820,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108877,1614984108820,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108887,1614984108820,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108898,1614984108820,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108909,1614984108820,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108921,1614984108820,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108932,1614984108820,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108943,1614984108820,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108954,1614984108820,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108965,1614984108820,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108976,1614984108820,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108988,1614984108820,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984108999,1614984108820,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109011,1614984108820,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109080,1614984109072,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109092,1614984109072,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109104,1614984109072,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109115,1614984109072,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109127,1614984109072,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109138,1614984109072,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109149,1614984109072,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109160,1614984109072,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109172,1614984109072,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109183,1614984109072,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109194,1614984109072,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109205,1614984109072,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109217,1614984109072,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109228,1614984109072,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109240,1614984109072,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109252,1614984109072,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109263,1614984109072,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109274,1614984109072,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109342,1614984109335,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109355,1614984109335,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109367,1614984109335,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109378,1614984109335,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109389,1614984109335,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109401,1614984109335,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109412,1614984109335,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109424,1614984109335,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109434,1614984109335,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109446,1614984109335,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109458,1614984109335,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109469,1614984109335,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109480,1614984109335,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109491,1614984109335,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109502,1614984109335,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109513,1614984109335,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109524,1614984109335,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109535,1614984109335,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109603,1614984109596,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109615,1614984109596,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109626,1614984109596,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109637,1614984109596,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109648,1614984109596,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109659,1614984109596,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109670,1614984109596,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109680,1614984109596,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109691,1614984109596,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109702,1614984109596,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109713,1614984109596,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109723,1614984109596,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109734,1614984109596,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109745,1614984109596,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109755,1614984109596,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109766,1614984109596,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109777,1614984109596,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109787,1614984109596,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109852,1614984109846,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109862,1614984109846,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109871,1614984109846,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109879,1614984109846,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109887,1614984109846,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109895,1614984109846,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109903,1614984109846,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109911,1614984109846,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109919,1614984109846,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109927,1614984109846,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109935,1614984109846,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109944,1614984109846,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109954,1614984109846,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109963,1614984109846,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109973,1614984109846,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109983,1614984109846,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984109992,1614984109846,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110002,1614984109846,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110069,1614984110063,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110080,1614984110063,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110090,1614984110063,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110099,1614984110063,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110108,1614984110063,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110117,1614984110063,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110126,1614984110063,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110136,1614984110063,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110146,1614984110063,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110156,1614984110063,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110166,1614984110063,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110175,1614984110063,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110185,1614984110063,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110195,1614984110063,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110204,1614984110063,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110214,1614984110063,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110224,1614984110063,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110233,1614984110063,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110298,1614984110292,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110308,1614984110292,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110317,1614984110292,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110327,1614984110292,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110336,1614984110292,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110346,1614984110292,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110356,1614984110292,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110371,1614984110292,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110387,1614984110292,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110401,1614984110292,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110416,1614984110292,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110431,1614984110292,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110446,1614984110292,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110461,1614984110292,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110476,1614984110292,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110487,1614984110292,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110498,1614984110292,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110508,1614984110292,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110576,1614984110569,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110588,1614984110569,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110599,1614984110569,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110610,1614984110569,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110621,1614984110569,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110632,1614984110569,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110643,1614984110569,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110654,1614984110569,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110665,1614984110569,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110676,1614984110569,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110688,1614984110569,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110699,1614984110569,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110710,1614984110569,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110720,1614984110569,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110731,1614984110569,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110743,1614984110569,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110754,1614984110569,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110768,1614984110569,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110838,1614984110829,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110851,1614984110829,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110863,1614984110829,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110874,1614984110829,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110885,1614984110829,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110896,1614984110829,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110907,1614984110829,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110918,1614984110829,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110929,1614984110829,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110939,1614984110829,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110949,1614984110829,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110959,1614984110829,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110970,1614984110829,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110980,1614984110829,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984110991,1614984110829,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111003,1614984110829,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111015,1614984110829,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111026,1614984110829,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111097,1614984111089,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111110,1614984111089,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111121,1614984111089,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111132,1614984111089,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111142,1614984111089,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111153,1614984111089,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111164,1614984111089,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111174,1614984111089,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111185,1614984111089,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111196,1614984111089,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111206,1614984111089,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111215,1614984111089,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111223,1614984111089,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111232,1614984111089,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111241,1614984111089,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111250,1614984111089,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111260,1614984111089,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111270,1614984111089,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111336,1614984111331,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111346,1614984111331,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111356,1614984111331,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111366,1614984111331,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111375,1614984111331,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111385,1614984111331,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111395,1614984111331,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111404,1614984111331,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111413,1614984111331,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111423,1614984111331,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111432,1614984111331,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111442,1614984111331,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111452,1614984111331,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111461,1614984111331,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111471,1614984111331,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111481,1614984111331,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111490,1614984111331,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111499,1614984111331,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111568,1614984111560,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111580,1614984111560,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111591,1614984111560,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111603,1614984111560,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111615,1614984111560,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111626,1614984111560,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111637,1614984111560,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111648,1614984111560,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111660,1614984111560,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111671,1614984111560,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111683,1614984111560,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111694,1614984111560,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111706,1614984111560,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111718,1614984111560,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111729,1614984111560,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111740,1614984111560,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111751,1614984111560,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111763,1614984111560,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111833,1614984111825,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111846,1614984111825,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111857,1614984111825,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111869,1614984111825,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111880,1614984111825,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111892,1614984111825,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111904,1614984111825,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111916,1614984111825,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111927,1614984111825,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111938,1614984111825,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111949,1614984111825,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111960,1614984111825,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111971,1614984111825,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111982,1614984111825,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984111993,1614984111825,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112004,1614984111825,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112014,1614984111825,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112024,1614984111825,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112092,1614984112084,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112105,1614984112084,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112118,1614984112084,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112129,1614984112084,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112139,1614984112084,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112151,1614984112084,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112162,1614984112084,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112174,1614984112084,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112185,1614984112084,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112197,1614984112084,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112209,1614984112084,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112220,1614984112084,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112231,1614984112084,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112242,1614984112084,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112254,1614984112084,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112265,1614984112084,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112276,1614984112084,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112287,1614984112084,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112360,1614984112350,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112372,1614984112350,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112384,1614984112350,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112395,1614984112350,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112406,1614984112350,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112417,1614984112350,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112428,1614984112350,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112439,1614984112350,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112450,1614984112350,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112461,1614984112350,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112472,1614984112350,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112483,1614984112350,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112494,1614984112350,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112505,1614984112350,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112516,1614984112350,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112527,1614984112350,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112538,1614984112350,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112550,1614984112350,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112622,1614984112613,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112634,1614984112613,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112645,1614984112613,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112656,1614984112613,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112667,1614984112613,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112678,1614984112613,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112689,1614984112613,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112700,1614984112613,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112711,1614984112613,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112722,1614984112613,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112733,1614984112613,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112744,1614984112613,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112756,1614984112613,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112767,1614984112613,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112779,1614984112613,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112790,1614984112613,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112801,1614984112613,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112812,1614984112613,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112882,1614984112874,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112895,1614984112874,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112906,1614984112874,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112917,1614984112874,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112928,1614984112874,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112939,1614984112874,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112950,1614984112874,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112962,1614984112874,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112973,1614984112874,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112983,1614984112874,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984112993,1614984112874,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113003,1614984112874,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113013,1614984112874,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113023,1614984112874,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113033,1614984112874,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113043,1614984112874,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113053,1614984112874,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113063,1614984112874,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113131,1614984113123,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113143,1614984113123,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113155,1614984113123,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113167,1614984113123,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113179,1614984113123,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113190,1614984113123,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113202,1614984113123,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113214,1614984113123,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113226,1614984113123,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113237,1614984113123,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113248,1614984113123,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113259,1614984113123,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113271,1614984113123,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113282,1614984113123,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113293,1614984113123,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113304,1614984113123,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113315,1614984113123,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113326,1614984113123,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113397,1614984113388,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113410,1614984113388,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113421,1614984113388,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113432,1614984113388,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113444,1614984113388,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113456,1614984113388,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113467,1614984113388,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113479,1614984113388,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113490,1614984113388,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113502,1614984113388,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113513,1614984113388,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113524,1614984113388,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113536,1614984113388,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113549,1614984113388,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113560,1614984113388,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113571,1614984113388,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113582,1614984113388,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113594,1614984113388,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113663,1614984113655,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113677,1614984113655,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113689,1614984113655,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113701,1614984113655,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113712,1614984113655,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113723,1614984113655,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113734,1614984113655,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113745,1614984113655,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113757,1614984113655,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113768,1614984113655,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113780,1614984113655,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113791,1614984113655,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113804,1614984113655,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113815,1614984113655,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113827,1614984113655,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113839,1614984113655,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113850,1614984113655,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113862,1614984113655,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113931,1614984113923,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113943,1614984113923,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113954,1614984113923,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113965,1614984113923,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113975,1614984113923,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113987,1614984113923,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984113997,1614984113923,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114007,1614984113923,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114018,1614984113923,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114030,1614984113923,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114042,1614984113923,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114054,1614984113923,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114066,1614984113923,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114077,1614984113923,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114088,1614984113923,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114099,1614984113923,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114110,1614984113923,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114120,1614984113923,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114188,1614984114181,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114201,1614984114181,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114212,1614984114181,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114223,1614984114181,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114234,1614984114181,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114245,1614984114181,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114256,1614984114181,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114266,1614984114181,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114276,1614984114181,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114286,1614984114181,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114295,1614984114181,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114305,1614984114181,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114314,1614984114181,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114324,1614984114181,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114334,1614984114181,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114346,1614984114181,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114357,1614984114181,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114367,1614984114181,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114434,1614984114429,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114445,1614984114429,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114455,1614984114429,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114465,1614984114429,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114475,1614984114429,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114487,1614984114429,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114497,1614984114429,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114507,1614984114429,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114517,1614984114429,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114527,1614984114429,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114536,1614984114429,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114546,1614984114429,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114556,1614984114429,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114565,1614984114429,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114574,1614984114429,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114583,1614984114429,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114592,1614984114429,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114601,1614984114429,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114669,1614984114661,'1',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114682,1614984114661,'2',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114694,1614984114661,'3',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114706,1614984114661,'4',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114718,1614984114661,'5',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114729,1614984114661,'6',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114740,1614984114661,'7',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114751,1614984114661,'8',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114763,1614984114661,'9',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114774,1614984114661,'10',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114785,1614984114661,'11',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114797,1614984114661,'12',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114808,1614984114661,'13',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114820,1614984114661,'14',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114831,1614984114661,'15',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114842,1614984114661,'16',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114854,1614984114661,'17',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614984114869,1614984114661,'18',NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0);
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
INSERT INTO `tournament` VALUES (1,1614697043090,'KIT KAT GROUP PRO-AM','South Africa','2020-12-04 00:00:00','2020-12-07 00:00:00','9','9',1,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Kit_Kat_Group_Pro-am','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Kit_Kat_Group_Pro-am ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Kit_Kat_Group_Pro-am ');
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
INSERT INTO `uiselected` VALUES (0,1,1614874205293,1614974972495,1,'0000-00-00 00:00:00');
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
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPlayerSelectedStrokeDescription`(iSelectedID BIGINT) RETURNS varchar(45) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN

declare retResult varchar(45) default '';


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
	declare retResult varchar(45) default '';

		SELECT s.Position into Pos FROM golf.score s where s.idscore = iSelectedID;

		select concat(convert(Pos,char(11)),
		case 
		when Pos%100 BETWEEN 11 AND 13 THEN 'th' 
		when Pos%10 = 1 THEN 'st' 
		WHEN Pos%10 = 2 THEN 'nd' 
		WHEN Pos%10 = 3 THEN 'rd'  
		ELSE 'th' end   )  into retResult;

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

select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

if playerShotsExist=0 then
return '';
end if;


SELECT sc.back9start into BackStart
 FROM golf.score sc,golf.uiselected u
where sc.playerid = (Select Playerid FROM golf.score s where s.idscore=u.SelectedScoreEntry);

if BackStart=1 then
return GetPlayerSelectedTournamentScoreFromSelectedHoleBack9Start((Select Playerid FROM golf.score s,golf.uiselected u where s.idscore=u.SelectedScoreEntry));
end if;


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

select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

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
select c.lastname into retname from players c where PlayerID = iSelectedId;

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

select if((select a.lastname not in(SELECT s.lastname FROM golf.players s where s.playerid<> iSelectedId)),a.lastname,concat(left(a.firstname,1),'. ',a.lastname)) into retSurname
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
SELECT s.GraphicPos,  `GetPlayerNameFromID`(s.Playerid) Playername,`GetPlayerSurnameFromID`(s.Playerid)  Playersurname,
ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore,
 if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'*'),GetPlayerSelectedRoundLastCompletedHole(s.idscore)),'--')) TotalParORCompletedHole
,`GetPlayerCountryFlagFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;

when 1 then
SELECT s.GraphicPos,  `GetPlayerNameFromID`(s.Playerid) Playername,`GetPlayerSurnameFromID`(s.Playerid)  Playersurname,
ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore,
 if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'*'),GetPlayerSelectedRoundLastCompletedHole(s.idscore)),'--')) TotalParORCompletedHole

				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 2 then
SELECT `GetPlayerNameFromID`(s.Playerid) Playername
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 3 then
SELECT  `GetPlayerSurnameFromID`(s.Playerid)  Playersurname
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 4 then
SELECT
		`GetPlayerCountryFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 5 then
SELECT
		ifnull(GetPlayerSelectedRoundScore(s.idscore),'--') TodayScore  
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 6 then
SELECT   ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore
               
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
when 7 then
SELECT  if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'*'),GetPlayerSelectedRoundLastCompletedHole(s.idscore)),'--')) TotalParORCompletedHole
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 8 then
SELECT `GetPlayerNameAndSurnameFromID`(s.Playerid) PlayernameandSurname
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
when 9 then
SELECT s.Ranking
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 10 then
SELECT
		`GetPlayerCountryFlagFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 11 then
SELECT s.GraphicPos,  `GetPlayerNameFromID`(s.Playerid) Playername,`GetPlayerSurnameFromID`(s.Playerid)  Playersurname,
ifnull(GetPlayerSelectedRoundScore(s.idscore),'--') TodayScore  ,
ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore,
 if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'*'),GetPlayerSelectedRoundLastCompletedHole(s.idscore)),'--')) TotalParORCompletedHole
,`GetPlayerCountryFlagFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
when 12 then
SELECT s.Ranking,  `GetPlayerNameFromID`(s.Playerid) Playername,`GetPlayerSurnameFromID`(s.Playerid)  Playersurname,
ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore,
 if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'*'),GetPlayerSelectedRoundLastCompletedHole(s.idscore)),'--')) TotalParORCompletedHole
,`GetPlayerCountryFlagFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
                
when 13 then
SELECT s.GraphicPos,  `GetPlayerNameFromID`(s.Playerid) Playername,`GetPlayerSurnameFromID`(s.Playerid)  Playersurname,
ifnull(GetPlayerSelectedRoundScore(s.idscore),'--') TodayScore  ,
ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore,
 if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'*'),GetPlayerSelectedRoundLastCompletedHole(s.idscore)),'--')) TotalParORCompletedHole
,`GetPlayerCountryFlagFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound  
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;
                
when 14 then
SELECT s.Ranking,  `GetPlayerNameFromID`(s.Playerid) Playername,`GetPlayerSurnameFromID`(s.Playerid)  Playersurname,
ifnull(GetPlayerSelectedRoundScore(s.idscore),'--') TodayScore  ,
ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore,
 if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(if(s.back9start=1,concat(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'*'),GetPlayerSelectedRoundLastCompletedHole(s.idscore)),'--')) TotalParORCompletedHole
,`GetPlayerCountryFlagFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound 
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='E',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='E',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc limit limitstart,limitCount;

                
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

-- Dump completed on 2021-03-05 23:36:46
