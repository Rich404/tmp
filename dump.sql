-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: declubmx_app_maintenance
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `declub_categories`
--

DROP TABLE IF EXISTS `declub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_categories` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `description_category` varchar(50) DEFAULT NULL,
  `url_image_category` text,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_categories`
--

LOCK TABLES `declub_categories` WRITE;
/*!40000 ALTER TABLE `declub_categories` DISABLE KEYS */;
INSERT INTO `declub_categories` VALUES (1,'Categorías',NULL),(3,'Escuelas','https://previews.123rf.com/images/cowpland/cowpland1411/cowpland141100190/33723217-Construcci-n-de-escuelas-icono-plana-moderna-con-larga-sombra-Foto-de-archivo.jpg'),(4,'Pizzerías','http://downloadicons.net/sites/default/files/pizza-icon-65951.png'),(5,'Refaccionarias','http://icon-icons.com/icons2/827/PNG/512/tools_icon-icons.com_66544.png'),(6,'Cafaterías','https://cdn.pixabay.com/photo/2014/04/03/09/59/cup-309508_960_720.png'),(7,'Farmacias','http://static.miweb.paginasamarillas.es/var/m_7/79/79e/4922/84880-Icono-remedio.png');
/*!40000 ALTER TABLE `declub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declub_client_payments`
--

DROP TABLE IF EXISTS `declub_client_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_client_payments` (
  `payment_id` varchar(10) NOT NULL DEFAULT '',
  `user_id` varchar(25) DEFAULT NULL,
  `id_shop` varchar(20) DEFAULT NULL,
  `payment_month` varchar(25) DEFAULT NULL,
  `pay_out` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `user_id` (`user_id`),
  KEY `id_shop` (`id_shop`),
  CONSTRAINT `declub_client_payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `declub_users` (`user_id`),
  CONSTRAINT `declub_client_payments_ibfk_2` FOREIGN KEY (`id_shop`) REFERENCES `declub_shops` (`id_shop`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_client_payments`
--

LOCK TABLES `declub_client_payments` WRITE;
/*!40000 ALTER TABLE `declub_client_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `declub_client_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declub_shops`
--

DROP TABLE IF EXISTS `declub_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_shops` (
  `id_shop` varchar(20) NOT NULL DEFAULT '',
  `shop_name` varchar(75) DEFAULT NULL,
  `shop_text` varchar(50) DEFAULT NULL,
  `shop_latitude` double DEFAULT NULL,
  `shop_longitude` double DEFAULT NULL,
  `shop_address` text,
  `shop_phone` int(11) DEFAULT NULL,
  `shop_email` varchar(100) DEFAULT NULL,
  `shop_webaddress` text,
  `shop_qualitification` float DEFAULT '0',
  `shop_url_image` text,
  `id_category` int(11) DEFAULT NULL,
  `isvisible` tinyint(1) DEFAULT NULL,
  `shop_registry` date DEFAULT NULL,
  `user_id` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_shop`),
  KEY `id_category` (`id_category`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `declub_shops_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `declub_categories` (`id_category`) ON DELETE CASCADE,
  CONSTRAINT `declub_shops_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `declub_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_shops`
--

LOCK TABLES `declub_shops` WRITE;
/*!40000 ALTER TABLE `declub_shops` DISABLE KEYS */;
INSERT INTO `declub_shops` VALUES ('DominosTIMESTAMP','DOMINOS MANANTIALES','Queso ... ',19.618949,-99.309462,'Av. Hidalgo 65, Hidalgo, 54434 Villa Nicolás Romero, Méx.',53656342,'info_contact@dominos.com.mx/KLKLdsf','www.dominos.com.mx',5,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyXfOkUXAgDvwcIbj1aUAzwIXlWCtQd4zxmHW5Z_EE6XUTF2m2',4,1,'2018-01-07','RiCa83'),('Pa184Ri39','Pizzeria Arts','Pizza artesanal a domicilio',19.522935,-99.2275,' Calle Convento de Acolman 15, Jardines de Santa Monica, 54050 Tlalnepantla, Méx.',3334324,'info@papajohnscdmx.com','https://www.papajohnscdmx.com/',3.23333,'https://raw.githubusercontent.com/Rich404/img/master/Pizza.jpg',4,1,'2018-01-25','RiCa83'),('Re184Ri38','Refacionaria CLF','Refacciones y autopartes ',19.522935,-99.2275,'Av. Adolfo López Mateos 58, Atizapan Centro, 52900 Cd López Mateos, Méx.',435435409,'infor@refaccionariacalifornia.com.mx','www.refaccionariacalifornia.com.mx',2.72222,'https://raw.githubusercontent.com/Rich404/img/master/california.jpg',5,1,'2018-01-25','RiCa83'),('SE182Ri15','Universidad Monte Alto','Universidad MA',19.539917,-99.211047,'Benito Juarezcentro, 54069 Tlalnepantla, Méx.',555656455,'info@uma.com.mx','www.uma.com.mx',3.875,'https://raw.githubusercontent.com/Rich404/img/master/uni.jpg',3,1,'2018-01-30','RiCa83');
/*!40000 ALTER TABLE `declub_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declub_shops_opinions`
--

DROP TABLE IF EXISTS `declub_shops_opinions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_shops_opinions` (
  `id_shop` varchar(20) DEFAULT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `user_opinion` text,
  `service` float DEFAULT NULL,
  `quality` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `final_qualification` float DEFAULT NULL,
  `opinion_date` date DEFAULT NULL,
  KEY `id_shop` (`id_shop`),
  CONSTRAINT `declub_shops_opinions_ibfk_1` FOREIGN KEY (`id_shop`) REFERENCES `declub_shops` (`id_shop`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_shops_opinions`
--

LOCK TABLES `declub_shops_opinions` WRITE;
/*!40000 ALTER TABLE `declub_shops_opinions` DISABLE KEYS */;
INSERT INTO `declub_shops_opinions` VALUES ('Pa184Ri39','tu gfa','muy chido :)',5,2,5,4,'2018-01-25'),('SE182Ri15','gfdf','sffsfsf',3.5,4,4,3.83333,'2018-01-30'),('SE182Ri15','dsfds','sdfdsf',4.5,4.5,4.5,4.5,'2018-01-30'),('Re184Ri38','cvmb','cgb',0.5,0.5,0.5,0.5,'2018-01-30'),('Pa184Ri39','GT','vhjj',1.5,1.5,2.5,1.83333,'2018-01-30'),('DominosTIMESTAMP','nixk','jsnskaka',5,5,5,5,'2018-01-30'),('DominosTIMESTAMP','rich','jsjajs',1.5,2,2.5,2,'2018-01-30'),('Re184Ri38','zkgzkzhkhkg','zhxhd',4,3,4,3.66667,'2018-01-30'),('SE182Ri15','buba','tu gfitaaa ',5,2,3.5,3.5,'2018-01-30'),('Pa184Ri39','tu gfita','mamadas ',1.5,4,5,3.5,'2018-02-05'),('Pa184Ri39','jdjsks','jsjssj',3,3,3.5,3.16667,'2018-02-07'),('SE182Ri15','tu gfita','sdfsdf',3,5,3,3.66667,'2018-09-29'),('Pa184Ri39','ok','men',4,3.5,3.5,3.66667,'2018-11-03'),('Re184Ri38','buba','ok',5,2,5,4,'2018-11-23');
/*!40000 ALTER TABLE `declub_shops_opinions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declub_slider_images`
--

DROP TABLE IF EXISTS `declub_slider_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_slider_images` (
  `id_image` int(11) NOT NULL AUTO_INCREMENT,
  `id_shop` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  KEY `id_shop` (`id_shop`),
  CONSTRAINT `declub_slider_images_ibfk_1` FOREIGN KEY (`id_shop`) REFERENCES `declub_shops` (`id_shop`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_slider_images`
--

LOCK TABLES `declub_slider_images` WRITE;
/*!40000 ALTER TABLE `declub_slider_images` DISABLE KEYS */;
INSERT INTO `declub_slider_images` VALUES (3,'Pa184Ri39'),(4,'Re184Ri38'),(5,'SE182Ri15');
/*!40000 ALTER TABLE `declub_slider_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declub_tags`
--

DROP TABLE IF EXISTS `declub_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_tags` (
  `id_tag` int(11) NOT NULL AUTO_INCREMENT,
  `id_shop` varchar(20) DEFAULT NULL,
  `shop_tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `id_shop` (`id_shop`),
  CONSTRAINT `declub_tags_ibfk_1` FOREIGN KEY (`id_shop`) REFERENCES `declub_shops` (`id_shop`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_tags`
--

LOCK TABLES `declub_tags` WRITE;
/*!40000 ALTER TABLE `declub_tags` DISABLE KEYS */;
INSERT INTO `declub_tags` VALUES (8,'DominosTIMESTAMP','pizza'),(10,'SE182Ri15','autos'),(11,'Re184Ri38','autopartes');
/*!40000 ALTER TABLE `declub_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declub_userinfo`
--

DROP TABLE IF EXISTS `declub_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_userinfo` (
  `user_id` varchar(25) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `mail` varchar(25) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `declub_userinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `declub_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_userinfo`
--

LOCK TABLES `declub_userinfo` WRITE;
/*!40000 ALTER TABLE `declub_userinfo` DISABLE KEYS */;
INSERT INTO `declub_userinfo` VALUES ('RiCa83','Ricardo','Dirección: Av Fuentes de Satélite 116, Santa Cruz del Monte, 53110 Naucalpan de Juárez, Méx.','555555','richie_camten@hotmail.com');
/*!40000 ALTER TABLE `declub_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declub_users`
--

DROP TABLE IF EXISTS `declub_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declub_users` (
  `user_id` varchar(25) NOT NULL DEFAULT '',
  `user_password` varchar(50) DEFAULT NULL,
  `user_type` varchar(25) DEFAULT NULL,
  `isVisible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declub_users`
--

LOCK TABLES `declub_users` WRITE;
/*!40000 ALTER TABLE `declub_users` DISABLE KEYS */;
INSERT INTO `declub_users` VALUES ('admin','admin','deClubMaster',1),('RiCa83','admin123','MiNegocio',1);
/*!40000 ALTER TABLE `declub_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_items`
--

DROP TABLE IF EXISTS `shop_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_items` (
  `shop_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_shop` varchar(20) DEFAULT NULL,
  `item_description` varchar(30) DEFAULT NULL,
  `item_price` float DEFAULT NULL,
  `item_url` text,
  PRIMARY KEY (`shop_item_id`),
  KEY `id_shop` (`id_shop`),
  CONSTRAINT `shop_items_ibfk_1` FOREIGN KEY (`id_shop`) REFERENCES `declub_shops` (`id_shop`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_items`
--

LOCK TABLES `shop_items` WRITE;
/*!40000 ALTER TABLE `shop_items` DISABLE KEYS */;
INSERT INTO `shop_items` VALUES (1,'DominosTIMESTAMP','Pizza',100,'URL'),(2,'DominosTIMESTAMP','Palitos',49.55,'URL'),(5,'DominosTIMESTAMP','Postre',60.59,'URL'),(6,'Pa184Ri39','Vegan Life',200,'https://raw.githubusercontent.com/Rich404/img/master/Pizza.jpg');
/*!40000 ALTER TABLE `shop_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-23  7:20:41
