-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 06:46 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
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
(1, 'admin@admin.com', '$2y$10$OrLdnKlaYkEXNz4tnycNZuQEjpBtnXRnd380ZuuhbzTw4ufmZwzOO', 'pQ3xW0Pg4TyTN1untqPmaCXLj3GUtLCrlmexqkktNsi4naETjn07bkSXHasY', NULL, '2017-03-25 07:28:42', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `syllabus_id` int(10) UNSIGNED DEFAULT NULL,
  `paper_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chapter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `grade` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `professor_id` int(10) UNSIGNED DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `course_id`, `syllabus_id`, `paper_title`, `duration`, `chapter`, `type`, `description`, `grade`, `marks`, `professor_id`, `due_date`, `created_at`, `updated_at`) VALUES
(7, 3, 1, 'dsads', 'sadsad', 'dsadsad', 'asdsa', 'sdsad', 's', NULL, 15, '03/22/2017', '2017-03-18 16:39:19', '2017-03-18 16:40:08'),
(8, 1, 8, 'assignement2', '30', 'assignement2', 'assignement2', 'assignement2', 'a', NULL, 8, '03/29/2017', '2017-03-25 03:18:43', '2017-03-25 03:18:43'),
(9, 3, 1, 'paper_title_new', '30', 'required', 'type', 'pjp', 'A', 12, 15, '3/8/2017', '2017-03-25 12:35:06', '2017-03-25 07:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Admin',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `session_id` text COLLATE utf8_unicode_ci,
  `general_info` text COLLATE utf8_unicode_ci,
  `grade_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `professor_id`, `created_by`, `status`, `created_at`, `updated_at`, `session_id`, `general_info`, `grade_weight`) VALUES
