-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: mma
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer_options`
--

DROP TABLE IF EXISTS `answer_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_options` (
  `answer_id` int unsigned NOT NULL,
  `option_id` int unsigned NOT NULL,
  `value` int NOT NULL,
  KEY `answer_options_answer_id_foreign` (`answer_id`),
  KEY `answer_options_option_id_foreign` (`option_id`),
  CONSTRAINT `answer_options_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`),
  CONSTRAINT `answer_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_options`
--

LOCK TABLES `answer_options` WRITE;
/*!40000 ALTER TABLE `answer_options` DISABLE KEYS */;
INSERT INTO `answer_options` VALUES (8,74,2),(8,81,2),(8,77,2),(8,46,2),(9,17,2),(9,19,1),(9,21,2),(9,25,2),(9,29,2);
/*!40000 ALTER TABLE `answer_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scene_id` int unsigned NOT NULL,
  `discussion` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_scene_id_foreign` (`scene_id`),
  CONSTRAINT `answers_scene_id_foreign` FOREIGN KEY (`scene_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (8,'gjt',1,'At the 22 second mark you can see that the skier alignment has the shoulders back,  their hips behind their heals. This occurs when the knees are over flexed positioning the skier in the back seat.\r\nMore evidence can be seen by the large amount of snow from the back of the skies and the ski tips slightly in the air.','2019-02-27 22:55:00','2019-02-27 22:55:38'),(9,'gjt',3,'Although full body inclination is present, most fo the edging is from lower leg inclination.\r\nEdging is occuring just before the fall line and is at fixed intensity for the rest of the turn.','2019-02-27 23:01:54','2019-02-27 23:01:54');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int DEFAULT NULL,
  `headline` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (NULL,'Foobar'),(NULL,'Foobar'),(NULL,'MoreInfo'),(NULL,'Foobar'),(NULL,'MoreInfo'),(NULL,'Foobar'),(NULL,'Foobar'),(NULL,'Foobar'),(NULL,'Foobar'),(NULL,'Foobar');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('movement_analisys_practice_cache34e9f64dec7da7046385deaa63dc8dfffc816578','i:1;',1551227170),('movement_analisys_practice_cache34e9f64dec7da7046385deaa63dc8dfffc816578:timer','i:1551227170;',1551227170),('movement_analisys_practice_cachegerrit@gerrit.com.au|169.254.1.1','i:1;',1551326414),('movement_analisys_practice_cachegerrit@gerrit.com.au|169.254.1.1:timer','i:1551326414;',1551326414);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_10_26_054040_create_songs_table',1),(4,'2018_11_30_025501_create_videos_table',1),(5,'2018_11_30_025551_create_questions_table',1),(6,'2018_11_30_025552_create_scenes_table',1),(7,'2018_11_30_025614_create_sections_table',1),(8,'2018_11_30_025637_create_selects_table',1),(9,'2018_11_30_025709_create_options_table',1),(10,'2018_11_30_025728_create_answers_table',1),(11,'2018_11_30_025746_create_submissions_table',1),(12,'2018_11_30_025809_create_marks_table',1),(13,'2018_11_30_033358_create_sectionselects_table',1),(14,'2018_11_30_052706_create_answer_options_table',1),(15,'2018_11_30_052706_create_submission_options_table',1),(16,'2019_02_26_234241_create_sessions_table',2),(17,'2019_02_26_234511_create_cache_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `options_select_id_foreign` (`select_id`),
  CONSTRAINT `options_select_id_foreign` FOREIGN KEY (`select_id`) REFERENCES `selects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'soft','f4e329b0-f9c4-11e8-987c-0242ac110002',1,'2018-11-30 05:58:47','2018-11-30 05:58:47'),(2,'firm','f4e32c06-f9c4-11e8-987c-0242ac110002',1,'2018-11-30 05:58:53','2018-11-30 05:58:53'),(3,'slush','f4e32ca9-f9c4-11e8-987c-0242ac110002',1,'2018-11-30 05:59:01','2018-11-30 05:59:01'),(4,'powder','f4e32d3b-f9c4-11e8-987c-0242ac110002',1,'2018-11-30 05:59:09','2018-11-30 05:59:09'),(5,'ice','f4e32dc4-f9c4-11e8-987c-0242ac110002',1,'2018-11-30 05:59:15','2018-11-30 05:59:15'),(6,'groomed','f4e32e47-f9c4-11e8-987c-0242ac110002',1,'2018-11-30 05:59:22','2018-11-30 05:59:22'),(7,'bumps','f4e32ed3-f9c4-11e8-987c-0242ac110002',1,'2018-11-30 05:59:29','2018-11-30 05:59:29'),(8,'c-shaped','f4e32f59-f9c4-11e8-987c-0242ac110002',3,NULL,NULL),(9,'z-shaped','f4e32fe6-f9c4-11e8-987c-0242ac110002',3,'2018-11-30 06:58:28','2018-11-30 06:58:21'),(10,'j-shaped','f4e3306b-f9c4-11e8-987c-0242ac110002',3,NULL,NULL),(11,'skidded','f4e330f1-f9c4-11e8-987c-0242ac110002',4,NULL,NULL),(12,'steered','f4e33173-f9c4-11e8-987c-0242ac110002',4,NULL,NULL),(13,'Carved','f4e331fb-f9c4-11e8-987c-0242ac110002',4,NULL,NULL),(14,'Pure Carved','f4e3327d-f9c4-11e8-987c-0242ac110002',4,NULL,NULL),(15,'Railed','f4e33300-f9c4-11e8-987c-0242ac110002',4,NULL,NULL),(17,'Lower Leg Inclination','2c8d66cc-1ea6-11e9-9884-0242ac110002',5,NULL,NULL),(18,'Whole Leg Inclination','2c8d6a14-1ea6-11e9-9884-0242ac110002',5,NULL,NULL),(19,'Full Body Inclination','2c8d6ac2-1ea6-11e9-9884-0242ac110002',5,NULL,NULL),(20,'Early','b3eeb7d9-1ea6-11e9-9884-0242ac110002',6,NULL,NULL),(21,'On Time','b3eeba0e-1ea6-11e9-9884-0242ac110002',6,NULL,NULL),(22,'Late','b3eebab6-1ea6-11e9-9884-0242ac110002',6,NULL,NULL),(23,'Transition','24fd7c12-1ea7-11e9-9884-0242ac110002',7,NULL,NULL),(24,'Initiation','24fd7e47-1ea7-11e9-9884-0242ac110002',7,NULL,NULL),(25,'Middle','24fd7ef0-1ea7-11e9-9884-0242ac110002',7,NULL,NULL),(26,'Completion','24fd7f7a-1ea7-11e9-9884-0242ac110002',7,NULL,NULL),(27,'None','2f94b59518f0a50b06753d0c846df914',8,NULL,NULL),(28,'insufficient','dae85b470ee533ab1e026a67ff34cb9b',8,NULL,NULL),(29,'Sufficienrt','72f8080a26b0098f598defa2ae89f1c9',8,NULL,NULL),(30,'excessive','5afcb27dd32dea8314c5ce92117f89ea',8,NULL,NULL),(33,'crud','c8b781c8-7a5c-429d-9c7c-47e9a430b35e',1,'2019-02-01 05:31:28','2019-02-01 05:31:28'),(34,'early','7ba3e404-5248-408f-b8b4-b744d3d25262',12,'2019-02-02 04:54:01','2019-02-02 04:54:01'),(35,'on time','86281f99-f69e-49b6-9cbc-8575d99b2343',12,'2019-02-02 04:54:07','2019-02-02 04:54:07'),(36,'late','2d47cd65-5f96-4c4f-8962-f7169a65315c',12,'2019-02-02 04:54:12','2019-02-02 04:54:12'),(46,'back','0dc5477d-cab6-4a90-a199-8725b6490a57',13,'2019-02-02 05:11:18','2019-02-02 05:11:18'),(47,'centered','e66084a1-1481-4240-b38e-08dcfc327440',13,'2019-02-02 05:11:24','2019-02-02 05:11:24'),(48,'forward','3ecdaaa1-347c-4fbf-bc59-f173390eca94',13,'2019-02-02 05:11:30','2019-02-02 05:11:30'),(49,'short','7d8067fc-2fe4-46ff-939c-b7370ee6b1ae',13,'2019-02-02 05:11:35','2019-02-02 05:11:35'),(50,'tall','8ec0c447-749d-4c5e-9706-722fd1494416',13,'2019-02-02 05:11:40','2019-02-02 05:11:40'),(51,'Psychological Factors','87e65ae8-6c43-4f09-ba0b-dab1f2687426',14,'2019-02-04 07:06:31','2019-02-04 07:06:31'),(52,'Physical Factors','e7bf3b9e-2ee4-443b-b237-45c91f3841ea',14,'2019-02-04 07:07:11','2019-02-04 07:07:11'),(53,'Equipment Factors','02dc909e-8a46-4bbd-b8a2-92ae578718de',14,'2019-02-04 07:07:44','2019-02-04 07:07:44'),(54,'Terrain Factors','3b65ce7b-59ed-4f95-a51a-6a1e19da78e0',14,'2019-02-04 07:08:22','2019-02-04 07:08:22'),(55,'Stance','f55dab20-edb2-48c8-a765-64a6d3d6b884',14,'2019-02-04 07:08:56','2019-02-04 07:08:56'),(56,'Rotary','10ae7ca7-3b17-43f0-9141-30d43cb38cec',14,'2019-02-04 07:09:24','2019-02-04 07:09:24'),(57,'Edging','8030b4d3-c063-447a-b8e5-b92e74550422',14,'2019-02-04 07:09:53','2019-02-04 07:09:53'),(58,'Pressure Control','909df0bf-b47b-4f25-a92e-1249a63ea62c',14,'2019-02-04 07:10:29','2019-02-04 07:10:29'),(59,'Too flat','7e0d438c-0e56-44e0-8933-87800f520c53',15,'2019-02-04 07:14:00','2019-02-04 07:14:00'),(60,'Appropriate steepness','abaa6aeb-8f64-480e-a8ca-7c2aad84fed8',15,'2019-02-04 07:14:18','2019-02-04 07:14:18'),(61,'Too Steep','fd2d0435-a553-4cee-afdd-17a6da1f84f7',15,'2019-02-04 07:14:28','2019-02-04 07:14:28'),(62,'Terrified','10094322-77ba-4412-8ffa-c1a064151a8d',16,'2019-02-04 07:17:41','2019-02-04 07:17:41'),(63,'Scared','bbca5832-78d7-4d70-8db6-a14a1cfdafb9',16,'2019-02-04 07:18:09','2019-02-04 07:18:09'),(64,'Happy','19e73013-66e1-4879-96de-a294e78281be',16,'2019-02-04 07:18:41','2019-02-04 07:18:41'),(65,'Confident','443f7b49-4c65-41c8-9e37-54dbcaeb8865',16,'2019-02-04 07:19:13','2019-02-04 07:19:13'),(66,'Over Confident','bded6413-3dbe-4024-89a8-e72497f6f6e8',16,'2019-02-04 07:19:42','2019-02-04 07:19:42'),(67,'Snow Plough','7e618e56-c4c4-4e63-8651-35197417994c',2,'2019-02-05 08:42:12','2019-02-05 08:42:12'),(68,'Basic Christie','95f753fa-74c0-44c4-98b7-31d3045090aa',2,'2019-02-05 08:42:39','2019-02-05 08:42:39'),(69,'Stem Christie','2786a7b7-dba0-4308-bc26-620e8809da1c',2,'2019-02-05 08:42:48','2019-02-05 08:42:48'),(70,'Basic Parallel','8e7a74bc-db28-4314-9c27-da6161d5acfb',2,'2019-02-05 08:43:04','2019-02-05 08:43:04'),(71,'Symmetrical','67ce4530-56d6-4b11-a2ed-ca04e5f9698b',17,'2019-02-05 08:58:43','2019-02-05 08:58:43'),(72,'Asymmetrical','fc9775d8-59ca-4ab3-8159-84be65581b7e',17,'2019-02-05 08:58:53','2019-02-05 08:58:53'),(73,'Under flexed','602b16b8-5547-4915-9775-e09f448e4394',9,'2019-02-05 09:02:04','2019-02-05 09:02:04'),(74,'Flexed','701827f2-20b8-42fc-a620-14db7d4756c3',9,'2019-02-05 09:02:11','2019-02-05 09:02:11'),(75,'Over Flexed','13773612-72f0-483d-bdb3-233725b8a17f',9,'2019-02-05 09:02:18','2019-02-05 09:02:18'),(76,'under flexed','7d3bdde8-be08-4cf8-b0ee-537957590921',11,'2019-02-05 09:02:42','2019-02-05 09:02:42'),(77,'Flexed','ada0e358-64a7-4ead-bdf0-8808fa0e4e5e',11,'2019-02-05 09:02:46','2019-02-05 09:02:46'),(78,'Over Flexed','9b75905f-5204-49cd-bc54-14062867e956',11,'2019-02-05 09:02:54','2019-02-05 09:02:54'),(79,'Under flexed','00c65c89-538d-43b0-9245-e57a84caf678',10,'2019-02-05 09:03:17','2019-02-05 09:03:17'),(80,'Flexed','20ac8a35-54f4-4620-99a1-eb122a860e42',10,'2019-02-05 09:03:22','2019-02-05 09:03:22'),(81,'Over Flexed','db421eb8-75e9-47ce-be1d-0b1b2947733d',10,'2019-02-05 09:03:29','2019-02-05 09:03:29'),(82,'Clear','1e4d9828-37cd-4847-a3ad-43753bd1105c',18,'2019-02-27 04:31:02','2019-02-27 04:31:02'),(83,'Fog','bfb3cf45-17cb-4e0d-bd8c-b18f4be1dcaf',18,'2019-02-27 04:31:10','2019-02-27 04:31:10'),(84,'Flat','c2b6aeed-9389-45c4-a593-c8e4741f05fd',18,'2019-02-27 04:31:18','2019-02-27 04:31:18'),(85,'Rain','73d32db6-e295-4812-92f3-15ba27671d36',18,'2019-02-27 04:32:14','2019-02-27 04:32:14'),(86,'Young Child','6ff60049-a4ae-4e99-a415-e78fbd0cfe96',19,'2019-02-27 04:35:13','2019-02-27 04:35:13'),(87,'Pre-Teen','13a5d158-7d2f-4f71-9eea-b0cf7a4ac8f7',19,'2019-02-27 04:35:38','2019-02-27 04:35:38'),(88,'Early Teen','4b9a5762-1f2f-4495-be1c-912ef874c8e4',19,'2019-02-27 04:35:47','2019-02-27 04:35:47'),(89,'Youth','30deed14-5724-4d7f-81ed-ddf930c1a3eb',19,'2019-02-27 04:35:55','2019-02-27 04:35:55'),(90,'Young Adult','c5bc117b-d1e9-4942-ac77-b64d0f6f9964',19,'2019-02-27 04:36:01','2019-02-27 04:36:01'),(91,'Adult','b6cc32fb-f10d-46a3-985c-72d193d08eda',19,'2019-02-27 04:36:06','2019-02-27 04:36:06'),(92,'Older Adult','d115fcc2-0dcb-449a-aae9-990034df9389',19,'2019-02-27 04:36:13','2019-02-27 04:36:13'),(93,'Elderly Adult','5482bcf0-7c49-493f-99c8-ecda29d2b4f4',19,'2019-02-27 04:36:23','2019-02-27 04:36:23'),(94,'Very Unfit','17d5d98c-1150-4d95-8191-c0b4a5d284f9',20,'2019-02-27 04:37:04','2019-02-27 04:37:04'),(95,'Unfit','5fa0d315-2818-4f0e-b247-9962fa93c6cd',20,'2019-02-27 04:37:08','2019-02-27 04:37:08'),(96,'Fit','5d30a7da-2b26-45ac-b1d5-e62bd4802d2c',20,'2019-02-27 04:37:13','2019-02-27 04:37:13'),(97,'Very Fit','ae535031-e83f-4675-9017-7bdd67e05a80',20,'2019-02-27 04:37:40','2019-02-27 04:37:40'),(98,'Fixed postition','30dc7567-92d3-48bb-a669-c732d8ee00aa',21,'2019-02-27 05:48:05','2019-02-27 05:48:05'),(99,'Low mobility','3dfa6a6c-4f06-449a-b600-57424fb0e65b',21,'2019-02-27 05:48:12','2019-02-27 05:48:12'),(100,'Appropriate mobility','5bf4d9a8-2ab5-450e-b0aa-0ef95379bc55',21,'2019-02-27 05:48:25','2019-02-27 05:48:25'),(101,'Excessive Mobility','92831692-168c-48f6-abd0-86f0868d7f92',21,'2019-02-27 05:48:32','2019-02-27 05:48:32'),(102,'Early','ea2d5f57-ac2b-43c8-bb7d-f3f9aa57a06b',22,'2019-02-27 05:49:41','2019-02-27 05:49:41'),(103,'On Time','d3a30989-ddf2-4df1-b007-459c613a5a4a',22,'2019-02-27 05:49:48','2019-02-27 05:49:48'),(104,'Late','e143953f-5e8d-43f0-a09d-f4dd41349700',22,'2019-02-27 05:49:55','2019-02-27 05:49:55'),(105,'Transition','ba5d5581-534a-42b0-8367-4045b69ffd7b',23,'2019-02-27 05:51:03','2019-02-27 05:51:03'),(106,'Initiation','6bca8fd5-d7c1-4776-b5f4-03d6a7ebfa69',23,'2019-02-27 05:51:08','2019-02-27 05:51:08'),(107,'Middle','b0f4dcbc-a23b-40c0-9098-ddb7ee2dd95f',23,'2019-02-27 05:51:13','2019-02-27 05:51:13'),(108,'Completion','88ed0ede-bd21-4ffb-8cde-39c5515d0e45',23,'2019-02-27 05:51:18','2019-02-27 05:51:18');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Full Ma Levels 3&4',NULL,NULL),(2,'Just Edging',NULL,NULL),(3,'Just Turn Type and Performance',NULL,NULL),(4,'Just Stance',NULL,NULL),(5,'Just Pressure Control',NULL,NULL),(6,'Just Rotary','2019-02-05 03:48:53','2019-02-05 03:48:53'),(7,'Just Terrain',NULL,NULL),(8,'Just Phycological',NULL,NULL),(9,'Just Physical',NULL,NULL),(10,'Just Equipment',NULL,NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenes`
