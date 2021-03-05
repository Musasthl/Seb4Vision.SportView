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
INSERT INTO `courseholes` VALUES (1,1,'Hole 1',1,5,547,500),(2,1,'Hole 2',2,4,458,419),(3,1,'Hole 3',3,3,219,200),(4,1,'Hole 4',4,4,444,406),(5,1,'Hole 5',5,5,601,550),(6,1,'Hole 6',6,4,471,431),(7,1,'Hole 7',7,3,211,193),(8,1,'Hole 8',8,4,478,437),(9,1,'Hole 9',9,4,518,474),(10,1,'Hole 10',10,4,441,403),(11,1,'Hole 11',11,5,569,520),(12,1,'Hole 12',12,4,449,411),(13,1,'Hole 13',13,3,213,195),(14,1,'Hole 14',14,4,491,449),(15,1,'Hole 15',15,4,424,388),(16,1,'Hole 16',16,3,210,192),(17,1,'Hole 17',17,4,492,450),(18,1,'Hole 18',18,5,596,545),(19,2,'1',-1,4,407,372),(20,2,'2',-1,4,503,460),(21,2,'3',-1,4,418,382),(22,2,'4',-1,5,597,546),(23,2,'5',-1,3,182,166),(24,2,'6',-1,4,400,366),(25,2,'7',-1,4,468,428),(26,2,'8',-1,3,208,190),(27,2,'9',-1,4,381,348),(28,2,'10',-1,4,487,445),(29,2,'11',-1,4,467,427),(30,2,'12',-1,5,593,542),(31,2,'13',-1,4,442,404),(32,2,'14',-1,5,547,500),(33,2,'15',-1,3,188,172),(34,2,'16',-1,4,488,446),(35,2,'17',-1,3,223,204),(36,2,'18',-1,4,507,464);
/*!40000 ALTER TABLE `courseholes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaders`
--

DROP TABLE IF EXISTS `leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaders` (
  `idscore` bigint(20) NOT NULL,
  `playerid` bigint(20) DEFAULT '-1',
  `Playername` varchar(401) DEFAULT NULL,
  `PlayerScore` varchar(45) NOT NULL DEFAULT '',
  `TournamentScore` varchar(45) NOT NULL DEFAULT '',
  `TotalParORCompletedHole` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaders`
--

LOCK TABLES `leaders` WRITE;
/*!40000 ALTER TABLE `leaders` DISABLE KEYS */;
INSERT INTO `leaders` VALUES (1613502669674,8,'Oliver Farr','-9','-9','63'),(1613502671314,4,'Scott Jamieson','-5','-5','8'),(1613502670227,6,'Daniel Van Tonder','-4','-4','5'),(1613143558830,7,'Ruan Conradie','-3','-3','69'),(1613502671770,5,'Adrian Otaegui','-2','-2','5'),(1613394490136,1,'Wilco Nienaber','-1','-1','13'),(1613502668498,3,'David Law','-1','-1','2'),(1613136944083,10,'Deon Germishuys','PAR','PAR','72'),(1613502670666,2,'Jake Redman','+1','+1','12'),(1613142039823,9,'Shaun Norris','+2','+2','2');
/*!40000 ALTER TABLE `leaders` ENABLE KEYS */;
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT metres FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT GetPlayerSelectedTournamentScore(u.SelectedScoreEntry) TournamentScore FROM golf.uiselected u;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 9,18;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 0,9;'),(18,'SPHoles10to18Strokes','SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 9,18;'),(19,'SPHoles1to9StrokesTotal','SELECT sum(s.strokes) FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2  and sc.HoleNumber between 1 and 9;'),(20,'SPHoles10to18StrokesTotal','SELECT sum(s.strokes) FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2  and sc.HoleNumber between 10 and 18;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'SPCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(24,'STLeaderBoardPlayerPos','call GetTournamentSelectedLeaderBoard(1);'),(25,'STLeaderBoardPlayerName','call GetTournamentSelectedLeaderBoard(2;'),(26,'STLeaderBoardPlayerSurName','call GetTournamentSelectedLeaderBoard(3);'),(27,'STLeaderBoardPlayerCountry','call GetTournamentSelectedLeaderBoard(4);'),(28,'STLeaderBoardPlayerTodayScore','call GetTournamentSelectedLeaderBoard(5);'),(29,'STLeaderBoardPlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6);'),(30,'STLeaderBoardPlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7);'),(31,'STLeaderBoardPlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8);');
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
INSERT INTO `score` VALUES (1613136944083,10,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613137308765,-1,2,1,2,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613142039823,9,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613143558830,7,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613394490136,1,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613502668498,3,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613502669674,8,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613502670227,6,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613502670666,2,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613502671314,4,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1613502671770,5,1,1,1,-1,NULL,NULL,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
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
  `idscore` bigint(20) NOT NULL,
  `holeid` int(11) NOT NULL,
  `strokes` varchar(45) DEFAULT NULL,
  `LiveStroke` varchar(45) DEFAULT NULL,
  `Putts` int(11) DEFAULT NULL,
  `Drive` int(11) DEFAULT NULL,
  `Chips` int(11) DEFAULT NULL,
  `Sand` int(11) DEFAULT NULL,
  `Penalties` int(11) DEFAULT NULL,
  `HoleStatus` int(11) DEFAULT '0',
  PRIMARY KEY (`shotsid`),
  KEY `fkidScore_idx` (`idscore`),
  CONSTRAINT `fkidScore` FOREIGN KEY (`idscore`) REFERENCES `score` (`idscore`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
INSERT INTO `shots` VALUES (1613136944087,1613136944083,1,'6','',NULL,NULL,NULL,NULL,NULL,2),(1613136944089,1613136944083,2,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944091,1613136944083,3,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944093,1613136944083,4,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944095,1613136944083,5,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944097,1613136944083,6,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944098,1613136944083,7,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944101,1613136944083,8,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944103,1613136944083,9,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944105,1613136944083,10,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944107,1613136944083,11,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944108,1613136944083,12,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944110,1613136944083,13,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944111,1613136944083,14,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944113,1613136944083,15,'6',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944114,1613136944083,16,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944116,1613136944083,17,'7',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613136944118,1613136944083,18,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613137308768,1613137308765,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308770,1613137308765,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308772,1613137308765,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308774,1613137308765,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308775,1613137308765,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308777,1613137308765,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308779,1613137308765,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308780,1613137308765,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308782,1613137308765,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308785,1613137308765,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308787,1613137308765,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308789,1613137308765,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308790,1613137308765,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308792,1613137308765,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308793,1613137308765,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308795,1613137308765,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308796,1613137308765,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613137308798,1613137308765,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039826,1613142039823,1,'6','',NULL,NULL,NULL,NULL,NULL,2),(1613142039829,1613142039823,2,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613142039830,1613142039823,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039833,1613142039823,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039835,1613142039823,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039837,1613142039823,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039839,1613142039823,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039843,1613142039823,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039845,1613142039823,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039846,1613142039823,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039848,1613142039823,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039852,1613142039823,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039854,1613142039823,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039856,1613142039823,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039858,1613142039823,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039860,1613142039823,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039861,1613142039823,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613142039863,1613142039823,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613143558833,1613143558830,1,'4','',NULL,NULL,NULL,NULL,NULL,2),(1613143558835,1613143558830,2,'6',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558836,1613143558830,3,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558838,1613143558830,4,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558839,1613143558830,5,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558841,1613143558830,6,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558842,1613143558830,7,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558844,1613143558830,8,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558845,1613143558830,9,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558848,1613143558830,10,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558850,1613143558830,11,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558851,1613143558830,12,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558853,1613143558830,13,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558854,1613143558830,14,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558856,1613143558830,15,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558857,1613143558830,16,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558859,1613143558830,17,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613143558860,1613143558830,18,'6',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613394490142,1613394490136,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490146,1613394490136,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490150,1613394490136,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490155,1613394490136,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490159,1613394490136,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490163,1613394490136,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490167,1613394490136,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490171,1613394490136,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490175,1613394490136,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490178,1613394490136,10,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613394490182,1613394490136,11,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613394490192,1613394490136,12,'3','1',NULL,NULL,NULL,NULL,NULL,2),(1613394490196,1613394490136,13,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613394490201,1613394490136,14,'1',NULL,NULL,NULL,NULL,NULL,NULL,1),(1613394490206,1613394490136,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490211,1613394490136,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490216,1613394490136,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613394490221,1613394490136,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668506,1613502668498,1,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502668512,1613502668498,2,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502668519,1613502668498,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668523,1613502668498,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668527,1613502668498,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668531,1613502668498,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668534,1613502668498,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668538,1613502668498,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668542,1613502668498,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668548,1613502668498,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668552,1613502668498,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668557,1613502668498,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668563,1613502668498,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668569,1613502668498,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668574,1613502668498,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668585,1613502668498,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668590,1613502668498,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502668595,1613502668498,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502669679,1613502669674,1,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669684,1613502669674,2,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669688,1613502669674,3,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669692,1613502669674,4,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669696,1613502669674,5,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669699,1613502669674,6,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669703,1613502669674,7,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669707,1613502669674,8,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669712,1613502669674,9,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669718,1613502669674,10,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669724,1613502669674,11,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669730,1613502669674,12,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669736,1613502669674,13,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669741,1613502669674,14,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669747,1613502669674,15,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669753,1613502669674,16,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669760,1613502669674,17,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502669765,1613502669674,18,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670231,1613502670227,1,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670236,1613502670227,2,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670241,1613502670227,3,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670245,1613502670227,4,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670249,1613502670227,5,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670253,1613502670227,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670257,1613502670227,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670261,1613502670227,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670264,1613502670227,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670268,1613502670227,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670272,1613502670227,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670276,1613502670227,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670282,1613502670227,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670287,1613502670227,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670292,1613502670227,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670298,1613502670227,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670303,1613502670227,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670309,1613502670227,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670671,1613502670666,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670675,1613502670666,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670680,1613502670666,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670683,1613502670666,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670687,1613502670666,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670691,1613502670666,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670695,1613502670666,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670699,1613502670666,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670703,1613502670666,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670708,1613502670666,10,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670715,1613502670666,11,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670720,1613502670666,12,'6',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502670726,1613502670666,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670731,1613502670666,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670737,1613502670666,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670742,1613502670666,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670748,1613502670666,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502670754,1613502670666,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671318,1613502671314,1,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671322,1613502671314,2,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671326,1613502671314,3,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671330,1613502671314,4,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671333,1613502671314,5,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671336,1613502671314,6,'5',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671340,1613502671314,7,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671343,1613502671314,8,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671347,1613502671314,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671351,1613502671314,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671354,1613502671314,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671358,1613502671314,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671361,1613502671314,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671365,1613502671314,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671368,1613502671314,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671372,1613502671314,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671375,1613502671314,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671379,1613502671314,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671775,1613502671770,1,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671781,1613502671770,2,'3',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671785,1613502671770,3,'2',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671789,1613502671770,4,'4',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671793,1613502671770,5,'6',NULL,NULL,NULL,NULL,NULL,NULL,2),(1613502671797,1613502671770,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671801,1613502671770,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671805,1613502671770,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671809,1613502671770,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671813,1613502671770,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671817,1613502671770,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671822,1613502671770,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671826,1613502671770,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671830,1613502671770,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671834,1613502671770,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671838,1613502671770,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671842,1613502671770,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1613502671847,1613502671770,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
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
INSERT INTO `uiselected` VALUES (0,1,1613502671314,1613394490201,1,'0000-00-00 00:00:00');
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
SELECT sum(c.par) into retPar FROM golf.shots s,golf.courseholes c where s.idscore = iSelectedID and HoleStatus=2 and c.idcourseholes = holeid;

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
SELECT sum(s.strokes) into retStrokes FROM golf.shots s where s.idscore = iSelectedID and HoleStatus=2;

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

SELECT HoleNumber into retResult  FROM golf.courseholes where idcourseholes =(SELECT MAX(holeid) FROM golf.shots s,golf.courseholes c,golf.uiselected u where s.idscore = iSelectedID and HoleStatus=2 and c.idcourseholes = holeid);

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
declare retResult varchar(45) default '';

SELECT   (`GetPlayerSelectedRoundHolesPlayedStrokes`(iSelectedID)-`GetPlayerSelectedRoundHolesPlayedPar`(iSelectedID)) into retscore;

select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'PAR' else retscore end into retResult;

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

SELECT 
sum((GetPlayerSelectedRoundHolesPlayedStrokes(sc.idscore)-GetPlayerSelectedRoundHolesPlayedPar(sc.idscore))) into retscore
 FROM golf.score sc
where sc.playerid = (SELECT Playerid FROM golf.score s WHERE s.idscore=iSelectedID);


select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'PAR' else retscore end into retResult;

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTournamentSelectedLeaderBoard`(iColumn int)
BEGIN

case 

iColumn

when 1 then
SELECT cast(@Pos:=@Pos+1 as signed) Pos
				FROM golf.score s,golf.uiselected u ,(select @Pos:=0) as t
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament ;
                #order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
               # cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
               # GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;
                
when 2 then
SELECT `GetPlayerNameFromID`(s.Playerid) Playername
				FROM golf.score s,golf.uiselected u
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;
                
when 3 then
SELECT  `GetPlayerSurnameFromID`(s.Playerid)  Playersurname
				FROM golf.score s,golf.uiselected u
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;
                
when 4 then
SELECT
		`GetPlayerCountryFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;
                
when 5 then
SELECT
		ifnull(GetPlayerSelectedRoundScore(s.idscore),'--') TodayScore  
				FROM golf.score s,golf.uiselected u
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;
                
when 6 then
SELECT   ifnull(GetPlayerSelectedTournamentScore(s.idscore),'--') TournamentScore
               
				FROM golf.score s,golf.uiselected u 
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;
when 7 then
SELECT  if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'--')) TotalParORCompletedHole
				FROM golf.score s,golf.uiselected u
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;
                
when 8 then
SELECT `GetPlayerNameAndSurnameFromID`(s.Playerid) PlayernameandSurname
				FROM golf.score s,golf.uiselected u
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(GetPlayerSelectedTournamentScore(s.idscore)='PAR',0,GetPlayerSelectedTournamentScore(s.idscore)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc;

                
end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTournamentSelectedLeaderBoard()` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTournamentSelectedLeaderBoard()`()
BEGIN



SELECT idscore ,(SELECT concat(firstname,' ',lastname) FROM golf.players g where g.playerid=s.playerid) Playername,
`GetPlayerCountryFromID`(s.Playerid) PlayerCountry, ifnull(GetPlayerSelectedRoundScore(s.idscore),'--') TodayScore,  ifnull(GetPlayerSelectedTournamentScore(s.idscore),'--') TournamentScore,
                if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'--')) TotalParORCompletedHole
				FROM golf.score s,golf.uiselected u ,(select @Pos:=0) as t
                where roundid =u.SelectedRound and tournamentid = u.SelectedTournament 
                order by cast(if(TournamentScore='PAR',0,TournamentScore) as signed) asc,cast(if(TodayScore='PAR',0,TodayScore) as signed) asc,GetPlayerSelectedRoundHolesPlayed(s.idscore) desc,Playername asc;

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

-- Dump completed on 2021-02-17 11:03:15
