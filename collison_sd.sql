-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collison_sd`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', '2024-05-27 01:27:22', '2024-05-27 01:27:22', NULL),
(2, 'Md. Miron', 'Karim', 'miron.karim@gmail.com', '08768774143', '432, Salt Lake', '', 'kolkata', 'West Bengal', '700064', '2024-05-27 01:30:11', '2024-05-27 01:30:11', NULL),
(3, 'Md. Miron', 'Karim', 'miron.karim@gmail.com', '08768774143', '432, Salt Lake', '', 'kolkata', 'West Bengal', '700064', '2024-05-27 01:30:25', '2024-05-27 01:30:25', NULL),
(4, 'Md. Miron', 'Karim', 'miron.karim@gmail.com', '08768774143', '432, Salt Lake', '', 'kolkata', 'West Bengal', '700064', '2024-05-27 01:39:59', '2024-05-27 01:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers_in_out_times`
--

CREATE TABLE `customers_in_out_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_in_out_times`
--

INSERT INTO `customers_in_out_times` (`id`, `customer_id`, `in_time`, `out_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2024-05-17 15:24:00', '2024-05-27 06:57:22', '2024-05-27 01:27:22', '2024-05-27 01:27:22', NULL),
(2, 2, '2024-05-27 12:32:00', '2024-05-27 07:00:11', '2024-05-27 01:30:11', '2024-05-27 01:30:11', NULL),
(3, 3, '2024-05-27 12:32:00', '2024-05-27 07:00:25', '2024-05-27 01:30:25', '2024-05-27 01:30:25', NULL),
(4, 4, '2024-05-31 12:44:00', '2024-05-27 07:09:59', '2024-05-27 01:39:59', '2024-05-27 01:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(6, '2024_05_27_043822_create_customers_table', 2),
(7, '2024_05_27_043932_create_customers_in_out_times_table', 2),
(8, '2024_05_27_045755_create_products_table', 3),
(9, '2024_05_27_045816_create_product_discounts_table', 3),
(10, '2024_05_27_050652_create_orders_table', 4),
(11, '2024_05_27_050733_create_order_products_table', 4),
(12, '2024_05_27_060636_add_columns_to_product_discount_table', 5),
(13, '2024_05_27_060954_update_columns_to_customes_in_out_time_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `net_amount` double NOT NULL,
  `net_discount` double NOT NULL,
  `grand_total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `first_name`, `last_name`, `email`, `phone`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `net_amount`, `net_discount`, `grand_total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 'Md. Miron', 54, 0, 54, '2024-05-27 01:27:22', '2024-05-27 01:27:22', NULL),
(2, 3, 'Md. Miron', 'Karim', 'miron.karim@gmail.com', '08768774143', '432, Salt Lake', '', 'kolkata', 'West Bengal', '700064', 77, 9.24, 67.76, '2024-05-27 01:30:25', '2024-05-27 01:30:25', NULL),
(3, 4, 'Md. Miron', 'Karim', 'miron.karim@gmail.com', '08768774143', '432, Salt Lake', '', 'kolkata', 'West Bengal', '700064', 168, 23.8, 144.2, '2024-05-27 01:39:59', '2024-05-27 01:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `net_amount` double NOT NULL,
  `net_discount` double NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `net_amount`, `net_discount`, `total_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 6, 54, 0, 54, '2024-05-27 01:27:22', '2024-05-27 01:27:22', NULL),
(2, 2, 8, 77, 9.24, 67.76, '2024-05-27 01:30:25', '2024-05-27 01:30:25', NULL),
(3, 3, 4, 91, 14.56, 76.44, '2024-05-27 01:39:59', '2024-05-27 01:39:59', NULL),
(4, 3, 8, 77, 9.24, 67.76, '2024-05-27 01:39:59', '2024-05-27 01:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `descrition` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `descrition`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'eggs', '', 98, '2024-05-27 00:24:34', '2024-05-27 00:24:34', '2024-05-27 05:57:11'),
(2, 'eggs', '', 2, '2024-05-27 05:57:25', '2024-05-27 05:57:23', '2024-05-27 05:57:20'),
(3, 'eggs', '', 13, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(4, 'coke', '', 91, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(5, 'tissues', '', 97, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(6, 'coffee', '', 54, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(7, 'muffins', '', 43, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(8, 'soda', '', 77, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(9, 'cereal', '', 85, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(10, 'sugar', '', 83, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(11, 'butter', '', 19, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL),
(12, 'sauce', '', 68, '2024-05-27 00:27:03', '2024-05-27 00:27:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_discounts`
--

CREATE TABLE `product_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(255) NOT NULL DEFAULT 'percentage' COMMENT 'value will be percentage, amount, etc',
  `quantity` int(11) NOT NULL DEFAULT 0 COMMENT 'quantity much or more to applied discount',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_discounts`
--

INSERT INTO `product_discounts` (`id`, `product_id`, `code`, `discount`, `discount_type`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'eggs', 10, 'percentage', 3, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(2, 4, 'coke', 16, 'percentage', 5, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(3, 5, 'tissues', 42, 'percentage', 4, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(4, 6, 'coffee', 3, 'percentage', 2, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(5, 7, 'muffins', 14, 'percentage', 7, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(6, 8, 'soda', 12, 'percentage', 6, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(7, 9, 'cereal', 9, 'percentage', 8, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(8, 10, 'sugar', 13, 'percentage', 4, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(9, 11, 'butter', 19, 'percentage', 6, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL),
(10, 12, 'sauce', 23, 'percentage', 2, '2024-05-27 00:44:53', '2024-05-27 00:44:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('P2MvmQBMBPqGA2wZYBpMCrjhV7V8pnDS87o3NX0J', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0t3RWRaWkZma2lLc2JHcEdNYVpvU2EyOENUZWNkTnplblI0SWJFNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716793799);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_in_out_times`
--
ALTER TABLE `customers_in_out_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_in_out_times_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_discounts_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers_in_out_times`
--
ALTER TABLE `customers_in_out_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_discounts`
--
ALTER TABLE `product_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers_in_out_times`
--
ALTER TABLE `customers_in_out_times`
  ADD CONSTRAINT `customers_in_out_times_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD CONSTRAINT `product_discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
