-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:32 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rahulpar_mypos`
--

-- --------------------------------------------------------

--
-- Table structure for table `rm_colsetlistusers`
--

CREATE TABLE IF NOT EXISTS `rm_colsetlistusers` (
  `managername` varchar(64) NOT NULL,
  KEY `managername` (`managername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rm_onlinecm`
--

CREATE TABLE IF NOT EXISTS `rm_onlinecm` (
  `username` varchar(64) NOT NULL DEFAULT '',
  `maccm` varchar(17) DEFAULT NULL,
  `enableuser` tinyint(1) DEFAULT NULL,
  `staticipcm` varchar(15) DEFAULT NULL,
  `maccpe` varchar(17) DEFAULT NULL,
  `ipcpe` varchar(15) DEFAULT NULL,
  `ipmodecpe` tinyint(1) DEFAULT NULL,
  `cmtsid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `groupname` varchar(50) DEFAULT NULL,
  `snrds` decimal(11,1) DEFAULT NULL,
  `snrus` decimal(11,1) DEFAULT NULL,
  `txpwr` decimal(11,1) DEFAULT NULL,
  `rxpwr` decimal(11,1) DEFAULT NULL,
  `pingtime` decimal(11,1) DEFAULT NULL,
  `upstreamname` varchar(50) DEFAULT NULL,
  `ifidx` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`),
  KEY `maccm` (`maccm`),
  KEY `staticipcm` (`staticipcm`),
  KEY `ipcpe` (`ipcpe`),
  KEY `groupname` (`groupname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rm_users`
--

CREATE TABLE IF NOT EXISTS `rm_users` (
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL,
  `enableuser` tinyint(1) NOT NULL,
  `uplimit` bigint(20) NOT NULL,
  `downlimit` bigint(20) NOT NULL,
  `comblimit` bigint(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(8) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `gpslat` decimal(17,14) NOT NULL,
  `gpslong` decimal(17,14) NOT NULL,
  `mac` varchar(17) NOT NULL,
  `usemacauth` tinyint(1) NOT NULL,
  `expiration` datetime NOT NULL,
  `uptimelimit` bigint(20) NOT NULL,
  `srvid` int(11) NOT NULL,
  `staticipcm` varchar(15) NOT NULL,
  `staticipcpe` varchar(15) NOT NULL,
  `ipmodecm` tinyint(1) NOT NULL,
  `ipmodecpe` tinyint(1) NOT NULL,
  `poolidcm` int(11) NOT NULL,
  `poolidcpe` int(11) NOT NULL,
  `createdon` date NOT NULL,
  `acctype` tinyint(1) NOT NULL,
  `credits` decimal(20,2) NOT NULL,
  `cardfails` tinyint(4) NOT NULL,
  `createdby` varchar(64) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `taxid` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `maccm` varchar(17) NOT NULL,
  `custattr` varchar(255) NOT NULL,
  `warningsent` tinyint(1) NOT NULL,
  `verifycode` varchar(10) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `selfreg` tinyint(1) NOT NULL,
  `verifyfails` tinyint(4) NOT NULL,
  `verifysentnum` tinyint(4) NOT NULL,
  `verifymobile` varchar(15) NOT NULL,
  `contractid` varchar(50) NOT NULL,
  `contractvalid` date NOT NULL,
  `actcode` varchar(60) NOT NULL,
  `pswactsmsnum` tinyint(4) NOT NULL,
  `alertemail` tinyint(1) NOT NULL,
  `alertsms` tinyint(1) NOT NULL,
  `lang` varchar(30) NOT NULL,
  `lastlogoff` datetime DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `srvid` (`srvid`),
  KEY `groupid` (`groupid`),
  KEY `enableuser` (`enableuser`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `company` (`company`),
  KEY `phone` (`phone`),
  KEY `mobile` (`mobile`),
  KEY `address` (`address`),
  KEY `city` (`city`),
  KEY `zip` (`zip`),
  KEY `country` (`country`),
  KEY `state` (`state`),
  KEY `comment` (`comment`(255)),
  KEY `mac` (`mac`),
  KEY `acctype` (`acctype`),
  KEY `email` (`email`),
  KEY `maccm` (`maccm`),
  KEY `owner` (`owner`),
  KEY `staticipcpe` (`staticipcpe`),
  KEY `staticipcm` (`staticipcm`),
  KEY `expiration` (`expiration`),
  KEY `createdon` (`createdon`),
  KEY `contractid` (`contractid`),
  KEY `contractvalid` (`contractvalid`),
  KEY `lastlogoff` (`lastlogoff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rm_users`
--

INSERT INTO `rm_users` (`username`, `password`, `groupid`, `enableuser`, `uplimit`, `downlimit`, `comblimit`, `firstname`, `lastname`, `company`, `phone`, `mobile`, `address`, `city`, `zip`, `country`, `state`, `comment`, `gpslat`, `gpslong`, `mac`, `usemacauth`, `expiration`, `uptimelimit`, `srvid`, `staticipcm`, `staticipcpe`, `ipmodecm`, `ipmodecpe`, `poolidcm`, `poolidcpe`, `createdon`, `acctype`, `credits`, `cardfails`, `createdby`, `owner`, `taxid`, `email`, `maccm`, `custattr`, `warningsent`, `verifycode`, `verified`, `selfreg`, `verifyfails`, `verifysentnum`, `verifymobile`, `contractid`, `contractvalid`, `actcode`, `pswactsmsnum`, `alertemail`, `alertsms`, `lang`, `lastlogoff`) VALUES
('user', '3bbb40e49c6849a9ae48029e93f113803a604ddf', 1, 1, 565033, 1102080145, 424323, 'John', 'Smith', 'My Company', '455029545', '4641284123', 'Oak road 1472.', 'Tampa', '1343', 'United States', 'Florida', '', '0.00000000000000', '0.00000000000000', '', 0, '2013-10-11 00:00:00', 1026, 16, '', '', 0, 0, 0, 0, '2013-05-27', 0, '1000.00', 0, 'admin', 'admin', 'AV43782', 'user@localdomain.com', '', '', 0, '', 0, 0, 0, 0, '', 'AE1323-12', '0000-00-00', '', 2, 1, 1, 'English', '2013-10-15 10:43:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
