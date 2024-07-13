-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 09:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E'),
(14, 'SAIFUZZAMAN', 'saif', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(9, 'Wraps', 'Food_Category_374.jpg', 'Yes', 'Yes'),
(10, 'Pasta', 'Food_Category_948.jpg', 'Yes', 'Yes'),
(11, 'Sandwich', 'Food_Category_536.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Ham Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '4.00', 'Food-Name-6340.jpg', 5, 'Yes', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', '9.00', 'Food-Name-8298.jpg', 4, 'No', 'Yes'),
(9, 'Chicken Wrap', 'Crispy flour tortilla loaded with juicy chicken, bacon, lettuce, avocado and cheese drizzled with a delicious spicy Ranch dressing.', '5.00', 'Food-Name-3461.jpg', 9, 'Yes', 'Yes'),
(10, 'Cheeseburger', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty.', '4.00', 'Food-Name-433.jpeg', 5, 'Yes', 'Yes'),
(11, 'Grilled Cheese Sandwich', 'Assembled by creating a cheese filling, often cheddar or American between two slices of bread and is then heated until the bread browns and cheese melts.', '3.00', 'Food-Name-3631.jpg', 11, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(11, 'Smoky BBQ Pizza', '9.00', 1, '9.00', '2022-10-15 08:09:35', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(12, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:16:06', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(13, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:17:49', 'Ordered', 'ssdsd', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(14, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:18:14', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(15, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:19:24', 'Ordered', 'Anika Hossain', '0192883883', 'anika11@gmail.com', 'bashundhara'),
(16, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:23:08', 'Ordered', 'ssdsd', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(17, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:25:19', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(18, 'Chicken Wrap', '5.00', 1, '5.00', '2022-10-15 08:26:21', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(19, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:27:24', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(20, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 08:35:57', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(21, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:06:37', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(22, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:31:05', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(23, 'Chicken Wrap', '5.00', 1, '5.00', '2022-10-15 09:37:09', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(24, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:38:30', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(25, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:43:12', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(26, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:46:00', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(27, 'Grilled Cheese Sandwich', '3.00', 1, '3.00', '2022-10-15 09:47:37', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(28, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:48:51', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(29, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:51:45', 'Ordered', 'ewr', '0192883883', 'rwerw@G.COM', 'bashundhara'),
(30, 'Chicken Wrap', '5.00', 1, '5.00', '2022-10-15 09:53:04', 'Ordered', 'ssdsd', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(31, 'Ham Burger', '4.00', 1, '4.00', '2022-10-15 09:55:23', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara'),
(32, 'Ham Burger', '4.00', 1, '4.00', '2022-10-16 09:45:45', 'Ordered', 'mrittika', '0192883883', 'mrittika@gmail.com', 'bashundhara');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(225) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'mrittika', 'mrittikasengupta3@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'david', 'david@gmail.com', '099ebea48ea9666a7da2177267983138'),
(3, 'donald', 'donald@gmail.com', '0d343c0f0ca763f983c8042350059f56'),
(4, 'mrittikasengupta', 'mrittika@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'piter', 'piter@gmail.com', 'abcd6752c76a133d4592d6b24997255f'),
(6, 'anika', 'ee@gmail.com', '25f9e794323b453885f5181f1b624d0b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
