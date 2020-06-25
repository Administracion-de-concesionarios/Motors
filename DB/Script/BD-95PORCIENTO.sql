CREATE DATABASE  IF NOT EXISTS `concesionarios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `concesionarios`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: concesionarios
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
  `CONF_MOTOR` varchar(35) NOT NULL,
  `CONF_LLANTAS` varchar(20) NOT NULL,
  `CONF_ESPEJOS` varchar(20) NOT NULL,
  `CONF_CHASIS` varchar(35) DEFAULT NULL,
  `CONF_CILINDRAJE` varchar(50) DEFAULT NULL,
  `CONF_RINES` varchar(30) DEFAULT NULL,
  `CONF_INTERIOR` varchar(10) DEFAULT NULL,
  `GC_VEHICULO_VEH_ID` int(10) NOT NULL,
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
  KEY `FK_GC_DESCUENTOS` (`FAC_ID`),
  CONSTRAINT `FK_GC_DESCUENTOS` FOREIGN KEY (`FAC_ID`) REFERENCES `gc_factura` (`FAC_ID`)
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
-- Table structure for table `gc_lineafactura`
--

DROP TABLE IF EXISTS `gc_lineafactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc_lineafactura` (
  `LIN_ID` int(10) NOT NULL,
  `LIN_FACID` int(10) NOT NULL,
  `LIN_CONCEPTO` varchar(200) NOT NULL,
  `LIN_COSTE` int(10) NOT NULL,
  `GC_VENTA_VEN_ID` int(10) NOT NULL,
  PRIMARY KEY (`LIN_ID`),
  KEY `fk_GC_LINEAFACTURA_GC_VENTA1_idx` (`GC_VENTA_VEN_ID`),
  CONSTRAINT `fk_GC_LINEAFACTURA_GC_VENTA1` FOREIGN KEY (`GC_VENTA_VEN_ID`) REFERENCES `gc_venta` (`VEN_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_lineafactura`
--

LOCK TABLES `gc_lineafactura` WRITE;
/*!40000 ALTER TABLE `gc_lineafactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_lineafactura` ENABLE KEYS */;
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
  `TAR_ESTADO` tinyint(1) DEFAULT NULL,
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
  `VEN_EMPID` varchar(30) NOT NULL,
  `VEN_NOMBRE_PRODUCTO` varchar(80) NOT NULL,
  `VEN_MODELO_PRODUCTO` varchar(45) DEFAULT NULL,
  `VEN_FECHA` date NOT NULL,
  `VEN_GARANTIA` varchar(20) NOT NULL,
  `VEN_DESCUENTOS` double NOT NULL,
  `VEN_VALOR_VENTA` double NOT NULL,
  `GC_CLI_ID` int(10) NOT NULL,
  PRIMARY KEY (`VEN_ID`),
  KEY `fk_GC_VENTA_GC_CLIENTE1_idx` (`GC_CLI_ID`),
  KEY `fk_GC_VEHICULO_idx` (`VEN_VEHID`),
  KEY `fk_GC_EMPLEADO_idx` (`VEN_EMPID`),
  CONSTRAINT `fk_GC_EMPLEADO` FOREIGN KEY (`VEN_EMPID`) REFERENCES `gc_empleado` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_VEHICULO` FOREIGN KEY (`VEN_VEHID`) REFERENCES `gc_vehiculo` (`VEH_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GC_VENTA_GC_CLIENTE1` FOREIGN KEY (`GC_CLI_ID`) REFERENCES `gc_cliente` (`CLI_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_venta`
--

LOCK TABLES `gc_venta` WRITE;
/*!40000 ALTER TABLE `gc_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'concesionarios'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZARCONCESIONARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACTUALIZARCONCESIONARIO`(
IN CON_ID_ INT(10),
IN CON_NOMBRE_ VARCHAR(80),
IN CON_DIRECCION_ VARCHAR(100),
IN CON_TELEFONO_ INT(15)
)
BEGIN
	UPDATE concesionarios.GC_CONCESIONARIO 
    SET CON_ID=CON_ID_, CON_NOMBRE=CON_NOMBRE_, CON_DIRECCION=CON_DIRECCION_, CON_TELEFONO=CON_TELEFONO_
    WHERE CON_NOMBRE=CON_NOMBRE_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARCLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARCLIENTE`(
  CLI_ID_ INT(10),
  CLI_NOMBRE_ VARCHAR(80),
  CLI_APELLIDOS_ VARCHAR(80),
  CLI_TELEFONO_ INT(15),
  CLI_EMAIL_ VARCHAR(45),
  CLI_FNAC_ DATE,
  CLI_PROFESION_ VARCHAR(45)
)
BEGIN
	INSERT INTO concesionario.GC_CLIENTE(CLI_ID,CLI_NOMBRE,CLI_APELLIDOS,CLI_TELEFONO,CLI_EMAIL,CLI_FNAC,CLI_PROFESION)
										 VALUES(CLI_ID_,CLI_NOMBRE_,CLI_APELLIDOS_,CLI_TELEFONO_,CLI_EMAIL_,CLI_FNAC_,CLI_PROFESION_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARCONFIGURACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARCONFIGURACION`(
  CONF_VEHID_ INT(10),
  CONF_CARID_ INT(10),
  CONF_MOTOR_ VARCHAR(35),
  CONF_LLANTAS_ VARCHAR(20),
  CONF_ESPEJOS_ VARCHAR(20),
  CONF_CHASIS_ VARCHAR(35),
  CONF_CILINDRAJE_ VARCHAR(50),
  CONF_RINES_ VARCHAR(30),
  CONF_INTERIOR_ VARCHAR(10)
)
BEGIN
INSERT INTO concesionarios.GC_CONFIGURACION (CONF_VEHID, CONF_CARID, CONF_MOTOR, CONF_LLANTAS, CONF_ESPEJOS, CONF_CHASIS, CONF_CILINDRAJE, CONF_RINES, CONF_INTERIOR) VALUES (CONF_VEHID_, CONF_CARID_, CONF_MOTOR_, CONF_LLANTAS_, CONF_ESPEJOS_, CONF_CHASIS_, CONF_CILINDRAJE_, CONF_RINES_, CONF_INTERIOR_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARDESCUENTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARDESCUENTO`(
  DES_ID_ INT(10),
  DES_VALOR_ DOUBLE,
  DES_NOMBRE_ VARCHAR(100),
  DES_FACTURAID_ INT(10)
)
BEGIN
INSERT INTO concesionarios.GC_DESCUENTOS (DES_ID, DES_VALOR, DES_NOMBRE, DES_FACTURAID) VALUES (DES_ID_, DES_VALOR_, DES_NOMBRE_, DES_FACTURAID_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARITEM` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARITEM`(
  CAT_ID_ INT(10),
  CAT_CARID_ INT(10),
  CAT_MODID_ INT(10),
  CAT_EXTRA_ VARCHAR(200),
  CAT_PVP_ DECIMAL(20,3)
)
BEGIN
INSERT INTO concesionarios.GC_CATALOGO (CAT_ID, CAT_CARID, CAT_MODID, CAT_EXTRA, CAT_PVP) VALUES (CAT_ID_, CAT_CARID_, CAT_MODID_, CAT_EXTRA,CAT_PVP_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARMARCA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARMARCA`(
  MAR_ID_ INT(10),
  MAR_NOMBRE_ VARCHAR(45)
)
BEGIN
INSERT INTO concesionarios.GC_MARCA (MAR_ID, MAR_NOMBRE) VALUES (MAR_ID_, MAR_NOMBRE_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARMODELO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARMODELO`(
  MOD_ID_ INT(11),
  MOD_NOMBRE_ VARCHAR(80),
  MOD_MARID_ INT(10)
)
BEGIN
INSERT INTO concesionarios.GC_MODELO (MOD_ID, MOD_NOMBRE, MOD_MARID) VALUES (MOD_ID_, MOD_NOMBRE_, MOD_MARID_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARREPARACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARREPARACION`(
  REP_ID_ INT(10),
  REP_FECHAINICIO_ DATE,
  REP_FECHAFIN_ DATE,
  REP_CLIENTE_ VARCHAR(80),
  REP_TELEFONO_ INT(15),
  REP_FACID_ INT(10),
  REP_REVISION_ VARCHAR(200),
  REP_VEIHID_ INT(10)
)
BEGIN
INSERT INTO concesionarios.GC_REPARACIONES (REP_ID, REP_FECHAINICIO, REP_FECHAFIN, REP_CLIENTE, REP_TELEFONO, REP_FACID, REP_REVISION, REP_VEIHID) VALUES (REP_ID_, REP_FECHAINICIO_, REP_FECHAFIN_, REP_CLIENTE_, REP_TELEFONO_, REP_FACID_, REP_REVISION_, REP_VEIHID_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARTAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARTAREA`(
  TAR_ID_ INT(10),
  TAR_CONCEPTO_ VARCHAR(200),
  TAR_HORAS_ INT(10),
  TAR_FACTURABLE_ VARCHAR(45),
  TAR_ESTADO_ BOOLEAN
)
BEGIN
INSERT INTO concesionarios.GC_TAREA(TAR_ID,TAR_CONCEPTO,TAR_HORAS,TAR_FACTURABLE,TAR_ESTADO)
									VALUES(TAR_ID_,TAR_CONCEPTO_,TAR_HORAS_,TAR_FACTURABLE_,TAR_ESTADO_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARUSUARIO`(
 USR_ID_ VARCHAR(80),
 USR_PASS_ VARCHAR(45),
 USR_PERMISOS_ VARCHAR(3)
)
BEGIN
	INSERT INTO concesionarios.GC_USUARIO(USR_ID,USR_PASS,USR_PERMISOS) VALUES (USR_ID_,USR_PASS_,USR_PERMISOS_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARVEHICULO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARVEHICULO`(
	VEH_ID_ INT(10),
	VEH_BASTIDOR_ VARCHAR(80),
    VEH_MATRICULA_ VARCHAR(15),
    VEH_COLOR_ VARCHAR(45),
    VEH_VENDIDO_ VARCHAR(30)
)
BEGIN
	INSERT INTO concesionarios.GC_VEHICULO(VEH_ID,VEH_BASTIDOR,VEH_MATRICULA,VEH_COLOR,VEH_VENDIDO)
										   VALUES (VEH_ID_,VEH_BASTIDOR_,VEH_MATRICULA_,VEH_COLOR_,VEH_VENDIDO_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AGREGARVENTAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGARVENTAS`(
	VEN_ID_ INT(10),
	VEN_NOMBRE_PRODUCTO_ VARCHAR(80),
    VEN_MODELO_PRODUCTO_ VARCHAR(45),
    VEN_FECHA_ DATE,
    VEN_GARANTIA_ VARCHAR(20),
    VEN_DESCUENTOS_ DOUBLE,
    VEN_VALOR_VENTA_ DOUBLE
)
BEGIN
	INSERT INTO concesionarios.GC_VENTA(VEN_ID,VEN_NOMBRE_PRODUCTO,VEN_MODELO_PRODUCTO,VEN_FECHA,VEN_GARANTIA,VEN_DESCUENTOS,VEN_VALOR_VENTA)
										VALUES(VEN_ID_,VEN_NOMBRE_PRODUCTO_,VEN_MODELO_PRODUCTO_,VEN_FECHA_,VEN_GARANTIA_,VEN_DESCUENTOS_,VEN_VALOR_VENTA_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BORRARCONCESIONARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BORRARCONCESIONARIO`(
IN CON_ID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_CONCESIONARIO WHERE CON_ID=CON_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BORRARUSER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BORRARUSER`(
IN USR_ID_ VARCHAR(80)
)
BEGIN 
DELETE FROM concesionarios.GC_USUARIO WHERE USR_ID = USR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BUSCARCONCESIONARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BUSCARCONCESIONARIO`(
)
BEGIN
SELECT * FROM concesionarios.GC_CONCESIONARIO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BUSCAREMPLEADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BUSCAREMPLEADO`(
	EMP_NOMBRE_ VARCHAR(80)
)
BEGIN 

SELECT * FROM concesionarios.GC_EMPLEADO WHERE EMP_NOMBRE = EMP_NOMBRE_;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BUSCARUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BUSCARUSUARIO`(
IN BUSCAR NVARCHAR(30)
)
BEGIN
SELECT * FROM concesionarios.GC_USUARIO
WHERE USR_ID LIKE @BUSCAR;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMIAREMPLEADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMIAREMPLEADO`(
	EMP_ID_ VARCHAR(30)
)
BEGIN
	DELETE FROM concesionarios.GC_EMPLEADO WHERE EMP_ID=EMP_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARCLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARCLIENTE`(
	CLI_ID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_CLIENTE WHERE CLI_ID = CLI_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARCONFIGURACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARCONFIGURACION`(
  CONF_VEHID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_CONFIGURACION WHERE CONF_VEHID = CONF_VEHID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARDESCUENTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARDESCUENTO`(
  DES_ID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_DESCUENTOS WHERE DES_ID = DES_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARITEM` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARITEM`(
  CAT_ID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_CATALOGO WHERE CAT_ID = CAT_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARMARCA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARMARCA`(
  MAR_ID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_MARCA WHERE MAR_ID = MAR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARMODELO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARMODELO`(
  MOD_ID_ INT(11)
)
BEGIN
DELETE FROM concesionarios.GC_MODELO WHERE MOD_ID = MOD_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARREPARACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARREPARACION`(
  REP_ID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_REPARACIONES WHERE REP_ID = REP_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARTAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARTAREA`(
	TAR_ID_ INT(10)
)
BEGIN
DELETE FROM concesionarios.GC_TAREA WHERE TAR_ID = TAR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARUSUARIO`(
	USR_ID_ VARCHAR(80)
)
BEGIN
	DELETE FROM concesionarios.GC_USUARIO WHERE USR_ID = USR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINARVEHICULO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINARVEHICULO`(
	VEH_ID_ INT(10)
)
BEGIN
	DELETE FROM concesionarios.GC_VEHICULO WHERE VEH_ID = VEH_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERTARCARACTERISTICAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERTARCARACTERISTICAS`(
IN CAR_ID_ INT(10),
IN  CAR_DESCRIPCION_ VARCHAR(100),
IN  CAR_MAXVEL_ VARCHAR(45),
IN  CAR_MAXTORQUE_ VARCHAR(45),
IN  CAR_TIPOCOMBUSTIBLE_ VARCHAR(35),
IN  CAR_ACELERACION_ VARCHAR(45),
IN  CAR_KILOMETRAJE_ VARCHAR(25),
IN  CAR_SUSPENSION_ VARCHAR(100),
IN  CAR_RADIADOR_ VARCHAR(500)
)
BEGIN
INSERT INTO concesionarios.GC_CARACTERISTICA(CAR_ID,CAR_DESCRIPCION,CAR_MAXVEL,CAR_MAXTORQUE,CAR_TIPOCOMBUSTIBLE,CAR_ACELERACION,CAR_KILOMETRAJE,CAR_SUSPENCION,CAR_RADIADOR)
  VALUES(CAR_ID_,CAR_DESCRIPCION_,CAR_MAXVEL_,CAR_MAXTORQUE_,CAR_TIPOCOMBUSTIBLE_,CAR_ACELERACION_,CAR_KILOMETRAJE_,CAR_SUSPENCION_,CAR_RADIADOR_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERTARCONCESIONARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERTARCONCESIONARIO`(
IN CON_ID_ INT(10),
  CON_NOMBRE_ VARCHAR(80),
  CON_DIRECCION_ VARCHAR(100),
  CON_TELEFONO_ INT(15)
)
BEGIN
INSERT INTO concesionarios.GC_CONCESIONARIO(CON_ID,CON_NOMBRE,CON_DIRECCION,CON_TELEFONO)
  VALUES(CON_ID_,CON_NOMBRE_,CON_DIRECCION_,CON_TELEFONO_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERTAREMPLEADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERTAREMPLEADO`(
	EMP_ID_ VARCHAR(30),
    EMP_NOMBRE_ VARCHAR(80),
    EMP_APELLIDOS_ VARCHAR(45),
    EMP_DIRECCION_ VARCHAR(100),
    EMP_TELEFONO_ VARCHAR(15),
    EMP_DNI_ VARCHAR(45),
    EMP_SUELDO_ DOUBLE,
    EMP_JEFE_ VARCHAR(100),
    EMP_FECHAALTA_ DATE,
    EMP_FECHABAJA_ DATE,
    EMP_TIPOEMP_ VARCHAR(40)
)
BEGIN

INSERT INTO concesionarios.GC_EMPLEADO (EMP_ID,EMP_NOMBRE,EMP_APELLIDOS,EMP_DIRECCION,EMP_TELEFONO,EMP_DNI,EMP_SUELDO,EMP_JEFE,
										EMP_FECHAALTA,EMP_FECHABAJA,EMP_TIPOEMP) 
                                        VALUES(EMP_ID_,EMP_NOMBRE_,EMP_APELLIDOS_,EMP_DIRECCION_,EMP_TELEFONO_,EMP_DNI_,EMP_SUELDO_,EMP_JEFE_,
										EMP_FECHAALTA_,EMP_FECHABAJA_,EMP_TIPOEMP_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERTARUSER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERTARUSER`(
IN USR_ID VARCHAR(80),
IN USR_PASS VARCHAR(45),
IN USR_PERMISOS VARCHAR(3)
)
BEGIN 
INSERT INTO concesionarios.GC_USUARIO(USR_ID,USR_PASS,USR_PERMISOS) 
	VALUES(USR_ID,USR_PASS,USR_PERMISOS);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARCLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARCLIENTE`(
  CLI_ID_ INT(10),
  CLI_NOMBRE_ VARCHAR(80),
  CLI_APELLIDOS_ VARCHAR(80),
  CLI_TELEFONO_ INT(15),
  CLI_EMAIL_ VARCHAR(45),
  CLI_FNAC_ DATE,
  CLI_PROFESION_ VARCHAR(45)
)
BEGIN
UPDATE concesionarios.GC_CLIENTE SET CLI_ID = CLI_ID_, CLI_NOMBRE = CLI_NOMBRE_, CLI_APELLIDOS = CLI_APELLIDOS_, CLI_TELEFONO = CLI_TELEFONO_, CLI_EMAIL = CLI_EMAIL_, CLI_FNAC = CLI_FNAC_, CLI_PROFESION = CLI_PROFESION_ 
								 WHERE CLI_ID = CLI_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARCONFIGURACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARCONFIGURACION`(
  CONF_VEHID_ INT(10),
  CONF_CARID_ INT(10),
  CONF_MOTOR_ VARCHAR(35),
  CONF_LLANTAS_ VARCHAR(20),
  CONF_ESPEJOS_ VARCHAR(20),
  CONF_CHASIS_ VARCHAR(35),
  CONF_CILINDRAJE_ VARCHAR(50),
  CONF_RINES_ VARCHAR(30),
  CONF_INTERIOR_ VARCHAR(10)
)
BEGIN
UPDATE concesionarios.GC_CONFIGURACION SET CONF_VEHID = CONF_VEHID_, CONF_CARID = CONF_CARID_, CONF_MOTOR = CONF_MOTOR_, CONF_LLANTAS = CONF_LLANTAS_, CONF_ESPEJOS = CONF_ESPEJOS_, CONF_CHASIS = CONF_CHASIS_, CONF_CILINDRAJE = CONF_CILINDRAJE_, CONF_RINES = CONF_RINES_, CONF_INTERIOR = CONF_INTERIOR_ WHERE CONF_VEHID = CONF_VEHID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICAREMPLEADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICAREMPLEADO`(
	EMP_ID_ VARCHAR(30),
    EMP_NOMBRE_ VARCHAR(80),
    EMP_APELLIDOS_ VARCHAR(45),
    EMP_DIRECCION_ VARCHAR(100),
    EMP_TELEFONO_ VARCHAR(15),
    EMP_DNI_ VARCHAR(45),
    EMP_SUELDO_ DOUBLE,
    EMP_JEFE_ VARCHAR(100),
    EMP_FECHAALTA_ DATE,
    EMP_FECHABAJA_ DATE,
    EMP_TIPOEMP_ VARCHAR(40)
)
BEGIN
UPDATE concesionarios.GC_EMPLEADO
 SET EMP_ID=EMP_ID_, EMP_NOMBRE=EMP_NOMBRE_, EMP_APELLIDOS=EMP_APELLIDOS_, EMP_DIRECCION=EMP_DIRECCION_, EMP_TELEFONO=EMP_TELEFONO_, EMP_DNI=EMP_DNI,
	 EMP_SUELDO=EMP_SUELDO_, EMP_JEFE=EMP_JEFE_, EMP_FECHAALTA=EMP_FECHAALTA_, EMP_FECHABAJA=EMP_FECHABAJA_, EMP_TIPOEMP=EMP_TIPOEMP_
     WHERE EMP_ID=EMP_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARESTADOTAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARESTADOTAREA`(
	TAR_ESTADO_ BOOLEAN
)
BEGIN
	UPDATE concesionarios.GC_TAREA SET TAR_ESTADO = TAR_ESTADO_ WHERE TAR_ID = TAR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARITEM` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARITEM`(
  CAT_ID_ INT(10),
  CAT_CARID_ INT(10),
  CAT_MODID_ INT(10),
  CAT_EXTRA_ VARCHAR(200),
  CAT_PVP_ DECIMAL(20,3)
)
BEGIN
UPDATE concesionarios.GC_CATALOGO SET CAT_ID = CAT_ID_, CAT_CARID = CAT_CARID_, CAT_MODID = CAT_MODID_, CAT_EXTRA = CAT_EXTRA_, CAT_PVP = CAT_PVP_ WHERE CAT_ID = CAT_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARMARCA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARMARCA`(
  MAR_ID_ INT(10),
  MAR_NOMBRE_ VARCHAR(45)
)
BEGIN
UPDATE concesionarios.GC_MARCA SET MAR_ID = MAR_ID_, MAR_NOMBRE = MAR_NOMBRE_ WHERE MAR_ID = MAR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARMODELO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARMODELO`(
  MOD_ID_ INT(11),
  MOD_NOMBRE_ VARCHAR(80),
  MOD_MARID_ INT(10)
)
BEGIN
UPDATE concesionarios.GC_MODELO SET MOD_ID = MOD_ID_, MOD_NOMBRE = MOD_NOMBRE_, MOD_MARID = MOD_MARID_ WHERE MOD_ID = MOD_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARREPARACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARREPARACION`(
  REP_ID_ INT(10),
  REP_FECHAINICIO_ DATE,
  REP_FECHAFIN_ DATE,
  REP_CLIENTE_ VARCHAR(80),
  REP_TELEFONO_ INT(15),
  REP_FACID_ INT(10),
  REP_REVISION_ VARCHAR(200),
  REP_VEIHID_ INT(10)
)
BEGIN
UPDATE concesionarios.GC_REPARACIONES SET REP_ID = REP_ID_, REP_FECHAINICIO = REP_FECHAINICIO_, REP_FECHAFIN = REP_FECHAFIN_, REP_CLIENTE = REP_CLIENTE_, REP_TELEFONO = REP_TELEFONO_, REP_FACID = REP_FACID_, REP_REVISION = REP_REVISION_, REP_VEIHID = REP_VEIHID_ WHERE REP_ID = REP_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARTAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARTAREA`(
  TAR_ID_ INT(10),
  TAR_CONCEPTO_ VARCHAR(200),
  TAR_HORAS_ INT(10),
  TAR_FACTURABLE_ VARCHAR(45),
  TAR_ESTADO_ BOOLEAN
)
BEGIN
	UPDATE concesionarios.GC_TAREA SET TAR_ID = TAR_ID_, TAR_CONCEPTO = TAR_CONCEPTO_, TAR_HORAS = TAR_HORAS_, TAR_FACTURABLE = TAR_FACTURABLE_, TAR_ESTADO = TAR_ESTADO_ WHERE TAR_ID = TAR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARUSER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARUSER`(
	IN USR_ID_ VARCHAR(80),
	IN USR_PASS_ VARCHAR(45),
	IN USR_PERMISOS_ VARCHAR(3)
)
BEGIN
UPDATE concesionarios.GC_USUARIO
SET USR_ID=USR_ID_, USR_PASS=USR_PASS_, USR_PERMISOS=USR_PERMISOS_ WHERE USR_ID=USR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARUSUARIO`(
	USR_ID_ VARCHAR(80),
	USR_PASS_ VARCHAR(45),
	USR_PERMISOS_ VARCHAR(3)
)
BEGIN
	UPDATE concesionarios.GC_USUARIO SET USR_ID = USR_ID_, USR_PASS = USR_PASS_, USR_PERMISOS = USR_PERMISOS_ WHERE USR_ID = USR_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARVEHICULO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARVEHICULO`(
	VEH_ID_ INT(10),
	VEH_BASTIDOR_ VARCHAR(80),
    VEH_MATRICULA_ VARCHAR(15),
    VEH_COLOR_ VARCHAR(45),
    VEH_VENDIDO_ VARCHAR(30)
)
BEGIN
	UPDATE concesionarios.GC_VEHICULO SET VEH_ID = VEH_ID_, VEH_BASTIDOR = VEH_BASTIDOR_, VEH_MATRICULA = VEH_MATRICULA_, VEH_COLOR = VEH_COLOR_, VEH_VENDIDO = VEH_VENDIDO_ WHERE VEH_ID = VEH_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICARVENTAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICARVENTAS`(
	VEN_ID_ INT(10),
	VEN_NOMBRE_PRODUCTO_ VARCHAR(80),
    VEN_MODELO_PRODUCTO_ VARCHAR(45),
    VEN_FECHA_ DATE,
    VEN_GARANTIA_ VARCHAR(20),
    VEN_DESCUENTOS_ DOUBLE,
    VEN_VALOR_VENTA_ DOUBLE
)
BEGIN
	UPDATE concesionarios.GC_VENTA SET VEN_ID = VEN_ID_, VEN_NOMBRE_PRODUCTO = VEN_NOMBRE_PRODUCTO_, VEN_MODELO_PRODUCTO = VEN_MODELO_PRODUCTO_, VEN_FECHA = VEN_FECHA_, VEN_GARANTIA = VEN_GARANTIA_, VEN_DESCUENTOS = VEN_DESCUENTOS_, VEN_VALOR_VENTA = VEN_VALOR_VENTA_ 
								   WHERE VEN_ID = VEN_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICAR_DESCUENTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICAR_DESCUENTO`(
  DES_ID_ INT(10),
  DES_VALOR_ DOUBLE,
  DES_NOMBRE_ VARCHAR(100),
  DES_FACTURAID_ INT(10)
)
BEGIN
UPDATE concesionarios.GC_DESCUENTOS SET DES_ID = DES_ID_, DES_VALOR = DES_VALOR_, DES_NOMBRE = DES_NOMBRE_, DES_FACTURAID = DES_FACTURAID_ WHERE DES_ID = DES_ID_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25  0:21:05
