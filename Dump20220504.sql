-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_project
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `count_views`
--

DROP TABLE IF EXISTS `count_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count_views` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `movieId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn7328g24vex7agckbylplj2wx` (`movieId`),
  CONSTRAINT `FKn7328g24vex7agckbylplj2wx` FOREIGN KEY (`movieId`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count_views`
--

LOCK TABLES `count_views` WRITE;
/*!40000 ALTER TABLE `count_views` DISABLE KEYS */;
INSERT INTO `count_views` VALUES (11,'2022-04-26 21:59:43.046000','21.3131.3131.7',28),(12,'2022-04-26 22:00:56.324000','21.3131.3131.4',21),(13,'2022-04-26 22:01:04.903000','21.3131.3131.5',22),(14,'2022-04-26 22:01:32.970000','21.3131.3131.9',28),(15,'2022-04-26 22:01:45.910000','11.3131.3131.8',25),(16,'2022-05-03 11:28:26.411000','116.96.44.137',28),(17,'2022-05-03 11:28:52.516000','116.96.44.137',28),(18,'2022-05-04 21:39:26.683000','116.96.44.128',21),(19,'2022-05-04 21:39:53.127000','116.96.44.128',30),(20,'2022-05-04 21:39:58.259000','116.96.44.128',30),(21,'2022-05-04 21:40:15.550000','116.96.44.128',30),(22,'2022-05-04 21:40:56.648000','116.96.44.128',30),(23,'2022-05-04 21:47:07.142000','116.96.44.128',30),(24,'2022-05-04 21:50:07.309000','116.96.44.128',30),(25,'2022-05-04 21:50:15.319000','116.96.44.128',30),(26,'2022-05-04 21:50:22.838000','116.96.44.128',30),(27,'2022-05-04 22:00:00.675000','116.96.44.128',31),(28,'2022-05-04 22:02:48.826000','116.96.44.128',31);
/*!40000 ALTER TABLE `count_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credits`
--

DROP TABLE IF EXISTS `credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credits` (
  `date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `paymentId` int NOT NULL,
  PRIMARY KEY (`paymentId`),
  CONSTRAINT `FK1vmvqnufvmxjaevr3owwjtmb1` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credits`
--

LOCK TABLES `credits` WRITE;
/*!40000 ALTER TABLE `credits` DISABLE KEYS */;
INSERT INTO `credits` VALUES ('07/23','VISA','1234567890564323',4),('07/23','VISA','1234567890564323',5);
/*!40000 ALTER TABLE `credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deals`
--

DROP TABLE IF EXISTS `deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `discount` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `month` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deals`
--

LOCK TABLES `deals` WRITE;
/*!40000 ALTER TABLE `deals` DISABLE KEYS */;
INSERT INTO `deals` VALUES (5,0,'One',100000,_binary '',1),(6,6,'Anime',300000,_binary '',6),(7,12,'Test',600000,_binary '',12);
/*!40000 ALTER TABLE `deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digitalwallets`
--

DROP TABLE IF EXISTS `digitalwallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digitalwallets` (
  `name` varchar(255) NOT NULL,
  `paymentId` int NOT NULL,
  PRIMARY KEY (`paymentId`),
  CONSTRAINT `FKl99symg8cmjotj161tgtegra2` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digitalwallets`
--

LOCK TABLES `digitalwallets` WRITE;
/*!40000 ALTER TABLE `digitalwallets` DISABLE KEYS */;
INSERT INTO `digitalwallets` VALUES ('Pay with PayPal',6),('Pay with PayPal',7),('Pay with PayPal',8),('Pay with PayPal',9),('Pay with Paypal',11),('Pay with Paypal',14),('Pay with Paypal',15),('Pay with Paypal',16),('Pay with Paypal',17),('Pay with Paypal',18),('Pay with Paypal',29),('Pay with Paypal',30);
/*!40000 ALTER TABLE `digitalwallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_links`
--

DROP TABLE IF EXISTS `movie_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `episodeName` varchar(1000) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `movieId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpbi6nhhx9l93se2mr7t54kt1a` (`movieId`),
  CONSTRAINT `FKpbi6nhhx9l93se2mr7t54kt1a` FOREIGN KEY (`movieId`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_links`
--

LOCK TABLES `movie_links` WRITE;
/*!40000 ALTER TABLE `movie_links` DISABLE KEYS */;
INSERT INTO `movie_links` VALUES (21,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2Falita_battle.mp4?alt=media&token=aba9d53b-a62a-4b71-a7e4-f58b71a7c2c9',21),(22,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FBDSAH.mp4?alt=media&token=070392fa-b9c1-4dab-bafa-3f4c7ac4524e',22),(23,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2Fmarvel_s_the_avengers_trailer.mp4?alt=media&token=a2eeea27-4975-48c2-9727-1624a7f9a2b9',23),(24,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2Ffast_furious_presents_hobbs_shaw.mp4?alt=media&token=44b8bafc-14bf-4216-a1f9-7f7ba8e49a6f',24),(25,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FKingdom%20Season%201.mp4?alt=media&token=381e24d1-afee-4e06-b379-31911e6cb5d9',25),(26,'2','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FKingdom%20Season%202.mp4?alt=media&token=50360699-3ea8-4787-824e-c5766b6a6b2f',25),(27,'3','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FKingdom%20Season%203.mp4?alt=media&token=5528c56e-f456-4dd5-b4a3-a37f9e814246',25),(28,'4','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2Fne_zha_official_trailer.mp4?alt=media&token=14686975-4a0d-4d23-a0d3-9e09764aeb44',25),(29,'5','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FKingdom%205.mp4?alt=media&token=6c163ad8-e993-4565-905b-5d7898ec171a',25),(30,'6','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FKingdom%206.mp4?alt=media&token=7d09db4d-381b-4e82-a752-25089f80bff8',25),(31,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FMission_%20Impossible%20-%20Fallout%20(2018).mp4?alt=media&token=48f1a28f-bb78-4f31-a15a-dcfc73f3f918',26),(32,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FResident%20Evil_%20Vendetta%20.mp4?alt=media&token=c2940ec6-2079-4256-b1c3-e72eb932eafb',27),(33,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2Fne_zha_official_trailer.mp4?alt=media&token=14686975-4a0d-4d23-a0d3-9e09764aeb44',28),(34,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2Fcong_to_vien_chuyen_sinh_again_my_life.mp4?alt=media&token=5480719f-97c9-496b-badb-27a34ef88da5',29),(35,'2','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FC%C3%B4ng%20T%E1%BB%91%20Vi%C3%AAn%20Chuy%E1%BB%83n%20Sinh%20(Again%20My%20Life)%20_%20Highlight%20T%E1%BA%ADp%204%20.mp4?alt=media&token=f19d6d26-4ebf-46cf-b502-aeceb4683998',29),(36,'3','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FC%C3%B4ng%20T%E1%BB%91%20Vi%C3%AAn%20Chuy%E1%BB%83n%20Sinh%20(Again%20My%20Life)%20_%20Highlight%20T%E1%BA%ADp%203%20.mp4?alt=media&token=c9bc4876-11c9-4700-813f-b8b1cc1815ee',29),(37,'4','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2Fcong_to_vien%20tap4.mp4?alt=media&token=f37978b5-fc01-43d6-b47f-ea01ad3c7510',29),(38,'5','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FC%C3%B4ng%20T%E1%BB%91%20Vi%C3%AAn%20%20T%E1%BA%ADp%205.mp4?alt=media&token=7f191495-b533-4d21-afb1-5c161ca48bf0',29),(39,'6','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FC%C3%B4ng%20T%E1%BB%91%20Vi%C3%AAn%20tap6.mp4?alt=media&token=eb08b4f6-de53-40f2-bb1e-e5783c69b5a7',29),(40,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2FHenHoChonCongSoTap1.mp4?alt=media&token=b08da080-fc25-41b0-a08b-160f20c5576e',30),(41,'2','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Phim%2FC%C3%B4ng%20T%E1%BB%91%20Vi%C3%AAn%20Chuy%E1%BB%83n%20Sinh%20(Again%20My%20Life)%20_%20Highlight%20T%E1%BA%ADp%204%20.mp4?alt=media&token=f19d6d26-4ebf-46cf-b502-aeceb4683998',30),(42,'3','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTeaser%203%20VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=237c2fbf-4e54-4dba-938b-5be67dec5a79',30),(43,'4','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTrailer%20T%E1%BA%ADp%204VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=8b5522c6-c5e8-4e9f-a25a-79ee7bff4f36',30),(44,'5','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTrailer%20T%E1%BA%ADp%205VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=cbbec2d0-ad98-4ad9-ad30-f3fca06f9074',30),(45,'6','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTeaser%206%20VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=740d6398-0965-4ac2-beb3-456a8dda6aa7',30),(46,'7','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2FHenHoChonCongSoTap7.mp4?alt=media&token=78f5c286-dc62-48d2-8057-167ce652c015',30),(47,'8','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTeaser%208%20VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=e34a336c-3642-42c9-b8dd-22626f9b38f6',30),(48,'9','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTrailer%20T%E1%BA%ADp%209%20VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=6c3de045-1e79-4519-931c-c33f69399bb9',30),(49,'10','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTrailer%20T%E1%BA%ADp%2010%20VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=bb6e0a41-2dbe-47e1-889d-9a7180a5ebef',30),(50,'11','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2FHenHoChonCongSoTap11.mp4?alt=media&token=0b6cf5ab-b8b9-4649-8793-3d5659c195ac',30),(51,'12','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/H%E1%BA%B9n%20h%C3%B2%20ch%E1%BB%91n%20c%C3%B4ng%20s%E1%BB%9F%2F%5BTeaser%2012%20VIETSUB%5D%20The%20Office%20Blind%20Date.mp4?alt=media&token=4ae6669b-1c8b-4909-9ef5-259717fed56b',30),(52,'1','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2FTap1.mp4?alt=media&token=27246f61-574d-45e4-8053-07865f45d3d6',31),(53,'2','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2Ftap2.mp4?alt=media&token=f8a92745-6ce3-43d7-8023-6a4d942d77ca',31),(54,'3','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2Ftap3.mp4?alt=media&token=c7e03f63-0820-4578-8ec6-5126280a2f77',31),(55,'4','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2Ftap4.mp4?alt=media&token=733d50f8-c02b-47be-bce3-3b4adcc1fbff',31),(56,'5','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2Ftap5).mp4?alt=media&token=dffe9295-1208-4b3c-aa92-d5d3b4a45a07',31),(57,'6','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2Ftap6.mp4?alt=media&token=b62d6d6d-6ccc-4892-9d6c-9ead4f21982a',31),(58,'7','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2Ftap7.mp4?alt=media&token=0ad73457-d6b1-4cf4-ad86-90db728c8be2',31),(59,'8','https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/Ai%20L%C3%A0%20Hung%20Th%E1%BB%A7%2Ftap8.mp4?alt=media&token=8689e1ca-a92e-4812-9a9c-db95ccef3464',31);
/*!40000 ALTER TABLE `movie_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `director` varchar(255) NOT NULL,
  `episodeNumber` int NOT NULL,
  `imdb` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` int NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `image` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (21,'Phim H??nh ?????ng, Phim T??nh C???m-L??ng M???n, Phim Vi???n T?????ng','Alita ???????c v?? nh?? m???t th???n ch???t ?????n t??? ?????a ng???c v?? nh???ng kh??? n??ng v?????t qua m???i gi???i h???n m?? c?? s??? h???u. C?? ???????c t??m th???y b???i Ti???n s?? Ido v?? kh??ng th??? nh??? m??nh l?? ai hay t??? ????u t???i. ????? c?? th??? t??m ra s??? th???t, Atila ph???i d???n th??n v??o nh???ng cu???c chi???n ?????u n???y l???a.','M???','2022-04-25 23:03:46.373000','Robert Rodriguez',1,7.3,'Alita: Battle Angel','HD',_binary '',122,'w7pYhpJaJW8','Phim l???',2019,'https://drive.google.com/uc?export=view&id=1365FddqwV_qly12vt6Y22F-OcKKky30P'),(22,'Phim H??nh ?????ng, Phim T??nh C???m-L??ng M???n, Phim Vi???n T?????ng','Bi???t ?????i Si??u Anh H??ng 4: T??n Cu???c (Avengers 4: Endgame) ra m???t v??o th??ng 4/2019 s??? gi???i quy???t tri???t ????? nh???ng kh??c m???c ???? v???ch ra su???t 22 b??? phim tr?????c ???? c???a V??? tr??? ??i???n ???nh Marvel (MCU). Hai th??ng sau ????, Ng?????i Nh???n 2 l?? kh???i ?????u ho??n to??n m???i d??nh cho MCU. Trong ph???n tr?????c, t??n Titan ??i??n r??? lu??n b??? ??m ???nh v??? s??? m???nh ph???i ???c??n b???ng??? v?? tr???. Sau khi thu th???p ????? 6 vi??n ???? v?? c???c, Thanos khi???n n???a th??? gi???i tan bi???n th??nh c??t b???i ch??? b???ng m???t c??i b??ng tay. M??? ?????u c???a teaser trailer Endgame, Tony Stark d??ng 1 c??i m???t n??? c???a b??? gi??p Iron Man ????? ghi h??nh l???i tin nh???n video g???i cho ng?????i v??? Pepper Potts. Anh cho bi???t l?? m??nh ??ang tr??n ???????ng tr??? v??? Tr??i ?????t nh??ng kh??ng may b??? tr??i l???c trong v?? tr???, n?????c v?? l????ng th???c th?? c???n s???ch t??? 4 ng??y tr?????c, oxy th?? qua ng??y mai c??ng h???t, m???ng s???ng b??y gi??? nh?? ch??? m??nh treo chu??ng, th???n ch???t ch??? c??n c??ch v??i ti???ng. Ti???p theo ???? l?? s??? xu???t hi???n c???a Black Widow, Captain America, Hulk, Hawkeye, Thor, Nebula??? nh???ng ng?????i trong s??? 50% d??n s??? v?? tr??? c??n s???ng s??t sau c??i b??ng tay c???a Thanos. V?? ngay l??c n??y, Black Widow c??ng Cap v?? Hulk ph???i l??n k??? ho???ch ????? gi???i c???u th??? gi???i, ?? kh??ng, l?? gi???i c???u v?? tr???, m???t l???n n???a.','M???','2022-04-25 23:14:01.920000','Anthony Russo, Joe Russo',1,8.4,'Avengers 4: Endgame','HD',_binary '',150,'TcMBFSGVi1c','Phim l???',2019,'https://drive.google.com/uc?export=view&id=1b9v_SmXoZIClwqJbepX-OZeKHxc7xbMZ'),(23,'Phim H??nh ?????ng, Phim Phi??u L??u, Phim Vi???n T?????ng','B??? phim l?? c??u chuy???n ti???p n???i b??? phim The Avengers, khi Steve Rogers ph???i t??m c??ch h??a nh???p v??o th??? gi???i hi???n ?????i v?? k???t h???p v???i Natasha Romanoff/Black Widow ????? chi???n ?????u ch???ng l???i m???t k??? th?? nguy hi???m ??? Washington, D.C. Sau cu???c chi???n c??ng ?????i The Avengers t???i New York, Captain America (hay c??n g???i l?? Steve Rogers) c?? m???t cu???c s???ng kh?? th???m l???ng t???i Washington v?? anh ph???i v???t l???n ????? th??ch nghi v???i cu???c s??ng ??? th??? gi???i hi???n ?????i.','M???','2022-04-25 23:23:44.915000','Anthony Russo, Joe Russo',1,7.8,'Captain America 2: The Winter Soldier','HD',_binary '',136,'7SlILk2WMTI','Phim l???',2014,'https://drive.google.com/uc?export=view&id=1wNt-AmBUOPlN0hkAn7wiN_nSZMniRNdK'),(24,'Phim H??nh ?????ng, Phim Phi??u L??u, Phim Vi???n T?????ng, Phim H???i H???p-G??y C???n','Sau 8 phim v???i ph???n doanh thu ch???m m???c 5 t??? ???? la M??? to??n c???u, gi??? ????y th????ng hi???u Fast & Furious s??? tr??? l???i v???i m???t ph???n ngo???i truy???n ho??n to??n ?????c l???p v???i s??? tham gia c???a Dwayne Johnson trong vai Luke Hobbs v?? Jason Statham trong vai Deckard Shaw trong Hobbs & Shaw.','M???','2022-04-25 23:29:26.358000','David Leitch',1,6.5,'Fast & Furious Presents: Hobbs & Shaw','HD',_binary '',127,'HZ7PAyCDwEg','Phim l???',2019,'https://drive.google.com/uc?export=view&id=1G-r9mJMUKNZkaldITiis8tU18NK7Va3_'),(25,'Phim C??? Trang, Phim Kinh D???, Phim Vi???n T?????ng, Phim H???i H???p-G??y C???n','L???y b???i c???nh h??n qu???c th???i trung c??? Joseon, m???t v??? ho??ng t??? ???????c ph??i ??i ??i???u tra v??? ??n do b???nh d???ch ho??nh h??nh ??? kh???p ?????y n?????c. M???t s??? th???t ??ang ??e d???a c??? v????ng qu???c, khi ng??i ph??t hi???n b???nh d???ch tai qu??i ???? ch??nh l?? do nh???ng th??y ma g??y ra.','H??n Qu???c','2022-04-25 23:39:32.753000','Kim Sung-Hoon',6,8.3,'Kingdom (Season 2)','HD',_binary '',60,'4l-yByZpaaM','Phim b???',2019,'https://drive.google.com/uc?export=view&id=1wraLkVJVA-ZOJxSP0kjLNSo1g3pl5UVI'),(26,'Phim H??nh ?????ng, Phim Phi??u L??u, Phim H???i H???p-G??y C???n','Nh???ng k??? ?????ch l???n nh???t th?????ng quay tr??? l???i ????? s??n ??u???i b???n. Nhi???m V??? B???t Kh??? Thi: S???p ????? v???i Ethan Hunt (Tom Cruise) v?? nh??m IMF c???a anh (Alec Baldwin, Simon Pegg, Ving Rhames) c??ng v???i c??c ?????ng minh (Rebecca Ferguson, Michelle Monaghan) trong m???t cu???c ??ua v???i th???i gian sau khi nhi???m v??? th???t b???i. Henry Cavill, Angela Bassett v?? Vanessa Kirby c??ng s??? tham gia v??o d??n di???n vi??n kh???ng v???i nh?? l??m phim Christopher McQuarrie tr??? l???i v???i b??? phim.','M???, Trung Qu???c','2022-04-25 23:45:47.464000','Christopher Mcquarrie',1,7.7,'Mission: Impossible ??? Fallout','HD',_binary '',147,'wb49-oV0F78','Phim l???',2018,'https://drive.google.com/uc?export=view&id=1K3OpdaaKVWCTCvLDq9dhT-T5WF1ORP3g'),(27,'Phim H??nh ?????ng, Phim Kinh D???, Phim H???i H???p-G??y C???n, Phim H???at H??nh','Resident Evil: Vendetta xoay quanh b??? ba Chris Redfield, Leon Scoot Kennedy v?? Rebecca Chambers c?? m???t ??? th??nh ph??? New York ????? ng??n c???n cu???c t???n c??ng kh???ng b??? sinh h???c ??ang b??ng ph??t v???i zombie c??ng nh?? nhi???u sinh v???t ?????t bi???n qu??i d??? h??n. ??m m??u ph?? ho???i th??nh ph??? ???????c th???c hi???n b???i nh??n v???t ph???n di???n mang t??n Glenn Arias.','Nh???t B???n','2022-04-25 23:50:16.789000','Takanori Tsujimoto',1,6.2,'Resident Evil: Vendetta','HD',_binary '',97,'Fs5g-l0Bcss','Phim l???',2017,'https://drive.google.com/uc?export=view&id=1Apt2KNKXvSa02IOIRvrXC7fMXStPqJHs'),(28,'Phim H??nh ?????ng, Phim H??i H?????c, Phim Phi??u L??u, Phim H???at H??nh','T???? thu???? xa x??a, tinh hoa ??????t tr????i h????i tu?? tha??nh m????t vi??n ngo??c ch????a ??????ng n??ng l??????ng kh????ng l????. Nguy??n Thu??y Thi??n T??n ??a?? ph??n ta??ch vi??n ngo??c na??y tha??nh 1 vi??n Linh Ch??u va?? 1 vi??n Ma Hoa??n. Vi??n Linh Ch??u se?? ??????u thai tha??nh m????t anh hu??ng c????u th????, pho?? tr???? nha?? Chu. Trong khi ??o??, Ma Hoa??n se?? ta??o ra m????t Ma V????ng ta??n sa??t thi??n ha??. ?????? ng??n ch????n tha??m ho??a, Nguy??n Thu??y Thi??n T??n ??a?? ha?? chu?? ?????? sau 3 n??m Ma V????ng se?? bi?? Thi??n ki????p ti??u di????t. Li????u Na Tra co?? ??u?? s????c ?????? thay ??????i Thi??n m????nh?','Trung Qu???c','2022-04-25 23:57:14.895000','Yu Yang',1,7.4,'Ne Zha','HD',_binary '',110,'oJEwLXhPY7Y','Phim l???',2019,'https://drive.google.com/uc?export=view&id=1-fG-hR1tiPDPsVZeBa7ELn_VfuAptI7-'),(29,'Phim H??nh S???, Phim T??m L??, Phim Vi???n T?????ng','Kim Hee Woo c?? ??i???m x???p h???ng th???p nh???t ??? tr?????ng trung h???c. B???ng s??? ki??n tr?? v?? ch??m ch???, anh ???? c?? th??? theo h???c ?????i h???c v?? v?????t qua k??? thi ?????i h???c. Ng??y nay, anh ???y l?? m???t c??ng t??? vi??n nhi???t t??nh. Trong khi ??i???u tra v??? m???t ch??nh tr??? gia c?? kh??? n??ng tham nh??ng, Kim Woo b??? gi???t b???i m???t ng?????i ????n ??ng kh??ng r?? danh t??nh, ch??? ????? t???nh d???y khi c??n s???ng.','Trung Qu???c','2022-05-03 18:26:46.230000','Yu Yang',6,3.6,'C??ng T??? Vi??n Chuy???n Sinh ??? Again My Life','HD',_binary '',110,'jF2hPHGErOo','Phim b???',2022,'https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/avt%2Fdownload.jpg?alt=media&token=07cce69a-08ca-4a46-a1ae-09722f8f6b64'),(30,'Phim H??i H?????c, Phim T??m L??, Phim T??nh C???m-L??ng M???n','Shin Ha Ri l?? m???t ph??? n??? ?????c th??n v?? l??m vi???c cho m???t c??ng ty, c?? ???y c?? m???t ng?????i b???n nam, ng?????i c?? ???y ???? ph???i l??ng t??? l??u, nh??ng c?? ???y bi???t r???ng anh ???y ???? c?? b???n g??i. Shin Ha Ri c???m th???y bu???n v?? quy???t ?????nh g???p b???n c???a m??nh Jin Young Seo, l?? con g??i c???a m???t gia ????nh t??i phi???t. Jin Young Seo sau ???? y??u c???u Shin Ha-Ri th??? ch??? trong m???t bu???i h???n h?? gi???u m???t v?? th???m ch?? c??n ????a ra m???t s??? ti???n ????? c?? c?? th???i gian.','H??n Qu???c','2022-05-03 18:45:39.539000','SBS',12,4.35,'H???n H?? Ch???n C??ng S??? ??? A Business Proposal','HD',_binary '',90,'2P6PYSPn0AA','Phim b???',2022,'https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/avt%2Fhenhochoncongso.jpeg?alt=media&token=82c875a1-ba94-4825-949e-641cf15daaa2'),(31,'Phim H??nh S???, Phim T??m L??','V??o m??a ????ng l???nh gi?? n??m 2001, m???t v??? ??n m???ng ???? x???y ra t???i b???nh vi???n li??n k???t c???a m???t nh?? m??y in ??? th??nh ph??? H???i Ch??u. C???nh s??t t??n binh Leng Xiao Bing v?? ????n anh c???a anh ta v???i v?? ?????n hi???n tr?????ng sau khi nh???n ???????c tin b??o, nh??ng l???i v?? t??nh ?????i m???t v???i k??? s??t nh??n c???a v??? gi???t ng?????i h??ng lo???t ??? th??nh ph??? H???i Ch??u. Leng Xiao Bing r???t r?? v?? s??? b???n. K??? s??t nh??n ???? b??? tr???n kh???i hi???n tr?????ng v?? gi???t ch???t ????n ch??? c???a m??nh, Li Lan. M???t nh??n ch???ng kh??c t???i hi???n tr?????ng l?? n???n nh??n, tr??? m??? c??i Xia Mu, tr???n d?????i g???m gi?????ng. ????? ??? trong l???c l?????ng c???nh s??t, L??i Ti???u B??ng che gi???u chuy???n kh??ng d??m b???n, H??? M???t c??ng kh??ng v???ch tr???n h???n.','Trung Qu???c','2022-05-03 18:55:17.926000','SBS',8,4.1,'Ai L?? Hung Th??? ??? Who Is the Murderer','HD',_binary '',90,'dayl9UnztDg','Phim b???',2021,'https://firebasestorage.googleapis.com/v0/b/video-443f6.appspot.com/o/avt%2Failahungthu.jpg?alt=media&token=466502db-5124-4cee-bbd8-99a5da88c7fe');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `endAt` datetime(6) NOT NULL,
  `startAt` datetime(6) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `dealId` int NOT NULL,
  `paymentId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhmihewpna6olbalupabvylsgi` (`dealId`),
  KEY `FK3uouvmvg4j5yov27idsmpw468` (`paymentId`),
  KEY `FK6co8q7ko456baksb6tdjq2dfv` (`userId`),
  CONSTRAINT `FK3uouvmvg4j5yov27idsmpw468` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`),
  CONSTRAINT `FK6co8q7ko456baksb6tdjq2dfv` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `FKhmihewpna6olbalupabvylsgi` FOREIGN KEY (`dealId`) REFERENCES `deals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,'2022-05-26 22:14:28.501000','2022-04-26 22:14:28.501000',_binary '',5,4,5),(5,'2022-05-26 22:15:31.717000','2022-04-26 22:15:31.717000',_binary '',6,5,6),(6,'2022-05-26 22:22:54.355000','2022-04-26 22:22:54.355000',_binary '',5,6,6),(7,'2022-05-26 22:23:13.701000','2022-04-26 22:23:13.701000',_binary '',6,7,7),(8,'2022-05-26 22:24:36.930000','2022-04-26 22:24:36.930000',_binary '',7,8,8),(9,'2022-05-26 22:25:10.184000','2022-04-26 22:25:10.184000',_binary '',6,9,9),(11,'2022-06-01 16:22:16.633000','2022-05-02 16:22:16.633000',_binary '',6,11,5),(12,'2022-06-01 22:06:59.149000','2022-05-02 22:06:59.149000',_binary '',5,14,32),(16,'2022-06-01 22:26:06.414000','2022-05-02 22:26:06.414000',_binary '',5,18,33),(27,'2022-06-03 21:24:26.512000','2022-05-04 21:24:26.512000',_binary '',6,29,32),(28,'2022-06-03 21:37:20.575000','2022-05-04 21:37:20.575000',_binary '',7,30,32);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `totalMoney` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (4,100000),(5,282000),(6,100000),(7,282000),(8,528000),(9,282000),(11,282000),(14,100000),(15,100000),(16,100000),(17,100000),(18,100000),(29,282000),(30,528000);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateOfBirth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `sex` bit(1) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'2000-12-10','tthuong3042@gmail.com','Th????ng Tr???n','https://res.cloudinary.com/cuongpham/image/upload/AndroidApps/Users/6LdpFCKbMzEF92qnTyUk.jpg','03131341','12456','USER',_binary '\0',_binary ''),(6,'2000-04-22','anhldp@gmail.com','Napole Duc Phan Anh','https://res.cloudinary.com/cuongpham/image/upload/AndroidApps/Users/6LdpFCKbMzEF92qnTyUk.jpg','0366155338','12456','USER',_binary '',_binary ''),(7,'2000-12-07','minhduc333@gmail.com','Minh ?????c','https://res.cloudinary.com/cuongpham/image/upload/AndroidApps/Users/6LdpFCKbMzEF92qnTyUk.jpg','03131341','12456','USER',_binary '',_binary ''),(8,'2000-12-10','duyduong121@gmail.com','Duy D????ng','https://res.cloudinary.com/cuongpham/image/upload/AndroidApps/Users/6LdpFCKbMzEF92qnTyUk.jpg','03131341','12456','USER',_binary '',_binary ''),(9,'2000-12-10','phamcuong121@gmail.com','Ph???m C?????ng','https://res.cloudinary.com/cuongpham/image/upload/AndroidApps/Users/6LdpFCKbMzEF92qnTyUk.jpg','03131341','12456','USER',_binary '',_binary ''),(10,'2021-12-10','test212','Edit','sadasd','0313131','120313','ADMIN',_binary '',_binary '\0'),(11,'2021-12-10','test','Cuong Pham','sadasd','0313131','120313','ADMIN',_binary '',_binary '\0'),(13,'2021-12-10','minhduc0400@gmail.com','Cuong Pham','sadasd','0313131','120313','ADMIN',_binary '\0',_binary '\0'),(16,'2001-01-10','minhduc04001@gmail.com','Nguy???n Minh ?????c','','0928831204','123123','ADMIN',_binary '',_binary ''),(17,'2000-02-03','minhduc0401230@gmail.com','Nguy???n Minh ?????c','','0928831204','123123','ADMIN',_binary '\0',_binary ''),(18,'2000-04-20','minhduc0400123@gmail.com','Nguy???n Minh ?????c','https://res.cloudinary.com/cuongpham/image/upload/v1651396545/MovieProject/User/pab6cdrj66dv9gfnjdzo.png','0928831204','Abc123xyz7','ADMIN',_binary '',_binary ''),(20,'2021-12-10','test1321321@gmail','Cuong Pham','sadasd','0313131','120313','ADMIN',_binary '',_binary ''),(21,'2000-08-21','ngo013210@gmail.com','Duy Duong','https://res.cloudinary.com/cuongpham/image/upload/v1651461870/MovieProject/User/rukjinjiiri1cti7olbx.png','0369356922','132132','USER',_binary '',_binary ''),(23,'2000-08-21','ngocdsadasduy210800@gmail.com','Duy Duong','https://res.cloudinary.com/cuongpham/image/upload/v1651462139/MovieProject/User/t4x5hfietqrj1uxug3yw.png','0369356922','kjlhjkl','USER',_binary '',_binary ''),(24,'2000-08-21','ngocduy210800@gmail.com','Duy Duong','https://res.cloudinary.com/cuongpham/image/upload/v1651462351/MovieProject/User/n0iol9weh4npklpzsgsh.png','0369356922','421341','USER',_binary '',_binary ''),(28,'2000-08-21','ngocduy2108@gmail.com','Duy Duong','https://res.cloudinary.com/cuongpham/image/upload/v1651498153/MovieProject/User/ly9m5bmybgdfvvvvyxab.png','0369356922','123','USER',_binary '',_binary ''),(32,'2000-01-01','leducphananh@gmail.com','B18DCCN017 - L?? ?????c Phan Anh','https://lh3.googleusercontent.com/a/AATXAJwEnL0WwxglwJZLlqI1YhHcLylbCNnoLfOPHOb_=s96-c','N/A','N/A','USER',_binary '',_binary ''),(33,'2000-01-01','leducphananhz@gmail.com','Anh Phan','https://lh3.googleusercontent.com/a/AATXAJzJq2MRlfIumwHYTzvK08_X6zpCUnW9Rv5sZlIj=s96-c','N/A','N/A','USER',_binary '',_binary ''),(34,'2000-01-01','doahoangaymoi@yahoo.com','Phan Anh L?? ?????c','https://graph.facebook.com/3285251921712575/picture','N/A','N/A','USER',_binary '',_binary '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 22:04:48
