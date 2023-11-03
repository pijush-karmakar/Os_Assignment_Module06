-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 05:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ficbusiness`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Liquid food', '2023-11-02 16:58:06', '2023-11-02 16:58:06'),
(2, 'Dry food', '2023-11-02 16:58:06', '2023-11-02 16:58:06'),
(3, 'Vegetables', '2023-11-02 16:59:27', '2023-11-02 16:59:27'),
(4, 'Toy', '2023-11-02 16:59:27', '2023-11-02 16:59:27'),
(5, 'fruits', '2023-11-02 17:02:31', '2023-11-02 17:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `location`, `created_at`, `updated_at`) VALUES
(1, 'jack', 'jack@gmail.com', 'Dhanmondi', '2023-11-02 15:16:44', '2023-11-02 15:16:44'),
(2, 'Zone', 'zone@gmail.com', 'Mohammodpur', '2023-11-02 15:16:44', '2023-11-02 15:16:44'),
(3, 'Bob Smith', 'bob@gmail.com', 'Dhanmondi 15', '2023-11-02 15:21:11', '2023-11-02 15:21:38'),
(4, 'Charlie Brown', 'charlie@gmail.com', 'Dhanmondi 78', '2023-11-02 15:21:11', '2023-11-02 15:21:47'),
(5, 'Diana Ross', 'diana@gmail.com', 'Asad gate', '2023-11-02 15:21:11', '2023-11-02 15:21:59'),
(6, 'Fiona Apple', 'fiana@gmail.com', 'Mirpur', '2023-11-02 15:21:11', '2023-11-02 15:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_amount` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `category_id`, `order_date`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '2023-11-02 16:47:35', '110', '2023-11-02 16:47:35', '2023-11-03 06:00:55'),
(2, 5, 3, '2023-11-02 16:47:35', '234', '2023-11-02 16:47:35', '2023-11-03 06:00:17'),
(3, 1, 1, '2023-11-02 16:48:09', '150', '2023-11-02 16:48:09', '2023-11-03 06:01:01'),
(4, 6, 3, '2023-11-02 16:48:09', '456', '2023-11-02 16:48:09', '2023-11-03 06:00:03'),
(5, 4, 1, '2023-11-02 17:13:47', '222', '2023-11-02 17:13:47', '2023-11-03 06:01:05'),
(6, 1, 1, '2023-11-02 17:13:47', '345', '2023-11-02 17:13:47', '2023-11-03 06:01:27'),
(7, 4, 5, '2023-11-02 17:14:12', '433', '2023-11-02 17:14:12', '2023-11-03 06:01:32'),
(8, 3, 1, '2023-11-03 06:03:45', '218', '2023-11-03 06:03:45', '2023-11-03 06:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 4, 5, '3', '50', '2023-11-02 17:07:46', '2023-11-02 17:07:46'),
(2, 3, 8, '5', '30', '2023-11-02 17:07:46', '2023-11-02 17:07:46'),
(3, 1, 7, '12', '7', '2023-11-02 17:08:52', '2023-11-02 17:08:52'),
(4, 2, 1, '4', '55', '2023-11-02 17:08:52', '2023-11-02 17:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Milk', 'Pran liquid milk with vitamin-D,A etc.', '55', '2023-11-02 16:54:46', '2023-11-02 16:54:46'),
(2, 'Nut', 'imported nut from india.', '650', '2023-11-02 16:54:46', '2023-11-02 16:54:46'),
(3, 'Peanut butter', 'sundrop peanut butter.400gm with extra 50gm', '400', '2023-11-02 16:56:37', '2023-11-02 16:56:37'),
(4, 'Honey', 'Pure honey collected from sundorban', '800', '2023-11-02 16:56:37', '2023-11-02 16:56:37'),
(5, 'Cucumber', 'fresh cucumber collect from field', '50', '2023-11-02 17:01:57', '2023-11-02 17:01:57'),
(6, 'Papaya', 'cheap vegetable papaya', '30', '2023-11-02 17:01:57', '2023-11-02 17:01:57'),
(7, 'Banana', 'healthy food item with vitamin', '100', '2023-11-02 17:04:09', '2023-11-02 17:04:09'),
(8, 'Mango', 'delicious and fresh item', '80', '2023-11-02 17:04:09', '2023-11-02 17:04:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
