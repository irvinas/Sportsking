-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 07:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportsking`
--
CREATE DATABASE IF NOT EXISTS `sportsking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sportsking`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(4) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `ContactNumber` varchar(11) NOT NULL,
  `EmailAddress` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Postcode` varchar(8) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Passwd` varchar(50) NOT NULL,
  `Admin` varchar(50) DEFAULT NULL,
  `CardNumber` varchar(16) NOT NULL,
  `CVV` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `ContactNumber`, `EmailAddress`, `Address`, `City`, `Postcode`, `Country`, `Passwd`, `Admin`, `CardNumber`, `CVV`) VALUES
(101, 'Irvin', 'Radz', '0367484995', 'ir@gmail.com', '64 Avenue Rd', 'Derry', 'BT44 8SL', 'Northern Ireland', 'Derry123', NULL, '3684903457892345', '311'),
(102, 'Ethan', 'Jones', '78692378', 'jones@gmail.com', '56 King\'s Street', 'Belfast', 'BT35 7GH', 'Northern Ireland', 'Jonesy21', NULL, '3749506985647274', '244'),
(104, 'Ethan', 'Doherty', '07857465916', 'Doherty-E85@gmail.com', '30 Ardanlee', 'Derry', 'BT48 8SL', 'Northern Ireland', 'Liverpool1', NULL, '7465869684758586', '468'),
(105, 'Henry', 'Woodrow', '07857465919', 'hwoodrow@gmail.com', '113 Turner Road', 'Belfast', 'BT35 7GH', 'Northern Ireland', 'Horses12', NULL, '4789304182394523', '023'),
(500, 'Sportsking', 'Admin', '00000000000', 'admin@sportsking.com', '243 Upper Street, Islington', 'London', 'N1 1RU', 'England', 'Sportistheking', 'Admin', '0923458995849050', '234'),
(501, 'Conn', 'Meehan', '04856723984', 'meeks@gmail.com', '12 Lake Park', 'Antrim', 'BT35 8SL', 'Northern Ireland', 'Gunners2003', NULL, '0947586923456781', '257'),
(502, 'Hugh', 'Fletcher', '07823465786', 'hughflecther@gmail.com', '89 Beach Way ', 'Abeerden', 'AB1 9UF', 'Scotland', 'StarsUnited', NULL, '2738475906578123', '509'),
(503, 'Leo', 'McLaughlin', '07446739586', 'mclaughlin@gmail.com', '101 Shepherd\'s Way ', 'Cardiff', 'DH1 5GH', 'Wales', 'CardiffCity20', NULL, '3894093678123456', '624'),
(504, 'Kieran ', 'Hutchman', '07862389435', 'hutchman123@outlook.com', '78 Turner\'s Cross', 'Leicester ', 'CA10 1RL', 'England ', 'Hope2023', NULL, '8367849581279036', '880'),
(505, 'John', 'Roberts', '07547830293', 'johnr@gmail.com', '13 King St', 'Edinburgh', 'PU12 5AF', 'Scotland', 'Roses156', NULL, '1234567890123456', '123'),
(506, 'Jane', 'Donnelly', '07359752579', 'djane@yahoo.com', '456 Elm St', 'Belfast', 'BT35 7DF', 'Northern Ireland', 'United45', NULL, '2345678901234567', '456'),
(507, 'Bob', 'Smith', '07945876992', 'bobsmith16@gmail.com', '789 White St', 'Manchester', 'DO15 9AB', 'England', 'Manc458', NULL, '3456789012345678', '789'),
(508, 'Alice', 'Jones', '555-3456', 'alicejones@outlook.com', '321 Maple Ave', 'Swansea', '	PA34 3G', 'Wales', 'Swans90', NULL, '4567890123456789', '012'),
(509, 'Frank', 'Lee', '07651789236', 'frank.lee@gmail.com', '654 Pine St', 'Glasgow', 'BE56 9AK', 'Scotland', 'Leesy67', NULL, '5678901234567890', '345'),
(510, 'Mary', 'Smith', '07368945671', 'marys@outlook.com', '987 Cedar St', 'London', 'NE14 5DS', 'England', 'Summer35', NULL, '6789012345678901', '678'),
(511, 'Tom', 'Johnson', '07567893467', 'tomjohnson@gmail.com', '654 Oak St', 'Newcastle', 'BE23 7GH', 'England', 'ToonArmy4', NULL, '7890123456789012', '901');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `OrderID` int(4) NOT NULL,
  `ProductID` int(4) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `ProductTotal` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`OrderID`, `ProductID`, `Quantity`, `ProductTotal`) VALUES
(1, 202, 1, 60.00),
(1, 208, 2, 120.00),
(2, 202, 1, 60.00),
(2, 207, 1, 35.00),
(3, 202, 1, 60.00),
(3, 207, 1, 35.00),
(4, 209, 1, 30.00),
(4, 210, 1, 60.00),
(5, 207, 5, 175.00),
(5, 208, 3, 180.00),
(6, 227, 1, 70.00),
(7, 202, 1, 60.00),
(7, 227, 1, 70.00),
(8, 242, 1, 50.00),
(8, 259, 3, 90.00),
(9, 204, 1, 75.00),
(9, 243, 1, 50.00),
(10, 215, 5, 225.00),
(11, 202, 2, 120.00),
(12, 227, 1, 70.00),
(13, 207, 1, 35.00),
(14, 202, 2, 120.00),
(15, 203, 1, 45.00),
(16, 228, 1, 35.00),
(16, 244, 1, 40.00),
(16, 260, 1, 30.00),
(18, 227, 1, 70.00),
(19, 243, 1, 50.00),
(20, 226, 1, 55.00),
(21, 227, 1, 70.00),
(22, 232, 1, 60.00),
(23, 242, 1, 50.00),
(24, 203, 1, 45.00),
(25, 239, 1, 55.00),
(26, 230, 1, 85.00),
(27, 225, 1, 60.00),
(28, 232, 1, 60.00),
(29, 203, 1, 45.00),
(30, 236, 1, 30.00),
(31, 228, 1, 35.00),
(32, 202, 1, 60.00),
(32, 203, 1, 45.00),
(33, 207, 1, 35.00),
(34, 202, 1, 60.00),
(35, 204, 1, 75.00),
(36, 204, 1, 75.00),
(37, 210, 1, 60.00),
(38, 206, 1, 50.00),
(39, 216, 1, 45.00),
(40, 220, 1, 50.00),
(41, 222, 1, 30.00),
(42, 224, 1, 30.00),
(43, 209, 1, 30.00),
(44, 211, 1, 55.00),
(45, 218, 1, 25.00),
(46, 208, 1, 60.00),
(47, 220, 1, 50.00),
(48, 207, 1, 35.00),
(49, 211, 1, 55.00),
(50, 212, 1, 40.00),
(51, 207, 1, 35.00),
(52, 214, 1, 60.00),
(53, 208, 1, 60.00),
(54, 203, 1, 45.00),
(54, 219, 1, 30.00),
(55, 207, 1, 35.00),
(56, 210, 1, 60.00),
(57, 207, 1, 35.00),
(58, 203, 1, 45.00),
(59, 206, 1, 50.00),
(60, 203, 1, 45.00),
(61, 207, 1, 35.00),
(62, 214, 1, 60.00),
(63, 212, 1, 40.00),
(64, 204, 1, 75.00),
(64, 207, 1, 35.00),
(65, 203, 1, 45.00),
(66, 208, 1, 60.00),
(67, 212, 1, 40.00),
(68, 206, 2, 100.00),
(68, 207, 3, 105.00),
(69, 203, 2, 90.00),
(69, 208, 1, 60.00),
(70, 201, 1, 180.00),
(70, 212, 1, 40.00),
(71, 209, 1, 30.00),
(72, 202, 1, 60.00),
(73, 212, 1, 40.00),
(74, 222, 1, 30.00),
(75, 208, 1, 60.00),
(76, 207, 1, 35.00),
(77, 210, 1, 60.00),
(78, 208, 1, 60.00),
(79, 215, 1, 45.00),
(80, 207, 1, 35.00),
(81, 212, 1, 40.00),
(82, 211, 1, 55.00),
(83, 211, 1, 55.00),
(84, 202, 2, 120.00),
(84, 208, 1, 60.00),
(94, 212, 1, 40.00),
(94, 214, 2, 120.00),
(95, 205, 5, 275.00),
(96, 211, 1, 55.00),
(97, 202, 1, 60.00),
(98, 206, 1, 50.00),
(99, 202, 1, 60.00),
(100, 202, 1, 60.00),
(101, 218, 1, 25.00),
(102, 205, 1, 55.00),
(103, 205, 1, 55.00),
(104, 210, 1, 60.00),
(105, 203, 1, 45.00),
(106, 209, 1, 30.00),
(107, 217, 1, 45.00),
(108, 221, 1, 50.00),
(110, 202, 1, 60.00),
(111, 202, 1, 60.00),
(112, 206, 2, 100.00),
(112, 244, 1, 40.00),
(113, 204, 1, 75.00),
(113, 260, 1, 30.00),
(113, 263, 1, 10.00),
(114, 228, 1, 35.00),
(115, 244, 2, 80.00),
(116, 244, 1, 40.00),
(117, 212, 2, 80.00),
(117, 258, 3, 105.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(4) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderTotal` decimal(7,2) NOT NULL,
  `CustomerID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `OrderTotal`, `CustomerID`) VALUES
(1, '2023-04-05', 180.00, 102),
(2, '2023-04-05', 95.00, 101),
(3, '2023-04-05', 95.00, 101),
(4, '2023-04-05', 90.00, 101),
(5, '2023-04-05', 355.00, 101),
(6, '2023-04-07', 70.00, 101),
(7, '2023-04-07', 130.00, 102),
(8, '2023-04-07', 140.00, 101),
(9, '2023-04-07', 125.00, 102),
(10, '2023-04-08', 225.00, 102),
(11, '2023-04-08', 120.00, 101),
(12, '2023-04-09', 70.00, 101),
(13, '2023-04-09', 35.00, 101),
(14, '2023-04-11', 120.00, 101),
(15, '2023-04-11', 45.00, 101),
(16, '2023-04-12', 105.00, 101),
(17, '2023-04-12', 105.00, 101),
(18, '2023-04-12', 70.00, 101),
(19, '2023-04-12', 50.00, 101),
(20, '2023-04-12', 55.00, 101),
(21, '2023-04-12', 70.00, 101),
(22, '2023-04-12', 60.00, 101),
(23, '2023-04-12', 50.00, 101),
(24, '2023-04-12', 45.00, 101),
(25, '2023-04-12', 55.00, 101),
(26, '2023-04-12', 85.00, 101),
(27, '2023-04-12', 60.00, 101),
(28, '2023-04-12', 60.00, 101),
(29, '2023-04-12', 45.00, 101),
(30, '2023-04-12', 30.00, 101),
(31, '2023-04-12', 35.00, 101),
(32, '2023-04-13', 105.00, 101),
(33, '2023-04-13', 35.00, 101),
(34, '2023-04-13', 60.00, 101),
(35, '2023-04-13', 75.00, 101),
(36, '2023-04-13', 75.00, 101),
(37, '2023-04-13', 60.00, 101),
(38, '2023-04-13', 50.00, 101),
(39, '2023-04-13', 45.00, 101),
(40, '2023-04-13', 50.00, 101),
(41, '2023-04-13', 30.00, 101),
(42, '2023-04-13', 30.00, 101),
(43, '2023-04-13', 30.00, 101),
(44, '2023-04-13', 55.00, 101),
(45, '2023-04-13', 25.00, 101),
(46, '2023-04-13', 60.00, 101),
(47, '2023-04-13', 50.00, 101),
(48, '2023-04-13', 35.00, 101),
(49, '2023-04-13', 55.00, 101),
(50, '2023-04-13', 40.00, 101),
(51, '2023-04-13', 35.00, 101),
(52, '2023-04-13', 60.00, 101),
(53, '2023-04-13', 60.00, 101),
(54, '2023-04-13', 75.00, 101),
(55, '2023-04-13', 35.00, 101),
(56, '2023-04-13', 60.00, 101),
(57, '2023-04-13', 35.00, 101),
(58, '2023-04-13', 45.00, 101),
(59, '2023-04-13', 50.00, 101),
(60, '2023-04-13', 45.00, 101),
(61, '2023-04-13', 35.00, 101),
(62, '2023-04-13', 60.00, 101),
(63, '2023-04-13', 40.00, 101),
(64, '2023-04-13', 110.00, 101),
(65, '2023-04-13', 45.00, 101),
(66, '2023-04-13', 60.00, 101),
(67, '2023-04-13', 40.00, 101),
(68, '2023-04-13', 205.00, 101),
(69, '2023-04-13', 150.00, 101),
(70, '2023-04-13', 220.00, 101),
(71, '2023-04-13', 30.00, 101),
(72, '2023-04-13', 60.00, 101),
(73, '2023-04-13', 40.00, 101),
(74, '2023-04-13', 30.00, 101),
(75, '2023-04-13', 60.00, 101),
(76, '2023-04-13', 35.00, 101),
(77, '2023-04-13', 60.00, 101),
(78, '2023-04-13', 60.00, 101),
(79, '2023-04-13', 45.00, 101),
(80, '2023-04-13', 35.00, 101),
(81, '2023-04-13', 40.00, 101),
(82, '2023-04-13', 55.00, 101),
(83, '2023-04-13', 55.00, 101),
(84, '2023-04-13', 180.00, 101),
(94, '2023-04-14', 160.00, 101),
(95, '2023-04-14', 275.00, 102),
(96, '2023-04-14', 55.00, 102),
(97, '2023-04-14', 60.00, 102),
(98, '2023-04-14', 50.00, 102),
(99, '2023-04-14', 60.00, 102),
(100, '2023-04-14', 60.00, 102),
(101, '2023-04-14', 25.00, 102),
(102, '2023-04-14', 55.00, 102),
(103, '2023-04-14', 55.00, 102),
(104, '2023-04-14', 60.00, 102),
(105, '2023-04-14', 45.00, 102),
(106, '2023-04-14', 30.00, 102),
(107, '2023-04-14', 45.00, 102),
(108, '2023-04-14', 50.00, 102),
(110, '2023-04-21', 60.00, 101),
(111, '2023-04-21', 60.00, 101),
(112, '2023-04-30', 140.00, 503),
(113, '2023-04-30', 115.00, 508),
(114, '2023-04-30', 35.00, 510),
(115, '2023-04-30', 80.00, 510),
(116, '2023-04-30', 40.00, 506),
(117, '2023-04-30', 185.00, 506);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(4) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Quantity` int(11) DEFAULT NULL CHECK (`Quantity` >= 0),
  `Brand` varchar(50) NOT NULL,
  `Colour` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `Price`, `Quantity`, `Brand`, `Colour`, `Category`, `image`) VALUES
