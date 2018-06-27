-- MySQL dump 10.13  Distrib 5.5.59, for Linux (x86_64)
--
-- Host: localhost    Database: original
-- ------------------------------------------------------
-- Server version	5.5.59

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
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image_url` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,'潮風を浴びて眠る犬','011kumakichi0327_TP_V.jp'),(2,'惰性な秋田犬',' AMEMAN17826009_TP_V.jp'),(3,'凛々しいチワワ','tdog17030710_TP_V.jp'),(4,'お散歩中のコーギ','MOROIMG_2985_TP_V1.jp'),(5,'ウトウトするゴールデンレトリバー','SSK_minatabokkowosururetoribar_TP_V.jpg'),(6,'飼い主を待つ犬','GAK_kainushi_TP_V.jpg'),(7,'ニコニコのボクサー','moro8452_IMG_2002_TP_V.jpg'),(8,'くつろぐシェパード','moroSIMG_4278_TP_V.jpg'),(9,'上目遣いのミニチュアダックス','dog-2561134__340.jpg'),(10,'ひょっこりダルメシアン','dalmatians-3210166__340.jpg'),(11,'犬と子猫','animals-2198994__340.jpg'),(12,'鼻デカ犬','fuca-2491995__340.jpg'),(14,'シェルティーは見た','dog-1007595__340.jpg'),(15,'やんちゃなチワワ','chihuahua-820087__340.jpg'),(17,'お花に囲まれたドーベルマン','doberman-dog-1438132__340.jpg'),(18,'ミックス犬','dog-3400275__340.jpg');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_user`
--

DROP TABLE IF EXISTS `item_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_user_user_id_index` (`user_id`),
  KEY `item_user_item_id_index` (`item_id`),
  KEY `item_user_type_index` (`type`),
  CONSTRAINT `item_user_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `item_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_user`
--

LOCK TABLES `item_user` WRITE;
/*!40000 ALTER TABLE `item_user` DISABLE KEYS */;
INSERT INTO `item_user` VALUES (3,2,1,'like','2018-06-22 12:50:39','2018-06-22 12:50:39'),(18,4,18,'like','2018-06-22 14:12:26','2018-06-22 14:12:26'),(28,4,11,'like','2018-06-22 14:45:22','2018-06-22 14:45:22'),(29,4,1,'like','2018-06-22 15:07:42','2018-06-22 15:07:42'),(30,4,12,'like','2018-06-22 15:31:27','2018-06-22 15:31:27'),(31,4,9,'like','2018-06-22 15:31:31','2018-06-22 15:31:31'),(32,4,5,'like','2018-06-22 15:42:30','2018-06-22 15:42:30'),(33,4,2,'like','2018-06-22 16:08:50','2018-06-22 16:08:50'),(34,5,10,'like','2018-06-25 12:36:22','2018-06-25 12:36:22'),(35,5,8,'like','2018-06-25 12:36:26','2018-06-25 12:36:26'),(36,5,1,'like','2018-06-25 12:36:31','2018-06-25 12:36:31'),(37,5,9,'like','2018-06-25 12:36:35','2018-06-25 12:36:35'),(38,5,14,'like','2018-06-25 12:36:38','2018-06-25 12:36:38'),(39,5,5,'like','2018-06-25 12:47:53','2018-06-25 12:47:53'),(40,5,2,'like','2018-06-25 12:50:26','2018-06-25 12:50:26'),(41,1,10,'like','2018-06-26 09:15:15','2018-06-26 09:15:15'),(42,1,12,'like','2018-06-26 09:15:20','2018-06-26 09:15:20'),(43,1,14,'like','2018-06-26 09:15:23','2018-06-26 09:15:23'),(44,1,1,'like','2018-06-26 09:15:27','2018-06-26 09:15:27'),(45,1,11,'like','2018-06-26 09:42:06','2018-06-26 09:42:06');
/*!40000 ALTER TABLE `item_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'','潮風を浴びて眠る犬','','011kumakichi0327_TP_V.jpg',NULL,NULL),(2,'','惰性な秋田犬','','AMEMAN17826009_TP_V.jpg',NULL,NULL),(3,'','凛々しいチワワ','','tdog17030710_TP_V.jpg',NULL,NULL),(4,'','お散歩中のコーギー','','MOROIMG_2985_TP_V1.jpg',NULL,NULL),(5,'','ウトウトするゴールデンレトリバー','','SSK_minatabokkowosururetoribar_TP_V.jpg',NULL,NULL),(6,'','飼い主を待つ犬','','GAK_kainushi_TP_V.jpg',NULL,NULL),(7,'','ニコニコのボクサー','','moro8452_IMG_2002_TP_V.jpg',NULL,NULL),(8,'','くつろぐシェパード','','moroSIMG_4278_TP_V.jpg',NULL,NULL),(9,'','上目遣いのミニチュアダックス','','dog-2561134__340.jpg',NULL,NULL),(10,'','ひょっこりダルメシアン','','dalmatians-3210166__340.jpg',NULL,NULL),(11,'','犬と子猫','','animals-2198994__340.jpg',NULL,NULL),(12,'','鼻デカ犬','','fuca-2491995__340.jpg',NULL,NULL),(14,'','シェルティーは見た','','dog-1007595__340.jpg',NULL,NULL),(15,'','やんちゃなチワワ','','chihuahua-820087__340.jpg',NULL,NULL),(17,'','お花に囲まれたドーベルマン','','doberman-dog-1438132__340.jpg',NULL,NULL),(18,'','ミックス犬','','dog-3400275__340.jpg',NULL,NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1),(11,'2018_06_20_150950_create_items_table',1),(12,'2018_06_20_151043_create_item_user_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mikako','mikako25@gmail.com','$2y$10$yn.R2OSuFLLpP8FSkrmFl.hUyB0NFBXrbnMOSxOSwE24paC4R6LCm','7pdP6Mi0EKvA8HMuxEmQQaFh9aPgNfG1ElJE7yzWG2l56I9WwWbFMgUwrTaE','2018-06-21 12:46:19','2018-06-21 12:46:19'),(2,'mikako','mikako.akai@rakuten.com','$2y$10$Gdxpq7paJb6WshEQ.qaG6u8tEStP2tF56wZXz.MTxA61YrZrk7RAe','GXQktbBMjBXIsLdywUluJCacVvAthYzOG4WytAYCzon36bHgt5QIEBeXESpw','2018-06-22 09:14:31','2018-06-22 09:14:31'),(3,'mikako','mikako0205@gmail.com','$2y$10$.WnEPaRW4O15qfT5aNp7EOgl/VtFYzvq6ML3OvqNxdTmhFAR5Hj06','FPvnZ9MZItXfj6tBRUAjR0oHILIogSlirXhwjWidnF6mVGJm1bBzTaaZPOjf','2018-06-22 09:27:53','2018-06-22 09:27:53'),(4,'mikako','passward@gmail.com','$2y$10$Z573VCfXFt4lc86SbrrlFeYGTtQ9TMyJg2Wd0SaFC94ai8EumFgHa',NULL,'2018-06-22 13:57:14','2018-06-22 13:57:14'),(5,'mikako','mikako255@gmail.com','$2y$10$/3Bf.OI.NBY8DP3lojtkmOY.J.0uQYij1ym7hAppiGMhQZe8y10nu','swXWSqIjAbmaHqEqOirKwNkrmw3NuJToiMIfbS1L6Pp0Wk2pwUV5wJrTu297','2018-06-25 12:36:13','2018-06-25 12:36:13');
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

-- Dump completed on 2018-06-26  4:01:59
