-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `carritos`
--

DROP TABLE IF EXISTS `carritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carritos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `precioUnitario` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `nombreProducto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carritos_id_producto_foreign` (`id_producto`),
  CONSTRAINT `carritos_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carritos`
--

LOCK TABLES `carritos` WRITE;
/*!40000 ALTER TABLE `carritos` DISABLE KEYS */;
/*!40000 ALTER TABLE `carritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Alimentos','2021-06-12 08:42:15','2021-06-12 08:42:15'),(3,'Licores','2021-06-12 19:12:50','2021-06-12 19:12:50'),(4,'Aseo','2021-06-12 19:13:07','2021-06-12 19:13:07'),(5,'Belleza','2021-06-12 19:13:14','2021-06-12 19:13:14');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_06_12_021722_create_categorias_table',2),(5,'2021_06_12_021843_create__subcategorias_table',2),(6,'2021_06_12_022701_create__subnivel_table',3),(7,'2021_06_12_022926_create__productos_table',4),(8,'2021_06_12_023933_create_categorias_table',5),(9,'2021_06_12_024039_create_subcategorias_table',5),(10,'2021_06_12_024116_create_subnivels_table',6),(11,'2021_06_12_024306_create_productos_table',6),(12,'2021_06_12_130645_create_subnivels_table',7),(13,'2021_06_12_154628_create_productos_table',8),(14,'2021_06_12_172219_create_productos_table',9),(15,'2021_06_12_210535_create_productos_table',10),(16,'2021_06_14_140653_create_carritos_table',11),(17,'2021_06_14_174116_create_carritos_table',12);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8,2) NOT NULL,
  `stock` int NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_Subnivel` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_id_subnivel_foreign` (`id_Subnivel`),
  CONSTRAINT `productos_id_subnivel_foreign` FOREIGN KEY (`id_Subnivel`) REFERENCES `subnivels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Filete de Salmon',30000.00,6,1,'salmon.jpg',4,'2021-06-12 19:09:56','2021-06-12 19:09:56'),(2,'Camaron',80000.00,0,0,'camaron.jpg',4,'2021-06-12 19:08:01','2021-06-12 19:08:01'),(3,'Pechugas',11000.00,7,1,'pechuga.jpg',4,'2021-06-12 19:10:10','2021-06-12 19:10:10'),(4,'Carne de lomo',15000.00,12,1,'carneLomo.png',4,'2021-06-12 19:10:10','2021-06-12 19:10:10'),(5,'Tilapia',28000.00,1,1,'tilapia.jpg',4,'2021-06-12 19:10:10','2021-06-12 19:10:10'),(6,'Vino Negro',40000.00,4,1,'vinonegro.jpg',7,'2021-06-12 19:20:34','2021-06-12 19:20:34'),(7,'Whisky Chivas',12000.00,3,1,'whiskyChivas.jpg',8,'2021-06-12 19:21:03','2021-06-12 19:21:03'),(8,'Vino Chiloe',20000.00,0,0,'vinoChiloe.jpg',7,'2021-06-12 19:21:03','2021-06-12 19:21:03'),(9,'Whisky OldParr',80000.00,5,1,'whiskyOldPar.jpg',8,'2021-06-12 19:21:03','2021-06-12 19:21:03'),(10,'Whisky Bucanas',95000.00,2,1,'whiskyBucanas.jpg',8,'2021-06-12 19:21:03','2021-06-12 19:21:03'),(11,'Whisky Sello Rojo',150000.00,5,1,'whiskySelloRojo.jpg',8,'2021-06-12 19:21:03','2021-06-12 19:21:03'),(12,'Jabon en crema - Axion',10000.00,20,1,'axion.jpg',10,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(13,'Jabon liquido - Salvo',7000.00,10,1,'salvo.jpg',10,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(14,'Detergente liquido -Tide',30000.00,3,1,'tideDetergente.jpg',11,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(15,'Jabon en polvo - Fab',12000.00,4,1,'fab.png',11,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(16,'Limpiador de muebles',25000.00,6,1,'muebles.png',12,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(17,'Cera para madera',32000.00,0,0,'mueblesMansion.jpg',12,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(18,'Limpiador de vidrios',10000.00,7,1,'vidriosBinner.png',13,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(19,'Limpiador de Vidrios',20000.00,3,1,'MrMusculo.jpg',13,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(20,'Hidratante Facial',30000.00,10,1,'hidratanteFacial.jpg',14,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(21,'Crema Facial - Nivea',16000.00,5,1,'nivea.png',14,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(22,'Serum',50000.00,4,1,'serum.jpg',14,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(23,'Crema - Ameliorate',55000.00,1,1,'facialAmeliorate.jpg',14,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(24,'Crema Corporal',25000.00,8,1,'cremaBody.jpg',15,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(25,'Crema Corporal de Avena',28000.00,6,1,'avenaCrema.jpg',15,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(26,'Exfoliante ',32000.00,5,1,'exfoliante.jpg',15,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(27,'Protector Solar',50000.00,0,0,'protector.jpg',15,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(28,'Vino Blanco',28000.00,30,1,'vinoBlanco.png',6,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(29,'Vino La Huerta',35000.00,15,1,'vinoBlancoLaHuerta.jpg',6,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(30,'Tequila Don Julio',100000.00,4,1,'tequilaDonJulio.jpg',9,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(31,'Tequila El Patron',140000.00,5,1,'tequilaPatron.jpg',9,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(32,'Bolsa de Leche',3000.00,80,1,'bolsaLeche.jpg',3,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(33,'Brownie (Unid)',3500.00,20,1,'brownieChocolate.jpg',1,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(34,'Pan Frances (Unid)',5000.00,15,1,'panFrances.jpg',2,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(35,'Pan Tajado',4000.00,5,1,'panTajado.jpeg',2,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(36,'Postre de Café (Unid)',6000.00,3,1,'porcionPostreCafe.jpg',1,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(37,'Queso Crema',8000.00,6,1,'quesoCrema.jpg',3,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(38,'Queso Mozarella',12000.00,4,1,'quesoMozarella.jpg',3,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(39,'Torta de Oreo',30000.00,0,0,'tortaDeOreo.jpg',1,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(40,'Tostadas Bimbo',9000.00,6,1,'tostadasBimbo.jpg',2,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(41,'Yogurt Griego',7000.00,5,1,'yogurtGriego.png',3,'2021-06-12 19:08:34','2021-06-12 19:08:34');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategorias`
