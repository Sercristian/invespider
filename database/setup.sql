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

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(100) NOT NULL,
  `cod_postal` int NOT NULL,
  `id_pais` int NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Ciudad Autonoma de Buenos Aires',1420,1),(2,'La Plata',1900,1),(3,'San Fernando del Valle de Catamarca',4700,1),(4,'Cordoba',5000,1),(5,'Brasilia ',70000000,2),(6,'São Paulo',1000000,2),(7,'Río de Janeiro',20000000,2),(8,'Fortaleza',60000000,2);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id_director` int NOT NULL AUTO_INCREMENT,
  `nombre_director` varchar(100) NOT NULL,
  `dni_director` varchar(15) NOT NULL,
  PRIMARY KEY (`id_director`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'María López','12345678'),(2,'Carlos Souza','98765432'),(3,'Ana García','23456789'),(4,'Pedro Martínez','34567890'),(5,'Laura Fernández','45678901'),(6,'Diego Rodríguez','56789012'),(7,'Sofía Pérez','67890123'),(8,'Javier Gómez','78901234'),(9,'Valeria Díaz','89012345'),(10,'Ricardo Sánchez','90123456');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especie_arana`
--

DROP TABLE IF EXISTS `especie_arana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especie_arana` (
  `id_especie` int NOT NULL AUTO_INCREMENT,
  `nombre_cientifico` varchar(100) NOT NULL,
  `nombre_comun` varchar(100) DEFAULT NULL,
  `familia` varchar(50) DEFAULT NULL,
  `habitat` varchar(100) DEFAULT NULL,
  `peligrosidad` varchar(20) NOT NULL,
  PRIMARY KEY (`id_especie`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie_arana`
--

LOCK TABLES `especie_arana` WRITE;
/*!40000 ALTER TABLE `especie_arana` DISABLE KEYS */;
INSERT INTO `especie_arana` VALUES (1,'Latrodectus mactans','Viuda negra','Theridiidae','Zonas cálidas y secass','Alto'),(2,'Loxosceles laeta','Araña de rincón','Sicariidae','Ambientes oscuros','Alto'),(3,'Argiope argentata','Araña plateada','Araneidae','Árboles y matorrales','Bajo'),(4,'Phoneutria nigriventer','Araña Banano','Ctenidae','Selvas húmedas, cajas de frutas tropicales','Alto'),(6,'Nephila clavipes','Araña de Seda Dorada','Araneidae','Bosques tropicales y subtropicales','Medio'),(15,'Kukulcania hibernalis','Kukul','Filistidae','hogares','Bajo'),(25,'Polybetes pythagoricus','araña del monte','Sparassidae','Regiones templadas y cálidas de Sudamérica.','Medio'),(36,'asdasd','asdasd','asdasd','asdasd','Medio');
/*!40000 ALTER TABLE `especie_arana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observacion`
--

DROP TABLE IF EXISTS `observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `observacion` (
  `id_observacion` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `cantidad_ejemplares` int NOT NULL,
  `comportamiento_observado` text,
  `inversion` decimal(12,2) NOT NULL,
  `id_especie` int NOT NULL,
  `id_centro` int NOT NULL,
  PRIMARY KEY (`id_observacion`),
  KEY `id_especie` (`id_especie`),
  KEY `id_centro` (`id_centro`),
  CONSTRAINT `observacion_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especie_arana` (`id_especie`),
  CONSTRAINT `observacion_ibfk_2` FOREIGN KEY (`id_centro`) REFERENCES `centro_investigacion` (`id_centro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observacion`
--

LOCK TABLES `observacion` WRITE;
/*!40000 ALTER TABLE `observacion` DISABLE KEYS */;
INSERT INTO `observacion` VALUES (1,'2025-03-10',5,'Tejido de telarañas intensivo',5000.00,1,1),(2,'2025-03-12',2,'Actividad nocturna',3500.00,2,1),(3,'2025-04-01',10,'Construcción de tela orbicular',1500.00,3,2);
/*!40000 ALTER TABLE `observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_pais` int NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Argentina'),(2,'Brasil');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 20:45:58
