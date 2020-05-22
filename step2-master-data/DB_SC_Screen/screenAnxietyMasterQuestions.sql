use DB_SC_Screen
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Screen
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4-log

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
-- Table structure for table `screenAnxietyMasterQuestions`
--

DROP TABLE IF EXISTS `screenAnxietyMasterQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screenAnxietyMasterQuestions` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `groupID` tinyint(4) DEFAULT NULL,
  `isItLocked` enum('Yes','No') NOT NULL DEFAULT 'No',
  `question` varchar(255) NOT NULL,
  `imageFile` longblob,
  `imageFileName` varchar(255) DEFAULT NULL,
  `isThisRequiredToAnswer` enum('Yes','No') NOT NULL DEFAULT 'No',
  `answerInputType` enum('Select box','Text box','Text area') NOT NULL DEFAULT 'Select box',
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `option5` varchar(255) NOT NULL,
  `pointsForOption1` int(3) NOT NULL,
  `pointsForOption2` int(3) NOT NULL,
  `pointsForOption3` int(3) NOT NULL,
  `pointsForOption4` int(3) NOT NULL,
  `pointsForOption5` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenAnxietyMasterQuestions`
--

LOCK TABLES `screenAnxietyMasterQuestions` WRITE;
/*!40000 ALTER TABLE `screenAnxietyMasterQuestions` DISABLE KEYS */;
INSERT INTO `screenAnxietyMasterQuestions` VALUES (1,1,'No','Feeling nervous, anxious, or on edge?',NULL,NULL,'No','Select box','Not at all','Several days','Over half the days','Nearly every day','',0,1,2,3,0),(2,1,'No','Not being able to stop or control worrying?',NULL,NULL,'No','Select box','Not at all','Several days','Over half the days','Nearly every day','',0,1,2,3,0),(3,1,'No','Worrying too much about different things?',NULL,NULL,'No','Select box','Not at all','Several days','Over half the days','Nearly every day','',0,1,2,3,0),(4,1,'No','Trouble relaxing?',NULL,NULL,'No','Select box','Not at all','Several days','Over half the days','Nearly every day','',0,1,2,3,0),(5,1,'No','Being so restless that it\'s hard to sit still?',NULL,NULL,'No','Select box','Not at all','Several days','Over half the days','Nearly every day','',0,1,2,3,0),(6,1,'No','Becoming easily annoyed or irritable?',NULL,NULL,'No','Select box','Not at all','Several days','Over half the days','Nearly every day','',0,1,2,3,0),(7,1,'No','Feeling afraid as if something awful might happen?',NULL,NULL,'No','Select box','Not at all','Several days','Over half the days','Nearly every day','',0,1,2,3,0),(8,2,'No','If you checked off any problems, how difficult have these made it for you to do your work, take care of things at home, or get along with other people?',NULL,NULL,'No','Select box','Not difficult at all','Somewhat difficult','Very difficult','Extremely difficult','',0,1,2,3,0);
/*!40000 ALTER TABLE `screenAnxietyMasterQuestions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
