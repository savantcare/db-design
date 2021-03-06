-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Feature
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
-- Current Database: `DB_SC_Feature`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DB_SC_Feature` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `DB_SC_Feature`;

--
-- Table structure for table `featureAction`
--

DROP TABLE IF EXISTS `featureAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featureAction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featureId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdByUID` int(11) NOT NULL,
  `createdAtDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedByUID` int(11) DEFAULT NULL,
  `deletedAtDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featureMaster`
--

DROP TABLE IF EXISTS `featureMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featureMaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdByUID` int(11) NOT NULL,
  `createdAtDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedByUID` int(11) DEFAULT NULL,
  `deletedAtDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featureVote`
--

DROP TABLE IF EXISTS `featureVote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featureVote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featureId` int(11) NOT NULL,
  `type` enum('Faster','Bug') NOT NULL,
  `taskLinc` varchar(255) DEFAULT NULL,
  `createdByUID` int(11) NOT NULL,
  `createdAtDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedByUID` int(11) DEFAULT NULL,
  `deletedAtDateTime` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usageCount`
--

DROP TABLE IF EXISTS `usageCount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usageCount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featureId` int(11) NOT NULL,
  `type` enum('read','write') NOT NULL,
  `createdByUID` int(11) NOT NULL,
  `createdAtDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42105 DEFAULT CHARSET=latin1;
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