(201, 'North Face Nupste Blue Coat', 180.00, 56, 'North Face', 'Blue', 'Men', 'north-face-nuptse-blue.jpg'),
(202, 'Levis Blue Hoodie', 60.00, 118, 'Levis', 'Blue', 'Men', 'levis-blue-hoodie1.jpg'),
(203, 'Adidas Blue Sweatshirt', 45.00, 3, 'Adidas', 'Blue', 'Men', 'adidas-blue1.jpg'),
(204, 'Mercier Red Hoodie', 75.00, 11, 'Mercier', 'Red', 'Men', 'mercier-red-hoodie1.jpg'),
(205, 'Under Armour Black Jacket', 55.00, 18, 'Under Armour', 'Black', 'Men', 'under-armour-black1.jpg'),
(206, 'BOSS Blue Sweatshirt', 50.00, 10, 'BOSS', 'Blue', 'Men', 'boss-sweat-blue1.jpg'),
(207, 'North Face White T-Shirt', 35.00, 0, 'North Face', 'White', 'Men', 'north-face-tshirt-white1.jpg'),
(208, 'Borussia Dortmund FC Jersey', 60.00, 45, 'Puma', 'Yellow', 'Men', 'dortmund-yellow-tshirt1.jpg'),
(209, 'FC Barcelona Training Jersey', 30.00, 34, 'Nike', 'Blue', 'Men', 'barcelona-top1.jpg'),
(210, 'Liverpool FC Jersey', 60.00, 56, 'Nike', 'Red', 'Men', 'liverpool-shirt1.jpg'),
(211, 'Grey Nike Foundation Hoodie', 55.00, 36, 'Nike', 'Grey', 'Men', 'grey-nike-foundation1.jpeg'),
(212, 'Pink Nike Foundation T-Shirt', 40.00, 20, 'Nike', 'Pink', 'Men', 'nike-foundation-pink1.jpg'),
(213, 'Emporium Armani Black Sweatshirt', 60.00, 25, 'Emporium Armani', 'Black', 'Men', 'armani-black1.jpg'),
(214, 'Tommy Hilfiger Black Sweatshirt', 60.00, 38, 'Tommy Hilfiger', 'Black', 'Men', 'tommy-sweat-black2.jpg'),
(215, 'Adidas Originals Blue Sweatshirt', 45.00, 32, 'Adidas', 'Blue', 'Men', 'adidas-sweat-blue1.jpg'),
(216, 'Fred Perry The Original Collection Navy T-Shirt', 45.00, 28, 'Fred Perry', 'Navy Blue', 'Men', 'fred-perry-navy-tshirt1.jpg'),
(217, 'Blue Nike Jacket', 45.00, 35, 'Nike', 'Blue', 'Men', 'blue-nike-jacket1.jpg'),
(218, 'Nike Sport White T-Shirt', 25.00, 37, 'Nike', 'White', 'Men', 'nike-white-tshirt1.jpg'),
(219, 'North Face White T-Shirt', 30.00, 23, 'North Face', 'White', 'Men', 'north-face-white-tshirt1.jpeg'),
(220, 'Nike Green Joggers', 50.00, 13, 'Nike', 'Green', 'Men', 'nike-green-joggers1.jpg'),
(221, 'Nike Dark Blue Joggers', 50.00, 52, 'Nike', 'Dark Blue', 'Men', 'nike-darkblue-joggers1.jpg'),
(222, 'North Face Blue Shorts', 30.00, 21, 'North Face', 'Blue', 'Men', 'north-face-blue-shorts1.jpg'),
(223, 'Nike Jordan Shorts', 35.00, 61, 'Nike', 'Red', 'Men', 'nike-jordans-shorts1.jpg'),
(224, 'Adidas Originals Navy Shorts', 30.00, 12, 'Adidas', 'Navy Blue', 'Men', 'adidas-navy-shorts1.jpg'),
(225, 'Nike Pink Jacket', 60.00, 16, 'Nike', 'Pink', 'Womens', 'nike-pink-jacket-w1.jpg'),
(226, 'Adidas Green Jacket', 55.00, 64, 'Adidas', 'Green', 'Womens', 'adidas-green-jacket-w1.jpg'),
(227, 'Los Angeles Lakers Jacket', 70.00, 77, 'Lakers', 'Purple', 'Womens', 'los-angeles-lakers-jacket1.jpg'),
(228, 'Converse White T-Shirt', 35.00, 29, 'Converse', 'White', 'Womens', 'converse-white-tshirt-w1.jpg'),
(229, 'Calvin Klein Purple Sweatshirt', 70.00, 20, 'Calvin Klein', 'Purple', 'Womens', 'ck-purple-sweatshirt.jpg'),
(230, 'Armani Green Sweatshirt', 85.00, 53, 'Armani', 'Green', 'Womens', 'armani-green-sweat-w1.jpg'),
(231, 'North Face Black Coat', 140.00, 13, 'North Face', 'Black', 'Womens', 'black-north-face-w1.jpg'),
(232, 'Adidas Red Jacket', 60.00, 15, 'Adidas', 'Red', 'Womens', 'red-adidas-jacket1.jpg'),
(233, 'North Face Beige Jacklet', 75.00, 20, 'North Face', 'Beige', 'Womens', 'north-face-beige.jpg'),
(234, 'New Balance Blue Sweatshirt', 40.00, 6, 'New Balance', 'Blue', 'Womens', 'newbalance-blue-sweatshirt.jpg'),
(235, 'Columbia Pink Fleece', 70.00, 14, 'Columbia', 'Pink', 'Womens', 'columbia-pink-fleece-wq1.jpg'),
(236, 'Boss Black T-Shirt', 30.00, 15, 'Boss', 'Black', 'Womens', 'hugo_t-shirt.jpg'),
(237, 'Puma Orange Joggers', 60.00, 19, 'Puma', 'Orange', 'Womens', 'puma_orange_joggers.jpg'),
(238, 'Tommy Hilfiger Joggers', 70.00, 11, 'Tommy Hilfiger', 'Navy Blue', 'Womens', 'tommy_joggers.jpg'),
(239, 'Nike Black Joggers', 55.00, 19, 'Nike', 'Black', 'Womens', 'black-nike-joggers.2jpg.webp'),
(240, 'Adidas Black Cargo Pants', 75.00, 25, 'Adidas', 'Black', 'Womens', 'adidas-black-cargo-pants.jpg'),
(241, 'Nike Tech Fleece Hoodie Junior', 45.00, 23, 'Nike', 'Navy Blue', 'Kids', 'Nike_Tech_Fleece_Hoodie_Jr.jpg'),
(242, 'Nike Windrunner Jacket Junior', 50.00, 31, 'Nike', 'Black', 'Kids', 'Nike_Windrunner_Jacket_Jr.jpg'),
(243, 'Berghaus Colour Block Padded Jacket', 50.00, 14, 'Berghaus', 'Black', 'Kids', 'Berghaus_Padded_Jacket.jpg'),
(244, 'Adidas Badge of Sport Padded Jacket,', 40.00, 0, 'Adidas', 'Grey', 'Kids', 'Adidas_Padded_Jacket.jpg'),
(245, 'Adidas Originals Girls Overhead Crop Hoodie', 20.00, 4, 'Adidas', 'Pink', 'Kids', 'adidas_Girls_Hoodie.jpg'),
(246, 'McKenzie Essential 2 Overhead Hoodie', 25.00, 2, 'McKenzie', 'White', 'Kids', 'McKenzie_Hoodie.jpg'),
(247, 'Lacoste Logo T-Shirt', 20.00, 15, 'Lacoste', 'Blue', 'Kids', 'Lacoste_T-Shirt.jpg'),
(248, 'Puma Girls Core Logo Hoodie', 30.00, 9, 'Puma', 'Blue', 'Kids', 'Puma_Girls_Hoodie.jpg'),
(249, 'Nike Sportswear All Over Print T-Shirt', 18.00, 6, 'Nike', 'Black', 'Kids', 'Nike_T-Shirt.jpg'),
(250, 'North Face Fine Box Logo T-Shirt', 15.00, 8, 'North Face', 'Beige', 'Kids', 'North_Face_T-Shirt.jpg'),
(251, 'Sonneti Girls Porto Overhead Hoodie', 35.00, 12, 'Sonneti', 'Grey', 'Kids', 'Sonneti_Girls_Hoodie.jpg'),
(252, 'Under Armour Colour Block T-Shirt', 20.00, 4, 'Under Amour', 'Black', 'Kids', 'Under_Armour_T-Shirt.jpg'),
(253, 'Adidas Originals Fade Grid T-Shirt', 15.00, 22, 'Adidas', 'Black', 'Kids', 'adidas_T-Shirt.jpg'),
(254, 'Tommy Hilifiger Cut & Sew Essential T-Shirt', 25.00, 17, 'Tommy Hilfiger', 'Black', 'Kids', 'TH_T-Shirt.jpg'),
(255, 'Nike Club Blue Fleece Hoodie Junior', 40.00, 10, 'Nike', 'Blue', 'Kids', 'Blue_Nike_Hoodie.jpg'),
(256, 'Nike Dri-FIT Short Sleeve T-Shirt', 25.00, 13, 'Nike', 'Black', 'Kids', 'Black_Nike_T-Shirt.jpg'),
(257, 'Armani Navy Cap', 35.00, 20, 'Armani', 'Navy Blue', 'Accessories', 'armani_navy_cap.jpg'),
(258, 'Boss Grey Cap', 35.00, 20, 'Boss', 'Grey', 'Accessories', 'boss_grey_cap.jpg'),
(259, 'North Face Black Cap', 30.00, 14, 'North Face', 'Black', 'Accessories', 'north_face_black.jpg'),
(260, 'Nike Green Cap', 30.00, 26, 'Nike', 'Green', 'Accessories', 'nike_green_cap.jpg'),
(261, 'Nike White Socks 3PK', 10.00, 39, 'Nike', 'White', 'Accessories', 'nike_white_socks.jpg'),
(262, 'Black Adidas Socks 5PK', 15.00, 25, 'Adidas', 'Black', 'Accessories', 'nike_coloured_socks.jpg'),
(263, 'Boss Stripe Socks 3PK', 10.00, 12, 'Boss', 'White', 'Accessories', 'boss_white_socks.jpg'),
(264, 'Black Adidas Socks 6PK', 15.00, 32, 'Adidas', 'Black', 'Accessories', 'black_adidas_socks.jpg'),
(265, 'Adidas Black Bucket Hat', 23.00, 22, 'Adidas', 'Black', 'Accessories', 'adidas_black_bucket_hat.jpg'),
(266, 'Adidas Beige Bucket Hat', 25.00, 0, 'Adidas', 'Beige', 'Accessories', 'adidas_beige_bucket_hat.jpg'),
(267, 'Liverpool FC Bucket Hat', 20.00, 18, 'Nike', 'White', 'Accessories', 'liverpool_fc_bucket_hat.jpg'),
(268, 'Reebok Bucket Hat', 20.00, 35, 'Reebok', 'Green', 'Accessories', 'reebok_bucket_hat.jpg'),
(269, 'Adidas Festival Bag', 18.00, 20, 'Adidas', 'Black', 'Accessories', 'adidas_festival_bag.jpg'),
(270, 'Armani Festival Bag', 30.00, 7, 'Armani', 'Black', 'Accessories', 'ea7_festival_bag.jpg'),
(271, 'Boss Festival Bag', 25.00, 32, 'Boss', 'Navy Blue', 'Accessories', 'boss_festival_bag.jpg'),
(272, 'North Face Festival Bag', 20.00, 51, 'North Face', 'Black', 'Accessories', 'north_face_black_festival_bag.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` int(4) NOT NULL,
  `ReviewTitle` varchar(50) NOT NULL,
  `ReviewDescription` varchar(500) NOT NULL,
  `Rating` int(1) DEFAULT NULL CHECK (`Rating` >= 1 and `Rating` <= 5),
  `ProductID` int(4) NOT NULL,
  `CustomerID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ReviewID`, `ReviewTitle`, `ReviewDescription`, `Rating`, `ProductID`, `CustomerID`) VALUES
(501, 'Excellent Product', 'Awesome stuff guys at Sportsking!', 5, 201, 509),
(502, 'Great Quality Clothes', 'Really great service from the guys at Sportsking keep it up!', 4, 201, 101),
(503, 'Unreal Product', 'Class stuff!', 4, 201, 503),
(504, 'Loved it', 'My Nike Green Joggers are Awesome!', 5, 220, 508),
(505, 'Late Delivery!', 'My product arrived three days late but overall a great product!', 3, 218, 502),
(506, 'Great quality!', 'Sportsking has done it again. The best from Adidas! Keep it up!', 4, 215, 101),
(507, 'Great product', 'Cant wait to buy again! North Face range is great!', 4, 201, 504),
(508, 'Lovely Nike Clothes', 'As a Nike lover, I cant gave enough praise to the guys at Sportsking! Excellent product I received.', 5, 217, 510);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`OrderID`,`ProductID`),
  ADD KEY `fk2_orderproduct` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `fk1_orders` (`CustomerID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `fk1_reviews` (`CustomerID`),
  ADD KEY `fk2_reviews` (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ReviewID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `fk1_orderproduct` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `fk2_orderproduct` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk1_orders` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk1_reviews` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `fk2_reviews` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
