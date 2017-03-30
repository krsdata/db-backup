-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:22 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recovery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_testimonial`
--

CREATE TABLE IF NOT EXISTS `client_testimonial` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` text NOT NULL,
  `client_description` varchar(255) NOT NULL,
  `client_company` varchar(255) NOT NULL,
  `client_designation` varchar(255) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `name`, `email`, `comments`, `date`) VALUES
(1, 'kundan roy', 'kroy.iips@gmail.com', 'hi', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE IF NOT EXISTS `contact_form` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` text NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_phone` int(11) NOT NULL,
  `c_subject` varchar(255) NOT NULL,
  `c_services` varchar(255) NOT NULL,
  `c_message` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `current_market_update`
--

CREATE TABLE IF NOT EXISTS `current_market_update` (
  `logo_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_image` varchar(255) NOT NULL,
  `logo_link` varchar(255) NOT NULL,
  PRIMARY KEY (`logo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `free_trial`
--

CREATE TABLE IF NOT EXISTS `free_trial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `profile` text COLLATE latin1_general_ci NOT NULL,
  `city` text COLLATE latin1_general_ci NOT NULL,
  `date` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `requirements` text COLLATE latin1_general_ci NOT NULL,
  `interested_services` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `terms_and_conditions` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `free_trial`
--

INSERT INTO `free_trial` (`id`, `name`, `phone`, `email`, `address`, `profile`, `city`, `date`, `requirements`, `interested_services`, `terms_and_conditions`, `status`, `datetime`) VALUES
(5, 'T. kalimuthu', '2147483647', 'kmuthusmail@gmail.com', '', '', 'Tamilnadu', '1446033837', '', '', '', 2, '0000-00-00 00:00:00'),
(10, 'heaven', '2147483647', 'heavenresearch01@gmail.com', '', '', 'indore', '1447053613', '', '', '', 2, '2015-11-09 07:20:13'),
(15, 'ranjeet', '8269495142', '8269495142', '', '', '', '19-Nov-2015', '', '', '', 1, '2015-11-19 19:15:02'),
(16, 'jyoti', '8962967000', 'goszoyawami1993@gmail.com', '', '', 'gaya', '01-Dec-2015', '', '', '', 1, '2015-12-01 12:02:34'),
(17, 'sateesh', '8658218212', 'psateesh0341@gmail.com', '', '', 'orissa', '03-Dec-2015', '', '', '', 1, '2015-12-03 13:22:54'),
(18, 'HITEN GALA', '8898810292', 'hi10_2009@ymail.com', '', '', 'MUMBAI', '08-Dec-2015', '', '', '', 1, '2015-12-08 03:38:45'),
(19, 'aayush', '8965027965', 'aayushnamdev@rocketmail.com', '', '', 'bpl', '08-Dec-2015', '', '', '', 1, '2015-12-08 12:47:42'),
(20, 'RAHUL SHINDE', '8691043162', 'RAHULKJAIKAR@GMAIL.COM', '', '', '', '08-Dec-2015', '', '', '', 1, '2015-12-08 14:20:35'),
(21, 'RAHUL JORAWAR', '8691821453', 'RAHUPRAVIN@123', '', '', '', '08-Dec-2015', '', '', '', 1, '2015-12-08 14:22:15'),
(22, 'mahesh', '9039374355', 'majhesh12@gmail.com', '', '', 'indore', '10-Dec-2015', '', '', '', 1, '2015-12-10 11:17:20'),
(23, 'amit', '0000000000', 'pnm@test.com', '', '', 'city ind', '13-Dec-2015', '', '', '', 1, '2015-12-13 07:57:33'),
(24, 'Mohammad Shamim Ahmad', '9006639948', 'shamimahmadqt@gmail.com', '', '', 'Patna', '14-Dec-2015', '', '', '', 1, '2015-12-14 10:49:53'),
(25, 'adsDSA', '443432444', 'SADSAD@gmail.com', '', '', '', '18-Dec-2015', '', '', '', 1, '2015-12-18 09:40:30'),
(26, 'ayush', '9806153366', 'ayushgupta120@GMAIL.COM', '', '', 'INDORE', '05-Jan-2016', '', '', '', 1, '2016-01-05 06:58:37'),
(27, 'raman', '9023545051', 'raman_jain@hotmail.com', '', '', 'Ludhiana', '19-Jan-2016', '', '', '', 1, '2016-01-19 12:13:43'),
(28, 'raman', '9023545051', 'raman_jain@hotmail.com', '', '', 'Ludhiana', '19-Jan-2016', '', '', '', 1, '2016-01-19 12:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `job_application_form`
--

CREATE TABLE IF NOT EXISTS `job_application_form` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_post_applied` varchar(255) NOT NULL,
  `job_name` text NOT NULL,
  `job_phone` int(11) NOT NULL,
  `job_email` varchar(255) NOT NULL,
  `job_address` varchar(255) NOT NULL,
  `job_qualification` varchar(255) NOT NULL,
  `job_university` varchar(255) NOT NULL,
  `job_year_completed` int(11) NOT NULL,
  `job_resume` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE IF NOT EXISTS `kyc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `service`, `card_number`, `dob`, `address`, `status`) VALUES
(1, 'PAN Card', 'APOPR4454', '25-12-1988', 'indore', 1),
(2, 'PAN Card', 'test', '12-121-12012', 'address', 1),
(3, 'PAN Card', 'yukhkj41', '30-12-1990', 'address', 1),
(4, 'PAN Card', 'yukhkj41', '30-12-1990', 'address', 1),
(5, 'PAN Card', '54545785', '25-12-1988', 'addresss', 1),
(6, 'PAN Card', '54545785', '25-12-1988', 'address', 1),
(7, 'PAN Card', '54545785', '25-12-1988', 'address', 1),
(8, 'PAN Card', '54545785', '12-121-12012', 'sdfdfdf', 1),
(9, 'PAN Card', '54545785', '12-121-12012', 'sdfdfdf', 1),
(10, 'PAN Card', '457812', '27/09/1992', 'KHAJARANA', 1),
(11, 'PAN Card', '64604', '10121985', 'KwAxgx http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE IF NOT EXISTS `meta_data` (
  `meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `service_section` varchar(255) NOT NULL,
  `video_sectioon` varchar(255) NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` int(11) NOT NULL,
  `page_content` int(11) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `past_performance`
--

CREATE TABLE IF NOT EXISTS `past_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `past_performance`
--

INSERT INTO `past_performance` (`id`, `service_name`, `file_name`, `status`) VALUES
(1, 'STOCK FUTURE', '1448376199.docx', 2),
(2, 'STOCK CASH', '1455257822.xlsx', 1),
(3, 'OPTION', '1455259375.xlsx', 1),
(4, 'NIFTY', '1455261957.xlsx', 1),
(5, 'COMMODITY', '1448377781.xlsx', 2),
(6, 'COMMODITY', '1455257076.xlsx', 1),
(7, 'STOCK FUTURE', '1455258781.xlsx', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `name` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `post_title` int(11) NOT NULL,
  `post_description` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `post_comments` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE IF NOT EXISTS `post_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE IF NOT EXISTS `pricing` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `share_name` int(11) NOT NULL,
  `monthly` int(11) NOT NULL,
  `quaterly` int(11) NOT NULL,
  `half_yearly` int(11) NOT NULL,
  `yearly` int(11) NOT NULL,
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_image`, `service_description`, `status`) VALUES
(1, 'Cash HNI', 'cash_hni.png', '&lt;p&gt;cash HNI&lt;/p&gt;', 2),
(2, 'Intraday Cash', 'intraday-cash.png', '&lt;p&gt;Cash Intra Day&lt;/p&gt;', 2),
(3, 'Cash HNI', '1446842056.png', '&lt;div class=&quot;col-md-8&quot;&gt;\r\n&lt;h2&gt;Stock Cash HNI Tips&lt;/h2&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our &lt;strong&gt;HNI Stock Cash Tips&lt;/strong&gt; service is for &lt;strong&gt;NSE&lt;/strong&gt; traders who trade in &lt;em&gt;stock cash&lt;/em&gt; segment of &lt;strong&gt;&lt;em&gt;India Share Market&lt;/em&gt;&lt;/strong&gt;. In which we will be providing weekly calls, Resistance &amp;amp; Support. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.80,000/- &amp;amp; Above&lt;/li&gt;\r\n&lt;li&gt;Weekly 2-3 Calls.&lt;/li&gt;\r\n&lt;li&gt;Momentum Call &amp;amp; data based call will be provided .&lt;/li&gt;\r\n&lt;li&gt;Message + Telephonic Support .&lt;/li&gt;\r\n&lt;li&gt;Telephonic Support till Market hours @3.30 PM&lt;/li&gt;\r\n&lt;li&gt;Dedicated Market Executive will be allotted.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1),
(4, 'Intraday Cash', '1446928295.png', '&lt;div class=&quot;col-md-8&quot;&gt;\r\n&lt;h2&gt;Intraday Stock Cash Tips(Basic)&lt;/h2&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our Intraday &lt;strong&gt;Stock Cash Tips&lt;/strong&gt; service is for &lt;strong&gt;&lt;em&gt;NSE&lt;/em&gt;&lt;/strong&gt; traders who trade in cash segment of &lt;strong&gt;&lt;em&gt;Indian Stock Market&lt;/em&gt;&lt;/strong&gt;. In which we will be providing all &lt;em&gt;Intraday Cash&lt;/em&gt; segment calls, Resistance &amp;amp; Support. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.45,000/- Rs.50,000/-&lt;/li&gt;\r\n&lt;li&gt;Daily 2-3 Calls.&lt;/li&gt;\r\n&lt;li&gt;Calls through SMS&lt;/li&gt;\r\n&lt;li&gt;Proper follow-up by our executives&lt;/li&gt;\r\n&lt;li&gt;Market update ,resistance &amp;amp; supports.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1),
(5, 'COMEX', '1446986037.png', '&lt;p&gt;&lt;strong&gt;comex&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;col-md-8&quot;&gt;\r\n&lt;h1&gt;Tips&lt;/h1&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our&amp;nbsp; service is for Comex&amp;nbsp;based traders who trade in &lt;strong&gt;&amp;nbsp;&lt;/strong&gt;comex&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;Market. In which we will be providing &lt;em&gt;Intraday&lt;/em&gt; and holding call for &lt;strong&gt;comex&amp;nbsp;market&lt;/strong&gt;. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&amp;nbsp;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.1,0000/- Rs.2,00000/-&lt;/li&gt;\r\n&lt;li&gt;Daily 2-3 Calls.&lt;/li&gt;\r\n&lt;li&gt;Message , Phone Support&lt;/li&gt;\r\n&lt;li&gt;3-4 Positional Calls in a month.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1),
(6, 'NIFTY OPTION', '1446986081.png', '&lt;div class=&quot;col-md-8&quot;&gt;\r\n&lt;h1&gt;NIFTY Option Tips&lt;/h1&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our Intraday &lt;strong&gt;NIFTY Option Tips&lt;/strong&gt; service is for &lt;em&gt;NSE&lt;/em&gt; traders who trade in &lt;em&gt;Future &amp;amp; Options&lt;/em&gt; Market. In which we will be providing all intraday calls, Resistance &amp;amp; Support. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.30,000/- Rs.40,000/-&lt;/li&gt;\r\n&lt;li&gt;Daily 3-4 Calls.&lt;/li&gt;\r\n&lt;li&gt;Only Message Support&lt;/li&gt;\r\n&lt;li&gt;Number of lots will be informed&lt;/li&gt;\r\n&lt;li&gt;Dedicated Market Executive will be allotted&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1),
(7, 'NIFTY FUTURE', '1446986164.jpg', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;h1&gt;NIFTY FUTURE Tips&lt;/h1&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our Intraday &lt;strong&gt;NIFTY Future Tips&lt;/strong&gt; service is for &lt;em&gt;NSE&lt;/em&gt; traders who trade in &lt;em&gt;Future &lt;/em&gt;&amp;nbsp;Market. In which we will be providing all intraday calls, Resistance &amp;amp; Support. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.50,000/- Rs.70,000/-&lt;/li&gt;\r\n&lt;li&gt;Daily 3-4 Calls.&lt;/li&gt;\r\n&lt;li&gt;Only Message Support&lt;/li&gt;\r\n&lt;li&gt;Number of lots will be informed&lt;/li&gt;\r\n&lt;li&gt;Dedicated Market Executive will be allotted&lt;/li&gt;\r\n&lt;/ul&gt;', 1),
(8, 'NIFTY FUTURE', '1446986165.jpg', '&lt;p&gt;Nifty Future&lt;/p&gt;', 2),
(9, 'COMMODITY', '1446986223.jpg', '&lt;p&gt;&lt;strong&gt;Commodity&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;col-md-8&quot;&gt;\r\n&lt;h1&gt;Tips&lt;/h1&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our&amp;nbsp; service is for &lt;em&gt;Agricultural&lt;/em&gt; based traders who trade in &lt;strong&gt;NCDEX&lt;/strong&gt; Market. In which we will be providing &lt;em&gt;Intraday&lt;/em&gt; and holding call for &lt;strong&gt;agri commodity market&lt;/strong&gt;. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&amp;nbsp;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.50,000/- Rs.60,000/-&lt;/li&gt;\r\n&lt;li&gt;Daily 2-3 Calls.&lt;/li&gt;\r\n&lt;li&gt;Message , Phone Support&lt;/li&gt;\r\n&lt;li&gt;3-4 Positional Calls in a month.&lt;/li&gt;\r\n&lt;li&gt;Night Call provide on HNI Service Till Market Closed.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1),
(10, 'FOREX', '1446986257.jpg', '&lt;h1&gt;FOREX Tips&lt;/h1&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our Intraday &lt;strong&gt;FOREX&amp;nbsp;Tips&lt;/strong&gt; service is for &lt;em&gt;I- dorex, &amp;amp; D-forex&lt;/em&gt;&amp;nbsp;who trade in International market. In which we will be providing all intraday calls, Resistance &amp;amp; Support. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.10,000/- Rs.50,000/-&lt;/li&gt;\r\n&lt;li&gt;Daily 3-4 Calls.&lt;/li&gt;\r\n&lt;li&gt;Only Message Support&lt;/li&gt;\r\n&lt;li&gt;Number of lots will be informed&lt;/li&gt;\r\n&lt;li&gt;Dedicated Market Executive will be allotted&lt;/li&gt;\r\n&lt;/ul&gt;', 1),
(11, 'NCDEX', '1446986293.jpg', '&lt;div class=&quot;col-md-8&quot;&gt;\r\n&lt;h2&gt;Commodity Tips, MCX &amp;amp; NCDEX (Combo)PACK&lt;/h2&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our &lt;em&gt;MCX&lt;/em&gt; combo service is for NSE traders who trade in &lt;strong&gt;Commodity Market&lt;/strong&gt;. In which we will be providing intraday calls in &lt;strong&gt;MCX&lt;/strong&gt; &amp;amp; &lt;strong&gt;NCDEX&lt;/strong&gt; basic. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.1,20,000/- &amp;amp; Above&lt;/li&gt;\r\n&lt;li&gt;Daily 6-9 Calls.&lt;/li&gt;\r\n&lt;li&gt;Only Message Support.&lt;/li&gt;\r\n&lt;li&gt;All &lt;strong&gt;Bullions&lt;/strong&gt;, &lt;strong&gt;Metals&lt;/strong&gt;, &lt;strong&gt;Energy&lt;/strong&gt; &amp;amp; &lt;strong&gt;agri&lt;/strong&gt; calls will be given.&lt;/li&gt;\r\n&lt;li&gt;Telephonic support till market closing.&lt;/li&gt;\r\n&lt;li&gt;Dedicated Market Executive will be allotted.&lt;/li&gt;\r\n&lt;li&gt;Night support providing in mcx HNI till market clsed.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1),
(12, 'Stock Future', '1446986756.jpg', '&lt;h1 class=&quot;text-center&quot;&gt;Stock Future Tips&lt;/h1&gt;\r\n&lt;div class=&quot;col-md-8&quot;&gt;\r\n&lt;p class=&quot;text-justify&quot;&gt;Our Intraday &lt;strong&gt;Stock Future Tips&lt;/strong&gt; service is for &lt;em&gt;NSE&lt;/em&gt; traders who trade in &lt;strong&gt;Future Market&lt;/strong&gt;. In which we will be providing all &lt;em&gt;Intraday Future&lt;/em&gt; segment calls, Resistance &amp;amp; Support. In this package we provide reliable and timely calls to our clients can make money with us and get a high profit.&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Minimum Investment :Rs.55,000/- Rs.60,000/-&lt;/li&gt;\r\n&lt;li&gt;Daily 3-5 Calls.&lt;/li&gt;\r\n&lt;li&gt;Each call consist 3 tgt and 1 sl&lt;/li&gt;\r\n&lt;li&gt;Both Index (&lt;strong&gt;Nifty&lt;/strong&gt;/&lt;strong&gt;Bank Nifty&lt;/strong&gt;) &amp;amp; &lt;strong&gt;Stock Futures calls&lt;/strong&gt; will be given.&lt;/li&gt;\r\n&lt;li&gt;Dedicated Market Executive will be allotted.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services_name`
--

CREATE TABLE IF NOT EXISTS `services_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `services_name`
--

INSERT INTO `services_name` (`id`, `service_name`, `date`, `status`) VALUES
(1, 'Cash HNI', '2015-11-06 16:53:27', 2),
(2, 'Intraday Cash', '2015-11-06 17:02:20', 1),
(3, 'Cash HNI', '2015-11-06 21:23:08', 1),
(4, 'CASH HNI', '2015-11-06 21:34:25', 2),
(5, 'NORMAL CASH', '2015-11-07 05:55:27', 2),
(6, 'HRS Power', '2015-11-07 05:57:51', 2),
(7, 'NORMAL FUTURE', '2015-11-07 05:58:43', 2),
(8, 'FUTURE HNI', '2015-11-07 05:59:00', 2),
(9, 'NORMAL OPTION', '2015-11-07 05:59:09', 2),
(10, 'OPTION HNI', '2015-11-07 05:59:18', 2),
(11, 'NIFTY OPTION', '2015-11-07 05:59:25', 1),
(12, 'NIFTY FUTURE', '2015-11-07 05:59:34', 1),
(13, 'NIFTY POWER', '2015-11-07 05:59:40', 1),
(14, 'COMMODITY(NORMAL)', '2015-11-07 05:59:49', 2),
(15, 'COMMODITY', '2015-11-07 05:59:54', 1),
(16, 'NCDEX', '2015-11-07 06:00:04', 1),
(17, 'I-FOREX ( INTERNATIONAL )', '2015-11-07 06:00:10', 2),
(18, 'FOREX', '2015-11-07 06:00:20', 1),
(19, 'normal cash', '2015-11-07 10:42:18', 2),
(20, 'COMEX', '2015-11-08 12:32:34', 1),
(21, 'Stock Future', '2015-11-08 12:45:11', 1),
(22, 'COMMODITY', '2015-11-24 14:31:38', 2),
(23, 'COMMODITY', '2015-11-24 14:39:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services_price`
--

CREATE TABLE IF NOT EXISTS `services_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `service_duration` varchar(255) NOT NULL,
  `service_price` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `services_price`
--

INSERT INTO `services_price` (`id`, `service_name`, `service_duration`, `service_price`, `status`) VALUES
(1, 'NORMAL CASH', 'Quaterly', '20000', 1),
(2, 'NORMAL CASH', 'Monthely', '10000', 1),
(3, 'NORMAL CASH', 'Halfyearly', '50000', 1),
(4, 'NORMAL CASH', 'Yearly', '90000', 1),
(5, 'CASH HNI', 'Monthely', '20000', 1),
(6, 'CASH HNI', 'Quaterly', '50000', 1),
(7, 'CASH HNI', 'Halfyearly', '100000', 1),
(8, 'CASH HNI', 'Yearly', '125000', 1),
(9, 'HRS POWER', 'Monthely', '35000', 1),
(10, 'HRS POWER', 'Quaterly', '100000', 1),
(11, 'HRS POWER', 'Halfyearly', '200000', 1),
(12, 'HRS POWER', 'Yearly', '400000', 1),
(13, 'NORMAL FUTURE', 'Monthely', '10000', 1),
(14, 'NORMAL FUTURE', 'Quaterly', '25000', 1),
(15, 'NORMAL FUTURE', 'Halfyearly', '45000', 1),
(16, 'NORMAL FUTURE', 'Yearly', '85000', 1),
(17, 'FUTURE HNI', 'Monthely', '25000', 1),
(18, 'FUTURE HNI', 'Quaterly', '60000', 1),
(19, 'FUTURE HNI', 'Halfyearly', '120000', 1),
(20, 'FUTURE HNI', 'Yearly', '150000', 1),
(21, 'FUTURE POWER', 'Monthely', '50000', 1),
(22, 'FUTURE POWER', 'Quaterly', '140000', 1),
(23, 'FUTURE POWER', 'Halfyearly', '225000', 1),
(24, 'FUTURE POWER', 'Yearly', '500000', 1),
(25, 'NORMAL OPTION', 'Monthely', '10000', 1),
(26, 'NORMAL OPTION', 'Quaterly', '25000', 1),
(27, 'NORMAL OPTION', 'Halfyearly', '50000', 1),
(28, 'NORMAL OPTION', 'Yearly', '100000', 1),
(29, 'OPTION HNI', 'Monthely', '15000', 1),
(30, 'OPTION HNI', 'Quaterly', '40000', 1),
(31, 'OPTION HNI', 'Halfyearly', '80000', 1),
(32, 'OPTION HNI', 'Yearly', '150000', 1),
(33, 'NIFTY OPTION', 'Monthely', '8000', 1),
(34, 'NIFTY OPTION', 'Quaterly', '20000', 1),
(35, 'NIFTY OPTION', 'Halfyearly', '45000', 1),
(36, 'NIFTY OPTION', 'Yearly', '90000', 1),
(37, 'NIFTY FUTURE', 'Monthely', '8000', 1),
(38, 'NIFTY FUTURE', 'Quaterly', '20000', 1),
(39, 'NIFTY FUTURE', 'Halfyearly', '45000', 1),
(40, 'NIFTY FUTURE', 'Yearly', '90000', 1),
(41, 'NIFTY POWER', 'Monthely', '20000', 1),
(42, 'NIFTY POWER', 'Quaterly', '55000', 1),
(43, 'NIFTY POWER', 'Halfyearly', '100000', 1),
(44, 'NIFTY POWER', 'Yearly', '125000', 1),
(45, 'COMMODITY(NORMAL)', 'Monthely', '15000', 1),
(46, 'COMMODITY(NORMAL)', 'Quaterly', '40000', 1),
(47, 'COMMODITY(NORMAL)', 'Halfyearly', '80000', 1),
(48, 'COMMODITY(NORMAL)', 'Yearly', '150000', 1),
(49, 'COMMODITY HNI', 'Monthely', '35000', 1),
(50, 'COMMODITY HNI', 'Quaterly', '50000', 1),
(51, 'COMMODITY HNI', 'Halfyearly', '100000', 1),
(52, 'COMMODITY HNI', 'Yearly', '220000', 1),
(53, 'D-FOREX', 'Monthely', '10000', 1),
(54, 'D-FOREX', 'Monthely', '10000', 1),
(55, 'D-FOREX', 'Quaterly', '25000', 1),
(56, 'D-FOREX', 'Halfyearly', '50000', 1),
(57, 'D-FOREX', 'Yearly', '100000', 1),
(58, 'I-FOREX', 'Monthely', '25000', 1),
(59, 'I-FOREX', 'Quaterly', '70000', 1),
(60, 'I-FOREX', 'Halfyearly', '100000', 1),
(61, 'I-FOREX', 'Halfyearly', '125000', 1),
(62, 'I-FOREX', 'Yearly', '250000', 1),
(63, 'NCDEX HNI', 'Monthely', '25000', 1),
(64, 'NCDEX HNI', 'Quaterly', '70000', 1),
(65, 'NCDEX HNI', 'Halfyearly', '125000', 1),
(66, 'NCDEX HNI', 'Yearly', '250000', 1),
(67, 'NCDEX NORMAL', 'Monthely', '15000', 2),
(68, 'NCDEX NORMAL', 'Quaterly', '40000', 2),
(69, 'NCDEX NORMAL', 'Halfyearly', '80000', 2),
(70, 'NCDEX NORMAL', 'Yearly', '150000', 2),
(71, 'COMEX', 'Monthely', '20000', 1),
(72, 'COMEX', 'Quaterly', '50000', 1),
(73, 'COMEX', 'Halfyearly', '100000', 1),
(74, 'COMEX', 'Yearly', '220000', 1),
(75, 'COMMODITY HNI', 'Monthely', '35000', 2),
(76, 'COMMODITY HNI', 'Quaterly', '80000', 2),
(77, 'COMMODITY HNI', 'Quaterly', '75000', 2),
(78, 'COMMODITY HNI', 'Halfyearly', '130000', 2),
(79, 'COMMODITY HNI', 'Yearly', '200000', 2),
(80, 'COMMODITY(NORMAL)', 'Monthely', '15000', 2),
(81, 'COMMODITY(NORMAL)', 'Quaterly', '40000', 2),
(82, 'COMMODITY(NORMAL)', 'Halfyearly', '80000', 2),
(83, 'COMMODITY(NORMAL)', 'Yearly', '150000', 2),
(84, 'COMMODITY HNI', 'Monthely', '30000', 2),
(85, 'COMMODITY HNI', 'Quaterly', '75000', 2),
(86, 'COMMODITY HNI', 'Halfyearly', '130000', 2),
(87, 'COMMODITY HNI', 'Yearly', '30000', 2),
(88, 'NCDEX NORMAL', 'Monthely', '20000', 1),
(89, 'NCDEX NORMAL', 'Quaterly', '50000', 1),
(90, 'NCDEX NORMAL', 'Halfyearly', '80000', 1),
(91, 'NCDEX NORMAL', 'Yearly', '150000', 1),
(92, 'COMMODITY HNI', 'Monthely', '30000', 2),
(93, 'COMMODITY HNI', 'Quaterly', '80000', 2),
(94, 'COMMODITY HNI', 'Halfyearly', '150000', 2),
(95, 'COMMODITY HNI', 'Yearly', '330000', 2),
(96, 'COMMODITY HNI', 'Monthely', '35000', 2),
(97, 'COMMODITY HNI', 'Monthely', '30000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(225) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL COMMENT '0-Admin,1-Moderator',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `profile_name`, `name`, `password`, `email`, `user_type`, `status`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com', 0, 0),
(3, 'Panku', 'panku', 'panku', 'pankaj.syscraft@gmail.com', 0, 2),
(4, 'Panku1', 'panku1', 'panku1', 'pankaj.syscraft@gmail.com', 0, 2),
(5, 'test', 'test', 'test', 'test@gmail.com', 1, 2),
(8, 'abcd', 'abcd', '123456', 'vivek36308081abcd@gmail.com', 0, 2),
(7, 'abc', 'abc', '123456', 'vivek36308081abc@gmail.com', 0, 2),
(9, 'panku', 'panku', NULL, 'panku@test.com', 0, 2),
(10, 'one', 'one', NULL, 'panku@ddddest.com', 1, 2),
(11, 'panku_new', 'panku_new', '123456', 'pankaj.ips09@gmail.com', 0, 2),
(12, 'jaydip', 'jai', 'admin', 'jai@ii.com', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_head` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_desc` text,
  `page_content` text,
  `page_order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `page_head`, `page_name`, `meta_title`, `meta_key`, `meta_desc`, `page_content`, `page_order`, `status`) VALUES
(9, NULL, 'Page 1', 'page 1 meta title', 'page 1 meta keyword', 'Page 1 meta description', '<p>\r\n	Page 1 test content</p>\r\n', 1, 1),
(10, NULL, 'Page 2', 'page 2 meta title', 'page 2 meta keyword', 'Page 2 meta description', 'Page 2 test content', 2, 1),
(11, NULL, 'Page 3', 'page 3 meta title', 'page 3 meta keyword', 'Page 3 meta description', '<p>\r\n	Page 3 test page content123</p>\r\n', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `fname`, `lname`, `email`, `phone`, `category`, `description`, `image`, `status`) VALUES
(10, 'test4', 'test4 last name', 'test4@gmail.com', '78965412332', '2', 'test4', '1346655803.jpg', 1),
(7, 'pankaj', 'sharma', 'pankaj.ips09@gmail.com', '9993125001', '2', 'test', '1346655687.jpg', 0),
(8, 'lalu', 'sharma', 'sdfg@hvasd.com', '65465466', '3', 'test', '1346655737.jpg', 0),
(11, 'test5', 'test5 last name', 'test5@gmail.com', '45623154874', '2', 'test5', '1346655865.jpg', 1),
(12, 'test6', 'test6 last name', 'test6@gmail.com', '12356348964', '3', 'test6', '1346655909.jpg', 0),
(13, 'test7', 'test7', 'test7@gmail.com', '011231654564', '2', 'test7', '1346655947.jpg', 1),
(15, '', '', 'pankaj.ips09@gmail.com', '9993125001', '3', '', '1346750659.jpg', 0),
(16, 'one''sÃª', 'two''sÃª', 'one@syscraftonline.com', '1234567891', '3', 'test', '1346752357.jpeg', 0),
(17, 'one''s', 'two''s', 'tomd00123@gmail.com', '1234567891', '1', 'test', '1346752558.jpg', 0),
(18, 'one''s', 'two''s', 'tomd00123@gmail.com', '1234567891', '1', '', '1346752593.jpg', 0),
(19, 'firstname', 'lastname', 'email@email.com', '1234567891', '1', 'test', '1346756691.jpg', 1),
(20, 'instructor 1 f name', 'instructor 1 lname1', 'pankaj.ips09@jgmail.com', '9993125001', '2', 'teswt', '1347520228.jpg', 0),
(21, 'student 1 first name', 'test last name', 'pankaj.ips09@gmail.com', '65465466', '3', 'test', '1347520258.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