--

DROP TABLE IF EXISTS `scenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scenes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` int unsigned NOT NULL,
  `question_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scenes_video_id_foreign` (`video_id`),
  KEY `scenes_question_id_foreign` (`question_id`),
  CONSTRAINT `scenes_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `scenes_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenes`
--

LOCK TABLES `scenes` WRITE;
/*!40000 ALTER TABLE `scenes` DISABLE KEYS */;
INSERT INTO `scenes` VALUES (1,'Vid 4 Stance',4,4,NULL,'2019-02-28 03:19:36'),(3,'Vid 4 Edging',4,2,NULL,NULL),(4,'Vid 4 Rotary',4,6,NULL,NULL),(5,'Vid 4 Turn Type and Performance',4,3,NULL,NULL),(7,'Vid 4 Pressure Control',4,5,'2019-02-03 02:53:21','2019-02-03 02:53:21'),(8,'Vid 5 Stance',5,4,NULL,NULL),(9,'Vid 5 Edging',5,2,NULL,NULL),(10,'vid 5 Rotary',5,6,NULL,NULL),(11,'Vid 5 Pressure Control',5,5,NULL,NULL),(12,'Vid 5 Turn Type & Performance',5,3,NULL,NULL),(13,'Vid 5 Terrain',5,7,NULL,NULL),(14,'Vid 5 Physical',5,9,NULL,NULL),(15,'Vid 5 Full MA',5,1,NULL,NULL),(16,'VId 4 Mull Ma Sheet',4,1,'2019-02-28 03:25:05','2019-02-28 03:25:05'),(17,'Vid 6 stance',6,4,'2019-03-03 05:21:59','2019-03-03 05:21:59'),(18,'Vid 7 Stance',7,4,'2019-03-03 05:25:58','2019-03-03 05:25:58'),(19,'Video 8 Stance',8,4,'2019-03-03 05:32:51','2019-03-03 05:32:51'),(20,'Video 9 Stance',9,4,'2019-03-03 05:36:19','2019-03-03 05:36:19'),(21,'Vid 1 Stance',2,4,'2019-03-03 06:06:57','2019-03-03 06:06:57'),(22,'Vid 2 stance',3,4,'2019-03-03 06:07:43','2019-03-03 06:07:43');
/*!40000 ALTER TABLE `scenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int unsigned NOT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sections_question_id_foreign` (`question_id`),
  KEY `sections_parent_id_foreign` (`parent_id`),
  CONSTRAINT `sections_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `sections` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Turn Type & Performance','Describe the turn type and performance',1,NULL,NULL,NULL),(2,'Soft Focus','Comment on factors that may effect their overall attitude',1,NULL,NULL,NULL),(3,'Hard Focus','Comment on each of the following skills',1,NULL,NULL,NULL),(4,'Lesson Focus','Select one options that is to be the ofcus of the lesson',1,NULL,NULL,NULL),(5,'Lesson Plan','Select 2 excercies to be a 2 part lesson plan.',1,NULL,NULL,NULL),(6,'Stance','Describe the Stance of the skier',0,3,NULL,NULL),(7,'Edging','Describe the Edging of the skier',0,3,NULL,NULL),(8,'Rotary','Describe the Rotary of the skier',0,3,NULL,NULL),(9,'Pressure Control','Describe the pressure control fo teh skier',0,3,NULL,NULL),(10,'Phycological Factors','Describe the Phychological factors you observe',0,2,NULL,NULL),(11,'Physical Factors','Describe the Physical factors you observe',0,2,NULL,NULL),(12,'Equipment Factors','Describe the Equipment factos your observe',0,2,NULL,NULL),(13,'Terrain Factors','Describe the Terrrain factors you observe',0,2,NULL,NULL),(14,'Static Lesson','Choose a Static excercise as part of your lesson plan',0,5,NULL,NULL),(15,'Dynamic Lesson','Choose a Dynamic excercise as part of you lesson plan',0,5,NULL,NULL),(16,'Edging Only','Describe just edging',2,NULL,NULL,NULL),(17,'Just turn Type and Perfomance','Comment on the Turn type and PErformance of the skier',3,NULL,NULL,NULL),(18,'Just Stance','Comment on the stance if the skier',4,NULL,NULL,NULL),(19,'Pressure Control','Pressure Control',5,NULL,'2019-02-04 08:20:14','2019-02-04 08:20:14'),(20,'Just Rotary','Just Rotary',6,NULL,'2019-02-05 03:49:03','2019-02-05 03:49:03'),(21,'Terrain','Terrain',7,NULL,'2019-02-27 04:29:25','2019-02-27 04:29:25'),(22,'Psychological','Psychological',8,NULL,'2019-02-27 04:34:04','2019-02-27 04:34:04'),(23,'Physical','Physical',9,NULL,'2019-02-27 04:34:39','2019-02-27 04:34:39');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionselects`
