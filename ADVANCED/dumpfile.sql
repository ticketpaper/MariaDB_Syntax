-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `address` varchar(255) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `name_index` (`name`),
  KEY `name_email_index` (`name`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES
(1,'KIM',NULL,NULL,'user',NULL,10),
(2,'RYU','RYU@naver.com','369','user',NULL,20),
(3,'LEE',NULL,NULL,'admin',NULL,30),
(4,'GEE','',NULL,'user',NULL,25),
(9,'test','test@naver,com',NULL,'user',NULL,11);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `author_view`
--

DROP TABLE IF EXISTS `author_view`;
/*!50001 DROP VIEW IF EXISTS `author_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `author_view` AS SELECT
 1 AS `name`,
  1 AS `email` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `contents` varchar(3000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `price` decimal(10,3) DEFAULT NULL,
  `created_time` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_author_fk` (`author_id`),
  CONSTRAINT `post_author_fk` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
(23,'hello wolrd0','hello wolrd0',1,500.000,'2023-11-22 16:36:12'),
(24,'hello wolrd1','hello wolrd1',2,1500.000,'2023-11-22 16:36:12'),
(25,'hello wolrd2','hello wolrd2',3,2000.000,'2023-11-22 16:36:12'),
(26,'hello wolrd3','hello wolrd3',4,NULL,'2023-11-22 16:36:12'),
(27,'hello wolrd4','hello wolrd4',NULL,NULL,'2023-11-22 16:36:12'),
(28,'hello wolrd5','hello wolrd5',NULL,NULL,'2023-11-22 16:36:12'),
(29,'hello wolrd6','hello wolrd6',NULL,NULL,'2023-11-22 16:36:12'),
(30,'hello wolrd7','hello wolrd7',NULL,NULL,'2023-11-22 16:36:12'),
(31,'hello wolrd8','hello wolrd8',NULL,NULL,'2023-11-22 16:36:12'),
(32,'hello wolrd9','hello wolrd9',NULL,NULL,'2023-11-22 16:36:12'),
(33,'hello wolrd10','hello wolrd10',NULL,NULL,'2023-11-22 16:36:12'),
(34,'hello wolrd11','hello wolrd11',NULL,NULL,'2023-11-22 16:36:12'),
(35,'hello wolrd12','hello wolrd12',NULL,NULL,'2023-11-22 16:36:12'),
(36,'hello wolrd13','hello wolrd13',NULL,NULL,'2023-11-22 16:36:12'),
(37,'hello wolrd14','hello wolrd14',NULL,NULL,'2023-11-22 16:36:12'),
(38,'hello wolrd15','hello wolrd15',NULL,NULL,'2023-11-22 16:36:12'),
(39,'hello wolrd16','hello wolrd16',NULL,NULL,'2023-11-22 16:36:12'),
(40,'hello wolrd17','hello wolrd17',NULL,NULL,'2023-11-22 16:36:12'),
(41,'hello wolrd18','hello wolrd18',NULL,NULL,'2023-11-22 16:36:12'),
(42,'hello wolrd19','hello wolrd19',NULL,NULL,'2023-11-22 16:36:12'),
(43,'hello wolrd20','hello wolrd20',NULL,NULL,'2023-11-22 16:36:12'),
(44,'hello wolrd21','hello wolrd21',NULL,NULL,'2023-11-22 16:36:12'),
(45,'hello wolrd22','hello wolrd22',NULL,NULL,'2023-11-22 16:36:12'),
(46,'hello wolrd23','hello wolrd23',NULL,NULL,'2023-11-22 16:36:12'),
(47,'hello wolrd24','hello wolrd24',NULL,NULL,'2023-11-22 16:36:12'),
(48,'hello wolrd25','hello wolrd25',NULL,NULL,'2023-11-22 16:36:12'),
(49,'hello wolrd26','hello wolrd26',NULL,NULL,'2023-11-22 16:36:12'),
(50,'hello wolrd27','hello wolrd27',NULL,NULL,'2023-11-22 16:36:12'),
(51,'hello wolrd28','hello wolrd28',NULL,NULL,'2023-11-22 16:36:12'),
(52,'hello wolrd29','hello wolrd29',NULL,NULL,'2023-11-22 16:36:12'),
(53,'hello wolrd30','hello wolrd30',NULL,NULL,'2023-11-22 16:36:12'),
(54,'hello wolrd31','hello wolrd31',NULL,NULL,'2023-11-22 16:36:12'),
(55,'hello wolrd32','hello wolrd32',NULL,NULL,'2023-11-22 16:36:12'),
(56,'hello wolrd33','hello wolrd33',NULL,NULL,'2023-11-22 16:36:12'),
(57,'hello wolrd34','hello wolrd34',NULL,NULL,'2023-11-22 16:36:12'),
(58,'hello wolrd35','hello wolrd35',NULL,NULL,'2023-11-22 16:36:12'),
(59,'hello wolrd36','hello wolrd36',NULL,NULL,'2023-11-22 16:36:12'),
(60,'hello wolrd37','hello wolrd37',NULL,NULL,'2023-11-22 16:36:12'),
(61,'hello wolrd38','hello wolrd38',NULL,NULL,'2023-11-22 16:36:12'),
(62,'hello wolrd39','hello wolrd39',NULL,NULL,'2023-11-22 16:36:12'),
(63,'hello wolrd40','hello wolrd40',NULL,NULL,'2023-11-22 16:36:12'),
(64,'hello wolrd41','hello wolrd41',NULL,NULL,'2023-11-22 16:36:12'),
(65,'hello wolrd42','hello wolrd42',NULL,NULL,'2023-11-22 16:36:12'),
(66,'hello wolrd43','hello wolrd43',NULL,NULL,'2023-11-22 16:36:12'),
(67,'hello wolrd44','hello wolrd44',NULL,NULL,'2023-11-22 16:36:12'),
(68,'hello wolrd45','hello wolrd45',NULL,NULL,'2023-11-22 16:36:12'),
(69,'hello wolrd46','hello wolrd46',NULL,NULL,'2023-11-22 16:36:12'),
(70,'hello wolrd47','hello wolrd47',NULL,NULL,'2023-11-22 16:36:12'),
(71,'hello wolrd48','hello wolrd48',NULL,NULL,'2023-11-22 16:36:12'),
(72,'hello wolrd49','hello wolrd49',NULL,NULL,'2023-11-22 16:36:12'),
(73,'hello wolrd50','hello wolrd50',NULL,NULL,'2023-11-22 16:36:12'),
(74,'hello wolrd51','hello wolrd51',NULL,NULL,'2023-11-22 16:36:12'),
(75,'hello wolrd52','hello wolrd52',NULL,NULL,'2023-11-22 16:36:12'),
(76,'hello wolrd53','hello wolrd53',NULL,NULL,'2023-11-22 16:36:12'),
(77,'hello wolrd54','hello wolrd54',NULL,NULL,'2023-11-22 16:36:12'),
(78,'hello wolrd55','hello wolrd55',NULL,NULL,'2023-11-22 16:36:12'),
(79,'hello wolrd56','hello wolrd56',NULL,NULL,'2023-11-22 16:36:12'),
(80,'hello wolrd57','hello wolrd57',NULL,NULL,'2023-11-22 16:36:12'),
(81,'hello wolrd58','hello wolrd58',NULL,NULL,'2023-11-22 16:36:12'),
(82,'hello wolrd59','hello wolrd59',NULL,NULL,'2023-11-22 16:36:12'),
(83,'hello wolrd60','hello wolrd60',NULL,NULL,'2023-11-22 16:36:12'),
(84,'hello wolrd61','hello wolrd61',NULL,NULL,'2023-11-22 16:36:12'),
(85,'hello wolrd62','hello wolrd62',NULL,NULL,'2023-11-22 16:36:12'),
(86,'hello wolrd63','hello wolrd63',NULL,NULL,'2023-11-22 16:36:12'),
(87,'hello wolrd64','hello wolrd64',NULL,NULL,'2023-11-22 16:36:12'),
(88,'hello wolrd65','hello wolrd65',NULL,NULL,'2023-11-22 16:36:12'),
(89,'hello wolrd66','hello wolrd66',NULL,NULL,'2023-11-22 16:36:12'),
(90,'hello wolrd67','hello wolrd67',NULL,NULL,'2023-11-22 16:36:12'),
(91,'hello wolrd68','hello wolrd68',NULL,NULL,'2023-11-22 16:36:12'),
(92,'hello wolrd69','hello wolrd69',NULL,NULL,'2023-11-22 16:36:12'),
(93,'hello wolrd70','hello wolrd70',NULL,NULL,'2023-11-22 16:36:12'),
(94,'hello wolrd71','hello wolrd71',NULL,NULL,'2023-11-22 16:36:12'),
(95,'hello wolrd72','hello wolrd72',NULL,NULL,'2023-11-22 16:36:12'),
(96,'hello wolrd73','hello wolrd73',NULL,NULL,'2023-11-22 16:36:12'),
(97,'hello wolrd74','hello wolrd74',NULL,NULL,'2023-11-22 16:36:12'),
(98,'hello wolrd75','hello wolrd75',NULL,NULL,'2023-11-22 16:36:12'),
(99,'hello wolrd76','hello wolrd76',NULL,NULL,'2023-11-22 16:36:12'),
(100,'hello wolrd77','hello wolrd77',NULL,NULL,'2023-11-22 16:36:12'),
(101,'hello wolrd78','hello wolrd78',NULL,NULL,'2023-11-22 16:36:12'),
(102,'hello wolrd79','hello wolrd79',NULL,NULL,'2023-11-22 16:36:12'),
(103,'hello wolrd80','hello wolrd80',NULL,NULL,'2023-11-22 16:36:12'),
(104,'hello wolrd81','hello wolrd81',NULL,NULL,'2023-11-22 16:36:12'),
(105,'hello wolrd82','hello wolrd82',NULL,NULL,'2023-11-22 16:36:12'),
(106,'hello wolrd83','hello wolrd83',NULL,NULL,'2023-11-22 16:36:12'),
(107,'hello wolrd84','hello wolrd84',NULL,NULL,'2023-11-22 16:36:12'),
(108,'hello wolrd85','hello wolrd85',NULL,NULL,'2023-11-22 16:36:12'),
(109,'hello wolrd86','hello wolrd86',NULL,NULL,'2023-11-22 16:36:12'),
(110,'hello wolrd87','hello wolrd87',NULL,NULL,'2023-11-22 16:36:12'),
(111,'hello wolrd88','hello wolrd88',NULL,NULL,'2023-11-22 16:36:12'),
(112,'hello wolrd89','hello wolrd89',NULL,NULL,'2023-11-22 16:36:12'),
(113,'hello wolrd90','hello wolrd90',NULL,NULL,'2023-11-22 16:36:12'),
(114,'hello wolrd91','hello wolrd91',NULL,NULL,'2023-11-22 16:36:12'),
(115,'hello wolrd92','hello wolrd92',NULL,NULL,'2023-11-22 16:36:12'),
(116,'hello wolrd93','hello wolrd93',NULL,NULL,'2023-11-22 16:36:12'),
(117,'hello wolrd94','hello wolrd94',NULL,NULL,'2023-11-22 16:36:12'),
(118,'hello wolrd95','hello wolrd95',NULL,NULL,'2023-11-22 16:36:12'),
(119,'hello wolrd96','hello wolrd96',NULL,NULL,'2023-11-22 16:36:12'),
(120,'hello wolrd97','hello wolrd97',NULL,NULL,'2023-11-22 16:36:12'),
(121,'hello wolrd98','hello wolrd98',NULL,NULL,'2023-11-22 16:36:12'),
(122,'hello wolrd99','hello wolrd99',NULL,NULL,'2023-11-22 16:36:12');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `author_view`
--

/*!50001 DROP VIEW IF EXISTS `author_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `author_view` AS select `author`.`name` AS `name`,`author`.`email` AS `email` from `author` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 17:14:32
