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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 20:39:43
