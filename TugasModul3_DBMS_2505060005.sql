-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: siperpus
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `FULL_NAME` varchar(128) DEFAULT NULL,
  `TMP_LAHIR` varchar(90) DEFAULT NULL,
  `TGL_LAHIR` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext DEFAULT NULL,
  `GENDER` enum('L','P') DEFAULT NULL,
  `TELP` varchar(20) DEFAULT NULL,
  `FOTO` varchar(100) DEFAULT NULL,
  `D_CREATED` date DEFAULT NULL,
  PRIMARY KEY (`ID_ANGGOTA`),
  KEY `ID_ADMIN` (`ID_ADMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggota`
--

LOCK TABLES `anggota` WRITE;
/*!40000 ALTER TABLE `anggota` DISABLE KEYS */;
INSERT INTO `anggota` VALUES ('AG001','AD001','Andi Saputra','Jakarta','2000-01-10','Jl. Delima No.31','L','081234567001','andi.jpg','2026-02-01'),('AG003','AD002','Citra Lestari','Surabaya','2001-03-22','Jl. Kenanga No.3','P','081234567003','citra.jpg','2026-02-02'),('AG004','AD002','Dewi Anggraini','Yogyakarta','2000-07-15','Jl. Dahlia No.4','P','081234567004','dewi.jpg','2026-02-02'),('AG005','AD001','Eko Prasetyo','Semarang','1998-11-30','Jl. Flamboyan No.5','L','081234567005','eko.jpg','2026-02-03'),('AG006','AD003','Fajar Hidayat','Medan','2002-09-09','Jl. Anggrek No.6','L','081234567006','fajar.jpg','2026-02-03'),('AG007','AD003','Gita Permata','Palembang','2001-12-01','Jl. Sakura No.7','P','081234567007','gita.jpg','2026-02-04'),('AG008','AD002','Hendra Wijaya','Makassar','1999-04-18','Jl. Teratai No.8','L','081234567008','hendra.jpg','2026-02-04'),('AG009','AD001','Indah Sari','Depok','2000-06-25','Jl. Kamboja No.9','P','081234567009','indah.jpg','2026-02-05'),('AG010','AD003','Joko Susilo','Bekasi','1997-08-14','Jl. Cempaka No.10','L','081234567010','joko.jpg','2026-02-05'),('AG011','AD002','Kartika Putri','Bogor','2001-02-17','Jl. Melur No.11','P','081234567011','kartika.jpg','2026-02-06'),('AG012','AD001','Lukman Hakim','Tangerang','1998-10-20','Jl. Nusa Indah No.12','L','081234567012','lukman.jpg','2026-02-06'),('AG013','AD003','Maya Sari','Malang','2002-01-05','Jl. Cemara No.13','P','081234567013','maya.jpg','2026-02-07'),('AG014','AD002','Nanda Pratama','Solo','1999-09-29','Jl. Pinus No.14','L','081234567014','nanda.jpg','2026-02-07'),('AG015','AD001','Olivia Putri','Bali','2000-12-12','Jl. Wijaya No.15','P','081234567015','olivia.jpg','2026-02-08'),('AG016','AD002','Rizky Ramadhan','Jakarta','2001-04-04','Jl. Angkasa No.16','L','081234567016','rizky.jpg','2026-02-09'),('AG017','AD001','Sinta Maharani',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `No_Hp` varchar(25) NOT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('M0001','Andi','Jakarta','2004-01-10','L','081111111001'),('M0002','Budi','Bandung','2003-02-12','L','081111111002'),('M0003','Citra Lestari','Surabaya','2004-03-15','P','081111111003'),('M0005','Eko','Semarang','2004-05-20','L','081111111005'),('M0006','Fina','Medan','2003-06-25','P','081111111006'),('M0007','Gilang','Makassar','2004-07-30','L','081111111007'),('M0008','Hani','Palembang','2003-08-14','P','081111111008'),('M0009','Indra','Malang','2004-09-09','L','081111111009'),('M0010','Jihan','Solo','2003-10-22','P','081111111010');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-25 10:33:44
