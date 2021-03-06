-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Goal
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
-- Current Database: `DB_SC_Goal`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DB_SC_Goal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `DB_SC_Goal`;

--
-- Table structure for table `goalChartStates`
--

DROP TABLE IF EXISTS `goalChartStates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goalChartStates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uidOfDoctor` int(11) unsigned DEFAULT NULL,
  `uidOfPatient` int(11) unsigned DEFAULT NULL,
  `trackerOptions` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uidOfDoctor` (`uidOfDoctor`),
  KEY `uidOfPatient` (`uidOfPatient`)
) ENGINE=InnoDB AUTO_INCREMENT=4199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patientGoal`
--

DROP TABLE IF EXISTS `patientGoal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientGoal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `goal` text NOT NULL,
  `priority` int(11) NOT NULL,
  `graphColor` varchar(50) NOT NULL,
  `firstParentId` int(11) NOT NULL,
  `createdByUid` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdFromIPAddress` varchar(50) NOT NULL,
  `createdAtTimeZone` varchar(100) NOT NULL,
  `deletedByUID` int(11) DEFAULT NULL,
  `deletedOnDateTime` datetime DEFAULT NULL,
  `deletedFromIPAddress` varchar(50) DEFAULT NULL,
  `deletedOnTimeZone` varchar(100) DEFAULT NULL,
  `discontinuedByUID` int(11) DEFAULT NULL,
  `discontinuedOnDateTime` datetime DEFAULT NULL,
  `discontinuedFromIPAddress` varchar(50) DEFAULT NULL,
  `discontinuedOnTimeZone` varchar(100) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `typeOfSection` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4261 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patientGoalRatings`
--

DROP TABLE IF EXISTS `patientGoalRatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientGoalRatings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goalID` int(10) unsigned NOT NULL,
  `firstParentId` int(11) NOT NULL,
  `valueOfTheRating` tinyint(4) NOT NULL COMMENT 'Values are -3,-2,-1,0,1,2',
  `dateOfRate` date DEFAULT NULL,
  `comments` varchar(255) NOT NULL,
  `createdByUid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAtTimeZone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goalID` (`goalID`)
) ENGINE=InnoDB AUTO_INCREMENT=8253 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patientGoalRatings_bk`
--

DROP TABLE IF EXISTS `patientGoalRatings_bk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientGoalRatings_bk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goalID` int(10) unsigned NOT NULL,
  `valueOfTheRating` tinyint(4) NOT NULL COMMENT 'Values are -3,-2,-1,0,1,2',
  `dateOfRate` date DEFAULT NULL,
  `comments` varchar(255) NOT NULL,
  `createdByUid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAtTimeZone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goalID` (`goalID`),
  CONSTRAINT `patientGoalRatings_bk_ibfk_1` FOREIGN KEY (`goalID`) REFERENCES `patientGoal_bk` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7971 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patientGoal_bk`
--

DROP TABLE IF EXISTS `patientGoal_bk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientGoal_bk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `publicUniqueGoalId` char(36) DEFAULT NULL,
  `uid` int(11) unsigned DEFAULT NULL,
  `goal` text,
  `priority` int(30) DEFAULT NULL,
  `graphColor` varchar(50) DEFAULT NULL,
  `createdByUserId` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdTimeZone` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `originId` int(11) NOT NULL,
  `deletedByUid` int(10) NOT NULL,
  `deletedOnDateTime` datetime DEFAULT NULL,
  `deletedOnTimeZone` varchar(255) NOT NULL,
  `deletedFromIPAddress` varchar(255) DEFAULT NULL,
  `discontinuedByUid` int(10) NOT NULL,
  `discountinuedOnDateTime` datetime DEFAULT NULL,
  `discontinuedOnTimeZone` varchar(255) NOT NULL,
  `discontinuedFromIPAddress` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL COMMENT 'Why this goal is discontinued?',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `patientGoal_bk_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `DB_SCEMR_PROD`.`users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3677 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `generate_uuid4_for_goal` BEFORE INSERT ON `patientGoal_bk` FOR EACH ROW begin
    DECLARE P1 VARCHAR(36);
    DECLARE P2 bigint(21);
    SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'DB_SC_Goal' AND   TABLE_NAME   = 'patientGoal' INTO @P2;
    Select uuid_v4_custom_goal(@P2) INTO @P1;
    IF (NEW.publicUniqueGoalId IS NULL) THEN
    	SET NEW.publicUniqueGoalId = @P1;
    ELSEIF (NEW.publicUniqueGoalId = '') THEN
    	SET NEW.publicUniqueGoalId = @P1;  
	ELSE
    	SET NEW.publicUniqueGoalId = NEW.publicUniqueGoalId;
    END IF;
end */;;
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

-- Dump completed
