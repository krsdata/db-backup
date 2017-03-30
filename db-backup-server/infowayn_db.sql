-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:28 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `infowayn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_email_unique` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `name`) VALUES
(1, 'admin@admin.com', '$2y$10$whnztBlEJoP/BM/ZYaxiye1LqzT3rMBok7rUapa65zz8kQ9I8e2h6', 'GPfvCB5biOMYIUNBNZox12NDojGttGgb7s4m1k7g0sEPade7bhC6LtSOeWxW', NULL, '2017-03-29 16:01:02', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE IF NOT EXISTS `assignments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned DEFAULT NULL,
  `syllabus_id` int(10) unsigned DEFAULT NULL,
  `paper_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chapter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `grade` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `professor_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_course_id_foreign` (`course_id`),
  KEY `assignments_professor_id_foreign` (`professor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `course_id`, `syllabus_id`, `paper_title`, `duration`, `chapter`, `type`, `description`, `grade`, `marks`, `professor_id`, `created_at`, `updated_at`, `due_date`) VALUES
(4, 4, 0, 'assignement3', '60', 'mysql', 'db', 'assignement3', 'A', NULL, 2, '2017-03-24 05:20:51', '2017-03-24 05:20:51', '03/24/2017');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professor_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `session_id` text COLLATE utf8_unicode_ci,
  `general_info` text COLLATE utf8_unicode_ci,
  `grade_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Admin',
  PRIMARY KEY (`id`),
  KEY `courses_professor_id_foreign` (`professor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `professor_id`, `status`, `created_at`, `updated_at`, `session_id`, `general_info`, `grade_weight`, `created_by`) VALUES
(5, 'Business 100', NULL, 3, 1, '2017-03-19 00:59:40', '2017-03-19 00:59:40', 'LOHC2056', '[]', NULL, 'Admin'),
(4, 'Course-php', NULL, 2, 1, '2017-03-18 22:30:02', '2017-03-18 22:30:02', 'Course-php', 'Course-php', NULL, 'Admin');

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
('2017_03_12_221035_create_admin_table', 1),
('2017_03_12_221035_create_assignments_table', 1),
('2017_03_12_221035_create_courses_table', 1),
('2017_03_12_221035_create_password_resets_table', 1),
('2017_03_12_221035_create_permission_role_table', 1),
('2017_03_12_221035_create_permissions_table', 1),
('2017_03_12_221035_create_professor_profiles_table', 1),
('2017_03_12_221035_create_role_user_table', 1),
('2017_03_12_221035_create_roles_table', 1),
('2017_03_12_221035_create_student_courses_table', 2),
('2017_03_12_221035_create_student_profiles_table', 2),
('2017_03_12_221035_create_users_table', 2),
('2017_03_12_221037_add_foreign_keys_to_assignments_table', 2),
('2017_03_12_221037_add_foreign_keys_to_courses_table', 2),
('2017_03_12_221037_add_foreign_keys_to_permission_role_table', 2),
('2017_03_12_221037_add_foreign_keys_to_professor_profiles_table', 2),
('2017_03_12_221037_add_foreign_keys_to_role_user_table', 2),
('2017_03_12_221037_add_foreign_keys_to_student_courses_table', 2),
('2017_03_12_221037_add_foreign_keys_to_student_profiles_table', 2),
('2017_03_18_071810_add_column_to_courses_table', 3),
('2017_03_18_072721_add_column_to_assignments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professor_profiles`
--

CREATE TABLE IF NOT EXISTS `professor_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `professor_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `professor_profiles_professor_id_foreign` (`professor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `professor_profiles`
--

INSERT INTO `professor_profiles` (`id`, `name`, `designation`, `office_hours`, `location`, `email`, `professor_id`, `created_at`, `updated_at`) VALUES
(1, 'gabriel', NULL, NULL, NULL, 'gabriel@gmail.com', 2, '2017-03-14 22:03:12', '2017-03-14 22:03:12'),
(2, 'gabriel', NULL, NULL, NULL, 'gabriel@gmail.com', 4, '2017-03-26 06:53:48', '2017-03-26 06:53:48'),
(3, 'kanika', NULL, NULL, NULL, 'kanika@gmail.com', 5, '2017-03-26 07:09:05', '2017-03-26 07:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE IF NOT EXISTS `student_courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professor_id` int(10) unsigned DEFAULT NULL,
  `student_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_courses_professor_id_foreign` (`professor_id`),
  KEY `student_courses_student_id_foreign` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE IF NOT EXISTS `student_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE IF NOT EXISTS `syllabus` (
  `id` int(10) unsigned NOT NULL,
  `syllabus_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `syllabus_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `grade_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_type`, `email`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kandy', '1', 'Kandy@admin.com', '$2y$10$0ZBe585yPzEZhyw0FLpYsuKbyfOoFVsEbIfpUtN6Ez23ZuVtIlhTW', NULL, 1, NULL, '2017-03-18 19:36:28'),
(3, 'Noel', '1', 'gabe@laconsilium.com', '$2y$10$6gg9obWKxfna8EzzrB2hh.j6hYRxEto8.MBmL0lO6smn5xiZabHrK', NULL, 1, '2017-03-18 19:59:54', '2017-03-19 00:57:07'),
(4, 'gabriel', '1', 'gabriel@gmail.com', '$2y$10$5JdWNRbqWTAnA2WXBxVnmuN.OXiXnuSuclbj.eXVCPZlmbnXBhncu', NULL, 0, '2017-03-26 06:53:48', '2017-03-26 06:53:48'),
(5, 'kanika', '1', 'kanika@gmail.com', '$2y$10$7qNAPDNBC/WKMSrHkcy3YuJ50Ivxmge4W27MM2MhEEiOZiJi5.JxC', NULL, 0, '2017-03-26 07:09:05', '2017-03-26 07:09:05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
