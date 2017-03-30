-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:25 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kundanro_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_email_unique` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$Bb33.XU.SiuAn7/Ms2jF4OX5v.twzEQtCjCkf80K4lwgp8xOZM7DO', 'bEj7v3Ug4J8KGmQXBhAflZ0PzDnrWszZkwqd2y9ihgCxCMkOYWKCRdalEdsy', NULL, '2017-03-20 01:57:58'),
(2, NULL, 'admin2@admin.com', '$2y$10$.EhLb0MTqNw9ugEcJ7SpbeLYouRGhPfcJf2zTmmqaVlYh9MtywDx6', 'Xq2NzcxjKeCmBHwBKK4Lk8TtmwZYzx7yGOInMqk7oUwK2Ut898JJRjE9tNLi', '2017-03-19 21:41:45', '2017-03-20 01:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `sub_category_name`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Watch', 'Titan', NULL, NULL, '2017-03-19 22:00:02', '2017-03-19 22:00:22'),
(2, 'Watch', 'Sonata', NULL, NULL, '2017-03-19 22:00:41', '2017-03-19 22:02:29'),
(3, 'Anti Virus', 'Net Protector', NULL, NULL, '2017-03-22 19:54:26', '2017-03-22 19:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2017_03_19_212358_create_admin_table', 1),
('2017_03_19_212358_create_categories_table', 1),
('2017_03_19_212358_create_products_table', 1),
('2017_03_19_212358_create_users_table', 1),
('2017_03_19_212400_add_foreign_keys_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_category` int(10) unsigned DEFAULT NULL,
  `product_sub_category` int(10) unsigned DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category` (`product_category`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_title`, `product_category`, `product_sub_category`, `price`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Sonata Watch', 2, NULL, 1000.00, '<p>Sonata</p>\r\n', '1489961045sonata.jpg', '2017-03-19 22:04:05', '2017-03-19 22:04:05'),
(2, 'Titan Watch', 1, NULL, 2000.00, '<p>titan</p>\r\n', '1489961077titan.png', '2017-03-19 22:04:37', '2017-03-19 22:04:37'),
(3, 'Anti Virus ( NPAV)', 3, NULL, 499.00, '<p>Anti Virus ( NPAV)</p>\r\n', '1490212660np.png', '2017-03-22 19:57:40', '2017-03-22 19:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kundan', 'roy', 'kroy.webxpert@gmail.ccom', '$2y$10$K3GCsrSRY95PjPM8ZnsVa.wrWFT9BOAm1fuo0sLoq9L4G7txZzkLG', NULL, 1, '2017-03-19 21:42:32', '2017-03-19 21:43:55'),
(2, 'kundan roy', NULL, 'kundan.roy@gmail.com', '$2y$10$EZsAExajttyIxY4C//Vqf.4xOaeRnQrPFzLIN21.uy6ctrOnk.7aO', NULL, 0, '2017-03-20 01:20:48', '2017-03-20 01:20:48');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
