-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: elevate_schema
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS elevate_schema;
CREATE DATABASE elevate_schema;

use elevate_schema;

--
-- Table structure for table `candidate_status`
--

DROP TABLE IF EXISTS `candidate_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_status` (
  `cand_status_id` int NOT NULL AUTO_INCREMENT,
  `curr_appearing_round` int NOT NULL,
  `application_status` enum('REJECTED','SELECTED','HIRED') NOT NULL,
  `job_post_id` int NOT NULL,
  `job_seeker_id` int NOT NULL,
  PRIMARY KEY (`cand_status_id`),
  UNIQUE KEY `cand_status_id_UNIQUE` (`cand_status_id`),
  KEY `job_post_id` (`job_post_id`),
  KEY `job_seeker_id` (`job_seeker_id`),
  CONSTRAINT `candidate_status_ibfk_1` FOREIGN KEY (`job_post_id`) REFERENCES `job_post` (`job_post_id`),
  CONSTRAINT `candidate_status_ibfk_2` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_status`
--

LOCK TABLES `candidate_status` WRITE;
/*!40000 ALTER TABLE `candidate_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `state_id` int NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id_UNIQUE` (`city_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Visakhapatnam',1),(2,'Vijayawada',1),(3,'Guntur',1),(4,'Itanagar',2),(5,'Tawang',2),(6,'Pasighat',2),(7,'Guwahati',3),(8,'Dibrugarh',3),(9,'Silchar',3),(10,'Patna',4),(11,'Gaya',4),(12,'Bhagalpur',4),(13,'Raipur',5),(14,'Bilaspur',5),(15,'Durg',5),(16,'Panaji',6),(17,'Margao',6),(18,'Ahmedabad',7),(19,'Surat',7),(20,'Vadodara',7),(21,'Chandigarh',8),(22,'Faridabad',8),(23,'Gurgaon',8),(24,'Shimla',9),(25,'Dharamshala',9),(26,'Mandi',9),(27,'Ranchi',10),(28,'Jamshedpur',10),(29,'Dhanbad',10),(30,'Bengaluru',11),(31,'Mysuru',11),(32,'Mangaluru',11),(33,'Thiruvananthapuram',12),(34,'Kochi',12),(35,'Kozhikode',12),(36,'Bhopal',13),(37,'Indore',13),(38,'Gwalior',13),(39,'Mumbai',14),(40,'Pune',14),(41,'Nagpur',14),(42,'Imphal',15),(43,'Bishnupur',15),(44,'Thoubal',15),(45,'Shillong',16),(46,'Tura',16),(47,'Aizawl',17),(48,'Lunglei',17),(49,'Kohima',18),(50,'Dimapur',18),(51,'Bhubaneswar',19),(52,'Cuttack',19),(53,'Rourkela',19),(54,'Amritsar',20),(55,'Ludhiana',20),(56,'Jalandhar',20),(57,'Jaipur',21),(58,'Udaipur',21),(59,'Jodhpur',21),(60,'Gangtok',22),(61,'Chennai',23),(62,'Coimbatore',23),(63,'Madurai',23),(64,'Hyderabad',24),(65,'Warangal',24),(66,'Nizamabad',24),(67,'Agartala',25),(68,'Udaipur',25),(69,'Lucknow',26),(70,'Kanpur',26),(71,'Varanasi',26),(72,'Dehradun',27),(73,'Haridwar',27),(74,'Nainital',27),(75,'Kolkata',28),(76,'Howrah',28),(77,'Darjeeling',28);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disability_cat`
--

DROP TABLE IF EXISTS `disability_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disability_cat` (
  `disability_cat_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`disability_cat_id`),
  UNIQUE KEY `disability_cat_id_UNIQUE` (`disability_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disability_cat`
--

LOCK TABLES `disability_cat` WRITE;
/*!40000 ALTER TABLE `disability_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `disability_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dummy_udids`
--

DROP TABLE IF EXISTS `dummy_udids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dummy_udids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ud_id` varchar(18) NOT NULL,
  `is_taken` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ud_id` (`ud_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `ud_id_2` (`ud_id`),
  UNIQUE KEY `ud_id_3` (`ud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dummy_udids`
--

LOCK TABLES `dummy_udids` WRITE;
/*!40000 ALTER TABLE `dummy_udids` DISABLE KEYS */;
INSERT INTO `dummy_udids` VALUES (1,'RJ0880119720000010',0),(2,'DL4511719990000026',0),(3,'MH7370419810000035',0),(4,'RJ1041719890000043',1),(5,'GJ0120719740000055',1),(6,'KA8611319960000061',0),(7,'AP3191919740000076',1),(8,'DL9970919720000088',1),(9,'KL5810819700000095',1),(10,'KA7690219720000101',0),(11,'DL3491919860000110',1),(12,'KL5020519810000126',0),(13,'TN7711620000000139',1),(14,'GJ2681319940000140',0),(15,'TN3341719790000153',1),(16,'KA0971219720000163',1),(17,'WB0781719930000172',0),(18,'TN9931319750000183',1),(19,'UP7361520000000194',1),(20,'MH2310719880000201',0),(21,'MH8240119700000210',0),(22,'KL3450119800000227',0),(23,'RJ7151919800000231',1),(24,'AP7291319950000243',0),(25,'DL7921419870000254',0),(26,'UP5680119970000262',1),(27,'AP1380919810000278',0),(28,'KA8150519930000286',1),(29,'UP9921119780000290',1),(30,'KL0950819900000302',1),(31,'GJ6660519850000316',1),(32,'KA9631419950000320',1),(33,'KL5840419740000332',0),(34,'UP8461419780000341',0),(35,'TN2820419720000356',0),(36,'UP3722019950000369',0),(37,'DL6220619950000375',0),(38,'UP6320819940000382',1),(39,'MH7140819710000395',0),(40,'WB8680120000000401',0),(41,'AP6141719780000417',0),(42,'KA8630219700000426',1),(43,'GJ4351619940000435',1),(44,'GJ2781619990000440',1),(45,'RJ2212019890000453',1),(46,'DL7151619830000465',0),(47,'RJ6310319850000472',0),(48,'KL2561719870000480',1),(49,'AP5141419800000493',1),(50,'KL7740619820000500',0),(51,'KL7231319720000510',1),(52,'AP9481819820000527',1),(53,'AP3281419780000531',1),(54,'RJ2690219950000540',1),(55,'KA8141119810000559',1),(56,'DL3191519900000564',0),(57,'TN4040219760000573',0),(58,'AP3051319750000581',0),(59,'DL2460419740000597',0),(60,'TN7491119990000609',1);
/*!40000 ALTER TABLE `dummy_udids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `employer_id` int NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(100) NOT NULL,
  `comp_size` int NOT NULL,
  `comp_url` varchar(255) NOT NULL,
  `comp_desc` varchar(255) NOT NULL,
  `total_job_posted` int NOT NULL,
  `total_cand_hired` int NOT NULL,
  `active_job_posts` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `login_credentials_id` int NOT NULL,
  PRIMARY KEY (`employer_id`),
  UNIQUE KEY `employer_id_UNIQUE` (`employer_id`),
  KEY `login_credentials_id` (`login_credentials_id`),
  CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`login_credentials_id`) REFERENCES `login_credentials` (`login_credentials_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'TechCorp',200,'https://techcorp.com','A leading tech solutions company',50,20,5,'2024-12-31 00:00:00','2024-12-31 00:00:00',60),(2,'TechCorp',200,'https://techcorp.com','A leading tech solutions company',50,20,5,'2024-12-31 00:00:00','2024-12-31 00:00:00',61),(3,'Tech Corp',200,'https://techcorp.com','Leading tech company',50,30,10,'2024-12-31 00:00:00','2024-12-31 00:00:00',62),(4,'Tech Corp',200,'https://techcorp.com','Leading tech company',50,30,10,'2024-12-31 00:00:00','2024-12-31 00:00:00',63),(5,'Tech Solutions Inc.',100,'https://techsolutions.com','A leading tech solutions company',50,30,10,'2025-01-01 00:00:00','2025-01-01 00:00:00',64),(6,'Tech Solutions Inc.',100,'https://techsolutions.com','A leading tech solutions company',3,0,0,'2025-01-01 00:00:00','2025-01-02 00:00:00',65),(7,'Tech Solutions Inc.',100,'https://techsolutions.com','A leading tech solutions company',2,0,0,'2025-01-01 00:00:00','2025-01-02 00:00:00',66),(8,'Hackveda',40,'https://techsolutions.com','A leading tech solutions company',4,0,1,'2025-01-02 00:00:00','2025-01-02 00:00:00',67),(9,'Tech Solutions Inc.',100,'https://techsolutions.com','A leading tech solutions company',6,0,6,'2025-01-02 00:00:00','2025-01-02 00:00:00',68);
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `freq_count` int NOT NULL,
  PRIMARY KEY (`faq_id`),
  UNIQUE KEY `faq_id_UNIQUE` (`faq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `inter_id` int NOT NULL AUTO_INCREMENT,
  `scheduled_time` datetime NOT NULL,
  `duration` datetime NOT NULL,
  `status` enum('REJECTED','SELECTED','HIRED') NOT NULL,
  `interview_type` enum('VIRTUAL','ONSITE') NOT NULL,
  `job_post_id` int NOT NULL,
  `cand_id` int NOT NULL,
  `employer_id` int NOT NULL,
  PRIMARY KEY (`inter_id`),
  UNIQUE KEY `inter_id_UNIQUE` (`inter_id`),
  KEY `job_post_id` (`job_post_id`),
  KEY `cand_id` (`cand_id`),
  KEY `employer_id` (`employer_id`),
  CONSTRAINT `interview_ibfk_1` FOREIGN KEY (`job_post_id`) REFERENCES `job_post` (`job_post_id`),
  CONSTRAINT `interview_ibfk_2` FOREIGN KEY (`cand_id`) REFERENCES `candidate_status` (`cand_status_id`),
  CONSTRAINT `interview_ibfk_3` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post` (
  `job_post_id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(100) NOT NULL,
  `job_desc` varchar(255) NOT NULL,
  `job_type` enum('WORK_FROM_OFFICE','WORK_FROM_HOME','HYBRID') NOT NULL,
  `comp_desc` varchar(255) NOT NULL,
  `min_exp` int NOT NULL,
  `max_exp` int NOT NULL,
  `min_sal` decimal(8,2) NOT NULL,
  `max_sal` decimal(8,2) NOT NULL,
  `deadline` datetime NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '0',
  `no_of_rounds` int NOT NULL,
  `employer_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `detailed_address` varchar(255) NOT NULL,
  `city_id` int NOT NULL,
  PRIMARY KEY (`job_post_id`),
  UNIQUE KEY `job_post_id_UNIQUE` (`job_post_id`),
  KEY `employer_id` (`employer_id`),
  KEY `fk_city` (`city_id`),
  CONSTRAINT `fk_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `job_post_ibfk_2` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post`
--

LOCK TABLES `job_post` WRITE;
/*!40000 ALTER TABLE `job_post` DISABLE KEYS */;
INSERT INTO `job_post` VALUES (1,'Full-Stack developer','Develop, test, and maintain software applications.','WORK_FROM_OFFICE','A leading software development company.',1,3,35000.00,45000.00,'2025-04-05 00:00:00',0,2,9,'2025-01-02 00:00:00','2025-01-02 00:00:00','401 Sadashiv Peth',20),(2,'Graphic developer','Develop, test, and maintain software applications.','HYBRID','A leading software development company.',1,3,35000.00,45000.00,'2025-04-05 00:00:00',0,2,9,'2025-01-02 00:00:00','2025-01-02 00:00:00','401 Sadashiv Peth',20),(3,'Intern','Develop, test, and maintain software applications.','WORK_FROM_HOME','A leading software development company.',0,1,3500.00,5000.00,'2025-04-05 00:00:00',0,2,6,'2025-01-02 00:00:00','2025-01-02 00:00:00','401 Sadashiv Peth',13),(4,'Software Engineer','Develop, test, and maintain software applications.','HYBRID','A leading software development company.',0,1,3500.00,5000.00,'2025-04-05 00:00:00',0,2,6,'2025-01-02 00:00:00','2025-01-02 00:00:00','401 Sadashiv Peth',13),(5,'Software Engineer','Develop, test, and maintain software applications.','HYBRID','A leading software development company.',0,1,3500.00,5000.00,'2025-04-05 00:00:00',0,2,6,'2025-01-02 00:00:00','2025-01-02 00:00:00','401 Sadashiv Peth',13);
/*!40000 ALTER TABLE `job_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_seeker`
--

DROP TABLE IF EXISTS `job_seeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE job_seeker (
  job_seeker_id int NOT NULL AUTO_INCREMENT,
  gender enum('MALE','FEMALE','OTHERS') NOT NULL,
  DOB datetime NOT NULL,
  experience tinyint NOT NULL,
  education_level enum('DIPLOMA','BACHELORS','MASTERS','Ph.D') NOT NULL,
  profile_pic varchar(255) DEFAULT NULL,
  resume varchar(255) NOT NULL,
  detailed_address varchar(255),
  login_credentials_id int NOT NULL,
  ud_id int NOT NULL,
  city_id int NOT NULL,
  PRIMARY KEY (job_seeker_id),
  KEY login_credentials_id (login_credentials_id),
  KEY ud_id (ud_id),
  KEY city_id (city_id),
  CONSTRAINT job_seeker_ibfk_1 FOREIGN KEY (login_credentials_id) REFERENCES login_credentials (login_credentials_id),
  CONSTRAINT job_seeker_ibfk_2 FOREIGN KEY (ud_id) REFERENCES dummy_udids (id),
  CONSTRAINT job_seeker_ibfk_3 FOREIGN KEY (city_id) REFERENCES city (city_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_seeker`
--

LOCK TABLES `job_seeker` WRITE;
/*!40000 ALTER TABLE `job_seeker` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_seeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credentials`
--

DROP TABLE IF EXISTS `login_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credentials` (
  `login_credentials_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `role_id` int NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`login_credentials_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `contact` (`contact`),
  UNIQUE KEY `login_credentials_id_UNIQUE` (`login_credentials_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `login_credentials_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credentials`
--

LOCK TABLES `login_credentials` WRITE;
/*!40000 ALTER TABLE `login_credentials` DISABLE KEYS */;
INSERT INTO `login_credentials` VALUES (40,'admin1@example.com','admin123','1234567890',1,'Admin','User','2024-12-28 14:03:51','2024-12-28 14:03:51'),(41,'admin2@example.com','admin456','1234567891',1,'Super','Admin','2024-12-28 14:03:51','2024-12-28 14:03:51'),(42,'employer1@example.com','emp123','1234567892',2,'John','Doe','2024-12-28 14:03:51','2024-12-28 14:03:51'),(43,'employer2@example.com','emp456','1234567893',2,'Jane','Doe','2024-12-28 14:03:51','2024-12-28 14:03:51'),(44,'employer3@example.com','emp789','1234567894',2,'Alice','Brown','2024-12-28 14:03:51','2024-12-28 14:03:51'),(45,'employer4@example.com','emp101','1234567895',2,'Bob','Smith','2024-12-28 14:03:51','2024-12-28 14:03:51'),(46,'jobseeker1@example.com','job123','1234567896',3,'Charlie','Taylor','2024-12-28 14:03:51','2024-12-28 14:03:51'),(47,'jobseeker2@example.com','job456','1234567897',3,'Sophia','Green','2024-12-28 14:03:51','2024-12-28 14:03:51'),(48,'jobseeker3@example.com','job789','1234567898',3,'Chris','Black','2024-12-28 14:03:51','2024-12-28 14:03:51'),(49,'jobseeker4@example.com','job101','1234567899',3,'Emma','White','2024-12-28 14:03:51','2024-12-28 14:03:51'),(50,'employer5@example.com','emp102','1234567809',2,'Michael','Scott','2024-12-28 14:03:51','2024-12-28 14:03:51'),(51,'employer6@example.com','emp103','1234567819',2,'David','Jones','2024-12-28 14:03:51','2024-12-28 14:03:51'),(52,'employer7@example.com','emp104','1234567829',2,'Olivia','Brown','2024-12-28 14:03:51','2024-12-28 14:03:51'),(53,'satyam@example.com','securepassword','1243568790',2,'satyam','kharote','2024-12-30 00:00:00','2024-12-30 00:00:00'),(56,'shubham@example.com','shubham123','1254568790',2,'shubham','soni','2024-12-30 00:00:00','2024-12-30 00:00:00'),(58,'rohan@example.com','rohan123','3241568790',2,'rohan','soni','2024-12-31 00:00:00','2024-12-31 00:00:00'),(60,'bakul@example.com','bakul123','3291568790',2,'bakul','joshi','2024-12-31 00:00:00','2024-12-31 00:00:00'),(61,'jinmesh@example.com','jinmesh123','7891568790',2,'jinmesh','pate;','2024-12-31 00:00:00','2024-12-31 00:00:00'),(62,'mahesh@example.com','mahesh123','4534231278',2,'mahesh','kale','2024-12-31 00:00:00','2024-12-31 00:00:00'),(63,'jayesh@example.com','jayesh123','6745343212',2,'jayesh','ahirrao','2024-12-31 00:00:00','2024-12-31 00:00:00'),(64,'rohit@example.com','rohi123','4532167890',2,'rohit','kumar','2025-01-01 00:00:00','2025-01-01 00:00:00'),(65,'sunny@example.com','sunny123','5643123456',2,'sunnay','mahabal','2025-01-01 00:00:00','2025-01-01 00:00:00'),(66,'moti@example.com','moti123','0987675432',2,'moti','virana','2025-01-01 00:00:00','2025-01-01 00:00:00'),(67,'jidnyamahajan@example.com','mahajan123','908987877',2,'Sayli','Mahajan','2025-01-02 00:00:00','2025-01-02 00:00:00'),(68,'sonal@example.com','sonal123','4534123456',2,'sonal','verma','2025-01-02 00:00:00','2025-01-02 00:00:00');
/*!40000 ALTER TABLE `login_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id_UNIQUE` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','2024-12-28 13:59:11','2024-12-28 13:59:11'),(2,'Employer','2024-12-28 13:59:11','2024-12-28 13:59:11'),(3,'Job Seeker','2024-12-28 13:59:11','2024-12-28 13:59:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeker_dis_cat`
--

DROP TABLE IF EXISTS `seeker_dis_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seeker_dis_cat` (
  `seeker_dis_id` int NOT NULL AUTO_INCREMENT,
  `job_seeker_id` int NOT NULL,
  `disability_cat_id` int NOT NULL,
  PRIMARY KEY (`seeker_dis_id`),
  UNIQUE KEY `seeker_dis_id_UNIQUE` (`seeker_dis_id`),
  KEY `disability_cat_id` (`disability_cat_id`),
  KEY `fk_job_seeker` (`job_seeker_id`),
  CONSTRAINT `fk_job_seeker` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`),
  CONSTRAINT `seeker_dis_cat_ibfk_1` FOREIGN KEY (`disability_cat_id`) REFERENCES `disability_cat` (`disability_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeker_dis_cat`
--

LOCK TABLES `seeker_dis_cat` WRITE;
/*!40000 ALTER TABLE `seeker_dis_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `seeker_dis_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `job_seeker_id` int NOT NULL,
  `skill_set_id` int NOT NULL,
  PRIMARY KEY (`skill_id`),
  UNIQUE KEY `skill_id_UNIQUE` (`skill_id`),
  KEY `job_seeker_id` (`job_seeker_id`),
  KEY `skill_set_id` (`skill_set_id`),
  CONSTRAINT `skill_ibfk_1` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`),
  CONSTRAINT `skill_ibfk_2` FOREIGN KEY (`skill_set_id`) REFERENCES `skillset_pool` (`skill_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillset_pool`
--

DROP TABLE IF EXISTS `skillset_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillset_pool` (
  `skill_set_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`skill_set_id`),
  UNIQUE KEY `skill_set_id_UNIQUE` (`skill_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillset_pool`
--

LOCK TABLES `skillset_pool` WRITE;
/*!40000 ALTER TABLE `skillset_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillset_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_id_UNIQUE` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Andhra Pradesh'),(2,'Arunachal Pradesh'),(3,'Assam'),(4,'Bihar'),(5,'Chhattisgarh'),(6,'Goa'),(7,'Gujarat'),(8,'Haryana'),(9,'Himachal Pradesh'),(10,'Jharkhand'),(11,'Karnataka'),(12,'Kerala'),(13,'Madhya Pradesh'),(14,'Maharashtra'),(15,'Manipur'),(16,'Meghalaya'),(17,'Mizoram'),(18,'Nagaland'),(19,'Odisha'),(20,'Punjab'),(21,'Rajasthan'),(22,'Sikkim'),(23,'Tamil Nadu'),(24,'Telangana'),(25,'Tripura'),(26,'Uttar Pradesh'),(27,'Uttarakhand'),(28,'West Bengal');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-03 12:08:22
