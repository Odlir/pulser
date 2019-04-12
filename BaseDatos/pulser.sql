CREATE DATABASE  IF NOT EXISTS `pulser` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci */;
USE `pulser`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pulser
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.33-MariaDB

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `menupadre_id` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `activo` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoorden`
--

DROP TABLE IF EXISTS `pedidoorden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoorden` (
  `pedido_id` int(11) NOT NULL AUTO_INCREMENT,
  `orden_id` int(11) NOT NULL DEFAULT '0',
  `proveedor_id` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` int(1) NOT NULL DEFAULT '0',
  `comentario` varchar(255) DEFAULT '',
  `created_by` int(11) DEFAULT '0',
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`pedido_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoorden`
--

LOCK TABLES `pedidoorden` WRITE;
/*!40000 ALTER TABLE `pedidoorden` DISABLE KEYS */;
INSERT INTO `pedidoorden` VALUES (1,7,5,'2019-01-25 05:43:40','2019-01-25 05:43:40',1,'asd lllolol',1,2),(2,11,2,'2019-01-25 06:44:23','2019-01-25 06:44:23',1,'prueba',1,1),(3,6,0,'2019-01-30 04:54:50','2019-01-30 04:54:50',1,'matusita',1,1),(4,1,4,'2019-01-30 04:55:36','2019-01-30 04:55:36',1,'',1,2);
/*!40000 ALTER TABLE `pedidoorden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoorden_detalle`
--

DROP TABLE IF EXISTS `pedidoorden_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoorden_detalle` (
  `pedidodetalle_id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) DEFAULT '0',
  `producto_id` int(11) DEFAULT '0',
  `cantidad` int(11) DEFAULT '0',
  `comentario` varchar(255) DEFAULT '',
  `activo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pedidodetalle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoorden_detalle`
--

LOCK TABLES `pedidoorden_detalle` WRITE;
/*!40000 ALTER TABLE `pedidoorden_detalle` DISABLE KEYS */;
INSERT INTO `pedidoorden_detalle` VALUES (24,1,184,2,'aaaa1',1),(25,1,180,6,'eeee2',1),(26,1,177,4,'vvv3',1),(33,1,182,1,'0099',1),(34,2,182,3,'',1),(35,2,186,5,'',1),(36,3,184,1,'xcgb',1),(37,3,181,1,'dfgdfg',1),(38,4,183,4,'',1),(39,4,181,4,'',1);
/*!40000 ALTER TABLE `pedidoorden_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_familia`
--

DROP TABLE IF EXISTS `tbl_familia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_familia` (
  `familia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `codigo` varchar(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`familia_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_familia`
--

LOCK TABLES `tbl_familia` WRITE;
/*!40000 ALTER TABLE `tbl_familia` DISABLE KEYS */;
INSERT INTO `tbl_familia` VALUES (1,'ANCLAJE','A1','2018-10-17 09:19:39',1),(2,'BANDEJA','A2','2018-10-17 09:19:40',1),(3,'Caja','A3','2018-10-17 09:19:40',1),(4,'CONSUMIBLE','A4','2018-10-17 09:19:41',1),(5,'EMT -ELECTRICO','A6','2018-10-17 09:19:41',1),(6,'HERRAMIENTA','A7','2018-10-17 09:19:42',1),(7,'PVC - ELECTRICO','A8','2018-10-17 09:19:42',1),(8,'PVC -SANITARIO','A9','2018-10-17 09:19:43',1),(9,'SEGURIDAD','A10','2018-10-17 09:19:43',1),(10,'VACIO','A11','2018-10-17 09:19:43',1);
/*!40000 ALTER TABLE `tbl_familia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_last_login`
--

DROP TABLE IF EXISTS `tbl_last_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_last_login`
--

LOCK TABLES `tbl_last_login` WRITE;
/*!40000 ALTER TABLE `tbl_last_login` DISABLE KEYS */;
INSERT INTO `tbl_last_login` VALUES (1,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-07 22:00:37'),(2,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-08 00:44:29'),(3,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-08 01:31:42'),(4,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-08 12:47:58'),(5,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-08 15:51:09'),(6,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-08 22:32:19'),(7,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-09 01:17:22'),(8,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-09 22:07:52'),(9,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-10 00:25:43'),(10,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-10 21:44:54'),(11,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-11 00:32:15'),(12,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-13 11:50:50'),(13,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-14 17:22:34'),(14,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-16 23:29:29'),(15,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-17 22:58:53'),(16,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.77','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Windows 8.1','2018-11-07 22:35:12'),(17,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.77','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Windows 8.1','2018-11-09 22:05:24'),(18,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 8.1','2018-11-10 20:31:01'),(19,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 8.1','2018-11-14 23:36:26'),(20,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 8.1','2018-11-18 21:55:32'),(21,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-11-28 22:32:40'),(22,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-01 18:01:14'),(23,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-02 15:30:59'),(24,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-02 20:32:13'),(25,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-02 21:42:32'),(26,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-04 01:16:17'),(27,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-04 23:38:11'),(28,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-04 23:40:32'),(29,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-05 00:04:37'),(30,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-05 00:07:02'),(31,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-05 01:12:37'),(32,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-05 22:12:41'),(33,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-07 23:44:57'),(34,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 8.1','2018-12-08 14:48:44'),(35,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2018-12-17 22:51:43'),(36,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-14 16:37:36'),(37,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-16 19:22:03'),(38,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-17 18:09:26'),(39,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-18 07:33:02'),(40,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-18 16:52:42'),(41,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-19 14:17:11'),(42,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-19 16:58:39'),(43,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-20 01:23:11'),(44,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 8.1','2019-01-20 08:28:33'),(45,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10','2019-01-20 12:44:10'),(46,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10','2019-01-21 00:34:00'),(47,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10','2019-01-29 23:41:33'),(48,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 72.0.3626.109','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36','Windows 10','2019-02-15 19:42:07'),(49,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 72.0.3626.109','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36','Windows 10','2019-02-16 17:26:38'),(50,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 72.0.3626.109','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36','Windows 10','2019-02-19 20:34:55'),(51,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 73.0.3683.86','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','Windows 10','2019-03-31 12:37:22'),(52,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 73.0.3683.103','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36','Windows 10','2019-04-11 11:46:15'),(53,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 73.0.3683.103','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36','Windows 10','2019-04-11 16:04:07');
/*!40000 ALTER TABLE `tbl_last_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orden`
--

DROP TABLE IF EXISTS `tbl_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orden` (
  `orden_id` int(11) NOT NULL AUTO_INCREMENT,
  `nrodocumento` varchar(20) NOT NULL DEFAULT '',
  `proveedor_id` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` int(1) NOT NULL DEFAULT '0',
  `comentario` varchar(255) DEFAULT '',
  `created_by` int(11) DEFAULT '0',
  PRIMARY KEY (`orden_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orden`
--

LOCK TABLES `tbl_orden` WRITE;
/*!40000 ALTER TABLE `tbl_orden` DISABLE KEYS */;
INSERT INTO `tbl_orden` VALUES (1,'001-000001',1,'2018-11-20 05:00:00','2018-11-11 01:46:52',1,'',1),(2,'001-000002',1,'2018-11-11 01:48:03','2018-11-11 01:48:03',1,'',1),(3,'001-000003',2,'2018-11-11 02:42:15','2018-11-11 02:42:15',1,'',1),(4,'001-000004',3,'2018-11-11 02:42:30','2018-11-11 02:42:30',1,'',1),(5,'001-000005',1,'2018-11-11 02:42:43','2018-11-11 02:42:43',1,'',1),(6,'001-000006',2,'2018-11-11 02:43:10','2018-11-11 02:43:10',1,'',1),(7,'002-001231',4,'2018-11-11 02:43:24','2018-11-11 02:43:24',1,'',1),(8,'003-111001',1,'2018-11-11 02:43:40','2018-11-11 02:43:40',1,'',1),(9,'004-001434',1,'2018-11-11 02:44:38','2018-11-11 02:44:38',1,'',1),(10,'001-009981',2,'2018-11-11 02:44:51','2018-11-11 02:44:51',1,'',1),(11,'001-001123',1,'2018-11-11 02:45:06','2018-11-11 02:45:06',1,'',1),(12,'002-081123',2,'2018-11-11 02:45:18','2018-11-11 02:45:18',1,'',1),(13,'001-0986645',0,'2018-11-11 03:35:07','2018-11-11 03:35:07',0,'prueba',1),(14,'001-00121344',2,'2018-11-11 04:14:07','2018-11-11 04:14:07',0,'prueba 999',1),(15,'002-00001',1,'2018-12-02 21:32:41','2018-12-02 21:32:41',1,'prueba',1),(16,'002-00002',1,'2018-12-02 21:38:16','2018-12-02 21:38:16',1,'prueba mas',1),(17,'002-00002',4,'2018-12-02 21:38:59','2018-12-02 21:38:59',1,'prueba 9999999117',1),(18,'010-000121',5,'2018-12-06 05:17:18','2018-12-06 05:17:18',1,'aaaa',1),(19,'201901-0001',2,'2019-01-17 00:42:03','2019-01-17 00:42:03',1,'asd',1),(20,'00121312312',3,'2019-01-19 19:46:42','2019-01-19 19:46:42',1,'asdasd',1),(21,'ica',2,'2019-01-21 05:38:10','2019-01-21 05:38:10',1,'asdasd',1);
/*!40000 ALTER TABLE `tbl_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ordendetalle`
--

DROP TABLE IF EXISTS `tbl_ordendetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ordendetalle` (
  `ordendetalle_id` int(11) NOT NULL AUTO_INCREMENT,
  `orden_id` int(11) DEFAULT '0',
  `producto_id` int(11) DEFAULT '0',
  `cantidad` int(11) DEFAULT '0',
  `comentario` varchar(255) DEFAULT '',
  `activo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ordendetalle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ordendetalle`
--

LOCK TABLES `tbl_ordendetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ordendetalle` DISABLE KEYS */;
INSERT INTO `tbl_ordendetalle` VALUES (1,15,186,4,'prueba',1),(2,15,182,5,'aasd',1),(3,16,186,1,'',1),(4,16,182,1,'',1),(5,16,186,1,'',1),(6,17,185,5,'',0),(7,17,183,2,'pruebaaa',1),(8,17,179,10,'asd',1),(17,17,186,31,'',1),(18,18,186,11,'',0),(19,18,182,21,'a',1),(20,18,178,80,'aaa',1),(21,18,179,2,'',1),(22,19,182,5,'',1),(23,20,182,1,'',1),(24,21,181,1,'',1),(25,21,178,1,'',1),(26,21,180,1,'',1);
/*!40000 ALTER TABLE `tbl_ordendetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productos`
--

DROP TABLE IF EXISTS `tbl_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productos` (
  `producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `codigo` varchar(128) DEFAULT NULL,
  `familia` int(11) DEFAULT NULL,
  `marca` varchar(128) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `documento` varchar(200) DEFAULT NULL,
  `unidad` int(11) NOT NULL,
  `comentario` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`producto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productos`
--

LOCK TABLES `tbl_productos` WRITE;
/*!40000 ALTER TABLE `tbl_productos` DISABLE KEYS */;
INSERT INTO `tbl_productos` VALUES (1,'Perno 1/2','P001',NULL,'GSM',NULL,NULL,1,'producto de prueba','2018-10-09 07:06:17',0),(2,'BARBIQUEJO','0200010001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(3,'BARBIQUEJO','02000100010001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(4,'CARETA FACIAL','0200010002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(5,'BASE PARA CARETA FACIAL','02000100020001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(6,'CARETA TRANSPARENTE(MICA)','02000100020002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(7,'CARETA TRANSPARENTE PARA ESMERILAR','02000100020003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(8,'BLUSA','0200010003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(9,'BLUSA CON LOGO BORDADO T=L','02000100030001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(10,'BLUSA CON LOGO BORDADO T=XXL','02000100030002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(11,'BOTA DE JEBE','0200010004',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(12,'BOTA DE JEBE T-39','02000100040001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(13,'BOTA DE JEBE T-40','02000100040002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(14,'BOTA DE JEBE T-41','02000100040003',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(15,'BOTA DE JEBE T-42','02000100040004',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(16,'BOTA DE JEBE T-43','02000100040005',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(17,'BOTIN DE CUERO','0200010005',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(18,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=37','02000100050001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(19,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=38','02000100050002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(20,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=39','02000100050003',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(21,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=40','02000100050004',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(22,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=41','02000100050005',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(23,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=42','02000100050006',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(24,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=43','02000100050007',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(25,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=44','02000100050008',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(26,'BOTIN DE CUERO P/CAJON  PUNTA DE ACERO CAUCHO T=45','02000100050009',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(27,'BOTIN DE CUERO PLANTA DIELECTRICA','0200010006',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(28,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=37','02000100060001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(29,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=38','02000100060002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(30,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=39','02000100060003',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(31,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=40','02000100060004',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(32,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=41','02000100060005',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(33,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=42','02000100060006',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(34,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=43','02000100060007',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(35,'BOTIN DE CUERO PLANTA DIELECTRICAS PUNTA REFORZADA  T=44','02000100060008',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(36,'CAMISA','0200010007',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(37,'CAMISA FAENA XL','02000100070001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(38,'CAMISA JEAN','02000100070002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(39,'CAMISA FAENA XXL','02000100070003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(40,'CAPUCHONES','0200010008',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(41,'CAPUCHONES VERDES','02000100080001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(42,'CARTUCHOS','0200010009',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(43,'CARTUCHO 6003 CONTRA VAPORES Y GASES 3M','02000100090001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(44,'CARTUCHO PARA RESPIRADORES DOBLE VIA PARA VAPORES COD.100300','02000100090002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(45,'CASACA','0200010010',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(46,'CASACA DE CUERO P/ TRABAJO EN CALIENTE','02000100100001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(47,'CASCO DE SEGURIDAD','0200010011',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(48,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR AMARILLO','02000100110001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(49,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR AZUL','02000100110002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(50,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR BLANCO','02000100110003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(51,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR BLANCO 3M','02000100110004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(52,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR NARANJA 3 M','02000100110005',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(53,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR PLOMO','02000100110006',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(54,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR PLOMO 3 M','02000100110007',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(55,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR ROJO','02000100110008',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(56,'CASCO DE SEGURIDAD TIPO JOCKEY COLOR NARANJA','02000100110009',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(57,'CHALECO','0200010012',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(58,'CHALECO AZUL TALLA L C/CINTAS REFLECTIVAS YLOGO','02000100120001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(59,'CHALECO COLOR NARANJA C/CINTAS REFLECTIVAS Y LOGO','02000100120002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(60,'CHALECO GRIS  L','02000100120003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(61,'CHALECO GRIS XL','02000100120004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(62,'CHALECO GRIS XXL','02000100120005',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(63,'CHALECO NARANJA XL','02000100120006',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(64,'CHALECO ROJO XL','02000100120007',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(65,'CHALECO AZUL TALLA XL C/CINTAS REFLECTIVAS Y LOGO','02000100120008',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(66,'CHALECO AZUL TALLA  XXL C/CINTAS REFLECTIVAS Y LOGO','02000100120009',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(67,'CHALECO GRIS TALLA XXXL C/CINTAS REFLECTIVAS Y LOGO','02000100120010',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(68,'CHALECO GRIS TALLA M C/CINTAS REFLECTIVAS Y LOGO','02000100120011',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(69,'CHALECO NARANJA TALLA XXL C/CINTAS REFLECTIVAS Y LOGO','02000100120012',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(70,'CHALECO NARANJA TALLA L C/CINTAS REFLECTIVAS Y LOGO','02000100120013',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(71,'CHALECO ROJO TALLA L C/CINTAS REFLECTIVAS Y LOGO','02000100120014',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(72,'CHALECO ROJO TALLA M C/CINTAS REFLECTIVAS Y LOGO','02000100120015',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(73,'COLLARIN','0200010013',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(74,'COLLARIN CERVICAL AJUSTABLE LAERDAL - USA','02000100130001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(75,'CORTA VIENTO','0200010014',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(76,'CORTA VIENTO NARANJA','02000100140001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(77,'CORTAVIENTO PARA CASCO','02000100140002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(78,'ESCARPIN','0200010015',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(79,'ESCARPIN DE CUERO CROMO SOLDADOR','02000100150001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(80,'FAJA','0200010016',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(81,'FAJA DE FUERZA L','02000100160001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(82,'FAJA DE FUERZA M','02000100160002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(83,'FILTRO','0200010017',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(84,'FILTRO DE CARTUCHO N7500','02000100170001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(85,'FILTRO PARA PARTICULAS Y VAPORES ORGANICOS P100','02000100170002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(86,'FILTRO PARA RESPIRADOR DOBLE VIA /  P/PARTICULAS 7093 P100','02000100170003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(87,'FILTRO PARA RESPIRADOR DOBLE VIA P/GASES 3M 6003','02000100170004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(88,'GUANTE CUERO','0200010018',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(89,'GUANTE DE CUERO AMARILLO L/9.5 MOD.INGENIERO','02000100180001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(90,'GUANTE DE CUERO BADANA 11\"\"','02000100180002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(91,'GUANTE DE CUERO BADANA 9\"\"','02000100180003',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(92,'GUANTES AISLANTES','0200010019',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(93,'GUANTES AISLANTE DIELECTRICO  DE JEBE CLASE 2 , 17000V','02000100190001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(94,'GUANTES AISLANTE DIELECTRICO  DE JEBE CLASE 3 , 26500V','02000100190002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(95,'GUANTES AISLANTE DIELECTRICO 0-1000V TALLA 10','02000100190003',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(96,'GUANTES AISLANTE DIELECTRICO 0-1000V TALLA 9','02000100190004',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(97,'GUANTES AISLANTE DIELECTRICO 0-26500V TALLA 9','02000100190005',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(98,'GUANTES AISLANTE DIELECTRICO BAJA TENSION','02000100190006',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(99,'GUANTES AISLANTE DIELECTRICO DE JEBE CLASE 4 , 36 KV','02000100190007',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(100,'GUANTES DE HILO','0200010020',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(101,'GUANTES DE HILO C/ PUNTOS DE LATEX','02000100200001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(102,'GUANTES DE SOLDADOR','0200010021',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(103,'GUANTES DE SOLDADOR  #09','02000100210001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(104,'GUANTES DE SOLDADOR  #14','02000100210002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(105,'GUANTES MULTIFLEX','0200010022',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(106,'GUANTES MULTIFLEX  C/FORRO PVC','02000100220001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(107,'GUANTES MULTIFLEX C/FORRO PVC \"WARN\"\"\"','02000100220002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(108,'LENTES DE SEGURIDAD','0200010023',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(109,'LENTES DE SEGURIDAD CLAROS','02000100230001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(110,'LENTES DE SEGURIDAD OSCUROS','02000100230002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(111,'LENTES DE SEGURIDAD TIPO SOBREMONTURA','02000100230003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(112,'LENTES DE SEGURIDAD TIPO SOBREMONTURA CLARO','02000100230004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(113,'MAMELUCO','0200010024',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(114,'MAMELUCO AZUL CON CINTAS REFLECTIVAS Y LOGO','02000100240001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(115,'MANDIL','0200010025',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(116,'MANDIL DE CUERO CROMO C/PLOMO 60X90 1PZA','02000100250001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(117,'MANGA','0200010026',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(118,'MANGA PARA SOLDAR','02000100260001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(119,'MASCARILLA','0200010027',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(120,'MASCARILLA PARA ESMERILAR','02000100270001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(121,'MASCARILLA PARA SOLDADOR','02000100270002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(122,'MASCARILLA  8210  N95 PARA POLVOS  3M','02000100270003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(123,'MASCARILLA  8212  N95 C/VALVULA DE EXHALACION  3M','02000100270004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(124,'MASCARILLA  8247 PARA POLVOS Y GASES 3M','02000100270005',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(125,'MASCARILLA CONTRA POLVOS DESCARTABLE  1730 - LIBUS','02000100270006',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(126,'MASCARILLA PARA POLVO DOBLE VIA','02000100270007',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(127,'PANTALON','0200010028',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(128,'PANTALON  TALLA 28','02000100280001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(129,'PANTALON  TALLA 30','02000100280002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(130,'PANTALON TALLA  32','02000100280003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(131,'PANTALON TALLA 36','02000100280004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(132,'PANTALON TALLA 38','02000100280005',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(133,'PANTALON TALLA 34','02000100280006',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(134,'POLO','0200010029',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(135,'POLO GRIS LOGO  TALLA S','02000100290001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(136,'POLO GRIS LOGO  TALLA M','02000100290002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(137,'POLO GRIS LOGO  TALLA L','02000100290003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(138,'POLO GRIS LOGO  TALLA XL','02000100290004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(139,'PROTECTOR','0200010030',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(140,'PROTECTOR DE OIDO','02000100300001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(141,'PROTECTOR DE OIDO ADAPTABLE A CASCO CM-501 STEELPRO','02000100300002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(142,'RESPIRADOR','0200010031',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(143,'RESPIRADOR DOBLE VIA PARA POLVO 3M-6200/07025','02000100310001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(144,'RESPIRADOR MEDIA CARA 6200 3M','02000100310002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(145,'RESPIRADOR PARA GASES DOBLE  VIA','02000100310003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(146,'TAFILETE','0200010032',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(147,'TAFILETE','02000100320001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(148,'TAPON','0200010033',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(149,'TAPON DE OIDO AUDITIVO','02000100330001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(150,'ARNES','0200010034',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(151,'ARNES DE SEGURIDAD TIPO PARACAIDISTA 03 ANILLOS','02000100340001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(152,'ARNES DE SEGURIDAD TIPO PARACAIDISTA 03 M','02000100340002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(153,'ARNES  SAFELIGHT 10911 3 ARGOLLAS','02000100340003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(154,'ARNES ANTIC, M/HAUK MOD.I343H C/3 ANILLOS','02000100340004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(155,'CAMILLA','0200010035',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(156,'CAMILLA RIGIDA CON CORREA','02000100350001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(157,'GUANTES INDUSTRIAL','0200010036',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(158,'GUANTES INDUSTRIAL C-25 TALLA 9','02000100360001',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(159,'GUANTES INDUSTRIAL C-35 TALLA 9','02000100360002',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(160,'GUANTES INDUSTRIAL C-55 TALLA 9','02000100360003',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(161,'GUANTES INDUSTRIAL C-55 TALLA 10','02000100360004',9,'GSM','','',2,'producto','0000-00-00 00:00:00',1),(162,'CHOMPA','0200010037',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(163,'CHOMPA JORGE CHAVEZ MANGA LARGA','02000100370001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(164,'LINEA DE VIDA','0200010038',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(165,'LINEA DE VIDA DOBLE C/AMORTIGUADOR','02000100380001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(166,'LINEA DE VIDA DOBLE S/AMORTIGUADOR','02000100380002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(167,'LINEA DE VIDA B-PT C/SHOCK ABSORB 3M','02000100380003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(168,'LINEA DE VIDA DOBLE C/AMORTIGUADOR DE IMPACTO','02000100380004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(169,'LINEA DE VIDA SIMPLE FERSAF','02000100380005',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(170,'LUNA','0200010039',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(171,'LUNA RECTANGULAR TRANSPARENTE','02000100390001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(172,'LUNA RECTANGULAR NEGRA','02000100390002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(173,'MALLA','0200010040',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(174,'MALLA CERCADORA C/NARANJA 80GR  1MTS X 50YD','02000100400001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(175,'BANQUETA','0200020001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(176,'BANQUETA AISLANTE DIELECTRICA DE 24 KV','02000200010001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(177,'BANQUETA AISLANTE DIELECTRICA DE 24 KV 50 CMT','02000200010002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(178,'BLOQUEADOR','0200020002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(179,'BLOQUEADOR 3M FPS 50 X 110ML','02000200020001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(180,'BLOQUEADOR 3M FPS 50 X 1LT','02000200020002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(181,'BLOQUEADOR SUPER BLOCK FPS 55 X 110ML','02000200020003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(182,'CACHACO','0200020003',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(183,'CACHACO NARANJA','02000200030001',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(184,'CACHACO DE PVC 1.20MTS','02000200030002',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(185,'CARTEL','0200020004',9,'GSM','','',1,'producto','0000-00-00 00:00:00',1),(186,'test 1','codigo 1',2,'marca','','',2,'','2018-10-17 05:51:46',1),(187,'material x.x','mxxxx',4,'ninguna','','',2,'pruebaaaaa','2018-11-11 03:26:11',1),(188,'asd','asd',2,'asdasd','descarga.jpg','proveedores.xlsx',1,'matusita','2019-01-21 05:35:29',1);
/*!40000 ALTER TABLE `tbl_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productos_precios`
--

DROP TABLE IF EXISTS `tbl_productos_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productos_precios` (
  `precio_id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `precio` double NOT NULL,
  `usuario` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`precio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productos_precios`
--

LOCK TABLES `tbl_productos_precios` WRITE;
/*!40000 ALTER TABLE `tbl_productos_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_productos_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `proveedor_id` int(11) NOT NULL AUTO_INCREMENT,
  `razonsocial` varchar(128) NOT NULL DEFAULT '',
  `ruc` varchar(128) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`proveedor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'ANIXER JORVEX S.A.C','20545135184','nomail@gmail.com','417-0202','AV. TINGO MARIA 311 ',1,'2018-12-12 17:11:10',1),(2,'ACEROS DEL PERU','20430039254','nomail@gmail.com','7198989','AV. OSCAR BENAVIDES ',1,'2018-12-12 17:11:10',1),(3,'BEST SECURITY DEL PERU','20475120001','nomail@gmail.com','512-3100','CALLE . RODOLFO BELT',1,'2018-12-12 17:11:10',1),(4,'CONDUCTORES ELECTRICOS LIMA S.A. ( CELSA )','20100063680','nomail@gmail.com','326-1373','ALEXANDER FLEMING N?',1,'2018-12-12 17:11:10',1),(5,'CORPORACION ELECTRO INDUSTRIAL JM S.A.C  ( COREINJM)','20562697897','nomail@gmail.com','950499053','AV. ARGENTINA N?215 ',1,'2018-12-12 17:11:10',1),(6,'CONSORCIO E INVERSIONES TRIPLE A S.A.C','20507629475','nomail@gmail.com','347-0851','JR.AZANGARO N? 970 S',1,'2018-12-12 17:11:10',1),(7,'CABINETS & RACKS S.A.C.','20101563279','nomail@gmail.com','349-0260','CALLE LOS PLASTICOS ',1,'2018-12-12 17:11:10',1),(8,'EPLI S.A.C','20100712599','nomail@gmail.com','330-1595','JR. TARAPOTO 1157 LI',1,'2018-12-12 17:11:10',1),(9,'ELECTRO ENCHUFE ','20251549835','nomail@gmail.com','2013760','Av. Oscar R. Benavid',1,'2018-12-12 17:11:10',1),(10,'FARCOTEC S.A.C ','20434392862','nomail@gmail.com','351-9709 / 3519638','CAL. SAN CARLOS MZ C',1,'2018-12-12 17:11:10',1),(11,'FAMETAL S.A','20100302005','nomail@gmail.com','6147575','AV. REPUBLICA DE PAN',1,'2018-12-12 17:11:10',1),(12,'FAIMEX ANDAMIOS S.A.C ( ANDAMIOS NORMADOS )','20547576463','nomail@gmail.com','356-9221','CALLE 11 MZ.A1 LOTE ',1,'2018-12-12 17:11:10',1),(13,'GESCEL  S.A.C.','20502122461','nomail@gmail.com','431-3894/431-3892','JR. FULGENCIO VALDEZ',1,'2018-12-12 17:11:10',1),(14,'GRUPO ELECTRICO GONZALES S.A.C','20549918515','nomail@gmail.com','427-1893 / 989146740','JR. AZANGARO 970 STA',1,'2018-12-12 17:11:10',1),(15,'INTERSEGURE S.A.C','20523060199','nomail@gmail.com','347-0597/991445369','JR AZANGARO 983TIEND',1,'2018-12-12 17:11:10',1),(16,'INVESUX S.R.L','20502132343','nomail@gmail.com','7197760','Av. Alfredo Mendiola',1,'2018-12-12 17:11:10',1),(17,'JN ACEROS','20100779740','nomail@gmail.com','706-1000 / 706-1099 ','AV.FELIPE SALAVERRY ',1,'2018-12-12 17:11:10',1),(18,'MACART E.I.R.L (ANDAMIOS)','20160599350','nomail@gmail.com','434-3147','LOS TALLADORES  108 ',1,'2018-12-12 17:11:10',1),(19,'MULTIMET S.A','20101839444','nomail@gmail.com','463-0631 ANEX 223 / ','AV. BOLIVAR N? 359 L',1,'2018-12-12 17:11:10',1),(20,'MAX INOX S.R.L','20516745887','nomail@gmail.com','330-1136 / 943858096','PQ. INDUSTRIAL EL AS',1,'2018-12-12 17:11:10',1),(21,'MEGA CENTER TRADING COMPANY S.A.C','20479106500','nomail@gmail.com','428-5110','JR. AZANGARO 970 STA',1,'2018-12-12 17:11:10',1),(22,'METAL GRAF S.R.L. ','20124435367','nomail@gmail.com','5364544','JR. SANTA LEONOR NRO',1,'2018-12-12 17:11:10',1),(23,'MANUFACTURAS ELECTRICAS S.A','20100055318','nomail@gmail.com','?6196200',' Av. Oscar R. Benavi',1,'2018-12-12 17:11:10',1),(24,'PROMELSA ','20100084172','nomail@gmail.com','7154200','AV. PROLONGACION PAR',1,'2018-12-12 17:11:10',1),(25,'POLIMETALES S.A.C','20100456495','nomail@gmail.com','619-3600 / 946241349','AV. ARGENTINA N?2787',1,'2018-12-12 17:11:10',1),(26,'PROVEEDORES ELECTRICOS G&R S.A.C','20600312830','nomail@gmail.com','428-6749/ 981563448','JR. LAMPA N?1137 OF.',1,'2018-12-12 17:11:10',1),(27,'PLACA MASS','20522718786','nomail@gmail.com','4851626','Calle 8 Apv Resid Mo',1,'2018-12-12 17:11:10',1),(28,'RQF ELECTRO SERVICE S.A.C','20153430366','nomail@gmail.com','330-0403','JR. JORGE CHAVEZ N?1',1,'2018-12-12 17:11:10',1),(29,'SIGELEC S.A.C','20268214527','nomail@gmail.com','717-4200','AV.OSCAR R. BENAVIDE',1,'2018-12-12 17:11:10',1),(30,'SY Z COMINZA S.R.L.','20141151968','nomail@gmail.com','431-4836 / 330-5043','JR HUANTAR N?272 BRE',1,'2018-12-12 17:11:10',1),(31,'SUJETAR DEL PERU S.A.C','20543255841','nomail@gmail.com','263-6889 / 263-4944','JR. LA MAR 183 OF. 2',1,'2018-12-12 17:11:10',1),(32,'SMART FACTORY','20510108761','nomail@gmail.com','472-2613','JR. JOAQUIN BERNAL 2',1,'2018-12-12 17:11:10',1),(33,'TECNIASES S.A.C','20256998743','nomail@gmail.com','349-0400','CALLE LOS PLASTICOS ',1,'2018-12-12 17:11:10',1),(34,'TECSUR S.A ','20206018411','nomail@gmail.com','217-2500','PASAJE CALANGO 158  ',1,'2018-12-12 17:11:10',1),(35,'VELAX S.A','20118237774','nomail@gmail.com','2544444','Av. Defensores del M',1,'2018-12-12 17:11:10',1),(36,' YAZU SOLUCIONES INDUSTRIALES S.A.C.','20601088712','nomail@gmail.com','949472328','Av. Franklin D.Roose',1,'2018-12-12 17:11:10',1);
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reset_password`
--

DROP TABLE IF EXISTS `tbl_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reset_password`
--

LOCK TABLES `tbl_reset_password` WRITE;
/*!40000 ALTER TABLE `tbl_reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text',
  PRIMARY KEY (`roleId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (1,'System Administrator'),(2,'Manager'),(3,'Employee');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_unidades`
--

DROP TABLE IF EXISTS `tbl_unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_unidades` (
  `unidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `comentario` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`unidad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_unidades`
--

LOCK TABLES `tbl_unidades` WRITE;
/*!40000 ALTER TABLE `tbl_unidades` DISABLE KEYS */;
INSERT INTO `tbl_unidades` VALUES (1,'UNIDAD','una unidad','2018-10-10 10:50:52',1),(2,'PAR','PARES 2 UND','2018-10-10 10:51:21',1),(3,'METRO','METROS','2018-10-17 09:25:36',1),(4,'KG','KILOGRAMOS','2018-10-17 09:25:36',1),(5,'ROLLO','ROLLOS DE CABLE','2018-10-17 09:25:37',1),(6,'GALON','GALONES (4 LITROS)','2018-10-17 09:25:37',1),(7,'M3','METROS CUBICOS','2018-10-17 09:25:38',1);
/*!40000 ALTER TABLE `tbl_unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'admin@example.com','$2y$10$W9UJCLKBBRlEHLNE262Uke8gy/XvmN.SN55SN.cD5dyGgovdZ0CoK','System Administrator','9890098900',1,0,0,'2015-07-01 18:56:49',1,'2018-10-08 05:13:51'),(2,'manager@example.com','$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm','Manager','9890098900',2,0,1,'2016-12-09 17:49:56',1,'2018-01-12 07:22:11'),(3,'employee@example.com','$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u','Employee','9890098900',3,1,1,'2016-12-09 17:50:22',1,'2018-10-18 05:59:52'),(9,'odlirgz@gmail.com','$2y$10$.frxTL3EkOgupl7SZyt0TOKrh.s8kx0Hhf2CYjVFwgEkVvlFXVwx2','Rildo Gomez','0961808064',3,0,1,'2018-10-13 18:54:44',NULL,NULL);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-12 14:21:51
