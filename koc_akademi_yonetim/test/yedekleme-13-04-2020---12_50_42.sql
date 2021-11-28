-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: kurs_otomasyon
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dersler`
--

DROP TABLE IF EXISTS `dersler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dersler` (
  `ders_id` smallint NOT NULL AUTO_INCREMENT,
  `ders_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `eklenme_tarihi` datetime DEFAULT NULL,
  PRIMARY KEY (`ders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dersler`
--

LOCK TABLES `dersler` WRITE;
/*!40000 ALTER TABLE `dersler` DISABLE KEYS */;
INSERT INTO `dersler` VALUES (1,'android','2016-03-11 16:52:51'),(2,'java','2016-03-26 18:22:27'),(3,'sistem','2016-03-28 18:22:24');
/*!40000 ALTER TABLE `dersler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etut`
--

DROP TABLE IF EXISTS `etut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etut` (
  `etutID` int NOT NULL AUTO_INCREMENT,
  `Saatler` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `cumartesiSinif` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `cumartesiOgretmen` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `cumartesiDers` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `pazarSinif` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `pazarOgretmen` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `pazarDers` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`etutID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etut`
--

LOCK TABLES `etut` WRITE;
/*!40000 ALTER TABLE `etut` DISABLE KEYS */;
INSERT INTO `etut` VALUES (1,'11.00-12.30','7','Ali Bilmem','C++','7','Ali Bilmem','F#'),(2,'13.00-14.30','7','Ali Bilmem','C++','SC-505','ali bilsin','ASP'),(3,'15.00-16.30','7','Ali Bilmem','C++','SC-505','ali bilsin','ASP');
/*!40000 ALTER TABLE `etut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giris_islemi`
--

DROP TABLE IF EXISTS `giris_islemi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giris_islemi` (
  `kullanici_id` int DEFAULT NULL,
  `girisTarihi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giris_islemi`
--

LOCK TABLES `giris_islemi` WRITE;
/*!40000 ALTER TABLE `giris_islemi` DISABLE KEYS */;
INSERT INTO `giris_islemi` VALUES (21,'2016-04-05 15:41:32'),(1,'2016-04-05 15:41:54'),(1,'2016-04-05 15:42:28'),(1,'2016-04-05 15:42:59'),(1,'2016-04-05 15:43:13'),(1,'2016-04-05 15:44:36'),(1,'2016-04-05 15:44:53'),(1,'2016-04-05 15:45:43'),(1,'2016-04-05 15:45:59'),(1,'2016-04-05 15:46:13'),(1,'2016-04-05 15:46:37'),(1,'2016-04-05 15:47:06'),(1,'2016-04-05 15:47:51'),(1,'2016-04-05 15:48:30'),(21,'2016-04-05 15:50:15'),(21,'2016-04-05 15:56:03'),(21,'2016-04-05 15:57:34'),(21,'2016-04-05 15:59:27'),(21,'2016-04-05 16:01:56'),(21,'2016-04-05 16:02:40'),(21,'2016-04-05 16:03:16'),(21,'2016-04-05 16:04:11'),(21,'2016-04-05 16:05:54'),(21,'2016-04-05 16:08:26'),(21,'2016-04-05 16:52:34'),(22,'2016-04-05 16:53:42'),(1,'2016-04-05 17:04:00'),(1,'2016-04-05 17:12:45'),(1,'2016-04-05 17:15:25'),(1,'2016-04-05 17:17:12'),(1,'2016-04-05 17:17:49'),(1,'2016-04-05 17:18:47'),(1,'2016-04-05 17:20:55'),(1,'2016-04-05 17:25:05'),(1,'2016-04-05 17:28:03'),(1,'2016-04-05 17:35:18'),(1,'2016-04-05 17:54:51'),(1,'2016-04-05 18:25:01'),(1,'2016-04-05 18:26:49'),(1,'2016-04-05 18:28:46'),(1,'2016-04-05 18:30:41'),(1,'2016-04-05 18:31:56'),(1,'2016-04-05 18:35:03'),(1,'2016-04-05 18:37:37'),(1,'2016-04-05 18:38:16'),(1,'2016-04-06 15:02:38'),(1,'2016-04-06 15:57:27'),(1,'2016-04-06 15:57:52'),(1,'2016-04-06 16:29:23'),(1,'2016-04-06 16:31:26'),(1,'2016-04-06 16:36:16'),(1,'2016-04-06 16:36:50'),(1,'2016-04-06 16:37:40'),(1,'2016-04-06 16:40:22'),(1,'2016-04-06 16:41:53'),(1,'2016-04-06 16:42:57'),(1,'2016-04-06 16:54:59'),(1,'2016-04-06 17:03:53'),(1,'2016-04-06 17:13:50'),(1,'2016-04-06 17:14:05'),(1,'2016-04-06 17:23:05'),(1,'2016-04-06 17:25:04'),(1,'2016-04-06 17:26:04'),(25,'2016-04-06 17:28:18'),(1,'2016-04-06 17:30:20'),(1,'2016-04-06 17:33:05'),(1,'2016-04-06 17:36:03'),(1,'2016-04-06 17:38:55'),(1,'2016-04-06 17:48:31'),(1,'2016-04-06 17:48:32'),(1,'2016-04-06 17:48:45'),(1,'2016-04-06 17:48:46'),(1,'2016-04-06 17:49:03'),(1,'2016-04-06 17:51:12'),(1,'2016-04-06 17:57:55'),(1,'2016-04-06 18:02:45'),(1,'2016-04-06 18:02:59'),(1,'2016-04-06 18:11:01'),(1,'2016-04-06 18:24:29'),(1,'2016-04-06 18:24:29'),(1,'2016-04-06 18:24:49'),(1,'2016-04-06 18:29:41'),(1,'2016-04-06 18:44:16'),(1,'2016-04-12 15:35:02'),(1,'2016-04-12 15:37:38'),(1,'2016-04-12 15:38:59'),(1,'2016-04-12 15:40:48'),(1,'2016-04-12 15:41:12'),(1,'2016-04-12 15:45:28'),(1,'2016-04-12 15:45:53'),(1,'2016-04-12 15:46:48'),(1,'2016-04-12 15:50:28'),(1,'2016-04-12 15:50:51'),(1,'2016-04-12 15:54:45'),(1,'2016-04-15 15:57:05'),(1,'2016-04-15 16:00:01'),(1,'2016-04-15 16:00:44'),(1,'2016-04-15 16:01:39'),(1,'2016-04-15 16:02:23'),(1,'2016-04-15 16:02:44'),(1,'2016-04-15 16:03:31'),(1,'2016-04-15 16:04:32'),(1,'2016-04-15 16:04:39'),(1,'2016-04-15 16:06:58'),(1,'2016-04-15 16:06:59'),(1,'2016-04-15 16:07:08'),(1,'2016-04-15 16:07:38'),(1,'2016-04-15 16:07:47'),(1,'2016-04-15 16:08:05'),(1,'2016-04-15 16:08:41'),(1,'2016-04-15 16:09:47'),(1,'2016-04-15 16:17:07'),(1,'2016-04-15 16:18:18'),(1,'2016-04-15 16:21:43'),(1,'2016-04-15 16:29:43'),(1,'2016-04-15 16:36:50'),(1,'2016-04-15 16:39:49'),(1,'2016-04-15 16:40:46'),(1,'2016-04-15 16:43:26'),(1,'2016-04-15 16:54:28'),(1,'2016-04-05 15:01:28'),(1,'2020-04-03 17:48:52'),(1,'2020-04-06 09:49:31'),(5,'2020-04-06 09:53:10'),(1,'2020-04-06 09:54:43'),(1,'2020-04-06 09:56:35'),(5,'2020-04-06 09:58:20'),(1,'2020-04-06 10:01:29'),(1,'2020-04-06 10:13:54'),(1,'2020-04-06 10:46:02'),(1,'2020-04-06 12:31:38'),(1,'2020-04-06 13:33:24'),(1,'2020-04-06 13:40:45'),(1,'2020-04-06 13:44:36'),(1,'2020-04-07 00:33:04'),(1,'2020-04-07 00:38:53'),(1,'2020-04-07 00:55:54'),(1,'2020-04-07 15:56:31'),(1,'2020-04-07 16:07:57'),(1,'2020-04-10 00:15:14'),(1,'2020-04-10 00:19:49'),(1,'2020-04-10 00:28:12'),(1,'2020-04-10 01:27:32'),(1,'2020-04-10 01:34:38'),(1,'2020-04-10 01:43:24'),(1,'2020-04-10 01:57:09'),(1,'2020-04-10 02:09:35'),(1,'2020-04-10 02:11:53'),(1,'2020-04-10 02:13:07'),(1,'2020-04-10 02:16:06'),(1,'2020-04-10 02:19:09'),(1,'2020-04-10 02:23:48'),(1,'2020-04-10 02:28:47'),(1,'2020-04-10 02:32:04'),(1,'2020-04-10 02:34:15'),(1,'2020-04-10 02:42:39'),(1,'2020-04-10 17:42:24'),(1,'2020-04-10 17:44:27'),(1,'2020-04-10 17:55:27'),(1,'2020-04-10 17:59:52'),(1,'2020-04-10 18:43:53'),(1,'2020-04-10 18:48:23'),(1,'2020-04-10 18:54:46'),(1,'2020-04-10 19:33:32'),(1,'2020-04-10 19:37:05'),(1,'2020-04-10 19:41:51'),(1,'2020-04-10 19:43:50'),(1,'2020-04-10 20:47:29'),(1,'2020-04-10 21:06:29'),(1,'2020-04-11 14:39:38'),(1,'2020-04-11 14:51:16'),(1,'2020-04-11 16:57:51'),(1,'2020-04-11 17:08:20'),(1,'2020-04-11 17:12:23'),(1,'2020-04-11 17:24:36'),(1,'2020-04-11 19:19:58'),(1,'2020-04-11 19:20:56'),(1,'2020-04-11 19:24:05'),(1,'2020-04-11 19:25:10'),(1,'2020-04-11 19:25:53'),(1,'2020-04-11 19:35:18'),(1,'2020-04-11 19:35:39'),(1,'2020-04-11 19:37:10'),(1,'2020-04-11 19:40:41'),(1,'2020-04-11 19:47:06'),(1,'2020-04-11 19:48:08'),(1,'2020-04-11 19:51:01'),(1,'2020-04-11 20:00:10'),(1,'2020-04-12 07:26:52'),(1,'2020-04-12 07:36:08'),(1,'2020-04-12 07:38:18'),(1,'2020-04-12 07:44:39'),(1,'2020-04-12 07:49:07'),(1,'2020-04-12 07:49:58'),(1,'2020-04-12 07:52:15'),(1,'2020-04-12 14:40:11'),(1,'2020-04-12 16:46:46'),(1,'2020-04-12 16:51:26'),(1,'2020-04-12 16:55:53'),(1,'2020-04-12 16:57:05'),(1,'2020-04-12 17:02:31'),(1,'2020-04-12 17:06:04'),(1,'2020-04-12 17:07:21'),(1,'2020-04-12 17:08:54'),(1,'2020-04-12 17:09:24'),(1,'2020-04-12 17:11:02'),(1,'2020-04-12 17:12:09'),(1,'2020-04-12 19:24:48'),(1,'2020-04-12 19:32:05'),(1,'2020-04-12 19:36:05'),(1,'2020-04-12 19:47:49'),(1,'2020-04-12 19:57:00'),(1,'2020-04-12 20:06:10'),(1,'2020-04-12 20:23:32'),(1,'2020-04-13 12:17:21'),(1,'2020-04-13 12:28:17'),(1,'2020-04-13 12:38:08'),(1,'2020-04-13 12:42:12'),(1,'2020-04-13 12:46:32'),(1,'2020-04-13 12:50:35');
/*!40000 ALTER TABLE `giris_islemi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grup`
--

DROP TABLE IF EXISTS `grup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grup` (
  `grupID` int NOT NULL AUTO_INCREMENT,
  `grupNo` varchar(25) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `grupAciklama` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `grupKontenjan` int NOT NULL,
  `grupDanisman` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `grupAcilisTarihi` date DEFAULT NULL,
  `grupBitisTarihi` date DEFAULT NULL,
  PRIMARY KEY (`grupID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grup`
--

LOCK TABLES `grup` WRITE;
/*!40000 ALTER TABLE `grup` DISABLE KEYS */;
INSERT INTO `grup` VALUES (3,'7','C++',4,'tacettin baran','2015-02-11','2015-02-20'),(5,'9','F#',30,'ali bilsin','2016-03-19','2016-06-24'),(9,'SC-205','Java-Android',15,'ali bilsin','2016-02-08','2016-06-23'),(18,'SC-505','ASP',15,'ali bilsin','2016-02-08','2016-03-24'),(19,'N-303','Network-1',25,'ali bilsin','2016-03-01','2016-05-19'),(26,'N-402','Network-2',25,'ali bilsin','2016-03-06','2016-05-20');
/*!40000 ALTER TABLE `grup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kasa`
--

DROP TABLE IF EXISTS `kasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kasa` (
  `islem_id` int NOT NULL AUTO_INCREMENT,
  `hareket` tinyint(1) NOT NULL,
  `islem_tarihi` datetime DEFAULT NULL,
  `miktar` decimal(10,2) DEFAULT NULL,
  `odeme_sekli` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `islem_tipi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kasa_ogrenci_id` int DEFAULT NULL,
  PRIMARY KEY (`islem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kasa`
--

LOCK TABLES `kasa` WRITE;
/*!40000 ALTER TABLE `kasa` DISABLE KEYS */;
INSERT INTO `kasa` VALUES (1,0,'2016-04-04 17:15:18',15000.00,'Senet','öğrenci','asdasdasd',12345),(2,0,'2016-04-04 17:17:04',15000.00,'Nakit','öğrenci','bla bla',12345),(3,0,'2016-04-04 17:17:17',25000.00,'Senet','öğrenci','bla bla bla',123),(4,0,'2016-04-04 17:17:54',10000.00,'Senet','öğrenci','bla bla',111),(5,0,'2016-04-04 18:19:00',123.00,'Nakit','tahsilat','açşğşöüğşşIıi',0),(6,0,'2016-04-04 18:38:59',121.00,'Nakit','uyhfujt öğrenci','öğrenci',12312),(7,0,'2016-04-04 18:42:07',9000.00,'Senet','uyhfujt öğrenci','jnh m',11111),(8,0,'2016-04-05 14:34:00',120.00,'Nakit','uyhfujt öğrenci','',121),(9,0,'2016-04-05 14:36:29',3000.00,'Senet','uyhfujt öğrenci','',1212),(10,0,'2016-04-05 14:53:35',6789.00,'Senet','gvjghhjb','324',0),(11,0,'2016-04-05 14:57:35',23213.00,'Nakit','gvjghhjb','',0),(12,0,'2016-04-06 15:41:58',1231231.00,'Nakit','gvjghhjbogrenci','',1231),(13,0,'2016-04-06 15:50:22',1231.00,'Nakit','gvjghhjb','',0),(14,0,'2016-04-06 15:55:44',23423.00,'Nakit','ogrenci','',25345),(15,0,'2016-04-06 15:56:34',131231.00,'Nakit','dfsdfs','',0),(16,1,'2016-04-06 17:08:18',1200.00,'Nakit','ogrenci','ali ödemesi',95),(17,0,'2016-04-06 17:10:57',600.00,'Senet','ogrenci','özcan ödemesi',95),(18,0,'2016-04-06 18:33:01',10000.00,'Kredi Kartı','asa','dwedd',0),(19,1,'2016-04-06 18:33:41',35000.00,'Kredi Kartı','asa','sefw',0),(20,1,'2016-04-12 15:41:10',100000.00,'Kredi Kartı','asa','24342',100),(21,0,'2016-04-12 15:45:49',25000.00,'Kredi Kartı','asdfsdfaöğrenci','sfasfsd',90),(22,0,'2020-04-12 20:23:57',5000.00,'Nakit','asa','nakit tahsilat',0);
/*!40000 ALTER TABLE `kasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kasalt`
--

DROP TABLE IF EXISTS `kasalt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kasalt` (
  `tip` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kasalt`
--

LOCK TABLES `kasalt` WRITE;
/*!40000 ALTER TABLE `kasalt` DISABLE KEYS */;
INSERT INTO `kasalt` VALUES ('asa'),('asdfsdfaöğrenci');
/*!40000 ALTER TABLE `kasalt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kullanicilar` (
  `kullanici_id` smallint NOT NULL AUTO_INCREMENT,
  `kullanici_isim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_yetki` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personalID` int DEFAULT NULL,
  PRIMARY KEY (`kullanici_id`),
  UNIQUE KEY `isimBenzersiz` (`kullanici_isim`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanicilar`
--

LOCK TABLES `kullanicilar` WRITE;
/*!40000 ALTER TABLE `kullanicilar` DISABLE KEYS */;
INSERT INTO `kullanicilar` VALUES (1,'admin','admin','11111111111111111111111111111111111',4),(4,'gokhan','diker','011111000000000000',44),(5,'ali','bilmem','0000010110000000000000000000000000000000',48),(7,'gökhan45','diker','000010010000',48),(12,'alili','bilmem','010110100110',51),(14,'gökhan455','diker','000100011100',53),(18,'deneme','deneme','000000000000',45),(20,'deneme34','deneme','010011110100',45),(21,'aytac','123','10001000100010001001000010001000',45),(22,'alideneme','123','000000000000000000000',45),(25,'alii','12345','111111101110111111',54),(27,'denemedeme','bilmem','010110100110000000',51),(29,'ddeneme','123','000000000000000000',123),(31,'aliiiiiiiiiiiiiii','bilmem','010110100110000000',48);
/*!40000 ALTER TABLE `kullanicilar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrenci` (
  `ogrenciId` int NOT NULL AUTO_INCREMENT,
  `ogrenciAdi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciSoyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciDogumTarihi` date DEFAULT NULL,
  `grupNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciTc` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ogrenciTel` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciMail` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciAdres` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `veliAdSoyad` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `veliTel` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `veliMail` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayitTarihi` datetime DEFAULT NULL,
  `dokumantasyon` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayitDurumu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`ogrenciId`),
  FULLTEXT KEY `oAdi` (`ogrenciAdi`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrenci`
--

LOCK TABLES `ogrenci` WRITE;
/*!40000 ALTER TABLE `ogrenci` DISABLE KEYS */;
INSERT INTO `ogrenci` VALUES (11,'hasan','hüseyin','2016-04-03','11','132131851','31561611631','sdfsdf','','hüseyin hasan','0321511651','yagmur.bakti@hotmail.com',NULL,'kitap mitap github',NULL),(12,'ahmet','bilmmez','2016-04-03','1','5161210651','650560561','sdfs','beşiktaş fenerbahçe galatasaray','hasan hüseyin','2+616151','tcttnbrn@hotmail.com',NULL,'kiiiiitaaaaaaap','Aktif'),(44,'8978','876','2016-04-03','SC-505','7676876','76867','678','678','678','678','678','2016-04-01 18:26:25','678','aktif'),(46,'kaan','gençtürl','2016-04-14','SC-205','1351355','12564816','oklas@gmail.com','dfafasdsaf','Hasan Hüseyin','266629598','asdsa@gmail.com','2016-04-04 14:55:04','asdvasd','aktif'),(47,'sfasdf','asdfasdf','2016-04-13','SC-120','21312321','123213','213213','131313','21312','3131','3131','2016-04-04 15:53:18','3131','Aktif'),(86,'Gökhan','Diker','2019-04-14','N-303','66666666666','09009009090','dsa@sadk.com','asdasd','dsfsdf','09009009091','sad@sd.com','2016-04-05 16:50:54','sdsad','aktif'),(90,'sadja','şıdhfs','2016-04-03','N-303','324324','344324','dsa@sd.com','sadadasd','sdsadasd','324234','dsa@sd.com','2016-04-05 16:55:41','asfsaf','aktif'),(91,'sdaasd','safsaf','2016-04-10','N-303','32443244234','324234','sdasad@sad.com','sdadasdas','asdasd','161618','sdasad@sad.com','2016-04-05 17:01:05','sadas','aktif'),(95,'özcan','Bilsin','2016-04-06','SC-205','17485865645','11111111111','ali@ali.commm','jyfhf','Ali','45456464654','ali@ali.co','2016-04-06 17:25:58','15 dk java','Aktif'),(96,'a','b',NULL,NULL,'32423423423','+90 (555)-5','324@sad.com',NULL,'aa','34223432423','324@sad.com',NULL,NULL,'Pasif'),(97,'asd','saf',NULL,NULL,'65468464684','+90 (545)-646 46 84','64864@sad.com',NULL,'sadas','+90 (654)-646 54 65','64864@sad.com',NULL,NULL,'Pasif'),(98,'sda','asd',NULL,NULL,'23243243423','+90 (   )-','sad@sad.com',NULL,'dasd','+90 (   )-','sad@sad.com',NULL,NULL,'Pasif'),(99,'sad@sad.com','sad@sad.com',NULL,NULL,'34232432432','+90 (516)-513 61 65','sad@sad.com',NULL,'sad@sad.com','+90 (032)-505 61 35','sad@sad.com',NULL,NULL,'Pasif'),(100,'sad@sad.com','sad@sad.com',NULL,NULL,'34232432411','+90 (516)-513 61 65','sad@sad.com',NULL,'sad@sad.com','+90 (032)-505 61 35','sad@sad.com',NULL,NULL,'Pasif'),(101,'sad@sad.com','sad@sad.com',NULL,NULL,'34232430000','+90 (516)-513 61 65','sad@sad.com',NULL,'sad@sad.com','+90 (032)-505 61 35','sad@sad.com',NULL,NULL,'Pasif'),(102,'safkj','dfdalgks',NULL,NULL,'32342322223','+90 (   )-','sad@sad.com',NULL,'asf','+90 (   )-','sad@sad.com',NULL,NULL,'Pasif'),(103,'adasdds','dsgdsg',NULL,NULL,'00022555888','+90 (165)-165 16 16','sad@cos.com',NULL,'dsgds','+90 (616)-681 68 16','sad@cos.com',NULL,NULL,'Pasif'),(104,'ad','soy','2016-04-15','7','12345678911','11111111111','as@as.com','adres bölümü','veli','22222222222','veli@veli.com','2016-04-15 16:10:37','kitap','aktif'),(105,'HAMZA','KOÇ',NULL,NULL,'46111111111','+90 (532)-661 61 61','hkoc@hotmail.com',NULL,'MUSTAFA LEVENT','+90 (539)-643 29 61','mlevent61@hotmail.com',NULL,NULL,'Pasif'),(106,'MEHMET','ŞİMŞEK','2020-04-10','7','12345678888','+90 (535)-666 99 33','kursmerkezi@ttnet.com','fatih','KAMİL','+90 (536)-666 33 22','mlevent61@gmail.com','2020-04-12 19:26:58','döküman','Aktif');
/*!40000 ALTER TABLE `ogrenci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogrencidersnotlari`
--

DROP TABLE IF EXISTS `ogrencidersnotlari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrencidersnotlari` (
  `dersNotuID` int NOT NULL AUTO_INCREMENT,
  `ogrenciID` int DEFAULT NULL,
  `sinifi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciAdi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciSoyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `1_notu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `2_notu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`dersNotuID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrencidersnotlari`
--

LOCK TABLES `ogrencidersnotlari` WRITE;
/*!40000 ALTER TABLE `ogrencidersnotlari` DISABLE KEYS */;
INSERT INTO `ogrencidersnotlari` VALUES (1,46,'SC-205','kaan','gençtürl','1351355','23','35'),(2,48,'SC-505','ali','bilmem','0101','56','56'),(3,44,'SC-505','8978','876','7676876','10','15'),(4,95,'SC-205','özcan','Bilsin','17485865645','12','32');
/*!40000 ALTER TABLE `ogrencidersnotlari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogrencidersprog`
--

DROP TABLE IF EXISTS `ogrencidersprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrencidersprog` (
  `ogrenciProID` int NOT NULL AUTO_INCREMENT,
  `Saatler` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sinifGrupAciklama` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Pazartesi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Sali` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Carsamba` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Persembe` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Cuma` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`ogrenciProID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrencidersprog`
--

LOCK TABLES `ogrencidersprog` WRITE;
/*!40000 ALTER TABLE `ogrencidersprog` DISABLE KEYS */;
INSERT INTO `ogrencidersprog` VALUES (1,'09.00-10.30','7','java','sistem','android','java','sistem'),(2,'11.00-12.30','7','java','android','android','java','java'),(3,'13.00-14.30','7','sistem','java','java','sistem','java'),(4,'15.00-16.30','7','android','android','java','java','android'),(5,'09.00-10.30','SC-505','java','java','android','sistem','java'),(6,'11.00-12.30','SC-505','java','java','sistem','android','java'),(7,'13.00-14.30','SC-505','sistem','sistem','java','java','sistem'),(8,'15.00-16.30','SC-505','java','android','android','android','java'),(9,'09.00-10.30','ali bilsin','9','Ders yok','Ders yok','Ders yok','Ders yok'),(10,'09.00-10.30','ali bilsin','Ders yok','Ders yok','Ders yok','Ders yok','Ders yok'),(11,'11.00-12.30','ali bilsin','Ders yok','Ders yok','Ders yok','Ders yok','Ders yok'),(12,'13.00-14.30','ali bilsin','Ders yok','Ders yok','Ders yok','Ders yok','Ders yok'),(13,'15.00-16.30','ali bilsin','Ders yok','Ders yok','Ders yok','Ders yok','Ders yok'),(14,'09.00-10.30','N-303','android','java','java','sistem','java'),(15,'11.00-12.30','N-303','java','android','android','sistem','java'),(16,'13.00-14.30','N-303','java','sistem','sistem','java','java'),(17,'15.00-16.30','N-303','android','android','java','java','android'),(18,'09.00-10.30','SC-205','android','java','sistem','android','java'),(19,'11.00-12.30','SC-205','java','android','sistem','android','sistem'),(20,'13.00-14.30','SC-205','android','sistem','android','java','java'),(21,'15.00-16.30','SC-205','sistem','android','java','android','java');
/*!40000 ALTER TABLE `ogrencidersprog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogretmen`
--

DROP TABLE IF EXISTS `ogretmen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogretmen` (
  `ogretmenID` int DEFAULT NULL,
  `ogretmenAdi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogretmenSoyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogretmen`
--

LOCK TABLES `ogretmen` WRITE;
/*!40000 ALTER TABLE `ogretmen` DISABLE KEYS */;
INSERT INTO `ogretmen` VALUES (54,'Ali','Bilmem'),(48,'ali','bilsin'),(44,'tacettin','baran');
/*!40000 ALTER TABLE `ogretmen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogretmenbilgileri`
--

DROP TABLE IF EXISTS `ogretmenbilgileri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogretmenbilgileri` (
  `ogretmenID` int NOT NULL AUTO_INCREMENT,
  `ogretmenAdi` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ogretmenSoyadi` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ogrtBrans` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dersUcreti` int DEFAULT NULL,
  `baslamaTarihi` datetime(6) DEFAULT NULL,
  `maas` int DEFAULT NULL,
  PRIMARY KEY (`ogretmenID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogretmenbilgileri`
--

LOCK TABLES `ogretmenbilgileri` WRITE;
/*!40000 ALTER TABLE `ogretmenbilgileri` DISABLE KEYS */;
INSERT INTO `ogretmenbilgileri` VALUES (1,'Ali','yildiz','Tarih',70,'2016-03-30 18:16:01.000000',4550),(2,'veli','yildirim','Java',50,'2016-03-16 16:25:45.000000',500),(3,'Ayşe','bilir','ASP',NULL,'2016-03-15 17:22:12.000000',NULL),(4,'Nizamettin','Ateş','Matematik',60,'2016-04-02 17:22:53.000000',660),(5,'Vatan','Savaş','Java',NULL,'2016-02-16 17:45:06.000000',NULL),(6,'Murat','Bardakçı','Tarih',90,'2016-03-31 17:45:34.000000',3600);
/*!40000 ALTER TABLE `ogretmenbilgileri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogretmendersprog`
--

DROP TABLE IF EXISTS `ogretmendersprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogretmendersprog` (
  `ogretmenProID` int NOT NULL AUTO_INCREMENT,
  `Saatler` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Ogretmen` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Pazartesi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Sali` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Carsamba` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Persembe` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `Cuma` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`ogretmenProID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogretmendersprog`
--

LOCK TABLES `ogretmendersprog` WRITE;
/*!40000 ALTER TABLE `ogretmendersprog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogretmendersprog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personel`
--

DROP TABLE IF EXISTS `personel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personel` (
  `personelID` int NOT NULL AUTO_INCREMENT,
  `personelTC` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelAdi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelSoyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelMail` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelAdres` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelEvTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelCepTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelGirisTarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelCikisTarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelMaas` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelGorev` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelAciklama` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelSskNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`personelID`),
  KEY `personelAdi` (`personelAdi`,`personelSoyadi`,`personelGorev`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (44,'12123','tacettin','baran','d@mail.com','f','1123','25432','2016-03-06','2017-03-12','1500.00','Öğretmen','k','3'),(48,'312312','ali','bilsin','d@mail.com','f','1123','25432','2016-03-06','2017-03-12','1500.00','Öğretmen','l','3'),(53,'233','tacettin','baran','baran@mail.com','fasdfghjk','1123','25432','2016-03-06','2017-03-12','1500.00','Müdür','klm','3'),(54,'3453453453','Ali','Bilmem','ali@ali.com','Ali adres','45152','4525252','2016-04-06','2017-04-06','4400.00','Öğretmen','Ali açıklama yaptı','1'),(63,'61616161610','MUSTAFA LEVENT','KOÇ','mlevent61@hotmail.com','Fatih/İSTANBUL','','5326616161','14/07/2011','','10000','Müdür','','123');
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rehberlik`
--

DROP TABLE IF EXISTS `rehberlik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rehberlik` (
  `rehberlikID` int NOT NULL AUTO_INCREMENT,
  `rehberlikOgrenciID` int DEFAULT NULL,
  `rehberlikOgretmenID` int DEFAULT NULL,
  `yoklamaID` int DEFAULT NULL,
  `ogrenciProID` int DEFAULT NULL,
  `rehberlikDersID` int DEFAULT NULL,
  `ogretmenProID` int DEFAULT NULL,
  `etutID` int DEFAULT NULL,
  PRIMARY KEY (`rehberlikID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rehberlik`
--

LOCK TABLES `rehberlik` WRITE;
/*!40000 ALTER TABLE `rehberlik` DISABLE KEYS */;
/*!40000 ALTER TABLE `rehberlik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senet`
--

DROP TABLE IF EXISTS `senet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senet` (
  `senet_id` int NOT NULL AUTO_INCREMENT,
  `senet_ogrenci_id` int DEFAULT NULL,
  `toplam_taksit` tinyint DEFAULT NULL,
  `taksit_id` tinyint DEFAULT NULL,
  `toplam_miktar` decimal(10,2) DEFAULT NULL,
  `odeme_miktari` decimal(10,2) DEFAULT NULL,
  `vade_tarihi` datetime DEFAULT NULL,
  `odenme_bilgisi` tinyint(1) DEFAULT '0',
  `odeme_tarihi` datetime DEFAULT NULL,
  PRIMARY KEY (`senet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senet`
--

LOCK TABLES `senet` WRITE;
/*!40000 ALTER TABLE `senet` DISABLE KEYS */;
INSERT INTO `senet` VALUES (1,123,12,1,25000.00,2083.00,'2016-04-04 00:00:00',1,'2016-04-04 18:09:49'),(2,123,12,2,25000.00,2083.00,'2016-05-04 00:00:00',1,'2020-04-12 20:11:52'),(3,123,12,3,25000.00,2083.00,'2016-06-04 00:00:00',0,NULL),(4,123,12,4,25000.00,2083.00,'2016-07-04 00:00:00',0,NULL),(5,123,12,5,25000.00,2083.00,'2016-08-04 00:00:00',1,'2016-04-04 18:09:37'),(6,123,12,6,25000.00,2083.00,'2016-09-04 00:00:00',0,NULL),(7,123,12,7,25000.00,2083.00,'2016-10-04 00:00:00',0,NULL),(8,123,12,8,25000.00,2083.00,'2016-11-04 00:00:00',0,NULL),(9,123,12,9,25000.00,2083.00,'2016-12-04 00:00:00',0,NULL),(10,123,12,10,25000.00,2083.00,'2017-01-04 00:00:00',0,NULL),(11,123,12,11,25000.00,2083.00,'2017-02-04 00:00:00',0,NULL),(12,123,12,12,25000.00,2083.00,'2017-03-04 00:00:00',0,NULL),(13,111,10,1,10000.00,1000.00,'2016-04-04 00:00:00',1,'2016-04-04 18:13:04'),(14,111,10,2,10000.00,1000.00,'2016-05-04 00:00:00',1,'2016-04-04 18:13:36'),(15,111,10,3,10000.00,1000.00,'2016-06-04 00:00:00',0,NULL),(16,111,10,4,10000.00,1000.00,'2016-07-04 00:00:00',0,NULL),(17,111,10,5,10000.00,1000.00,'2016-08-04 00:00:00',0,NULL),(18,111,10,6,10000.00,1000.00,'2016-09-04 00:00:00',0,NULL),(19,111,10,7,10000.00,1000.00,'2016-10-04 00:00:00',0,NULL),(20,111,10,8,10000.00,1000.00,'2016-11-04 00:00:00',0,NULL),(21,111,10,9,10000.00,1000.00,'2016-12-04 00:00:00',0,NULL),(22,111,10,10,10000.00,1000.00,'2017-01-04 00:00:00',0,NULL),(23,123324,2,1,323.00,161.00,'2016-04-04 00:00:00',0,NULL),(24,123324,2,2,323.00,161.00,'2016-05-04 00:00:00',0,NULL),(25,1212,2,1,3000.00,1500.00,'2016-04-13 00:00:00',1,'2016-04-05 14:38:03'),(26,1212,2,2,3000.00,1500.00,'2016-05-13 00:00:00',0,NULL),(27,1,2,1,1212.00,606.00,'2016-04-05 00:00:00',1,'2016-04-05 17:04:08'),(28,1,2,2,1212.00,606.00,'2016-05-05 00:00:00',0,NULL),(29,95,4,1,650.00,162.00,'2016-04-06 00:00:00',1,'2016-04-06 17:15:12'),(30,95,4,2,650.00,162.00,'2016-05-06 00:00:00',1,'2016-04-06 17:32:09'),(31,95,4,3,650.00,162.00,'2016-06-06 00:00:00',0,NULL),(32,95,4,4,650.00,162.00,'2016-07-06 00:00:00',0,NULL);
/*!40000 ALTER TABLE `senet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewmail`
--

DROP TABLE IF EXISTS `viewmail`;
/*!50001 DROP VIEW IF EXISTS `viewmail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewmail` AS SELECT 
 1 AS `ogrenciAdi`,
 1 AS `ogrenciSoyadi`,
 1 AS `ogrenciTc`,
 1 AS `yoklamaTarihi`,
 1 AS `durum`,
 1 AS `veliMail`,
 1 AS `1_notu`,
 1 AS `2_notu`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `yoklama`
--

DROP TABLE IF EXISTS `yoklama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yoklama` (
  `yoklamaID` int NOT NULL AUTO_INCREMENT,
  `ogrenciID` int DEFAULT NULL,
  `sinif` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciAdi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciSoyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ogrenciNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `yoklamaTarihi` date DEFAULT NULL,
  PRIMARY KEY (`yoklamaID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yoklama`
--

LOCK TABLES `yoklama` WRITE;
/*!40000 ALTER TABLE `yoklama` DISABLE KEYS */;
INSERT INTO `yoklama` VALUES (1,12,'C++','ahmet','bilmmez','5161210651','RAPORLU','2016-04-05'),(2,95,'SC-205','özcan','Bilsin','17485865645','DEVAMSIZ','2016-04-06'),(3,44,'SC-505','8978','876','7676876','RAPORLU','2016-04-15'),(4,46,'SC-205','kaan','gençtürl','1351355','RAPORLU','2016-04-15'),(5,95,'SC-205','özcan','Bilsin','17485865645','İZİNLİ','2020-04-07'),(6,104,'7','ad','soy','12345678911','RAPORLU','2020-04-10');
/*!40000 ALTER TABLE `yoklama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `viewmail`
--

/*!50001 DROP VIEW IF EXISTS `viewmail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmail` AS select `o`.`ogrenciAdi` AS `ogrenciAdi`,`o`.`ogrenciSoyadi` AS `ogrenciSoyadi`,`o`.`ogrenciTc` AS `ogrenciTc`,`y`.`yoklamaTarihi` AS `yoklamaTarihi`,`y`.`durum` AS `durum`,`o`.`veliMail` AS `veliMail`,`od`.`1_notu` AS `1_notu`,`od`.`2_notu` AS `2_notu` from ((`ogrenci` `o` left join `yoklama` `y` on((`o`.`ogrenciId` = `y`.`ogrenciID`))) left join `ogrencidersnotlari` `od` on((`y`.`ogrenciNo` = `od`.`ogrenciNo`))) */;
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

-- Dump completed on 2020-04-13 12:50:42
