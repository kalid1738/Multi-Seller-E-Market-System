-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 07:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `seller_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `seller_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(15, 10, 'sweets', 'sweet chocolates and caramels', 1, 0, '2023-09-09 19:08:55', NULL),
(16, 10, 'biscuits', 'tasty biscuits and doughnuts ', 1, 0, '2023-09-09 19:09:38', NULL),
(17, 9, 'Suits', 'male and female suits with size from 46 - 56', 1, 0, '2023-09-09 19:15:12', NULL),
(18, 9, 'dresses', 'all size female dresses', 1, 0, '2023-09-09 19:15:36', NULL),
(19, 9, 'jeans', 'all size jeans for female and male', 1, 0, '2023-09-09 19:16:01', NULL),
(20, 8, 'laptop computers', 'computers with different sizes and storage capacities', 1, 0, '2023-09-09 19:18:29', '2023-09-11 00:19:30'),
(21, 8, 'Desktop computers', 'dell and hp brands', 1, 0, '2023-09-09 19:19:02', NULL),
(22, 10, 'soft drinks', 'different kinds of beverages', 1, 0, '2023-09-11 00:14:28', NULL),
(23, 8, 'mobile phones', 'any kind', 1, 0, '2023-09-11 00:17:29', NULL),
(24, 9, 't-shirts', 'male and female all sizes', 1, 0, '2023-09-11 00:26:12', NULL),
(25, 9, 'sweaters', 'all sizes', 1, 0, '2023-09-11 00:26:39', NULL),
(26, 9, 'shirts ', 'all size and colors', 1, 0, '2023-09-11 00:27:05', NULL),
(27, 9, 'trousers ', 'all sizes', 1, 0, '2023-09-11 00:27:28', NULL),
(28, 11, 'beds', 'different sizes', 1, 0, '2023-09-11 00:32:41', NULL),
(29, 11, 'office furnitures', 'new', 1, 0, '2023-09-11 00:33:08', NULL),
(30, 11, 'shelves ', 'new and amazing', 1, 0, '2023-09-11 00:33:43', NULL),
(31, 11, 'dining tables', 'new for family', 1, 0, '2023-09-11 00:34:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `code`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(7, '202309-00001', 'kalid', 'Mohammad ', 'Male', '0945474210', 'addis abeba', 'kalid@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '2023-09-09 18:56:25', NULL),
(8, '202309-00002', 'hailemariam', 'tefera', 'Male', '0978654542', 'kombolcha', 'haile@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '2023-09-09 18:57:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `price`, `date_created`) VALUES
(11, 73, 1, 1000, '2023-09-11 01:10:07'),
(11, 71, 3, 10000, '2023-09-11 01:10:07'),
(12, 12, 1, 100, '2023-09-11 01:10:42'),
(12, 62, 1, 45, '2023-09-11 01:10:42'),
(13, 75, 1, 800, '2023-09-11 01:10:42'),
(13, 72, 1, 1200, '2023-09-11 01:10:42'),
(14, 61, 1, 45, '2023-09-11 01:11:47'),
(15, 70, 1, 15000, '2023-09-11 01:11:47'),
(15, 68, 1, 1000, '2023-09-11 01:11:47'),
(16, 62, 1, 45, '2023-09-11 01:12:16'),
(17, 61, 1, 45, '2023-09-11 01:12:33'),
(18, 74, 5, 800, '2023-09-11 01:12:59'),
(19, 68, 1, 1000, '2023-09-11 01:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `seller_id` int(30) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `code`, `client_id`, `seller_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(9, '202309-00001', 7, 10, 300, 'addis abeba', 0, '2023-09-09 19:21:06', '2023-09-09 19:21:06'),
(10, '202309-00002', 7, 8, 4, 'addis abeba', 5, '2023-09-10 22:45:10', '2023-09-11 01:11:13'),
(11, '202309-00003', 7, 9, 31000, 'addis abeba', 5, '2023-09-11 01:10:07', '2023-09-11 01:11:04'),
(12, '202309-00004', 7, 10, 145, 'addis abeba', 4, '2023-09-11 01:10:41', '2023-09-11 01:14:53'),
(13, '202309-00005', 7, 9, 2000, 'addis abeba', 3, '2023-09-11 01:10:42', '2023-09-11 01:13:54'),
(14, '202309-00006', 7, 10, 45, 'addis abeba', 0, '2023-09-11 01:11:47', '2023-09-11 01:11:47'),
(15, '202309-00007', 7, 8, 16000, 'addis abeba', 0, '2023-09-11 01:11:47', '2023-09-11 01:11:47'),
(16, '202309-00008', 8, 10, 45, 'kombolcha', 5, '2023-09-11 01:12:16', '2023-09-11 01:15:02'),
(17, '202309-00009', 8, 10, 45, 'kombolcha', 1, '2023-09-11 01:12:33', '2023-09-11 01:14:41'),
(18, '202309-00010', 8, 9, 4000, 'kombolcha', 5, '2023-09-11 01:12:58', '2023-09-11 01:13:09'),
(19, '202309-00011', 8, 8, 1000, 'kombolcha', 4, '2023-09-11 01:12:59', '2023-09-11 01:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `seller_id` int(30) DEFAULT NULL,
  `category_id` int(30) DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `seller_id`, `category_id`, `name`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(12, 10, 16, 'OREO Biscuits', '&lt;p&gt;&lt;b&gt;500 kcal tasty biscuit that gives you energy&amp;nbsp;&lt;/b&gt;&lt;/p&gt;', 100, 'uploads/products/Biscuit_packet.jpg', 1, 0, '2023-09-09 19:11:46', '2023-09-11 00:49:20'),
(13, 10, 16, 'bread ', '&lt;p&gt;sweet breads&lt;/p&gt;', 200, 'uploads/products/2.png', 1, 0, '2023-09-10 13:40:25', '2023-09-11 01:05:51'),
(60, 10, 15, 'milky chocolate ', '&lt;p&gt;sweat chocolate&amp;nbsp;&lt;/p&gt;', 50, 'uploads/products/dairy milk.png', 1, 0, '2023-09-11 00:13:40', '2023-09-11 01:02:39'),
(61, 10, 22, 'mirinda', '&lt;b&gt;try it you will love it&lt;/b&gt;', 45, 'uploads/products/Drink-Image-8050.jpeg', 1, 0, '2023-09-11 00:15:30', '2023-09-11 00:55:25'),
(62, 10, 22, 'pepsi', '&lt;p&gt;good for your health&lt;/p&gt;', 45, 'uploads/products/Drink-Image-521.jpeg', 1, 0, '2023-09-11 00:16:03', '2023-09-11 00:54:06'),
(63, 10, 16, 'marie biscuits ', '&lt;p&gt;tasty&lt;/p&gt;', 30, 'uploads/products/marie_Biscuit.jpg', 1, 0, '2023-09-11 00:16:45', '2023-09-11 01:01:09'),
(64, 8, 20, ' asus zenbook', '&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;1000 gb hdd storage&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;8 gb arm&amp;nbsp;&lt;/p&gt;', 50000, 'uploads/products/asus_zenbook_pro_15_B_575px.jpg', 1, 0, '2023-09-11 00:19:17', '2023-09-11 01:01:29'),
(65, 8, 20, 'hp laptop', '&lt;p&gt;1000gb hdd&lt;/p&gt;', 20000, 'uploads/products/laptop_PNG5930.png', 1, 0, '2023-09-11 00:20:02', '2023-09-11 01:06:46'),
(66, 8, 23, 'iphone 6', '&lt;p&gt;24 gb storage&amp;nbsp;&lt;/p&gt;&lt;p&gt;4gb ram&lt;/p&gt;', 10000, 'uploads/products/http___pluspng.com_img-png_iphone-6s-png-iphone-6s-gold-64gb-1000.png', 1, 0, '2023-09-11 00:20:40', '2023-09-11 01:01:50'),
(67, 8, 23, 'hp old laptop', '&lt;p&gt;500 gb&amp;nbsp;&lt;/p&gt;', 5000, 'uploads/products/k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 1, 0, '2023-09-11 00:21:33', '2023-09-11 01:08:55'),
(68, 8, 23, 'nokia', '&lt;p&gt;mini phone&lt;/p&gt;', 1000, 'uploads/products/item_L_4769451_1405060.jpg', 1, 0, '2023-09-11 00:22:01', '2023-09-11 01:05:24'),
(69, 8, 20, 'hp gamin pc', '&lt;p&gt;new&lt;/p&gt;', 45000, 'uploads/products/laptop_PNG5930.png', 1, 0, '2023-09-11 00:23:05', '2023-09-11 01:03:29'),
(70, 8, 23, 'apple ipad', '&lt;p&gt;new&lt;/p&gt;', 15000, 'uploads/products/IPad_Air_2_Wikipedia.png', 1, 0, '2023-09-11 00:23:28', '2023-09-11 01:00:33'),
(71, 9, 17, 'silver suit', '&lt;p&gt;new&lt;/p&gt;', 10000, 'uploads/products/gents-party-wear-suits-500x500.jpg', 1, 0, '2023-09-11 00:25:48', '2023-09-11 01:00:08'),
(72, 9, 27, 'trousers ', '&lt;p&gt;size 30-40&lt;/p&gt;', 1200, 'uploads/products/trouser.jpg', 1, 0, '2023-09-11 00:28:16', '2023-09-11 00:59:51'),
(73, 9, 25, 'black sweater', '&lt;p&gt;black ,new&lt;/p&gt;', 1000, 'uploads/products/2012-Winter-Sweater.jpg', 1, 0, '2023-09-11 00:28:57', '2023-09-11 00:56:21'),
(74, 9, 26, 'shirts', '&lt;p&gt;cream color&lt;/p&gt;', 800, 'uploads/products/pm2.jpg', 1, 0, '2023-09-11 00:29:40', '2023-09-11 00:59:34'),
(75, 9, 24, 't-shirt', '&lt;p&gt;silver for male&lt;/p&gt;', 800, 'uploads/products/images (4).jpg', 1, 0, '2023-09-11 00:30:38', '2023-09-11 00:58:50'),
(76, 11, 28, '1.50 bed', '&lt;p&gt;1.50 very good price&lt;/p&gt;', 1500, 'uploads/products/bedroom-furniture-250x250.jpg', 1, 0, '2023-09-11 00:35:04', '2023-09-11 00:58:25'),
(77, 11, 29, 'office chair ', '&lt;p&gt;new&lt;/p&gt;', 20000, 'uploads/products/office5.jpg', 1, 0, '2023-09-11 00:35:32', '2023-09-11 00:58:07'),
(78, 11, 28, '1.20 bed', '&lt;p&gt;new&lt;/p&gt;', 10000, 'uploads/products/cache-furnitures-ltd-cot-j6619q-wos-60x75.jpg', 1, 0, '2023-09-11 00:35:56', '2023-09-11 00:57:39'),
(79, 11, 31, 'table', '&lt;p&gt;new&lt;/p&gt;', 8000, 'uploads/products/amer-furniture.jpg', 1, 0, '2023-09-11 00:36:16', '2023-09-11 00:57:18'),
(80, 11, 30, 'book shelf', '&lt;p&gt;new&lt;/p&gt;', 5000, 'uploads/products/furniture-book-shelf-250x250.jpg', 1, 0, '2023-09-11 00:36:44', '2023-09-11 00:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `seller_list`
--

CREATE TABLE `seller_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `shop_type_id` int(30) NOT NULL,
  `shop_name` text NOT NULL,
  `shop_owner` text NOT NULL,
  `contact` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_list`
--

INSERT INTO `seller_list` (`id`, `code`, `shop_type_id`, `shop_name`, `shop_owner`, `contact`, `username`, `password`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(8, '202309-00001', 9, 'pc shop', 'adane legese', '1232534520', 'adane@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '2023-09-09 19:05:39', NULL),
(9, '202309-00002', 6, 'helen boutique ', 'helen daniel', '0986465477', 'helen@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '2023-09-09 19:06:30', NULL),
(10, '202309-00003', 7, 'ab foods', 'abreham biscuit', '076563546', 'abreham@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '2023-09-09 19:07:19', NULL),
(11, '202309-00004', 11, 'EY furnitures', 'eyob tilahun', '075639332', 'eyob@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '2023-09-11 00:32:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_type_list`
--

CREATE TABLE `shop_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_type_list`
--

INSERT INTO `shop_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(6, 'wardrobe', 1, 0, '2023-09-09 19:00:02', NULL),
(7, 'packed foods', 1, 0, '2023-09-09 19:00:21', NULL),
(8, 'beverages', 1, 0, '2023-09-09 19:00:45', NULL),
(9, 'computers', 1, 0, '2023-09-09 19:01:02', NULL),
(10, 'mobile phone and accessories ', 1, 0, '2023-09-09 19:01:31', NULL),
(11, 'furniture ', 1, 0, '2023-09-09 19:02:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Multi Seller E-Market System'),
(11, 'logo', 'uploads/logo-1644367440.png'),
(14, 'cover', 'uploads/cover-1644367404.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Admin', '*', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 1, '2023-08-20 14:02:37', '2023-09-10 15:37:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`seller_id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `vendor_id` (`seller_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`seller_id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `seller_list`
--
ALTER TABLE `seller_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_type_id` (`shop_type_id`);

--
-- Indexes for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `seller_list`
--
ALTER TABLE `seller_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_list`
--
ALTER TABLE `category_list`
  ADD CONSTRAINT `category_list_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller_list` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seller_list`
--
ALTER TABLE `seller_list`
  ADD CONSTRAINT `seller_list_ibfk_1` FOREIGN KEY (`shop_type_id`) REFERENCES `shop_type_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
