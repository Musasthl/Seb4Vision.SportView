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
INSERT INTO `course` VALUES (1,'Gary Player Country Club',18,36,36,72,3610,3553,7163,3947,3885,7832),(2,'Randpark Golf Club',18,35,36,71,3258,3604,6862,3564,3942,7506),(1614697043090,'Royal JHB and Kensington Golf Club',18,35,36,71,3700,3200,6400,3650,3760,8100);
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
INSERT INTO `courseholes` VALUES (1,1614697043090,'Hole 1',1,5,547,500),(2,1614697043090,'Hole 2',2,4,458,419),(3,1614697043090,'Hole 3',3,3,219,200),(4,1614697043090,'Hole 4',4,4,444,406),(5,1614697043090,'Hole 5',5,5,601,550),(6,1614697043090,'Hole 6',6,4,471,431),(7,1614697043090,'Hole 7',7,3,211,193),(8,1614697043090,'Hole 8',8,4,478,437),(9,1614697043090,'Hole 9',9,4,518,474),(10,1614697043090,'Hole 10',10,4,441,403),(11,1614697043090,'Hole 11',11,5,569,520),(12,1614697043090,'Hole 12',12,4,449,411),(13,1614697043090,'Hole 13',13,3,213,195),(14,1614697043090,'Hole 14',14,4,491,449),(15,1614697043090,'Hole 15',15,4,424,388),(16,1614697043090,'Hole 16',16,3,210,192),(17,1614697043090,'Hole 17',17,4,492,450),(18,1614697043090,'Hole 18',18,5,596,545),(19,2,'1',1,4,407,372),(20,2,'2',2,4,503,460),(21,2,'3',3,4,418,382),(22,2,'4',4,5,597,546),(23,2,'5',5,3,182,166),(24,2,'6',6,4,400,366),(25,2,'7',7,4,468,428),(26,2,'8',8,3,208,190),(27,2,'9',9,4,381,348),(28,2,'10',10,4,487,445),(29,2,'11',11,4,467,427),(30,2,'12',12,5,593,542),(31,2,'13',13,4,442,404),(32,2,'14',14,5,547,500),(33,2,'15',15,3,188,172),(34,2,'16',16,4,488,446),(35,2,'17',17,3,223,204),(36,2,'18',18,4,507,464);
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
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1614690406550,'ZANDER','LOMBARD','2021-03-02 13:06:46',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694821590,'JBE','KRUGER','2021-03-02 14:20:21',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694835816,'JC','RITCHIE','2021-03-02 14:20:35',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694836037,'JACO','AHLERS','2021-03-02 14:20:36',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694836230,'GARRICK','HIGGO','2021-03-02 14:20:36',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694836411,'DARREN','FICHARDT','2021-03-02 14:20:36',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694836572,'TOTO','THIMBA','2021-03-02 14:20:36',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694836733,'MARTIN','ROHWER','2021-03-02 14:20:36',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694836910,'LOUIS','de JAGER','2021-03-02 14:20:36',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614694837448,'NEIL','SCHIETEKAT','2021-03-02 14:20:37',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702479087,'MICHAEL','PALMER','2021-03-02 16:27:59',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702507274,'ROURKE','van der SPUY','2021-03-02 16:28:27',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702530143,'JJ','SENEKAL','2021-03-02 16:28:50',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702553162,'RUAN','KORB','2021-03-02 16:29:13',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702568649,'MERRICK','BREMNER','2021-03-02 16:29:28',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702591998,'JACO','PRINSLOO','2021-03-02 16:29:52',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702606947,'HENNIE','OTTO','2021-03-02 16:30:07',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702647808,'JEAN','HUGO','2021-03-02 16:30:48',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702658790,'THRISTON','LAWRENCE','2021-03-02 16:30:59',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702757712,'OCKIE','STRYDOM','2021-03-02 16:32:38',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702783776,'RUAN','CONRADIE','2021-03-02 16:33:04',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702796137,'JAKE','REDMAN','2021-03-02 16:33:16',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702821996,'ALEX','HAINDL','2021-03-02 16:33:42',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702840863,'MJ','VILJOEN','2021-03-02 16:34:01',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702863441,'JACQUES','BLAAUW','2021-03-02 16:34:23',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702884814,'KEITH','HORNE','2021-03-02 16:34:45',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702902283,'HENNIE','du PLESSIS','2021-03-02 16:35:02',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702922203,'JACO','van ZYL','2021-03-02 16:35:22',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702936385,'RHYS','ENOCH','2021-03-02 16:35:36',NULL,'','WAL','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702948976,'WILCO','NIENABER','2021-03-02 16:35:49',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614702965789,'CHRISTIAAN','BASSON','2021-03-02 16:36:06',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703136227,'LUKE','JERLING','2021-03-02 16:38:56',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703165343,'ADILSON','da SILVA','2021-03-02 16:39:25',NULL,'','BRA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703636197,'TREVOR','FISHER Jnr','2021-03-02 16:47:16',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703654341,'STEVE','SURRY','2021-03-02 16:47:34',NULL,'','ENG','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703671715,'JACQUES','KRUYSWIJK','2021-03-02 16:47:52',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703698541,'DANIEL','GREENE','2021-03-02 16:48:18',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703713434,'STEPHEN','FERREIRA','2021-03-02 16:48:33',NULL,'','POR','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703736642,'OLIVER','BEKKER','2021-03-02 16:48:56',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703752103,'KEENAN','DAVIDSE','2021-03-02 16:49:12',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703777055,'DYLAN','NAIDOO','2021-03-02 16:49:37',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703801608,'JAKE','ROOS','2021-03-02 16:50:01',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703817257,'DEON','GERMISHUYS','2021-03-02 16:50:17',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703844011,'ULRICH','van den BERG','2021-03-02 16:50:44',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703862868,'JAMES','HART du PREEZ','2021-03-02 16:51:03',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703893066,'RUAN','de SMIDT','2021-03-02 16:51:33',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703911341,'CALLUM','MOWAT','2021-03-02 16:51:51',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703927668,'CJ','du PLESSIS','2021-03-02 16:52:07',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703946693,'ESTIAAN','CONRADIE','2021-03-02 16:52:27',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703964301,'JAYDEN','SCHAPER','2021-03-02 16:52:44',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614703985446,'SHAUN','NORRIS','2021-03-02 16:53:05',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704000458,'DEAN','BURMESTER','2021-03-02 16:53:20',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704039349,'ANTHONY','MICHAEL','2021-03-02 16:53:59',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704054253,'MATIAS','CALDERON','2021-03-02 16:54:14',NULL,'','CHI','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704097042,'ANDRE','NEL','2021-03-02 16:54:57',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704107893,'FREDRIK','FROM','2021-03-02 16:55:08',NULL,'','SWE','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704129137,'KYLE','BARKER','2021-03-02 16:55:29',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704145453,'DOUG','McGUIGAN','2021-03-02 16:55:45',NULL,'','SCO','','',NULL,-1,NULL,NULL,NULL,'','',''),(1614704187042,'CLINTON','GROBLER','2021-03-02 16:56:27',NULL,'','RSA','','',NULL,-1,NULL,NULL,NULL,'','','');
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT metres FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT GetPlayerSelectedTournamentScore(s.playerid) TournamentScore FROM golf.score s,golf.uiselected u WHERE s.idscore=u.SelectedScoreEntry ;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 9,18;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 0,9;'),(18,'SPHoles10to18Strokes','SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 9,18;'),(19,'SPHoles1to9StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedFront9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(20,'SPHoles10to18StrokesTotal','SELECT if(GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)=0,\'\',GetPlayerSelectedRoundHolesPlayedBack9Total(SelectedScoreEntry)) ScoreTotal  FROM golf.uiselected;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'STCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(24,'STLeaderBoardPage1PlayerPos','call GetTournamentSelectedLeaderBoard(1,0,10);'),(25,'STLeaderBoardPage1PlayerName','call GetTournamentSelectedLeaderBoard(2,0,10);'),(26,'STLeaderBoardPage1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,0,10);'),(27,'STLeaderBoardPage1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,0,10);'),(28,'STLeaderBoardPage1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,0,10);'),(29,'STLeaderBoardPage1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,0,10);'),(30,'STLeaderBoardPage1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,0,10);'),(31,'STLeaderBoardPage1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,0,10);'),(32,'SPPosition','SELECT GetPlayerSelectedTournamentPosition(u.SelectedScoreEntry) FROM golf.uiselected u;'),(33,'SPCurrentHoleShot','SELECT s.strokes  CurrentShooting FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(34,'SRDescription','SELECT r.Description FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(35,'STDescription','SELECT t.description FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(36,'STLogo1','SELECT t.logo1 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(37,'STLogo2','SELECT t.logo2 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(38,'STLogo3','SELECT t.logo3 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(39,'SPStrokesSelectedHole','SELECT s.strokes FROM golf.shots s,golf.uiselected u where s.shotsid = u.SelectedHole;'),(40,'SPStrokeSelectedHoleDescription','SELECT GetPlayerSelectedStrokesFromHoleParDescription(u.SelectedHole) StrokeDescription FROM golf.uiselected u;'),(41,'SPStrokeSelectedHoleFlag','SELECT if(f.shotsflagid=s.strokes,GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid),0) flag   FROM golf.shots s,golf.shotsflag f,golf.uiselected u where  s.shotsid = u.SelectedHole;'),(42,'SPHoles1to9StrokesFlag','SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2  and sc.HoleNumber between 1 and 9;'),(43,'SPHoles10to18StrokesFlag','SELECT GetPlayerSelectedStrokesFromHoleParFlag(s.shotsid) flag FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2  and sc.HoleNumber between 10 and 18;'),(44,'STCourseDescription','SELECT sc.Description FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(45,'STLeaderBoardPage2Line1PlayerPos','call GetTournamentSelectedLeaderBoard(9,9,1);'),(46,'STLeaderBoardPage2Line1PlayerName','call GetTournamentSelectedLeaderBoard(2,9,1);'),(47,'STLeaderBoardPage2Line1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,9,1);'),(48,'STLeaderBoardPage2Line1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,9,1);'),(49,'STLeaderBoardPage2Line1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,9,1);'),(50,'STLeaderBoardPage2Line1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,9,1);'),(51,'STLeaderBoardPage2Line1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,9,1);'),(52,'STLeaderBoardPage2Line1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,9,1);'),(53,'STLeaderBoardPage2PlayerPos','call GetTournamentSelectedLeaderBoard(1,10,9);'),(54,'STLeaderBoardPage2PlayerName','call GetTournamentSelectedLeaderBoard(2,10,9);'),(55,'STLeaderBoardPage2PlayerSurName','call GetTournamentSelectedLeaderBoard(3,10,9);'),(56,'STLeaderBoardPage2PlayerCountry','call GetTournamentSelectedLeaderBoard(4,10,9);'),(57,'STLeaderBoardPage2PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,10,9);'),(58,'STLeaderBoardPage2PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,10,9);'),(59,'STLeaderBoardPage2PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,10,9);'),(60,'STLeaderBoardPage2PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,10,9);'),(61,'STLeaderBoardPage3Line1PlayerPos','call GetTournamentSelectedLeaderBoard(9,19,1);'),(62,'STLeaderBoardPage3Line1PlayerName','call GetTournamentSelectedLeaderBoard(2,19,1);'),(63,'STLeaderBoardPage3Line1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,19,1);'),(64,'STLeaderBoardPage3Line1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,19,1);'),(65,'STLeaderBoardPage3Line1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,19,1);'),(66,'STLeaderBoardPage3Line1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,19,1);'),(67,'STLeaderBoardPage3Line1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,19,1);'),(68,'STLeaderBoardPage3Line1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,19,1);'),(69,'STLeaderBoardPage3PlayerPos','call GetTournamentSelectedLeaderBoard(1,20,9);'),(70,'STLeaderBoardPage3PlayerName','call GetTournamentSelectedLeaderBoard(2,20,9);'),(71,'STLeaderBoardPage3PlayerSurName','call GetTournamentSelectedLeaderBoard(3,20,9);'),(72,'STLeaderBoardPage3PlayerCountry','call GetTournamentSelectedLeaderBoard(4,20,9);'),(73,'STLeaderBoardPage3PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,20,9);'),(74,'STLeaderBoardPage3PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,20,9);'),(75,'STLeaderBoardPage3PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,20,9);'),(76,'STLeaderBoardPage3PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,20,9);'),(77,'STLeaderBoardPage4Line1PlayerPos','call GetTournamentSelectedLeaderBoard(9,29,1);'),(78,'STLeaderBoardPage4Line1PlayerName','call GetTournamentSelectedLeaderBoard(2,29,1);'),(79,'STLeaderBoardPage4Line1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,29,1);'),(80,'STLeaderBoardPage4Line1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,29,1);'),(81,'STLeaderBoardPage4Line1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,29,1);'),(82,'STLeaderBoardPage4Line1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,29,1);'),(83,'STLeaderBoardPage4Line1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,29,1);'),(84,'STLeaderBoardPage4Line1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,29,1);'),(85,'STLeaderBoardPage4PlayerPos','call GetTournamentSelectedLeaderBoard(1,30,9);'),(86,'STLeaderBoardPage4PlayerName','call GetTournamentSelectedLeaderBoard(2,30,9);'),(87,'STLeaderBoardPage4PlayerSurName','call GetTournamentSelectedLeaderBoard(3,30,9);'),(88,'STLeaderBoardPage4PlayerCountry','call GetTournamentSelectedLeaderBoard(4,30,9);'),(89,'STLeaderBoardPage4PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,30,9);'),(90,'STLeaderBoardPage4PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,30,9);'),(91,'STLeaderBoardPage4PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,30,9);'),(92,'STLeaderBoardPage4PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,30,9);'),(93,'STLeaderBoardPage5Line1PlayerPos','call GetTournamentSelectedLeaderBoard(9,39,1);'),(94,'STLeaderBoardPage5Line1PlayerName','call GetTournamentSelectedLeaderBoard(2,39,1);'),(95,'STLeaderBoardPage5Line1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,39,1);'),(96,'STLeaderBoardPage5Line1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,39,1);'),(97,'STLeaderBoardPage5Line1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,39,1);'),(98,'STLeaderBoardPage5Line1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,39,1);'),(99,'STLeaderBoardPage5Line1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,39,1);'),(100,'STLeaderBoardPage5Line1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,39,1);'),(101,'STLeaderBoardPage5PlayerPos','call GetTournamentSelectedLeaderBoard(1,40,9);'),(102,'STLeaderBoardPage5PlayerName','call GetTournamentSelectedLeaderBoard(2,40,9);'),(103,'STLeaderBoardPage5PlayerSurName','call GetTournamentSelectedLeaderBoard(3,40,9);'),(104,'STLeaderBoardPage5PlayerCountry','call GetTournamentSelectedLeaderBoard(4,40,9);'),(105,'STLeaderBoardPage5PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,40,9);'),(106,'STLeaderBoardPage5PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,40,9);'),(107,'STLeaderBoardPage5PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,40,9);'),(108,'STLeaderBoardPage5PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,40,9);'),(109,'STLeaderBoardPage6Line1PlayerPos','call GetTournamentSelectedLeaderBoard(9,49,1);'),(110,'STLeaderBoardPage6Line1PlayerName','call GetTournamentSelectedLeaderBoard(2,49,1);'),(111,'STLeaderBoardPage6Line1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,49,1);'),(112,'STLeaderBoardPage6Line1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,49,1);'),(113,'STLeaderBoardPage6Line1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,49,1);'),(114,'STLeaderBoardPage6Line1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,49,1);'),(115,'STLeaderBoardPage6Line1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,49,1);'),(116,'STLeaderBoardPage6Line1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,49,1);'),(117,'STLeaderBoardPage6PlayerPos','call GetTournamentSelectedLeaderBoard(1,50,9);'),(118,'STLeaderBoardPage6PlayerName','call GetTournamentSelectedLeaderBoard(2,50,9);'),(119,'STLeaderBoardPage6PlayerSurName','call GetTournamentSelectedLeaderBoard(3,50,9);'),(120,'STLeaderBoardPage6PlayerCountry','call GetTournamentSelectedLeaderBoard(4,50,9);'),(121,'STLeaderBoardPage6PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,50,9);'),(123,'STLeaderBoardPage6PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,50,9);'),(124,'STLeaderBoardPage6PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,50,9);'),(125,'STLeaderBoardPage6PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,50,9);'),(126,'STLeaderBoardPage7Line1PlayerPos','call GetTournamentSelectedLeaderBoard(9,59,1);'),(127,'STLeaderBoardPage7Line1PlayerName','call GetTournamentSelectedLeaderBoard(2,59,1);'),(128,'STLeaderBoardPage7Line1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,59,1);'),(129,'STLeaderBoardPage7Line1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,59,1);'),(130,'STLeaderBoardPage7Line1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,59,1);'),(131,'STLeaderBoardPage7Line1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,59,1);'),(132,'STLeaderBoardPage7Line1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,59,1);'),(134,'STLeaderBoardPage7Line1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,59,1);'),(135,'STLeaderBoardPage7PlayerPos','call GetTournamentSelectedLeaderBoard(1,60,9);'),(136,'STLeaderBoardPage7PlayerName','call GetTournamentSelectedLeaderBoard(2,60,9);'),(137,'STLeaderBoardPage7PlayerSurName','call GetTournamentSelectedLeaderBoard(3,60,9);'),(138,'STLeaderBoardPage7PlayerCountry','call GetTournamentSelectedLeaderBoard(4,60,9);'),(139,'STLeaderBoardPage7PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,60,9);'),(140,'STLeaderBoardPage7PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,60,9);'),(141,'STLeaderBoardPage7PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,60,9);'),(142,'STLeaderBoardPage7PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,60,9);'),(143,'STLeaderBoardPage8Line1PlayerPos','call GetTournamentSelectedLeaderBoard(9,69,1);'),(144,'STLeaderBoardPage8Line1PlayerName','call GetTournamentSelectedLeaderBoard(2,69,1);'),(145,'STLeaderBoardPage8Line1PlayerSurName','call GetTournamentSelectedLeaderBoard(3,69,1);'),(146,'STLeaderBoardPage8ine1PlayerCountry','call GetTournamentSelectedLeaderBoard(4,69,1);'),(147,'STLeaderBoardPage8Line1PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,69,1);'),(148,'STLeaderBoardPage8Line1PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,69,1);'),(149,'STLeaderBoardPage8Line1PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,69,1);'),(150,'STLeaderBoardPage8Line1PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,69,1);'),(151,'STLeaderBoardPage8PlayerPos','call GetTournamentSelectedLeaderBoard(1,70,9);'),(152,'STLeaderBoardPage8PlayerName','call GetTournamentSelectedLeaderBoard(2,70,9);'),(153,'STLeaderBoardPage8PlayerSurName','call GetTournamentSelectedLeaderBoard(3,70,9);'),(154,'STLeaderBoardPage8PlayerCountry','call GetTournamentSelectedLeaderBoard(4,70,9);'),(155,'STLeaderBoardPage8PlayerTodayScore','call GetTournamentSelectedLeaderBoard(5,70,9);'),(156,'STLeaderBoardPage8PlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6,70,9);'),(157,'STLeaderBoardPage8PlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7,70,9);'),(158,'STLeaderBoardPage8PlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8,70,9);'),(159,'STLeadersScore','call GetTournamentSelectedLeaderBoard(6,0,1);'),(160,'SPTournamentScoreAtSelectedHole','SELECT 	GetPlayerSelectedTournamentScoreFromSelectedHole(s.playerid) ScoreAtHole FROM golf.uiselected u,golf.score s where s.idscore=u.SelectedScoreEntry;'),(161,'SPCountryFlag','SELECT GetPlayerCountryFlagFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(162,'STLeaderBoardPage1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,0,10);'),(163,'STLeaderBoardPage2Line1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,9,1);'),(164,'STLeaderBoardPage2PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,10,9);'),(165,'STLeaderBoardPage3Line1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,19,1);'),(166,'STLeaderBoardPage3PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,20,9);'),(167,'STLeaderBoardPage4Line1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,29,1);'),(168,'STLeaderBoardPage4PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,30,9);'),(169,'STLeaderBoardPage5Line1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,39,1);'),(170,'STLeaderBoardPage5PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,40,9);'),(171,'STLeaderBoardPage6Line1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,49,1);'),(172,'STLeaderBoardPage6PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,50,9);'),(173,'STLeaderBoardPage7Line1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,59,1);'),(174,'STLeaderBoardPage7PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,60,9);'),(175,'STLeaderBoardPage8ine1PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,69,1);'),(176,'STLeaderBoardPage8PlayerCountryFlag','call GetTournamentSelectedLeaderBoard(10,70,9);');
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
INSERT INTO `rounds` VALUES (1,'Round 1',2),(2,'Round 2',0),(3,'Round 3',0),(4,'Final Round',0),(1612735804051,'PlayOffs',0);
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
  `GraphicPos` varchar(45) DEFAULT ' ',
  `Ranking` varchar(45) DEFAULT '',
  `Tied` int(11) DEFAULT '-1',
  `Back9Start` int(11) DEFAULT '0',
  PRIMARY KEY (`idscore`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1614702985457,1614694836230,1614697043090,1,1,3,NULL,NULL,-1,'','3',1,0),(1614702986073,1614702922203,1614697043090,1,1,5,NULL,NULL,-1,'10','10',1,0),(1614702986321,1614702863441,1614697043090,1,1,3,NULL,NULL,-1,'','3',1,0),(1614702986522,1614694836411,1614697043090,1,1,3,NULL,NULL,-1,'3','3',1,0),(1614702986698,1614702606947,1614697043090,1,1,4,NULL,NULL,-1,'8','8',1,0),(1614702986873,1614694836037,1614697043090,1,1,3,NULL,NULL,-1,'','3',1,0),(1614702987041,1614702965789,1614697043090,1,1,1,NULL,NULL,-1,'1','1',0,0),(1614702987370,1614702902283,1614697043090,1,1,3,NULL,NULL,-1,'','3',1,0),(1614702987594,1614702591998,1614697043090,1,1,4,NULL,NULL,-1,'','8',1,0),(1614702988441,1614702821996,1614697043090,1,1,2,NULL,NULL,-1,'2','2',0,0),(1614703177696,1614694821590,1614697043090,1,1,5,NULL,NULL,-1,'','10',1,0);
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
  `holeid` int(11) DEFAULT '0',
  `strokes` varchar(45) DEFAULT NULL,
  `LiveStroke` varchar(45) DEFAULT NULL,
  `Putts` int(11) DEFAULT NULL,
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
INSERT INTO `shots` VALUES (1614702985462,1614702985457,1,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702985467,1614702985457,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985471,1614702985457,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985474,1614702985457,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985478,1614702985457,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985482,1614702985457,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985486,1614702985457,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985490,1614702985457,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985493,1614702985457,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985497,1614702985457,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985501,1614702985457,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985505,1614702985457,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985509,1614702985457,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985513,1614702985457,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985517,1614702985457,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985521,1614702985457,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985525,1614702985457,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702985529,1614702985457,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986078,1614702986073,1,'5',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986083,1614702986073,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986087,1614702986073,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986091,1614702986073,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986096,1614702986073,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986100,1614702986073,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986104,1614702986073,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986108,1614702986073,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986112,1614702986073,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986117,1614702986073,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986121,1614702986073,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986125,1614702986073,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986129,1614702986073,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986133,1614702986073,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986137,1614702986073,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986141,1614702986073,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986145,1614702986073,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986150,1614702986073,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986326,1614702986321,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986331,1614702986321,2,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986335,1614702986321,3,'2',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986339,1614702986321,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986343,1614702986321,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986347,1614702986321,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986351,1614702986321,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986356,1614702986321,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986359,1614702986321,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986364,1614702986321,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986368,1614702986321,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986372,1614702986321,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986376,1614702986321,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986380,1614702986321,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986384,1614702986321,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986388,1614702986321,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986393,1614702986321,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986397,1614702986321,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986526,1614702986522,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986530,1614702986522,2,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986534,1614702986522,3,'2',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986538,1614702986522,4,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986542,1614702986522,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986546,1614702986522,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986551,1614702986522,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986555,1614702986522,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986559,1614702986522,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986563,1614702986522,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986567,1614702986522,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986572,1614702986522,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986576,1614702986522,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986580,1614702986522,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986584,1614702986522,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986588,1614702986522,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986592,1614702986522,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986596,1614702986522,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986705,1614702986698,1,'6',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986710,1614702986698,2,'1',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986714,1614702986698,3,'2',NULL,NULL,'','','',NULL,NULL,NULL,NULL,1),(1614702986718,1614702986698,4,'5',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986722,1614702986698,5,'1',NULL,NULL,'','','',NULL,NULL,NULL,NULL,1),(1614702986726,1614702986698,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986731,1614702986698,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986735,1614702986698,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986739,1614702986698,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986743,1614702986698,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986748,1614702986698,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986752,1614702986698,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986756,1614702986698,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986760,1614702986698,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986764,1614702986698,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986768,1614702986698,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986772,1614702986698,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986777,1614702986698,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986878,1614702986873,1,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702986882,1614702986873,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986886,1614702986873,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986890,1614702986873,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986893,1614702986873,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986897,1614702986873,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986901,1614702986873,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986905,1614702986873,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986910,1614702986873,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986914,1614702986873,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986918,1614702986873,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986922,1614702986873,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986926,1614702986873,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986930,1614702986873,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986934,1614702986873,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986938,1614702986873,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986942,1614702986873,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702986946,1614702986873,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987046,1614702987041,1,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987050,1614702987041,2,'5',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987054,1614702987041,3,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987058,1614702987041,4,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987062,1614702987041,5,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987066,1614702987041,6,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987070,1614702987041,7,'5',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987075,1614702987041,8,'2',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987079,1614702987041,9,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,1),(1614702987083,1614702987041,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987087,1614702987041,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987091,1614702987041,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987096,1614702987041,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987100,1614702987041,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987104,1614702987041,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987108,1614702987041,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987112,1614702987041,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987119,1614702987041,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987375,1614702987370,1,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987379,1614702987370,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987384,1614702987370,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987388,1614702987370,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987392,1614702987370,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987396,1614702987370,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987400,1614702987370,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987404,1614702987370,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987408,1614702987370,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987412,1614702987370,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987416,1614702987370,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987420,1614702987370,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987424,1614702987370,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987428,1614702987370,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987432,1614702987370,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987437,1614702987370,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987440,1614702987370,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987444,1614702987370,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987599,1614702987594,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702987603,1614702987594,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987607,1614702987594,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987611,1614702987594,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987615,1614702987594,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987619,1614702987594,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987623,1614702987594,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987627,1614702987594,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987631,1614702987594,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987635,1614702987594,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987639,1614702987594,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987643,1614702987594,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987647,1614702987594,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987652,1614702987594,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987656,1614702987594,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987659,1614702987594,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987663,1614702987594,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702987667,1614702987594,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988446,1614702988441,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702988450,1614702988441,2,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702988454,1614702988441,3,'2',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614702988458,1614702988441,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988463,1614702988441,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988467,1614702988441,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988471,1614702988441,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988475,1614702988441,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988479,1614702988441,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988483,1614702988441,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988487,1614702988441,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988491,1614702988441,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988495,1614702988441,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988499,1614702988441,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988504,1614702988441,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988508,1614702988441,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988512,1614702988441,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614702988516,1614702988441,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614703177706,1614703177696,1,'5',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2);
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
INSERT INTO `tournament` VALUES (1,1614697043090,'KIT KAT GROUP PROAM','South Africa','2020-12-04 00:00:00','2020-12-07 00:00:00','9','9',1,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Sunshine_Tour_Sun ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Kit_Kat_Group_Pro-am ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Golf/Kit_Kat_Group_Pro-am ');
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
INSERT INTO `uiselected` VALUES (0,1,1614702987041,1614702987046,1,'0000-00-00 00:00:00');
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

select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

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

select count(*) into playerShotsExist FROM golf.shots s where s.idscore = (select max(idscore) from golf.score where playerid=iSelectedID) and s.holestatus=2;

if playerShotsExist=0 then
return '';
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

when 1 then
SELECT s.GraphicPos  
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

-- Dump completed on 2021-03-03 11:50:57
