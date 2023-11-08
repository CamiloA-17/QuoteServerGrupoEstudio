-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: quoteserver
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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (25,'2014_10_12_000000_create_users_table',1),(26,'2014_10_12_100000_create_password_reset_tokens_table',1),(27,'2014_10_12_100000_create_password_resets_table',1),(28,'2019_08_19_000000_create_failed_jobs_table',1),(29,'2019_12_14_000001_create_personal_access_tokens_table',1),(30,'2023_09_30_090302_create_table_quotes',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_year` year DEFAULT NULL,
  `owner` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotes_owner_foreign` (`owner`),
  CONSTRAINT `quotes_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (1,'No hay hombre tan cobarde a quien el amor no haga valiente y transforme en héroe. ','Platón.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(2,'Hay alguien tan inteligente que aprende de la experiencia de los demás. ','Voltaire.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(3,'No puedo enseñar nada a nadie. Solo puedo hacerles pensar. ','Sócrates.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(4,'Vivir sin filosofar es, propiamente, tener los ojos cerrados, sin tratar de abrirlos jamás. ','René Descartes.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(5,'Lo menos frecuente en este mundo es vivir. La mayoría de la gente existe, eso es todo. ','Oscar Wilde.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(6,'La felicidad de tu vida depende de la calidad de tus pensamientos. ','Marco Aurelio.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(7,'La vida no se trata de encontrarte a ti mismo, sino de crearte a ti mismo. ','Bernard Shaw.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(8,'Pensar es fácil, actuar es difícil, y poner los pensamientos de uno mismo en acción es lo más difícil del mundo. ','Goethe.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(9,'Felicidad no es hacer lo que uno quiere sino querer lo que uno hace. ','Jean Paul Sartre.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(10,'No lastimes a los demás con lo que te causa dolor a ti mismo. ','Buda.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(11,'El hombre que mueve montañas empieza apartando piedras pequeñas. ','Confucio.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(12,'Educa a los niños y no será necesario castigar a los hombres. ','Pitágoras de Samos.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(13,'Los hombres geniales empiezan grandes obras, los hombres trabajadores las terminan. ','Leonardo Da Vinci.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(14,'La verdadera libertad consiste en el dominio absoluto de sí mismo. ','Galileo Galilei.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(15,'El regalo más grande que les puedes dar a los demás es el ejemplo de tu propia vida. ','Bertolt Brecht.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(16,'Me he dado cuenta que incluso las personas que dicen que todo está predestinado y que no podemos hacer nada para cambiar nuestro destino igual miran antes de cruzar la calle. ','Stephen Hawking.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(17,'Vivir es nacer a cada instante. ','Erich Fromm.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(18,'No malgastes tu tiempo, pues de esa materia está formada la vida. ','Benjamin Franklin.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(19,'¿Quieres ser rico? Pues no te afanes en aumentar tus bienes sino en disminuir tu codicia. Epicuro. ','+',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(20,'Las que conducen y arrastran al mundo no son las máquinas, sino las ideas. ','(Victor Hugo)',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(21,'Allí donde reinan la quietud y la meditación, no hay lugar para las preocupaciones ni para la disipación. ','Francisco de Asís.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(22,'La vida debe ser comprendida hacia atrás. Pero debe ser vivida hacia delante. ','Kierkegaard.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(23,'Todo el que disfruta cree que lo que importa del árbol es el fruto, cuando en realidad es la semilla. He aquí la diferencia entre los que crean y los que disfrutan. ','Friedrich Nietzsche.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(24,'Al final no son los años en nuestra vida lo que cuenta, sino la vida en nuestros años. ','Abraham Lincoln.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(25,'Hay tres frases que nos impiden avanzar: tengo que hacerlo bien, me tienes que tratar bien y el mundo debe ser fácil. ','Albert Ellis.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(26,'La buena conciencia es la mejor almohada para dormir. ','Sócrates.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(27,'Todo el mundo ve lo que aparentas ser, pocos experimentan lo que realmente eres. ','Maquiavelo.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(28,'No es lo que te ocurre, sino cómo reaccionas lo que importa. ','Epíteto.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(29,'Iré a cualquier parte, siempre que sea hacia adelante. ','David Livingstone.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00'),(30,'Qué pequeña eres brizna de hierba. Sí, pero tengo toda la Tierra a mis pies. ','Rabindranath Tagore.',NULL,1,'2023-09-30 11:50:00','2023-09-30 11:50:00');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Camilo','camiloa.molanoa@autonoma.edu.co',NULL,'$2y$10$IJ7Oye7vZjwLHPynICTPJO.XXmkFB7GuoB7C2suO7/IdR8FTH.3Y.',NULL,'2023-09-30 11:50:00','2023-10-14 10:25:57'),(2,'Camilo Molano','camiangi1517@gmail.com',NULL,'$2y$10$tIoLR7oz4liwOL0RcwSaJend2eTTQ5Y2E3X.r26autt0oOTPe97/6',NULL,'2023-11-02 21:10:26','2023-11-02 22:27:15');
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

-- Dump completed on 2023-11-04  0:39:09
