-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: cs304projectdb
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notificationId` char(40) NOT NULL,
  `trnId` char(40) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `readStatus` tinyint(4) DEFAULT NULL,
  `supplier` char(40) DEFAULT NULL,
  `dealer` char(40) DEFAULT NULL,
  `amountPending` int(32) DEFAULT NULL,
  `dateToday` date DEFAULT NULL,
  `due` enum('late','today','in 3 days') DEFAULT NULL,
  `suppliername` varchar(45) DEFAULT NULL,
  `dealername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`notificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('054d2df8-13a7-4db2-8311-82cc95a74f1d',NULL,1,NULL,NULL,NULL,NULL,'2018-12-25',NULL,NULL,NULL),('493eddf1-7988-4275-868c-a297a5fed950','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'74','73',1111,'2018-12-31','late','comp2','comp'),('4f16bb9e-5554-4652-8185-863f0bf4c39d','bcf0282c-fb01-470b-bc8b-b420b6b862cf',1,NULL,'60','73',11,'2018-12-26','in 3 days','t','comp'),('62e56d4f-c9ed-461d-8c12-16890338c8a6','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'78','73',1111,'2018-12-26','late','Ratnayake company','comp'),('62e938e8-9613-4ce3-8912-43428ea6a38f','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'78','73',1111,'2018-12-27','late','Ratnayake company','comp'),('9acd8b65-6ac4-49db-b21c-c42ca8bc8524',NULL,1,NULL,NULL,NULL,NULL,'2018-12-25',NULL,NULL,NULL),('a52e115c-b82c-4d6f-bfc0-df25f75136be','bcf0282c-fb01-470b-bc8b-b420b6b862cf',1,NULL,'78','73',11,'2018-12-30','in 3 days','Ratnayake company','comp'),('b4058f10-6316-4fcf-a213-92d69a24d9b6',NULL,1,NULL,NULL,NULL,NULL,'2018-12-25',NULL,NULL,NULL),('b74c7b20-307c-4f19-8985-b9d333e7614a',NULL,1,NULL,NULL,NULL,NULL,'2018-12-25',NULL,NULL,NULL),('bb091e2d-7078-4b0b-a6b8-5dc75735d618','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'78','73',1111,'2018-12-30','late','Ratnayake company','comp'),('c6a9535c-a110-4bb4-b6ac-42606d064ee5','bcf0282c-fb01-470b-bc8b-b420b6b862cf',1,NULL,'78','73',11,'2018-12-30','today','Ratnayake company','comp'),('e3ae6fd5-5757-448b-80bf-1c1be6e28a7b','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'78','73',1111,'2018-12-30','today','Ratnayake company','comp'),('f0084b70-92c3-4f1c-8f43-6da78ef9d4ef','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'78','73',1111,'2018-12-25','today','Ratnayake company','comp'),('f991dfec-9ac7-4947-a01f-a6c71cd05d08','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'78','73',1111,'2018-12-25','today','Ratnayake company','comp'),('fb4095a3-042e-4d45-8e8b-476430841b25','e7efee55-13e5-4733-8d55-d1ae161dccd0',1,NULL,'78','73',1111,'2018-12-25','today','Ratnayake company','comp'),('fbb28bbe-9ab2-4fc6-b2c7-5a73ec693e8f',NULL,1,NULL,NULL,NULL,NULL,'2018-12-25',NULL,NULL,NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `postId` char(40) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `postContent` varchar(400) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `postedBy` char(40) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('0634cfb9-e9f8-4dbb-af5d-90b1c79f0b7e',0,'postcontent1','posttitle1','73','2018-12-28 11:00:02'),('1',1,'We are looking for appliances that can make day to day activities at home easier. We also need laptops with better battery power.','Laptops needed','73','2018-11-05 00:00:00'),('2',1,'Looking forward to buy used or new washing machines for reasonable prices.','Washing machines needed','73','2018-11-06 00:00:00'),('2f2697ad-8f41-4ee8-952b-9da0ee2c6451',1,'poct content','post by comp2','74','2018-12-30 22:42:26'),('3',1,'post by userid 72','motorcar needed','71','2018-11-07 00:00:00'),('4',1,'post by userid 70','house needed','70','2018-11-08 00:00:00'),('40183115-7304-42f4-9f22-4d7b08a4b371',0,'postcontent1','posttitle1','73','2018-12-28 10:59:38'),('45fb274a-e389-4d23-8692-53c7f1b9620a',1,'post content','post by supplier5','45fb274a-e389-4d23-8692-53c7f1b9620a','2018-12-30 23:12:00'),('55bf3841-7fc1-48ad-905f-e6d9438b8797',1,'postcontent1','posttitle1','73','2018-12-28 10:56:22'),('64c3e960-a75e-464c-9eee-e3efbb7288a8',0,'postcontent1','posttitle1','73','2018-12-28 11:01:03'),('6d66aa95-e7b9-4f93-90bd-4a2710f1ad68',1,'post content','dealer 7 post 1','6d66aa95-e7b9-4f93-90bd-4a2710f1ad68','2018-12-31 00:19:23'),('6f48c982-a672-4ce8-b04d-9bb815d580ee',1,'post content','post by dealer 6','6f48c982-a672-4ce8-b04d-9bb815d580ee','2018-12-30 23:27:01'),('7dae657f-abee-4121-b9ee-77fcd2f679fc',1,'post 2 content','post 2','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 11:30:31'),('8e60bd63-b380-4d05-b9ad-ad81f4d772d2',0,'postcontent1','posttitle1','73','2018-12-28 10:59:15'),('a888ecbd-ce20-464b-99e6-c56b67eb4f9f',1,'dealer 2 has posted a post! This is it!','Post 1 by dealer 2','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:57:22'),('c78e8cec-d242-48dc-80e7-b947118ed9ee',0,'mypostcontent','mypost','73','2018-12-28 13:47:48');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `subscriptionId` char(40) NOT NULL,
  `subscriber` char(40) DEFAULT NULL,
  `subscribeto` char(40) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES ('05d07eb4-37e1-4c1a-bd1f-0b81aaabefb1','73','22',0),('1','73','71',0),('2','73','70',0),('2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8',0),('2f2697ad-8f41-4ee8-952b-9da0ee2c6451','74','490537aa-33f7-4930-b57a-0b633224f952',0),('2f5f4721-e1e5-4f29-9887-8a172dbad746','73','22',0),('3','74','70',0),('4','74','69',0),('40108e1e-b10c-406b-8adf-bd013fcd6a02','74','63',0),('438e084a-b081-4d94-8e1e-7c1509ca85bd','73','24',1),('44765be8-d45f-4437-984b-0e3acc33aa00','29228202-c9a6-4ca9-badd-7909a3d43341','490537aa-33f7-4930-b57a-0b633224f952',1),('45fb274a-e389-4d23-8692-53c7f1b9620a','45fb274a-e389-4d23-8692-53c7f1b9620a','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8',0),('6d66aa95-e7b9-4f93-90bd-4a2710f1ad68','6d66aa95-e7b9-4f93-90bd-4a2710f1ad68','22',1),('6f48c982-a672-4ce8-b04d-9bb815d580ee','6f48c982-a672-4ce8-b04d-9bb815d580ee','22',0),('89951f48-3a86-413c-be7e-059680ea9929','74','490537aa-33f7-4930-b57a-0b633224f952',0),('90b60474-5c18-4742-9a8f-398ab0571826','73','22',1),('a888ecbd-ce20-464b-99e6-c56b67eb4f9f','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','22',1),('c2276e50-246e-446f-8313-4ed75ead54fd','74','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8',1),('d34c91e0-5cbd-4ca2-89c0-13dcb5947ce2','73','22',0),('d75d676a-f974-4d5e-8355-352fafbfc23b','73','23',1);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionrecord`
