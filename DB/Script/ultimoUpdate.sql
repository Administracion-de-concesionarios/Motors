CREATE DATABASE  IF NOT EXISTS `concesionarios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `concesionarios`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: concesionarios
-- ------------------------------------------------------
-- Server version	5.7.30-log

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
-- Table structure for table `gc_caracteristica`
--

DROP TABLE IF EXISTS `gc_caracteristica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_caracteristica` (
  `CAR_ID` int(10) NOT NULL,
  `CAR_DESCRIPCION` varchar(100) NOT NULL,
  `CAR_MAXVEL` varchar(45) NOT NULL,
  `CAR_MAXTORQUE` varchar(45) NOT NULL,
  `CAR_TIPOCOMBUSTIBLE` varchar(35) NOT NULL,
  `CAR_ACELERACION` varchar(45) NOT NULL,
  `CAR_KILOMETRAJE` varchar(25) NOT NULL,
  `CAR_SUSPENSION` varchar(100) NOT NULL,
  `CAR_RADIADOR` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`CAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_caracteristica`
--

LOCK TABLES `gc_caracteristica` WRITE;
/*!40000 ALTER TABLE `gc_caracteristica` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_caracteristica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_catalogo`
--

DROP TABLE IF EXISTS `gc_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_catalogo` (
  `CAT_ID` int(10) NOT NULL,
  `CAT_CARID` int(10) NOT NULL,
  `CAT_MODID` int(10) NOT NULL,
  `CAT_EXTRA` varchar(200) NOT NULL,
  `CAT_PVP` decimal(20,3) DEFAULT NULL,
  `GC_CONCESIONARIO_CON_ID` int(10) NOT NULL,
  PRIMARY KEY (`CAT_ID`),
  KEY `fk_GC_CATALOGO_GC_CONCESIONARIO1_idx` (`GC_CONCESIONARIO_CON_ID`),
  CONSTRAINT `fk_GC_CATALOGO_GC_CONCESIONARIO1` FOREIGN KEY (`GC_CONCESIONARIO_CON_ID`) REFERENCES `gc_concesionario` (`CON_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_catalogo`
--

LOCK TABLES `gc_catalogo` WRITE;
/*!40000 ALTER TABLE `gc_catalogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_cliente`
--

DROP TABLE IF EXISTS `gc_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_cliente` (
  `CLI_ID` int(10) NOT NULL,
  `CLI_NOMBRE` varchar(80) NOT NULL,
  `CLI_APELLIDOS` varchar(80) NOT NULL,
  `CLI_TELEFONO` int(15) NOT NULL,
  `CLI_EMAIL` varchar(45) DEFAULT NULL,
  `CLI_FNAC` date DEFAULT NULL,
  `CLI_PROFESION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CLI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_cliente`
--

LOCK TABLES `gc_cliente` WRITE;
/*!40000 ALTER TABLE `gc_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_concesionario`
--

DROP TABLE IF EXISTS `gc_concesionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_concesionario` (
  `CON_ID` int(10) NOT NULL,
  `CON_NOMBRE` varchar(80) NOT NULL,
  `CON_DIRECCION` varchar(100) NOT NULL,
  `CON_TELEFONO` int(15) NOT NULL,
  PRIMARY KEY (`CON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_concesionario`
--

LOCK TABLES `gc_concesionario` WRITE;
/*!40000 ALTER TABLE `gc_concesionario` DISABLE KEYS */;
INSERT INTO `gc_concesionario` VALUES (0,'','',0),(3,'f','f',2),(4,'samzap','calle21',311),(13,'w','w',12),(21,'sa','hj8',90),(54,'ff','fff',3);
/*!40000 ALTER TABLE `gc_concesionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_configuracion`
--

DROP TABLE IF EXISTS `gc_configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_configuracion` (
  `CONF_VEHID` int(10) NOT NULL,
  `CONF_CARID` int(10) NOT NULL,
  `GC_VEHICULO_VEH_ID` int(10) NOT NULL,
  `CONF_MOTOR` varchar(35) NOT NULL,
  `CONF_LLANTAS` varchar(20) NOT NULL,
  `CONF_ESPEJOS` varchar(20) NOT NULL,
  `CONF_CHASIS` varchar(35) DEFAULT NULL,
  `CONF_CILINDRAJE` varchar(50) DEFAULT NULL,
  `CONF_RINES` varchar(30) DEFAULT NULL,
  `CONF_INTERIOR` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CONF_VEHID`),
  KEY `fk_GC_CONFIGURACION_GC_VEHICULO1_idx` (`GC_VEHICULO_VEH_ID`),
  CONSTRAINT `fk_GC_CONFIGURACION_GC_VEHICULO1` FOREIGN KEY (`GC_VEHICULO_VEH_ID`) REFERENCES `gc_vehiculo` (`VEH_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_configuracion`
--

LOCK TABLES `gc_configuracion` WRITE;
/*!40000 ALTER TABLE `gc_configuracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_descuentos`
--

DROP TABLE IF EXISTS `gc_descuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_descuentos` (
  `DES_ID` int(10) NOT NULL,
  `DES_VALOR` double DEFAULT NULL,
  `DES_NOMBRE` varchar(100) DEFAULT NULL,
  `DES_FACTURAID` int(10) DEFAULT NULL,
  `FAC_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`DES_ID`),
  KEY `FK_GC_DESCUENTOS` (`DES_FACTURAID`),
  CONSTRAINT `FK_GC_DESCUENTOS` FOREIGN KEY (`DES_FACTURAID`) REFERENCES `gc_factura` (`FAC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_descuentos`
--

LOCK TABLES `gc_descuentos` WRITE;
/*!40000 ALTER TABLE `gc_descuentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_descuentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_empleado`
--

DROP TABLE IF EXISTS `gc_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_empleado` (
  `EMP_ID` varchar(30) NOT NULL,
  `EMP_CONID` varchar(45) NOT NULL,
  `EMP_NOMBRE` varchar(80) NOT NULL,
  `EMP_APELLIDOS` varchar(45) NOT NULL,
  `EMP_DIRECCION` varchar(100) NOT NULL,
  `EMP_TELEFONO` varchar(15) NOT NULL,
  `EMP_DNI` varchar(45) NOT NULL,
  `EMP_SUELDO` double NOT NULL,
  `EMP_JEFE` varchar(100) NOT NULL,
  `EMP_FECHAALTA` date NOT NULL,
  `EMP_FECHABAJA` date NOT NULL,
  `EMP_TIPOEMP` varchar(40) NOT NULL,
  `GC_CONCESIONARIO_CON_ID` int(10) NOT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `fk_GC_EMPLEADO_GC_CONCESIONARIO1_idx` (`GC_CONCESIONARIO_CON_ID`),
  CONSTRAINT `fk_GC_EMPLEADO_GC_CONCESIONARIO1` FOREIGN KEY (`GC_CONCESIONARIO_CON_ID`) REFERENCES `gc_concesionario` (`CON_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_empleado`
--

LOCK TABLES `gc_empleado` WRITE;
/*!40000 ALTER TABLE `gc_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_factura`
--

DROP TABLE IF EXISTS `gc_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_factura` (
  `FAC_ID` int(10) NOT NULL,
  `FAC_CONTABILIZADA` varchar(45) NOT NULL,
  `GC_USUARIO_USR_ID` varchar(80) NOT NULL,
  `GC_VENTA_VEN_ID` int(10) NOT NULL,
  PRIMARY KEY (`FAC_ID`),
  KEY `fk_GC_FACTURA_GC_USUARIO1_idx` (`GC_USUARIO_USR_ID`),
  KEY `fk_GC_FACTURA_GC_VENTA1_idx` (`GC_VENTA_VEN_ID`),
  CONSTRAINT `fk_GC_FACTURA_GC_USUARIO1` FOREIGN KEY (`GC_USUARIO_USR_ID`) REFERENCES `gc_usuario` (`USR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_FACTURA_GC_VENTA1` FOREIGN KEY (`GC_VENTA_VEN_ID`) REFERENCES `gc_venta` (`VEN_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_factura`
--

LOCK TABLES `gc_factura` WRITE;
/*!40000 ALTER TABLE `gc_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_marca`
--

DROP TABLE IF EXISTS `gc_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_marca` (
  `MAR_ID` int(10) NOT NULL,
  `MAR_NOMBRE` varchar(45) NOT NULL,
  `GC_USUARIO_USR_ID` varchar(80) NOT NULL,
  PRIMARY KEY (`MAR_ID`),
  KEY `fk_GC_MARCA_GC_USUARIO1_idx` (`GC_USUARIO_USR_ID`),
  CONSTRAINT `fk_GC_MARCA_GC_USUARIO1` FOREIGN KEY (`GC_USUARIO_USR_ID`) REFERENCES `gc_usuario` (`USR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_marca`
--

LOCK TABLES `gc_marca` WRITE;
/*!40000 ALTER TABLE `gc_marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_modelo`
--

DROP TABLE IF EXISTS `gc_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_modelo` (
  `MOD_ID` int(11) NOT NULL,
  `MOD_NOMBRE` varchar(80) NOT NULL,
  `MOD_MARID` int(10) NOT NULL,
  `GC_MARCA_MAR_ID` int(10) NOT NULL,
  `GC_CATALOGO_CAT_ID` int(10) NOT NULL,
  PRIMARY KEY (`MOD_ID`),
  KEY `fk_GC_MODELO_GC_MARCA1_idx` (`GC_MARCA_MAR_ID`),
  KEY `fk_GC_MODELO_GC_CATALOGO1_idx` (`GC_CATALOGO_CAT_ID`),
  CONSTRAINT `fk_GC_MODELO_GC_CATALOGO1` FOREIGN KEY (`GC_CATALOGO_CAT_ID`) REFERENCES `gc_catalogo` (`CAT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_MODELO_GC_MARCA1` FOREIGN KEY (`GC_MARCA_MAR_ID`) REFERENCES `gc_marca` (`MAR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_modelo`
--

LOCK TABLES `gc_modelo` WRITE;
/*!40000 ALTER TABLE `gc_modelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_modelo_has_gc_caracteristica`
--

DROP TABLE IF EXISTS `gc_modelo_has_gc_caracteristica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_modelo_has_gc_caracteristica` (
  `GC_MODELO_MOD_ID` int(11) NOT NULL,
  `GC_CARACTERISTICA_CAR_ID` int(10) NOT NULL,
  PRIMARY KEY (`GC_MODELO_MOD_ID`,`GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_MODELO_has_GC_CARACTERISTICA_GC_CARACTERISTICA1_idx` (`GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_MODELO_has_GC_CARACTERISTICA_GC_MODELO1_idx` (`GC_MODELO_MOD_ID`),
  CONSTRAINT `fk_GC_MODELO_has_GC_CARACTERISTICA_GC_CARACTERISTICA1` FOREIGN KEY (`GC_CARACTERISTICA_CAR_ID`) REFERENCES `gc_caracteristica` (`CAR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_MODELO_has_GC_CARACTERISTICA_GC_MODELO1` FOREIGN KEY (`GC_MODELO_MOD_ID`) REFERENCES `gc_modelo` (`MOD_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_modelo_has_gc_caracteristica`
--

LOCK TABLES `gc_modelo_has_gc_caracteristica` WRITE;
/*!40000 ALTER TABLE `gc_modelo_has_gc_caracteristica` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_modelo_has_gc_caracteristica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_modelo_has_gc_caracteristica1`
--

DROP TABLE IF EXISTS `gc_modelo_has_gc_caracteristica1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_modelo_has_gc_caracteristica1` (
  `GC_MODELO_MOD_ID` int(11) NOT NULL,
  `GC_CARACTERISTICA_CAR_ID` int(10) NOT NULL,
  PRIMARY KEY (`GC_MODELO_MOD_ID`,`GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_MODELO_has_GC_CARACTERISTICA1_GC_CARACTERISTICA1_idx` (`GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_MODELO_has_GC_CARACTERISTICA1_GC_MODELO1_idx` (`GC_MODELO_MOD_ID`),
  CONSTRAINT `fk_GC_MODELO_has_GC_CARACTERISTICA1_GC_CARACTERISTICA1` FOREIGN KEY (`GC_CARACTERISTICA_CAR_ID`) REFERENCES `gc_caracteristica` (`CAR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_MODELO_has_GC_CARACTERISTICA1_GC_MODELO1` FOREIGN KEY (`GC_MODELO_MOD_ID`) REFERENCES `gc_modelo` (`MOD_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_modelo_has_gc_caracteristica1`
--

LOCK TABLES `gc_modelo_has_gc_caracteristica1` WRITE;
/*!40000 ALTER TABLE `gc_modelo_has_gc_caracteristica1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_modelo_has_gc_caracteristica1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_reparaciones`
--

DROP TABLE IF EXISTS `gc_reparaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_reparaciones` (
  `REP_ID` int(10) NOT NULL,
  `REP_FECHAINICIO` date NOT NULL,
  `REP_FECHAFIN` date DEFAULT NULL,
  `REP_CLIENTE` varchar(80) NOT NULL,
  `REP_TELEFONO` int(15) NOT NULL,
  `REP_FACID` int(10) NOT NULL,
  `REP_REVISION` varchar(200) NOT NULL,
  `REP_VEIHID` int(10) DEFAULT NULL,
  `GC_VEHICULO_VEH_ID` int(10) NOT NULL,
  `GC_EMPLEADO_EMP_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`REP_ID`),
  KEY `fk_GC_REPARACIONES_GC_VEHICULO1_idx` (`GC_VEHICULO_VEH_ID`),
  KEY `fk_GC_REPARACIONES_GC_EMPLEADO1_idx` (`GC_EMPLEADO_EMP_ID`),
  CONSTRAINT `fk_GC_REPARACIONES_GC_EMPLEADO1` FOREIGN KEY (`GC_EMPLEADO_EMP_ID`) REFERENCES `gc_empleado` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_REPARACIONES_GC_VEHICULO1` FOREIGN KEY (`GC_VEHICULO_VEH_ID`) REFERENCES `gc_vehiculo` (`VEH_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_reparaciones`
--

LOCK TABLES `gc_reparaciones` WRITE;
/*!40000 ALTER TABLE `gc_reparaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_reparaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_tarea`
--

DROP TABLE IF EXISTS `gc_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_tarea` (
  `TAR_ID` int(10) NOT NULL,
  `TAR_REPID` int(10) NOT NULL,
  `TAR_CONCEPTO` varchar(200) NOT NULL,
  `TAR_HORAS` int(10) NOT NULL,
  `TAR_EMPID` varchar(30) NOT NULL,
  `TAR_FACTURABLE` varchar(45) NOT NULL,
  `GC_EMPLEADO_EMP_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`TAR_ID`),
  KEY `fk_GC_TAREA_GC_EMPLEADO1_idx` (`GC_EMPLEADO_EMP_ID`),
  CONSTRAINT `fk_GC_TAREA_GC_EMPLEADO1` FOREIGN KEY (`GC_EMPLEADO_EMP_ID`) REFERENCES `gc_empleado` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_tarea`
--

LOCK TABLES `gc_tarea` WRITE;
/*!40000 ALTER TABLE `gc_tarea` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_usuario`
--

DROP TABLE IF EXISTS `gc_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_usuario` (
  `USR_ID` varchar(80) NOT NULL,
  `USR_PASS` varchar(45) NOT NULL,
  `USR_PERMISOS` varchar(3) NOT NULL,
  `GC_EMPLEADO_EMP_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`USR_ID`),
  KEY `fk_GC_USUARIO_GC_EMPLEADO1_idx` (`GC_EMPLEADO_EMP_ID`),
  CONSTRAINT `fk_GC_USUARIO_GC_EMPLEADO1` FOREIGN KEY (`GC_EMPLEADO_EMP_ID`) REFERENCES `gc_empleado` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_usuario`
--

LOCK TABLES `gc_usuario` WRITE;
/*!40000 ALTER TABLE `gc_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_vehiculo`
--

DROP TABLE IF EXISTS `gc_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_vehiculo` (
  `VEH_ID` int(10) NOT NULL,
  `VEH_BASTIDOR` varchar(80) NOT NULL,
  `VEH_MATRICULA` varchar(15) NOT NULL,
  `VEH_COLOR` varchar(45) NOT NULL,
  `VEH_MODID` int(10) NOT NULL,
  `VEH_VENDIDO` varchar(30) NOT NULL,
  `GC_MODELO_MOD_ID` int(11) NOT NULL,
  `GC_VENTA_VEN_ID` int(10) NOT NULL,
  PRIMARY KEY (`VEH_ID`),
  KEY `fk_GC_VEHICULO_GC_MODELO1_idx` (`GC_MODELO_MOD_ID`),
  KEY `fk_GC_VEHICULO_GC_VENTA1_idx` (`GC_VENTA_VEN_ID`),
  CONSTRAINT `fk_GC_VEHICULO_GC_MODELO1` FOREIGN KEY (`GC_MODELO_MOD_ID`) REFERENCES `gc_modelo` (`MOD_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_VEHICULO_GC_VENTA1` FOREIGN KEY (`GC_VENTA_VEN_ID`) REFERENCES `gc_venta` (`VEN_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_vehiculo`
--

LOCK TABLES `gc_vehiculo` WRITE;
/*!40000 ALTER TABLE `gc_vehiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_vehiculo_has_gc_caracteristica`
--

DROP TABLE IF EXISTS `gc_vehiculo_has_gc_caracteristica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_vehiculo_has_gc_caracteristica` (
  `GC_VEHICULO_VEH_ID` int(10) NOT NULL,
  `GC_CARACTERISTICA_CAR_ID` int(10) NOT NULL,
  PRIMARY KEY (`GC_VEHICULO_VEH_ID`,`GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_VEHICULO_has_GC_CARACTERISTICA_GC_CARACTERISTICA1_idx` (`GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_VEHICULO_has_GC_CARACTERISTICA_GC_VEHICULO1_idx` (`GC_VEHICULO_VEH_ID`),
  CONSTRAINT `fk_GC_VEHICULO_has_GC_CARACTERISTICA_GC_CARACTERISTICA1` FOREIGN KEY (`GC_CARACTERISTICA_CAR_ID`) REFERENCES `gc_caracteristica` (`CAR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_VEHICULO_has_GC_CARACTERISTICA_GC_VEHICULO1` FOREIGN KEY (`GC_VEHICULO_VEH_ID`) REFERENCES `gc_vehiculo` (`VEH_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_vehiculo_has_gc_caracteristica`
--

LOCK TABLES `gc_vehiculo_has_gc_caracteristica` WRITE;
/*!40000 ALTER TABLE `gc_vehiculo_has_gc_caracteristica` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_vehiculo_has_gc_caracteristica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_vehiculo_has_gc_modelo_has_gc_caracteristica`
--

DROP TABLE IF EXISTS `gc_vehiculo_has_gc_modelo_has_gc_caracteristica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_vehiculo_has_gc_modelo_has_gc_caracteristica` (
  `GC_VEHICULO_VEH_ID` int(10) NOT NULL,
  `GC_MODELO_has_GC_CARACTERISTICA_GC_MODELO_MOD_ID` int(11) NOT NULL,
  `GC_MODELO_has_GC_CARACTERISTICA_GC_CARACTERISTICA_CAR_ID` int(10) NOT NULL,
  PRIMARY KEY (`GC_VEHICULO_VEH_ID`,`GC_MODELO_has_GC_CARACTERISTICA_GC_MODELO_MOD_ID`,`GC_MODELO_has_GC_CARACTERISTICA_GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_VEHICULO_has_GC_MODELO_has_GC_CARACTERISTICA_GC_MODEL_idx` (`GC_MODELO_has_GC_CARACTERISTICA_GC_MODELO_MOD_ID`,`GC_MODELO_has_GC_CARACTERISTICA_GC_CARACTERISTICA_CAR_ID`),
  KEY `fk_GC_VEHICULO_has_GC_MODELO_has_GC_CARACTERISTICA_GC_VEHIC_idx` (`GC_VEHICULO_VEH_ID`),
  CONSTRAINT `fk_GC_VEHICULO_has_GC_MODELO_has_GC_CARACTERISTICA_GC_MODELO_1` FOREIGN KEY (`GC_MODELO_has_GC_CARACTERISTICA_GC_MODELO_MOD_ID`, `GC_MODELO_has_GC_CARACTERISTICA_GC_CARACTERISTICA_CAR_ID`) REFERENCES `gc_modelo_has_gc_caracteristica` (`GC_MODELO_MOD_ID`, `GC_CARACTERISTICA_CAR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_VEHICULO_has_GC_MODELO_has_GC_CARACTERISTICA_GC_VEHICULO1` FOREIGN KEY (`GC_VEHICULO_VEH_ID`) REFERENCES `gc_vehiculo` (`VEH_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_vehiculo_has_gc_modelo_has_gc_caracteristica`
--

LOCK TABLES `gc_vehiculo_has_gc_modelo_has_gc_caracteristica` WRITE;
/*!40000 ALTER TABLE `gc_vehiculo_has_gc_modelo_has_gc_caracteristica` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_vehiculo_has_gc_modelo_has_gc_caracteristica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_venta`
--

DROP TABLE IF EXISTS `gc_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_venta` (
  `VEN_ID` int(10) NOT NULL,
  `VEN_VEHID` int(10) NOT NULL,
  `VEN_CLIID` int(10) NOT NULL,
  `VEN_FECHA` date NOT NULL,
  `VEN_EMPID` int(30) NOT NULL,
  `VEN_FACID` int(10) NOT NULL,
  `GC_CLIENTE_CLI_ID` int(10) NOT NULL,
  PRIMARY KEY (`VEN_ID`),
  KEY `fk_GC_VENTA_GC_CLIENTE1_idx` (`GC_CLIENTE_CLI_ID`),
  CONSTRAINT `fk_GC_VENTA_GC_CLIENTE1` FOREIGN KEY (`GC_CLIENTE_CLI_ID`) REFERENCES `gc_cliente` (`CLI_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_venta`
--

LOCK TABLES `gc_venta` WRITE;
/*!40000 ALTER TABLE `gc_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22 15:55:49
