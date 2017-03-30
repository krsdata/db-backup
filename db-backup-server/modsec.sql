-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:24 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `modsec`
--

-- --------------------------------------------------------

--
-- Table structure for table `hits`
--

CREATE TABLE IF NOT EXISTS `hits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `timezone` int(11) DEFAULT '0',
  `ip` varchar(39) DEFAULT NULL,
  `http_version` varchar(8) DEFAULT NULL,
  `http_method` varchar(7) DEFAULT NULL,
  `http_status` int(11) DEFAULT NULL,
  `host` varchar(254) DEFAULT NULL,
  `path` text,
  `handler` varchar(254) DEFAULT NULL,
  `justification` text,
  `action_desc` text,
  `meta_file` varchar(254) DEFAULT NULL,
  `meta_line` varchar(20) DEFAULT NULL,
  `meta_offset` int(11) DEFAULT NULL,
  `meta_rev` varchar(20) DEFAULT NULL,
  `meta_msg` text,
  `meta_id` bigint(20) DEFAULT '0',
  `meta_logdata` text,
  `meta_severity` varchar(9) DEFAULT NULL,
  `meta_uri` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='114601' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
