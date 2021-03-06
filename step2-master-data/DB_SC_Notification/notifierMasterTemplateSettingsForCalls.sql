use DB_SC_Notification
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Notification
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
-- Table structure for table `notifierMasterTemplateSettingsForCalls`
--

DROP TABLE IF EXISTS `notifierMasterTemplateSettingsForCalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifierMasterTemplateSettingsForCalls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `notifierTypeID` tinyint(4) unsigned DEFAULT NULL COMMENT 'Id of reminderTypes',
  `secondaryIdentifier` varchar(255) NOT NULL DEFAULT 'default',
  `callTemplate` text NOT NULL,
  `isItLatest` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: old, 1: latest',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifierMasterTemplateSettingsForCalls`
--

LOCK TABLES `notifierMasterTemplateSettingsForCalls` WRITE;
/*!40000 ALTER TABLE `notifierMasterTemplateSettingsForCalls` DISABLE KEYS */;
INSERT INTO `notifierMasterTemplateSettingsForCalls` VALUES (1,6,'default','test',0),(2,6,'default','test.',0),(3,6,'default','This call is to remind you of your appointment with Doctor %doctorName% on %eStartTime% at SavantCare office in %city%.',0),(4,6,'default','This call is to remind you of your appointment with %doctorName% on %eStartTime% at SavantCare office in %city%.',1);
/*!40000 ALTER TABLE `notifierMasterTemplateSettingsForCalls` ENABLE KEYS */;
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
