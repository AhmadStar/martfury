-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (x86_64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'dJrKQeZopeKEFfDxecRNylawohrqfiDj',1,'2022-06-21 06:53:59','2022-06-21 06:53:59','2022-06-21 06:53:59');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2027-06-21 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2022-06-21 06:53:58','2022-06-21 06:53:58'),(2,'Top Slider Image 2','2027-06-21 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2022-06-21 06:53:58','2022-06-21 06:53:58'),(3,'Homepage middle 1','2027-06-21 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(4,'Homepage middle 2','2027-06-21 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(5,'Homepage middle 3','2027-06-21 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(6,'Homepage big 1','2027-06-21 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(7,'Homepage bottom small','2027-06-21 00:00:00','not_set','CXBMOPFL81JZ','promotion/7.jpg','/products',0,7,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(8,'Product sidebar','2027-06-21 00:00:00','product-sidebar','6JRGU82XZY10','promotion/8.jpg','/products',0,8,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(9,'Homepage big 2','2027-06-21 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2022-06-21 06:53:59','2022-06-21 06:53:59');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Aliquam occaecati quasi velit et accusantium rerum. Et quo minus odio iure est consequatur. Saepe quia id cupiditate quo impedit vel labore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-06-21 06:53:51','2022-06-21 06:53:51'),(2,'Fashion',0,'Totam deleniti rerum eaque occaecati. Impedit commodi ipsa quia qui consequatur ad.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-06-21 06:53:51','2022-06-21 06:53:51'),(3,'Electronic',0,'Exercitationem eligendi eveniet rerum soluta adipisci corporis non. Consequatur ipsum ab voluptates. Quisquam numquam dignissimos numquam possimus nam. Ex aperiam et asperiores sed delectus dolore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-06-21 06:53:51','2022-06-21 06:53:51'),(4,'Commercial',0,'Doloribus voluptas vel sequi dolorem dolore molestias. Optio aspernatur in ut hic accusamus molestias. Doloribus reprehenderit minus tempore quibusdam eveniet accusamus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-06-21 06:53:51','2022-06-21 06:53:51');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_backup`
--

DROP TABLE IF EXISTS `cities_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_backup`
--

LOCK TABLES `cities_backup` WRITE;
/*!40000 ALTER TABLE `cities_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Jerald White I','carroll.lyla@example.net','878.725.1837','8950 Konopelski Lane\nSchmittbury, DC 25874','Odit ut quisquam hic facere.','Autem dolorem doloremque id illum optio. Aut vitae omnis quia et optio hic. Nemo est modi voluptate ipsa asperiores perferendis dolorum. Optio iste saepe hic tempora nulla delectus quis. Dolorem quis aliquam voluptates et qui quae fugit. Voluptatum delectus dolores id. Non praesentium omnis sed quia recusandae aut nam. Odit qui blanditiis ut. Ut laudantium ut numquam itaque impedit. Est voluptatum fugiat numquam sed.','read','2022-06-21 06:53:46','2022-06-21 06:53:46'),(2,'Mr. Cleveland Emmerich Jr.','xebert@example.com','272-840-4737','46173 Presley Turnpike Apt. 555\nGreenchester, AK 70927','Est qui quo tempora facilis pariatur et deleniti.','Sed officiis numquam est vel ratione sequi. Vel dolores quas dolorem blanditiis neque. Non repellendus dolore consequatur est sunt quia. Totam reprehenderit occaecati dolore quos. Perspiciatis corrupti recusandae expedita aliquam qui. Repellat distinctio est tempora aut corrupti ea assumenda. Qui iste necessitatibus in ipsam distinctio. Accusamus exercitationem labore pariatur nostrum aliquam aut optio dolores. Nulla omnis nisi quae aperiam exercitationem commodi et.','unread','2022-06-21 06:53:46','2022-06-21 06:53:46'),(3,'Braxton Dickinson','mafalda77@example.org','(303) 641-9916','668 Jaylin Overpass\nTyshawnmouth, WV 85372','Ut odit unde amet culpa.','Omnis quia tempora aut quam rerum sit. Exercitationem distinctio ex magni eum. Est voluptatem sint quis illo voluptas. Aperiam soluta optio illum quas cum et sunt. Ipsa inventore voluptas voluptatum non. Pariatur veniam dicta minus repellendus. Quia nisi velit sunt iure est dolores corporis. Reiciendis alias esse vel eum placeat rerum praesentium.','unread','2022-06-21 06:53:46','2022-06-21 06:53:46'),(4,'Dr. Ed Jacobson','leta.quigley@example.net','+1.256.795.8495','13534 Bertram Street Apt. 919\nNew Mariachester, TX 74540','Rerum nihil quisquam ratione suscipit a voluptas.','Laborum amet dolore accusantium voluptate sed. Adipisci ab ipsa ullam aliquam. Voluptatum ab sapiente consectetur cum itaque quo ducimus omnis. Voluptatem eos sit quia itaque et rerum. Quas quasi nostrum aut deleniti omnis beatae iusto. Quisquam impedit perferendis unde rem id et. Eum ipsa deserunt et et aut rem. Voluptatem vel voluptatem sint voluptas. Quia esse soluta suscipit non. Sit alias cupiditate odio sunt necessitatibus corrupti sit quo.','read','2022-06-21 06:53:46','2022-06-21 06:53:46'),(5,'Courtney O\'Keefe','antwon74@example.com','223.440.4881','6874 Breanna Vista\nSouth Greg, GA 28827-0795','Eius veniam vel nihil tempora placeat fuga.','Laboriosam animi voluptas eum. Rem nisi in sed placeat. Hic non consectetur ea sed vitae. Numquam voluptas voluptas earum voluptas. Doloribus quia beatae nostrum eum similique. Et quis placeat laudantium quam sunt. Inventore a totam quos molestiae odit ipsa. Sapiente quia est odit non iusto. Laborum dolore rerum facere vel dolor commodi molestiae velit. Dicta ad veniam in in ullam possimus. Eligendi earum reiciendis et dolorem.','unread','2022-06-21 06:53:46','2022-06-21 06:53:46'),(6,'Arno Zieme','jaron67@example.com','1-424-704-5767','3764 Sawayn Turnpike Apt. 208\nRowestad, HI 42708','Possimus ex hic sint debitis.','Aperiam ut libero totam ipsum hic officiis. Aspernatur aperiam saepe consequatur deleniti neque suscipit consequatur. Sit ratione sequi excepturi id incidunt tempore velit. Molestiae aut iure eveniet distinctio qui. Quia ipsum aut sed qui perferendis quis. Velit similique ut consectetur facere autem. Qui facere voluptatem sit numquam nam iste quaerat. Fugit tempora minima voluptatem beatae at libero in non.','unread','2022-06-21 06:53:46','2022-06-21 06:53:46'),(7,'Mr. Cristopher Goodwin','augustine.robel@example.com','(786) 438-0494','183 Cynthia Fall Suite 584\nMarcelinamouth, SC 85933-6956','Est rerum unde nihil fuga est aut.','Delectus voluptatem assumenda cupiditate ex autem qui saepe. In dicta corrupti ratione corporis et. Porro eveniet suscipit et exercitationem accusantium in molestiae. Rem nam non in aut laborum et tempora. Quisquam corporis cupiditate minus maiores maiores illum. Et sint corporis quis tempora cupiditate sequi. Occaecati voluptatum sit sunt in iusto.','unread','2022-06-21 06:53:46','2022-06-21 06:53:46'),(8,'Austyn Hegmann III','jaleel01@example.net','+16622529156','37946 Kellen Key\nLake Leliabury, MT 59948','Ut sequi et sapiente autem.','Delectus et aliquam assumenda qui. Est nemo sit cumque molestiae sit harum. Ut est aut doloribus aut enim fugiat deserunt. Id quia ab qui minus rerum quas quam. Veritatis omnis nostrum rem natus et. Qui suscipit dolor molestias voluptatem. Molestias totam perferendis quia fuga dolorum ipsam necessitatibus. Voluptatibus mollitia nihil sunt voluptatum est eligendi consequatur. Quibusdam dicta autem optio consequuntur. Eveniet incidunt quam et non non quidem.','unread','2022-06-21 06:53:46','2022-06-21 06:53:46'),(9,'Arvid Gerlach','king14@example.org','651.505.5415','5786 Meda Island Suite 631\nNorth Trudie, KY 12749','Voluptate natus eveniet et quia sequi.','Recusandae omnis quam sit temporibus nemo quia. Nulla cupiditate sit non labore sit. Reiciendis consequatur in incidunt incidunt. Et consectetur fugiat doloribus quae delectus. Alias aliquid repudiandae voluptatem vitae id et ut. Voluptas voluptatem dolor voluptas minima atque. Fugit ut enim deserunt voluptate illo. In ut provident reprehenderit. Soluta amet dolor molestiae officiis vero reprehenderit beatae.','read','2022-06-21 06:53:46','2022-06-21 06:53:46'),(10,'Keshaun Crona','mustafa.christiansen@example.com','651-885-2476','278 Bernhard Springs\nRowehaven, ID 32442','Id maxime corrupti illum deserunt.','Nesciunt hic rerum vel voluptas nisi optio. Modi dolorem enim tempora dolores. Ipsum quos odio quia. Quisquam rerum et dolores. Aut doloribus pariatur repellat explicabo. Autem ut et at iusto sit natus. Incidunt deleniti tempore modi laboriosam eaque odio. Odio excepturi porro saepe iusto. Voluptatibus culpa sit accusantium aut at. Odit alias molestiae facere odit aut nisi omnis. Molestiae sit sit non voluptatem quas et. Eos perspiciatis aut quo accusantium. Totam sequi qui numquam.','read','2022-06-21 06:53:46','2022-06-21 06:53:46');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_backup`
--

DROP TABLE IF EXISTS `countries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_backup`
--

LOCK TABLES `countries_backup` WRITE;
/*!40000 ALTER TABLE `countries_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2022-06-21 06:53:17','2022-06-21 06:53:17');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(2,'EUR','€',0,2,1,0,0.84,'2022-06-21 06:53:17','2022-06-21 06:53:17'),(3,'VND','₫',0,0,2,0,23203,'2022-06-21 06:53:17','2022-06-21 06:53:17');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Levi Balistreri DDS','customer@botble.com','+13809031218','PL','Nevada','Melynafort','386 Ryan Summit Apt. 948',1,1,'2022-06-21 06:53:44','2022-06-21 06:53:44','77569'),(2,'Levi Balistreri DDS','customer@botble.com','+18438840425','YT','Maine','Port Marlonton','2183 McDermott Meadow',1,0,'2022-06-21 06:53:44','2022-06-21 06:53:44','33315-6619'),(3,'Dr. Owen Hyatt','vendor@botble.com','+19015215625','GF','Oklahoma','Spinkaside','9310 Cormier Manors Apt. 721',2,1,'2022-06-21 06:53:44','2022-06-21 06:53:44','85622-4206'),(4,'Dr. Owen Hyatt','vendor@botble.com','+17342894970','NI','North Carolina','Hoseaberg','39059 Osinski Hollow Suite 107',2,0,'2022-06-21 06:53:44','2022-06-21 06:53:44','65555-5653'),(5,'Reggie King','nrussel@example.org','+18598429549','BR','Nevada','Margaretefort','6486 Marcus Stream Suite 643',3,1,'2022-06-21 06:53:44','2022-06-21 06:53:44','09896'),(6,'Ms. Ara Ruecker II','miller.tiffany@example.net','+19516882406','SE','Mississippi','Beckerchester','889 Stokes Mountains',4,1,'2022-06-21 06:53:45','2022-06-21 06:53:45','80035'),(7,'Mark Rempel','rowe.jabari@example.net','+13512203098','SK','Michigan','South Columbus','1682 Verna Overpass',5,1,'2022-06-21 06:53:45','2022-06-21 06:53:45','91967'),(8,'Darryl Gaylord Sr.','pamela.hermiston@example.org','+14132886669','NU','Georgia','Port Larrytown','331 Oswald Station Apt. 497',6,1,'2022-06-21 06:53:45','2022-06-21 06:53:45','29569'),(9,'Marguerite Goldner','gulgowski.isabell@example.org','+17077327397','IE','South Dakota','Kelvinside','39661 Taurean Highway',7,1,'2022-06-21 06:53:45','2022-06-21 06:53:45','77902'),(10,'Prof. Fae Johnston III','pacocha.tomasa@example.org','+17254648978','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',8,1,'2022-06-21 06:53:45','2022-06-21 06:53:45','69643'),(11,'Prof. Blaise Wisozk','osinski.dora@example.com','+16417274198','GY','Texas','Elmiramouth','2797 Bartell Vista',9,1,'2022-06-21 06:53:45','2022-06-21 06:53:45','05629'),(12,'Prof. Herminia Wisozk','lilliana.altenwerth@example.org','+16089097683','AZ','Utah','Russelstad','7706 Renner Greens Suite 677',10,1,'2022-06-21 06:53:45','2022-06-21 06:53:45','93200-4864');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Levi Balistreri DDS','customer@botble.com','$2y$10$CwhSIN3C95B.Z1AFwYpjIuw/3vQNaiM0MKZKzdzuntQLmZzn2qM5e','customers/4.jpg','1998-05-23','+13208095070',NULL,'2022-06-21 06:53:44','2022-06-21 06:53:44','2022-06-21 13:53:44',NULL,0,NULL,'activated'),(2,'Dr. Owen Hyatt','vendor@botble.com','$2y$10$Ns0wiGDCPMv5e/CV7pymTOEeLzLVA404U49PVCv9Qv2nec75QofRO','customers/4.jpg','1982-06-07','+16317370720',NULL,'2022-06-21 06:53:44','2022-06-21 06:54:09','2022-06-21 13:53:44',NULL,1,'2022-06-21 13:54:09','activated'),(3,'Reggie King','nrussel@example.org','$2y$10$yVLlJ7w0TJssjyNIamTJv.pfJuTNstZ4p50cBa6rlGr/v9d14RHJO','customers/1.jpg','1983-06-12','+12258411959',NULL,'2022-06-21 06:53:44','2022-06-21 06:53:44','2022-06-21 13:53:44',NULL,0,NULL,'activated'),(4,'Ms. Ara Ruecker II','miller.tiffany@example.net','$2y$10$XyoCHmh3fQD0Lnlfck3kzuQxCnBhl3dEIlpfJkeaimG3juDpI0RRa','customers/2.jpg','1979-06-11','+17437715510',NULL,'2022-06-21 06:53:45','2022-06-21 06:53:45','2022-06-21 13:53:45',NULL,0,NULL,'activated'),(5,'Mark Rempel','rowe.jabari@example.net','$2y$10$cpNWUqpyKtoE8Z3fpv8m0e45EGnKDjBbuqNgo6/deqmwReh6K4K52','customers/3.jpg','1979-05-30','+19186533213',NULL,'2022-06-21 06:53:45','2022-06-21 06:54:09','2022-06-21 13:53:45',NULL,1,'2022-06-21 13:54:09','activated'),(6,'Darryl Gaylord Sr.','pamela.hermiston@example.org','$2y$10$0smg8jr0Hz8MTAM3/RW14.0s8m2SjZ1HRyZlYBEK/vs881ZZYGOV6','customers/4.jpg','1995-06-04','+16828080865',NULL,'2022-06-21 06:53:45','2022-06-21 06:53:45','2022-06-21 13:53:45',NULL,0,NULL,'activated'),(7,'Marguerite Goldner','gulgowski.isabell@example.org','$2y$10$Mncyy5Y0mJgW5kdDzcyw2OY1Ll9gN8M8IugfZmL85eVqx8pXfu.Hq','customers/5.jpg','1974-05-29','+16614176654',NULL,'2022-06-21 06:53:45','2022-06-21 06:53:45','2022-06-21 13:53:45',NULL,0,NULL,'activated'),(8,'Prof. Fae Johnston III','pacocha.tomasa@example.org','$2y$10$l1pWOn5HBjRztgRSXelbge/DI6Sqs4RJL.hRTdgzmita8vM2Fatf6','customers/6.jpg','1993-05-30','+14783416948',NULL,'2022-06-21 06:53:45','2022-06-21 06:53:45','2022-06-21 13:53:45',NULL,0,NULL,'activated'),(9,'Prof. Blaise Wisozk','osinski.dora@example.com','$2y$10$8.HC/kMYb6YkZUXqtP7pD.zdFU2l/BxIXjLk60xJPUMIuC.Ov6JM.','customers/7.jpg','1998-06-12','+14808091696',NULL,'2022-06-21 06:53:45','2022-06-21 06:53:45','2022-06-21 13:53:45',NULL,0,NULL,'activated'),(10,'Prof. Herminia Wisozk','lilliana.altenwerth@example.org','$2y$10$/4r5MZG7ED7A6JzGJ9dJA.WVZFGu01cFQLTYVo2F6aN6ehMou/mnO','customers/8.jpg','1975-06-13','+15172100668',NULL,'2022-06-21 06:53:45','2022-06-21 06:54:10','2022-06-21 13:53:45',NULL,1,'2022-06-21 13:54:10','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,28.0875,8,2),(1,2,24.705,10,5),(1,3,12.2,8,1),(1,4,147.84,15,5),(1,5,486.88,17,3),(1,6,183.3,11,5),(1,7,410.82,15,5),(1,8,293.1732,7,5),(1,9,402,11,3),(1,10,698.56,17,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2022-07-21 00:00:00','published','2022-06-21 06:53:45','2022-06-21 06:53:45');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',1,'69643'),(2,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',2,'69643'),(3,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',3,'69643'),(4,'Prof. Blaise Wisozk','+16417274198','osinski.dora@example.com','GY','Texas','Elmiramouth','2797 Bartell Vista',4,'05629'),(5,'Prof. Blaise Wisozk','+16417274198','osinski.dora@example.com','GY','Texas','Elmiramouth','2797 Bartell Vista',5,'05629'),(6,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',6,'80035'),(7,'Levi Balistreri DDS','+13809031218','customer@botble.com','PL','Nevada','Melynafort','386 Ryan Summit Apt. 948',7,'77569'),(8,'Levi Balistreri DDS','+13809031218','customer@botble.com','PL','Nevada','Melynafort','386 Ryan Summit Apt. 948',8,'77569'),(9,'Reggie King','+18598429549','nrussel@example.org','BR','Nevada','Margaretefort','6486 Marcus Stream Suite 643',9,'09896'),(10,'Reggie King','+18598429549','nrussel@example.org','BR','Nevada','Margaretefort','6486 Marcus Stream Suite 643',10,'09896'),(11,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',11,'80035'),(12,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',12,'80035'),(13,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',13,'80035'),(14,'Prof. Blaise Wisozk','+16417274198','osinski.dora@example.com','GY','Texas','Elmiramouth','2797 Bartell Vista',14,'05629'),(15,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',15,'80035'),(16,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',16,'80035'),(17,'Levi Balistreri DDS','+13809031218','customer@botble.com','PL','Nevada','Melynafort','386 Ryan Summit Apt. 948',17,'77569'),(18,'Levi Balistreri DDS','+13809031218','customer@botble.com','PL','Nevada','Melynafort','386 Ryan Summit Apt. 948',18,'77569'),(19,'Levi Balistreri DDS','+13809031218','customer@botble.com','PL','Nevada','Melynafort','386 Ryan Summit Apt. 948',19,'77569'),(20,'Levi Balistreri DDS','+13809031218','customer@botble.com','PL','Nevada','Melynafort','386 Ryan Summit Apt. 948',20,'77569'),(21,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',21,'80035'),(22,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',22,'80035'),(23,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',23,'69643'),(24,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',24,'69643'),(25,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',25,'69643'),(26,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',26,'69643'),(27,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',27,'69643'),(28,'Marguerite Goldner','+17077327397','gulgowski.isabell@example.org','IE','South Dakota','Kelvinside','39661 Taurean Highway',28,'77902'),(29,'Marguerite Goldner','+17077327397','gulgowski.isabell@example.org','IE','South Dakota','Kelvinside','39661 Taurean Highway',29,'77902'),(30,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',30,'80035'),(31,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',31,'80035'),(32,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',32,'80035'),(33,'Prof. Fae Johnston III','+17254648978','pacocha.tomasa@example.org','GD','Alaska','Port Brandtstad','437 Rashawn Prairie',33,'69643'),(34,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',34,'80035'),(35,'Ms. Ara Ruecker II','+19516882406','miller.tiffany@example.net','SE','Mississippi','Beckerchester','889 Stokes Mountains',35,'80035'),(36,'Darryl Gaylord Sr.','+14132886669','pamela.hermiston@example.org','NU','Georgia','Port Larrytown','331 Oswald Station Apt. 497',36,'29569'),(37,'Marguerite Goldner','+17077327397','gulgowski.isabell@example.org','IE','South Dakota','Kelvinside','39661 Taurean Highway',37,'77902'),(38,'Marguerite Goldner','+17077327397','gulgowski.isabell@example.org','IE','South Dakota','Kelvinside','39661 Taurean Highway',38,'77902');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-06-04 14:54:10','2022-06-04 14:54:10'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-06-04 14:54:10','2022-06-04 14:54:10'),(3,'confirm_payment','Payment was confirmed (amount $125.55) by %user_name%',0,1,NULL,'2022-06-21 06:54:11','2022-06-21 06:54:11'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-06-21 06:54:11','2022-06-21 06:54:11'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-06-06 06:54:12','2022-06-06 06:54:12'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-06-06 06:54:12','2022-06-06 06:54:12'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-06-14 14:54:12','2022-06-14 14:54:12'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-06-14 14:54:12','2022-06-14 14:54:12'),(12,'confirm_payment','Payment was confirmed (amount $1,232.00) by %user_name%',0,3,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-06-07 00:54:12','2022-06-07 00:54:12'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-06-07 00:54:12','2022-06-07 00:54:12'),(17,'confirm_payment','Payment was confirmed (amount $1,636.80) by %user_name%',0,4,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-06-13 08:54:12','2022-06-13 08:54:12'),(21,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-06-13 08:54:12','2022-06-13 08:54:12'),(22,'confirm_payment','Payment was confirmed (amount $792.00) by %user_name%',0,5,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(23,'create_shipment','Created shipment for order',0,5,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-06-18 06:54:12','2022-06-18 06:54:12'),(26,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-06-18 06:54:12','2022-06-18 06:54:12'),(27,'confirm_payment','Payment was confirmed (amount $2,612.80) by %user_name%',0,6,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(28,'create_shipment','Created shipment for order',0,6,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-06-19 20:54:12','2022-06-19 20:54:12'),(31,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-06-19 20:54:12','2022-06-19 20:54:12'),(32,'confirm_payment','Payment was confirmed (amount $4,187.40) by %user_name%',0,7,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(33,'create_shipment','Created shipment for order',0,7,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(34,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-06-15 14:54:12','2022-06-15 14:54:12'),(36,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-06-15 14:54:12','2022-06-15 14:54:12'),(37,'confirm_payment','Payment was confirmed (amount $3,472.00) by %user_name%',0,8,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(38,'create_shipment','Created shipment for order',0,8,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-06-13 06:54:13','2022-06-13 06:54:13'),(40,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-06-13 06:54:13','2022-06-13 06:54:13'),(41,'confirm_payment','Payment was confirmed (amount $517.00) by %user_name%',0,9,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(42,'create_shipment','Created shipment for order',0,9,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-06-07 22:54:13','2022-06-07 22:54:13'),(44,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-06-07 22:54:13','2022-06-07 22:54:13'),(45,'confirm_payment','Payment was confirmed (amount $2,009.70) by %user_name%',0,10,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(46,'create_shipment','Created shipment for order',0,10,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-06-15 00:54:13','2022-06-15 00:54:13'),(49,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-06-15 00:54:13','2022-06-15 00:54:13'),(50,'create_shipment','Created shipment for order',0,11,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-06-20 00:54:13','2022-06-20 00:54:13'),(52,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-06-20 00:54:13','2022-06-20 00:54:13'),(53,'confirm_payment','Payment was confirmed (amount $3,472.00) by %user_name%',0,12,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(54,'create_shipment','Created shipment for order',0,12,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-06-20 00:54:13','2022-06-20 00:54:13'),(56,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-06-20 00:54:13','2022-06-20 00:54:13'),(57,'create_shipment','Created shipment for order',0,13,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-06-09 14:54:13','2022-06-09 14:54:13'),(60,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-06-09 14:54:13','2022-06-09 14:54:13'),(61,'confirm_payment','Payment was confirmed (amount $3,151.50) by %user_name%',0,14,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(62,'create_shipment','Created shipment for order',0,14,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-06-16 22:54:13','2022-06-16 22:54:13'),(64,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-06-16 22:54:13','2022-06-16 22:54:13'),(65,'confirm_payment','Payment was confirmed (amount $1,087.80) by %user_name%',0,15,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(66,'create_shipment','Created shipment for order',0,15,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-06-14 18:54:14','2022-06-14 18:54:14'),(69,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-06-14 18:54:14','2022-06-14 18:54:14'),(70,'confirm_payment','Payment was confirmed (amount $2,889.20) by %user_name%',0,16,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(71,'create_shipment','Created shipment for order',0,16,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-06-17 06:54:14','2022-06-17 06:54:14'),(73,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-06-17 06:54:14','2022-06-17 06:54:14'),(74,'confirm_payment','Payment was confirmed (amount $1,232.00) by %user_name%',0,17,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(75,'create_shipment','Created shipment for order',0,17,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-06-18 06:54:14','2022-06-18 06:54:14'),(78,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-06-18 06:54:14','2022-06-18 06:54:14'),(79,'create_shipment','Created shipment for order',0,18,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-06-12 02:54:14','2022-06-12 02:54:14'),(81,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-06-12 02:54:14','2022-06-12 02:54:14'),(82,'confirm_payment','Payment was confirmed (amount $168.53) by %user_name%',0,19,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(83,'create_shipment','Created shipment for order',0,19,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-06-15 18:54:14','2022-06-15 18:54:14'),(85,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-06-15 18:54:14','2022-06-15 18:54:14'),(86,'create_shipment','Created shipment for order',0,20,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-06-15 10:54:14','2022-06-15 10:54:14'),(88,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-06-15 10:54:14','2022-06-15 10:54:14'),(89,'confirm_payment','Payment was confirmed (amount $5,787.70) by %user_name%',0,21,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(90,'create_shipment','Created shipment for order',0,21,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(91,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-06-14 14:54:14','2022-06-14 14:54:14'),(92,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-06-14 14:54:14','2022-06-14 14:54:14'),(93,'confirm_payment','Payment was confirmed (amount $1,636.80) by %user_name%',0,22,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(94,'create_shipment','Created shipment for order',0,22,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-06-17 12:54:14','2022-06-17 12:54:14'),(96,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-06-17 12:54:14','2022-06-17 12:54:14'),(97,'confirm_payment','Payment was confirmed (amount $4,620.40) by %user_name%',0,23,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(98,'create_shipment','Created shipment for order',0,23,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(99,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-06-17 22:54:14','2022-06-17 22:54:14'),(101,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-06-17 22:54:14','2022-06-17 22:54:14'),(102,'confirm_payment','Payment was confirmed (amount $3,555.70) by %user_name%',0,24,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(103,'create_shipment','Created shipment for order',0,24,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(104,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(105,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-06-20 14:54:14','2022-06-20 14:54:14'),(106,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-06-20 14:54:14','2022-06-20 14:54:14'),(107,'create_shipment','Created shipment for order',0,25,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(108,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-06-17 04:54:14','2022-06-17 04:54:14'),(109,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-06-17 04:54:14','2022-06-17 04:54:14'),(110,'confirm_payment','Payment was confirmed (amount $1,659.90) by %user_name%',0,26,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(111,'create_shipment','Created shipment for order',0,26,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(112,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(113,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-06-16 00:54:14','2022-06-16 00:54:14'),(114,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-06-16 00:54:14','2022-06-16 00:54:14'),(115,'create_shipment','Created shipment for order',0,27,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-06-20 06:54:14','2022-06-20 06:54:14'),(117,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-06-20 06:54:14','2022-06-20 06:54:14'),(118,'confirm_payment','Payment was confirmed (amount $4,290.60) by %user_name%',0,28,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(119,'create_shipment','Created shipment for order',0,28,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(120,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-06-20 18:54:14','2022-06-20 18:54:14'),(121,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-06-20 18:54:14','2022-06-20 18:54:14'),(122,'confirm_payment','Payment was confirmed (amount $2,317.70) by %user_name%',0,29,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(123,'create_shipment','Created shipment for order',0,29,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-06-20 00:54:14','2022-06-20 00:54:14'),(125,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-06-20 00:54:14','2022-06-20 00:54:14'),(126,'confirm_payment','Payment was confirmed (amount $3,555.70) by %user_name%',0,30,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(127,'create_shipment','Created shipment for order',0,30,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(128,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-06-17 02:54:14','2022-06-17 02:54:14'),(130,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-06-17 02:54:14','2022-06-17 02:54:14'),(131,'create_shipment','Created shipment for order',0,31,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(132,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-06-17 22:54:14','2022-06-17 22:54:14'),(134,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-06-17 22:54:14','2022-06-17 22:54:14'),(135,'create_shipment','Created shipment for order',0,32,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(136,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-06-18 22:54:14','2022-06-18 22:54:14'),(137,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-06-18 22:54:14','2022-06-18 22:54:14'),(138,'create_shipment','Created shipment for order',0,33,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(139,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-06-21 00:54:15','2022-06-21 00:54:15'),(141,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-06-21 00:54:15','2022-06-21 00:54:15'),(142,'create_shipment','Created shipment for order',0,34,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(143,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-06-19 00:54:15','2022-06-19 00:54:15'),(144,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-06-19 00:54:15','2022-06-19 00:54:15'),(145,'create_shipment','Created shipment for order',0,35,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(146,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-06-19 14:54:15','2022-06-19 14:54:15'),(147,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-06-19 14:54:15','2022-06-19 14:54:15'),(148,'create_shipment','Created shipment for order',0,36,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(149,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-06-21 04:54:15','2022-06-21 04:54:15'),(151,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-06-21 04:54:15','2022-06-21 04:54:15'),(152,'create_shipment','Created shipment for order',0,37,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(153,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-06-20 16:54:15','2022-06-20 16:54:15'),(155,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-06-20 16:54:15','2022-06-20 16:54:15'),(156,'confirm_payment','Payment was confirmed (amount $1,232.00) by %user_name%',0,38,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(157,'create_shipment','Created shipment for order',0,38,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(158,'update_status','Order confirmed by %user_name%',0,1,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(159,'update_status','Order confirmed by %user_name%',0,3,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(160,'update_status','Order confirmed by %user_name%',0,4,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(161,'update_status','Order confirmed by %user_name%',0,5,NULL,'2022-06-21 06:54:16','2022-06-21 06:54:16'),(162,'update_status','Order confirmed by %user_name%',0,6,NULL,'2022-06-21 06:54:16','2022-06-21 06:54:16'),(163,'update_status','Order confirmed by %user_name%',0,7,NULL,'2022-06-21 06:54:16','2022-06-21 06:54:16'),(164,'update_status','Order confirmed by %user_name%',0,10,NULL,'2022-06-21 06:54:16','2022-06-21 06:54:16'),(165,'update_status','Order confirmed by %user_name%',0,15,NULL,'2022-06-21 06:54:17','2022-06-21 06:54:17'),(166,'update_status','Order confirmed by %user_name%',0,17,NULL,'2022-06-21 06:54:17','2022-06-21 06:54:17'),(167,'update_status','Order confirmed by %user_name%',0,23,NULL,'2022-06-21 06:54:17','2022-06-21 06:54:17'),(168,'update_status','Order confirmed by %user_name%',0,24,NULL,'2022-06-21 06:54:17','2022-06-21 06:54:17'),(169,'update_status','Order confirmed by %user_name%',0,26,NULL,'2022-06-21 06:54:17','2022-06-21 06:54:17'),(170,'update_status','Order confirmed by %user_name%',0,30,NULL,'2022-06-21 06:54:18','2022-06-21 06:54:18');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,40.50,4.05,'[]',27,'Smart Watches',1662.00,0,'2022-06-21 06:54:10','2022-06-21 06:54:10'),(2,2,1,470.00,47.00,'[]',38,'Nikon HD camera',500.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(3,3,1,1120.00,112.00,'[]',55,'Xbox One Wireless Controller Black Color',785.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(4,4,3,528.00,52.80,'[]',75,'Samsung Gear VR Virtual Reality Headset',2403.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(5,5,1,720.00,72.00,'[]',83,'NYX Beauty Couton Pallete Makeup 12',847.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(6,6,3,565.00,56.50,'[]',64,'B&O Play Mini Bluetooth Speaker',1914.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(7,6,1,783.00,78.30,'[]',88,'Ciate Palemore Lipstick Bold Red Color',596.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(8,7,1,470.00,47.00,'[]',38,'Nikon HD camera',500.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(9,7,3,1184.00,118.40,'[]',51,'Herschel Leather Duffle Bag In Brown Color',1626.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(10,8,3,1120.00,112.00,'[]',54,'Xbox One Wireless Controller Black Color',2355.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(11,9,1,470.00,47.00,'[]',40,'Nikon HD camera',500.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(12,10,2,957.00,95.70,'[]',77,'Aveeno Moisturizing Body Shower 450ml',1498.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(13,11,3,501.00,50.10,'[]',42,'Audio Equipment',2556.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(14,11,2,957.00,95.70,'[]',78,'Aveeno Moisturizing Body Shower 450ml',1498.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(15,12,3,1120.00,112.00,'[]',55,'Xbox One Wireless Controller Black Color',2355.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(16,13,2,582.00,58.20,'[]',68,'Apple MacBook Air Retina 13.3-Inch Laptop',1360.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(17,14,1,528.00,52.80,'[]',30,'Red & Black Headphone',808.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(18,14,1,510.00,51.00,'[]',58,'EPSION Plaster Printer',505.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(19,14,2,957.00,95.70,'[]',77,'Aveeno Moisturizing Body Shower 450ml',1498.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(20,15,2,518.00,51.80,'[]',60,'Sound Intone I65 Earphone White Version',1592.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(21,16,3,932.00,93.20,'[]',81,'NYX Beauty Couton Pallete Makeup 12',1767.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(22,17,1,1120.00,112.00,'[]',56,'Xbox One Wireless Controller Black Color',785.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(23,18,1,510.00,51.00,'[]',58,'EPSION Plaster Printer',505.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(24,19,2,80.25,8.03,'[]',25,'Dual Camera 20MP',1602.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(25,20,2,528.00,52.80,'[]',30,'Red & Black Headphone',1616.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(26,20,2,716.00,71.60,'[]',35,'Smart Watch External',1758.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(27,21,3,1147.00,114.70,'[]',46,'Smart Televisions',1824.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(28,21,3,720.00,72.00,'[]',83,'NYX Beauty Couton Pallete Makeup 12',2541.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(29,22,3,528.00,52.80,'[]',74,'Samsung Gear VR Virtual Reality Headset',2403.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(30,23,3,1147.00,114.70,'[]',45,'Smart Televisions',1824.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(31,23,2,507.00,50.70,'[]',87,'Baxter Care Hair Kit For Bearded Mens',1728.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(32,24,3,1147.00,114.70,'[]',46,'Smart Televisions',1824.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(33,25,2,1120.00,112.00,'[]',55,'Xbox One Wireless Controller Black Color',1570.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(34,26,2,528.00,52.80,'[]',29,'Red & Black Headphone',1616.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(35,26,1,501.00,50.10,'[]',43,'Audio Equipment',852.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(36,27,2,470.00,47.00,'[]',38,'Nikon HD camera',1000.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(37,27,2,470.00,47.00,'[]',39,'Nikon HD camera',1000.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(38,28,2,1184.00,118.40,'[]',53,'Herschel Leather Duffle Bag In Brown Color',1084.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(39,28,3,582.00,58.20,'[]',65,'Apple MacBook Air Retina 13.3-Inch Laptop',2040.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(40,29,1,1120.00,112.00,'[]',55,'Xbox One Wireless Controller Black Color',785.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(41,29,1,987.00,98.70,'[]',85,'MVMTH Classical Leather Watch In Black',504.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(42,30,3,1147.00,114.70,'[]',47,'Smart Televisions',1824.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(43,31,3,1120.00,112.00,'[]',54,'Xbox One Wireless Controller Black Color',2355.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(44,32,2,582.00,58.20,'[]',66,'Apple MacBook Air Retina 13.3-Inch Laptop',1360.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(45,33,1,1184.00,118.40,'[]',52,'Herschel Leather Duffle Bag In Brown Color',542.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(46,33,1,582.00,58.20,'[]',68,'Apple MacBook Air Retina 13.3-Inch Laptop',680.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(47,34,2,470.00,47.00,'[]',37,'Nikon HD camera',1000.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(48,34,2,470.00,47.00,'[]',40,'Nikon HD camera',1000.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(49,35,3,1120.00,112.00,'[]',56,'Xbox One Wireless Controller Black Color',2355.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(50,35,3,528.00,52.80,'[]',72,'Samsung Gear VR Virtual Reality Headset',2403.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(51,36,1,528.00,52.80,'[]',29,'Red & Black Headphone',808.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(52,36,3,589.00,58.90,'[]',71,'Apple MacBook Air Retina 12-Inch Laptop',2688.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(53,37,3,716.00,71.60,'[]',33,'Smart Watch External',2637.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(54,37,1,589.00,58.90,'[]',69,'Apple MacBook Air Retina 12-Inch Laptop',896.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(55,38,1,1120.00,112.00,'[]',54,'Xbox One Wireless Controller Black Color',785.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,8,'1','default','completed',125.55,4.05,0.00,NULL,NULL,0.00,121.50,1,NULL,1,'n2y3t0VX7dr7bfflrkA1bZtmdvG4S',1,'2022-06-04 14:54:10','2022-06-21 06:54:12',2),(2,8,'1','default','completed',517.00,47.00,0.00,NULL,NULL,0.00,470.00,1,NULL,1,'u9yGYNqKRsls94v2nO5bV6fcrOeH4',2,'2022-06-06 06:54:12','2022-06-21 06:54:12',1),(3,8,'1','default','completed',1232.00,112.00,0.00,NULL,NULL,0.00,1120.00,1,NULL,1,'QjO0Tqgxg5kasRNERfNFUyJGp6JSH',3,'2022-06-14 14:54:12','2022-06-21 06:54:12',3),(4,9,'1','default','completed',1636.80,52.80,0.00,NULL,NULL,0.00,1584.00,1,NULL,1,'9kus8K1jgHqfadcpfqZLMM9ZYlK8h',4,'2022-06-07 00:54:12','2022-06-21 06:54:12',3),(5,9,'1','default','completed',792.00,72.00,0.00,NULL,NULL,0.00,720.00,1,NULL,1,'idX0Pu5112Ky00fwesYoKqjARisqb',5,'2022-06-13 08:54:12','2022-06-21 06:54:12',2),(6,4,'1','default','completed',2612.80,134.80,0.00,NULL,NULL,0.00,2478.00,1,NULL,1,'dj77zCWFQrNeGKhxrJPN5qtLOTruC',6,'2022-06-18 06:54:12','2022-06-21 06:54:12',2),(7,1,'1','default','completed',4187.40,165.40,0.00,NULL,NULL,0.00,4022.00,1,NULL,1,'qeEAabhWWeiTs0PEhIH9htnHTSn13',7,'2022-06-19 20:54:12','2022-06-21 06:54:12',1),(8,1,'1','default','pending',3472.00,112.00,0.00,NULL,NULL,0.00,3360.00,1,NULL,1,'79gy0IGIQCdjkRm2bZ9WtuEsWy6yd',8,'2022-06-15 14:54:12','2022-06-21 06:54:13',3),(9,3,'1','default','pending',517.00,47.00,0.00,NULL,NULL,0.00,470.00,1,NULL,1,'MjO9IyQ7WFXWKzsyOCiHwEwDQ8PKt',9,'2022-06-13 06:54:13','2022-06-21 06:54:13',1),(10,3,'1','default','completed',2009.70,95.70,0.00,NULL,NULL,0.00,1914.00,1,NULL,1,'4YF0AGfzRLjooUdQAY28D1PcQw8b9',10,'2022-06-07 22:54:13','2022-06-21 06:54:13',2),(11,4,'1','default','pending',3562.80,145.80,0.00,NULL,NULL,0.00,3417.00,1,NULL,1,'hxhti80Qmp2bDp7xbwEckHU5GFbpl',11,'2022-06-15 00:54:13','2022-06-21 06:54:13',2),(12,4,'1','default','pending',3472.00,112.00,0.00,NULL,NULL,0.00,3360.00,1,NULL,1,'I1xKSm67hgqOk9j8FsMu3rJ9dVbtJ',12,'2022-06-20 00:54:13','2022-06-21 06:54:13',3),(13,4,'1','default','completed',1222.20,58.20,0.00,NULL,NULL,0.00,1164.00,1,NULL,1,'YKWYzD8JWIXZEJlRO04buPXVzXYSI',13,'2022-06-20 00:54:13','2022-06-21 06:54:13',1),(14,9,'1','default','pending',3151.50,199.50,0.00,NULL,NULL,0.00,2952.00,1,NULL,1,'B2lpezWwZWJ5jdoHWNkdxeGly8ZGw',14,'2022-06-09 14:54:13','2022-06-21 06:54:13',2),(15,4,'1','default','completed',1087.80,51.80,0.00,NULL,NULL,0.00,1036.00,1,NULL,1,'LnrYuNIyncqtiyzE9F3vp0Old0aLz',15,'2022-06-16 22:54:13','2022-06-21 06:54:14',2),(16,4,'1','default','pending',2889.20,93.20,0.00,NULL,NULL,0.00,2796.00,1,NULL,1,'3wb2X0NRHgw2GKgZ7DuFOuvlHQ0Tr',16,'2022-06-14 18:54:14','2022-06-21 06:54:14',1),(17,1,'1','default','completed',1232.00,112.00,0.00,NULL,NULL,0.00,1120.00,1,NULL,1,'jyHdWIxBOMdIgKjUt5m9Nv7gfSPg9',17,'2022-06-17 06:54:14','2022-06-21 06:54:14',3),(18,1,'1','default','pending',561.00,51.00,0.00,NULL,NULL,0.00,510.00,1,NULL,1,'vlQ7zV4DKeCtgnSc0PajgIixMEELk',18,'2022-06-18 06:54:14','2022-06-21 06:54:14',2),(19,1,'1','default','pending',168.53,8.03,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'uqw6VZAHRCqVP1CRVQ5w91JxDsXiK',19,'2022-06-12 02:54:14','2022-06-21 06:54:14',1),(20,1,'1','default','pending',2612.40,124.40,0.00,NULL,NULL,0.00,2488.00,1,NULL,1,'JGv25FbLgo4qdwe26s3osDUjxzaWe',20,'2022-06-15 18:54:14','2022-06-21 06:54:14',2),(21,4,'1','default','pending',5787.70,186.70,0.00,NULL,NULL,0.00,5601.00,1,NULL,1,'2Yjd3q0CcxPfi28ggvjlLN8zRQgVa',21,'2022-06-15 10:54:14','2022-06-21 06:54:14',2),(22,4,'1','default','pending',1636.80,52.80,0.00,NULL,NULL,0.00,1584.00,1,NULL,1,'lXMHk1TNwLmraXSWehOsbr5H5IzQJ',22,'2022-06-14 14:54:14','2022-06-21 06:54:14',3),(23,8,'1','default','completed',4620.40,165.40,0.00,NULL,NULL,0.00,4455.00,1,NULL,1,'ncdzETw2AkXUfNC99XiYxxNLbm1D5',23,'2022-06-17 12:54:14','2022-06-21 06:54:14',2),(24,8,'1','default','completed',3555.70,114.70,0.00,NULL,NULL,0.00,3441.00,1,NULL,1,'5NMol31QqCeb2tx8XszdMrvpLL5SK',24,'2022-06-17 22:54:14','2022-06-21 06:54:14',2),(25,8,'1','default','pending',2352.00,112.00,0.00,NULL,NULL,0.00,2240.00,1,NULL,1,'el4nhgsh4qjF9dvfbMrE496l2hgWy',25,'2022-06-20 14:54:14','2022-06-21 06:54:14',3),(26,8,'1','default','completed',1659.90,102.90,0.00,NULL,NULL,0.00,1557.00,1,NULL,1,'VJDrURmmI8o8zo848ct5Vt1pAdnK9',26,'2022-06-17 04:54:14','2022-06-21 06:54:14',2),(27,8,'1','default','pending',1974.00,94.00,0.00,NULL,NULL,0.00,1880.00,1,NULL,1,'F3Je0QOuOzzYkdtuZD70IQtg7CClq',27,'2022-06-16 00:54:14','2022-06-21 06:54:14',1),(28,7,'1','default','pending',4290.60,176.60,0.00,NULL,NULL,0.00,4114.00,1,NULL,1,'gjhDqAPLuOQ1QktT2jJZqwU1TbSjX',28,'2022-06-20 06:54:14','2022-06-21 06:54:14',1),(29,7,'1','default','pending',2317.70,210.70,0.00,NULL,NULL,0.00,2107.00,1,NULL,1,'YpSdFtKfHkiNwCQhGF5sV8BEj0Lqd',29,'2022-06-20 18:54:14','2022-06-21 06:54:14',3),(30,4,'1','default','completed',3555.70,114.70,0.00,NULL,NULL,0.00,3441.00,1,NULL,1,'wOd1xizWLKb9JZHlwfrFmmifR5T6S',30,'2022-06-20 00:54:14','2022-06-21 06:54:14',2),(31,4,'1','default','completed',3472.00,112.00,0.00,NULL,NULL,0.00,3360.00,1,NULL,1,'dWgffQIvsUr2y18pbqFmyz8tOIVOT',31,'2022-06-17 02:54:14','2022-06-21 06:54:14',3),(32,4,'1','default','pending',1222.20,58.20,0.00,NULL,NULL,0.00,1164.00,1,NULL,1,'xkPVKxH8SmJTr8bcUP9R8MeVR3wUO',32,'2022-06-17 22:54:14','2022-06-21 06:54:14',1),(33,8,'1','default','completed',1942.60,176.60,0.00,NULL,NULL,0.00,1766.00,1,NULL,1,'UbQRe9JJIRcAmEgusp67SSXuwQzpV',33,'2022-06-18 22:54:14','2022-06-21 06:54:15',1),(34,4,'1','default','pending',1974.00,94.00,0.00,NULL,NULL,0.00,1880.00,1,NULL,1,'k7Wv7wiC6kQ0anUx1EOAOSi0tp7hx',34,'2022-06-21 00:54:15','2022-06-21 06:54:15',1),(35,4,'1','default','pending',5108.80,164.80,0.00,NULL,NULL,0.00,4944.00,1,NULL,1,'Mme7dXps0kf5x6vZyhLZNGgJLDTGc',35,'2022-06-19 00:54:15','2022-06-21 06:54:15',3),(36,6,'1','default','completed',2406.70,111.70,0.00,NULL,NULL,0.00,2295.00,1,NULL,1,'LjZDvSTzmm17s5kizNrdThufexEG4',36,'2022-06-19 14:54:15','2022-06-21 06:54:15',2),(37,7,'1','default','completed',2867.50,130.50,0.00,NULL,NULL,0.00,2737.00,1,NULL,1,'BvrfJmHsYkNv59U6fae9vRT08Y0TF',37,'2022-06-21 04:54:15','2022-06-21 06:54:15',2),(38,7,'1','default','pending',1232.00,112.00,0.00,NULL,NULL,0.00,1120.00,1,NULL,1,'xzVSaB0BJyc43FIr912WaT9imWjgd',38,'2022-06-20 16:54:15','2022-06-21 06:54:15',3);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-06-21 06:53:43','2022-06-21 06:53:43',0),(2,'Size','size','text',1,1,1,'published',1,'2022-06-21 06:53:43','2022-06-21 06:53:43',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-06-21 06:53:43','2022-06-21 06:53:43'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-06-21 06:53:43','2022-06-21 06:53:43');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(23,'Networking',17,NULL,'published',1,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-06-21 06:53:20','2022-06-21 06:53:20');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,5,1),(2,6,1),(3,15,1),(4,36,1),(5,31,2),(6,35,2),(7,8,2),(8,24,2),(9,36,3),(10,21,3),(11,15,3),(12,19,3),(13,5,4),(14,30,4),(15,35,4),(16,37,4),(17,21,5),(18,17,5),(19,12,5),(20,32,5),(21,15,6),(22,35,6),(23,6,6),(24,29,6),(25,33,7),(26,37,7),(27,35,7),(28,25,7),(29,27,8),(30,26,8),(31,30,8),(32,18,8),(33,33,9),(34,6,9),(35,9,9),(36,19,9),(37,19,10),(38,37,10),(39,16,10),(40,27,10),(41,35,11),(42,12,11),(43,18,11),(44,16,11),(45,11,12),(46,4,12),(47,37,12),(48,17,12),(49,19,13),(50,35,13),(51,23,13),(52,17,13),(53,2,14),(54,11,14),(55,12,14),(56,23,14),(57,21,15),(58,3,15),(59,5,15),(60,35,15),(61,31,16),(62,30,16),(63,37,16),(64,22,17),(65,19,17),(66,26,17),(67,37,17),(68,37,18),(69,30,18),(70,14,18),(71,27,18),(72,19,19),(73,34,19),(74,33,19),(75,17,19),(76,35,20),(77,12,20),(78,32,20),(79,22,20),(80,4,21),(81,14,21),(82,8,21),(83,17,21),(84,24,22),(85,36,22),(86,30,22),(87,20,23),(88,16,23),(89,12,23),(90,21,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,2,2),(3,3,3),(4,3,4),(5,2,5),(6,1,6),(7,3,7),(8,3,8),(9,3,9),(10,2,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,15),(16,3,16),(17,1,17),(18,2,18),(19,2,19),(20,1,20),(21,1,21),(22,1,22),(23,2,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-06-21 06:53:20','2022-06-21 06:53:20',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-06-21 06:53:20','2022-06-21 06:53:20',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-06-21 06:53:20','2022-06-21 06:53:20',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,16),(2,1,17),(3,1,20),(4,1,9),(5,1,8),(6,2,5),(7,2,19),(8,2,3),(9,2,17),(10,2,16),(11,2,7),(12,2,10),(13,3,10),(14,3,11),(15,3,16),(16,3,20),(17,3,13),(18,3,19),(19,3,5),(20,4,20),(21,4,11),(22,4,9),(23,4,2),(24,4,10),(25,4,1),(26,4,19),(27,5,15),(28,5,9),(29,5,14),(30,5,19),(31,5,1),(32,5,20),(33,6,18),(34,6,12),(35,6,1),(36,6,19),(37,6,16),(38,6,10),(39,6,8),(40,7,8),(41,7,5),(42,7,20),(43,7,1),(44,7,19),(45,7,3),(46,8,12),(47,8,4),(48,8,20),(49,8,3),(50,9,20),(51,9,14),(52,9,1),(53,9,4),(54,9,5),(55,9,18),(56,9,11),(57,10,8),(58,10,2),(59,10,7),(60,10,14),(61,10,11),(62,11,18),(63,11,10),(64,11,9),(65,11,17),(66,11,16),(67,11,15),(68,11,12),(69,12,19),(70,12,18),(71,12,14),(72,12,10),(73,12,15),(74,13,18),(75,13,6),(76,13,11),(77,13,12),(78,13,3),(79,13,8),(80,13,7),(81,14,8),(82,14,11),(83,14,18),(84,14,3),(85,14,6),(86,14,15),(87,14,16),(88,15,20),(89,15,7),(90,15,5),(91,15,10),(92,15,3),(93,15,4),(94,15,9),(95,16,8),(96,16,11),(97,16,2),(98,16,14),(99,16,7),(100,16,19),(101,16,6),(102,17,7),(103,17,16),(104,17,11),(105,17,19),(106,17,6),(107,17,20),(108,18,6),(109,18,5),(110,18,14),(111,18,8),(112,19,11),(113,19,15),(114,19,3),(115,19,13),(116,19,7),(117,19,16),(118,20,11),(119,20,17),(120,20,15),(121,20,9),(122,20,2),(123,20,16),(124,21,2),(125,21,17),(126,21,12),(127,21,4),(128,21,18),(129,21,9),(130,22,2),(131,22,10),(132,22,3),(133,22,7),(134,22,9),(135,22,15),(136,22,18),(137,23,2),(138,23,19),(139,23,6),(140,23,16),(141,23,14);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,9),(1,18),(1,21),(2,15),(3,12);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-06-21 06:53:20','2022-06-21 06:53:20'),(2,'New','#00c9a7','published','2022-06-21 06:53:20','2022-06-21 06:53:20'),(3,'Sale','#fe9931','published','2022-06-21 06:53:20','2022-06-21 06:53:20');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,5),(1,6),(2,1),(2,5),(2,6),(3,1),(3,2),(3,5),(4,2),(4,5),(4,6),(5,5),(5,6),(6,4),(6,6),(7,4),(8,4),(8,5),(8,6),(9,1),(9,3),(9,5),(10,4),(10,6),(11,2),(11,4),(11,6),(12,3),(12,4),(12,6),(13,1),(13,6),(14,1),(14,3),(14,5),(15,2),(16,3),(16,6),(17,1),(17,6),(18,1),(18,5),(19,1),(19,2),(19,5),(20,4),(20,6),(21,4),(21,5),(21,6),(22,4),(22,6),(23,2),(23,3),(23,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2022-06-21 06:53:45','2022-06-21 06:53:45'),(2,'Mobile',NULL,'published','2022-06-21 06:53:45','2022-06-21 06:53:45'),(3,'Iphone',NULL,'published','2022-06-21 06:53:45','2022-06-21 06:53:45'),(4,'Printer',NULL,'published','2022-06-21 06:53:45','2022-06-21 06:53:45'),(5,'Office',NULL,'published','2022-06-21 06:53:45','2022-06-21 06:53:45'),(6,'IT',NULL,'published','2022-06-21 06:53:45','2022-06-21 06:53:45');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(31,1,16),(41,1,21),(51,1,26),(77,1,39),(85,1,43),(89,1,45),(91,1,46),(93,1,47),(95,1,48),(97,1,49),(121,1,61),(123,1,62),(1,2,1),(17,2,9),(19,2,10),(25,2,13),(33,2,17),(37,2,19),(57,2,29),(99,2,50),(101,2,51),(109,2,55),(113,2,57),(117,2,59),(125,2,63),(127,2,64),(3,3,2),(13,3,7),(15,3,8),(21,3,11),(53,3,27),(63,3,32),(65,3,33),(71,3,36),(87,3,44),(107,3,54),(7,4,4),(39,4,20),(43,4,22),(47,4,24),(55,4,28),(61,4,31),(67,4,34),(79,4,40),(81,4,41),(103,4,52),(105,4,53),(9,5,5),(11,5,6),(23,5,12),(27,5,14),(29,5,15),(35,5,18),(45,5,23),(49,5,25),(59,5,30),(69,5,35),(73,5,37),(75,5,38),(83,5,42),(111,5,56),(115,5,58),(119,5,60),(129,5,65),(6,6,3),(10,6,5),(16,6,8),(20,6,10),(26,6,13),(38,6,19),(52,6,26),(72,6,36),(88,6,44),(118,6,59),(120,6,60),(124,6,62),(2,7,1),(12,7,6),(18,7,9),(22,7,11),(36,7,18),(48,7,24),(50,7,25),(56,7,28),(60,7,30),(64,7,32),(84,7,42),(94,7,47),(104,7,52),(116,7,58),(122,7,61),(4,8,2),(14,8,7),(32,8,16),(34,8,17),(40,8,20),(54,8,27),(58,8,29),(62,8,31),(68,8,34),(74,8,37),(80,8,40),(82,8,41),(96,8,48),(108,8,54),(110,8,55),(112,8,56),(126,8,63),(130,8,65),(8,9,4),(28,9,14),(30,9,15),(70,9,35),(76,9,38),(86,9,43),(90,9,45),(92,9,46),(98,9,49),(106,9,53),(24,10,12),(42,10,21),(44,10,22),(46,10,23),(66,10,33),(78,10,39),(100,10,50),(102,10,51),(114,10,57),(128,10,64);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,2,0),(5,28,3,1),(6,29,4,1),(7,30,4,0),(8,31,4,0),(9,32,4,0),(10,33,5,1),(11,34,5,0),(12,35,5,0),(13,36,6,1),(14,37,6,0),(15,38,6,0),(16,39,6,0),(17,40,6,0),(18,41,7,1),(19,42,7,0),(20,43,7,0),(21,44,8,1),(22,45,8,0),(23,46,8,0),(24,47,8,0),(25,48,9,1),(26,49,9,0),(27,50,10,1),(28,51,10,0),(29,52,10,0),(30,53,10,0),(31,54,11,1),(32,55,11,0),(33,56,11,0),(34,57,11,0),(35,58,12,1),(36,59,12,0),(37,60,13,1),(38,61,13,0),(39,62,13,0),(40,63,13,0),(41,64,14,1),(42,65,15,1),(43,66,15,0),(44,67,15,0),(45,68,15,0),(46,69,16,1),(47,70,16,0),(48,71,16,0),(49,72,17,1),(50,73,17,0),(51,74,17,0),(52,75,17,0),(53,76,18,1),(54,77,18,0),(55,78,18,0),(56,79,18,0),(57,80,19,1),(58,81,19,0),(59,82,20,1),(60,83,20,0),(61,84,21,1),(62,85,21,0),(63,86,22,1),(64,87,22,0),(65,88,23,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int unsigned DEFAULT NULL,
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-129-A0',0,13,0,1,1,4,0,0,80.25,NULL,NULL,NULL,10.00,14.00,17.00,801.00,1,51011,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-131-A0',0,12,0,1,1,4,0,0,40.5,NULL,NULL,NULL,13.00,17.00,13.00,554.00,1,15840,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-169-A0',0,10,0,1,1,6,0,0,20,NULL,NULL,NULL,18.00,17.00,13.00,894.00,1,185848,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-194-A0',0,20,0,1,1,1,0,0,528,369.6,NULL,NULL,12.00,15.00,11.00,808.00,1,34273,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-191-A0',0,20,0,1,1,4,0,0,716,NULL,NULL,NULL,13.00,15.00,13.00,879.00,1,126755,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-183-A0',0,19,0,1,1,3,0,0,470,NULL,NULL,NULL,13.00,18.00,18.00,500.00,1,8567,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-165-A0',0,15,0,1,1,7,0,0,501,NULL,NULL,NULL,19.00,11.00,12.00,852.00,1,90867,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-173-A0',0,13,0,1,1,4,0,0,1147,814.37,NULL,NULL,12.00,10.00,10.00,608.00,1,139083,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-106-A0',0,18,0,1,1,5,0,0,536,NULL,NULL,NULL,12.00,20.00,11.00,887.00,1,167548,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-150-A0',0,10,0,1,0,3,0,0,1184,NULL,NULL,NULL,16.00,18.00,17.00,542.00,1,104866,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-194-A0',0,10,0,1,0,3,0,0,1120,NULL,NULL,NULL,16.00,19.00,14.00,785.00,1,118721,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-151-A0',0,20,0,1,0,6,0,0,510,402.9,NULL,NULL,11.00,11.00,17.00,505.00,1,95738,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-143-A0',0,19,0,1,0,4,0,0,518,NULL,NULL,NULL,12.00,15.00,19.00,796.00,1,11019,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-102-A0',0,14,0,1,0,1,0,0,565,NULL,NULL,NULL,17.00,17.00,15.00,638.00,1,66562,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-137-A0',0,19,0,1,0,4,0,0,582,NULL,NULL,NULL,20.00,15.00,18.00,680.00,1,22221,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-141-A0',0,14,0,1,0,2,0,0,589,418.19,NULL,NULL,13.00,14.00,11.00,896.00,1,141980,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-182-A0',0,19,0,1,0,5,0,0,528,NULL,NULL,NULL,16.00,10.00,16.00,801.00,1,122115,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-176-A0',0,10,0,1,0,5,0,0,957,NULL,NULL,NULL,10.00,14.00,11.00,749.00,1,124210,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-170-A0',0,17,0,1,0,7,0,0,932,NULL,NULL,NULL,19.00,12.00,15.00,589.00,1,69346,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-143-A0',0,20,0,1,0,3,0,0,720,640.8,NULL,NULL,13.00,13.00,14.00,847.00,1,145122,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-156-A0',0,11,0,1,0,3,0,0,987,NULL,NULL,NULL,20.00,11.00,14.00,504.00,1,195114,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-175-A0',0,16,0,1,0,3,0,0,507,NULL,NULL,NULL,20.00,17.00,15.00,864.00,1,77507,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-109-A0',0,17,0,1,0,4,0,0,783,NULL,NULL,NULL,10.00,17.00,18.00,596.00,1,62564,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-129-A0',0,13,0,1,0,4,1,0,80.25,NULL,NULL,NULL,10.00,14.00,17.00,801.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-129-A0-A1',0,13,0,1,0,4,1,0,80.25,NULL,NULL,NULL,10.00,14.00,17.00,801.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-131-A0',0,12,0,1,0,4,1,0,40.5,NULL,NULL,NULL,13.00,17.00,13.00,554.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-131-A0-A1',0,12,0,1,0,4,1,0,40.5,NULL,NULL,NULL,13.00,17.00,13.00,554.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-169-A0',0,10,0,1,0,6,1,0,20,NULL,NULL,NULL,18.00,17.00,13.00,894.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-194-A0',0,20,0,1,0,1,1,0,528,369.6,NULL,NULL,12.00,15.00,11.00,808.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-194-A0-A1',0,20,0,1,0,1,1,0,528,390.72,NULL,NULL,12.00,15.00,11.00,808.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','SW-194-A0-A2',0,20,0,1,0,1,1,0,528,390.72,NULL,NULL,12.00,15.00,11.00,808.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-3.jpg\"]','SW-194-A0-A3',0,20,0,1,0,1,1,0,528,417.12,NULL,NULL,12.00,15.00,11.00,808.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-191-A0',0,20,0,1,0,4,1,0,716,NULL,NULL,NULL,13.00,15.00,13.00,879.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-191-A0-A1',0,20,0,1,0,4,1,0,716,NULL,NULL,NULL,13.00,15.00,13.00,879.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-191-A0-A2',0,20,0,1,0,4,1,0,716,NULL,NULL,NULL,13.00,15.00,13.00,879.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-183-A0',0,19,0,1,0,3,1,0,470,NULL,NULL,NULL,13.00,18.00,18.00,500.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-183-A0-A1',0,19,0,1,0,3,1,0,470,NULL,NULL,NULL,13.00,18.00,18.00,500.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-183-A0-A2',0,19,0,1,0,3,1,0,470,NULL,NULL,NULL,13.00,18.00,18.00,500.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-183-A0-A3',0,19,0,1,0,3,1,0,470,NULL,NULL,NULL,13.00,18.00,18.00,500.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-183-A0-A4',0,19,0,1,0,3,1,0,470,NULL,NULL,NULL,13.00,18.00,18.00,500.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-165-A0',0,15,0,1,0,7,1,0,501,NULL,NULL,NULL,19.00,11.00,12.00,852.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-165-A0-A1',0,15,0,1,0,7,1,0,501,NULL,NULL,NULL,19.00,11.00,12.00,852.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-165-A0-A2',0,15,0,1,0,7,1,0,501,NULL,NULL,NULL,19.00,11.00,12.00,852.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-173-A0',0,13,0,1,0,4,1,0,1147,814.37,NULL,NULL,12.00,10.00,10.00,608.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-173-A0-A1',0,13,0,1,0,4,1,0,1147,871.72,NULL,NULL,12.00,10.00,10.00,608.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-173-A0-A2',0,13,0,1,0,4,1,0,1147,929.07,NULL,NULL,12.00,10.00,10.00,608.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-3.jpg\"]','SW-173-A0-A3',0,13,0,1,0,4,1,0,1147,871.72,NULL,NULL,12.00,10.00,10.00,608.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-106-A0',0,18,0,1,0,5,1,0,536,NULL,NULL,NULL,12.00,20.00,11.00,887.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-106-A0-A1',0,18,0,1,0,5,1,0,536,NULL,NULL,NULL,12.00,20.00,11.00,887.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-150-A0',0,10,0,1,0,3,1,0,1184,NULL,NULL,NULL,16.00,18.00,17.00,542.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-150-A0-A1',0,10,0,1,0,3,1,0,1184,NULL,NULL,NULL,16.00,18.00,17.00,542.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-150-A0-A2',0,10,0,1,0,3,1,0,1184,NULL,NULL,NULL,16.00,18.00,17.00,542.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-150-A0-A3',0,10,0,1,0,3,1,0,1184,NULL,NULL,NULL,16.00,18.00,17.00,542.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-194-A0',0,10,0,1,0,3,1,0,1120,NULL,NULL,NULL,16.00,19.00,14.00,785.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-194-A0-A1',0,10,0,1,0,3,1,0,1120,NULL,NULL,NULL,16.00,19.00,14.00,785.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-194-A0-A2',0,10,0,1,0,3,1,0,1120,NULL,NULL,NULL,16.00,19.00,14.00,785.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-3.jpg\"]','SW-194-A0-A3',0,10,0,1,0,3,1,0,1120,NULL,NULL,NULL,16.00,19.00,14.00,785.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-151-A0',0,20,0,1,0,6,1,0,510,402.9,NULL,NULL,11.00,11.00,17.00,505.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-151-A0-A1',0,20,0,1,0,6,1,0,510,397.8,NULL,NULL,11.00,11.00,17.00,505.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-143-A0',0,19,0,1,0,4,1,0,518,NULL,NULL,NULL,12.00,15.00,19.00,796.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-143-A0-A1',0,19,0,1,0,4,1,0,518,NULL,NULL,NULL,12.00,15.00,19.00,796.00,NULL,0,'2022-06-21 06:53:42','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-143-A0-A2',0,19,0,1,0,4,1,0,518,NULL,NULL,NULL,12.00,15.00,19.00,796.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-143-A0-A3',0,19,0,1,0,4,1,0,518,NULL,NULL,NULL,12.00,15.00,19.00,796.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-102-A0',0,14,0,1,0,1,1,0,565,NULL,NULL,NULL,17.00,17.00,15.00,638.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-137-A0',0,19,0,1,0,4,1,0,582,NULL,NULL,NULL,20.00,15.00,18.00,680.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-137-A0-A1',0,19,0,1,0,4,1,0,582,NULL,NULL,NULL,20.00,15.00,18.00,680.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-137-A0-A2',0,19,0,1,0,4,1,0,582,NULL,NULL,NULL,20.00,15.00,18.00,680.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-137-A0-A3',0,19,0,1,0,4,1,0,582,NULL,NULL,NULL,20.00,15.00,18.00,680.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-141-A0',0,14,0,1,0,2,1,0,589,418.19,NULL,NULL,13.00,14.00,11.00,896.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-141-A0-A1',0,14,0,1,0,2,1,0,589,482.98,NULL,NULL,13.00,14.00,11.00,896.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-141-A0-A2',0,14,0,1,0,2,1,0,589,506.54,NULL,NULL,13.00,14.00,11.00,896.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-182-A0',0,19,0,1,0,5,1,0,528,NULL,NULL,NULL,16.00,10.00,16.00,801.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-182-A0-A1',0,19,0,1,0,5,1,0,528,NULL,NULL,NULL,16.00,10.00,16.00,801.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-2.jpg\"]','SW-182-A0-A2',0,19,0,1,0,5,1,0,528,NULL,NULL,NULL,16.00,10.00,16.00,801.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-3.jpg\"]','SW-182-A0-A3',0,19,0,1,0,5,1,0,528,NULL,NULL,NULL,16.00,10.00,16.00,801.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-176-A0',0,10,0,1,0,5,1,0,957,NULL,NULL,NULL,10.00,14.00,11.00,749.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-176-A0-A1',0,10,0,1,0,5,1,0,957,NULL,NULL,NULL,10.00,14.00,11.00,749.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-176-A0-A2',0,10,0,1,0,5,1,0,957,NULL,NULL,NULL,10.00,14.00,11.00,749.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(79,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-3.jpg\"]','SW-176-A0-A3',0,10,0,1,0,5,1,0,957,NULL,NULL,NULL,10.00,14.00,11.00,749.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(80,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-170-A0',0,17,0,1,0,7,1,0,932,NULL,NULL,NULL,19.00,12.00,15.00,589.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(81,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-170-A0-A1',0,17,0,1,0,7,1,0,932,NULL,NULL,NULL,19.00,12.00,15.00,589.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(82,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-143-A0',0,20,0,1,0,3,1,0,720,640.8,NULL,NULL,13.00,13.00,14.00,847.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(83,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-143-A0-A1',0,20,0,1,0,3,1,0,720,633.6,NULL,NULL,13.00,13.00,14.00,847.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(84,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-156-A0',0,11,0,1,0,3,1,0,987,NULL,NULL,NULL,20.00,11.00,14.00,504.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(85,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-156-A0-A1',0,11,0,1,0,3,1,0,987,NULL,NULL,NULL,20.00,11.00,14.00,504.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(86,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-175-A0',0,16,0,1,0,3,1,0,507,NULL,NULL,NULL,20.00,17.00,15.00,864.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(87,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-175-A0-A1',0,16,0,1,0,3,1,0,507,NULL,NULL,NULL,20.00,17.00,15.00,864.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(88,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-109-A0',0,17,0,1,0,4,1,0,783,NULL,NULL,NULL,10.00,17.00,18.00,596.00,NULL,0,'2022-06-21 06:53:43','2022-06-21 06:54:10','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Beat Headphone',NULL,NULL),('vi',29,'Red & Black Headphone',NULL,NULL),('vi',30,'Red & Black Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Red & Black Headphone',NULL,NULL),('vi',33,'Smart Watch External',NULL,NULL),('vi',34,'Smart Watch External',NULL,NULL),('vi',35,'Smart Watch External',NULL,NULL),('vi',36,'Nikon HD camera',NULL,NULL),('vi',37,'Nikon HD camera',NULL,NULL),('vi',38,'Nikon HD camera',NULL,NULL),('vi',39,'Nikon HD camera',NULL,NULL),('vi',40,'Nikon HD camera',NULL,NULL),('vi',41,'Audio Equipment',NULL,NULL),('vi',42,'Audio Equipment',NULL,NULL),('vi',43,'Audio Equipment',NULL,NULL),('vi',44,'Smart Televisions',NULL,NULL),('vi',45,'Smart Televisions',NULL,NULL),('vi',46,'Smart Televisions',NULL,NULL),('vi',47,'Smart Televisions',NULL,NULL),('vi',48,'Samsung Smart Phone',NULL,NULL),('vi',49,'Samsung Smart Phone',NULL,NULL),('vi',50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',52,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',53,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',54,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',55,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',56,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',57,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',58,'EPSION Plaster Printer',NULL,NULL),('vi',59,'EPSION Plaster Printer',NULL,NULL),('vi',60,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',61,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',62,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',63,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',64,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',65,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',66,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',67,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',68,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',69,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',70,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',71,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',72,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',73,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',74,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',75,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',76,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',77,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',78,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',79,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',80,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',81,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',82,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',83,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',84,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',85,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',86,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',87,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',88,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,23,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/23.jpg\"]'),(2,3,17,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/18.jpg\"]'),(3,3,20,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\"]'),(4,4,21,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/21.jpg\"]'),(5,4,6,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/20.jpg\"]'),(6,2,13,3.00,'Clean & perfect source code','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\"]'),(7,9,19,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(8,6,17,4.00,'Good app, good backup service and support. Good documentation.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(9,4,23,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\"]'),(10,7,22,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(11,6,23,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(12,2,19,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(13,3,14,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\"]'),(14,9,5,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(15,1,11,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/17.jpg\"]'),(16,2,3,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(17,9,5,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(18,4,20,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(19,3,6,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(20,5,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\"]'),(21,7,2,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(22,4,22,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(23,10,19,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(24,4,15,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/11.jpg\"]'),(25,8,15,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\"]'),(26,10,19,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(27,7,23,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(28,6,13,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(29,10,19,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\"]'),(30,3,12,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(31,10,12,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(32,2,10,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(33,2,14,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/11.jpg\"]'),(34,8,8,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(35,9,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(36,2,1,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(37,1,6,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(38,1,10,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/19.jpg\"]'),(39,7,12,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(40,8,16,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/18.jpg\"]'),(41,8,4,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(42,10,15,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(43,1,1,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(44,2,13,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(45,8,7,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(46,1,22,1.00,'Clean & perfect source code','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/18.jpg\"]'),(47,9,20,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(48,8,12,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(49,9,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(50,4,8,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(51,1,4,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(52,10,16,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(53,1,1,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(54,7,21,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(55,6,11,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(56,7,8,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\"]'),(57,5,10,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(58,9,4,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(59,6,23,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(60,2,22,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(61,6,10,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(62,4,13,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(63,1,9,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(64,8,19,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(65,2,3,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\"]'),(66,1,19,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/22.jpg\"]'),(67,7,23,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(68,8,17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(69,2,1,3.00,'Good app, good backup service and support. Good documentation.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(70,5,23,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/9.jpg\"]'),(71,7,12,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(72,4,13,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(73,10,16,4.00,'Clean & perfect source code','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(74,2,7,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(75,7,16,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(76,8,3,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(77,5,20,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(78,4,4,5.00,'Best ecommerce CMS online store!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\"]'),(79,7,10,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(80,7,12,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(81,5,15,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(82,9,7,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(83,5,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(84,5,4,4.00,'Good app, good backup service and support. Good documentation.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\"]'),(85,2,6,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(86,4,15,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(87,3,5,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(88,4,6,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(89,7,2,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(90,2,6,1.00,'Good app, good backup service and support. Good documentation.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/14.jpg\"]'),(91,3,21,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\"]'),(92,8,16,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\"]'),(93,6,5,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(94,1,13,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/3.jpg\"]'),(95,7,19,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(96,6,23,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\"]'),(97,8,9,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(98,5,20,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\"]'),(99,10,15,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(100,4,17,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-21 06:53:45','2022-06-21 06:53:45','[\"products\\/2.jpg\",\"products\\/23.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-06-04 14:54:10','2022-06-04 14:54:10'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-06-19 14:54:11','2022-06-21 06:54:11'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-06-06 06:54:12','2022-06-06 06:54:12'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-06-19 14:54:12','2022-06-21 06:54:12'),(6,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,2,2,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(7,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(8,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-06-14 14:54:12','2022-06-14 14:54:12'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-06-19 14:54:12','2022-06-21 06:54:12'),(10,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(11,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-06-07 00:54:12','2022-06-07 00:54:12'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-06-19 16:54:12','2022-06-21 06:54:12'),(13,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(14,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-06-13 08:54:12','2022-06-13 08:54:12'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-06-19 16:54:12','2022-06-21 06:54:12'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(17,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-06-18 06:54:12','2022-06-18 06:54:12'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-06-19 18:54:12','2022-06-21 06:54:12'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(20,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-06-19 20:54:12','2022-06-19 20:54:12'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-06-19 20:54:12','2022-06-21 06:54:12'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2022-06-21 06:54:12','2022-06-21 06:54:12'),(23,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-06-15 14:54:12','2022-06-15 14:54:12'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-06-19 20:54:13','2022-06-21 06:54:13'),(25,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-06-13 06:54:13','2022-06-13 06:54:13'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-06-19 22:54:13','2022-06-21 06:54:13'),(27,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-06-07 22:54:13','2022-06-07 22:54:13'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-06-19 22:54:13','2022-06-21 06:54:13'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(30,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-06-15 00:54:13','2022-06-15 00:54:13'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-06-20 00:54:13','2022-06-21 06:54:13'),(32,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-06-20 00:54:13','2022-06-20 00:54:13'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-06-20 00:54:13','2022-06-21 06:54:13'),(34,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-06-20 00:54:13','2022-06-20 00:54:13'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-06-20 00:54:13','2022-06-21 06:54:13'),(36,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2022-06-21 06:54:13','2022-06-21 06:54:13'),(37,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-06-09 14:54:13','2022-06-09 14:54:13'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-06-20 02:54:13','2022-06-21 06:54:13'),(39,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-06-16 22:54:13','2022-06-16 22:54:13'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-06-20 04:54:14','2022-06-21 06:54:14'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(42,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-06-14 18:54:14','2022-06-14 18:54:14'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-06-20 04:54:14','2022-06-21 06:54:14'),(44,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-06-17 06:54:14','2022-06-17 06:54:14'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-06-20 06:54:14','2022-06-21 06:54:14'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(47,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-06-18 06:54:14','2022-06-18 06:54:14'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-06-20 06:54:14','2022-06-21 06:54:14'),(49,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-06-12 02:54:14','2022-06-12 02:54:14'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-06-20 08:54:14','2022-06-21 06:54:14'),(51,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-06-15 18:54:14','2022-06-15 18:54:14'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-06-20 08:54:14','2022-06-21 06:54:14'),(53,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-06-15 10:54:14','2022-06-15 10:54:14'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-06-20 10:54:14','2022-06-21 06:54:14'),(55,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-06-14 14:54:14','2022-06-14 14:54:14'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-06-20 10:54:14','2022-06-21 06:54:14'),(57,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-06-17 12:54:14','2022-06-17 12:54:14'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-06-20 12:54:14','2022-06-21 06:54:14'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(60,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-06-17 22:54:14','2022-06-17 22:54:14'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-06-20 14:54:14','2022-06-21 06:54:14'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(63,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-06-20 14:54:14','2022-06-20 14:54:14'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-06-20 14:54:14','2022-06-21 06:54:14'),(65,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-06-17 04:54:14','2022-06-17 04:54:14'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-06-20 16:54:14','2022-06-21 06:54:14'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(68,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-06-16 00:54:14','2022-06-16 00:54:14'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-06-20 16:54:14','2022-06-21 06:54:14'),(70,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-06-20 06:54:14','2022-06-20 06:54:14'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-06-20 18:54:14','2022-06-21 06:54:14'),(72,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-06-20 18:54:14','2022-06-20 18:54:14'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-06-20 18:54:14','2022-06-21 06:54:14'),(74,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-06-20 00:54:14','2022-06-20 00:54:14'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-06-20 20:54:14','2022-06-21 06:54:14'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(77,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-06-17 02:54:14','2022-06-17 02:54:14'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-06-20 20:54:14','2022-06-21 06:54:14'),(79,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,31,31,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,31,'2022-06-21 06:54:14','2022-06-21 06:54:14'),(81,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-06-17 22:54:14','2022-06-17 22:54:14'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-06-20 20:54:14','2022-06-21 06:54:14'),(83,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-06-18 22:54:14','2022-06-18 22:54:14'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-06-20 22:54:15','2022-06-21 06:54:15'),(85,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,33,33,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(87,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-06-21 00:54:15','2022-06-21 00:54:15'),(88,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-06-21 00:54:15','2022-06-21 06:54:15'),(89,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-06-19 00:54:15','2022-06-19 00:54:15'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-06-21 00:54:15','2022-06-21 06:54:15'),(91,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-06-19 14:54:15','2022-06-19 14:54:15'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2022-06-21 02:54:15','2022-06-21 06:54:15'),(93,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,36,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(94,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-06-21 04:54:15','2022-06-21 04:54:15'),(95,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2022-06-21 04:54:15','2022-06-21 06:54:15'),(96,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,37,37,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(97,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,37,'2022-06-21 06:54:15','2022-06-21 06:54:15'),(98,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-06-20 16:54:15','2022-06-20 16:54:15'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2022-06-21 04:54:15','2022-06-21 06:54:15');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,1662.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:11','2022-06-21 06:54:11','JJD0030633927','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-29 13:54:11','2022-06-21 13:54:11'),(2,2,NULL,500.00,NULL,'','delivered',517.00,'completed','pending',0.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12','JJD0018959302','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-07-01 13:54:12','2022-06-21 13:54:12'),(3,3,NULL,785.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12','JJD0025950232','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-22 13:54:12','2022-06-21 13:54:12'),(4,4,NULL,2403.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12','JJD0040212029','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-22 13:54:12','2022-06-21 13:54:12'),(5,5,NULL,847.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12','JJD0051186669','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-22 13:54:12','2022-06-21 13:54:12'),(6,6,NULL,2510.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12','JJD0010894398','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-28 13:54:12','2022-06-21 13:54:12'),(7,7,NULL,2126.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:12','2022-06-21 06:54:12','JJD0032623361','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-24 13:54:12','2022-06-21 13:54:12'),(8,8,NULL,2355.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0055869006','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-28 13:54:13',NULL),(9,9,NULL,500.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0059832339','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-27 13:54:13',NULL),(10,10,NULL,1498.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0086921153','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-24 13:54:13','2022-06-21 13:54:13'),(11,11,NULL,4054.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0057450767','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-26 13:54:13',NULL),(12,12,NULL,2355.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0080798301','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-26 13:54:13',NULL),(13,13,NULL,1360.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0047627198','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-27 13:54:13','2022-06-21 13:54:13'),(14,14,NULL,2811.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0059382114','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-24 13:54:13',NULL),(15,15,NULL,1592.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:13','2022-06-21 06:54:13','JJD0066704234','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-23 13:54:13','2022-06-21 13:54:13'),(16,16,NULL,1767.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0028766659','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-25 13:54:14',NULL),(17,17,NULL,785.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0092396215','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-27 13:54:14','2022-06-21 13:54:14'),(18,18,NULL,505.00,NULL,'','approved',561.00,'pending','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0031591242','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-26 13:54:14',NULL),(19,19,NULL,1602.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0087106245','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-28 13:54:14',NULL),(20,20,NULL,3374.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD001831202','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-30 13:54:14',NULL),(21,21,NULL,4365.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0026466897','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-22 13:54:14',NULL),(22,22,NULL,2403.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0062731487','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-26 13:54:14',NULL),(23,23,NULL,3552.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0023792610','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-25 13:54:14','2022-06-21 13:54:14'),(24,24,NULL,1824.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0079199548','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-22 13:54:14','2022-06-21 13:54:14'),(25,25,NULL,1570.00,NULL,'','approved',2352.00,'pending','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD005359986','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-24 13:54:14',NULL),(26,26,NULL,2468.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0090063960','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-22 13:54:14','2022-06-21 13:54:14'),(27,27,NULL,2000.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD003701652','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-28 13:54:14',NULL),(28,28,NULL,3124.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0038343345','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-28 13:54:14',NULL),(29,29,NULL,1289.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0019060488','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-27 13:54:14',NULL),(30,30,NULL,1824.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0014833578','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-25 13:54:14','2022-06-21 13:54:14'),(31,31,NULL,2355.00,NULL,'','delivered',3472.00,'completed','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0032438420','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-28 13:54:14','2022-06-21 13:54:14'),(32,32,NULL,1360.00,NULL,'','approved',1222.20,'pending','pending',0.00,0,'2022-06-21 06:54:14','2022-06-21 06:54:14','JJD0033215757','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-07-01 13:54:14',NULL),(33,33,NULL,1222.00,NULL,'','delivered',1942.60,'completed','pending',0.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15','JJD0032229240','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-24 13:54:15','2022-06-21 13:54:15'),(34,34,NULL,2000.00,NULL,'','approved',1974.00,'pending','pending',0.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15','JJD0035904796','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-25 13:54:15',NULL),(35,35,NULL,4758.00,NULL,'','approved',5108.80,'pending','pending',0.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15','JJD0068406916','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-22 13:54:15',NULL),(36,36,NULL,3496.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15','JJD0032942267','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-24 13:54:15','2022-06-21 13:54:15'),(37,37,NULL,3533.00,NULL,'','delivered',2867.50,'completed','pending',0.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15','JJD0051405589','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-23 13:54:15','2022-06-21 13:54:15'),(38,38,NULL,785.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-21 06:54:15','2022-06-21 06:54:15','JJD0031068437','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-25 13:54:15',NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-06-21 06:53:45','2022-06-21 06:53:45');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2022-06-21 06:53:45','2022-06-21 06:53:45');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2022-06-21 06:54:00','2022-06-21 06:54:00');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-06-21 06:53:45','2022-06-21 06:53:45'),(2,'None',0.000000,2,'published','2022-06-21 06:53:45','2022-06-21 06:53:45');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(2,'PAYMENT',1,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(3,'ORDER & RETURNS',2,'published','2022-06-21 06:53:59','2022-06-21 06:53:59');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-06-21 06:53:59','2022-06-21 06:53:59'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-06-21 06:53:59','2022-06-21 06:53:59');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','c54f91955c02bca8fac6bc7c90c15834',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','c54f91955c02bca8fac6bc7c90c15834',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','f232dea83e95a13873898b0f50aa9d8e',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','4c9e00b520573a54f3f01be2b7e7f0a9',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','29dd7074a55faaede0799f5eab92bc35',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','cc168acc75a9a230ec312a43a53e7cab',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','efe19368136352ad9f398216c412499d',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','99b60da6728cba2333d2cff74a1f2a81',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','4c9e00b520573a54f3f01be2b7e7f0a9',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','29dd7074a55faaede0799f5eab92bc35',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','cc168acc75a9a230ec312a43a53e7cab',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','efe19368136352ad9f398216c412499d',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta_backup`
--

DROP TABLE IF EXISTS `language_meta_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta_backup`
--

LOCK TABLES `language_meta_backup` WRITE;
/*!40000 ALTER TABLE `language_meta_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',2200,'brands/1.jpg','[]','2022-06-21 06:53:16','2022-06-21 06:53:16',NULL),(2,0,'2',1,'image/jpeg',2685,'brands/2.jpg','[]','2022-06-21 06:53:16','2022-06-21 06:53:16',NULL),(3,0,'3',1,'image/jpeg',2311,'brands/3.jpg','[]','2022-06-21 06:53:16','2022-06-21 06:53:16',NULL),(4,0,'4',1,'image/jpeg',2374,'brands/4.jpg','[]','2022-06-21 06:53:16','2022-06-21 06:53:16',NULL),(5,0,'5',1,'image/jpeg',1927,'brands/5.jpg','[]','2022-06-21 06:53:16','2022-06-21 06:53:16',NULL),(6,0,'6',1,'image/jpeg',2519,'brands/6.jpg','[]','2022-06-21 06:53:17','2022-06-21 06:53:17',NULL),(7,0,'7',1,'image/jpeg',3043,'brands/7.jpg','[]','2022-06-21 06:53:17','2022-06-21 06:53:17',NULL),(8,0,'1',2,'image/jpeg',5173,'product-categories/1.jpg','[]','2022-06-21 06:53:17','2022-06-21 06:53:17',NULL),(9,0,'2',2,'image/jpeg',7355,'product-categories/2.jpg','[]','2022-06-21 06:53:18','2022-06-21 06:53:18',NULL),(10,0,'3',2,'image/jpeg',4427,'product-categories/3.jpg','[]','2022-06-21 06:53:18','2022-06-21 06:53:18',NULL),(11,0,'4',2,'image/jpeg',2963,'product-categories/4.jpg','[]','2022-06-21 06:53:18','2022-06-21 06:53:18',NULL),(12,0,'5',2,'image/jpeg',5016,'product-categories/5.jpg','[]','2022-06-21 06:53:18','2022-06-21 06:53:18',NULL),(13,0,'6',2,'image/jpeg',4101,'product-categories/6.jpg','[]','2022-06-21 06:53:19','2022-06-21 06:53:19',NULL),(14,0,'7',2,'image/jpeg',2576,'product-categories/7.jpg','[]','2022-06-21 06:53:19','2022-06-21 06:53:19',NULL),(15,0,'8',2,'image/jpeg',4670,'product-categories/8.jpg','[]','2022-06-21 06:53:19','2022-06-21 06:53:19',NULL),(16,0,'1',3,'image/jpeg',4911,'products/1.jpg','[]','2022-06-21 06:53:21','2022-06-21 06:53:21',NULL),(17,0,'10-1',3,'image/jpeg',120755,'products/10-1.jpg','[]','2022-06-21 06:53:21','2022-06-21 06:53:21',NULL),(18,0,'10-2',3,'image/jpeg',148563,'products/10-2.jpg','[]','2022-06-21 06:53:21','2022-06-21 06:53:21',NULL),(19,0,'10',3,'image/jpeg',11176,'products/10.jpg','[]','2022-06-21 06:53:23','2022-06-21 06:53:23',NULL),(20,0,'11-1',3,'image/jpeg',13706,'products/11-1.jpg','[]','2022-06-21 06:53:23','2022-06-21 06:53:23',NULL),(21,0,'11-2',3,'image/jpeg',16809,'products/11-2.jpg','[]','2022-06-21 06:53:23','2022-06-21 06:53:23',NULL),(22,0,'11-3',3,'image/jpeg',23991,'products/11-3.jpg','[]','2022-06-21 06:53:24','2022-06-21 06:53:24',NULL),(23,0,'11',3,'image/jpeg',8234,'products/11.jpg','[]','2022-06-21 06:53:24','2022-06-21 06:53:24',NULL),(24,0,'12-1',3,'image/jpeg',47775,'products/12-1.jpg','[]','2022-06-21 06:53:25','2022-06-21 06:53:25',NULL),(25,0,'12-2',3,'image/jpeg',52722,'products/12-2.jpg','[]','2022-06-21 06:53:25','2022-06-21 06:53:25',NULL),(26,0,'12-3',3,'image/jpeg',57295,'products/12-3.jpg','[]','2022-06-21 06:53:26','2022-06-21 06:53:26',NULL),(27,0,'12',3,'image/jpeg',9642,'products/12.jpg','[]','2022-06-21 06:53:26','2022-06-21 06:53:26',NULL),(28,0,'13-1',3,'image/jpeg',7494,'products/13-1.jpg','[]','2022-06-21 06:53:27','2022-06-21 06:53:27',NULL),(29,0,'13',3,'image/jpeg',7266,'products/13.jpg','[]','2022-06-21 06:53:27','2022-06-21 06:53:27',NULL),(30,0,'14',3,'image/jpeg',6626,'products/14.jpg','[]','2022-06-21 06:53:27','2022-06-21 06:53:27',NULL),(31,0,'15-1',3,'image/jpeg',9014,'products/15-1.jpg','[]','2022-06-21 06:53:27','2022-06-21 06:53:27',NULL),(32,0,'15',3,'image/jpeg',6629,'products/15.jpg','[]','2022-06-21 06:53:27','2022-06-21 06:53:27',NULL),(33,0,'16',3,'image/jpeg',8558,'products/16.jpg','[]','2022-06-21 06:53:28','2022-06-21 06:53:28',NULL),(34,0,'17-1',3,'image/jpeg',63248,'products/17-1.jpg','[]','2022-06-21 06:53:28','2022-06-21 06:53:28',NULL),(35,0,'17-2',3,'image/jpeg',71404,'products/17-2.jpg','[]','2022-06-21 06:53:29','2022-06-21 06:53:29',NULL),(36,0,'17-3',3,'image/jpeg',58949,'products/17-3.jpg','[]','2022-06-21 06:53:29','2022-06-21 06:53:29',NULL),(37,0,'17',3,'image/jpeg',7050,'products/17.jpg','[]','2022-06-21 06:53:29','2022-06-21 06:53:29',NULL),(38,0,'18-1',3,'image/jpeg',527022,'products/18-1.jpg','[]','2022-06-21 06:53:29','2022-06-21 06:53:29',NULL),(39,0,'18-2',3,'image/jpeg',43849,'products/18-2.jpg','[]','2022-06-21 06:53:30','2022-06-21 06:53:30',NULL),(40,0,'18-3',3,'image/jpeg',63876,'products/18-3.jpg','[]','2022-06-21 06:53:30','2022-06-21 06:53:30',NULL),(41,0,'18',3,'image/jpeg',61587,'products/18.jpg','[]','2022-06-21 06:53:30','2022-06-21 06:53:30',NULL),(42,0,'19-1',3,'image/jpeg',23166,'products/19-1.jpg','[]','2022-06-21 06:53:30','2022-06-21 06:53:30',NULL),(43,0,'19-2',3,'image/jpeg',12306,'products/19-2.jpg','[]','2022-06-21 06:53:31','2022-06-21 06:53:31',NULL),(44,0,'19-3',3,'image/jpeg',51458,'products/19-3.jpg','[]','2022-06-21 06:53:31','2022-06-21 06:53:31',NULL),(45,0,'19',3,'image/jpeg',227872,'products/19.jpg','[]','2022-06-21 06:53:31','2022-06-21 06:53:31',NULL),(46,0,'2-1',3,'image/jpeg',85522,'products/2-1.jpg','[]','2022-06-21 06:53:32','2022-06-21 06:53:32',NULL),(47,0,'2-2',3,'image/jpeg',122423,'products/2-2.jpg','[]','2022-06-21 06:53:32','2022-06-21 06:53:32',NULL),(48,0,'2-3',3,'image/jpeg',61996,'products/2-3.jpg','[]','2022-06-21 06:53:33','2022-06-21 06:53:33',NULL),(49,0,'2',3,'image/jpeg',10832,'products/2.jpg','[]','2022-06-21 06:53:33','2022-06-21 06:53:33',NULL),(50,0,'20-1',3,'image/jpeg',108013,'products/20-1.jpg','[]','2022-06-21 06:53:34','2022-06-21 06:53:34',NULL),(51,0,'20-2',3,'image/jpeg',107598,'products/20-2.jpg','[]','2022-06-21 06:53:34','2022-06-21 06:53:34',NULL),(52,0,'20-3',3,'image/jpeg',31959,'products/20-3.jpg','[]','2022-06-21 06:53:34','2022-06-21 06:53:34',NULL),(53,0,'20',3,'image/jpeg',12798,'products/20.jpg','[]','2022-06-21 06:53:35','2022-06-21 06:53:35',NULL),(54,0,'21-1',3,'image/jpeg',92022,'products/21-1.jpg','[]','2022-06-21 06:53:35','2022-06-21 06:53:35',NULL),(55,0,'21-2',3,'image/jpeg',73796,'products/21-2.jpg','[]','2022-06-21 06:53:35','2022-06-21 06:53:35',NULL),(56,0,'21',3,'image/jpeg',72410,'products/21.jpg','[]','2022-06-21 06:53:35','2022-06-21 06:53:35',NULL),(57,0,'22-1',3,'image/jpeg',50174,'products/22-1.jpg','[]','2022-06-21 06:53:35','2022-06-21 06:53:35',NULL),(58,0,'22-2',3,'image/jpeg',63267,'products/22-2.jpg','[]','2022-06-21 06:53:36','2022-06-21 06:53:36',NULL),(59,0,'22-3',3,'image/jpeg',125017,'products/22-3.jpg','[]','2022-06-21 06:53:36','2022-06-21 06:53:36',NULL),(60,0,'22',3,'image/jpeg',88636,'products/22.jpg','[]','2022-06-21 06:53:36','2022-06-21 06:53:36',NULL),(61,0,'23-1',3,'image/jpeg',64117,'products/23-1.jpg','[]','2022-06-21 06:53:36','2022-06-21 06:53:36',NULL),(62,0,'23-2',3,'image/jpeg',96786,'products/23-2.jpg','[]','2022-06-21 06:53:37','2022-06-21 06:53:37',NULL),(63,0,'23-3',3,'image/jpeg',46477,'products/23-3.jpg','[]','2022-06-21 06:53:37','2022-06-21 06:53:37',NULL),(64,0,'23',3,'image/jpeg',68142,'products/23.jpg','[]','2022-06-21 06:53:37','2022-06-21 06:53:37',NULL),(65,0,'3',3,'image/jpeg',8388,'products/3.jpg','[]','2022-06-21 06:53:37','2022-06-21 06:53:37',NULL),(66,0,'4-1',3,'image/jpeg',39071,'products/4-1.jpg','[]','2022-06-21 06:53:38','2022-06-21 06:53:38',NULL),(67,0,'4-2',3,'image/jpeg',35982,'products/4-2.jpg','[]','2022-06-21 06:53:38','2022-06-21 06:53:38',NULL),(68,0,'4-3',3,'image/jpeg',62867,'products/4-3.jpg','[]','2022-06-21 06:53:38','2022-06-21 06:53:38',NULL),(69,0,'4',3,'image/jpeg',5547,'products/4.jpg','[]','2022-06-21 06:53:38','2022-06-21 06:53:38',NULL),(70,0,'5-1',3,'image/jpeg',72383,'products/5-1.jpg','[]','2022-06-21 06:53:39','2022-06-21 06:53:39',NULL),(71,0,'5-2',3,'image/jpeg',108591,'products/5-2.jpg','[]','2022-06-21 06:53:39','2022-06-21 06:53:39',NULL),(72,0,'5-3',3,'image/jpeg',63741,'products/5-3.jpg','[]','2022-06-21 06:53:39','2022-06-21 06:53:39',NULL),(73,0,'5',3,'image/jpeg',98052,'products/5.jpg','[]','2022-06-21 06:53:40','2022-06-21 06:53:40',NULL),(74,0,'6',3,'image/jpeg',10944,'products/6.jpg','[]','2022-06-21 06:53:40','2022-06-21 06:53:40',NULL),(75,0,'7',3,'image/jpeg',10160,'products/7.jpg','[]','2022-06-21 06:53:40','2022-06-21 06:53:40',NULL),(76,0,'8-1',3,'image/jpeg',9986,'products/8-1.jpg','[]','2022-06-21 06:53:40','2022-06-21 06:53:40',NULL),(77,0,'8-2',3,'image/jpeg',8132,'products/8-2.jpg','[]','2022-06-21 06:53:40','2022-06-21 06:53:40',NULL),(78,0,'8-3',3,'image/jpeg',7867,'products/8-3.jpg','[]','2022-06-21 06:53:40','2022-06-21 06:53:40',NULL),(79,0,'8',3,'image/jpeg',10459,'products/8.jpg','[]','2022-06-21 06:53:40','2022-06-21 06:53:40',NULL),(80,0,'9-1',3,'image/jpeg',623616,'products/9-1.jpg','[]','2022-06-21 06:53:41','2022-06-21 06:53:41',NULL),(81,0,'9-2',3,'image/jpeg',647454,'products/9-2.jpg','[]','2022-06-21 06:53:41','2022-06-21 06:53:41',NULL),(82,0,'9',3,'image/jpeg',16733,'products/9.jpg','[]','2022-06-21 06:53:41','2022-06-21 06:53:41',NULL),(83,0,'1',4,'image/jpeg',11752,'customers/1.jpg','[]','2022-06-21 06:53:43','2022-06-21 06:53:43',NULL),(84,0,'10',4,'image/jpeg',27814,'customers/10.jpg','[]','2022-06-21 06:53:43','2022-06-21 06:53:43',NULL),(85,0,'2',4,'image/jpeg',19005,'customers/2.jpg','[]','2022-06-21 06:53:43','2022-06-21 06:53:43',NULL),(86,0,'3',4,'image/jpeg',20400,'customers/3.jpg','[]','2022-06-21 06:53:43','2022-06-21 06:53:43',NULL),(87,0,'4',4,'image/jpeg',26819,'customers/4.jpg','[]','2022-06-21 06:53:44','2022-06-21 06:53:44',NULL),(88,0,'5',4,'image/jpeg',14367,'customers/5.jpg','[]','2022-06-21 06:53:44','2022-06-21 06:53:44',NULL),(89,0,'6',4,'image/jpeg',12367,'customers/6.jpg','[]','2022-06-21 06:53:44','2022-06-21 06:53:44',NULL),(90,0,'7',4,'image/jpeg',20652,'customers/7.jpg','[]','2022-06-21 06:53:44','2022-06-21 06:53:44',NULL),(91,0,'8',4,'image/jpeg',21164,'customers/8.jpg','[]','2022-06-21 06:53:44','2022-06-21 06:53:44',NULL),(92,0,'9',4,'image/jpeg',6084,'customers/9.jpg','[]','2022-06-21 06:53:44','2022-06-21 06:53:44',NULL),(93,0,'1',5,'image/jpeg',532819,'news/1.jpg','[]','2022-06-21 06:53:46','2022-06-21 06:53:46',NULL),(94,0,'10',5,'image/jpeg',342651,'news/10.jpg','[]','2022-06-21 06:53:46','2022-06-21 06:53:46',NULL),(95,0,'11',5,'image/jpeg',296740,'news/11.jpg','[]','2022-06-21 06:53:46','2022-06-21 06:53:46',NULL),(96,0,'2',5,'image/jpeg',553729,'news/2.jpg','[]','2022-06-21 06:53:47','2022-06-21 06:53:47',NULL),(97,0,'3',5,'image/jpeg',522223,'news/3.jpg','[]','2022-06-21 06:53:47','2022-06-21 06:53:47',NULL),(98,0,'4',5,'image/jpeg',910908,'news/4.jpg','[]','2022-06-21 06:53:48','2022-06-21 06:53:48',NULL),(99,0,'5',5,'image/jpeg',666561,'news/5.jpg','[]','2022-06-21 06:53:48','2022-06-21 06:53:48',NULL),(100,0,'6',5,'image/jpeg',431929,'news/6.jpg','[]','2022-06-21 06:53:49','2022-06-21 06:53:49',NULL),(101,0,'7',5,'image/jpeg',568268,'news/7.jpg','[]','2022-06-21 06:53:49','2022-06-21 06:53:49',NULL),(102,0,'8',5,'image/jpeg',351088,'news/8.jpg','[]','2022-06-21 06:53:50','2022-06-21 06:53:50',NULL),(103,0,'9',5,'image/jpeg',353751,'news/9.jpg','[]','2022-06-21 06:53:50','2022-06-21 06:53:50',NULL),(104,0,'1-lg',6,'image/jpeg',66405,'sliders/1-lg.jpg','[]','2022-06-21 06:53:52','2022-06-21 06:53:52',NULL),(105,0,'1-md',6,'image/jpeg',40964,'sliders/1-md.jpg','[]','2022-06-21 06:53:53','2022-06-21 06:53:53',NULL),(106,0,'1-sm',6,'image/jpeg',40964,'sliders/1-sm.jpg','[]','2022-06-21 06:53:53','2022-06-21 06:53:53',NULL),(107,0,'2-lg',6,'image/jpeg',37835,'sliders/2-lg.jpg','[]','2022-06-21 06:53:53','2022-06-21 06:53:53',NULL),(108,0,'2-md',6,'image/jpeg',31875,'sliders/2-md.jpg','[]','2022-06-21 06:53:54','2022-06-21 06:53:54',NULL),(109,0,'2-sm',6,'image/jpeg',31875,'sliders/2-sm.jpg','[]','2022-06-21 06:53:54','2022-06-21 06:53:54',NULL),(110,0,'3-lg',6,'image/jpeg',40072,'sliders/3-lg.jpg','[]','2022-06-21 06:53:55','2022-06-21 06:53:55',NULL),(111,0,'3-md',6,'image/jpeg',32107,'sliders/3-md.jpg','[]','2022-06-21 06:53:55','2022-06-21 06:53:55',NULL),(112,0,'3-sm',6,'image/jpeg',32107,'sliders/3-sm.jpg','[]','2022-06-21 06:53:55','2022-06-21 06:53:55',NULL),(113,0,'1',7,'image/jpeg',56015,'promotion/1.jpg','[]','2022-06-21 06:53:56','2022-06-21 06:53:56',NULL),(114,0,'2',7,'image/jpeg',39964,'promotion/2.jpg','[]','2022-06-21 06:53:57','2022-06-21 06:53:57',NULL),(115,0,'3',7,'image/jpeg',71948,'promotion/3.jpg','[]','2022-06-21 06:53:57','2022-06-21 06:53:57',NULL),(116,0,'4',7,'image/jpeg',94590,'promotion/4.jpg','[]','2022-06-21 06:53:57','2022-06-21 06:53:57',NULL),(117,0,'5',7,'image/jpeg',96153,'promotion/5.jpg','[]','2022-06-21 06:53:57','2022-06-21 06:53:57',NULL),(118,0,'6',7,'image/jpeg',160910,'promotion/6.jpg','[]','2022-06-21 06:53:58','2022-06-21 06:53:58',NULL),(119,0,'7',7,'image/jpeg',59044,'promotion/7.jpg','[]','2022-06-21 06:53:58','2022-06-21 06:53:58',NULL),(120,0,'8',7,'image/jpeg',39964,'promotion/8.jpg','[]','2022-06-21 06:53:58','2022-06-21 06:53:58',NULL),(121,0,'9',7,'image/jpeg',54865,'promotion/9.jpg','[]','2022-06-21 06:53:58','2022-06-21 06:53:58',NULL),(122,0,'app',8,'image/png',88771,'general/app.png','[]','2022-06-21 06:54:00','2022-06-21 06:54:00',NULL),(123,0,'coming-soon',8,'image/jpeg',83359,'general/coming-soon.jpg','[]','2022-06-21 06:54:01','2022-06-21 06:54:01',NULL),(124,0,'favicon',8,'image/png',5147,'general/favicon.png','[]','2022-06-21 06:54:01','2022-06-21 06:54:01',NULL),(125,0,'logo-dark',8,'image/png',906,'general/logo-dark.png','[]','2022-06-21 06:54:02','2022-06-21 06:54:02',NULL),(126,0,'logo-light',8,'image/png',1430,'general/logo-light.png','[]','2022-06-21 06:54:02','2022-06-21 06:54:02',NULL),(127,0,'logo',8,'image/png',892,'general/logo.png','[]','2022-06-21 06:54:02','2022-06-21 06:54:02',NULL),(128,0,'newsletter',8,'image/jpeg',25569,'general/newsletter.jpg','[]','2022-06-21 06:54:03','2022-06-21 06:54:03',NULL),(129,0,'payment-method-1',8,'image/jpeg',976,'general/payment-method-1.jpg','[]','2022-06-21 06:54:03','2022-06-21 06:54:03',NULL),(130,0,'payment-method-2',8,'image/jpeg',1122,'general/payment-method-2.jpg','[]','2022-06-21 06:54:03','2022-06-21 06:54:03',NULL),(131,0,'payment-method-3',8,'image/jpeg',1040,'general/payment-method-3.jpg','[]','2022-06-21 06:54:03','2022-06-21 06:54:03',NULL),(132,0,'payment-method-4',8,'image/jpeg',722,'general/payment-method-4.jpg','[]','2022-06-21 06:54:04','2022-06-21 06:54:04',NULL),(133,0,'payment-method-5',8,'image/jpeg',773,'general/payment-method-5.jpg','[]','2022-06-21 06:54:04','2022-06-21 06:54:04',NULL),(134,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-06-21 06:54:04','2022-06-21 06:54:04',NULL),(135,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-06-21 06:54:05','2022-06-21 06:54:05',NULL),(136,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-06-21 06:54:05','2022-06-21 06:54:05',NULL),(137,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-06-21 06:54:05','2022-06-21 06:54:05',NULL),(138,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-06-21 06:54:05','2022-06-21 06:54:05',NULL),(139,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-06-21 06:54:06','2022-06-21 06:54:06',NULL),(140,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-06-21 06:54:06','2022-06-21 06:54:06',NULL),(141,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-06-21 06:54:06','2022-06-21 06:54:06',NULL),(142,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-06-21 06:54:07','2022-06-21 06:54:07',NULL),(143,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-06-21 06:54:07','2022-06-21 06:54:07',NULL),(144,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-06-21 06:54:07','2022-06-21 06:54:07',NULL),(145,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-06-21 06:54:08','2022-06-21 06:54:08',NULL),(146,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-06-21 06:54:08','2022-06-21 06:54:08',NULL),(147,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-06-21 06:54:08','2022-06-21 06:54:08',NULL),(148,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-06-21 06:54:09','2022-06-21 06:54:09',NULL),(149,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-06-21 06:54:09','2022-06-21 06:54:09',NULL),(150,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-06-21 06:54:09','2022-06-21 06:54:09',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-06-21 06:53:15','2022-06-21 06:53:15',NULL),(2,0,'product-categories','product-categories',0,'2022-06-21 06:53:17','2022-06-21 06:53:17',NULL),(3,0,'products','products',0,'2022-06-21 06:53:20','2022-06-21 06:53:20',NULL),(4,0,'customers','customers',0,'2022-06-21 06:53:43','2022-06-21 06:53:43',NULL),(5,0,'news','news',0,'2022-06-21 06:53:46','2022-06-21 06:53:46',NULL),(6,0,'sliders','sliders',0,'2022-06-21 06:53:52','2022-06-21 06:53:52',NULL),(7,0,'promotion','promotion',0,'2022-06-21 06:53:56','2022-06-21 06:53:56',NULL),(8,0,'general','general',0,'2022-06-21 06:54:00','2022-06-21 06:54:00',NULL),(9,0,'stores','stores',0,'2022-06-21 06:54:04','2022-06-21 06:54:04',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-06-21 06:54:00','2022-06-21 06:54:00'),(2,5,'main-menu','2022-06-21 06:54:00','2022-06-21 06:54:00');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2022-06-21 06:54:00','2022-06-21 06:54:00');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-06-21 06:54:00','2022-06-21 06:54:00'),(2,'Quick links','quick-links','published','2022-06-21 06:54:00','2022-06-21 06:54:00'),(3,'Company','company','published','2022-06-21 06:54:00','2022-06-21 06:54:00'),(4,'Business','business','published','2022-06-21 06:54:00','2022-06-21 06:54:00'),(5,'Menu chính','menu-chinh','published','2022-06-21 06:54:00','2022-06-21 06:54:00'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2022-06-21 06:54:00','2022-06-21 06:54:00'),(7,'Công ty','cong-ty','published','2022-06-21 06:54:00','2022-06-21 06:54:00'),(8,'Doanh nghiệp','doanh-nghiep','published','2022-06-21 06:54:00','2022-06-21 06:54:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-21 06:53:20','2022-06-21 06:53:20'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-06-21 06:53:42','2022-06-21 06:53:42'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-06-21 06:53:56','2022-06-21 06:53:56');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_18_061011_create_country_table',1),(25,'2020_03_05_041139_create_ecommerce_tables',1),(26,'2020_11_18_150916_ads_create_ads_table',1),(27,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(28,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(29,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(30,'2021_02_16_092633_remove_default_value_for_author_type',1),(31,'2021_02_18_073505_update_table_ec_reviews',1),(32,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(33,'2021_03_10_025153_change_column_tax_amount',1),(34,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(35,'2021_03_27_144913_add_customer_type_into_table_payments',1),(36,'2021_04_28_074008_ecommerce_create_product_label_table',1),(37,'2021_05_24_034720_make_column_currency_nullable',1),(38,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(39,'2021_06_28_153141_correct_slugs_data',1),(40,'2021_07_06_030002_create_marketplace_table',1),(41,'2021_08_02_084121_fix_old_shortcode',1),(42,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(43,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(44,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(45,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(46,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(47,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(48,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(49,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(50,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(51,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(52,'2021_10_19_020859_update_metadata_field',1),(53,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(54,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(55,'2021_11_23_071403_correct_languages_for_product_variations',1),(56,'2021_11_28_031808_add_product_tags_translations',1),(57,'2021_12_01_031123_add_featured_image_to_ec_products',1),(58,'2021_12_02_035301_add_ads_translations_table',1),(59,'2021_12_03_030600_create_blog_translations',1),(60,'2021_12_03_075608_create_page_translations',1),(61,'2021_12_03_082134_create_faq_translations',1),(62,'2021_12_03_084118_create_location_translations',1),(63,'2021_12_03_094518_migrate_old_location_data',1),(64,'2021_12_06_031304_update_table_mp_customer_revenues',1),(65,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(66,'2022_01_01_033107_update_table_ec_shipments',1),(67,'2022_01_16_085908_improve_plugin_location',1),(68,'2022_02_16_042457_improve_product_attribute_sets',1),(69,'2022_03_22_075758_correct_product_name',1),(70,'2022_04_19_113334_add_index_to_ec_products',1),(71,'2022_04_19_113923_add_index_to_table_posts',1),(72,'2022_04_20_100851_add_index_to_media_table',1),(73,'2022_04_20_101046_add_index_to_menu_table',1),(74,'2022_04_28_144405_remove_unused_table',1),(75,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(76,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(77,'2022_06_16_095633_add_index_to_some_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,5,1,125.55,0.00,125.55,0.00,'USD',NULL,'2022-06-21 02:54:15','2022-06-21 02:54:15',0,NULL),(2,10,3,1232.00,0.00,1232.00,0.00,'USD',NULL,'2022-06-19 22:54:15','2022-06-19 22:54:15',0,NULL),(3,10,4,1636.80,0.00,1636.80,1232.00,'USD',NULL,'2022-06-18 18:54:15','2022-06-18 18:54:15',0,NULL),(4,5,5,792.00,0.00,792.00,125.55,'USD',NULL,'2022-06-19 18:54:16','2022-06-19 18:54:16',0,NULL),(5,5,6,2612.80,0.00,2612.80,917.55,'USD',NULL,'2022-06-16 00:54:16','2022-06-16 00:54:16',0,NULL),(6,2,7,4187.40,0.00,4187.40,0.00,'USD',NULL,'2022-06-20 14:54:16','2022-06-20 14:54:16',0,NULL),(7,5,10,2009.70,0.00,2009.70,3530.35,'USD',NULL,'2022-06-20 08:54:16','2022-06-20 08:54:16',0,NULL),(8,5,15,1087.80,0.00,1087.80,5540.05,'USD',NULL,'2022-06-10 14:54:17','2022-06-10 14:54:17',0,NULL),(9,10,17,1232.00,0.00,1232.00,2868.80,'USD',NULL,'2022-06-15 06:54:17','2022-06-15 06:54:17',0,NULL),(10,5,23,4620.40,0.00,4620.40,6627.85,'USD',NULL,'2022-06-13 06:54:17','2022-06-13 06:54:17',0,NULL),(11,5,24,3555.70,0.00,3555.70,11248.25,'USD',NULL,'2022-06-15 00:54:17','2022-06-15 00:54:17',0,NULL),(12,5,26,1659.90,0.00,1659.90,14803.95,'USD',NULL,'2022-06-14 12:54:17','2022-06-14 12:54:17',0,NULL),(13,5,30,3555.70,0.00,3555.70,16463.85,'USD',NULL,'2022-06-13 12:54:18','2022-06-13 12:54:18',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,147.00,4187.40,'USD','','{\"name\":\"Miss Marilou Runolfsson DDS\",\"number\":\"+17375861465\",\"full_name\":\"Missouri Towne\",\"description\":\"Idell Harber V\"}',NULL,0,'completed',NULL,'2022-06-21 06:54:18','2022-06-21 06:54:18',NULL),(2,2,0.00,774.00,4040.40,'USD','','{\"name\":\"Miss Marilou Runolfsson DDS\",\"number\":\"+17375861465\",\"full_name\":\"Missouri Towne\",\"description\":\"Idell Harber V\"}',NULL,0,'completed',NULL,'2022-06-21 06:54:18','2022-06-21 06:54:18',NULL),(3,5,0.00,1236.00,20019.55,'USD','','{\"name\":\"Sidney Murphy DVM\",\"number\":\"+19804992719\",\"full_name\":\"Serenity Dooley\",\"description\":\"Dr. Ethel Bailey PhD\"}',NULL,0,'processing',NULL,'2022-06-21 06:54:19','2022-06-21 06:54:19',NULL),(4,5,0.00,6165.00,18783.55,'USD','','{\"name\":\"Sidney Murphy DVM\",\"number\":\"+19804992719\",\"full_name\":\"Serenity Dooley\",\"description\":\"Dr. Ethel Bailey PhD\"}',NULL,0,'processing',NULL,'2022-06-21 06:54:19','2022-06-21 06:54:19',NULL),(5,10,0.00,1332.00,4100.80,'USD','','{\"name\":\"Natalia Beer\",\"number\":\"+18129568421\",\"full_name\":\"Mr. Freddy Kutch DDS\",\"description\":\"Dr. Thea Wisozk Jr.\"}',NULL,0,'pending',NULL,'2022-06-21 06:54:19','2022-06-21 06:54:19',NULL),(6,10,0.00,755.00,2768.80,'USD','','{\"name\":\"Natalia Beer\",\"number\":\"+18129568421\",\"full_name\":\"Mr. Freddy Kutch DDS\",\"description\":\"Dr. Thea Wisozk Jr.\"}',NULL,0,'pending',NULL,'2022-06-21 06:54:20','2022-06-21 06:54:20',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','bashirian.jalen@example.com','+17852595338','298 Kiera Brook Apt. 439','PY','New Jersey','New Kristina',2,'stores/1.png','Quis vero qui neque at odit quia nobis.','Vel ipsum aut sed nihil. Dolorem quisquam sit necessitatibus inventore sed dolor eum. Dolores tempore quis vel dolores.','published',NULL,'2022-06-21 06:54:10','2022-06-21 06:54:10'),(2,'Global Office','lonnie72@example.org','+15519702895','859 Callie Ramp','KM','Connecticut','Lake Jeffreyhaven',5,'stores/2.png','Est molestiae voluptatem unde ut.','Est sunt non et eos fugit. Sint laboriosam optio et repellat odit nesciunt.','published',NULL,'2022-06-21 06:54:10','2022-06-21 06:54:10'),(3,'Young Shop','rowland64@example.com','+15514005160','92647 Pfeffer Path','TC','Washington','Lindseyburgh',10,'stores/3.png','Perferendis nulla debitis est.','Et quis quo ea est optio. Eos excepturi et officia culpa perferendis necessitatibus. Expedita perferendis occaecati quia harum ut ducimus et.','published',NULL,'2022-06-21 06:54:10','2022-06-21 06:54:10');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,3266.40,0.00,4187.40,'$2y$10$Ts13aTc47wQRepP7o.ofIeCoLCMz8Y6x1MUF2gc390e39CenV9mca','{\"name\":\"Miss Marilou Runolfsson DDS\",\"number\":\"+17375861465\",\"full_name\":\"Missouri Towne\",\"description\":\"Idell Harber V\"}','2022-06-21 06:54:09','2022-06-21 06:54:19'),(2,5,12618.55,0.00,20019.55,'$2y$10$6x3veHPaCk5TwtGIQB5Um.wq7KzQwgZwsxQmoaP4gLEdMe/.FrhGu','{\"name\":\"Sidney Murphy DVM\",\"number\":\"+19804992719\",\"full_name\":\"Serenity Dooley\",\"description\":\"Dr. Ethel Bailey PhD\"}','2022-06-21 06:54:10','2022-06-21 06:54:19'),(3,10,2013.80,0.00,4100.80,'$2y$10$peATn2o2DDzYeMzuxIUOCeFLf5j3oc/jCBxbe.p7Kl3rtTOsgdW1S','{\"name\":\"Natalia Beer\",\"number\":\"+18129568421\",\"full_name\":\"Mr. Freddy Kutch DDS\",\"description\":\"Dr. Thea Wisozk Jr.\"}','2022-06-21 06:54:10','2022-06-21 06:54:20');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(2,'About us','<p>She was a queer-shaped little creature, and held it out loud. \'Thinking again?\' the Duchess was sitting on a three-legged stool in the window, and one foot to the table, but it did not venture to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his shrill little voice, the name \'W. RABBIT\' engraved upon it. She went in search of her age knew the meaning of it had entirely disappeared; so the King say in a long, low.</p><p>Alice, who felt very glad to find any. And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said Alice. \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t help it,\' said Alice, and she swam nearer to make the arches. The chief difficulty Alice found at first was in the middle. Alice kept her waiting!\' Alice felt that this could not think of nothing better to say but \'It belongs to a shriek, \'and just as.</p><p>Gryphon, with a large kitchen, which was the White Rabbit as he spoke. \'A cat may look at the righthand bit again, and the turtles all advance! They are waiting on the second verse of the party sat silent for a minute, while Alice thought over all the unjust things--\' when his eye chanced to fall a long and a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of a feather flock.</p><p>I wonder what they\'ll do next! If they had to stop and untwist it. After a while, finding that nothing more to be in a large rabbit-hole under the hedge. In another moment it was a large one, but it puzzled her very earnestly, \'Now, Dinah, tell me your history, she do.\' \'I\'ll tell it her,\' said the Gryphon. \'How the creatures wouldn\'t be so easily offended!\' \'You\'ll get used to come yet, please your Majesty,\' said Two, in a low trembling voice, \'Let us get to the Gryphon. \'It all came.</p>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(3,'Terms Of Use','<p>Presently the Rabbit came up to her head, and she grew no larger: still it had been. But her sister kissed her, and the others all joined in chorus, \'Yes, please do!\' pleaded Alice. \'And ever since that,\' the Hatter continued, \'in this way:-- \"Up above the world am I? Ah, THAT\'S the great wonder is, that there\'s any one of the baby, it was YOUR table,\' said Alice; \'I might as well say,\' added the Dormouse. \'Write that down,\' the King repeated angrily, \'or I\'ll have you executed on the stairs.</p><p>Alice looked all round the table, half hoping she might as well as she was trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had to stop and untwist it. After a minute or two sobs choked his voice. \'Same as if she had never before seen a cat without a great deal to come out among the trees as well go in ringlets at all; however, she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, and Alice, were in custody and under sentence of execution.\' \'What.</p><p>Do you think I can go back and finish your story!\' Alice called after it; and as for the rest of the sort. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit blew three blasts on the ground near the centre of the earth. At last the Caterpillar took the least idea what a wonderful dream it had struck her foot! She was close behind it when she first saw the White Rabbit, jumping up in a long, low hall, which was lit up by a row of lodging houses, and.</p><p>Why, it fills the whole party look so grave that she could guess, she was now more than that, if you were or might have been changed for Mabel! I\'ll try if I must, I must,\' the King said, for about the whiting!\' \'Oh, as to go down the hall. After a minute or two, which gave the Pigeon went on, \'and most things twinkled after that--only the March Hare, \'that \"I like what I could let you out, you know.\' It was, no doubt: only Alice did not quite sure whether it was an old Crab took the watch and.</p>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(4,'Terms & Conditions','<p>Bill!\' then the other, looking uneasily at the Queen, but she ran off as hard as she could see this, as she spoke, but no result seemed to be a LITTLE larger, sir, if you please! \"William the Conqueror, whose cause was favoured by the fire, and at last she spread out her hand on the door of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even spoke to Time!\'.</p><p>Alice, as she left her, leaning her head to hide a smile: some of them at dinn--\' she checked herself hastily. \'I don\'t see how he did not appear, and after a pause: \'the reason is, that I\'m perfectly sure I don\'t take this young lady tells us a story!\' said the Gryphon. \'Then, you know,\' said the Dormouse: \'not in that soup!\' Alice said with some surprise that the best thing to nurse--and she\'s such a very little use without my shoulders. Oh, how I wish you were never even spoke to Time!\'.</p><p>On various pretexts they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' \'I couldn\'t help it,\' said the Lory. Alice replied in a whisper, half afraid that she was holding, and she had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD not remember ever having seen in her life, and had just begun to dream that she did not appear, and after a pause: \'the reason is, that I\'m perfectly sure I have to.</p><p>Improve his shining tail, And pour the waters of the players to be no use in crying like that!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I shall remember it in a low voice, to the baby, it was addressed to the Hatter. \'Nor I,\' said the March Hare. \'Exactly so,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon said, in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, so she began nibbling at the cook.</p>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(5,'Refund Policy','<p>Alice; \'living at the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that is rather a complaining tone, \'and they all stopped and looked at it again: but he could go. Alice took up the little thing was snorting like a tunnel for some time with one eye; \'I seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mouse, frowning, but very glad to find her way out. \'I shall sit here,\' the Footman went on to the Cheshire Cat, she was walking by the.</p><p>Why, there\'s hardly room to open them again, and all the children she knew she had never forgotten that, if you like,\' said the King triumphantly, pointing to the Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her answer. \'They\'re done with a deep sigh, \'I was a dead silence. \'It\'s a Cheshire cat,\' said the Duchess. An invitation from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you, you coward!\' and at once and put back into the open air. \'IF I don\'t.</p><p>The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said to itself \'Then I\'ll go round and look up in a sorrowful tone; \'at least there\'s no harm in trying.\' So she stood looking at Alice for some time after the candle is blown out, for she was about a foot high: then she noticed that the Mouse in the same size: to be nothing but the Hatter went on planning to herself how she would feel with all speed back to them, and he went on without attending to her, And mentioned me to him: She.</p><p>The table was a real nose; also its eyes by this time?\' she said to herself; \'the March Hare took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin with; and being ordered about in the window?\' \'Sure, it\'s an arm for all that.\' \'Well, it\'s got no sorrow, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the little door, had vanished completely. Very soon the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and.</p>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(10,'Affiliate','<p>March Hare. \'Exactly so,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the King. The next thing is, to get through the wood. \'It\'s the first witness,\' said the Dormouse, not choosing to notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'as all the time at the beginning,\' the King had said that day. \'A likely.</p><p>Because he knows it teases.\' CHORUS. (In which the words all coming different, and then she remembered how small she was coming to, but it makes me grow larger, I can go back by railway,\' she said to herself \'This is Bill,\' she gave a little startled by seeing the Cheshire Cat: now I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the thing yourself, some winter day, I will prosecute YOU.--Come, I\'ll take no denial; We must have a trial: For.</p><p>Just as she could, for the first witness,\' said the Gryphon: \'I went to work very carefully, nibbling first at one and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t help it,\' said Five, \'and I\'ll tell you my adventures--beginning from this side of the what?\' said the Lory, as soon as she could. \'The game\'s going on rather better now,\' she added aloud. \'Do you play croquet?\' The soldiers were always getting up and repeat something now. Tell her to speak.</p><p>CHAPTER IV. The Rabbit Sends in a sorrowful tone, \'I\'m afraid I can\'t tell you my history, and you\'ll understand why it is to France-- Then turn not pale, beloved snail, but come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, this sort in her pocket, and was suppressed. \'Come, that finished the goose, with the dream of Wonderland of long ago: and how she would have made a rush at Alice the moment how large she had never seen.</p>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(11,'Career','<p>Alice, and she jumped up on tiptoe, and peeped over the wig, (look at the Gryphon went on muttering over the wig, (look at the thought that it might injure the brain; But, now that I\'m doubtful about the twentieth time that day. \'No, no!\' said the Hatter; \'so I can\'t see you?\' She was close behind it was an old Crab took the least notice of her sister, as well to say \'Drink me,\' but the Rabbit angrily. \'Here! Come and help me out of that is--\"Birds of a tree in the window, she suddenly spread.</p><p>I\'d only been the right way of keeping up the little golden key, and when she went on in the window?\' \'Sure, it\'s an arm for all that.\' \'Well, it\'s got no business of MINE.\' The Queen turned angrily away from him, and said to one of the earth. At last the Caterpillar took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King had said that day. \'A likely story indeed!\' said the Queen, \'Really, my dear, I think?\' he said in a hoarse, feeble.</p><p>I needn\'t be so stingy about it, you know.\' It was, no doubt: only Alice did not venture to say which), and they all cheered. Alice thought she might as well to introduce it.\' \'I don\'t know one,\' said Alice. \'And be quick about it,\' said the Gryphon, and all must have a prize herself, you know,\' the Mock Turtle. \'Very much indeed,\' said Alice. \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, \'I\'ve often seen them at last, with a pair of the e--e--evening, Beautiful, beauti--FUL.</p><p>She was close behind it when she first saw the White Rabbit cried out, \'Silence in the other: the Duchess sang the second time round, she came upon a little pattering of footsteps in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the Gryphon went on, very much what would happen next. First, she tried hard to whistle to it; but she could guess, she was surprised to see you any more!\' And here poor Alice began to cry again, for this curious child was very nearly.</p>',1,NULL,'default',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',0,NULL,'published','2022-06-21 06:53:56','2022-06-21 06:53:56');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'IY3FENTNSX','paypal',NULL,125.55,1,'completed','confirm',8,NULL,NULL,'2022-06-21 06:54:11','2022-06-21 06:54:11','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'LYAHNUEEON','cod',NULL,517.00,2,'pending','confirm',8,NULL,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'AII56B6X9S','mollie',NULL,1232.00,3,'completed','confirm',8,NULL,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'C4EEI47KC6','sslcommerz',NULL,1636.80,4,'completed','confirm',9,NULL,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'NTQ9X5OV14','sslcommerz',NULL,792.00,5,'completed','confirm',9,NULL,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'PTW4HRC0HI','razorpay',NULL,2612.80,6,'completed','confirm',4,NULL,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'GO5VVAU4KP','razorpay',NULL,4187.40,7,'completed','confirm',1,NULL,NULL,'2022-06-21 06:54:12','2022-06-21 06:54:12','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'IAG1IFF8AT','paypal',NULL,3472.00,8,'completed','confirm',1,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'0WAHMII409','razorpay',NULL,517.00,9,'completed','confirm',3,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'1NDNR0H9DH','sslcommerz',NULL,2009.70,10,'completed','confirm',3,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'YVOQXHUD1V','bank_transfer',NULL,3562.80,11,'pending','confirm',4,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'LOMGVZX9WN','stripe',NULL,3472.00,12,'completed','confirm',4,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'8C0SCXQUKB','bank_transfer',NULL,1222.20,13,'pending','confirm',4,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'DXWJGPYOUR','razorpay',NULL,3151.50,14,'completed','confirm',9,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'1ZSKMB94YL','stripe',NULL,1087.80,15,'completed','confirm',4,NULL,NULL,'2022-06-21 06:54:13','2022-06-21 06:54:13','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'6KX4OAW69Q','mollie',NULL,2889.20,16,'completed','confirm',4,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'BWXTPVFHQX','mollie',NULL,1232.00,17,'completed','confirm',1,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'7ROMGIIZ6X','cod',NULL,561.00,18,'pending','confirm',1,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'LAQWTWYT6V','mollie',NULL,168.53,19,'completed','confirm',1,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'6BSCJSCM7H','bank_transfer',NULL,2612.40,20,'pending','confirm',1,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'1LVG6SIPT7','paypal',NULL,5787.70,21,'completed','confirm',4,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'1UQWUYDDOB','mollie',NULL,1636.80,22,'completed','confirm',4,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'QMFJMNFHZO','paystack',NULL,4620.40,23,'completed','confirm',8,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'FK3XW2IPHA','paypal',NULL,3555.70,24,'completed','confirm',8,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'9ZVCKMDRCI','cod',NULL,2352.00,25,'pending','confirm',8,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'TUKZ0ZCHSF','stripe',NULL,1659.90,26,'completed','confirm',8,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'3LXRKMAY8R','bank_transfer',NULL,1974.00,27,'pending','confirm',8,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'XTYEV1DGDK','sslcommerz',NULL,4290.60,28,'completed','confirm',7,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'9JR0LFAWNT','paypal',NULL,2317.70,29,'completed','confirm',7,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'9KKYAAOET1','stripe',NULL,3555.70,30,'completed','confirm',4,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'Q9QETZRGBD','cod',NULL,3472.00,31,'pending','confirm',4,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'P6OQFOKYCH','cod',NULL,1222.20,32,'pending','confirm',4,NULL,NULL,'2022-06-21 06:54:14','2022-06-21 06:54:14','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'U7YASFBKU9','cod',NULL,1942.60,33,'pending','confirm',8,NULL,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'8ZWMBA04G2','cod',NULL,1974.00,34,'pending','confirm',4,NULL,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'BEC33ONNAD','cod',NULL,5108.80,35,'pending','confirm',4,NULL,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'96XOAIVS6B','bank_transfer',NULL,2406.70,36,'pending','confirm',6,NULL,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'ACBJGJPN5H','cod',NULL,2867.50,37,'pending','confirm',7,NULL,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'3STFCSQS1Z','razorpay',NULL,1232.00,38,'completed','confirm',7,NULL,NULL,'2022-06-21 06:54:15','2022-06-21 06:54:15','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,1,2),(4,3,2),(5,2,3),(6,3,3),(7,2,4),(8,4,4),(9,2,5),(10,4,5),(11,1,6),(12,4,6),(13,1,7),(14,3,7),(15,2,8),(16,3,8),(17,2,9),(18,3,9),(19,1,10),(20,3,10),(21,1,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',277,NULL,'2022-06-21 06:53:51','2022-06-21 06:53:51'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1913,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1758,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',872,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1000,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',413,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2333,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',259,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',646,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',744,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1726,NULL,'2022-06-21 06:53:52','2022-06-21 06:53:52');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\",\"mollie\"]',NULL,NULL),(2,'simple_slider_using_assets','0',NULL,NULL),(3,'permalink-botble-blog-models-post','blog',NULL,NULL),(4,'permalink-botble-blog-models-category','blog',NULL,NULL),(5,'payment_cod_status','1',NULL,NULL),(6,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(7,'payment_bank_transfer_status','1',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 8422 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'theme','martfury',NULL,NULL),(12,'admin_logo','general/logo-light.png',NULL,NULL),(13,'ecommerce_shopping_cart_enabled','1',NULL,NULL),(14,'ecommerce_wishlist_enabled','1',NULL,NULL),(15,'ecommerce_compare_enabled','1',NULL,NULL),(16,'ecommerce_ecommerce_tax_enabled','1',NULL,NULL),(17,'ecommerce_default_tax_rate','0',NULL,NULL),(18,'ecommerce_display_product_price_including_taxes','0',NULL,NULL),(19,'ecommerce_order_tracking_enabled','1',NULL,NULL),(20,'ecommerce_review_enabled','1',NULL,NULL),(21,'ecommerce_review_max_file_size','2',NULL,NULL),(22,'ecommerce_review_max_file_number','6',NULL,NULL),(23,'ecommerce_enable_quick_buy_button','1',NULL,NULL),(24,'ecommerce_quick_buy_target_page','checkout',NULL,NULL),(25,'ecommerce_zip_code_enabled','0',NULL,NULL),(26,'ecommerce_verify_customer_email','0',NULL,NULL),(27,'ecommerce_enable_recaptcha_in_register_page','0',NULL,NULL),(28,'ecommerce_enable_guest_checkout','1',NULL,NULL),(29,'ecommerce_how_to_display_product_variation_images','only_variation_images',NULL,NULL),(30,'ecommerce_show_number_of_products','1',NULL,NULL),(31,'ecommerce_show_out_of_stock_products','1',NULL,NULL),(32,'ecommerce_minimum_order_amount','0',NULL,NULL),(33,'ecommerce_using_custom_font_for_invoice','0',NULL,NULL),(34,'ecommerce_invoice_font_family','-- Select --',NULL,NULL),(35,'ecommerce_enable_invoice_stamp','1',NULL,NULL),(36,'ecommerce_make_phone_field_at_the_checkout_optional','0',NULL,NULL),(37,'ecommerce_disable_order_invoice_until_order_confirmed','0',NULL,NULL),(38,'ecommerce_enable_customer_recently_viewed_products','1',NULL,NULL),(39,'ecommerce_max_customer_recently_viewed_products','24',NULL,NULL),(40,'ecommerce_available_countries','null',NULL,NULL),(126,'language_hide_default','1',NULL,NULL),(127,'language_switcher_display','dropdown',NULL,NULL),(128,'language_display','all',NULL,NULL),(129,'language_hide_languages','[]',NULL,NULL),(131,'media_random_hash','25c56396314f11aeb8b10e5b06f42d8a',NULL,NULL),(132,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(141,'ecommerce_store_name','Martfury',NULL,NULL),(142,'ecommerce_store_phone','1800979769',NULL,NULL),(143,'ecommerce_store_address','502 New Street',NULL,NULL),(144,'ecommerce_store_state','Brighton VIC',NULL,NULL),(145,'ecommerce_store_city','Brighton VIC',NULL,NULL),(146,'ecommerce_store_country','AU',NULL,NULL),(147,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(148,'theme-martfury-copyright','© 2022 Martfury. All Rights Reserved.',NULL,NULL),(149,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(150,'theme-martfury-logo','general/logo.png',NULL,NULL),(151,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(152,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(153,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(154,'theme-martfury-email','contact@martfury.co',NULL,NULL),(155,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(156,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(157,'theme-martfury-homepage_id','1',NULL,NULL),(158,'theme-martfury-blog_page_id','6',NULL,NULL),(159,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(160,'theme-martfury-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(161,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(162,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(163,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(164,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(165,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(166,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(167,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(168,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(169,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(170,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(171,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(172,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(173,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(174,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(175,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(176,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(177,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(178,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(179,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(180,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(181,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(182,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(183,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(184,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(185,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(186,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(187,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(188,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(189,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(190,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(191,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(192,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(195,'theme-martfury-social-name-1','Facebook',NULL,NULL),(196,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(197,'theme-martfury-social-icon-1','fa-facebook',NULL,NULL),(198,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(199,'theme-martfury-social-name-2','Twitter',NULL,NULL),(200,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(201,'theme-martfury-social-icon-2','fa-twitter',NULL,NULL),(202,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(203,'theme-martfury-social-name-3','Instagram',NULL,NULL),(204,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(205,'theme-martfury-social-icon-3','fa-instagram',NULL,NULL),(206,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(207,'theme-martfury-social-name-4','Youtube',NULL,NULL),(208,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(209,'theme-martfury-social-icon-4','fa-youtube',NULL,NULL),(210,'theme-martfury-social-color-4','#FF0000',NULL,NULL),(211,'theme-martfury-vi-copyright','© 2022 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(212,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(213,'theme-martfury-vi-homepage_id','1',NULL,NULL),(214,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(215,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(216,'theme-martfury-vi-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(217,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(218,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(219,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(220,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(221,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-06-21 06:53:56','2022-06-21 06:53:56'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-06-21 06:53:56','2022-06-21 06:53:56'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-06-21 06:53:56','2022-06-21 06:53:56'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-06-21 06:53:56','2022-06-21 06:53:56'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-06-21 06:53:56','2022-06-21 06:53:56'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-06-21 06:53:56','2022-06-21 06:53:56');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2022-06-21 06:53:56','2022-06-21 06:53:56'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2022-06-21 06:53:56','2022-06-21 06:53:56');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-21 06:53:17','2022-06-21 06:53:17'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-21 06:53:17','2022-06-21 06:53:17'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-21 06:53:17','2022-06-21 06:53:17'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-21 06:53:17','2022-06-21 06:53:17'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-21 06:53:17','2022-06-21 06:53:17'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-21 06:53:17','2022-06-21 06:53:17'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-21 06:53:17','2022-06-21 06:53:17'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-21 06:53:20','2022-06-21 06:53:20'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2022-06-21 06:53:42','2022-06-21 06:53:42'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-21 06:53:45','2022-06-21 06:53:45'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-21 06:53:45','2022-06-21 06:53:45'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-21 06:53:45','2022-06-21 06:53:45'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-21 06:53:45','2022-06-21 06:53:45'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-21 06:53:45','2022-06-21 06:53:45'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-21 06:53:45','2022-06-21 06:53:45'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-06-21 06:53:51','2022-06-21 06:53:59'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-06-21 06:53:51','2022-06-21 06:53:59'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-06-21 06:53:51','2022-06-21 06:53:59'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-06-21 06:53:51','2022-06-21 06:53:59'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-06-21 06:53:51','2022-06-21 06:53:51'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-06-21 06:53:51','2022-06-21 06:53:51'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-06-21 06:53:51','2022-06-21 06:53:51'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-06-21 06:53:51','2022-06-21 06:53:51'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-06-21 06:53:51','2022-06-21 06:53:51'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-06-21 06:53:52','2022-06-21 06:53:59'),(94,'home',1,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(104,'career',11,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2022-06-21 06:53:56','2022-06-21 06:53:56'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-06-21 06:54:10','2022-06-21 06:54:10'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-06-21 06:54:10','2022-06-21 06:54:10'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-06-21 06:54:10','2022-06-21 06:54:10');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_backup`
--

DROP TABLE IF EXISTS `states_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_backup`
--

LOCK TABLES `states_backup` WRITE;
/*!40000 ALTER TABLE `states_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-06-21 06:53:51','2022-06-21 06:53:51'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-06-21 06:53:51','2022-06-21 06:53:51'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-06-21 06:53:51','2022-06-21 06:53:51'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-06-21 06:53:51','2022-06-21 06:53:51'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-06-21 06:53:51','2022-06-21 06:53:51');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$ep2.PM2XIGV/7U4cpKU5i.WoZDzPFzbiO//fC9d0.6NekHFy2dWnq',NULL,'2022-06-21 06:53:59','2022-06-21 06:53:59','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2022-06-21 06:54:04','2022-06-21 06:54:04'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2022-06-21 06:54:04','2022-06-21 06:54:04');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 20:55:19