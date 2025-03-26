-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 08:25 PM
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
-- Database: `possuper`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(200) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(1, 'LG', 'Active'),
(2, 'sony', 'Deactive'),
(4, 'Add product', 'phone');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(14, 'phone', 'Deactive'),
(15, 'cars', 'Deactive'),
(16, 'computers', 'Deactive'),
(17, 'books', 'Active'),
(18, 'machinery', 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(12) NOT NULL,
  `product` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `costprice` varchar(255) NOT NULL,
  `retailprice` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `Barcode` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `category`, `brand`, `costprice`, `retailprice`, `qty`, `Barcode`, `status`) VALUES
(3, 'clothes', 'just mere clothes', '16', '2', '1400', '1450', '120', '234', 'Active'),
(4, 'machines', 'just mahine', '14', '1', '13400', '21000', '34', '345', 'Active'),
(5, 'bluetooth', 'bluetooth', '16', '1', '230', '250', '123', '543', 'Active'),
(6, 'hp probook g5', 'silvery', '16', '1', '600', '650', '2', '4544554', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(12) NOT NULL,
  `date` varchar(255) NOT NULL,
  `subtotal` int(12) NOT NULL,
  `pay` int(12) NOT NULL,
  `balance` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2023-05-05', 56550, 90000, 33450),
(2, '2023-05-05', 95700, 100000, 4300),
(3, '2023-05-05', 24650, 50000, 25350),
(4, '2023-05-08', 50750, 70000, 19250),
(5, '2023-05-08', 163850, 70000, -93850),
(6, '2023-05-11', 350150, 540000, 189850),
(7, '2023-12-04', 360, 800, 440);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(12) NOT NULL,
  `sales_id` varchar(200) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `sell_price` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `total` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(1, '4', '234', '1450', '23', '33350'),
(2, '4', '234', '1450', '12', '17400'),
(3, '5', '234', '1450', '23', '33350'),
(4, '5', '234', '1450', '12', '17400'),
(5, '5', '234', '1450', '78', '113100'),
(6, '6', '345', '21000', '12', '252000'),
(7, '6', '543', '250', '4', '1000'),
(8, '6', '234', '1450', '67', '97150'),
(9, '7', '234', '120', '3', '360');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
