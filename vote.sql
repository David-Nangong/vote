-- MySQL dump 10.13  Distrib 5.6.21, for Win64 (x86_64)
--
-- Host: localhost    Database: vote
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `bdm`
--

DROP TABLE IF EXISTS `bdm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdm`
--

LOCK TABLES `bdm` WRITE;
/*!40000 ALTER TABLE `bdm` DISABLE KEYS */;
INSERT INTO `bdm` VALUES (1,'18','4724','3','20','2015-08-15 04:33:48',15),(2,'18','4724','3','20','2015-08-15 04:43:48',15),(3,'19','4724','12','20','2015-08-15 04:53:49',15),(4,'19','4724','12','20','2015-08-15 05:03:49',15),(5,'19','4724','12','20','2015-08-15 05:13:50',15),(6,'19','4724','12','20','2015-08-15 05:23:50',15),(7,'19','4724','12','20','2015-08-15 05:34:10',15),(8,'19','4724','12','20','2015-08-15 05:44:10',15),(9,'19','4724','12','20','2015-08-15 05:54:11',15),(10,'19','4724','2','20','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `bdm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cht`
--

DROP TABLE IF EXISTS `cht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cht` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cht`
--

LOCK TABLES `cht` WRITE;
/*!40000 ALTER TABLE `cht` DISABLE KEYS */;
INSERT INTO `cht` VALUES (1,'7','5071','145','20','2015-08-15 04:33:48',15),(2,'7','5071','145','20','2015-08-15 04:43:48',15),(3,'7','5071','145','20','2015-08-15 04:53:49',15),(4,'7','5071','145','20','2015-08-15 05:03:49',15),(5,'7','5071','145','20','2015-08-15 05:13:50',15),(6,'7','5071','145','20','2015-08-15 05:23:50',15),(7,'7','5071','145','20','2015-08-15 05:34:10',15),(8,'7','5071','145','20','2015-08-15 05:44:10',15),(9,'7','5071','145','20','2015-08-15 05:54:11',15),(10,'7','5071','145','20','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `cht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hsq`
--

DROP TABLE IF EXISTS `hsq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hsq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hsq`
--

LOCK TABLES `hsq` WRITE;
/*!40000 ALTER TABLE `hsq` DISABLE KEYS */;
INSERT INTO `hsq` VALUES (1,'1','9715','3087','50','2015-08-15 04:33:48',15),(2,'1','9715','3087','50','2015-08-15 04:43:48',15),(3,'1','9735','3107','70','2015-08-15 04:53:49',15),(4,'1','9735','3107','70','2015-08-15 05:03:49',15),(5,'1','9735','3107','70','2015-08-15 05:13:50',15),(6,'1','9735','3107','70','2015-08-15 05:23:50',15),(7,'1','9735','3107','70','2015-08-15 05:34:10',15),(8,'1','9745','3117','80','2015-08-15 05:44:10',15),(9,'1','9745','3117','80','2015-08-15 05:54:11',15),(10,'1','9745','3117','80','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `hsq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lfb`
--

DROP TABLE IF EXISTS `lfb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lfb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lfb`
--

LOCK TABLES `lfb` WRITE;
/*!40000 ALTER TABLE `lfb` DISABLE KEYS */;
INSERT INTO `lfb` VALUES (1,'2','6628','787','50','2015-08-15 04:33:48',15),(2,'2','6628','787','50','2015-08-15 04:43:48',15),(3,'2','6628','787','50','2015-08-15 04:53:49',15),(4,'2','6628','787','50','2015-08-15 05:03:49',15),(5,'2','6628','787','50','2015-08-15 05:13:50',15),(6,'2','6628','787','50','2015-08-15 05:23:50',15),(7,'2','6628','787','50','2015-08-15 05:34:10',15),(8,'2','6628','787','50','2015-08-15 05:44:10',15),(9,'2','6628','787','50','2015-08-15 05:54:11',15),(10,'2','6628','787','50','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `lfb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lfc`
--

DROP TABLE IF EXISTS `lfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lfc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lfc`
--

LOCK TABLES `lfc` WRITE;
/*!40000 ALTER TABLE `lfc` DISABLE KEYS */;
INSERT INTO `lfc` VALUES (1,'19','4721','9','30','2015-08-15 04:33:48',15),(2,'19','4721','9','30','2015-08-15 04:43:48',15),(3,'14','4741','3','50','2015-08-15 04:53:49',15),(4,'14','4741','3','50','2015-08-15 05:03:49',15),(5,'14','4741','3','50','2015-08-15 05:13:50',15),(6,'14','4741','3','50','2015-08-15 05:23:50',15),(7,'14','4741','3','50','2015-08-15 05:34:10',15),(8,'14','4741','3','50','2015-08-15 05:44:10',15),(9,'14','4741','3','50','2015-08-15 05:54:11',15),(10,'14','4741','3','50','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `lfc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ljd`
--

DROP TABLE IF EXISTS `ljd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ljd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ljd`
--

LOCK TABLES `ljd` WRITE;
/*!40000 ALTER TABLE `ljd` DISABLE KEYS */;
INSERT INTO `ljd` VALUES (1,'11','4810','26','20','2015-08-15 04:33:48',15),(2,'11','4810','26','20','2015-08-15 04:43:48',15),(3,'11','4810','26','20','2015-08-15 04:53:49',15),(4,'11','4810','26','20','2015-08-15 05:03:49',15),(5,'11','4810','26','20','2015-08-15 05:13:50',15),(6,'11','4810','26','20','2015-08-15 05:23:50',15),(7,'11','4810','26','20','2015-08-15 05:34:10',15),(8,'11','4810','26','20','2015-08-15 05:44:10',15),(9,'11','4810','26','20','2015-08-15 05:54:11',15),(10,'11','4810','26','20','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `ljd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lsl`
--

DROP TABLE IF EXISTS `lsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lsl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lsl`
--

LOCK TABLES `lsl` WRITE;
/*!40000 ALTER TABLE `lsl` DISABLE KEYS */;
INSERT INTO `lsl` VALUES (1,'21','4696','23','20','2015-08-15 04:33:48',15),(2,'21','4696','23','20','2015-08-15 04:43:48',15),(3,'21','4706','23','30','2015-08-15 04:53:49',15),(4,'21','4706','23','30','2015-08-15 05:03:49',15),(5,'21','4706','23','30','2015-08-15 05:13:50',15),(6,'21','4706','23','30','2015-08-15 05:23:50',15),(7,'21','4706','23','30','2015-08-15 05:34:10',15),(8,'21','4706','23','30','2015-08-15 05:44:10',15),(9,'21','4706','23','30','2015-08-15 05:54:11',15),(10,'21','4706','23','30','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `lsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lsq`
--

DROP TABLE IF EXISTS `lsq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lsq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lsq`
--

LOCK TABLES `lsq` WRITE;
/*!40000 ALTER TABLE `lsq` DISABLE KEYS */;
INSERT INTO `lsq` VALUES (1,'14','4738','0','20','2015-08-15 04:33:48',15),(2,'14','4738','0','20','2015-08-15 04:43:48',15),(3,'15','4738','0','20','2015-08-15 04:53:49',15),(4,'15','4738','0','20','2015-08-15 05:03:49',15),(5,'15','4738','0','20','2015-08-15 05:13:50',15),(6,'15','4738','0','20','2015-08-15 05:23:50',15),(7,'15','4738','0','20','2015-08-15 05:34:10',15),(8,'15','4738','0','20','2015-08-15 05:44:10',15),(9,'15','4738','0','20','2015-08-15 05:54:11',15),(10,'15','4738','0','20','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `lsq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luoyf`
--

DROP TABLE IF EXISTS `luoyf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luoyf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luoyf`
--

LOCK TABLES `luoyf` WRITE;
/*!40000 ALTER TABLE `luoyf` DISABLE KEYS */;
INSERT INTO `luoyf` VALUES (1,'20','4712','16','50','2015-08-15 04:33:48',15),(2,'20','4712','16','50','2015-08-15 04:43:48',15),(3,'20','4712','6','50','2015-08-15 04:53:49',15),(4,'20','4712','6','50','2015-08-15 05:03:49',15),(5,'20','4712','6','50','2015-08-15 05:13:50',15),(6,'20','4712','6','50','2015-08-15 05:23:50',15),(7,'20','4712','6','50','2015-08-15 05:34:10',15),(8,'20','4712','6','50','2015-08-15 05:44:10',15),(9,'20','4712','6','50','2015-08-15 05:54:11',15),(10,'20','4722','16','60','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `luoyf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ly`
--

DROP TABLE IF EXISTS `ly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ly`
--

LOCK TABLES `ly` WRITE;
/*!40000 ALTER TABLE `ly` DISABLE KEYS */;
INSERT INTO `ly` VALUES (1,'16','4736','0','0','2015-08-15 04:33:48',15),(2,'16','4736','0','0','2015-08-15 04:43:48',15),(3,'17','4736','0','0','2015-08-15 04:53:49',15),(4,'17','4736','0','0','2015-08-15 05:03:49',15),(5,'17','4736','0','0','2015-08-15 05:13:50',15),(6,'17','4736','0','0','2015-08-15 05:23:50',15),(7,'17','4736','0','0','2015-08-15 05:34:10',15),(8,'17','4736','0','0','2015-08-15 05:44:10',15),(9,'17','4736','0','0','2015-08-15 05:54:11',15),(10,'17','4736','0','0','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `ly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lyf`
--

DROP TABLE IF EXISTS `lyf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lyf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lyf`
--

LOCK TABLES `lyf` WRITE;
/*!40000 ALTER TABLE `lyf` DISABLE KEYS */;
INSERT INTO `lyf` VALUES (1,'22','4673','0','50','2015-08-15 04:33:48',15),(2,'22','4673','0','50','2015-08-15 04:43:48',15),(3,'22','4683','0','60','2015-08-15 04:53:49',15),(4,'22','4683','0','60','2015-08-15 05:03:49',15),(5,'22','4683','0','60','2015-08-15 05:13:50',15),(6,'22','4683','0','60','2015-08-15 05:23:50',15),(7,'22','4683','0','60','2015-08-15 05:34:10',15),(8,'22','4683','0','60','2015-08-15 05:44:10',15),(9,'22','4683','0','60','2015-08-15 05:54:11',15),(10,'22','4683','0','60','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `lyf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lzh`
--

DROP TABLE IF EXISTS `lzh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lzh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lzh`
--

LOCK TABLES `lzh` WRITE;
/*!40000 ALTER TABLE `lzh` DISABLE KEYS */;
INSERT INTO `lzh` VALUES (1,'17','4736','12','20','2015-08-15 04:33:48',15),(2,'17','4736','12','20','2015-08-15 04:43:48',15),(3,'18','4736','12','20','2015-08-15 04:53:49',15),(4,'18','4736','12','20','2015-08-15 05:03:49',15),(5,'18','4736','12','20','2015-08-15 05:13:50',15),(6,'18','4736','12','20','2015-08-15 05:23:50',15),(7,'18','4736','12','20','2015-08-15 05:34:10',15),(8,'18','4736','12','20','2015-08-15 05:44:10',15),(9,'18','4736','12','20','2015-08-15 05:54:11',15),(10,'18','4736','12','20','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `lzh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptw`
--

DROP TABLE IF EXISTS `ptw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptw`
--

LOCK TABLES `ptw` WRITE;
/*!40000 ALTER TABLE `ptw` DISABLE KEYS */;
INSERT INTO `ptw` VALUES (1,'3','5841','14','10','2015-08-15 04:33:48',15),(2,'3','5841','14','10','2015-08-15 04:43:48',15),(3,'3','5841','14','10','2015-08-15 04:53:49',15),(4,'3','5841','14','10','2015-08-15 05:03:49',15),(5,'3','5841','14','10','2015-08-15 05:13:50',15),(6,'3','5841','14','10','2015-08-15 05:23:50',15),(7,'3','5841','14','10','2015-08-15 05:34:10',15),(8,'3','5841','14','10','2015-08-15 05:44:10',15),(9,'3','5841','14','10','2015-08-15 05:54:11',15),(10,'3','5841','14','10','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `ptw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,NULL,'1','1','1','2015-08-15 04:14:40',15),(2,NULL,'9715','3087','50','2015-08-15 04:27:49',15),(3,'1','9735','3107','70','2015-08-15 05:30:31',15),(4,'2','6628','787','50','2015-08-15 05:30:31',15);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wgs`
--

DROP TABLE IF EXISTS `wgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wgs`
--

LOCK TABLES `wgs` WRITE;
/*!40000 ALTER TABLE `wgs` DISABLE KEYS */;
INSERT INTO `wgs` VALUES (1,'12','4784','28','20','2015-08-15 04:33:48',15),(2,'12','4784','28','20','2015-08-15 04:43:48',15),(3,'12','4784','18','20','2015-08-15 04:53:49',15),(4,'12','4784','18','20','2015-08-15 05:03:49',15),(5,'12','4784','18','20','2015-08-15 05:13:50',15),(6,'12','4784','18','20','2015-08-15 05:23:50',15),(7,'12','4784','18','20','2015-08-15 05:34:10',15),(8,'12','4784','18','20','2015-08-15 05:44:10',15),(9,'12','4784','18','20','2015-08-15 05:54:11',15),(10,'12','4784','8','20','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `wgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whm`
--

DROP TABLE IF EXISTS `whm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whm`
--

LOCK TABLES `whm` WRITE;
/*!40000 ALTER TABLE `whm` DISABLE KEYS */;
INSERT INTO `whm` VALUES (1,'6','5143','72','70','2015-08-15 04:33:48',15),(2,'6','5143','72','70','2015-08-15 04:43:48',15),(3,'6','5143','72','70','2015-08-15 04:53:49',15),(4,'6','5143','72','70','2015-08-15 05:03:49',15),(5,'6','5143','72','70','2015-08-15 05:13:50',15),(6,'6','5143','72','70','2015-08-15 05:23:50',15),(7,'6','5143','72','70','2015-08-15 05:34:10',15),(8,'6','5143','72','70','2015-08-15 05:44:10',15),(9,'6','5143','72','70','2015-08-15 05:54:11',15),(10,'6','5143','72','70','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `whm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wjl`
--

DROP TABLE IF EXISTS `wjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wjl`
--

LOCK TABLES `wjl` WRITE;
/*!40000 ALTER TABLE `wjl` DISABLE KEYS */;
INSERT INTO `wjl` VALUES (1,'9','4873','61','20','2015-08-15 04:33:48',15),(2,'9','4873','61','20','2015-08-15 04:43:48',15),(3,'9','4873','61','20','2015-08-15 04:53:49',15),(4,'9','4873','61','20','2015-08-15 05:03:49',15),(5,'9','4873','61','20','2015-08-15 05:13:50',15),(6,'9','4873','61','20','2015-08-15 05:23:50',15),(7,'9','4873','61','20','2015-08-15 05:34:10',15),(8,'9','4883','71','30','2015-08-15 05:44:10',15),(9,'9','4883','71','30','2015-08-15 05:54:11',15),(10,'9','4883','71','30','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `wjl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wxc`
--

DROP TABLE IF EXISTS `wxc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wxc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wxc`
--

LOCK TABLES `wxc` WRITE;
/*!40000 ALTER TABLE `wxc` DISABLE KEYS */;
INSERT INTO `wxc` VALUES (1,'8','4926','53','70','2015-08-15 04:33:48',15),(2,'8','4926','53','70','2015-08-15 04:43:48',15),(3,'8','4926','53','70','2015-08-15 04:53:49',15),(4,'8','4926','53','70','2015-08-15 05:03:49',15),(5,'8','4926','53','70','2015-08-15 05:13:50',15),(6,'8','4926','53','70','2015-08-15 05:23:50',15),(7,'8','4926','53','70','2015-08-15 05:34:10',15),(8,'8','4926','43','70','2015-08-15 05:44:10',15),(9,'8','4926','43','70','2015-08-15 05:54:11',15),(10,'8','4926','43','70','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `wxc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xys`
--

DROP TABLE IF EXISTS `xys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xys`
--

LOCK TABLES `xys` WRITE;
/*!40000 ALTER TABLE `xys` DISABLE KEYS */;
INSERT INTO `xys` VALUES (1,'13','4756','18','40','2015-08-15 04:33:48',15),(2,'13','4756','18','40','2015-08-15 04:43:48',15),(3,'13','4766','25','50','2015-08-15 04:53:49',15),(4,'13','4766','25','50','2015-08-15 05:03:49',15),(5,'13','4766','25','50','2015-08-15 05:13:50',15),(6,'13','4766','25','50','2015-08-15 05:23:50',15),(7,'13','4766','25','50','2015-08-15 05:34:10',15),(8,'13','4766','25','50','2015-08-15 05:44:10',15),(9,'13','4766','25','50','2015-08-15 05:54:11',15),(10,'13','4776','35','60','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `xys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zjl`
--

DROP TABLE IF EXISTS `zjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zjl`
--

LOCK TABLES `zjl` WRITE;
/*!40000 ALTER TABLE `zjl` DISABLE KEYS */;
INSERT INTO `zjl` VALUES (1,'15','4738','2','10','2015-08-15 04:33:48',15),(2,'15','4738','2','10','2015-08-15 04:43:48',15),(3,'16','4738','2','10','2015-08-15 04:53:49',15),(4,'16','4738','2','10','2015-08-15 05:03:49',15),(5,'16','4738','2','10','2015-08-15 05:13:50',15),(6,'16','4738','2','10','2015-08-15 05:23:50',15),(7,'16','4738','2','10','2015-08-15 05:34:10',15),(8,'16','4738','2','10','2015-08-15 05:44:10',15),(9,'16','4738','2','10','2015-08-15 05:54:11',15),(10,'16','4738','2','10','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `zjl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zsy`
--

DROP TABLE IF EXISTS `zsy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zsy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zsy`
--

LOCK TABLES `zsy` WRITE;
/*!40000 ALTER TABLE `zsy` DISABLE KEYS */;
INSERT INTO `zsy` VALUES (1,'5','5203','60','10','2015-08-15 04:33:48',15),(2,'5','5203','60','10','2015-08-15 04:43:48',15),(3,'5','5203','60','10','2015-08-15 04:53:49',15),(4,'5','5203','60','10','2015-08-15 05:03:49',15),(5,'5','5203','60','10','2015-08-15 05:13:50',15),(6,'5','5203','60','10','2015-08-15 05:23:50',15),(7,'5','5203','60','10','2015-08-15 05:34:10',15),(8,'5','5213','70','20','2015-08-15 05:44:10',15),(9,'5','5213','70','20','2015-08-15 05:54:11',15),(10,'5','5223','80','30','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `zsy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zyh`
--

DROP TABLE IF EXISTS `zyh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zyh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zyh`
--

LOCK TABLES `zyh` WRITE;
/*!40000 ALTER TABLE `zyh` DISABLE KEYS */;
INSERT INTO `zyh` VALUES (1,'4','5827','624','10','2015-08-15 04:33:48',15),(2,'4','5827','624','10','2015-08-15 04:43:48',15),(3,'4','5827','624','10','2015-08-15 04:53:49',15),(4,'4','5827','624','10','2015-08-15 05:03:49',15),(5,'4','5827','624','10','2015-08-15 05:13:50',15),(6,'4','5827','624','10','2015-08-15 05:23:50',15),(7,'4','5827','624','10','2015-08-15 05:34:10',15),(8,'4','5827','614','10','2015-08-15 05:44:10',15),(9,'4','5827','614','10','2015-08-15 05:54:11',15),(10,'4','5827','604','10','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `zyh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zyz`
--

DROP TABLE IF EXISTS `zyz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zyz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mingci` varchar(10) DEFAULT NULL,
  `piaoshu` varchar(10) DEFAULT NULL,
  `lingxianpiao` varchar(10) DEFAULT NULL,
  `jinridepiao` varchar(10) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zyz`
--

LOCK TABLES `zyz` WRITE;
/*!40000 ALTER TABLE `zyz` DISABLE KEYS */;
INSERT INTO `zyz` VALUES (1,'10','4812','2','10','2015-08-15 04:33:48',15),(2,'10','4812','2','10','2015-08-15 04:43:48',15),(3,'10','4812','2','10','2015-08-15 04:53:49',15),(4,'10','4812','2','10','2015-08-15 05:03:49',15),(5,'10','4812','2','10','2015-08-15 05:13:50',15),(6,'10','4812','2','10','2015-08-15 05:23:50',15),(7,'10','4812','2','10','2015-08-15 05:34:10',15),(8,'10','4812','2','10','2015-08-15 05:44:10',15),(9,'10','4812','2','10','2015-08-15 05:54:11',15),(10,'10','4812','2','10','2015-08-15 06:04:11',15);
/*!40000 ALTER TABLE `zyz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-15  6:08:11
