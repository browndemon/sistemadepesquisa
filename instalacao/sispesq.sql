CREATE DATABASE  IF NOT EXISTS `sispesq` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sispesq`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sispesq
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `tb_atributos`
--

DROP TABLE IF EXISTS `tb_atributos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_atributos` (
  `atributo_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_hardware` char(2) DEFAULT NULL,
  `nome_atributo` varchar(255) NOT NULL,
  `menor_pontuacao` int(11) NOT NULL,
  `maior_pontuacao` int(11) NOT NULL,
  `ordem_apresentacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`atributo_id`),
  KEY `atributos_tipo_hardware_idx` (`tipo_hardware`),
  CONSTRAINT `atributos_tipo_hardware` FOREIGN KEY (`tipo_hardware`) REFERENCES `tb_tipo_hardware` (`tipo_hardware`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_atributos`
--

LOCK TABLES `tb_atributos` WRITE;
/*!40000 ALTER TABLE `tb_atributos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_atributos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_atributos_modelos`
--

DROP TABLE IF EXISTS `tb_atributos_modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_atributos_modelos` (
  `atributo_modelo_id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_id` int(11) NOT NULL,
  `atributo_id` int(11) NOT NULL,
  `valor_atributo_id` int(11) NOT NULL,
  PRIMARY KEY (`atributo_modelo_id`),
  KEY `atributos_modelos_modelo_id_idx` (`modelo_id`),
  KEY `atributos_modelos_atributo_id_idx` (`atributo_id`),
  KEY `atributos_modelos_valor_atributo_id_idx` (`valor_atributo_id`),
  CONSTRAINT `atributos_modelos_atributo_id` FOREIGN KEY (`atributo_id`) REFERENCES `tb_atributos` (`atributo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `atributos_modelos_modelo_id` FOREIGN KEY (`modelo_id`) REFERENCES `tb_modelos` (`modelo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `atributos_modelos_valor_atributo_id` FOREIGN KEY (`valor_atributo_id`) REFERENCES `tb_valores_atributos` (`valor_atributo_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_atributos_modelos`
--

LOCK TABLES `tb_atributos_modelos` WRITE;
/*!40000 ALTER TABLE `tb_atributos_modelos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_atributos_modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fabricantes`
--

DROP TABLE IF EXISTS `tb_fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fabricantes` (
  `fabricante_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fabricante` varchar(255) DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`fabricante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fabricantes`
--

LOCK TABLES `tb_fabricantes` WRITE;
/*!40000 ALTER TABLE `tb_fabricantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_grupos_usuarios`
--

DROP TABLE IF EXISTS `tb_grupos_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_grupos_usuarios` (
  `grupo_usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_grupo_usuario` varchar(45) NOT NULL,
  `ind_priv_admin` tinyint(1) DEFAULT '0',
  `ind_priv_atualizar` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`grupo_usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_grupos_usuarios`
--

LOCK TABLES `tb_grupos_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_grupos_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_grupos_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_hardware`
--

DROP TABLE IF EXISTS `tb_hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_hardware` (
  `hardware_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_hardware` char(2) NOT NULL,
  `fabricante_id` int(11) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  `pontuacao` int(11) DEFAULT '0',
  `url_original` varchar(255) DEFAULT NULL,
  `preco` decimal(10,0) DEFAULT '0',
  `criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`hardware_id`),
  KEY `hardware_tipo_hardware_idx` (`tipo_hardware`),
  KEY `hardware_fabricante_id_idx` (`fabricante_id`),
  KEY `hardware_modelo_id_idx` (`fabricante_id`,`modelo_id`),
  CONSTRAINT `hardware_fabricante_id` FOREIGN KEY (`fabricante_id`) REFERENCES `tb_fabricantes` (`fabricante_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hardware_modelo_id` FOREIGN KEY (`fabricante_id`, `modelo_id`) REFERENCES `tb_modelos` (`fabricante_id`, `modelo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hardware_tipo_hardware` FOREIGN KEY (`tipo_hardware`) REFERENCES `tb_tipo_hardware` (`tipo_hardware`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_hardware`
--

LOCK TABLES `tb_hardware` WRITE;
/*!40000 ALTER TABLE `tb_hardware` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_imagens_hardware`
--

DROP TABLE IF EXISTS `tb_imagens_hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_imagens_hardware` (
  `imagem_hardware_id` int(11) NOT NULL AUTO_INCREMENT,
  `hardware_id` int(11) NOT NULL,
  `arquivo_imagem` varchar(255) NOT NULL,
  PRIMARY KEY (`imagem_hardware_id`),
  KEY `imagem_hardware_hardware_id_idx` (`hardware_id`),
  CONSTRAINT `imagem_hardware_hardware_id` FOREIGN KEY (`hardware_id`) REFERENCES `tb_hardware` (`hardware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_imagens_hardware`
--

LOCK TABLES `tb_imagens_hardware` WRITE;
/*!40000 ALTER TABLE `tb_imagens_hardware` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_imagens_hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_modelos`
--

DROP TABLE IF EXISTS `tb_modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_modelos` (
  `modelo_id` int(11) NOT NULL AUTO_INCREMENT,
  `fabricante_id` int(11) NOT NULL,
  `tipo_hardware` char(2) NOT NULL,
  `titulo_modelo` varchar(45) NOT NULL,
  `descricao_modelo` varchar(255) NOT NULL,
  `pontuacao` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`modelo_id`),
  UNIQUE KEY `modelo_idx` (`modelo_id`,`fabricante_id`),
  KEY `modelos_fabricante_id_idx` (`fabricante_id`),
  KEY `modelos_tipo_hardware_idx` (`tipo_hardware`),
  CONSTRAINT `modelos_fabricante_id` FOREIGN KEY (`fabricante_id`) REFERENCES `tb_fabricantes` (`fabricante_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `modelos_tipo_hardware` FOREIGN KEY (`tipo_hardware`) REFERENCES `tb_tipo_hardware` (`tipo_hardware`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_modelos`
--

LOCK TABLES `tb_modelos` WRITE;
/*!40000 ALTER TABLE `tb_modelos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoas`
--

DROP TABLE IF EXISTS `tb_pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pessoas` (
  `pessoa_id` int(11) NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(45) DEFAULT NULL,
  `ultimo_nome` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`pessoa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoas`
--

LOCK TABLES `tb_pessoas` WRITE;
/*!40000 ALTER TABLE `tb_pessoas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tentativas_login`
--

DROP TABLE IF EXISTS `tb_tentativas_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tentativas_login` (
  `tentativa_id` int(11) NOT NULL AUTO_INCREMENT,
  `endereco_ip` varchar(45) NOT NULL,
  `data_hora_tentativa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tentativa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tentativas_login`
--

LOCK TABLES `tb_tentativas_login` WRITE;
/*!40000 ALTER TABLE `tb_tentativas_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tentativas_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_hardware`
--

DROP TABLE IF EXISTS `tb_tipo_hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipo_hardware` (
  `tipo_hardware` char(2) NOT NULL,
  `titulo_hardware` varchar(45) NOT NULL,
  `descricao_hardware` varchar(255) NOT NULL,
  PRIMARY KEY (`tipo_hardware`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_hardware`
--

LOCK TABLES `tb_tipo_hardware` WRITE;
/*!40000 ALTER TABLE `tb_tipo_hardware` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tipo_hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tokens`
--

DROP TABLE IF EXISTS `tb_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tokens` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `validade` timestamp NOT NULL,
  PRIMARY KEY (`token_id`),
  KEY `tokens_usuario_id_idx` (`usuario_id`),
  CONSTRAINT `tokens_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tokens`
--

LOCK TABLES `tb_tokens` WRITE;
/*!40000 ALTER TABLE `tb_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuarios` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `pessoa_id` int(11) NOT NULL,
  `grupo_usuario_id` int(11) DEFAULT NULL,
  `ind_validado` tinyint(1) NOT NULL DEFAULT '0',
  `ind_bloqueado` tinyint(1) NOT NULL DEFAULT '0',
  `ultimo_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `usuarios_pessoa_id_idx` (`pessoa_id`),
  KEY `usuarios_grupo_usuario_id_idx` (`grupo_usuario_id`),
  CONSTRAINT `usuarios_grupo_usuario_id` FOREIGN KEY (`grupo_usuario_id`) REFERENCES `tb_grupos_usuarios` (`grupo_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuarios_pessoa_id` FOREIGN KEY (`pessoa_id`) REFERENCES `tb_pessoas` (`pessoa_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_valores_atributos`
--

DROP TABLE IF EXISTS `tb_valores_atributos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_valores_atributos` (
  `valor_atributo_id` int(11) NOT NULL AUTO_INCREMENT,
  `atributo_id` int(11) NOT NULL,
  `valor_atributo` varchar(45) NOT NULL,
  `pontuacao` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`valor_atributo_id`),
  KEY `valores_atributos_atributo_id_idx` (`atributo_id`),
  CONSTRAINT `valores_atributos_atributo_id` FOREIGN KEY (`atributo_id`) REFERENCES `tb_atributos` (`atributo_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_valores_atributos`
--

LOCK TABLES `tb_valores_atributos` WRITE;
/*!40000 ALTER TABLE `tb_valores_atributos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_valores_atributos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-22 20:53:50
