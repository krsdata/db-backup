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
-- Database: `anvinfos_appnosoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `CALLUS`
--

CREATE TABLE IF NOT EXISTS `CALLUS` (
  `call_on` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CALLUS`
--

INSERT INTO `CALLUS` (`call_on`, `skype`, `email`) VALUES
('+1.855.559.4266', 'Appnosoft.business', 'business@Appnosoft.biz');

-- --------------------------------------------------------

--
-- Table structure for table `CONTACT`
--

CREATE TABLE IF NOT EXISTS `CONTACT` (
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CONTACT`
--

INSERT INTO `CONTACT` (`address`, `phone`, `country`) VALUES
('B-4 ,Chaturvedi Mansion,\r\nIndore - 452001, India', '91-9993047237', 'India'),
('757 Bourke st, Docklands,\r\nMelbourne - 3008,\r\nAustralia', '61416712260', 'Australia'),
('Blck 659 #23-18 Toh Guan,\r\nRoad, Singapore-659000', '+65-91034515', 'Singapore');

-- --------------------------------------------------------

--
-- Table structure for table `EXPERTISE_in`
--

CREATE TABLE IF NOT EXISTS `EXPERTISE_in` (
  `link` varchar(255) NOT NULL,
  `link_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EXPERTISE_in`
--

INSERT INTO `EXPERTISE_in` (`link`, `link_name`) VALUES
('#', 'Social Networking App Development'),
('', ''),
('#', 'Taxi Booking App Development'),
('#', 'Restaurant Food Ordering App Development');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `guid` varchar(100) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `nickname`, `guid`, `timestamp`) VALUES
(1, 'bnbn', 'vbv', 'b20da701-0564-002f-8e38-2290024abc9a', 1469473624),
(2, 'bcnb', 'vbcv', '084c92dd-afb9-5470-4832-fe45877a7785', 1469474932),
(3, 'dsadsad', 'sadsads', 'de605074-404b-c002-6ca4-bf3336879d90', 1469475716),
(4, 'test', 'a', 'null', 1469553376),
(5, 'hello', 'vaibhav', '6314cab6-535f-e91e-8ee8-518970cb0267', 1469554871),
(6, 'vabhav', 'vaibhav', '6314cab6-535f-e91e-8ee8-518970cb0267', 1469554923),
(7, 'hello', 'vaibhav', '6314cab6-535f-e91e-8ee8-518970cb0267', 1469554933),
(8, 'hi ankita here', 'a', '300d9f36-a6b0-7637-19bd-e7dbd2bf9550', 1469555055),
(9, ':)', 'a', '300d9f36-a6b0-7637-19bd-e7dbd2bf9550', 1469555068),
(10, 'good', 'vaibhav', '6314cab6-535f-e91e-8ee8-518970cb0267', 1469555118),
(11, 'Testing', 'test chat', '7f6a316d-70f0-ce83-e98a-058dd395849d', 1469555464),
(12, 'hello', 'vicky', '73406047-dc3c-d4ca-f51d-e564d2550f93', 1471074779),
(13, 'how are you', 'vicky', '73406047-dc3c-d4ca-f51d-e564d2550f93', 1471074792),
(14, 'fsdhfgsd', 'vicky', '73406047-dc3c-d4ca-f51d-e564d2550f93', 1471074844),
(15, 'sdfbjlsdfsd', 'vicky', '73406047-dc3c-d4ca-f51d-e564d2550f93', 1471074857);

-- --------------------------------------------------------

--
-- Table structure for table `SERVICEOFFERINGS`
--

CREATE TABLE IF NOT EXISTS `SERVICEOFFERINGS` (
  `link` varchar(255) NOT NULL,
  `link_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SERVICEOFFERINGS`
--

INSERT INTO `SERVICEOFFERINGS` (`link`, `link_name`) VALUES
('#', 'Php Development'),
('#', 'Wordpress Development');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
