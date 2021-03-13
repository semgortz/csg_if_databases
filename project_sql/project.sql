-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `naam` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `wachtwoord` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'RenÃƒÂ©','vnr@csg.nl','8d847e01d22baa969f71fa362b4de21c9e13c7882bcea13ba5c6a8ae0d71fc8c9700c82e0087a65c8b37bd29f536747f28c9672bec1cae7762d2c9f36b6013f2'),(2,'Pieter','plp@csg.nl','64b1da9e2c1faa690cb7fe7f392525c9a41ab1963e161d46fbbd973535c4ed512081da192a6760940a6f54bf6402d6100a1f607c9a351f1236e043ed5c887dc1'),(3,'Ids','osi@csg.nl','158bd6e847c3b942bef60752fbda08ecd7fa06a32f1503802a9f5449337f2680584d3e293bad5cf4d221b4237cc2b7cc01d89449b56d7a0817acb80e8869ade3'),(4,'Vincent','vnv@csg.nl','4e649ac2bea1a2b77c13b7f9fc89eba0c3bd8ad3b30ac065a4cf5db642b5368cecb58d8e8cbdcf926616bfb606096ee82fb980bb5dd8b73906ea85ef6708c3bf');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `titel` varchar(32) NOT NULL,
  `subtitel` varchar(64) NOT NULL,
  `omschrijving` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,'Museum','Chalon-sur-SaÃƒÂ´ne (Frankrijk), 27 april 2020','Foto genomen in MusÃƒÂ©e NicÃƒÂ©phore NiÃƒÂ©pce.'),(2,'Molens','Eemshaven (Groningen), 27 april 2020','Foto genomen tijdens een excursie. Nabewerking in Lightroom.'),(3,'Naar Huis','Schiermonnikoog (Groningen), 27 april 2020','De donkere lucht waarschuwde al: niet veel later zware onweer.'),(4,'Sneeuwduinen','Katwijk aan Zee, 27 april 2020','Zwart-wit-bewerking van een schilderachtig tafereel.');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacties`
--

DROP TABLE IF EXISTS `reacties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reacties` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `foto` int(4) NOT NULL,
  `account` int(4) NOT NULL,
  `reactie` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacties`
--

LOCK TABLES `reacties` WRITE;
/*!40000 ALTER TABLE `reacties` DISABLE KEYS */;
INSERT INTO `reacties` VALUES (1,1,1,'Ik vind het een hele intrigerende foto. Je moet echt goed kijken om te begrijpen waar je naar kijkt. Daar houd ik van: foto\'s die je nog even laten denken.'),(2,1,3,'Sorry, hier heb ik echt helemaal niks mee. Vaak vind ik het nog wel ok wat er hier op de site te zien is, maar dit kan me echt niet bekoren.'),(3,1,4,'Ik snap wat je hier hebt geprobeerd, maar vind het niet erg geslaagd. Op zich heeft de foto wel iets ouderwets: dat past bij een museum.'),(4,2,2,'Hee, dit is niet zo heel ver van mijn huis!'),(5,2,2,'Nog even: ik ken dit rijtje windmolens. Staan er al heel lang. Volgens mij hebben ze een heel laag rendement naar de huidige maatstaven.'),(6,3,3,'Sfeervol!'),(7,3,4,'Mooi dat contrast tussen de grauwe achtergrond en de frisse kleuren van de kleding van de jongens.'),(8,3,1,'Dank je: vind dit zelf ook best goed gelukt, hoewel de foto relatief donker geworden is.');
/*!40000 ALTER TABLE `reacties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-13 15:45:23
