-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Medication_Consent
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
-- Current Database: `DB_SC_Medication_Consent`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DB_SC_Medication_Consent` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `DB_SC_Medication_Consent`;

--
-- Table structure for table `consentTemplates`
--

DROP TABLE IF EXISTS `consentTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consentTemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugGenericName` varchar(255) NOT NULL,
  `drugBrandName` varchar(255) DEFAULT NULL,
  `templates` text,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consentTemplatesSignaturet`
--

DROP TABLE IF EXISTS `consentTemplatesSignaturet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consentTemplatesSignaturet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `medicationOrderId` int(11) NOT NULL,
  `signatureBlobData` blob,
  `authorisesSignature` varchar(255) DEFAULT NULL,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `createdLog`
--

DROP TABLE IF EXISTS `createdLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `createdLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insertByUid` int(11) DEFAULT NULL,
  `insertDateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `insertTimeZone` varchar(100) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=647 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deletedLog`
--

DROP TABLE IF EXISTS `deletedLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deletedLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceTableId` int(11) NOT NULL,
  `sourceTableName` varchar(255) NOT NULL,
  `insertByUid` int(11) DEFAULT NULL,
  `insertDateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `insertTimeZone` varchar(100) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterAnswer`
--

DROP TABLE IF EXISTS `masterAnswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterAnswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `questionId` int(11) DEFAULT NULL,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterQuestion`
--

DROP TABLE IF EXISTS `masterQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterQuestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `typeId` int(11) DEFAULT '1',
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterQuestionType`
--

DROP TABLE IF EXISTS `masterQuestionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterQuestionType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterSignaturetype`
--

DROP TABLE IF EXISTS `masterSignaturetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterSignaturetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterUserConsent`
--

DROP TABLE IF EXISTS `masterUserConsent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterUserConsent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `drugName` varchar(255) NOT NULL,
  `type` enum('progression','success') NOT NULL DEFAULT 'progression',
  `submittedDateTime` datetime DEFAULT NULL,
  `submittedTimeZone` varchar(100) DEFAULT NULL,
  `submitedById` int(11) DEFAULT NULL,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `signatureDetails`
--

DROP TABLE IF EXISTS `signatureDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signatureDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `masterConsentId` int(11) NOT NULL,
  `signatureTypeId` int(25) NOT NULL,
  `signatureBlobData` blob,
  `signatureReason` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userAnswered`
--

DROP TABLE IF EXISTS `userAnswered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userAnswered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(11) NOT NULL,
  `answerId` int(11) DEFAULT NULL,
  `answerText` varchar(255) DEFAULT NULL,
  `consentId` int(11) DEFAULT NULL,
  `masterCreatedId` int(11) DEFAULT NULL,
  `masterDeletedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