--

DROP TABLE IF EXISTS `transactionrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionrecord` (
  `trnId` char(40) NOT NULL,
  `docId` char(40) DEFAULT NULL,
  `trnDescription` varchar(45) DEFAULT NULL,
  `supplier` char(40) DEFAULT NULL,
  `dealer` char(40) DEFAULT NULL,
  `trnDate` datetime DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `trnStatus` enum('Unpaid','partially paid','paid') DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `totalAmount` int(32) DEFAULT NULL,
  `amountSettled` int(32) DEFAULT NULL,
  `amountPending` int(32) DEFAULT NULL,
  PRIMARY KEY (`trnId`),
  KEY `supplier` (`supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionrecord`
--

LOCK TABLES `transactionrecord` WRITE;
/*!40000 ALTER TABLE `transactionrecord` DISABLE KEYS */;
INSERT INTO `transactionrecord` VALUES ('1',NULL,'hair drier,iron','74','73',NULL,'2018-12-30',NULL,NULL,'partially paid',NULL,NULL,1500,3000),('10',NULL,'washine machine','74','73','2018-12-23 10:10:01','2018-12-28','2018-12-23 10:10:01',1,NULL,NULL,20000,NULL,20000),('11',NULL,NULL,NULL,NULL,'2018-12-23 10:16:49','2019-01-01','2018-12-23 10:16:49',1,NULL,NULL,20,NULL,NULL),('12',NULL,NULL,NULL,NULL,'2018-12-23 10:29:47','2019-01-01','2018-12-23 10:29:47',1,NULL,NULL,50,NULL,NULL),('13',NULL,NULL,NULL,NULL,'2018-12-23 11:35:27','2019-01-01','2018-12-23 11:35:27',1,NULL,NULL,22222,NULL,NULL),('14',NULL,NULL,NULL,NULL,'2018-12-23 11:44:00','2019-01-01','2018-12-23 11:44:00',1,NULL,NULL,55,NULL,NULL),('15',NULL,NULL,NULL,NULL,'2018-12-23 19:41:44',NULL,'2018-12-23 19:41:44',1,NULL,NULL,NULL,NULL,NULL),('1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-27 02:16:16',0,'partially paid',NULL,71,NULL,NULL),('2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8',NULL,'Transaction 1 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:16:35','2020-11-11','2018-12-30 21:30:25',0,'partially paid','no remarks',10000,5000,5000),('3',NULL,'guitar','74','73',NULL,'2019-01-01',NULL,NULL,'paid',NULL,NULL,5000,0),('4',NULL,NULL,'74',NULL,'2018-12-19 14:58:23',NULL,'2018-12-19 14:58:23',1,NULL,NULL,NULL,NULL,NULL),('44765be8-d45f-4437-984b-0e3acc33aa00',NULL,NULL,'29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-31 00:25:35','2020-11-11','2018-12-31 00:25:35',1,'partially paid',NULL,996,NULL,NULL),('5',NULL,NULL,'74',NULL,'2018-12-19 15:00:47',NULL,'2018-12-19 15:00:47',1,NULL,NULL,NULL,NULL,NULL),('52e390e8-abb8-4cd8-ac87-2a1a5d8cd26a',NULL,NULL,'74','73','2018-12-24 20:28:37','2018-12-24','2018-12-24 20:28:37',1,'Unpaid',NULL,51000,NULL,NULL),('535473b7-559c-48e4-bf11-089747f931ea',NULL,NULL,'74','d','2018-12-24 20:00:39','2020-11-11','2018-12-24 20:00:39',1,NULL,NULL,111,NULL,NULL),('587ce6f9-fb86-4004-b237-bb46045acd60',NULL,'transaction 2 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:19:21','2020-11-12','2018-12-30 23:29:35',0,'paid','no remarks',20000,20000,0),('6',NULL,'1','74',NULL,'2018-12-19 16:01:42','2019-10-10','2018-12-19 16:01:42',1,'partially paid','1',10,9,1),('6f48c982-a672-4ce8-b04d-9bb815d580ee',NULL,NULL,'29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 23:30:34','2020-11-11','2018-12-31 00:24:50',1,'paid',NULL,1000,1000,NULL),('7',NULL,'5','74','73','2018-12-19 16:01:42','2018-12-21',NULL,1,'Unpaid',NULL,2500,0,2500),('79ec15e3-bd7d-403b-a10a-5f858a28d5f8',NULL,NULL,'74','73','2018-12-24 20:45:12','2020-11-13','2018-12-27 00:09:53',1,'Unpaid',NULL,1000,0,1000),('8',NULL,'black sofa','74','73','2018-12-23 09:40:23','2019-01-02','2018-12-23 09:40:23',1,'partially paid','new sofa first entry',50000,25000,25000),('9',NULL,'toy robot','74','11','2018-12-23 10:03:06','2018-12-28','2018-12-23 10:03:06',1,'partially paid','toy robot for kids',10000,1000,9000),('bcf0282c-fb01-470b-bc8b-b420b6b862cf',NULL,NULL,'74','73','2018-12-24 19:52:41','2018-12-29','2018-12-24 19:52:41',1,'partially paid',NULL,66677,NULL,11),('e7efee55-13e5-4733-8d55-d1ae161dccd0',NULL,NULL,'74','73','2018-12-24 11:25:12','2018-12-25','2018-12-24 11:25:12',1,'Unpaid',NULL,8888,NULL,1111),('ea92db1a-f25b-486b-999c-501dd9aa3a7f',NULL,'paid transaction','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:21:04','2020-11-13','2018-12-30 10:21:04',1,'paid','no remarks',15000,15000,0);
/*!40000 ALTER TABLE `transactionrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cs304projectdb`.`transactionrecord_AFTER_UPDATE` AFTER UPDATE ON `transactionrecord` FOR EACH ROW
BEGIN
	INSERT INTO updatehistory (trnId,trnDescription,supplier,dealer,trnDate,duedate,modifiedDate,trnStatus,remarks,totalAmount,amountSettled,amountPending)
    VALUES 	(OLD.trnId,
            OLD.trnDescription,
            OLD.supplier,
            OLD.dealer,
            OLD.trnDate,
            OLD.duedate,
            OLD.modifiedDate,
            OLD.trnStatus,
            OLD.remarks,
            OLD.totalAmount,
            OLD.amountSettled,
            OLD.amountPending);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `updatehistory`
--

DROP TABLE IF EXISTS `updatehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatehistory` (
  `historyId` int(32) NOT NULL AUTO_INCREMENT,
  `trnId` char(40) DEFAULT NULL,
  `trnDescription` varchar(45) DEFAULT NULL,
  `supplier` char(40) DEFAULT NULL,
  `dealer` char(40) DEFAULT NULL,
  `trnDate` datetime DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `trnStatus` enum('paid','partially paid','Unpaid') DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `totalAmount` int(32) DEFAULT NULL,
  `amountSettled` int(32) DEFAULT NULL,
  `amountPending` int(32) DEFAULT NULL,
  PRIMARY KEY (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatehistory`
--

LOCK TABLES `updatehistory` WRITE;
/*!40000 ALTER TABLE `updatehistory` DISABLE KEYS */;
INSERT INTO `updatehistory` VALUES (1,'79ec15e3-bd7d-403b-a10a-5f858a28d5f8',NULL,'74','73','2018-12-24 20:45:12','2020-11-13','2018-12-26 23:30:01',NULL,'Unpaid',NULL,334,0,521),(2,'79ec15e3-bd7d-403b-a10a-5f858a28d5f8',NULL,'74','73','2018-12-24 20:45:12','2020-11-13','2018-12-27 00:09:53',NULL,'Unpaid',NULL,1000,0,1000),(3,'79ec15e3-bd7d-403b-a10a-5f858a28d5f8',NULL,'74','73','2018-12-24 20:45:12','2020-11-13','2018-12-27 00:09:53',NULL,'Unpaid',NULL,1000,0,1000),(4,'79ec15e3-bd7d-403b-a10a-5f858a28d5f8',NULL,'74','73','2018-12-24 20:45:12','2020-11-13','2018-12-27 00:09:53',NULL,'Unpaid',NULL,1000,0,1000),(5,'1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-24 20:30:43',NULL,NULL,NULL,71000,NULL,NULL),(6,'1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-24 20:30:43',NULL,NULL,NULL,71000,NULL,NULL),(7,'1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-24 20:30:43',NULL,NULL,NULL,71000,NULL,NULL),(8,'1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-27 02:16:16',NULL,'partially paid',NULL,71,NULL,NULL),(9,'1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-27 02:16:16',NULL,'partially paid',NULL,71,NULL,NULL),(10,'1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-27 02:16:16',NULL,'partially paid',NULL,71,NULL,NULL),(11,'1891ad6a-022e-4ef3-9b11-1a024c7b9313',NULL,'74','69','2018-12-24 20:30:43','2020-11-11','2018-12-27 02:16:16',NULL,'partially paid',NULL,71,NULL,NULL),(12,'79ec15e3-bd7d-403b-a10a-5f858a28d5f8',NULL,'74','73','2018-12-24 20:45:12','2020-11-13','2018-12-27 00:09:53',NULL,'Unpaid',NULL,1000,0,1000),(13,'2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','Transaction 1 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:16:35','2020-11-11','2018-12-30 10:16:35',NULL,'Unpaid','no remarks',10000,0,10000),(14,'2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','Transaction 1 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:16:35','2020-11-11','2018-12-30 21:30:25',NULL,'partially paid','no remarks',10000,5000,5000),(15,'2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','Transaction 1 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:16:35','2020-11-11','2018-12-30 21:30:25',NULL,'partially paid','no remarks',10000,5000,5000),(16,'2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','Transaction 1 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:16:35','2020-11-11','2018-12-30 21:30:25',NULL,'partially paid','no remarks',10000,5000,5000),(17,'587ce6f9-fb86-4004-b237-bb46045acd60','transaction 2 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:19:21','2020-11-12','2018-12-30 10:19:21',NULL,'partially paid','no remarks',20000,10000,10000),(18,'587ce6f9-fb86-4004-b237-bb46045acd60','transaction 2 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:19:21','2020-11-12','2018-12-30 23:29:35',NULL,'paid','no remarks',20000,20000,0),(19,'2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','Transaction 1 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:16:35','2020-11-11','2018-12-30 21:30:25',NULL,'partially paid','no remarks',10000,5000,5000),(20,'2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','Transaction 1 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:16:35','2020-11-11','2018-12-30 21:30:25',NULL,'partially paid','no remarks',10000,5000,5000),(21,'1','hair drier,iron','78','73',NULL,'2018-11-05',NULL,NULL,'partially paid',NULL,NULL,1500,3000),(22,'10',NULL,NULL,NULL,'2018-12-23 10:10:01','2019-01-01','2018-12-23 10:10:01',NULL,NULL,NULL,20000,NULL,NULL),(23,'8','black sofa','78','73','2018-12-23 09:40:23','2018-12-25','2018-12-23 09:40:23',NULL,'partially paid','new sofa first entry',50000,25000,25000),(24,'6f48c982-a672-4ce8-b04d-9bb815d580ee',NULL,'29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 23:30:34','2020-11-11','2018-12-30 23:30:34',NULL,'Unpaid',NULL,1000,0,998),(25,'6f48c982-a672-4ce8-b04d-9bb815d580ee',NULL,'29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 23:30:34','2020-11-11','2018-12-31 00:24:50',NULL,'paid',NULL,1000,1000,NULL),(26,'587ce6f9-fb86-4004-b237-bb46045acd60','transaction 2 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:19:21','2020-11-12','2018-12-30 23:29:35',NULL,'paid','no remarks',20000,20000,0),(27,'587ce6f9-fb86-4004-b237-bb46045acd60','transaction 2 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:19:21','2020-11-12','2018-12-30 23:29:35',NULL,'paid','no remarks',20000,20000,0),(28,'587ce6f9-fb86-4004-b237-bb46045acd60','transaction 2 between supplier 1 and dealer 2','29228202-c9a6-4ca9-badd-7909a3d43341','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','2018-12-30 10:19:21','2020-11-12','2018-12-30 23:29:35',NULL,'paid','no remarks',20000,20000,0),(29,'3','guitar','2','73',NULL,'2019-01-01',NULL,NULL,'paid',NULL,NULL,5000,0),(30,'7','5','78','73','2018-12-19 16:01:42','2018-12-21',NULL,NULL,'Unpaid',NULL,2500,0,2500),(31,'4',NULL,NULL,NULL,'2018-12-19 14:58:23',NULL,'2018-12-19 14:58:23',NULL,NULL,NULL,NULL,NULL,NULL),(32,'5',NULL,NULL,NULL,'2018-12-19 15:00:47',NULL,'2018-12-19 15:00:47',NULL,NULL,NULL,NULL,NULL,NULL),(33,'535473b7-559c-48e4-bf11-089747f931ea',NULL,NULL,'d','2018-12-24 20:00:39','2020-11-11','2018-12-24 20:00:39',NULL,NULL,NULL,111,NULL,NULL),(34,'6','1',NULL,NULL,'2018-12-19 16:01:42','2019-10-10','2018-12-19 16:01:42',NULL,'partially paid','1',10,9,1),(35,'9','toy robot','10','11','2018-12-23 10:03:06','2018-12-28','2018-12-23 10:03:06',NULL,'partially paid','toy robot for kids',10000,1000,9000),(36,'52e390e8-abb8-4cd8-ac87-2a1a5d8cd26a',NULL,'78','73','2018-12-24 20:28:37','2018-12-24','2018-12-24 20:28:37',NULL,'Unpaid',NULL,51000,NULL,NULL),(37,'bcf0282c-fb01-470b-bc8b-b420b6b862cf',NULL,'78','73','2018-12-24 19:52:41','2018-12-29','2018-12-24 19:52:41',NULL,'partially paid',NULL,66677,NULL,11),(38,'e7efee55-13e5-4733-8d55-d1ae161dccd0',NULL,'78','73','2018-12-24 11:25:12','2018-12-25','2018-12-24 11:25:12',NULL,'Unpaid',NULL,8888,NULL,1111);
/*!40000 ALTER TABLE `updatehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` char(40) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `userType` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1',1,'rashmi@gmail.com','2018-09-05 09:06:19','2018-09-05 09:06:19','Dealer',''),('10',1,'business5@ymail.com','2018-09-05 22:09:06','2018-09-05 22:09:06','Supplier','$2a$10$PfeXiH0du9ySOoj3L7MQP.KJjc/KreVEEeUDSmnZz3NJVAceEqCS.'),('11',1,'busy@gmail.com','2018-09-06 07:12:51','2018-09-06 07:12:51','Supplier','$2a$10$CsuMqLjezM5VA9zpB2KyyOHQbrKA8qqi6ciGEGg7ZiNc8ZvS2r4bS'),('12',1,'b1@gmail.com','2018-09-06 07:49:32','2018-09-06 07:49:32','Dealer','$2a$10$pATQ/zy9GvvL3eJmwkmeUumBTPY1JGghRuvAr/polUZ5ufW5Wp94a'),('13',1,'b10@g.c','2018-09-06 07:52:41','2018-09-06 07:52:41','Supplier','$2a$10$W3QYQPTL9iMxzgptkXquaOaGY9vsU2aHL1ca3KxZnTeCAgeXKrvIS'),('14',1,'1@g.c','2018-09-06 08:28:53','2018-09-06 08:28:53','Supplier','$2a$10$YtzsyF2/Avpr5qX7o0HKt.Pf5u2nYkGXnW6myDQvpTStNFUl7PODy'),('15',1,'aa@g.c','2018-09-08 08:47:14','2018-09-08 08:47:14','Dealer','$2a$10$iDUXejreDhrBDJUjGQCebu64J/QrvyYiJFXxcLrEUW7i6k1I8XJI6'),('16',1,'a','2018-09-13 18:16:40','2018-09-13 18:16:40','Supplier','$2a$10$doPjxUJpqsce.f..bbGs9OSLFqhJLZ9dnxBUOKwR36dxwj90OmN6W'),('17',1,'company1@gmail.com','2018-09-13 20:22:00','2018-09-13 20:22:00','Supplier','$2a$10$3NzbvdxbBtEPD/DOqrIRQ.kBDjDAdB2YJNziG8ZELcs0dSdM4zY0K'),('17864154-0a80-4f73-9b31-1dbe85da71c7',1,'rat@gmail.com','2018-12-24 00:40:29','2018-12-24 00:40:29','Dealer','$2a$10$tFosDJiwljabhjnAcu7I3OWaZgki2IIrYDYh9.w8LTvBkgvFtE8dK'),('18',1,'company2@gmail.com','2018-09-13 20:35:57','2018-09-13 20:35:57','Dealer','$2a$10$bJUypPhtzPdRKkZEx0gvwejiFWFhdf1Yy82EzF2hkfV1pCgs9vL3a'),('19',1,'company3@gmail.com','2018-09-13 20:47:29','2018-09-13 20:47:29','Supplier','$2a$10$EMoKo0w6plliOY8pzEnFqePFzvrVkpRoLgwnHrsCRs56kvb7eEurK'),('2',1,'b2@gmail.com','2018-09-05 09:19:55','2018-09-05 09:19:55','Supplier',''),('20',1,'company4@gmail.com','2018-09-13 20:49:26','2018-09-13 20:49:26','Supplier','$2a$10$sRtHEP3Hse4UElO6o58tYuX4V7rm3s8pg.Lq493zrD.50hfXO99F2'),('21',1,'company5@gmail.com','2018-09-13 22:05:27','2018-09-13 22:05:27','Supplier','$2a$10$SSD2Y0q6ZNE1mfe7x4Bjq.0Fd.5H../YyyRrn3FeoB3hMJ0YtqXzW'),('22',1,'company5@gmail.com','2018-09-13 22:07:00','2018-09-13 22:07:00','Supplier','$2a$10$M5ZpuPXD8OmfEQZDcZaPvu6ohri7B11CR6rv3xJFhgTdo/zJ54lbq'),('25',1,'company8@gmail.com','2018-09-13 22:19:55','2018-09-13 22:19:55','Supplier','$2a$10$hscxBJmf5fflc6cOBU8srOlAww7s51aiLClVwExLbm1NIwcSlon2e'),('26c2b711-e535-4ea0-bc83-82e03d72841a',1,'tes@gmail.com','2018-12-26 22:53:49','2018-12-26 22:53:49','Dealer','$2a$10$m0Apkd76/AzJNuckdi2oJ.3/tDxiABFFzCUS7jUZ2y/nsOtlx7Q5C'),('28',1,'company02@gmail.com','2018-09-13 23:13:37','2018-09-13 23:13:37','Supplier','$2a$10$Cw4GTdglZIzUb99k.cgliu2qqxxeUUo9qJf.9r9gXjg2IiitQclUK'),('29',1,'company02@gmail.com','2018-09-13 23:31:21','2018-09-13 23:31:21','Supplier','$2a$10$EbsXaNFMVjAlIQ..It9xu.nrF9iS.gb.z5pdyshH0mPQvFGvwjkT.'),('29228202-c9a6-4ca9-badd-7909a3d43341',1,'supplier1@gmail.com','2018-12-30 09:48:32','2018-12-30 09:48:32','Supplier','$2a$10$iyq/EKy8YthuxZDNHdY9mOnGF0MOKWwpXrLUK8BiFfWfzOs6vwS2S'),('2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8',1,'dealer2@gmail.com','2018-12-30 10:02:06','2018-12-30 10:02:06','Dealer','$2a$10$AM4lK6A6xz4aLNO60UE4/.5blXMyXjsIGp/3zwz42D9r/eWkk5jXu'),('3',1,'e@g.c','2018-09-05 11:13:54','2018-09-05 11:13:54','Supplier',''),('30',1,'company02@gmail.com','2018-09-13 23:43:13','2018-09-13 23:43:13','Supplier','$2a$10$F9eiEl.V/StnZWBRHmFAF.7xzRuWhG9onOb2XT.btH..H1c21W5d.'),('31',1,'company02@gmail.com','2018-09-13 23:47:13','2018-09-13 23:47:13','Supplier','$2a$10$vK4hvTSSpAlme2Po0HFyHex3vcos5l8SItoDC0zqmp0AtNPxhdxwu'),('32',1,'company02@gmail.com','2018-09-13 23:49:06','2018-09-13 23:49:06','Supplier','$2a$10$S8Id/Ukx0bBZV21MHburSeYE0EukEIzjOlmz1EveVstqH00w6SOxi'),('33',1,'company03@gmail.com','2018-09-14 18:37:39','2018-09-14 18:37:39','Supplier','$2a$10$bySYdfR6Gg1It9brmsiEGeiinqA.uXrQPDr8yIgLNw.5n9RHYXVZW'),('34',1,'company04@gmail.com','2018-09-14 18:48:21','2018-09-14 18:48:21','Supplier','$2a$10$K2Bl7rKkrGwvhlP8ISjvxuuGJq2AxLlBa4H3frCI3ycd69Cs2.R5S'),('35',1,'company04@gmail.com','2018-09-14 18:52:40','2018-09-14 18:52:40','Supplier','$2a$10$y7EDQbzalOfEK/D.w7WgNeYrsyTK71RNb.7XEowjsy5hWtEmg5eX2'),('36',1,'company04@gmail.com','2018-09-14 19:47:52','2018-09-14 19:47:52','Supplier','$2a$10$IoMDNXn8CCs3vMssFEFm4eQimdo1ZNksoPT0bbl7fVAjwswhh1apq'),('37',1,'company04@gmail.com','2018-09-14 19:49:23','2018-09-14 19:49:23','Supplier','$2a$10$8jwBObhAIsG1MzQFsCX0CetXZdHGzwLHLGo.y325qYp09FFc3B2R.'),('38',1,'company04@gmail.com','2018-09-14 19:52:55','2018-09-14 19:52:55','Supplier','$2a$10$.gT.D4iPaxczXCMH462MIuy4h.UgCHqtsoZwqZSxBjjO/Nc0E3WW6'),('39',1,'company04@gmail.com','2018-09-14 19:58:21','2018-09-14 19:58:21','Supplier','$2a$10$7fj3ZS7Slxwzbgf048FSbuRL4Wl9L/37Lewg7GK0HT7SWQg7WUWKe'),('4',1,'1@g.c','2018-09-05 12:19:53','2018-09-05 12:19:53','Supplier',''),('40',1,'company04@gmail.com','2018-09-14 20:01:51','2018-09-14 20:01:51','Supplier','$2a$10$flar.nwDaRn8.VgyfY7Fae3szKt82dKPXhbouWYT0iYWWGUX6QTBS'),('41',1,'company04@gmail.com','2018-09-14 20:03:58','2018-09-14 20:03:58','Supplier','$2a$10$Z0JC7a0ZppmfpYzGFSeYJOxjk7g.dm0LXcOf8VDzkR5XmYNEWcle6'),('42',1,'company04@gmail.com','2018-09-14 20:39:55','2018-09-14 20:39:55','Supplier','$2a$10$gaH.r8T56KiGvlKdwConR./vZ2pJRG/N1b4Sm5IOWhHatFeeNraNm'),('43',1,'company04@gmail.com','2018-09-14 20:40:34','2018-09-14 20:40:34','Supplier','$2a$10$QR2OcA55d5WMyY1ytZaLg.Jrxrj9PnpWAWVMTQwFUmRD./VYar/y.'),('44',1,'company04@gmail.com','2018-09-14 20:57:33','2018-09-14 20:57:33','Supplier','$2a$10$RxnYfMo/zom8qZVwSsDmceXe77s.9a9Ge7FNrfsSA0tG3iLXz0g3K'),('45',1,'company04@gmail.com','2018-09-14 20:59:33','2018-09-14 20:59:33','Supplier','$2a$10$UvvctXVOicjAEPD7OKJu3ezW5ee8kphKi8XZ6xa5OJcHVurCJZf1W'),('45c77717-ac01-435d-8d88-3a0b882a06f8',1,'rashmi1@gmail.com','2018-12-24 00:33:25','2018-12-24 00:33:25','Supplier','$2a$10$q0SvwLZpPjGi9db6ackODOlwlj5iOBFcBgv/LuEu6pezhnC3uQADu'),('45fb274a-e389-4d23-8692-53c7f1b9620a',1,'supplier5@gmail.com','2018-12-30 23:10:23','2018-12-30 23:10:23','Supplier','$2a$10$VQxhJSfTd3BM1o0IK1zN..nuTSSnuhoe2Ill7a7wQ2bZPwYNRTd8u'),('46',1,'company04@gmail.com','2018-09-14 21:00:25','2018-09-14 21:00:25','Supplier','$2a$10$ijTDeWLw1AGAbDMUPpQX.Olf7irn/2nCfk/35ebFkqnw95U5GPkae'),('47',1,'company04@gmail.com','2018-09-14 21:02:25','2018-09-14 21:02:25','Supplier','$2a$10$2zo7T52Z4DToGCXQxBq81.c5l7NhQy.3SKY1fNj2nEu6uR5P4dJiC'),('48',1,'company04@gmail.com','2018-09-14 21:09:49','2018-09-14 21:09:49','Supplier','$2a$10$I0VHwN2qq3kHtT6LjtuV7.P4Dc6m0EYcAwr71LkgMnMB29sQd753u'),('49',1,'company04@gmail.com','2018-09-14 21:11:49','2018-09-14 21:11:49','Supplier','$2a$10$bvTX6NhYEcAL9S1.Ca7SbO4nlyeQDuwya55.FEPdaomyWu7G7kDa2'),('490537aa-33f7-4930-b57a-0b633224f952',1,'tes@gmail.com','2018-12-26 22:56:14','2018-12-26 22:56:14','Dealer','$2a$10$0j6b9kT9SCtCfli.2ITeVuIfXnQoiTedPtBJxTYj3g2.kJ6cgd6oa'),('5',1,'b5@g.c','2018-09-05 12:47:08','2018-09-05 12:47:08','Supplier','$2a$10$dOCt/T2UrenC/GPszBLGXeKdErk9RBy7ww5aNMBLfta2KklN/jUtK'),('50',1,'company04@gmail.com','2018-09-14 21:15:24','2018-09-14 21:15:24','Supplier','$2a$10$cOBcvajJjP8D8DjgBL6FNeTZOgwA7SSN7CQ/zG45RCYKTkyc5HVE2'),('5054c33a-ac80-4670-aec2-289fd1cb9584',1,'rashmi@gmail.com','2018-12-24 00:25:14','2018-12-24 00:25:14','Supplier','$2a$10$xVxlOJa53/N2owmIOAZhZ.Ft.ww1CZbi7y7gMTt8g1J/eiU4zyLdq'),('51',1,'company04@gmail.com','2018-09-14 21:17:12','2018-09-14 21:17:12','Supplier','$2a$10$B3J70d/tFWyXpNBCxnitc.RudaCxMUO6radOPcC2KD4iyCopYXDae'),('52',1,'company04@gmail.com','2018-09-14 21:17:28','2018-09-14 21:17:28','Supplier','$2a$10$cVNevxRGI1X3meaOSa436uj4wO8xmVqX2DwbT65n29/GQ//psz0xS'),('528b0dbe-095c-451d-9617-259bc3ee50cd',1,'battoo@gmail.com','2018-12-24 00:45:21','2018-12-24 00:45:21','Dealer','$2a$10$9pctYTYVxOXtIK5l2VidfOvC/lub1WqKFGuua5SYkL478tQOKX.Ya'),('53',1,'company04@gmail.com','2018-09-14 21:17:49','2018-09-14 21:17:49','Supplier','$2a$10$1lI1erS8FxvL9gilVBnC1OK2GODLb5OYWv/Laug8SC37G81kZBsdC'),('54',1,'company04@gmail.com','2018-09-14 21:18:04','2018-09-14 21:18:04','Supplier','$2a$10$N3sTfHW9NkO5lo/yY/VlLe0nVpwT0fGLfYUeWhU5070QEdd9jDb8y'),('55',1,'company04@gmail.com','2018-09-14 21:18:04','2018-09-14 21:18:04','Supplier','$2a$10$l.eTOs4pWv0eICprf.sV8.dQPaXvtzWwGEpYpW6RMQ4mypdP6EuvG'),('56',1,'company04@gmail.com','2018-09-14 21:18:22','2018-09-14 21:18:22','Supplier','$2a$10$Yud96naflGNGSqh0xsDZe.7Wm3DJsDo2BHeh3KzPJUZkaKD10fMoS'),('57',1,'company04@gmail.com','2018-09-15 08:42:56','2018-09-15 08:42:56','Supplier','$2a$10$cMYcxyePyxvJSxagWbl5TeZWHL8Fjzt.FR6EYJqrOVUKAo5YotDvG'),('589ad2a4-66d9-4ddd-b791-f2e2f90d2496',1,'rat@gmail.com','2018-12-24 00:37:25','2018-12-24 00:37:25','Dealer','$2a$10$pam5QbZRz88Ty4P3ZFaQYO5tS0Th84.ZuuPyffDBr.fEt4TlSEuxu'),('59',1,'dd','2018-09-17 18:07:44','2018-09-17 18:07:44','Supplier','$2a$10$L7ufIAbwfwuX7mamyOe67eMT/J9vanyzM7dFKWXgqBTIkmxnIbq42'),('6',1,'a@g.c','2018-09-05 18:18:19','2018-09-05 18:18:19','Supplier','$2a$10$isMIl5agu5/Zjv4owGO/s.hvmy/I0oubyq.UFYv01i8pTal5qY1j.'),('60',1,'t','2018-09-22 19:55:12','2018-09-22 19:55:12','Supplier','$2a$10$Iq9pjKaQYAykefrLqoCfBOcgU5ufl644zoTVLh5n0qmwdg1CpV/Qq'),('61',1,'compy@gmail.com','2018-10-14 08:11:52','2018-10-14 08:11:52','Supplier','$2a$10$Cyt6LUfoLh4IVRVFeHDaaeR/7uN/j4d1OACtgHDig/7Ck2CR8eqHy'),('63',1,'cc','2018-10-14 10:33:29','2018-10-14 10:33:29','Dealer','$2a$10$pOKuzIxHfeimUMVt2aL.6u.KPoyTFdciW.oHu5QlP5y05rtgjb3kq'),('64',1,'cc','2018-10-14 10:40:23','2018-10-14 10:40:23','Supplier','$2a$10$SoS6ixl98VlzSPktdg/Ziu1fCQhG4iPQAW4XPX.Lh4IvzYzao9Qqq'),('65',1,'abc','2018-10-22 23:42:23','2018-10-22 23:42:23','Supplier','$2a$10$3/cj9dtkS8iheVNlYO.sx.FX4A0ekE40mot9F5Qz.AolAjy8yS25y'),('66',1,'rashmi','2018-10-28 00:08:35','2018-10-28 00:08:35','Supplier','$2a$10$gHmLYrZssjZ9xP2UmpmaJuut9UPy0f5hJe2KCwQpyDdBWgZ6iBAJu'),('67',1,'erandika','2018-10-28 00:13:32','2018-10-28 00:13:32','Dealer','$2a$10$g3FpeXMV1Rch2IIQj5.kkuIUHRaUpWT9ySLQXoJoyCZL5/Bycqdd.'),('68',1,'a','2018-10-28 00:15:24','2018-10-28 00:15:24','Supplier','$2a$10$nsb98cEIdOM2wV.o6UgOPui1QUo0t7GC0d6sTiJnotn2SC7qz7cHC'),('69',1,'b','2018-10-28 00:16:27','2018-10-28 00:16:27','Dealer','$2a$10$mgJjDwUxW0Z6BOMtaABkuePH6o3QZm1uj1jRnFITOTiyLivi9.lza'),('6d66aa95-e7b9-4f93-90bd-4a2710f1ad68',1,'dealer7@gmail.com','2018-12-31 00:18:11','2018-12-31 00:18:11','Dealer','$2a$10$FONo/Ej0QDszEYMgJ1mjOe9BRLs9vhtJLnOqq2EAO9tcmJacAblOK'),('6f48c982-a672-4ce8-b04d-9bb815d580ee',1,'dealer6@gmail.com','2018-12-30 23:25:32','2018-12-30 23:25:32','Dealer','$2a$10$Fhr880BAHITNWtWmeFlneuoBsm3AYbXeWK5SNlgohvjfjklc5ki1i'),('7',1,'rash1@g.c','2018-09-05 18:29:44','2018-09-05 18:29:44','Supplier','$2a$10$WYuPXhYWtxEAcS/R/zGOaOC6TMyTDvkOKeNjx2i40ASik40q73giW'),('70',1,'d','2018-10-28 00:18:49','2018-10-28 00:18:49','Supplier','$2a$10$aE5x5Cd7GWLzywQYdUeBm.A1mVF6r.lAwjuPLOjPeNcZTSIHra.Ne'),('71',1,'g','2018-10-28 00:24:01','2018-10-28 00:24:01','Supplier','$2a$10$TFyObGIUFnXCvhng4Hex.ePXKdi6M1009POXoITN6L/YLof1vSE9G'),('72',1,'bb','2018-12-05 10:38:42','2018-12-05 10:38:42','Supplier','$2a$10$i5Plk5BFKWXJgimMFx00d.0Myv26roBR.I3o/Cvk3MCNyfckk6mD.'),('73',1,'comp','2018-12-05 10:45:22','2018-12-05 10:45:22','Dealer','$2a$10$tZd5iJeI1h4PsX1t9DsR9ewPWcTuyCbcFLot9kT6yKlaXesmzTl42'),('74',1,'comp2','2018-12-16 00:33:56','2018-12-16 00:33:56','Supplier','$2a$10$0U54Nu.FJs7pU6hddDmYCu4iXYDGprOhbjdF.Dr88cB4bu.juLkw.'),('8',1,'a@gma.c','2018-09-05 20:43:21','2018-09-05 20:43:21','Supplier','$2a$10$ag6eNV.8/oD8oYtBZBe8AOJDVt5D2ATat6YF3v0LyLv.sv1zMzH7e'),('8fa9c888-3b6e-49fd-97f1-5ed190a7ff14',1,'tes@gmail.com','2018-12-26 22:54:50','2018-12-26 22:54:50','Dealer','$2a$10$KC.5izSP66RT3bG7gP00suOWsQdGKU5t1UxGzqynwts8gZQP36TC2'),('9',1,'rashmi@gmail.com','2018-09-05 21:56:36','2018-09-05 21:56:36','Dealer','$2a$10$JDntwAdz0aJci0AD3tb9lOgRltTYSOgPXwakllblnIjBBRteDFlJC'),('9182b0bf-8bca-4e30-b6f6-4a1b572af457',1,'dealer1@gmail.com','2018-12-30 10:00:27','2018-12-30 10:00:27','Dealer','$2a$10$UG5h5s0Hpp8unAksE8aWuuFu0WVOTzT2bwf2e94TdiLlA8kpamPXa'),('a5e2fcba-c6f1-4334-b9c9-dca6db610787',1,'rashmi@gmail.com','2018-12-24 00:31:29','2018-12-24 00:31:29','Supplier','$2a$10$fhKexIC0jn/9nRjbpcQOMulaJFjoI/7bYoYHc7oX.2rnAL0/Sa4YC'),('b2c7ba30-ae43-44aa-a201-f599cecc6a93',1,'supplier2@gmail.com','2018-12-30 09:57:15','2018-12-30 09:57:15','Supplier','$2a$10$ICwtT6TdMARsVS9ny00/fuPPvPhg7SEn5F5JizYCcaJl4EFvICbgC'),('bfd22693-9610-4013-a567-0fb7bde8999e',1,'r@gmail.com','2018-12-26 22:40:52','2018-12-26 22:40:52','Supplier','$2a$10$uYkKwaAMSZO7iH1cDwV7K.4TFsToms.GIKlHVXTJ1JAWJmQbl.FWS'),('c3a6ef97-cdae-4d2d-aa15-045528908eb1',1,'rattoo@gmail.com','2018-12-24 00:42:28','2018-12-24 00:42:28','Dealer','$2a$10$MoSdpmvEXL2nWW6mVXl3DOCvkyTrcN3YYFCVl1YCSfsjabF1URA.u'),('cd26de51-8449-4369-b33f-addc78ca4169',1,'r@gmail.com','2018-12-26 22:41:59','2018-12-26 22:41:59','Supplier','$2a$10$VlvkzOFxU731a0RzK8btR.GKGSmOIhuVlihEhBxCChxvmZ96QSkFe'),('d8f28fcc-5217-4c28-ac8c-eec35277d14b',1,'tes@gmail.com','2018-12-26 22:53:15','2018-12-26 22:53:15','Dealer','$2a$10$nbA/RNBnBTsxJnHW6UekNOP7IpjIjDHVNuK8Dc5Ecl0AeS0XD0n9e'),('e8e4bf74-fafa-4692-841e-00dadf53bc75',1,'rashmi1@gmail.com','2018-12-24 00:34:23','2018-12-24 00:34:23','Supplier','$2a$10$PsXCuPoJKubZCSfTL5FTCuWcjcjmeRs3Tsqaxm410d5eyPTZEe1.C'),('[object Object]',1,'rashmi@gmail.com','2018-12-24 00:26:22','2018-12-24 00:26:22','Supplier','$2a$10$4KcuiYFQwGEQpHuZpeVCqu1fcaiS2hdfv1AwURX.bVbr1FdIVm5Pm');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userattributes`
--

DROP TABLE IF EXISTS `userattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userattributes` (
  `attributesId` char(40) NOT NULL,
  `businessName` varchar(45) DEFAULT NULL,
  `businessAddress` varchar(200) DEFAULT NULL,
  `contactName` varchar(50) DEFAULT NULL,
  `contactNo` int(11) DEFAULT NULL,
  `contactEmail` varchar(100) DEFAULT NULL,
  `contactDesignation` varchar(45) DEFAULT NULL,
  `tagline` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `accountNo` varchar(45) DEFAULT NULL,
  `accountName` varchar(45) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `User_userId` char(40) DEFAULT NULL,
  PRIMARY KEY (`attributesId`),
  KEY `User_userId` (`User_userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userattributes`
--

LOCK TABLES `userattributes` WRITE;
/*!40000 ALTER TABLE `userattributes` DISABLE KEYS */;
INSERT INTO `userattributes` VALUES ('1','supplier 4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22'),('10','dd',NULL,NULL,1,NULL,NULL,NULL,'dd',NULL,NULL,NULL,'2018-09-17 18:07:44','2018-09-17 18:07:44','59'),('11','t',NULL,NULL,17,NULL,NULL,NULL,'t',NULL,NULL,NULL,'2018-09-22 19:55:12','2018-09-22 19:55:12','60'),('12','compy',NULL,NULL,11,NULL,NULL,NULL,'adad',NULL,NULL,NULL,'2018-10-14 08:11:52','2018-10-14 08:11:52','61'),('15','cc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-14 10:40:23','2018-10-14 10:40:23','64'),('16','abc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-22 23:42:23','2018-10-22 23:42:23','65'),('17','rashmi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-28 00:08:35','2018-10-28 00:08:35','66'),('18','erandika',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-28 00:13:32','2018-10-28 00:13:32','67'),('19','a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-28 00:15:24','2018-10-28 00:15:24','68'),('20','b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-28 00:16:27','2018-10-28 00:16:27','69'),('21','d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-28 00:18:49','2018-10-28 00:18:49','70'),('22','bla',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-28 00:24:01','2018-10-28 00:24:01','71'),('23','bb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-05 10:38:42','2018-12-05 10:38:42','72'),('24','comp','No.109,Kandy Street, Kandy','Rashmi',771881181,'rashmi1rathnayake@gmail.com',NULL,'Goods for every home','We are a company that provide like household electrical appliances to retailers all over Sri Lanka. Feel free to message and tell us what you would like to purchase.','Peoples Bank','12345678910','Ratnayake','2018-12-29 12:58:49','2018-12-05 10:45:22','73'),('25','comp2',NULL,NULL,NULL,'rashmi1ratnayake@gmail.com',NULL,NULL,'this is a supplier company with anything you want to buy',NULL,NULL,NULL,'2018-12-16 00:33:56','2018-12-16 00:33:56','74'),('29228202-c9a6-4ca9-badd-7909a3d43341','Supplier Company 1',NULL,NULL,771111111,NULL,NULL,NULL,'The is number one supplier company.',NULL,NULL,NULL,'2018-12-30 09:48:32','2018-12-30 09:48:32','29228202-c9a6-4ca9-badd-7909a3d43341'),('2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8','Dealer Company 2','dealer 2, kandy, sri lanka','dealer2',812222222,'dealer2@gmail.com',NULL,'Best dealer 2 ever!','This is number 2 dealer company.','Peoples Bank','null','null','2018-12-30 11:15:48','2018-12-30 10:02:06','2aa7fdab-de2c-4e4d-9b1d-20438a5c05a8'),('45fb274a-e389-4d23-8692-53c7f1b9620a','supplier5',NULL,NULL,12345,NULL,NULL,NULL,'supplier5\'s account',NULL,NULL,NULL,'2018-12-30 23:10:23','2018-12-30 23:10:23','45fb274a-e389-4d23-8692-53c7f1b9620a'),('490537aa-33f7-4930-b57a-0b633224f952','tes',NULL,NULL,11,NULL,NULL,'tttttt','afafae',NULL,NULL,NULL,'2018-12-26 22:56:14','2018-12-26 22:56:14','490537aa-33f7-4930-b57a-0b633224f952'),('6','tes1',NULL,NULL,12,NULL,NULL,NULL,'tess',NULL,NULL,NULL,NULL,NULL,'35'),('6d66aa95-e7b9-4f93-90bd-4a2710f1ad68','Dealer Company 7','No.109,Kandy Street, Kandy','null',11111,'rashm@gmail.com',NULL,'Goods for every need','dealer 7 acc','null','null','null','2018-12-31 00:18:59','2018-12-31 00:18:11','6d66aa95-e7b9-4f93-90bd-4a2710f1ad68'),('6f48c982-a672-4ce8-b04d-9bb815d580ee','Dealer company 6','No.109,Kandy Street, Kandy','null',711111111,'rashmi1rathnayake@gmail.com',NULL,'Goods for every home','dealer 6 companyyy','null','null','null','2018-12-30 23:26:30','2018-12-30 23:25:32','6f48c982-a672-4ce8-b04d-9bb815d580ee'),('7','company04',NULL,NULL,123,NULL,NULL,NULL,'company04 description',NULL,NULL,NULL,'2018-09-14 21:18:22','2018-09-14 21:18:22','56'),('8','company04',NULL,NULL,123,NULL,NULL,NULL,'company04 description',NULL,NULL,NULL,'2018-09-15 08:42:56','2018-09-15 08:42:56','57'),('9182b0bf-8bca-4e30-b6f6-4a1b572af457','Dealer Company 1',NULL,NULL,812422000,NULL,NULL,NULL,'This is number 1 dealer company.',NULL,NULL,NULL,'2018-12-30 10:00:27','2018-12-30 10:00:27','9182b0bf-8bca-4e30-b6f6-4a1b572af457'),('b2c7ba30-ae43-44aa-a201-f599cecc6a93','Supplier Company 2',NULL,NULL,771881111,NULL,NULL,NULL,'This is number 2 supplier company.',NULL,NULL,NULL,'2018-12-30 09:57:15','2018-12-30 09:57:15','b2c7ba30-ae43-44aa-a201-f599cecc6a93'),('dde48405-f98e-4853-834a-1fc56740ea88','Ratnayake company',NULL,NULL,1,'sudeepaudeshaka@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-24 00:45:21','2018-12-24 00:45:21','78');
/*!40000 ALTER TABLE `userattributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-03 11:58:17
