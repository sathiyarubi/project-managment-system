-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: project_management_system_development
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'Testing',NULL,'2013-08-01 12:21:01','2013-08-01 12:21:01'),(2,'developing',NULL,'2013-08-01 12:21:11','2013-08-01 12:21:11'),(3,'support',NULL,'2013-08-01 12:21:44','2013-08-01 12:21:44');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'sathiya','chennai','changepond','chennai','tamilnadu','9566164838','621117','2013-08-01 13:34:37','2013-08-14 14:46:27','llllekkan@gmail.comq'),(2,'lee','chennai','changepond','chennai','tamilnadu','9566164838','621117','2013-08-01 13:34:51','2013-08-01 13:34:51',NULL),(3,'leeo','chennai','changepond','chennai','tamilnadu','9566164838','621117','2013-08-01 13:35:08','2013-08-01 13:35:08',NULL),(4,'ajai','perambalur','changepond','chennai','tamilnadu','9566164838','621117','2013-08-01 13:35:20','2013-08-01 13:35:20',NULL),(5,'ramana','andhara','changepond','koondur','andhara','9566164838','621117','2013-08-01 13:35:33','2013-08-01 13:35:33',NULL),(6,'lekkan','trichy','changepond','trichy','tamilnadu','9566164838','845612369','2013-08-01 13:35:44','2013-08-01 13:35:44',NULL),(7,'887435','435234','yu','uy','uy','uy','ui','2013-08-06 05:57:34','2013-08-06 05:57:34',NULL),(8,'sathiya','chennai','changepond','chennai','tamilnadu','9566164838','621117','2013-08-06 07:27:51','2013-08-06 07:27:51',NULL),(9,'sathiya','chennai','changepond','chennai','tamilnadu','9566164838','621117','2013-08-06 10:04:37','2013-08-06 10:04:37','sathiya@gmail.com'),(10,'sathiya','chennai','changepond','chennai','tamilnadu','9566164838','621117','2013-08-08 07:10:56','2013-08-08 07:10:56','llekkan@gmail.comq'),(11,'fdsgsfg','dfsgsdfg','sdfgs','sfdgsd','sdfgds','665651','31561631','2013-08-12 13:50:37','2013-08-12 13:50:37','dfsgsd@gmail.com'),(12,'lee','chennai','changepond','chennai','taminadu','163112','65651212','2013-08-14 07:31:54','2013-08-14 07:31:54','ruby@changepond.com'),(13,'testing','CHENAAI','CHANGEPOND','nil','TAMINADU','1234567891','123456','2013-08-14 10:30:30','2013-08-14 10:30:30','test@gmail.com'),(14,'sdjk','chennai','changepond','nil','kerala','1234567891','123456','2013-08-14 10:31:53','2013-08-14 10:31:53','kd@gmail.com'),(15,'ramana','trichy','changepond','trichy','tamilnadu','9566164838','845612','2013-08-14 14:40:24','2013-08-14 14:40:24','llekkand@gmail.comq'),(16,'sathiya','trichy','changepondd','chennai','tamilnadu','9566164838','845612','2013-08-14 14:43:28','2013-08-14 14:43:28','lllekkand@gmail.comq');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (9,'sathiya raj','mmk@gmail.com','$2a$10$ShEA7/WnFQ4DET8NJID2xefkMUWOyph7O3UTly8yP/LqHmPW1gUHi','kaikalathur,perambalur','Male','2013-08-07','chenni','tamilnadu','621117','9566164838','1','','2013-08-07 13:26:28','2013-08-07 13:26:28'),(10,'ruby','ruby@gmail.com','$2a$10$4UOgo8ERpoqsOyApZYpyD.DGzwxTJSLt9vTJSZchHJPvflISUwRsa','kaikalathur','female','2013-08-09','chennnai','tamilnadu','621117','9566164838','3','5','2013-08-09 12:12:13','2013-08-09 12:12:56'),(12,'mmk','mmmk@gmail.com','$2a$10$bn/RaKqeKWnOJre3bqZ6r.KkBMhfOmyArBvFsu42EXIPnAH4qn2vi','chennai','male','','chenni','tamilnadu','601111','9566164838','3','10','2013-08-12 11:43:58','2013-08-12 11:43:58'),(13,'ajai','lekkan@gmail.comqi','$2a$10$7Fu0Sm2ytfkuz1roJ4RrJussShWef33qCY2JaqzfqfZrLytLfpIWO','chennai','female','1988-08-06','chennai','kerala','621117','9556666666','1','3','2013-08-12 12:19:11','2013-08-12 12:19:11'),(14,'test','testt@gmail.com','$2a$10$Xg/fDyGTxj/u5w2EV091d.yVr7admM1OexalEtOMU2QLoPC1FyhMe','trichy','male','2013-08-13','trichy','tamilnadu','621117','9566164838','1','3','2013-08-12 12:32:24','2013-08-12 12:32:24'),(15,'ror','ror@gmail.com','$2a$10$7K9lxbx1mZMU1kameuWIpeBc1nFJ8wQJTgXw2lkvcYGHDeX0jJrRC','chennai','male','2013-08-13','chennai','tamilnadu','621117','9566164838','1','3','2013-08-12 12:35:52','2013-08-12 12:35:52'),(16,'ruby','rubyy@gmail.com','$2a$10$mVcF7UDqOc4xpQJWV3B89uBAAAHJnIlfojf2zHJZHTgUIsN6cB5SW','chennai','male','2013-08-12','trichy','tamilnadu','621117','9566164838','1','3','2013-08-12 13:23:32','2013-08-12 13:23:32'),(17,'team','team@gmail.com','$2a$10$i5MTe2Rtxpv51q6UNmxxme8q0vzpi8KBBBbyeSjyTyxtrd8kN68sK','chennai','male','','chennai','tamilnadu','621117','9566164838','1','3','2013-08-12 13:24:14','2013-08-12 13:24:14'),(18,'sathiya','sathiyaa@gmail.com','$2a$10$k.2lrouyeeQ27JGBo.J3AOdhBXQ7KhNIc.yXQtPcTxAxDbi325mRi','chennai','male','','chennai','tamilnadu','621117','9566164838','1','3','2013-08-12 13:27:42','2013-08-12 13:27:42'),(19,'sathiya','saathiya@gmail.copm','$2a$10$OS2AAx7hfDo1r4BeeT.cgOJqCUpREzBI0Ej.tJYOO3hSTyc3bOZr2','chennai','male','','chennai','tamilnadu','621117','9566164838','1','3','2013-08-12 13:30:15','2013-08-12 13:30:15'),(20,'rubi','rubi@gmail.com','$2a$10$z.jTlDuzkNLcK2LrrPxQs.q3GPgOPPGAgoSCv6DASTzM5nh5NEjDu','trichy','male','2013-08-12','trichy','tamilnadu','621117','9566164838','1','3','2013-08-12 13:32:45','2013-08-12 13:32:45'),(21,'sathiya','spec@gmail.com','$2a$10$j0kJREFgzEUmyv4qvP9KaedPaKru0n2ftsFWwb6irm6IB0U1Knvbm','chennai','male','2013-08-20','chennai','tamilnadu','621113','9566164838','3','3','2013-08-20 11:12:12','2013-08-20 11:12:12'),(22,'tesst','admin@changepond.com','$2a$10$hdwXz/.QaJwX/Ey7s3gwjuNAW5tT1Ft6y2lR2yan8GIlHxOHVwMXq','chennai','male','2013-08-21','chennai','tamilnadu','621117','9566616483','1','7','2013-08-21 11:06:04','2013-08-23 05:39:59'),(23,'test','test@gmail.com','$2a$10$ayJZQXjVW3yVUF65VHNC.uQszk5EJn/mwM1sjspbKjlMzpEni192.','chennai','male','2013-08-23','chennai','tamilnadu','621117','9566616483','2','21','2013-08-23 08:38:28','2013-08-23 08:38:28'),(24,'test','ttest@gmail.com','$2a$10$onSedZajRDOKQt/sYQ6W3OlBpWXeh1F6Tm.I5QBdvOxRd3Dk3ypfy','chennai','male','2013-08-23','chennai','tamilnadu','621117','9566616483','2','21','2013-08-23 08:39:45','2013-08-23 08:39:45'),(25,'test','tttest@gmail.com','$2a$10$eRHidZYxWCIhjyvJGQVoU.S285P8e8b85VE2dndRHqe5mLm2sxyNq','chennai','male','2013-08-23','chennai','tamilnadu','621117','9566616483','2','21','2013-08-23 08:42:50','2013-08-23 08:42:50'),(26,'test','ttttest@gmail.com','$2a$10$eLXNkJ6hoS37lASf5Yjhi.3dcbStCUrAR.JkThVSM41zDMnZlaDoy','chennai','male','2013-08-23','chennai','tamilnadu','621117','9566616483','2','21','2013-08-23 08:44:17','2013-08-23 08:44:17');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'pms','2013-08-01','2013-08-15','1','2013-08-01 13:36:13','2013-08-01 13:36:13'),(2,'RNT','2013-08-01','2013-08-01','2','2013-08-01 13:36:32','2013-08-01 13:36:32'),(3,'Local sports','2013-08-15','2013-08-14','3','2013-08-01 13:36:52','2013-08-01 13:36:52'),(4,'project management system','2013-08-01','2013-08-01','5','2013-08-01 13:37:11','2013-08-01 13:37:11'),(5,'Local sports','2013-08-01','2013-08-14','4','2013-08-01 13:37:31','2013-08-01 13:37:31'),(6,'sathiyaq','2013-08-09','2013-08-07','1','2013-08-07 11:21:36','2013-08-07 11:21:36'),(7,'ds','2013-08-08','2013-08-15','2','2013-08-07 14:24:15','2013-08-07 14:24:15'),(8,'project management system','2013-08-12','2013-08-12','1','2013-08-12 13:41:38','2013-08-12 13:41:38'),(9,'project management system','2013-08-12','2013-08-12','2','2013-08-12 13:46:56','2013-08-12 13:46:56');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','2013-08-01 12:19:58','2013-08-01 12:19:58'),(2,'Manager','2013-08-01 12:20:10','2013-08-01 12:20:10'),(3,'User','2013-08-01 12:20:25','2013-08-01 12:20:25'),(4,'user','2013-08-06 14:16:37','2013-08-06 14:16:37'),(5,'user','2013-08-06 14:16:49','2013-08-06 14:16:49');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130718111014'),('20130719071402'),('20130719084646'),('20130719084802'),('20130723124013'),('20130723131235'),('20130725123244'),('20130731071153'),('20130806095858'),('20130827060054'),('20130827092258');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet_details`
--

DROP TABLE IF EXISTS `timesheet_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesheet_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sunday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wednesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thursday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saturday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timesheet_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet_details`
--

LOCK TABLES `timesheet_details` WRITE;
/*!40000 ALTER TABLE `timesheet_details` DISABLE KEYS */;
INSERT INTO `timesheet_details` VALUES (1,NULL,NULL,'testing','1','1','1','1','1','1','1','7','1',NULL,'2','3','2013-08-01 13:46:44','2013-08-01 13:46:44'),(2,NULL,NULL,'pms testing','1','1','1','1','1','1','1','7','1',NULL,'1','1','2013-08-01 13:47:18','2013-08-01 13:47:18'),(3,NULL,NULL,'test two','1','1','1','1','1','1','1','7','2',NULL,'2','1','2013-08-01 14:28:55','2013-08-01 14:28:55'),(4,NULL,NULL,'testing','1','','1','1','1','1','','5','3',NULL,'1','2','2013-08-02 07:07:24','2013-08-02 07:07:24'),(5,NULL,NULL,'','1','1','1','','','','','2','2',NULL,'','','2013-08-02 12:40:17','2013-08-02 12:42:39'),(6,NULL,NULL,'','1','1','1','','','','','3','2',NULL,'','','2013-08-02 12:40:17','2013-08-02 12:42:39'),(7,NULL,NULL,'','','','','','','','','','2',NULL,'','','2013-08-02 12:40:17','2013-08-02 12:40:17'),(8,NULL,NULL,'','','','','','','','','','2',NULL,'','','2013-08-02 12:40:17','2013-08-02 12:40:17'),(9,NULL,NULL,'','12','1','1','1','1','1','1','18','1',NULL,'3','2','2013-08-02 12:41:14','2013-08-12 13:54:26'),(10,NULL,NULL,'','1','1','1','1','1','1','','6','4',NULL,'2','2','2013-08-02 12:44:31','2013-08-02 12:44:31'),(11,NULL,NULL,'','1','1','1','1','1','1','','6','1',NULL,'4','2','2013-08-02 12:45:58','2013-08-12 13:54:26'),(14,NULL,NULL,'testing','1','','','','1','','','2','7',NULL,'2','1','2013-08-12 13:53:03','2013-08-12 13:53:03');
/*!40000 ALTER TABLE `timesheet_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheets`
--

DROP TABLE IF EXISTS `timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sunday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wednesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thursday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saturday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `week_start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheets`
--

LOCK TABLES `timesheets` WRITE;
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
INSERT INTO `timesheets` VALUES (1,'1','4','4','4','4','4','1','7','08/05/2013','1',NULL,'2013-08-01 13:46:44','2013-08-02 12:46:55'),(2,'1','1','1','1','1','1','1','7','08/12/2013x','1',NULL,'2013-08-01 14:28:55','2013-08-02 12:42:45'),(3,'1','','1','1','1','1','','5','08/05/2013','1',NULL,'2013-08-02 07:07:23','2013-08-12 13:53:42'),(4,'1','1','1','1','1','1','','6','07/01/2013','1',NULL,'2013-08-02 12:44:31','2013-08-02 12:44:31'),(7,'1','','','','1','','','2','08/12/2013','1',NULL,'2013-08-12 13:53:03','2013-08-12 13:53:21');
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-27 15:57:02
