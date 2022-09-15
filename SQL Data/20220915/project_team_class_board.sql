-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: project_team
-- ------------------------------------------------------
-- Server version	5.7.37-log

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
-- Table structure for table `class_board`
--

DROP TABLE IF EXISTS `class_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_board` (
  `class_num` int(11) NOT NULL AUTO_INCREMENT,
  `class_nick` varchar(30) DEFAULT NULL,
  `class_name` varchar(45) DEFAULT NULL,
  `class_title` varchar(50) DEFAULT NULL,
  `class_content` text,
  `class_address` varchar(200) DEFAULT NULL,
  `class_time` varchar(30) DEFAULT NULL,
  `class_area` varchar(45) DEFAULT NULL,
  `class_salary` varchar(11) DEFAULT NULL,
  `class_infor` text,
  `class_subject` varchar(30) DEFAULT NULL,
  `class_file` varchar(45) DEFAULT NULL,
  `class_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `class_readcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_num`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_board`
--

LOCK TABLES `class_board` WRITE;
/*!40000 ALTER TABLE `class_board` DISABLE KEYS */;
INSERT INTO `class_board` VALUES (2,'a','김광면','클래스명','3','3','2020-01-01','광주','20000','ab','cd','class2.jpg','2022-09-08 18:04:17',7),(3,'a','김수뿔','클래스명','4','4','2020-01-01','대구','10000','ab','cd','class3.jpg','2022-09-08 18:04:17',6),(4,'a','김새벽','클래스명','5','5','2020-01-01','부산','23000','ab','cd','class4.jpg','2022-09-08 18:04:17',6),(5,'a','김민지','클래스명','6','6','2020-01-01','울산','40000','ab','cd','class5.jpg','2022-09-08 18:04:17',5),(6,'a','김순복','클래스명','7','6','2020-01-01','서울','10000','ab','cd','class6.jpg','2022-09-08 18:04:17',29),(7,'a','김문학','클래스명','8','7','2020-01-01','인천','20000','ab','cd','class7.jpg','2022-09-08 18:04:17',10),(8,'a','김말순','클래스명','8','10','2020-01-01','수원','40000','ab','cd','class8.jpg','2022-09-08 18:04:17',1),(9,'a','김대평','클래스명','9','8','2020-01-01','서울','50000','ab','cd','class9.jpg','2022-09-08 18:04:17',1),(10,'a','김무한','백드롭페인팅과 반려동물을 함께 그리는 아크릴화 원데이클래스','미술을 처음 경험해도, 오일파스텔이 처음이어도','9','2020-01-01','서울','30000','ab','cd','class10.jpg','2022-09-15 11:14:13',22),(11,'a','김대한','백드롭페인팅과 반려동물을 함께 그리는 아크릴화 원데이클래스','미술을 처음 경험해도, 오일파스텔이 처음이어도\n							저와 함께라면 시작할 수 있어요! <br> 오일파스텔의 기초부터 차근차근 익히고 스케치를 보다 쉽게 하는\n							방법 그리고 오일파스텔 드로잉 꿀팁에 대해 모두 알려드립니다. <br> 오일파스텔로 귀여운 고양이와\n							강아지들을 함께 그려보아요. <br> 예시 작품으로 많은 분들의 사랑을 받았던 고양이 시리즈와 다양한\n							강아지의 모습을 담은 작품을 준비했어요. <br> 원하는 종류의 고양이와 강아지 예시 작품들을 원데이클래스를\n							통해 최소 1가지 이상 완성하실 수 있습니다. <br> *만약 예시 작품이 아닌 소중한 우리 반려동물들의\n							모습을 직접 그려보고 싶으시다면 반려동물의 사진을 꼭 준비해주세요! <br> - 클래스 시간: 총 2시간 -\n							인원: 최대 4명 - 장소: 서울 마포구 월드컵북로4길 29 우퍼빌딩 2층/3층, <br> 솜씨공간 9월\n							3, 4일 - 3층 회의실 9월 16, 17, 18일 - 2층 솜씨공간 카페 - 모든 재료는 준비해 드려요 :) <br>','부산광역시 해운대구 달맞이길117번길 17-11 이조빌딩 3층 솔내음한정식','2022-02-01','부산','50500','안녕하세요 김무한입니다. 현재 아뜰리에 공방에서 강사로 활동중입니다. 감사합니다.','cd','class11.jpg','2022-09-15 11:14:13',38);
/*!40000 ALTER TABLE `class_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-15 18:15:35
