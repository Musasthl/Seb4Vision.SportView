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
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Wilco','Nienaber','2021-02-08 17:11:28','43143',NULL,'RSA',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(2,'Jake','Redman','2021-02-08 17:11:28','36648',NULL,'RSA',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(3,'David','Law','2021-02-08 17:11:28','37562',NULL,'SCO',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(4,'Scott','Jamieson','2021-02-08 17:11:28','34771',NULL,'SCO',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(5,'Adrian','Otaegui','2021-02-08 00:00:00','37793','','ESP','C:/WORK/Golf_Photos/sa_MSteyn.png','','',-1,'','','',NULL,NULL),(6,'Daniel','Van Tonder','2021-02-08 17:11:28','38017',NULL,'RSA','C:/WORK/Golf_Photos/sa_Paige.png',NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(7,'Ruan','Conradie','2021-02-08 17:11:28','43166',NULL,'RSA',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(8,'Oliver','Farr','2021-02-08 17:11:28','36301',NULL,'WAL',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(9,'Shaun1','Norris','2021-02-08 17:11:28','32013',NULL,'RSA',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(10,'Deon1','Germishuys','2021-02-08 17:11:28','43142',NULL,'RSA',NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL),(11,'Wilco1','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(12,'Jake1','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(13,'David1','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(14,'Scott1','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(15,'Adrian1','Otaegui','2021-02-08 00:00:00','37793','','ESP','C:/WORK/Golf_Photos/sa_MvdMerwe.png','','',-1,'','','','',''),(16,'Daniel1','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(17,'Ruan1','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(18,'Oliver1','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(19,'Shaun1','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(20,'Deon1','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(21,'Wilco2','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(22,'Jake2','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(23,'David2','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(24,'Scott2','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(25,'Adrian2','Otaegui','2021-02-08 00:00:00','37793','','ESP','C:/WORK/Golf_Photos/sa_Nyakane.png','','',-1,'','','','',''),(26,'Daniel2','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(27,'Ruan2','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(28,'Oliver2','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(29,'Shaun2','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(30,'Deon2','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(31,'Wilco3','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(32,'Jake3','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(33,'David3','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(34,'Scott3','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(35,'Adrian3','Otaegui','2021-02-08 00:00:00','37793','','ESP','C:/WORK/Golf_Photos/sa_Pienaar.png','','',-1,'','','','',''),(36,'Daniel3','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(37,'Ruan3','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(38,'Oliver3','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(39,'Shaun3','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(40,'Deon3','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(41,'Wilco4','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(42,'Jake4','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(43,'David4','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(44,'Scott4','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(45,'Adrian4','Otaegui','2021-02-08 00:00:00','37793','','ESP','C:/WORK/Golf_Photos/sa_Paige.png','','',-1,'','','','',''),(46,'Daniel4','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(47,'Ruan4','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(48,'Oliver4','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(49,'Shaun4','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(50,'Deon4','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(51,'Wilco5','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(52,'Jake5','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(53,'David5','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(54,'Scott5','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(55,'Adrian5','Otaegui','2021-02-08 00:00:00','37793','','ESP','C:/WORK/Golf_Photos/sa_Oosthuizen.png','','',-1,'','','','',''),(56,'Daniel5','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(57,'Ruan5','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(58,'Oliver5','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(59,'Shaun5','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(60,'Deon5','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(61,'Wilco6','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(62,'Jake6','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(63,'David6','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(64,'Scott6','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(65,'Adrian6','Otaegui','2021-02-08 00:00:00','37793','','ESP','','','',-1,'','','','',''),(66,'Daniel6','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(67,'Ruan6','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(68,'Oliver6','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(69,'Shaun6','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(70,'Deon6','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(71,'Wilco7','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(72,'Jake7','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(73,'David7','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(74,'Scott7','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(75,'Adrian7','Otaegui','2021-02-08 00:00:00','37793','','ESP','','','',-1,'','','','',''),(76,'Daniel7','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(77,'Ruan7','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(78,'Oliver7','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(79,'Shaun7','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(80,'Deon7','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(81,'Wilco8','Nienaber','2021-02-08 17:11:28','43143','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(82,'Jake8','Redman','2021-02-08 17:11:28','36648','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(83,'David8','Law','2021-02-08 17:11:28','37562','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(84,'Scott8','Jamieson','2021-02-08 17:11:28','34771','','SCO','','',NULL,-1,NULL,NULL,NULL,'',''),(85,'Adrian8','Otaegui','2021-02-08 00:00:00','37793','','ESP','','','',-1,'','','','',''),(86,'Daniel8','Van Tonder','2021-02-08 17:11:28','38017','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(87,'Ruan8','Conradie','2021-02-08 17:11:28','43166','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(88,'Oliver8','Farr','2021-02-08 17:11:28','36301','','WAL','','',NULL,-1,NULL,NULL,NULL,'',''),(89,'Shaun8','Norris','2021-02-08 17:11:28','32013','','RSA','','',NULL,-1,NULL,NULL,NULL,'',''),(90,'Deon8','Germishuys','2021-02-08 17:11:28','43142','','RSA','','',NULL,-1,NULL,NULL,NULL,'','');
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
INSERT INTO `queries` VALUES (1,'SPName','SELECT GetPlayerNameFromID(s.playerid) FirstName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(2,'SPSurname','SELECT GetPlayerSurNameFromID(s.playerid) LastName FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(3,'SPNameANDSurname','SELECT GetPlayerNameAndSurnameFromID(s.playerid) NameAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(4,'SPInitialAndSurname','SELECT GetPlayerInitialAndSurnameFromID(s.playerid) InitAndSurname FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(5,'SPCountry','SELECT GetPlayerCountryFromID(s.playerid) PlayerCountry FROM golf.score s,golf.uiselected u WHERE s.idscore = u.SelectedScoreEntry;'),(6,'SHNumber','SELECT HoleNumber FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(7,'SHPar','SELECT Par FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(8,'SHYards','SELECT yards FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(9,'SHMetres','SELECT metres FROM golf.courseholes sc,golf.shots s ,golf.uiselected u where sc.idcourseholes=s.holeid   and s.shotsid=u.SelectedHole;'),(10,'SPHolesPlayed','SELECT Count(*) holesPlayed FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2;'),(11,'SPTournamentScore','SELECT GetPlayerSelectedTournamentScore(u.SelectedScoreEntry) TournamentScore FROM golf.uiselected u;'),(12,'SPCurrentHoleNumber','SELECT sc.HoleNumber  CurrentHole FROM golf.courseholes sc,golf.shots s,golf.uiselected u where sc.idcourseholes=s.holeid and s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(13,'SPRoundScore','SELECT GetPlayerSelectedRoundScore(u.SelectedScoreEntry) RoundScore FROM golf.uiselected u;'),(14,'SPHoles1to9CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 0,9;'),(15,'SPHoles10to18CoursePar','SELECT sc.Par CourseHolesPar FROM golf.courseholes sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament limit 9,18;'),(16,'SPRoundTotalParOrLastCompletedHole','SELECT if(GetTournamentSelectedCourseHolesNumber(t.courseid)=GetPlayerSelectedRoundHolesPlayed(u.SelectedScoreEntry) ,GetPlayerSelectedRoundHolesPlayedStrokes(u.SelectedScoreEntry),GetPlayerSelectedRoundLastCompletedHole(u.SelectedScoreEntry)) TotalParORCompletedHole FROM golf.tournament t,golf.uiselected u WHERE t.tournamentid=u.SelectedTournament;'),(17,'SPHoles1to9Strokes','SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 0,9;'),(18,'SPHoles10to18Strokes','SELECT strokes FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=2 limit 9,18;'),(19,'SPHoles1to9StrokesTotal','SELECT sum(s.strokes) FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2  and sc.HoleNumber between 1 and 9;'),(20,'SPHoles10to18StrokesTotal','SELECT sum(s.strokes) FROM golf.courseholes sc,golf.shots s ,golf.uiselected u  where sc.idcourseholes=s.holeid and   s.idscore = u.SelectedScoreEntry and HoleStatus=2  and sc.HoleNumber between 10 and 18;'),(21,'SPCourseFrontPar','SELECT sc.frontpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(22,'SPCourseBackPar','SELECT sc.backpar FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(23,'STCoursePar','SELECT sc.Par FROM golf.course sc,golf.tournament t,golf.uiselected u where sc.courseid=t.courseid and t.tournamentid= u.SelectedTournament;'),(24,'STLeaderBoardPlayerPos','call GetTournamentSelectedLeaderBoard(1);'),(25,'STLeaderBoardPlayerName','call GetTournamentSelectedLeaderBoard(2);'),(26,'STLeaderBoardPlayerSurName','call GetTournamentSelectedLeaderBoard(3);'),(27,'STLeaderBoardPlayerCountry','call GetTournamentSelectedLeaderBoard(4);'),(28,'STLeaderBoardPlayerTodayScore','call GetTournamentSelectedLeaderBoard(5);'),(29,'STLeaderBoardPlayerTournamentScore','call GetTournamentSelectedLeaderBoard(6);'),(30,'STLeaderBoardPlayerTotalParORCompletedHole','call GetTournamentSelectedLeaderBoard(7);'),(31,'STLeaderBoardPlayerNameAndSurname','call GetTournamentSelectedLeaderBoard(8);'),(32,'SPPosition','SELECT GetPlayerSelectedTournamentPosition(u.SelectedScoreEntry) FROM golf.uiselected u;'),(33,'SPCurrentHoleShot','SELECT s.strokes+1  CurrentShooting FROM golf.shots s,golf.uiselected u where s.idscore = u.SelectedScoreEntry and HoleStatus=1;'),(34,'SRDescription','SELECT r.Description FROM golf.rounds r,golf.uiselected u where r.roundid= u.SelectedRound;'),(35,'STDescription','SELECT t.description FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(36,'STLogo1','SELECT t.logo1 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(37,'STLogo2','SELECT t.logo2 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;'),(38,'STLogo3','SELECT t.logo3 FROM golf.tournament t,golf.uiselected u where  t.tournamentid= u.SelectedTournament;');
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
  `Tied` int(11) DEFAULT '-1',
  `BackNine` int(11) DEFAULT '0',
  PRIMARY KEY (`idscore`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1614021238532,1,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021238945,2,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021239088,3,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021239209,4,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021239338,5,1,1,1,2,NULL,NULL,-1,'',1,0),(1614021239460,6,1,1,1,1,NULL,NULL,-1,'1',0,0),(1614021239585,7,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021239717,8,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021239848,9,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021239938,10,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021240071,11,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021240197,12,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021240571,13,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021240710,14,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021240862,15,1,1,1,2,NULL,NULL,-1,'',1,0),(1614021240989,16,1,1,1,3,NULL,NULL,-1,'5',0,0),(1614021241127,17,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021241266,18,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021241377,19,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021241498,20,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021241651,21,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021241801,22,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021241950,23,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021242103,24,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021242264,25,1,1,1,2,NULL,NULL,-1,'2',1,0),(1614021242590,26,1,1,1,4,NULL,NULL,-1,'6',1,0),(1614021243048,27,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021243509,28,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021244011,29,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021244459,30,1,1,1,4,NULL,NULL,-1,'',1,0),(1614021245295,31,1,1,1,4,NULL,NULL,-1,'',1,0);
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
  CONSTRAINT `fkidScore` FOREIGN KEY (`idscore`) REFERENCES `score` (`idscore`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
INSERT INTO `shots` VALUES (1614021238535,1614021238532,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238537,1614021238532,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238539,1614021238532,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238541,1614021238532,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238543,1614021238532,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238544,1614021238532,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238545,1614021238532,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238547,1614021238532,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238549,1614021238532,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238550,1614021238532,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238551,1614021238532,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238553,1614021238532,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238554,1614021238532,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238556,1614021238532,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238557,1614021238532,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238559,1614021238532,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238560,1614021238532,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238562,1614021238532,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238948,1614021238945,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238950,1614021238945,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238951,1614021238945,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238953,1614021238945,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238954,1614021238945,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238956,1614021238945,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238957,1614021238945,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238959,1614021238945,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238960,1614021238945,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238961,1614021238945,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238963,1614021238945,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238964,1614021238945,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238966,1614021238945,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238967,1614021238945,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238969,1614021238945,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238970,1614021238945,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238972,1614021238945,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021238973,1614021238945,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239090,1614021239088,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239093,1614021239088,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239094,1614021239088,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239096,1614021239088,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239097,1614021239088,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239101,1614021239088,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239102,1614021239088,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239104,1614021239088,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239105,1614021239088,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239107,1614021239088,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239108,1614021239088,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239110,1614021239088,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239111,1614021239088,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239113,1614021239088,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239114,1614021239088,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239115,1614021239088,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239117,1614021239088,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239118,1614021239088,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239212,1614021239209,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239214,1614021239209,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239216,1614021239209,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239218,1614021239209,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239220,1614021239209,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239221,1614021239209,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239223,1614021239209,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239225,1614021239209,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239227,1614021239209,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239228,1614021239209,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239230,1614021239209,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239232,1614021239209,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239233,1614021239209,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239235,1614021239209,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239237,1614021239209,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239238,1614021239209,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239240,1614021239209,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239242,1614021239209,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239341,1614021239338,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021239343,1614021239338,2,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021239344,1614021239338,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239346,1614021239338,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239348,1614021239338,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239349,1614021239338,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239351,1614021239338,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239352,1614021239338,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239354,1614021239338,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239355,1614021239338,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239357,1614021239338,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239358,1614021239338,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239359,1614021239338,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239361,1614021239338,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239362,1614021239338,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239363,1614021239338,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239365,1614021239338,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239366,1614021239338,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239462,1614021239460,1,'5',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021239464,1614021239460,2,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021239466,1614021239460,3,'2',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021239467,1614021239460,4,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021239468,1614021239460,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239470,1614021239460,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239471,1614021239460,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239473,1614021239460,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239475,1614021239460,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239476,1614021239460,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239477,1614021239460,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239479,1614021239460,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239480,1614021239460,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239482,1614021239460,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239483,1614021239460,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239485,1614021239460,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239486,1614021239460,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239487,1614021239460,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239587,1614021239585,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239589,1614021239585,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239590,1614021239585,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239592,1614021239585,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239593,1614021239585,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239595,1614021239585,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239597,1614021239585,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239598,1614021239585,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239599,1614021239585,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239601,1614021239585,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239602,1614021239585,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239604,1614021239585,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239605,1614021239585,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239607,1614021239585,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239608,1614021239585,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239610,1614021239585,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239611,1614021239585,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239613,1614021239585,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239719,1614021239717,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239721,1614021239717,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239723,1614021239717,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239725,1614021239717,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239726,1614021239717,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239728,1614021239717,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239729,1614021239717,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239730,1614021239717,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239732,1614021239717,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239733,1614021239717,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239734,1614021239717,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239736,1614021239717,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239737,1614021239717,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239738,1614021239717,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239740,1614021239717,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239741,1614021239717,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239743,1614021239717,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239744,1614021239717,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239850,1614021239848,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239852,1614021239848,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239854,1614021239848,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239855,1614021239848,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239857,1614021239848,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239859,1614021239848,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239860,1614021239848,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239862,1614021239848,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239864,1614021239848,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239865,1614021239848,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239867,1614021239848,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239869,1614021239848,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239870,1614021239848,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239872,1614021239848,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239873,1614021239848,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239875,1614021239848,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239876,1614021239848,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239878,1614021239848,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239941,1614021239938,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239943,1614021239938,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239944,1614021239938,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239946,1614021239938,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239948,1614021239938,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239950,1614021239938,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239951,1614021239938,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239953,1614021239938,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239954,1614021239938,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239956,1614021239938,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239957,1614021239938,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239959,1614021239938,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239960,1614021239938,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239962,1614021239938,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239963,1614021239938,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239965,1614021239938,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239966,1614021239938,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021239968,1614021239938,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240074,1614021240071,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240077,1614021240071,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240079,1614021240071,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240081,1614021240071,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240083,1614021240071,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240085,1614021240071,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240087,1614021240071,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240089,1614021240071,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240091,1614021240071,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240092,1614021240071,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240094,1614021240071,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240096,1614021240071,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240098,1614021240071,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240099,1614021240071,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240101,1614021240071,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240103,1614021240071,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240104,1614021240071,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240106,1614021240071,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240199,1614021240197,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240201,1614021240197,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240203,1614021240197,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240204,1614021240197,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240206,1614021240197,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240208,1614021240197,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240209,1614021240197,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240211,1614021240197,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240212,1614021240197,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240214,1614021240197,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240215,1614021240197,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240217,1614021240197,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240218,1614021240197,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240220,1614021240197,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240222,1614021240197,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240224,1614021240197,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240225,1614021240197,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240227,1614021240197,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240574,1614021240571,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240576,1614021240571,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240577,1614021240571,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240579,1614021240571,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240580,1614021240571,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240582,1614021240571,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240583,1614021240571,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240584,1614021240571,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240586,1614021240571,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240588,1614021240571,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240589,1614021240571,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240591,1614021240571,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240592,1614021240571,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240594,1614021240571,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240595,1614021240571,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240597,1614021240571,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240598,1614021240571,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240599,1614021240571,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240712,1614021240710,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240714,1614021240710,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240716,1614021240710,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240717,1614021240710,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240719,1614021240710,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240720,1614021240710,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240722,1614021240710,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240723,1614021240710,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240725,1614021240710,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240726,1614021240710,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240728,1614021240710,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240729,1614021240710,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240731,1614021240710,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240732,1614021240710,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240734,1614021240710,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240735,1614021240710,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240737,1614021240710,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240738,1614021240710,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240864,1614021240862,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021240866,1614021240862,2,'3',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021240868,1614021240862,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240870,1614021240862,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240871,1614021240862,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240873,1614021240862,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240874,1614021240862,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240876,1614021240862,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240877,1614021240862,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240878,1614021240862,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240880,1614021240862,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240881,1614021240862,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240883,1614021240862,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240884,1614021240862,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240886,1614021240862,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240887,1614021240862,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240889,1614021240862,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240890,1614021240862,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240992,1614021240989,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021240994,1614021240989,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240995,1614021240989,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240997,1614021240989,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021240998,1614021240989,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241000,1614021240989,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241001,1614021240989,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241003,1614021240989,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241004,1614021240989,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241006,1614021240989,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241007,1614021240989,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241009,1614021240989,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241010,1614021240989,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241011,1614021240989,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241013,1614021240989,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241014,1614021240989,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241015,1614021240989,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241016,1614021240989,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241130,1614021241127,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241131,1614021241127,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241136,1614021241127,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241138,1614021241127,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241140,1614021241127,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241141,1614021241127,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241143,1614021241127,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241144,1614021241127,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241145,1614021241127,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241147,1614021241127,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241148,1614021241127,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241149,1614021241127,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241151,1614021241127,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241152,1614021241127,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241153,1614021241127,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241155,1614021241127,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241156,1614021241127,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241158,1614021241127,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241269,1614021241266,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241271,1614021241266,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241272,1614021241266,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241274,1614021241266,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241275,1614021241266,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241277,1614021241266,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241278,1614021241266,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241280,1614021241266,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241281,1614021241266,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241283,1614021241266,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241284,1614021241266,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241285,1614021241266,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241286,1614021241266,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241288,1614021241266,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241289,1614021241266,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241291,1614021241266,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241292,1614021241266,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241293,1614021241266,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241380,1614021241377,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241382,1614021241377,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241383,1614021241377,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241385,1614021241377,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241386,1614021241377,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241387,1614021241377,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241389,1614021241377,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241390,1614021241377,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241392,1614021241377,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241394,1614021241377,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241397,1614021241377,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241398,1614021241377,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241400,1614021241377,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241402,1614021241377,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241403,1614021241377,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241405,1614021241377,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241406,1614021241377,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241408,1614021241377,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241500,1614021241498,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241502,1614021241498,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241504,1614021241498,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241505,1614021241498,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241507,1614021241498,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241509,1614021241498,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241510,1614021241498,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241512,1614021241498,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241513,1614021241498,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241515,1614021241498,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241517,1614021241498,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241518,1614021241498,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241520,1614021241498,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241521,1614021241498,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241523,1614021241498,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241524,1614021241498,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241526,1614021241498,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241527,1614021241498,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241653,1614021241651,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241655,1614021241651,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241657,1614021241651,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241659,1614021241651,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241660,1614021241651,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241662,1614021241651,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241663,1614021241651,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241665,1614021241651,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241666,1614021241651,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241668,1614021241651,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241669,1614021241651,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241671,1614021241651,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241672,1614021241651,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241674,1614021241651,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241676,1614021241651,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241677,1614021241651,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241679,1614021241651,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241680,1614021241651,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241803,1614021241801,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241806,1614021241801,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241808,1614021241801,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241809,1614021241801,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241811,1614021241801,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241812,1614021241801,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241814,1614021241801,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241815,1614021241801,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241817,1614021241801,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241818,1614021241801,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241820,1614021241801,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241822,1614021241801,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241823,1614021241801,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241825,1614021241801,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241826,1614021241801,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241828,1614021241801,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241829,1614021241801,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241831,1614021241801,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241952,1614021241950,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241954,1614021241950,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241955,1614021241950,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241957,1614021241950,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241958,1614021241950,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241960,1614021241950,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241961,1614021241950,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241963,1614021241950,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241964,1614021241950,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241966,1614021241950,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241967,1614021241950,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241970,1614021241950,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241972,1614021241950,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241973,1614021241950,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241975,1614021241950,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241977,1614021241950,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241978,1614021241950,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021241980,1614021241950,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242106,1614021242103,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242108,1614021242103,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242110,1614021242103,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242111,1614021242103,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242113,1614021242103,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242114,1614021242103,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242116,1614021242103,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242118,1614021242103,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242119,1614021242103,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242121,1614021242103,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242122,1614021242103,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242124,1614021242103,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242125,1614021242103,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242127,1614021242103,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242129,1614021242103,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242130,1614021242103,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242132,1614021242103,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242133,1614021242103,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242267,1614021242264,1,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021242269,1614021242264,2,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021242271,1614021242264,3,'2',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021242272,1614021242264,4,'4',NULL,NULL,'','','',NULL,NULL,NULL,NULL,2),(1614021242274,1614021242264,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242275,1614021242264,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242277,1614021242264,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242278,1614021242264,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242280,1614021242264,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242282,1614021242264,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242283,1614021242264,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242285,1614021242264,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242286,1614021242264,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242288,1614021242264,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242289,1614021242264,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242291,1614021242264,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242292,1614021242264,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242294,1614021242264,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242593,1614021242590,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242595,1614021242590,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242596,1614021242590,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242598,1614021242590,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242600,1614021242590,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242602,1614021242590,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242603,1614021242590,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242605,1614021242590,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242607,1614021242590,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242608,1614021242590,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242610,1614021242590,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242612,1614021242590,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242614,1614021242590,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242615,1614021242590,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242617,1614021242590,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242619,1614021242590,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242620,1614021242590,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021242622,1614021242590,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243050,1614021243048,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243053,1614021243048,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243054,1614021243048,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243056,1614021243048,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243058,1614021243048,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243059,1614021243048,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243061,1614021243048,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243063,1614021243048,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243065,1614021243048,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243066,1614021243048,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243068,1614021243048,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243070,1614021243048,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243071,1614021243048,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243073,1614021243048,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243075,1614021243048,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243077,1614021243048,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243079,1614021243048,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243080,1614021243048,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243512,1614021243509,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243514,1614021243509,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243516,1614021243509,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243517,1614021243509,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243519,1614021243509,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243521,1614021243509,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243523,1614021243509,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243524,1614021243509,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243526,1614021243509,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243528,1614021243509,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243529,1614021243509,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243531,1614021243509,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243533,1614021243509,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243534,1614021243509,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243536,1614021243509,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243537,1614021243509,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243539,1614021243509,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021243540,1614021243509,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244013,1614021244011,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244015,1614021244011,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244017,1614021244011,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244018,1614021244011,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244020,1614021244011,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244021,1614021244011,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244023,1614021244011,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244024,1614021244011,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244026,1614021244011,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244027,1614021244011,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244029,1614021244011,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244030,1614021244011,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244032,1614021244011,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244033,1614021244011,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244034,1614021244011,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244036,1614021244011,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244037,1614021244011,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244039,1614021244011,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244461,1614021244459,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244465,1614021244459,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244467,1614021244459,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244469,1614021244459,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244471,1614021244459,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244472,1614021244459,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244474,1614021244459,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244476,1614021244459,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244477,1614021244459,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244479,1614021244459,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244481,1614021244459,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244482,1614021244459,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244484,1614021244459,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244486,1614021244459,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244487,1614021244459,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244489,1614021244459,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244490,1614021244459,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021244492,1614021244459,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245297,1614021245295,1,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245300,1614021245295,2,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245302,1614021245295,3,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245304,1614021245295,4,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245305,1614021245295,5,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245307,1614021245295,6,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245309,1614021245295,7,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245310,1614021245295,8,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245312,1614021245295,9,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245314,1614021245295,10,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245315,1614021245295,11,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245317,1614021245295,12,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245319,1614021245295,13,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245320,1614021245295,14,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245322,1614021245295,15,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245324,1614021245295,16,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245326,1614021245295,17,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0),(1614021245327,1614021245295,18,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,0);
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
INSERT INTO `tournament` VALUES (1,1,'SA Open Championship','South Africa','2020-12-04 00:00:00','2020-12-07 00:00:00','9','9',1,2020105,'IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Varsity_Sports/UJ_01 ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Varsity_Sports/CUT_02 ','IMAGE*Seb4_Projects/Supersport_2018/_Images/Logos/Varsity_Sports/UKZN_01 '),(2,2,'Joburg Open','South Africa','2020-11-19 00:00:00','2020-11-23 00:00:00','9','9',0,2020103,'','','');
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
INSERT INTO `uiselected` VALUES (0,1,1614021240862,1614021240992,1,'0000-00-00 00:00:00');
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

SELECT HoleNumber into retResult  FROM golf.courseholes where idcourseholes =
(SELECT holeid FROM golf.shots WHERE shotsid= (SELECT MAX(shotsid) FROM golf.shots s,golf.uiselected u where s.idscore = iSelectedID and s.HoleStatus=2));

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
select case  SIGN(retscore)  when 1 then concat('+',retscore) when 0 then 'PAR' else retscore end into retResult;

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
SELECT s.GraphicPos  
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;
                
when 2 then
SELECT `GetPlayerNameFromID`(s.Playerid) Playername
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;
                
when 3 then
SELECT  `GetPlayerSurnameFromID`(s.Playerid)  Playersurname
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;
                
when 4 then
SELECT
		`GetPlayerCountryFromID`(s.Playerid) PlayerCountry
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;
                
when 5 then
SELECT
		ifnull(GetPlayerSelectedRoundScore(s.idscore),'--') TodayScore  
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;
                
when 6 then
SELECT   ifnull(GetPlayerSelectedTournamentScore(s.playerid),'--') TournamentScore
               
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;
when 7 then
SELECT  if(GetTournamentSelectedCourseHolesNumber(s.courseid)=GetPlayerSelectedRoundHolesPlayed(s.idscore) ,
			ifnull(GetPlayerSelectedRoundHolesPlayedStrokes(s.idscore),'--'),ifnull(GetPlayerSelectedRoundLastCompletedHole(s.idscore),'--')) TotalParORCompletedHole
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;
                
when 8 then
SELECT `GetPlayerNameAndSurnameFromID`(s.Playerid) PlayernameandSurname
				FROM golf.score s,golf.uiselected u
                where tournamentid = u.SelectedTournament and roundid =SelectedRound
                order by cast(if(GetPlayerSelectedTournamentScore(s.playerid)='PAR',0,GetPlayerSelectedTournamentScore(s.playerid)) as signed) asc,
                cast(if(GetPlayerSelectedRoundScore(s.idscore)='PAR',0,GetPlayerSelectedRoundScore(s.idscore)) as signed) asc,
                GetPlayerSelectedRoundHolesPlayed(s.idscore) desc, s.GraphicPos desc;

                
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

-- Dump completed on 2021-02-23 11:36:08
