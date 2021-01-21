-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 06:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycompany`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_products` (IN `product_name` VARCHAR(50), IN `product_details` VARCHAR(200), IN `product_price` DECIMAL(5,2))  NO SQL
INSERT INTO products(product_name,product_details,product_price) VALUES(product_name,product_details,product_price)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_details`, `product_price`) VALUES
(5, 'Mouse', 'This is mouse', '5.00'),
(6, 'keyboard', 'keyboard', '3.00'),
(7, 'eliyas', 'eliyas', '2.00'),
(8, 'eliyas', 'eliyas', '2.00');

--
-- Triggers `products`
--
DELIMITER $$
CREATE TRIGGER `delete_product` AFTER DELETE ON `products` FOR EACH ROW BEGIN
INSERT INTO product_log(id ,product_name,product_price, action,product_id ) VALUES(NULL, old.product_name,old.product_price, "DELETE",old.id);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_product` AFTER INSERT ON `products` FOR EACH ROW BEGIN
INSERT INTO product_log(id ,product_name,product_price,action,product_id ) VALUES(NULL, new.product_name,new.product_price, "INSERT",new.id);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_product` AFTER UPDATE ON `products` FOR EACH ROW BEGIN
INSERT INTO product_log(id ,product_name,product_price,action,product_id ) VALUES(NULL, old.product_name,old.product_price, "UPDATE",old.id);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product_log`
--

CREATE TABLE `product_log` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(5,2) NOT NULL,
  `action` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_log`
--

INSERT INTO `product_log` (`id`, `product_name`, `product_price`, `action`, `time`, `product_id`) VALUES
(1, 'Computer', '10.00', 'INSERT', '2021-01-21 10:42:09', 4),
(2, 'Computer', '10.00', 'DELETE', '2021-01-21 10:43:50', 4),
(3, 'Computer', '20.00', 'INSERT', '2021-01-21 10:53:34', 5),
(4, 'Computer', '20.00', 'UPDATE', '2021-01-21 10:54:04', 5),
(5, 'keyboard', '3.00', 'INSERT', '2021-01-21 10:58:15', 6),
(6, 'eliyas', '2.00', 'INSERT', '2021-01-21 11:06:11', 7),
(7, 'eliyas', '2.00', 'INSERT', '2021-01-21 11:06:33', 8),
(8, 'maruf', '5.00', 'INSERT', '2021-01-21 11:20:06', 9),
(9, 'maruf', '5.00', 'UPDATE', '2021-01-21 11:21:17', 9),
(10, 'alim', '1.00', 'DELETE', '2021-01-21 11:21:44', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'hasan', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_log`
--
ALTER TABLE `product_log`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_log`
--
ALTER TABLE `product_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
