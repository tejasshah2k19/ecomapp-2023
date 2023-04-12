CREATE DATABASE  IF NOT EXISTS `ecomapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecomapp`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomapp
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addresId` int NOT NULL AUTO_INCREMENT,
  `addressLine` varchar(300) DEFAULT NULL,
  `landMark` varchar(150) DEFAULT NULL,
  `pincode` varchar(7) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(22) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `defaultInd` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`addresId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (6,10,13,1),(7,10,21,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Router',0),(2,'Furniture',0),(3,'Garden',0),(4,'Health',0),(5,'Mobile',0),(6,'Baby',0),(7,'Beauty',0),(8,'Kitchen',0),(9,'Gift Cards',0),(10,'Sports',0),(11,'Shoes',0),(12,'Tools',0),(13,'Watches',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `orderDate` varchar(15) DEFAULT NULL,
  `totalAmount` float DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2023-03-22',25000,1,1),(2,1,'2023-03-11',25000,1,1),(3,1,'2023-04-10',15000,1,1),(4,1,'2023-02-10',18000,1,1),(5,1,'2023-01-10',22000,1,1),(6,1,'2023-01-15',21000,1,1),(7,1,'2023-02-25',11000,1,1),(8,1,'2023-02-25',1000,1,1),(9,1,'2022-02-25',1000,1,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimage`
--

DROP TABLE IF EXISTS `productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimage` (
  `productimageid` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `imageUrl` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`productimageid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimage`
--

LOCK TABLES `productimage` WRITE;
/*!40000 ALTER TABLE `productimage` DISABLE KEYS */;
INSERT INTO `productimage` VALUES (1,9,'assets/users/products/9/first.jpg'),(2,9,'assets/users/products/9/main.jpg'),(3,9,'assets/users/products/9/second.jpg'),(4,13,'assets/users/products/13/main.jpg'),(6,13,'assets/users/products/13/phone.jpg'),(7,13,'assets/users/products/13/camera.jpg'),(8,13,'assets/users/products/13/box.jpg'),(9,21,'assets/users/products/21/main.jpg'),(10,21,'assets/users/products/21/first.jpg'),(12,21,'assets/users/products/21/second.jpg'),(13,17,'assets/users/products/17/main.jpg'),(14,17,'assets/users/products/17/s23access.jpg'),(15,17,'assets/users/products/17/s23cam.jpg'),(16,17,'assets/users/products/17/s23feature.jpg');
/*!40000 ALTER TABLE `productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `subCategoryId` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `topSellingInd` tinyint(1) DEFAULT NULL,
  `mostValueInd` tinyint(1) DEFAULT NULL,
  `brandName` varchar(30) DEFAULT NULL,
  `productDetailDescriptionURL` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `latestInd` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (9,'TP-Link ER 605','TP-Link ER605 (TL-R605) | Multi-WAN Wired Single_Band 1000 Mbps VPN Router | Up to 4 Gigabit WAN Ports | SPIFirewall SMB Router | Omada SDN Integrated | Load Balance | Lightning Protection',1,1,10,6600,0,0,'TP-LINK','',0,0),(10,'TP-Link Deco X50','TP-Link Deco X50-PoE AX3000 Whole Home Mesh WiFi 6 System with PoE | 3000 Mbps Wireless Gigabit Smart Dual Band Router | Multi-Gig 2.5 Gbps Wired Network |  Alexa and Google Compatible',1,1,25,9000,1,0,'TP-LINK','',0,1),(11,'Xiaomi Router 4C','Xiaomi Mi Smart Router 4C, 300 Mbps with 4 high-Performance Antenna & App Control, Single_Band, Wi-Fi',1,2,25,9000,1,0,'Xiaomi','',0,0),(12,'iPhone 13 - 128 GB','<ul>\r\n<li>15 cm (6.1-inch) Super Retina XDR display</li>\r\n<li>Cinematic mode adds shallow depth of field and shifts focus automatically in your videos</li>\r\n<li>Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording</li>\r\n<li>12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording</li>\r\n<li>A15 Bionic chip for lightning-fast performance</li>\r\n</ul>',5,15,30,60999,1,0,'Apple','',0,0),(13,'iphone 14 pro - 128 GB','<ul>\r\n<li>15.54 cm (6.1-inch) Super Retina XDR display featuring Always-On and ProMotion</li>\r\n<li>Dynamic Island, a magical new way to interact with iPhone\r\n48MP Main camera for up to 4x greater resolution\r\n</li>\r\n<li>Cinematic mode now in 4K Dolby Vision up to 30 fps\r\nAction mode for smooth, steady, handheld videos</li>',5,15,10,119999,1,0,'Applet','',0,1),(14,'iPhone 14 512 GB','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> 15.40 cm (6.1-inch) Super Retina XDR display  </span></li>  <li><span class=\"a-list-item\"> Advanced camera system for better photos in any light  </span></li>  <li><span class=\"a-list-item\"> Cinematic mode now in 4K Dolby Vision up to 30 fps  </span></li>  <li><span class=\"a-list-item\"> Action mode for smooth, steady, handheld videos  </span></li>  <li><span class=\"a-list-item\"> Vital safety technology � Crash Detection calls for help when you can�t  </span></li>  </ul>',5,15,15,101999,1,0,'Apple','',0,1),(15,'iPhone 13 (256GB) ','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> 15 cm (6.1-inch) Super Retina XDR display  </span></li>  <li><span class=\"a-list-item\"> Cinematic mode adds shallow depth of field and shifts focus automatically in your videos  </span></li>  <li><span class=\"a-list-item\"> Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording  </span></li>  <li><span class=\"a-list-item\"> 12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording  </span></li>  <li><span class=\"a-list-item\"> A15 Bionic chip for lightning-fast performance  </span></li>  </ul>',5,15,25,72000,0,0,'Apple','',0,0),(16,' Galaxy Z Fold4 5G 12GB RAM ','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> Stands out. Stands up. Unfolds. The Galaxy Z Fold4 does a lot in one hand with its 15.73 cm(6.2-inch) Cover Screen. Unfolded, the 19.21 cm(7.6-inch) Main Screen lets you really get into the zone. Pushed-back bezels and the Under Display Camera means there\'s more screen and no black dot getting between you and the breathtaking Infinity Flex Display.  </span></li>  <li><span class=\"a-list-item\"> Do more than more with Multi View. Whether toggling between texts or catching up on emails, take full advantage of the expansive Main Screen with Multi View. PC-like power in your pocket transforms apps optimized with One UI to give you menus and more in a glance  </span></li>  <li><span class=\"a-list-item\"> New Taskbar for PC-like multitasking. Wipe out tasks in fewer taps. Add apps to the Taskbar for quick navigation and bouncing between windows when you\'re in the groove.4 And with App Pair, one tap launches up to three apps, all sharing one super-productive screen  </span></li>  <li><span class=\"a-list-item\"> Our toughest Samsung Galaxy foldables ever. From the inside out, Galaxy Z Fold4 is made with materials that are not only stunning, but stand up to life\'s bumps and fumbles. The front and rear panels, made with exclusive Corning Gorilla Glass Victus+, are ready to resist sneaky scrapes and scratches. With our toughest aluminum frame made with Armor Aluminum, this is one durable smartphone.  </span></li>  <li><span class=\"a-list-item\"> World�s first water resistant foldable smartphones. Be adventurous, rain or shine. You don\'t have to sweat the forecast when you\'ve got one of the world\'s first water-resistant foldable smartphones.  </span></li>  </ul>',5,16,15,155000,1,0,'Samsung','',0,0),(17,'Galaxy S23 Ultra 5G (Green, 12GB, 256GB Storage)','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> More innovation, less footprint � Galaxy S23 Ultra\'s striking symmetrical design returns with one major difference: recycled and eco-conscious materials. From the metal frame to the glass finish, it\'s polished with fresh new colors inspired by nature.  </span></li>  <li><span class=\"a-list-item\"> Note\'s signature tool comes built in - The built-in S Pen keeps the legacy of Note alive. Plus, it helps you ditch the dependency on notebooks, making sketches and jotting notes effortless and eco-friendly.  </span></li>  <li><span class=\"a-list-item\"> Low light. Camera. Action - A Pro-grade Camera grabs brighter photos and video, dusk to dawn. The intelligent pixel sensor adapts to low light with Nightography and the camera lens tones down flare for clearer captures  </span></li>  <li><span class=\"a-list-item\"> 200MP. Wow-worthy resolution - Resolution on the Wide-angle Camera has nearly doubled, delivering strikingly clear photos. Zoom and crop your shots for a whole new view �or leave it intact for brilliant detail, corner to corner.  </span></li>  <li><span class=\"a-list-item\"> Power for those who don\'t pause - Your quest for epic mobile gaming is over. Snapdragon 8 Gen 2 Mobile Platform for Galaxy optimizes and streamlines your device for silky smooth games �without draining the battery  </span></li>  </ul>',5,16,25,125000,1,0,'Samsung','',0,0),(18,'narzo 50i (Carbon Black, 2GB RAM+32GB Storage) Octa Core Processor | 6.5\" ','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB  </span></li>  <li><span class=\"a-list-item\"> 16.51 cm (6.5 inch) HD+ Display | 88.7% Screen-to-body Ratio | LCD Multi-touch Display | 1600-by-720-pixel Resolution | 400 nits Max Brightness (Typical)  </span></li>  <li><span class=\"a-list-item\"> 8MP Primary Camera (f/2.0 Aperture,4P Lens,4x, Digital Zoom Panoramic View, Portrait Mode, Expert, Timelapse, HDR, Beauty, Filter | 5MP AI Selfie Camera (f/2.2 aperture, portrait Mode, AI Beauty, HDR, Face-Recognition, Filter)  </span></li>  <li><span class=\"a-list-item\"> 5000 mAh Massive Battery | Supports Ultra Saving Mode  </span></li>  <li><span class=\"a-list-item\"> Powerful Octa-core Processor | CPU: Octa-core CPU, up to 1.6GHz | GPU: IMG 8322  </span></li>  </ul>',5,16,22,7499,0,0,'RealMe','',0,0),(19,'realme 10 Pro 5G (Hyperspace, 128 GB) (8 GB RAM)','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> 8 GB RAM | 128 GB ROM | Expandable Upto 1 TB  </span></li>  <li><span class=\"a-list-item\"> 17.07 cm (6.72 inch) Full HD+ Display  </span></li>  <li><span class=\"a-list-item\"> 108MP + 2MP | 16MP Front Camera  </span></li>  <li><span class=\"a-list-item\"> 5000 mAh Battery  </span></li>  <li><span class=\"a-list-item\"> Qualcomm Snapdragon 695 5G Processor  </span></li>  </ul>',5,16,50,20000,1,0,'RealMe','',0,1),(20,'Bacca Bucci Men\'s Comfy Mid-Top Casual Chunky Streetwear Fashion Sneakers | Solid Color Pattern with Rubber Outsole | Model: Tiger','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> Sole: Rubber  </span></li>  <li><span class=\"a-list-item\"> Closure: Lace-Up  </span></li>  <li><span class=\"a-list-item\"> Fit Type: Relaxed  </span></li>  <li><span class=\"a-list-item\"> Shoe Width: Medium  </span></li>  <li><span class=\"a-list-item\"> TRUE STREET STYLE CHUNKY DESIGN: This platform Street Style sneaker is a punch of tough and stylish in one shoe, bound to please both your fashion and sporty sides, a deeply unique touch to all your outfits.  </span></li>  <li><span class=\"a-list-item\"> FUNCTIONAL HI-TOP SNEAKERS: We love sneakers all day long. Breathable upper and a plush padded footbed, perfect for a quick walk around town. Style these with your favorite shorts, denim or athletic wear.  </span></li>  <li><span class=\"a-list-item\"> ANTI-COLLISION TOE &amp; SHOCKING: The outer toe part and sole of shoes are made of durable PU leather. It\'s wear-resistant and fold resistant, which can resist hard objects as well as get the rebounnding and cushioning effect when you walking.Ortholite footbed to improve a comfortable pedaling feeling and relieve foot fatigue.  </span></li>  </ul>',11,17,15,1500,1,0,'Bacca Bucci','',0,0),(21,'Bacca Bucci Hector Men\'s Street Style Hi-top Air Sole Solid Sneakers for Men | Casual Shoes for Men','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> Sole: Ethylene Vinyl Acetate  </span></li>  <li><span class=\"a-list-item\"> Closure: Lace-Up  </span></li>  <li><span class=\"a-list-item\"> Shoe Width: Medium  , Size : 9 </span></li>  <li><span class=\"a-list-item\"> FASHION STYLE - Bacca Bucci men\'s sneakers are&nbsp;the perfect&nbsp;neutral,&nbsp;&nbsp;can&nbsp;wear&nbsp;easily&nbsp;with&nbsp;knickers or trousers&nbsp;relaxed&nbsp;with&nbsp;vogue, good choice for casual wear  </span></li>  <li><span class=\"a-list-item\"> Anti-slip Rubber sole + MD sole : Non-slip sole give your full support and comfort for your feet. Special desigin of the outsole hugs your foot properly, light and comfortable.  </span></li>  <li><span class=\"a-list-item\"> Anti-Collision and Shockproof :- Reinforced heel counter helps keep the feet stable and protect from damages while you move, provide great support effect for the feet.  </span></li>  <li><span class=\"a-list-item\"> Daily Life Use :- Fashion unique design perfect choice to pair with any occasion: casual, walking, jogging, indoor, sports, outdoor, travel, exercise, workout and so on.  </span></li>  <li><span class=\"a-list-item\"> 100% guarantee shopping :- Our professional design to production so that you do not have any risk of product quality problems. We offer a 100% risk free money back guarantee if you are not excited about product quality problems for any reason.  </span></li>  </ul>',11,17,25,1700,1,0,'Bacca Bucci','',0,1),(22,'Shreejee Honey - 100% Pure and Natural Honey 250 gm, Pack of 2, Useful for Weight Loss, Immunity Booster','<table class=\"a-normal a-spacing-micro\">  <tbody><tr class=\"a-spacing-small po-flavor\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Flavour</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">Honey</span>   </td> </tr>  <tr class=\"a-spacing-small po-brand\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Brand</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">SHREEJEE</span>   </td> </tr>  <tr class=\"a-spacing-small po-item_weight\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Weight</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">200 Grams</span>   </td> </tr>  <tr class=\"a-spacing-small po-container.type\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Package Information</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">Bottle</span>   </td> </tr>  <tr class=\"a-spacing-small po-specialty\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Specialty</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">Natural</span>   </td> </tr>  <tr class=\"a-spacing-small po-material_feature\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Material Feature</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">Honey</span>   </td> </tr>  <tr class=\"a-spacing-small po-country_as_labeled\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Country/Region Of Origin</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">India</span>   </td> </tr>  <tr class=\"a-spacing-small po-diet_type\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Diet Type</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">Vegetarian</span>   </td> </tr>  <tr class=\"a-spacing-small po-item_package_weight\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Package Weight</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">250 Grams</span>   </td> </tr>  <tr class=\"a-spacing-small po-package_type_name\"> <td class=\"a-span3\">        <span class=\"a-size-base a-text-bold\">Package Type</span>      </td> <td class=\"a-span9\">    <span class=\"a-size-base po-break-word\">Jar</span>   </td> </tr>   </tbody></table>',4,19,50,220,1,0,'Shreejee','',0,0),(23,'Kushuvi 4XL Bean Bag with Footrest with Cushion Ready to Use with Beans (Faux Leather) (Beige - 4XL)','<ul class=\"a-unordered-list a-vertical a-spacing-mini\">   <li><span class=\"a-list-item\"> Soft, Comfotable &amp; Relaxable Bean Bag Chair Filled with Beans For Your Desirable Posture And Make You Feel Calm  </span></li>  <li><span class=\"a-list-item\"> To Decorate your Living Room with The Latest Stylist Bean Bags.  </span></li>  <li><span class=\"a-list-item\"> Double stitched for extra strength  </span></li>  <li><span class=\"a-list-item\"> Double protection with velcro and zipper to prevent beans from spilling  </span></li>  <li><span class=\"a-list-item\"> Product Dimensions - L - 95 cm X B - 95 cm X H - 125 cm  </span></li>  </ul>',2,8,50,2200,0,0,'Kushuvi','',0,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `statusId` int NOT NULL AUTO_INCREMENT,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (6,'Over');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subCategoryId` int NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(30) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`subCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,'Wired Router',1,0),(2,'Wireless Router',1,0),(3,'4G Router',1,0),(4,'5G Router',1,0),(5,'Other',1,0),(6,'Chairs',2,0),(7,'Sofa',2,0),(8,'BeanBags',2,0),(9,'Other',2,0),(10,'Tools',3,0),(11,'Other',3,0),(12,'Proteing Powders',4,0),(13,'Soya Powders',4,0),(14,'Vitamins',4,0),(15,'Iphone',5,0),(16,'Android',5,0),(17,'Sports Shoes',11,0),(18,'Casual Shoes',11,0),(19,'Honey',4,0),(20,'Dummy',12,0);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `contactNum` varchar(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `imageUrl` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ram','sita','ram@sita.com','laxman',2,NULL,'Male',NULL,NULL,NULL,'01-03-2023',NULL),(2,'sita','ram','sita@ram.com','sita',2,'OPNX6V','Male',NULL,NULL,NULL,'22-03-2023',NULL),(3,'laxman','ram','laxman@ram.com','laxman',2,NULL,'Male',NULL,NULL,NULL,'22-03-2023',NULL),(4,'admin','admin','admin@ecom.com','admin',1,NULL,'Male',NULL,NULL,NULL,'22-03-2023','assets/profiles/4/user2.jpg'),(5,'james','bond','tejas14all@gmail.com','12345',2,'','Male',NULL,NULL,NULL,'22-03-2023',NULL),(6,'ravan','patel','ravan@gmail.com','ravan',2,NULL,'Male',NULL,NULL,NULL,'22-03-2023',NULL),(7,'x','x','x@x.com','x',2,NULL,'Male',NULL,NULL,NULL,'22-03-2023',NULL),(9,'y','y','y@y.com','y',2,NULL,'Male',NULL,NULL,NULL,'22-03-2023',NULL),(10,'April','Patel','april@gmail.com','april',2,'5AIptp',NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2023-04-12 12:08:26
