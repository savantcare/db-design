-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_PatientSmartBar
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
-- Current Database: `DB_SC_PatientSmartBar`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DB_SC_PatientSmartBar` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `DB_SC_PatientSmartBar`;

--
-- Table structure for table `masterTypes`
--

DROP TABLE IF EXISTS `masterTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterTypes` (
  `typeID` int(11) NOT NULL AUTO_INCREMENT,
  `isAvailable` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `isMultipleAlertDisplayEnabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `ableToUpdateFromSmartbar` enum('No','Yes') NOT NULL DEFAULT 'No',
  `staticMessage` text,
  `priority` int(11) DEFAULT NULL,
  `ImplementationNotes` text NOT NULL,
  `controllerName` text,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userRoleWiseEnableStatus`
--

DROP TABLE IF EXISTS `userRoleWiseEnableStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userRoleWiseEnableStatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userRoleID` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `priority` int(11) NOT NULL COMMENT 'largest number 1st',
  `isEnabled` enum('true','false') NOT NULL DEFAULT 'true',
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  `updatedOnTimeZone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeID` (`typeID`),
  CONSTRAINT `userrolewiseenablestatus_ibfk_1` FOREIGN KEY (`typeID`) REFERENCES `masterTypes` (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=latin1;
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
