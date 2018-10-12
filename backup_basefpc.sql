-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: final_phpCurd
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `acudiente`
--

DROP TABLE IF EXISTS `acudiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acudiente` (
  `id_acudiente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_acudiente` varchar(50) NOT NULL,
  `apellido_acudiente` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `ciudad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_acudiente`),
  KEY `ciudad` (`ciudad`),
  CONSTRAINT `acudiente_ibfk_1` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acudiente`
--

LOCK TABLES `acudiente` WRITE;
/*!40000 ALTER TABLE `acudiente` DISABLE KEYS */;
/*!40000 ALTER TABLE `acudiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `acudientesMenores25Años`
--

DROP TABLE IF EXISTS `acudientesMenores25Años`;
/*!50001 DROP VIEW IF EXISTS `acudientesMenores25Años`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `acudientesMenores25Años` AS SELECT 
 1 AS `id_acudiente`,
 1 AS `nombre_acudiente`,
 1 AS `apellido_acudiente`,
 1 AS `edad`,
 1 AS `telefono`,
 1 AS `direccion`,
 1 AS `ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Armenia'),(2,'Barrancabermeja'),(3,'Barranquilla'),(4,'Bogotá'),(5,'Bucaramanga'),(6,'Buga'),(7,'Cali'),(8,'Cartagena'),(9,'Chía'),(10,'Cúcuta'),(11,'Duitama'),(12,'Florencia'),(13,'Fusagasugá'),(14,'Girardot'),(15,'Honda'),(16,'Ibagué'),(17,'Ipiales'),(18,'Jamundí'),(19,'Leticia'),(20,'Manizales'),(21,'Mariquita'),(22,'Medellín'),(23,'Mompox'),(24,'Montería'),(25,'Murillo'),(26,'Neiva'),(27,'Pamplona'),(28,'Pasto'),(29,'Pereira'),(30,'Popayán'),(31,'Riohacha'),(32,'San Andrés y Providencia'),(33,'San Antero'),(34,'Santa Marta'),(35,'Santafé de Antioquia'),(36,'Sevilla'),(37,'Sincelejo'),(38,'Sogamoso'),(39,'Tabio'),(40,'Tocancipá'),(41,'Tolú'),(42,'Tuluá'),(43,'Tumaco'),(44,'Tunja'),(45,'Valledupar'),(46,'Villavicencio'),(47,'Yopal'),(48,'Zipaquirá');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estudiante` varchar(50) NOT NULL,
  `apellido_estudiante` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `ciudad_nacimiento` varchar(50) NOT NULL,
  `ciudad` int(11) DEFAULT NULL,
  `acudiente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `ciudad` (`ciudad`),
  KEY `acudiente` (`acudiente`),
  CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `estudiante_ibfk_2` FOREIGN KEY (`acudiente`) REFERENCES `acudiente` (`id_acudiente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `estudiantesBogotá`
--

DROP TABLE IF EXISTS `estudiantesBogotá`;
/*!50001 DROP VIEW IF EXISTS `estudiantesBogotá`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `estudiantesBogotá` AS SELECT 
 1 AS `id_estudiante`,
 1 AS `nombre_estudiante`,
 1 AS `apellido_estudiante`,
 1 AS `edad`,
 1 AS `ciudad_nacimiento`,
 1 AS `ciudad`,
 1 AS `acudiente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `estudiantesMayoresEdad`
--

DROP TABLE IF EXISTS `estudiantesMayoresEdad`;
/*!50001 DROP VIEW IF EXISTS `estudiantesMayoresEdad`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `estudiantesMayoresEdad` AS SELECT 
 1 AS `id_estudiante`,
 1 AS `nombre_estudiante`,
 1 AS `apellido_estudiante`,
 1 AS `edad`,
 1 AS `ciudad_nacimiento`,
 1 AS `ciudad`,
 1 AS `acudiente`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `acudientesMenores25Años`
--

/*!50001 DROP VIEW IF EXISTS `acudientesMenores25Años`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acudientesMenores25Años` AS select `acudiente`.`id_acudiente` AS `id_acudiente`,`acudiente`.`nombre_acudiente` AS `nombre_acudiente`,`acudiente`.`apellido_acudiente` AS `apellido_acudiente`,`acudiente`.`edad` AS `edad`,`acudiente`.`telefono` AS `telefono`,`acudiente`.`direccion` AS `direccion`,`acudiente`.`ciudad` AS `ciudad` from `acudiente` where (`acudiente`.`edad` < 25) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estudiantesBogotá`
--

/*!50001 DROP VIEW IF EXISTS `estudiantesBogotá`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estudiantesBogotá` AS select `e`.`id_estudiante` AS `id_estudiante`,`e`.`nombre_estudiante` AS `nombre_estudiante`,`e`.`apellido_estudiante` AS `apellido_estudiante`,`e`.`edad` AS `edad`,`e`.`ciudad_nacimiento` AS `ciudad_nacimiento`,`e`.`ciudad` AS `ciudad`,`e`.`acudiente` AS `acudiente` from (`estudiante` `e` join `ciudad` `c` on((`e`.`ciudad` = `c`.`id_ciudad`))) where (`c`.`nombre_ciudad` = 'Bogotá') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estudiantesMayoresEdad`
--

/*!50001 DROP VIEW IF EXISTS `estudiantesMayoresEdad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estudiantesMayoresEdad` AS select `estudiante`.`id_estudiante` AS `id_estudiante`,`estudiante`.`nombre_estudiante` AS `nombre_estudiante`,`estudiante`.`apellido_estudiante` AS `apellido_estudiante`,`estudiante`.`edad` AS `edad`,`estudiante`.`ciudad_nacimiento` AS `ciudad_nacimiento`,`estudiante`.`ciudad` AS `ciudad`,`estudiante`.`acudiente` AS `acudiente` from `estudiante` where (`estudiante`.`edad` >= 18) */;
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

-- Dump completed on 2018-09-07 10:51:53
