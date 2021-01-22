-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 10:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_data_store` (IN `name` CHAR(50), IN `address` CHAR(80), IN `contact_no` CHAR(20))  BEGIN
	INSERT INTO manufacturer (id, name, address, contact_no) VALUES ('', name, address, contact_no);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `address`, `contact_no`) VALUES
(10, 'Lg', 'Dhaka', '017870000'),
(11, 'Samsung', 'Borisal', '017870000'),
(12, 'Sony', 'Rangpur', '017870000'),
(14, 'Xawmi', 'Lalmonirhat', '017870000'),
(16, 'Apple', 'Kurigram', '017870000'),
(17, 'Mac', 'Kurigram', '017870000'),
(20, 'Hp', 'Rajsahi', '0178754224'),
(21, 'Lenovo', 'Noakhali', '0178754224'),
(33, 'Assus', 'Comilla', '0178754224'),
(34, 'Dell', 'Jamalpur', '0178754224');

--
-- Triggers `manufacturer`
--
DELIMITER $$
CREATE TRIGGER `after_delete_trigger` AFTER DELETE ON `manufacturer` FOR EACH ROW DELETE FROM product WHERE manufacturer_id = old.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(5) NOT NULL,
  `manufacturer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `manufacturer_id`) VALUES
(11, 'Pendrive', 1200, 10),
(12, 'HDD', 6000, 11),
(13, 'Pendrive', 1200, 12),
(15, 'HDD', 5000, 14),
(17, 'Monitor', 15000, 16);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('siam', 1234),
('admin', 1234),
('johan', 81);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