--

DROP TABLE IF EXISTS `subcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategorias` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_categoria` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategorias_id_categoria_foreign` (`id_categoria`),
  CONSTRAINT `subcategorias_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategorias`
--

LOCK TABLES `subcategorias` WRITE;
/*!40000 ALTER TABLE `subcategorias` DISABLE KEYS */;
INSERT INTO `subcategorias` VALUES (1,'Panaderia',1,'2021-06-12 17:53:07','2021-06-12 17:53:07'),(2,'Despensa',1,'2021-06-12 17:53:50','2021-06-12 17:53:50'),(4,'Vinos',3,'2021-06-12 19:14:40','2021-06-12 19:14:40'),(5,'Internacionales',3,'2021-06-12 19:14:58','2021-06-12 19:14:58'),(6,'Detergentes',4,'2021-06-12 19:15:26','2021-06-12 19:15:26'),(7,'Limpiadores',4,'2021-06-12 19:15:34','2021-06-12 19:15:34'),(8,'Cuidado de la piel',5,'2021-06-12 19:16:05','2021-06-12 19:16:05');
/*!40000 ALTER TABLE `subcategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subnivels`
--

DROP TABLE IF EXISTS `subnivels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subnivels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_subcategoria` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subnivels_id_subcategoria_foreign` (`id_subcategoria`),
  CONSTRAINT `subnivels_id_subcategoria_foreign` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subnivels`
--

LOCK TABLES `subnivels` WRITE;
/*!40000 ALTER TABLE `subnivels` DISABLE KEYS */;
INSERT INTO `subnivels` VALUES (1,'Postres',1,'2021-06-12 19:07:18','2021-06-12 19:07:18'),(2,'Pan',1,'2021-06-12 19:08:01','2021-06-12 19:08:01'),(3,'Lacteos',2,'2021-06-12 19:08:34','2021-06-12 19:08:34'),(4,'Proteinas',2,'2021-06-12 19:09:56','2021-06-12 19:09:56'),(5,'Frutas y Verduras',2,'2021-06-12 19:10:10','2021-06-12 19:10:10'),(6,'Vino Blanco',4,'2021-06-12 19:18:46','2021-06-12 19:18:46'),(7,'Vino Tinto',4,'2021-06-12 19:20:34','2021-06-12 19:20:34'),(8,'Whisky',5,'2021-06-12 19:21:03','2021-06-12 19:21:03'),(9,'Tequila',5,'2021-06-12 19:21:12','2021-06-12 19:21:12'),(10,'Cocina',6,'2021-06-12 19:21:56','2021-06-12 19:21:56'),(11,'Ropa',6,'2021-06-12 19:22:02','2021-06-12 19:22:02'),(12,'Muebles',7,'2021-06-12 19:22:21','2021-06-12 19:22:21'),(13,'Vidrios',7,'2021-06-12 19:22:26','2021-06-12 19:22:26'),(14,'Facial',8,'2021-06-12 19:22:55','2021-06-12 19:22:55'),(15,'Cuerpo',8,'2021-06-12 19:23:03','2021-06-12 19:23:03');
/*!40000 ALTER TABLE `subnivels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

-- Dump completed on 2021-06-14 20:35:43
