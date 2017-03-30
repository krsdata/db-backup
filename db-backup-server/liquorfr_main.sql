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
-- Database: `liquorfr_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_users`
--

CREATE TABLE IF NOT EXISTS `a_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `feedback` text NOT NULL,
  `future_standing` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `a_users`
--

INSERT INTO `a_users` (`id`, `name`, `email`, `phone`, `date_added`, `feedback`, `future_standing`) VALUES
(1, 'Rahul Parmar', 'rahul@gmail.com', '2121212521', '2016-06-06 23:29:11', 'sfsd sdf sd sdf ', 'n.a.'),
(2, 'Rajdeep', 'db1@gmail.com', '808595454545', '2016-06-07 08:01:19', 'TEST', 'tEST'),
(3, 'Rajdeep', 'db1@gmail.com', '808595454545', '2016-06-07 08:01:49', 'TEST', 'tEST'),
(4, 'Rajdeep', 'db1@gmail.com', '808595454545', '2016-06-07 08:02:09', 'TEST', 'tEST'),
(5, 'mahaveer', 'monty8109@gmail.com', '8120821543', '2016-06-17 01:35:43', 'hlo\r\n', 'n.a.'),
(6, 'Rahul', 'rarahulanjana@gmail.com', '9981468558', '2016-06-17 08:20:06', 'hame kisi bhi hal mai sharab band karana padegi', 'corruption, crime free..developed'),
(7, 'C L SHARMA', 'clsharma3401@rediffmail.com', '9893054112', '2016-06-17 12:44:08', 'I agreed for close liquior', 'n.a.'),
(8, 'lakhan aanjana', 'lakhanaanjana.la.la@gmail.com', '8889346858', '2016-06-17 15:46:59', '', 'n.a.'),
(9, 'r.s.Patel ', 'vijayconventschool@gmail.com', '9406770671', '2016-06-18 13:32:54', 'Sharab  mukt pradesh hona chahiye ', 'Yek shushashit avm shmmridh '),
(10, 'Naresh', 'nsethia27@gmail.com', '9425058131', '2016-06-19 23:24:50', 'à¤¨à¤¶à¤¾ à¤•à¥à¤¯à¥‹à¤‚ \r\n90%à¤…à¤ªà¤°à¤¾à¤§ à¤¨à¤¾à¤¶ à¤•à¤°à¤¨à¥‡ à¤¸à¥‡ à¤¹à¥‹à¤¤à¥‡ à¤¹à¥‡ \r\nà¤ªà¥à¤°à¤¤à¥à¤¯à¥‡à¤• à¤®à¤¹à¤¿à¤²à¤¾ à¤šà¤¾à¤¹à¤¤à¥€ à¤¹à¥‡ à¤‰à¤¸à¤•à¤¾ à¤ªà¤¤à¤¿ à¤¶à¤°à¤¾à¤¬à¤–à¥‹à¤°à¥€ à¤¨à¤¹à¥€à¤‚ à¤•à¤°à¥‡\r\n', 'à¤…à¤ªà¤°à¤¾à¤§à¤®à¥à¤•à¥à¤¤, à¤¨à¤¶à¤¾à¤®à¥à¤•à¥à¤¤, \r\nà¤µà¤¿à¤•à¤¾à¤¸à¤¯à¥à¤•à¥à¤¤ , \r\n'),
(11, 'ANITA SINGH', 'singhanita055@gmail.com', '9406578195', '2016-06-20 07:32:51', 'M P ho sharab mukt pradesh', 'n.a.'),
(12, 'test', 'test@test.com', '987654321', '2016-06-29 11:16:55', 'this is a test msg', 'testing'),
(13, 'Ruckmang sharma', 'ruckmangsharma@gmail.com', '9826900239', '2016-07-02 22:44:10', 'It should be banned', 'Yes');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