--

DROP TABLE IF EXISTS `sectionselects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionselects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int unsigned NOT NULL,
  `select_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sectionselects_section_id_foreign` (`section_id`),
  KEY `sectionselects_select_id_foreign` (`select_id`),
  CONSTRAINT `sectionselects_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  CONSTRAINT `sectionselects_select_id_foreign` FOREIGN KEY (`select_id`) REFERENCES `selects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionselects`
--

LOCK TABLES `sectionselects` WRITE;
/*!40000 ALTER TABLE `sectionselects` DISABLE KEYS */;
INSERT INTO `sectionselects` VALUES (2,1,2,NULL,NULL),(3,1,3,NULL,NULL),(4,1,4,NULL,NULL),(5,7,5,NULL,NULL),(6,7,6,NULL,NULL),(7,7,7,NULL,NULL),(8,6,9,NULL,NULL),(9,6,10,NULL,NULL),(10,6,11,NULL,NULL),(11,16,5,NULL,NULL),(12,16,6,NULL,NULL),(13,16,7,NULL,NULL),(14,16,8,NULL,NULL),(17,17,3,NULL,NULL),(18,17,4,NULL,NULL),(19,18,9,NULL,NULL),(20,18,10,NULL,NULL),(21,18,11,NULL,NULL),(22,18,13,NULL,NULL),(23,9,12,'2019-02-04 06:50:14','2019-02-04 06:50:14'),(24,4,14,'2019-02-04 07:11:04','2019-02-04 07:11:04'),(25,6,13,'2019-02-04 07:12:23','2019-02-04 07:12:23'),(26,7,8,'2019-02-04 07:13:19','2019-02-04 07:13:19'),(27,13,15,'2019-02-04 07:15:02','2019-02-04 07:15:02'),(28,10,16,'2019-02-04 07:20:15','2019-02-04 07:20:15'),(29,19,12,'2019-02-04 08:20:51','2019-02-04 08:20:51'),(30,17,2,'2019-02-05 08:44:22','2019-02-05 08:44:22'),(31,17,17,'2019-02-05 08:59:20','2019-02-05 08:59:20'),(32,13,1,'2019-02-05 09:00:55','2019-02-05 09:00:55'),(33,1,17,'2019-02-05 09:01:04','2019-02-05 09:01:04'),(34,21,1,'2019-02-27 04:29:40','2019-02-27 04:29:40'),(35,21,15,'2019-02-27 04:29:50','2019-02-27 04:29:50'),(36,21,18,'2019-02-27 04:31:44','2019-02-27 04:31:44'),(37,22,16,'2019-02-27 04:34:14','2019-02-27 04:34:14'),(38,23,19,'2019-02-27 04:38:08','2019-02-27 04:38:08'),(39,23,20,'2019-02-27 04:38:15','2019-02-27 04:38:15'),(40,19,21,'2019-02-27 05:48:50','2019-02-27 05:48:50'),(41,19,22,'2019-02-27 05:50:14','2019-02-27 05:50:14'),(42,19,23,'2019-02-27 05:51:30','2019-02-27 05:51:30');
/*!40000 ALTER TABLE `sectionselects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selects`
--

DROP TABLE IF EXISTS `selects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `selects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowsMultiple` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selects`
--

LOCK TABLES `selects` WRITE;
/*!40000 ALTER TABLE `selects` DISABLE KEYS */;
INSERT INTO `selects` VALUES (1,'Snow',1,'2018-11-30 05:56:37','2019-02-01 05:46:44'),(2,'Turn Type',0,'2018-11-30 05:57:00','2019-02-05 08:42:12'),(3,'turn-shape',0,'2018-11-30 05:57:17','2018-11-30 05:57:17'),(4,'turn-performance',0,'2018-11-30 05:57:29','2018-11-30 05:57:29'),(5,'Edge Source',0,NULL,NULL),(6,'Edge Timing',0,NULL,NULL),(7,'Edge Turn Stage',0,NULL,NULL),(8,'Edge Amount',0,NULL,NULL),(9,'Hip Joint Flex',0,NULL,NULL),(10,'Knee Joint Flex',0,NULL,NULL),(11,'Ankle Joint Flex',0,NULL,NULL),(12,'Foot to Foot transfer timing',0,'2019-02-02 04:53:51','2019-02-02 04:56:28'),(13,'Overall stance',1,'2019-02-02 05:11:11','2019-02-02 23:56:16'),(14,'Lesson Focus',0,'2019-02-04 07:04:41','2019-02-04 07:04:41'),(15,'Terrain Steepness',0,'2019-02-04 07:13:30','2019-02-04 07:13:30'),(16,'Mental State',0,'2019-02-04 07:17:11','2019-02-04 07:17:11'),(17,'Turn Symmetry',0,'2019-02-05 08:58:32','2019-02-05 08:58:32'),(18,'Light Conditions',0,'2019-02-27 04:30:39','2019-02-27 04:30:39'),(19,'Person Age',0,'2019-02-27 04:35:00','2019-02-27 04:35:00'),(20,'Person Physique',0,'2019-02-27 04:36:44','2019-02-27 04:36:44'),(21,'Joint Mobility',0,'2019-02-27 05:47:52','2019-02-27 05:47:52'),(22,'Mobility Timing',0,'2019-02-27 05:49:36','2019-02-27 05:49:36'),(23,'Mobilty Part of Turn',0,'2019-02-27 05:50:54','2019-02-27 05:50:54');
/*!40000 ALTER TABLE `selects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('1Hv9DKulYyfdEv2NCQ2RQesYDZqllBBoBwHJ7ovh',NULL,'169.254.1.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFlIMVl0enRhS3NBWXBzZVBITlNubE45cHdtZlRVelpvRFNsSTI3NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1551825566),('9sA6VxcxJ6pLpafNcvKYUWQ4j0zwn5cj1eT0K850',NULL,'169.254.1.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon','YTozOntzOjY6Il90b2tlbiI7czo0MDoicDFHeTZZMWR3U2JZa2VDeDA4NGhtWXdJVG5GR0s2MThYWTRRSGt2UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1552567926),('gzhSDeDNG5TDmjZHJAvnuiaviVINZtogt3FFKulN',NULL,'169.254.1.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUJQS1JWdGFpVGZQeEpiSXlJZkFGM0dBVHVqa0RLWm41b3lOSDR1ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1552813633),('jm8wye88su1rAAZwNszWexKa43qbO1pAYwDQOvR9',NULL,'169.254.1.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon','YTozOntzOjY6Il90b2tlbiI7czo0MDoieUNIdERta05pV1AzMzk4MzJtNUZXdlEyZVJ3bEhRbVFWZlE4NVI2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1552991689),('pIjQkleonkhKBOh50qgmlX2yPqrwNPza8pQDXvYu',3,'169.254.1.1','Mozilla/5.0 (Android 9; Mobile; rv:65.0) Gecko/65.0 Firefox/65.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoidTdUOU9DZGxSNEtWZTgxdTRvQTMxbnhNeWpUOENRUGdqYlVXampweiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20vdmlkZW9lZGl0LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=',1551783725),('QzQ5TOmVmuqExopuPOP8MwSSnk820qp4vX0HWbXE',NULL,'169.254.1.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUJsNTlkRFU3eXJHdGVMbkh4bGNCRFZ6Q29aWWNEZDRWRlplblNFVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1552719610),('twWBFd5aMvm2P7jICdTMBVMmRXDH9C2I0bSMiHpZ',NULL,'169.254.1.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjBuZlBVc2NrMG4yNGk4UzlhY2FndnprWFI3M3dISXJtQll5cGRFYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1552464382),('UuSgciM9cisw3yEZVhyMaOZcJ7887MucVLa9k7LA',NULL,'169.254.1.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm5VRW5CeVM3UHF4N0FTRmhCb2RwdFJUZmNqWGhXeHY4UXRHUzNSQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbXktbWEtcHJhY3RpY2UuYXBwc3BvdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1552363145);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_options`
--

DROP TABLE IF EXISTS `submission_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_options` (
  `submission_id` int unsigned NOT NULL,
  `option_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `submission_options_submission_id_foreign` (`submission_id`),
  KEY `submission_options_option_id_foreign` (`option_id`),
  CONSTRAINT `submission_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`),
  CONSTRAINT `submission_options_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_options`
--

LOCK TABLES `submission_options` WRITE;
/*!40000 ALTER TABLE `submission_options` DISABLE KEYS */;
INSERT INTO `submission_options` VALUES (1,73,NULL,NULL),(1,81,NULL,NULL),(1,76,NULL,NULL),(1,46,NULL,NULL);
/*!40000 ALTER TABLE `submission_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `scene_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `submissions_user_id_foreign` (`user_id`),
  KEY `submissions_scene_id_foreign` (`scene_id`),
  CONSTRAINT `submissions_scene_id_foreign` FOREIGN KEY (`scene_id`) REFERENCES `scenes` (`id`),
  CONSTRAINT `submissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,3,22,'2019-03-04 11:54:16','2019-03-04 11:54:16');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@whereitcounts.com',NULL,'1234',NULL,NULL,NULL),(2,'User1','user1@whereiscounts.com',NULL,'1234',NULL,NULL,NULL),(3,'Gerrit Thomson','gerrit.thomson@gmail.com',NULL,'$2y$10$KDcz9MiAvbdYpslBQ7Kn.uj1xKNdQx1HF..oEIn/mUs4iLzopqc7a','CCNDXlbHvfDNpONGkL9hsZnktuwclotY1tpY6G7ZZDkuHHT4664C8W88p6Ly','2019-02-05 03:37:36','2019-02-05 03:37:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'Casual Long Turns','https://www.youtube.com/embed/3_Eyj0auvv8',NULL,'2019-03-03 08:42:48'),(2,'Adult make In Bumps','https://www.youtube.com/embed/TZ4Ku88rO3M',NULL,'2019-03-05 10:59:22'),(3,'Adult censor sketchy bumps','https://www.youtube.com/embed/siNg8LV-vPw',NULL,'2019-03-05 11:02:05'),(4,'Adult make parallel','https://www.youtube.com/embed/4H5-wzXUX9g',NULL,'2019-03-05 10:55:38'),(5,'Adult female, sketchy parallel','https://www.youtube.com/embed/gbqLLhCumvg',NULL,'2019-03-05 10:57:23'),(6,'Older Male Paralel','https://www.youtube.com/embed/M_SnhRxgwSs',NULL,NULL),(7,'Adult femail Pallel','https://www.youtube.com/embed/P-son3O0Tc4',NULL,NULL),(8,'Adult Male parallel','https://www.youtube.com/embed/S7SU8PM62hg',NULL,NULL),(9,'Adult Male Snowplough','https://www.youtube.com/embed/zyv8hchNHh0',NULL,NULL),(10,'Medium Parallel','https://www.youtube.com/embed/6VB_kmr0-zo','2019-03-03 09:02:24','2019-03-03 09:02:24');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19 13:20:27
