use DB_SC_Surescripts
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Surescripts
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
-- Table structure for table `271MasterSegmentTrailer`
--

DROP TABLE IF EXISTS `271MasterSegmentTrailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `271MasterSegmentTrailer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `segmentID` varchar(255) NOT NULL,
  `segmentName` varchar(255) NOT NULL,
  `loopMasterID` int(11) unsigned NOT NULL,
  `maxUse` int(11) DEFAULT NULL,
  `loopRepeat` int(11) DEFAULT NULL,
  `usage` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loopMasterID` (`loopMasterID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `271MasterSegmentTrailer`
--

LOCK TABLES `271MasterSegmentTrailer` WRITE;
/*!40000 ALTER TABLE `271MasterSegmentTrailer` DISABLE KEYS */;
INSERT INTO `271MasterSegmentTrailer` VALUES (1,'SE','Transaction Set Trailer',10,1,NULL,'Mandatory','To indicate the end of the transaction set and provide the count of the transmitted segments (including the beginning (ST) and ending (SE) segments)'),(2,'GE','Functional Group Trailer',10,1,NULL,'Mandatory','To indicate the end of a functional group and to provide control information\n'),(3,'IEA','Interchange Control Trailer',10,1,NULL,'Mandatory','To define the end of an interchange of zero or more functional groups and interchange-related control segments');
/*!40000 ALTER TABLE `271MasterSegmentTrailer` ENABLE KEYS */;
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
