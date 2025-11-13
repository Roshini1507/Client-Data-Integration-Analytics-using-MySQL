-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: xeno
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `vip_customers`
--

DROP TABLE IF EXISTS `vip_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_customers` (
  `customer_id` int NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `signup_date` date NOT NULL,
  `is_gmail` enum('Yes','No') DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `signup_month` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_customers`
--

LOCK TABLES `vip_customers` WRITE;
/*!40000 ALTER TABLE `vip_customers` DISABLE KEYS */;
INSERT INTO `vip_customers` VALUES (107397,'Ojas Devan','stuvan83@gmail.com','9542793419','Bangalore','2025-04-08','Yes','Ojas','April'),(196722,'Adah Yogi','psoman@yahoo.com','8591581358','Delhi','2025-03-27','No','Adah','March'),(224232,'Divyansh Tripathi','jyohannan@datta.com','8647981998','Mumbai','2025-03-22','No','Divyansh','March'),(240679,'Ahana  Kumar','chirag63@sabharwal.com','8580016724','Mumbai','2025-03-18','No','Ahana','March'),(247923,'Rania Bhattacharyya','devansh39@hotmail.com','8893549828','Delhi','2025-04-04','No','Rania','April'),(260398,'Rasha Seshadri','tejasbhandari@yahoo.com','8496435124','Bangalore','2025-03-22','No','Rasha','March'),(266733,'Adah Kamdar','gokul03@gmail.com','8643563127','Mumbai','2025-04-11','Yes','Adah','April'),(267289,'Umang Kaur','hdara@gmail.com','8681162759','Delhi','2025-03-27','Yes','Umang','March'),(285490,'Lakshay Loke','lcheema@sharaf.com','9040520243','Bangalore','2025-04-14','No','Lakshay','April'),(378194,'Kavya Kadakia','golanayantara@gmail.com','7762967030','Delhi','2025-03-21','Yes','Kavya','March'),(402031,'Urvi Tiwari','kabirhegde@yahoo.com','9973478222','Bangalore','2025-04-03','No','Urvi','April'),(457035,'Jhanvi Sehgal','darshitbose@sridhar.biz','8745916414','Delhi','2025-03-24','No','Jhanvi','March'),(459709,'Lakshit Raman','aradhyashere@shukla-singhal.com','7688582689','Mumbai','2025-04-14','No','Lakshit','April'),(462199,'Tara Dani','cbajaj@hotmail.com','9559381066','Delhi','2025-04-11','No','Tara','April'),(605719,'Adira Karan','mangalneelofar@hotmail.com','8215100118','Bangalore','2025-02-25','No','Adira','February'),(616992,'Chirag Tandon','adiravenkataraman@mangat.com','8392130357','Bangalore','2025-03-21','No','Chirag','March'),(619706,'Devansh Cherian','saniabram@gmail.com','8689239369','Delhi','2025-02-25','Yes','Devansh','February'),(712034,'Divyansh Bhasin','jivikavenkatesh@gmail.com','9243605829','Delhi','2025-03-19','Yes','Divyansh','March'),(730952,'Sahil Kothari','vardaniyasangha@mangal.com','9544999759','Bangalore','2025-04-07','No','Sahil','April'),(750120,'Riya Ratta','indranilranganathan@gmail.com','8796144385','Bangalore','2025-04-08','Yes','Riya','April'),(759139,'Priyansh Sha','lavanya40@gmail.com','9666390588','Bangalore','2025-03-08','Yes','Priyansh','March'),(790421,'Shamik Sastry','suhanasaxena@yahoo.com','7770833983','Mumbai','2025-04-01','No','Shamik','April'),(817427,'Gokul Dixit','urvi68@mangat-ramesh.org','9236479926','Mumbai','2025-03-26','No','Gokul','March'),(838679,'Riaan Anne','reyanshgaba@hotmail.com','7106230885','Bangalore','2025-03-29','No','Riaan','March'),(845296,'Aarna Devan','uthkarsh19@gmail.com','7608772410','Mumbai','2025-03-19','Yes','Aarna','March'),(915577,'Aradhya Upadhyay','mahikadin@yahoo.com','8454899242','Mumbai','2025-03-17','No','Aradhya','March'),(979322,'Heer Deo','prishamandal@hotmail.com','9752956189','Delhi','2025-03-22','No','Heer','March');
/*!40000 ALTER TABLE `vip_customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-13 23:48:00
