-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lumen
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_08_27_055905_create_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'User'),(2,'SAR'),(3,'Director');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `fk_users_role_idx` (`role_id`),
  CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (42,'Lennbbbaaaaaasdfsdfd','beau27@yahoo.com','$2y$10$VAd5delTEleQyiGj.4.Eq.kff5YCZLb04AQfuXchHoT4ki6S8lGSu','2018-09-07 17:43:23','2018-09-09 07:04:49',3,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(43,'sfdfsdfs','bobbie81@howe.org','$2y$10$iLEwtR3hDy8q7NQu8BK/eOO0Wv94Cz.Bq5mgx/on4HY4SfB46dbry','2018-09-07 17:43:24','2018-09-09 07:13:18',2,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(44,'Shaylessssssss','nya.franecki@lindgren.info','$2y$10$tpeA3x9jRc8nPwnSwlCYQO7j7Sd5JAHHV2AAdcnZbMdDSe1W76T9S','2018-09-07 17:43:24','2018-09-09 13:11:50',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(45,'Prof. Lawrence Von','froob@yahoo.com','$2y$10$J1FzX4t1jZ2VDe0.Q7FVGuFPBTEDh5XOtZA8VYRGMQDs/o/R8uvI.','2018-09-07 17:43:24','2018-09-09 06:25:57',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(46,'Luella Torp','veronica60@bogisich.com','$2y$10$THzrpxTiSpZjxkr7ts/G.eUhNCIMHS7M2s/06h7ZxkwvoZjjOO2pi','2018-09-07 17:43:24','2018-09-09 07:44:14',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(47,'Virgie Spencer DDS','cassandre.white@howell.info','$2y$10$PNcUgnqdcAOCyHqVR5QUmez3R5PJ/MW3GtRq0va2NmiVCk5JXH.8y','2018-09-07 17:43:24','2018-09-07 17:43:24',2,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(48,'Mr. Gunnar Haag II','mcasper@hotmail.com','$2y$10$azAX99KizS7cQzUzNh69teL5bZ3lK7rch8/G/koyrjMqqJAbATPh.','2018-09-07 17:43:24','2018-09-07 17:43:24',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(49,'Miss Eden Frami MD','ilehner@franecki.info','$2y$10$Bi03.88oLUfLoL96P2HdLeToH34z3dmEZJ1OuzeZwKStuHITshgTK','2018-09-07 17:43:24','2018-09-07 17:43:24',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(50,'Syble Dach','valentin.legros@stroman.com','$2y$10$EdjvgmjNO83WnJRFw6KK5OZ25MMXrHwq210DJlPoeMiHX/UbPpLvq','2018-09-07 17:43:24','2018-09-07 17:43:24',2,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(51,'Mrs. Maria Thompson DDS','mayert.annabelle@ritchie.com','$2y$10$gJHnQhs6hG3VwG6CZyu7e.w3RL3XzXpZS4ZWTo.V60jh4R2WvJYAi','2018-09-07 17:43:24','2018-09-07 17:43:24',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(52,'Lawrence Schoen','tyrique.runolfsson@fahey.com','$2y$10$not.ucjDEBIznaicnEyBbu6SwGeiIQzFftJZQdxOD0wILvVu/LTqS','2018-09-07 17:43:31','2018-09-07 17:43:31',2,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(53,'Bart Cummings MD','vabshire@hotmail.com','$2y$10$/aRAu9XVd2OLL01UHAX7XuFChfCH4rKa17oIp1IBnonRu.lHByBce','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(54,'Emely Kovacek','coconner@gerhold.com','$2y$10$mS0kaMej0qyt0HTgJqKCJOFdIpyhbmiG9W92ABLWUKnxZImqsvCHy','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(55,'Daija Koelpin','cali.baumbach@gmail.com','$2y$10$k8jw7SheqvSXmTIEJZZMquhsQEFj/HixVX4Ivb.hhWqV.XoMh4hg.','2018-09-07 17:43:32','2018-09-09 06:27:07',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(56,'Prof. Abagail Kuhn','smith.astrid@hotmail.com','$2y$10$DFwDcq9FKXA8Wy/j5vRbPeXyohtjbkAVPJji3Rx.FX7ihvoKUS.ra','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(57,'Conner Wehner','clair89@bayer.com','$2y$10$3lNvVVQlQoID8KOF6m.FPueFapZpHEmgmuPrn8c1EeUHl.Ecjs9xO','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(58,'Mr. Oswaldo Bode','hhettinger@yahoo.com','$2y$10$.0fYUZkIVGInv9Pi3.5osezS6SNQXpVlkx/CbEKp6WRChvLKhbZZe','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(59,'Marietta Dare DVM','kgoyette@kulas.biz','$2y$10$yuQsTR4bRdHrddAaIN8aF.OWzNRdwj736iZkMMNJbglUu3aSvNysK','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(60,'Jackeline Schamberger IV','little.willard@hotmail.com','$2y$10$Q//C8GNUIJSiV9wj/ZQzLOcfylS7cWggcZ9mL7414QBFXUIY/NReG','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(61,'Lisette Lang','zemmerich@hotmail.com','$2y$10$Syo5HomsP4rccWGdoX7IqeZrzLPaGHkRDNkoX0aAkG5pJJEQcFwt6','2018-09-07 17:43:32','2018-09-07 17:43:32',1,1,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(62,'Rickie Langosh','schaden.america@ward.biz','$2y$10$fdAP7Kw8GkNO9rb/TQsSIO7Ln0XEhUEIteAQyQv.mE7013P.RS9cO','2018-09-07 17:43:35','2018-09-07 17:43:35',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(63,'Dr. Johnathan Waters','sadie.yost@will.org','$2y$10$N4QSX.e1IAJAk2uVHTBeJuZu4MPiDTz1IKDmv3KAXBMOcfoCh45/6','2018-09-07 17:43:35','2018-09-07 17:43:35',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(64,'Ophelia Renner','kuphal.adonis@gmail.com','$2y$10$ZSKXRJgw8KzHVO7MCdADhe6ObuHwGYHgVVu3T3uG6BZPhWANKZ.iq','2018-09-07 17:43:35','2018-09-07 17:43:35',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(65,'Dexter Champlin','herta33@hotmail.com','$2y$10$ReGmbpBYw0P8pav7bfB2nuXVJSx7yoq7LBNnmRQGhLQ8tLAb9DytW','2018-09-07 17:43:35','2018-09-07 17:43:35',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(66,'Mallie McKenzie','toy.oral@gmail.com','$2y$10$d0cn3ZlyU2cua2O20ttJieloJ/7eiBkbyroT1Pu4jK4.3Ml.2B1cO','2018-09-07 17:43:35','2018-09-07 17:43:35',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(67,'Eunice Glover','toy.talia@crist.com','$2y$10$AaUiBMYxmta4jGqBDkcLq.urJ7emn0.IrDPlFXKcxEkw7jrM0RYsm','2018-09-07 17:43:35','2018-09-07 17:43:35',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(68,'Dr. Leopoldo Kshlerin','hdickinson@king.com','$2y$10$cmEKOEBQYKijQerPhe5XV.A9sZHG3BH8pXybr3j8x1qi5QUtkJWTq','2018-09-07 17:43:36','2018-09-07 17:43:36',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(69,'Ms. Lucy Moen','gorczany.bruce@effertz.com','$2y$10$ZiTA67wNoaWnCPwrM/29kOErt5XJIOz1MfhnR7/V58oBpTABZtoI2','2018-09-07 17:43:36','2018-09-07 17:43:36',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(70,'Mrs. Angelita Okuneva Sr.','selena.mccullough@gmail.com','$2y$10$xC0gMbhuqRkFyenP6WOiAuHSyq7tvorK493CBzN/Ht52wJk.BqutK','2018-09-07 17:43:36','2018-09-07 17:43:36',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png'),(71,'Meghan Raynor','van.funk@gmail.com','$2y$10$NjfqtrRW.hVrDfla0NunUurYJARvPByqWGDCSqs/b2vqcDBoaPumy','2018-09-07 17:43:36','2018-09-07 17:43:36',1,0,'https://ssl.gstatic.com/images/branding/product/1x/avatar_circle_blue_512dp.png');
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

-- Dump completed on 2018-09-09 21:45:46
