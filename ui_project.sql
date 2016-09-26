-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: ui_project
-- ------------------------------------------------------
-- Server version	5.7.15

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
-- Table structure for table `INVENTORY_TYPE`
--

DROP TABLE IF EXISTS `INVENTORY_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVENTORY_TYPE` (
  `ID` int(11) NOT NULL,
  `TYPE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY_TYPE`
--

LOCK TABLES `INVENTORY_TYPE` WRITE;
/*!40000 ALTER TABLE `INVENTORY_TYPE` DISABLE KEYS */;
INSERT INTO `INVENTORY_TYPE` VALUES (1,'CELLPHONE'),(2,'COMPUTER'),(3,'ELECTRONICS'),(4,'HOME APPLIANCE'),(5,'STATIONERY');
/*!40000 ALTER TABLE `INVENTORY_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemtype`
--

DROP TABLE IF EXISTS `itemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemtype` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` varchar(38) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `inventory_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_type_fk` (`inventory_type`),
  CONSTRAINT `FK_itemtype_inventory_type` FOREIGN KEY (`inventory_type`) REFERENCES `INVENTORY_TYPE` (`ID`),
  CONSTRAINT `inventory_type_fk` FOREIGN KEY (`inventory_type`) REFERENCES `inventory_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemtype`
--

LOCK TABLES `itemtype` WRITE;
/*!40000 ALTER TABLE `itemtype` DISABLE KEYS */;
INSERT INTO `itemtype` VALUES (1,'iPhone','This is iPhone 7.The best performance and battery life ever in an iPhone. Immersive stereo speakers. The brightest, most colorful iPhone display. Splash and water resistance.iPhone 7 dramatically improves the most important aspects of the iPhone experience. The best iphone made yet','$849.00','/static/images/iphone7.jpg',1),(2,'galaxy s6 edge+','This is Samsung galaxy s7 edge. Work, rest and play with the Samsung Galaxy S7 edge. A massive 5.5-inch Super AMOLED touchscreen goes all the way to the edges of the phone so that you get the maximum area possible to work with. Solid water resistance, great processing and masses of memory round out this Samsung Galaxy S7 edge.','$699.00','/static/images/s7edge.jpg',1),(3,'macbook pro','The MacBook Pro with Retina display is the ideal notebook for enthusiasts and professionals looking for fast performance in anincredibly compact and light design. The Force Touch trackpad, powerful Intel Core processors, high performance graphics, faster PCIe-based flash storage, outstanding battery life, and a stunning Retina display take the MacBook Pro to a whole new level of performance.','$1899.00','/static/images/macbookpro.jpg',2),(4,'lenovo thinkpad','Lenovo ThinkPad Yoga Convertible 2-in-1 Laptop: Play games, catch up on social media and surf the Web on this laptop that offers a 360° hinge, so you can enjoy multiple typing and viewing positions, and a Full HD 10-point multitouch screen for simple navigation. Use the Bluetooth interface to wirelessly connect accessories.','$899.00','/static/images/lenovo.jpg',2),(5,'sony 4k ultra hdtv','Sony 4K Ultra HD TV: With 2160p resolution, this 4K Ultra HD TV delivers your favorite movies and TV shows in realistic detail. The generous display is large enough for everyone in the room to view. Plus, you can connect to the Internet for access to streaming content on Google Play.','$1699.99','/static/images/sonytv.jpg',3),(6,'canon - eos 80d DSLR Camera','Get great performance with the Canon EOS 80D lens kit. It combines a 24.2-megapixel sensor with an 18-135mm lens to get you closer to the action than ever before, and image stabilization reduces the effects of hand shake. Enjoy ultra-precise focusing and high-definition video for maximum versatility from this Canon EOS 80D lens kit.','$1599.99','/static/images/camera.jpg',3),(7,'samsung high efficiency front loading washer','Samsung 4.2 Cu. Ft. 9-Cycle High-Efficiency Steam Front-Loading Washer: For your busy family, you need a washer with convenient features that can handle your big laundry loads. This large-capacity washer can interact with your smartphone, includes self-cleaning technology and features a child lock to help keep your little ones safe.','$649.99','/static/images/washer.jpg',4),(8,'whirlpool refrigerator','Whirlpool 25.0 Cu. Ft. French Door Refrigerator: With 4 shelves, an external refrigerated drawer and adjustable gallon-size door bins, this Whirlpool refrigerator makes it easy to organize your groceries, so you can keep plenty of food fresh. Easily access filtered water and ice for your beverages thanks to the thru-the-door ice and water dispenser and PUR water filtration system.','$1699.99','/static/images/fridge.jpg',4),(9,'movie-free states of jones','In this historical war drama inspired by true events, Matthew McConaughey plays a Mississippi native named Newt Knight, who leads an armed rebellion of struggling farmers and slaves against the Confederacy during the American Civil War.','$19.99','/static/images/movie1.jpg',5),(10,'book-inferno','In this riveting new thriller, Brown returns to his element and has crafted his highest-stakes novel to date.','$19.99','/static/images/book.jpg',5);
/*!40000 ALTER TABLE `itemtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-26 13:17:12
