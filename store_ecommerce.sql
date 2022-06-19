-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 19, 2022 at 06:45 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `type`, `product_type`) VALUES
(1, 'Women', 'Unstitched'),
(2, 'Women', 'Stitched'),
(3, 'Women', 'Jeans'),
(4, 'Women', 'Hoodies'),
(5, 'Men', 'Tees'),
(6, 'Men', 'Jackets'),
(7, 'Men', 'Trousers'),
(8, 'Men', 'SweatShirts'),
(9, 'Men', 'Hoodies'),
(10, 'Kids', 'Tees'),
(11, 'Kids', 'Eastern'),
(12, 'Kids', 'Trousers'),
(13, 'Kids', 'SweatShirts');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) DEFAULT NULL,
  `c_username` varchar(20) NOT NULL,
  `c_password` varchar(30) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `c_name`, `c_username`, `c_password`, `address`, `phone`, `postal_code`) VALUES
(4, 'Muhammad Itqan Abdullah', 'itqan123', '46706', 'Ghazali hostel, NUST University, Srinagar Highway, H12 Islamabad Gate 2\nMulhal Mughlan,Chakwal Punjab', 3000513044, 48910),
(5, 'Ali Amir', 'ali1234', '12345', 'Ghazali hostel, NUST University, Srinagar Highway, H12 Islamabad Near Gate 2\nIslamabad ICT', 3000513044, 48910),
(6, 'Nirmal Rai', 'nirmal123', '92872', 'Ghazali hostel, NUST University, Srinagar Highway, H12 Islamabad Near Gate 2\nIslamabad ICT', 3000513044, 48910),
(15, 'Ali123', '', '26400', 'K-336 Committiee Chowk Rawalpindi K-336 Committee Chowk Rawalpindi\nRawalpindi Punjab', 923355530116, 46000),
(16, 'waleed ', 'waleed123', '12345', NULL, 3355530116, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_order`
--

DROP TABLE IF EXISTS `c_order`;
CREATE TABLE IF NOT EXISTS `c_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `item_id` (`item_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c_order`
--

INSERT INTO `c_order` (`order_id`, `item_id`, `quantity`, `customer_id`, `size`, `status`) VALUES
(1, 3, 1, 5, 'M', 'pending'),
(1, 4, 1, 4, 'M', 'pending'),
(1, 7, 1, 5, 'M', 'completed'),
(1, 8, 6, 4, 'M', 'completed'),
(1, 19, 1, 5, 'M', 'completed'),
(2, 3, 1, 6, 'M', 'completed'),
(2, 7, 1, 6, 'M', 'completed'),
(2, 19, 1, 6, 'M', 'completed'),
(3, 5, 1, 6, 'M', ''),
(3, 18, 1, 6, 'M', ''),
(4, 5, 1, 6, 'M', ''),
(4, 18, 1, 6, 'M', ''),
(5, 5, 1, 6, 'M', ''),
(5, 18, 1, 6, 'M', ''),
(6, 5, 1, 6, 'M', ''),
(6, 18, 1, 6, 'M', ''),
(7, 5, 1, 6, 'M', ''),
(7, 18, 1, 6, 'M', ''),
(8, 1, 1, 15, 'M', ''),
(8, 5, 1, 15, 'M', ''),
(8, 18, 1, 15, 'M', '');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `img_src1` varchar(255) DEFAULT NULL,
  `img_src2` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `title`, `price`, `img_src1`, `img_src2`, `category_id`) VALUES
(1, 'Relax Fit Magic Hoodie', 1390, 'girls hoodiefront.jpg', 'girls hoodieback.jpg', 4),
(2, 'Women Denim Blue Jeans', 1550, 'ladies jeans front.jpg', 'ladies jeans back.jpg', 3),
(3, 'Yarn Dyed Embroidered Yarn Dyed | Top Bottoms Dupatta', 19490, 'ladies unstitched2front .jpg', 'ladies unstitched2back.jpg', 2),
(4, 'Fabrics 2 Piece Suit', 1990, 'ladies unstitched1front .jpg', 'ladies unstitched2front .jpg', 1),
(5, 'Chill FULL SLEEVES T-SHIRTS', 2499, 'Chill FULL SLEEVES T-SHIRTS-1.jpg', 'Chill FULL SLEEVES T-SHIRTS-2.jpg', 5),
(6, 'Future UNISEX HOODIE', 2499, 'Future UNISEX HOODIE-1.jpg', 'Future UNISEX HOODIE-2.jpg', 9),
(7, 'Smoking Panda Unisex Sweatshirt', 1499, 'Smoking Panda Unisex Sweatshirt-1.jpg', 'Smoking Panda Unisex Sweatshirt-2.jpg', 8),
(8, 'Psycho Men Graphic Tee-Shirt', 999, 'Phsyco Men Graphic T-Shirt-1.jpg', 'Phsyco Men Graphic T-Shirt-2.jpg', 5),
(9, 'Abstract Jogger Pant', 999, 'Abstract Jogger Pant-1.jpg', 'Abstract Jogger Pant-1.jpg', 7),
(10, 'Camo Jogger Pant', 999, 'Camo Jogger Pant-1.jpg', 'Camo Jogger Pant-2.jpg', 7),
(11, 'Blazing Flames UNISEX JACKET', 1999, 'Blazing Flames UNISEX JACKET-1.jpg', 'Blazing Flames UNISEX JACKET-2.jpg', 6),
(12, 'Darck Blue Pattern Art UNISEX JACKET', 1999, 'Darck Blue Pattern Art UNISEX JACKET.jpg', 'Darck Blue Pattern Art UNISEX JACKET-2.jpg', 6),
(13, 'Blue Goku Hoodie', 2499, 'Blue Goku Hoodie.jpg', 'Blue Goku Hoodie.jpg', 9),
(14, 'Cookies Printed Graphic T-Shirt', 999, 'Cookies Printed Graphic T-Shirt-1.jpg', 'Cookies Printed Graphic T-Shirt-2.jpg', 5),
(15, 'Good Miami Full Sleeves T-Shirts', 2499, 'Good Miami Full Sleeves T-Shirts-1.jpg', 'Good Miami Full Sleeves T-Shirts-2.jpg', 5),
(16, 'Navy Basic Kids Kurta', 2999, 'pkids1.webp', 'pkids1b.webp', 11),
(17, 'Chambray Cotton Top', 1999, 'pkids2.webp', 'pkids2b.webp', 10),
(18, 'Black Basic Kids Kurta', 2999, 'pkids3.webp', 'pkids3b.webp', 11),
(19, 'Light Pink-Off-White Cotton Front Open Cardigan', 1599, 'pkids4.webp', 'pkids4b.webp', 13);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_order`
--
ALTER TABLE `c_order`
  ADD CONSTRAINT `c_order_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `c_order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