(1, 'PHP', NULL, 8, 'Professor', 1, '2017-03-18 05:26:06', '2017-03-18 05:40:04', 'PHP-1001', 'fsdfdsfd', 'A'),
(2, 'HTML', NULL, 8, 'Admin', 1, '2017-03-18 09:27:15', '2017-03-18 09:28:43', 'html', 'dgdgdgdfgf', 'A'),
(3, 'Js', NULL, 15, 'Admin', 1, '2017-03-18 09:47:10', '2017-03-18 09:47:10', 'js111', 'js', 'A'),
(4, 'c1', NULL, 8, 'Admin', 1, '2017-03-18 13:02:59', '2017-03-18 15:09:57', 's1', 'sfds', 'B'),
(8, 'cc', NULL, 8, 'Admin', 1, '2017-03-18 16:17:28', '2017-03-18 16:17:28', 'ss', 'gg', NULL),
(9, 'Course1', NULL, 8, 'Admin', 1, '2017-03-18 16:42:28', '2017-03-18 16:42:28', 'Course1', 'Course1', NULL),
(11, 'test1', NULL, 8, 'Admin', 1, '2017-03-19 02:57:43', '2017-03-19 02:57:43', 'session_id', 'general_info', NULL),
(12, 'HTML', NULL, 8, 'Admin', 1, '2017-03-19 07:20:36', '2017-03-19 07:20:36', 'session_id', 'general_info', NULL),
(13, 'HTML5', NULL, 8, 'Admin', 1, '2017-03-19 07:39:18', '2017-03-19 07:39:18', 'session_id', 'general_info', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('2017_03_12_221035_create_student_courses_table', 1),
('2017_03_12_221035_create_student_profiles_table', 1),
('2017_03_12_221035_create_users_table', 1),
('2017_03_12_221037_add_foreign_keys_to_assignments_table', 1),
('2017_03_12_221037_add_foreign_keys_to_courses_table', 1),
('2017_03_12_221037_add_foreign_keys_to_permission_role_table', 1),
('2017_03_12_221037_add_foreign_keys_to_professor_profiles_table', 1),
('2017_03_12_221037_add_foreign_keys_to_role_user_table', 1),
('2017_03_12_221037_add_foreign_keys_to_student_courses_table', 1),
('2017_03_12_221037_add_foreign_keys_to_student_profiles_table', 1),
('2017_03_18_071810_add_column_to_courses_table', 2),
('2017_03_18_072721_add_column_to_assignments_table', 2),
('2017_03_18_194033_create_syllabus_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professor_profiles`
--

CREATE TABLE `professor_profiles` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `office_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `professor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `professor_profiles`
--

INSERT INTO `professor_profiles` (`name`, `designation`, `id`, `office_hours`, `location`, `email`, `professor_id`, `created_at`, `updated_at`) VALUES
('kandy', 'PROFESSOR', 1, NULL, NULL, 'kroy@gmail.com', 8, '2017-03-12 17:53:32', '2017-03-13 00:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `professior_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `student_id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(3, 14, 'kandy', 'student@gmail.com', NULL, NULL, '2017-03-12 18:16:25', '2017-03-12 18:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(10) UNSIGNED NOT NULL,
  `syllabus_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `syllabus_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `professor_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `grade_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `syllabus_title`, `syllabus_description`, `course_id`, `professor_id`, `status`, `grade_weight`, `created_at`, `updated_at`) VALUES
(1, 'prototype', 'prototype', 3, NULL, 1, 'A', '2017-03-18 15:08:56', '2017-03-18 15:54:02'),
(2, 'fdsf', 'dsfdsf', 1, NULL, 1, 'AB', '2017-03-18 15:32:50', '2017-03-18 15:53:55'),
(3, 'dgfd', 'fgfd', 1, NULL, 1, 'B', '2017-03-18 15:35:51', '2017-03-18 15:54:09'),
(4, 'dsd', 'sdsd', 1, NULL, 1, 'A', '2017-03-18 15:43:05', '2017-03-18 15:43:05'),
(5, 'sd', 'sadsadsad', 3, NULL, 1, 'sadsa', '2017-03-18 16:27:08', '2017-03-18 16:27:08'),
(6, 'cc', 'cc', 8, NULL, 1, 'cc', '2017-03-18 16:41:08', '2017-03-18 16:41:08'),
(7, 'cd', 'cd', 8, NULL, 1, 'cd', '2017-03-18 16:41:31', '2017-03-18 16:41:31'),
(8, 'Course2', 'Course2', 1, NULL, 1, 'Course2', '2017-03-18 16:42:39', '2017-03-18 16:42:39'),
(9, 'c1-s1', 'c1-s1', 9, NULL, 1, 'c1-s1', '2017-03-18 16:42:57', '2017-03-18 16:42:57'),
(10, 'c1-s2', 'c1-s2', 1, NULL, 1, 'c1-s2', '2017-03-18 16:43:12', '2017-03-18 16:43:12'),
(11, 'c1-s12', 'c1-s12', 1, NULL, 1, 'A', '2017-03-18 16:44:52', '2017-03-18 16:44:52'),
(13, 'ddd', 'dd', 9, NULL, 1, 'dd', '2017-03-18 16:46:53', '2017-03-18 16:46:53'),
(14, 'Array Function', 'all array function need to explore', 1, NULL, 1, 'A', '2017-03-21 23:12:45', '2017-03-21 23:12:45'),
(15, 'Array Function2', 'all array function need to explore', 1, NULL, 1, 'A', '2017-03-21 23:14:37', '2017-03-21 23:14:37'),
(16, 'Array Function2', 'all array function need to explore', 1, NULL, 1, 'A', '2017-03-21 23:15:08', '2017-03-21 23:15:08'),
(17, 'Array Function2', 'all array function need to explore', 1, NULL, 1, 'A', '2017-03-21 23:15:24', '2017-03-21 23:15:24'),
(18, 'Course2', '', 1, NULL, 1, 'A', '2017-03-25 01:10:17', '2017-03-25 01:10:17'),
(19, 'Course2', 'Course2', 1, NULL, 1, 'Course2', '2017-03-25 01:10:32', '2017-03-25 01:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_type`, `email`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(8, 'kandy-e', '1', 'kroy@gmail.com', '$2y$10$e/rGZXiLZlNKz6vycNYhCOyjEG/aAXFPZ1Ol7OQjrWiosSGwfmxza', NULL, 0, '2017-03-12 17:53:32', '2017-03-18 10:17:43'),
(14, 'student', '2', 'student@gmail.com', '$2y$10$NWkE/cIHeJ/cVbEd.SCseOq8Rh0R9YJqQ3kod/y9ka8lsUThgs7nC', NULL, 0, '2017-03-12 18:16:25', '2017-03-18 10:18:32'),
(15, 'dfgdfg', '1', 'admgdfgin@admin.com', '$2y$10$UVcf2tkHsvSjk9ZEqpqPsOrtGlQlJIXxln8qUCuTFrS58a9tZgtpq', NULL, 0, '2017-03-18 09:23:45', '2017-03-18 09:23:45'),
(16, 'p22', '1', 'p2@admin.com', '$2y$10$NSsqtStvlao8OsLXZJb7Mu5I5jLHh1BNOaZ6WSpRViFT0B0f67SHO', NULL, 0, '2017-03-18 09:26:05', '2017-03-18 10:15:52'),
(17, 's3', '2', 's3@admin.com', '$2y$10$YjuT3CR2lW0YJMXDUfyt7OrxMenftRYAky4CMGiEI0pDmO33GcFEq', NULL, 0, '2017-03-18 09:26:19', '2017-03-18 09:26:19');

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
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_course_id_foreign` (`course_id`),
  ADD KEY `assignments_professior_id_foreign` (`professor_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_professior_id_foreign` (`professor_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `professor_profiles`
--
ALTER TABLE `professor_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `professor_profiles_professior_id_foreign` (`professor_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_courses_professior_id_foreign` (`professior_id`),
  ADD KEY `student_courses_student_id_foreign` (`student_id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`student_id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professor_profiles`
--
ALTER TABLE `professor_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `assignments_professior_id_foreign` FOREIGN KEY (`professor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_professior_id_foreign` FOREIGN KEY (`professor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professor_profiles`
--
ALTER TABLE `professor_profiles`
  ADD CONSTRAINT `professor_profiles_professior_id_foreign` FOREIGN KEY (`professor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `student_courses_professior_id_foreign` FOREIGN KEY (`professior_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_courses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
