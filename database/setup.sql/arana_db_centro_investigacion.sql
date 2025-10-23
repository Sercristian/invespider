-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: arana_db
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.2

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

--
-- Table structure for table `centro_investigacion`
--

DROP TABLE IF EXISTS `centro_investigacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centro_investigacion` (
  `id_centro` int NOT NULL AUTO_INCREMENT,
  `nombre_centro` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `id_ciudad` int NOT NULL,
  `id_director` int NOT NULL,
  PRIMARY KEY (`id_centro`),
  UNIQUE KEY `nombre_centro` (`nombre_centro`),
  KEY `id_ciudad` (`id_ciudad`),
  KEY `id_director` (`id_director`),
  CONSTRAINT `centro_investigacion_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `centro_investigacion_ibfk_2` FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_investigacion`
--

LOCK TABLES `centro_investigacion` WRITE;
/*!40000 ALTER TABLE `centro_investigacion` DISABLE KEYS */;
INSERT INTO `centro_investigacion` VALUES (1,'lobo','Buenos aires Nº1000','011-9876543',1,1),(2,'viuda negra','Daigonal 10 Nº5000','011-9876543',2,2),(3,'tejedora','Calle Innovación 789','034-1234567',3,3),(4,'cangrejo','Bulevar Tecnológico 1011','026-8765432',4,4),(5,'casera','Diagonal Científica 202','035-2345678',5,5),(6,'tarantula','Avenida del Conocimiento 303','011-7654321',6,6),(14,'loxosceles','R. Roberto Koch 363','1567891245',7,7);
/*!40000 ALTER TABLE `centro_investigacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 20:39:43
