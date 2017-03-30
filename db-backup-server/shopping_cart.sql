-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2017 at 09:14 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `name`) VALUES
(1, 'admin@admin.com', '$2y$10$FxlETUgr3Y2GiCXxji0axeKYJC5hOXfOk6.W4zjUz4SKqRrIEcKQy', 'EnqDxljSrNfAydb1ycxeYXSKEDId79QHpQDGPZbuF24sq6y2gXCONCoqMO6c', NULL, '2017-03-16 16:48:47', ''),
(2, 'user3@user3.com', '$2y$10$M1OyA9lwydGg.8a.PgPZpewH9W3vEgwy4Biw34ucZNRkQ2FT8RUHy', '', '2017-03-16 17:41:11', '2017-03-16 17:41:11', ''),
(3, 'test@gmail.com', '$2y$10$FQtrmBKTOaHmgTb7WAOjVez/4ye2B7tTQxp6AFfn20hIq6QzzYgTm', 'Iy1APZiTxsPIT1jvWiNMoTkUZwfSisd8ZwB2MDx5S0X6ZJHJjpfdoO2iWTvc', '2017-03-17 03:18:01', '2017-03-17 03:37:27', ''),
(4, '', '$2y$10$Oo2GgC23LnI6R8RoMvLDh.6GIPUwEwxq5pkOK9vHWqgAQNi6x8wd2', '', '2017-03-17 15:08:48', '2017-03-17 15:08:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-03-17 08:11:17', '2017-03-17 08:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `cart_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2017-03-17 08:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `sub_category_name`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(21, 'cat1', 'eduit', NULL, NULL, '2017-03-16 16:17:57', '2017-03-16 16:26:20'),
(22, 'cat1', 'cat11', NULL, NULL, '2017-03-16 16:18:32', '2017-03-16 16:18:32'),
(23, 'cat1', 'cat21', NULL, NULL, '2017-03-16 16:25:20', '2017-03-16 16:25:20'),
(27, 'sdas', 'ggg', NULL, NULL, '2017-03-16 16:36:50', '2017-03-16 16:36:58'),
(28, 'cattt', 'jdfd', NULL, NULL, '2017-03-16 16:38:11', '2017-03-16 16:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statuss` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `salutation` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryid` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `telefax` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `vdate` date DEFAULT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `statuss`, `created_at`, `updated_at`, `salutation`, `company`, `vatid`, `title`, `firstname`, `lastname`, `address1`, `address2`, `address3`, `postal`, `city`, `state`, `langid`, `countryid`, `telephone`, `telefax`, `website`, `birthday`, `status`, `vdate`, `editor`, `label`, `name`) VALUES
(1, 'user3', 'user3', 'user3@user3.com', '$2y$10$Lz/T3Dag7MEdSq0rReZ4E.7y8jcDnPVMLT/sboOKQcVuv6kdyPWz6', '', 0, '0000-00-00 00:00:00', '2017-03-16 22:11:19', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, 1, NULL, '', '', ''),
(2, 'user2', 'user2', 'user2@user2.com', '$2y$10$Hak7CISZtp53vF2V7tP1/uRhXs8mqjebuRwblENnm5L4zFi2xSEuu', '', 0, '2016-12-04 17:47:05', '2017-03-16 22:10:46', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, 1, NULL, '', '', ''),
(3, 'user1', 'user1', 'user1@user1.com', '$2y$10$wdUo8O4gKFbTeKlA4rdw6uMTRBGQNzIjm/xvHTmcBFiCQrZ3HMboe', '', 1, '2016-12-04 17:47:53', '2017-03-16 22:10:27', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, 1, NULL, '', '', ''),
(4, 'kundan', 'roy', 'test@gmail.com', '$2y$10$ZYWi19RyDm1M/5JE1/ZPvuz0DaBKLR5xK1MVAuwUMmRH/D1FbpYqO', '', 1, '2017-03-16 18:18:54', '2017-03-16 18:20:23', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, 1, NULL, '', '', ''),
(5, '', '', 'demo@example.com', '$2y$10$BP3ZEDEpTLBk4D0jwR.cAeBVh4uSdt3l2kxDyf0ZIUSSwJqzZad06', NULL, 0, '2017-03-17 09:59:30', '2017-03-17 09:59:30', 'mr', 'Test company', 'DE999999999', '', 'Test', 'User', 'Test street', '1', '', '10000', 'Test city', 'CA', 'en', 'US', '', '', '', NULL, 1, NULL, 'core:setup', 'Test user', 'demo-test'),
(6, 'kk', '', 'kr@mailinator.com', '$2y$10$NLbx2dM0sABLOR.6ZYZR8ud/X/6VK2AfQHaJwskqp/JiQdxYhf0wa', NULL, 0, '2017-03-17 21:37:21', '2017-03-17 21:37:21', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, 0, NULL, '', '', ''),
(7, 'kk2', '', 'kr2@mailinator.com', '$2y$10$yoT/02oBN4o.UHo6WN30XOHr5EQ.PiQYdBSiVKc/JkvO.2xDp5wQ.', NULL, 0, '2017-03-17 21:37:39', '2017-03-17 21:37:39', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, 0, NULL, '', '', ''),
(8, 'sdmail.com', '', 'user1s@user1.com', '$2y$10$2.K1aGZmgtRokQriv9PtKuZGxodDhccLrf/NMdsa9xc.uIJhc6flu', NULL, 0, '2017-03-17 21:40:47', '2017-03-17 21:40:47', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, 0, NULL, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_langid_index` (`langid`),
  ADD KEY `users_status_lastname_firstname_index` (`status`,`lastname`,`firstname`),
  ADD KEY `users_status_address1_index` (`status`,`address1`),
  ADD KEY `users_lastname_index` (`lastname`),
  ADD KEY `users_address1_index` (`address1`),
  ADD KEY `users_city_index` (`city`),
  ADD KEY `users_postal_index` (`postal`),
  ADD KEY `users_status_address1_address2_index` (`status`,`address1`,`address2`),
  ADD KEY `users_status_postal_city_index` (`status`,`postal`,`city`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
