-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:29 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `infowmmo_whmcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `mod_invoicedata`
--

CREATE TABLE IF NOT EXISTS `mod_invoicedata` (
  `invoiceid` int(10) NOT NULL,
  `clientsdetails` text NOT NULL,
  `customfields` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblaccounts`
--

CREATE TABLE IF NOT EXISTS `tblaccounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `currency` int(10) NOT NULL,
  `gateway` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `amountin` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fees` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amountout` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `transid` text NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `refundid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `userid` (`userid`),
  KEY `date` (`date`),
  KEY `transid` (`transid`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblactivitylog`
--

CREATE TABLE IF NOT EXISTS `tblactivitylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `user` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ipaddr` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tblactivitylog`
--

INSERT INTO `tblactivitylog` (`id`, `date`, `description`, `user`, `userid`, `ipaddr`) VALUES
(1, '2015-12-18 21:20:35', 'General Settings Modified. Changes made: Company Name Changed from ''Company Name'' to ''Infoway india''. Email Changed from ''changeme@changeme.com'' to ''kroy.iips@gmail.com''. Domain Changed from ''http://www.yourdomain.com/'' to ''http://www.infowayindia.in/''. Language Changed from ''English'' to ''english''. Mail Encoding Changed from '''' to ''0''. Email CSS Changed. Ticket Email Limit Changed from '''' to ''10''. Prevent Email Reopening Disabled. Update Last Reply Timestamp Changed from '''' to ''always''. PDF Paper Size Changed from '''' to ''A4''. send Failed Login Whitelist Disabled. Allow Smarty Php Tags Disabled. Log API Authentication Disabled. Allow Clients Email Opt Out Disabled.', 'kroy.iips@gmail.com', 0, '111.118.243.204'),
(2, '2015-12-18 21:21:42', 'General Settings Modified. Changes made: Client Date Format Changed from '''' to ''full''. Default Country Changed from ''US'' to ''IN''. Enable Proforma Invoicing Disabled.', 'kroy.iips@gmail.com', 0, '111.118.243.204'),
(3, '2015-12-18 21:22:41', 'General Settings Modified. Changes made: Order Days Grace Changed from ''0'' to ''7''. Enable Proforma Invoicing Disabled.', 'kroy.iips@gmail.com', 0, '111.118.243.204'),
(4, '2015-12-18 21:27:29', 'General Settings Modified. Changes made: Domain Sync Next Due Date Enabled. Domain Sync Next Due Date Days Changed from ''0'' to ''10''. Default Nameserver1 Changed from ''ns1.yourdomain.com'' to ''ns1.infowayindia.in''. Default Nameserver2 Changed from ''ns2.yourdomain.com'' to ''ns2.infowayindia.in''. Registrar Admin Country Changed from ''US'' to ''IN''. Enable Proforma Invoicing Disabled.', 'kroy.iips@gmail.com', 0, '111.118.243.204'),
(5, '2015-12-18 21:29:03', 'General Settings Modified. Changes made: System Emails From Name Changed from ''WHMCompleteSolution'' to ''Infoway India''. System Emails From Email Changed from ''noreply@yourdomain.com'' to ''noreply@infowayindia.in''. Enable Proforma Invoicing Disabled.', 'kroy.iips@gmail.com', 0, '111.118.243.204'),
(6, '2015-12-18 21:47:31', 'Created Client kundan roy - User ID: 1', 'kroy.iips@gmail.com', 0, '115.247.12.16'),
(7, '2015-12-18 21:47:33', 'Email Sending Failed - Could not instantiate mail function. (User ID: 1 - Subject: Welcome)', 'kroy.iips@gmail.com', 0, '115.247.12.16'),
(8, '2016-08-17 15:04:46', 'Failed Login Attempt - User ID: 1', 'System', 1, '43.241.144.70'),
(9, '2016-08-17 15:04:59', 'Failed Login Attempt - User ID: 1', 'System', 1, '43.241.144.70'),
(10, '2016-08-17 15:05:11', 'Email Sending Failed - Could not instantiate mail function. (User ID: 1 - Subject: Your login details for Infoway india)', 'System', 0, '43.241.144.70'),
(11, '2016-08-17 15:05:11', 'Password Reset Requested', 'System', 1, '43.241.144.70'),
(12, '2016-08-17 15:09:31', 'Created Client kundan roy - User ID: 2', 'System', 0, '43.241.144.70'),
(13, '2016-08-17 15:09:32', 'Email Sending Failed - Could not instantiate mail function. (User ID: 2 - Subject: Welcome)', 'System', 0, '43.241.144.70');

-- --------------------------------------------------------

--
-- Table structure for table `tbladdonmodules`
--

CREATE TABLE IF NOT EXISTS `tbladdonmodules` (
  `module` text NOT NULL,
  `setting` text NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbladdons`
--

CREATE TABLE IF NOT EXISTS `tbladdons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `packages` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `billingcycle` text NOT NULL,
  `tax` text NOT NULL,
  `showorder` text NOT NULL,
  `downloads` text NOT NULL,
  `autoactivate` text NOT NULL,
  `suspendproduct` text NOT NULL,
  `welcomeemail` int(10) NOT NULL,
  `weight` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbladminlog`
--

CREATE TABLE IF NOT EXISTS `tbladminlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `adminusername` text NOT NULL,
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logouttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddress` text NOT NULL,
  `sessionid` text NOT NULL,
  `lastvisit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `logouttime` (`logouttime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbladminlog`
--

INSERT INTO `tbladminlog` (`id`, `adminusername`, `logintime`, `logouttime`, `ipaddress`, `sessionid`, `lastvisit`) VALUES
(1, 'kroy.iips@gmail.com', '2015-12-18 21:14:35', '2015-12-18 21:32:57', '111.118.243.204', 'ihl6chpj8ghj4g64tdmj4uovp6', '2015-12-18 21:29:04'),
(2, 'kroy.iips@gmail.com', '2015-12-18 21:32:57', '0000-00-00 00:00:00', '115.247.12.16', 'ekkgvjuniibgg8rackmdses025', '2015-12-18 21:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbladminperms`
--

CREATE TABLE IF NOT EXISTS `tbladminperms` (
  `roleid` int(1) NOT NULL,
  `permid` int(1) NOT NULL,
  KEY `roleid_permid` (`roleid`,`permid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbladminperms`
--

INSERT INTO `tbladminperms` (`roleid`, `permid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 125),
(1, 126),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 71),
(2, 73),
(2, 85),
(2, 98),
(2, 99),
(2, 101),
(2, 104),
(2, 105),
(2, 110),
(2, 120),
(2, 123),
(2, 124),
(2, 125),
(2, 125),
(2, 126),
(2, 126),
(2, 128),
(2, 129),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 50),
(3, 105),
(3, 125),
(3, 125),
(3, 126),
(3, 128);

-- --------------------------------------------------------

--
-- Table structure for table `tbladminroles`
--

CREATE TABLE IF NOT EXISTS `tbladminroles` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `widgets` text NOT NULL,
  `systememails` int(1) NOT NULL,
  `accountemails` int(1) NOT NULL,
  `supportemails` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbladminroles`
--

INSERT INTO `tbladminroles` (`id`, `name`, `widgets`, `systememails`, `accountemails`, `supportemails`) VALUES
(1, 'Full Administrator', 'activity_log,getting_started,income_forecast,income_overview,my_notes,network_status,open_invoices,orders_overview,paypal_addon,admin_activity,client_activity,system_overview,todo_list,whmcs_news,supporttickets_overview,calendar', 1, 1, 1),
(2, 'Sales Operator', 'activity_log,getting_started,income_forecast,income_overview,my_notes,network_status,open_invoices,orders_overview,paypal_addon,client_activity,todo_list,whmcs_news,supporttickets_overview,calendar', 0, 1, 1),
(3, 'Support Operator', 'activity_log,getting_started,my_notes,todo_list,whmcs_news,supporttickets_overview,calendar', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmins`
--

CREATE TABLE IF NOT EXISTS `tbladmins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `roleid` int(1) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `passwordhash` varchar(255) NOT NULL DEFAULT '',
  `authmodule` text NOT NULL,
  `authdata` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `signature` text NOT NULL,
  `notes` text NOT NULL,
  `template` text NOT NULL,
  `language` text NOT NULL,
  `disabled` int(1) NOT NULL,
  `loginattempts` int(1) NOT NULL,
  `supportdepts` text NOT NULL,
  `ticketnotifications` text NOT NULL,
  `homewidgets` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbladmins`
--

INSERT INTO `tbladmins` (`id`, `uuid`, `roleid`, `username`, `password`, `passwordhash`, `authmodule`, `authdata`, `firstname`, `lastname`, `email`, `signature`, `notes`, `template`, `language`, `disabled`, `loginattempts`, `supportdepts`, `ticketnotifications`, `homewidgets`) VALUES
(1, 'e3265ecd-0be1-47e4-af64-377fb8751059', 1, 'kroy.iips@gmail.com', '$2y$10$RwqSBAkAnnvEj/c2aryPTOyLbqqEIdm5n15ZooxugMOnJO8.Zajmu', '$2y$10$MIenexRDYQPRiiHGAfBka.tMRgJVhnoY9JJ2y15nzYuCBlfwY1GCG', '', '', 'kundan', 'roy', 'kroy.iips@gmail.com', '', 'Welcome to WHMCS!  Please ensure you have setup the cron job to automate tasks', 'blend', '', 0, 0, ',', '', 'getting_started:true,orders_overview:true,supporttickets_overview:true,my_notes:true,client_activity:true,open_invoices:true,activity_log:true|income_overview:true,system_overview:true,whmcs_news:true,sysinfo:true,admin_activity:true,todo_list:true,network_status:true,income_forecast:true|');

-- --------------------------------------------------------

--
-- Table structure for table `tbladminsecurityquestions`
--

CREATE TABLE IF NOT EXISTS `tbladminsecurityquestions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblaffiliates`
--

CREATE TABLE IF NOT EXISTS `tblaffiliates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `clientid` int(10) NOT NULL,
  `visitors` int(1) NOT NULL,
  `paytype` text NOT NULL,
  `payamount` decimal(10,2) NOT NULL,
  `onetime` int(1) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `withdrawn` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `affiliateid` (`id`),
  KEY `clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblaffiliatesaccounts`
--

CREATE TABLE IF NOT EXISTS `tblaffiliatesaccounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `lastpaid` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblaffiliateshistory`
--

CREATE TABLE IF NOT EXISTS `tblaffiliateshistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `date` date NOT NULL,
  `affaccid` int(10) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblaffiliatespending`
--

CREATE TABLE IF NOT EXISTS `tblaffiliatespending` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affaccid` int(10) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `clearingdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clearingdate` (`clearingdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblaffiliateswithdrawals`
--

CREATE TABLE IF NOT EXISTS `tblaffiliateswithdrawals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE IF NOT EXISTS `tblannouncements` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `title` text NOT NULL,
  `announcement` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `parentid` int(10) NOT NULL,
  `language` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblannouncements`
--

INSERT INTO `tblannouncements` (`id`, `date`, `title`, `announcement`, `published`, `parentid`, `language`, `created_at`, `updated_at`) VALUES
(1, '2015-12-18 21:11:49', 'Thank you for choosing WHMCS!', '<p>Welcome to <a title="WHMCS" href="http://whmcs.com" target="_blank">WHMCS</a>! You have made a great choice and we want to help you get up and running as quickly as possible.</p>\n<p>This is a sample announcement. Announcements are a great way to keep your customers informed about news and special offers. You can edit or delete this announcement by logging into the admin area and navigating to <em>Support &gt; Announcements</em>.</p>\n<p>If at any point you get stuck, our support team is available 24x7 to assist you. Simply visit <a title="www.whmcs.com/support" href="http://www.whmcs.com/support" target="_blank">www.whmcs.com/support</a> to request assistance.</p>', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplinks`
--

CREATE TABLE IF NOT EXISTS `tblapplinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblapplinks_links`
--

CREATE TABLE IF NOT EXISTS `tblapplinks_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `applink_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_label` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblapplinks_log`
--

CREATE TABLE IF NOT EXISTS `tblapplinks_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `applink_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblbannedemails`
--

CREATE TABLE IF NOT EXISTS `tblbannedemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain` text NOT NULL,
  `count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblbannedips`
--

CREATE TABLE IF NOT EXISTS `tblbannedips` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` text NOT NULL,
  `reason` text NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblbillableitems`
--

CREATE TABLE IF NOT EXISTS `tblbillableitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `description` text NOT NULL,
  `hours` decimal(5,1) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `recur` int(5) NOT NULL DEFAULT '0',
  `recurcycle` text NOT NULL,
  `recurfor` int(5) NOT NULL DEFAULT '0',
  `invoiceaction` int(1) NOT NULL,
  `duedate` date NOT NULL,
  `invoicecount` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblbillableitems`
--

INSERT INTO `tblbillableitems` (`id`, `userid`, `description`, `hours`, `amount`, `recur`, `recurcycle`, `recurfor`, `invoiceaction`, `duedate`, `invoicecount`) VALUES
(1, 1, 'jo - 10 Hours @ 1000/Hour', '10.0', '10000.00', 0, '', 0, 1, '2015-12-25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrowserlinks`
--

CREATE TABLE IF NOT EXISTS `tblbrowserlinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblbundles`
--

CREATE TABLE IF NOT EXISTS `tblbundles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `validfrom` date NOT NULL,
  `validuntil` date NOT NULL,
  `uses` int(4) NOT NULL,
  `maxuses` int(4) NOT NULL,
  `itemdata` text NOT NULL,
  `allowpromo` int(1) NOT NULL,
  `showgroup` int(1) NOT NULL,
  `gid` int(10) NOT NULL,
  `description` text NOT NULL,
  `displayprice` decimal(10,2) NOT NULL,
  `sortorder` int(3) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcalendar`
--

CREATE TABLE IF NOT EXISTS `tblcalendar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `start` int(10) NOT NULL,
  `end` int(10) NOT NULL,
  `allday` int(1) NOT NULL,
  `adminid` int(10) NOT NULL,
  `recurid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcancelrequests`
--

CREATE TABLE IF NOT EXISTS `tblcancelrequests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `relid` int(10) NOT NULL,
  `reason` text NOT NULL,
  `type` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblclientgroups`
--

CREATE TABLE IF NOT EXISTS `tblclientgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(45) NOT NULL,
  `groupcolour` varchar(45) DEFAULT NULL,
  `discountpercent` decimal(10,2) unsigned DEFAULT '0.00',
  `susptermexempt` text,
  `separateinvoices` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

CREATE TABLE IF NOT EXISTS `tblclients` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `password` text NOT NULL,
  `authmodule` text NOT NULL,
  `authdata` text NOT NULL,
  `currency` int(10) NOT NULL,
  `defaultgateway` text NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `taxexempt` tinyint(1) NOT NULL,
  `latefeeoveride` tinyint(1) NOT NULL,
  `overideduenotices` tinyint(1) NOT NULL,
  `separateinvoices` tinyint(1) NOT NULL,
  `disableautocc` tinyint(1) NOT NULL,
  `datecreated` date NOT NULL,
  `notes` text NOT NULL,
  `billingcid` int(10) NOT NULL,
  `securityqid` int(10) NOT NULL,
  `securityqans` text NOT NULL,
  `groupid` int(10) NOT NULL,
  `cardtype` varchar(255) NOT NULL DEFAULT '',
  `cardlastfour` text NOT NULL,
  `cardnum` blob NOT NULL,
  `startdate` blob NOT NULL,
  `expdate` blob NOT NULL,
  `issuenumber` blob NOT NULL,
  `bankname` text NOT NULL,
  `banktype` text NOT NULL,
  `bankcode` blob NOT NULL,
  `bankacct` blob NOT NULL,
  `gatewayid` text NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `status` enum('Active','Inactive','Closed') NOT NULL DEFAULT 'Active',
  `language` text NOT NULL,
  `pwresetkey` text NOT NULL,
  `emailoptout` int(1) NOT NULL,
  `overrideautoclose` int(1) NOT NULL,
  `allow_sso` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pwresetexpiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `firstname_lastname` (`firstname`(32),`lastname`(32)),
  KEY `email` (`email`(64))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` (`id`, `uuid`, `firstname`, `lastname`, `companyname`, `email`, `address1`, `address2`, `city`, `state`, `postcode`, `country`, `phonenumber`, `password`, `authmodule`, `authdata`, `currency`, `defaultgateway`, `credit`, `taxexempt`, `latefeeoveride`, `overideduenotices`, `separateinvoices`, `disableautocc`, `datecreated`, `notes`, `billingcid`, `securityqid`, `securityqans`, `groupid`, `cardtype`, `cardlastfour`, `cardnum`, `startdate`, `expdate`, `issuenumber`, `bankname`, `banktype`, `bankcode`, `bankacct`, `gatewayid`, `lastlogin`, `ip`, `host`, `status`, `language`, `pwresetkey`, `emailoptout`, `overrideautoclose`, `allow_sso`, `created_at`, `updated_at`, `pwresetexpiry`) VALUES
(1, '5b08ce0f-e1a7-47df-b313-e0b5b2f77a21', 'kundan', 'roy', 'Infoway india', 'kroy.iips@gmail.com', 'indore', '', 'indore', 'Madhya Pradesh', '452001', 'IN', '7452122', 'd9964aff517ab12aead2e340b5cf2974:MwK!c', '', '', 1, '', '100.00', 0, 0, 0, 0, 0, '2015-12-18', 'hi', 0, 0, 'LeXbd4502piR19HAaSUMmOaq5H8s53h9iGs=', 0, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '115.247.12.16', '115.247.12.16', 'Active', 'english', '29fd722e87c88ff6156412b64b7e0231', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-08-17 17:05:10'),
(2, '355bf631-22ca-45fa-84d5-3f2b1378c53c', 'kundan', 'roy', 'cyber infoway', 'kroy@mailinator.com', 'indore', 'address2', 'indore', 'Madhya Pradesh', '452001', 'IN', '8103194076', '14b188d69075d73e1132ce6de2b96db1:wPq#l', '', '', 1, '', '0.00', 0, 0, 0, 0, 0, '2016-08-17', '', 0, 0, '5vLsc/Gg1wDYlSzZimZQG1u1FOM=', 0, '', '', '', '', '', '', '', '', '', '', '', '2016-08-17 15:09:31', '43.241.144.70', '43.241.144.70', 'Active', '', '', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblclientsfiles`
--

CREATE TABLE IF NOT EXISTS `tblclientsfiles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `title` text NOT NULL,
  `filename` text NOT NULL,
  `adminonly` int(1) NOT NULL,
  `dateadded` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblconfiguration`
--

CREATE TABLE IF NOT EXISTS `tblconfiguration` (
  `setting` text CHARACTER SET utf8 NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `setting` (`setting`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblconfiguration`
--

INSERT INTO `tblconfiguration` (`setting`, `value`, `created_at`, `updated_at`) VALUES
('Language', 'english', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('CompanyName', 'Infoway india', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('Email', 'kroy.iips@gmail.com', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('Domain', 'http://www.infowayindia.in/', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('LogoURL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SystemURL', 'http://infowayindia.in/whmcs/', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SystemSSLURL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DisableSessionIPCheck', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoSuspension', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoSuspensionDays', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateInvoiceDaysBefore', '14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AffiliateEnabled', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AffiliateEarningPercent', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AffiliateBonusDeposit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AffiliatePayout', '25.00', '0000-00-00 00:00:00', '2015-12-18 21:11:47'),
('AffiliateLinks', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ActivityLimit', '10000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DateFormat', 'DD/MM/YYYY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('PreSalesQuestions', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('Template', 'six', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AllowRegister', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AllowTransfer', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AllowOwnDomain', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('EnableTOSAccept', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TermsOfService', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AllowLanguageChange', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AllowCustomerChangeInvoiceGateway', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DefaultNameserver1', 'ns1.infowayindia.in', '0000-00-00 00:00:00', '2015-12-18 21:27:29'),
('DefaultNameserver2', 'ns2.infowayindia.in', '0000-00-00 00:00:00', '2015-12-18 21:27:29'),
('SendInvoiceReminderDays', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SendReminder', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NumRecordstoDisplay', '50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BCCMessages', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MailType', 'mail', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SMTPHost', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SMTPUsername', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SMTPPassword', '', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('SMTPPort', '25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ShowCancellationButton', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('UpdateStatsAuto', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('InvoicePayTo', 'Address goes here...', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SendAffiliateReportMonthly', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('InvalidLoginBanLength', '15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('Signature', 'Signature goes here...', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainOnlyOrderEnabled', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TicketBannedAddresses', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SendEmailNotificationonUserDetailsChange', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TicketAllowedFileTypes', '.jpg,.gif,.jpeg,.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CloseInactiveTickets', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('InvoiceLateFeeAmount', '10.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoTermination', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoTerminationDays', '30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminFirstName', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminLastName', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminCompanyName', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminAddress1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminAddress2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminCity', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminStateProvince', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminCountry', 'IN', '0000-00-00 00:00:00', '2015-12-18 21:27:29'),
('RegistrarAdminPostalCode', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminPhone', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminFax', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminEmailAddress', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RegistrarAdminUseClientDetails', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('Charset', 'utf-8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoUnsuspend', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RunScriptonCheckOut', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('License', 'ODUxNTlmM2MxNjA3ZTEwMzhmN2IyMWI4YWI1MTFhZmI1NDJiMDVkY1dhaW9UTnpvemM3SXljdWxXWXQ5\nR1prbEdiaFpuSTZJVE02TTNPaWtIYm9SbmJ2MWtJNmNqT3p0aklseDJZNU4yWnVsR2JzbG1ZaW9qTXhv\nemM3SWlOdzBTTXcwaU54QWpNaW9ETXhvemM3SVNaMEZHWmxWSFowaFhadUppT3hFak96dGpJeEFUTHlF\nVEwxRURNeUlpT3dFak96dGpJbFJYWWtkV1p5SmlPM296YzdJaUk2QWpPenRqSXlWR2JzVjJjbEpuSTZn\nak96dFRNNkkyT2lNM2NsTjJZaFJuY3ZCSGMxTm5JNk1UTTZNM093b2pZN0l5Y2xSWFlrQlhkelZtY3BW\nWGNsSm5JNlVUTTZNM09pVTJjaFZHVGdrSGJvUm5idjFrSTZNVE02TTNPaVVXYmg1R2RqVkhadkpIY2lv\nVE14b3pjN0lDUlV4RUl1SWxMRTVDVWlvRE14b3pjN0lTWnRGbWJrVm1jbFIzY3BkV1p5SmlPMEVqT3p0\naklsWlhhME5XUWlvak42TTNPaU1YZDBGR2R6SmlPMm96YzdJQ040VVdNeUl6TjRNV01qTmpNbFptTTRF\nR05oMUNabE5YWWx4a0k2Y2pNNk0zT2lrWFpySmlPem96YzdwRE15b1RZOWVkYjBlY2YzMGZkM2U0OTAy\nNTQxZjJkODhhMTExMWY5NzM0ODM0ZD09UWY3SUNPeElUTTFFRE15SWlPNG96YzdJU1owRkdack5XWm9O\nbUk2a2pPenRqSXg0eVl5MUNNdUVqTDJJaU93RWpPenRqSXU5V2F6SlhaMlYyY2hWR2JsSlhaeUJIZHpW\nR2RoeG1JNk1qTTZNM09pRWpMbE5YWWx4V1p5MUNNdUlqTDJJaU8xRWpPenRqSXU5V2F6SlhaMk5XYXNK\nV2R3UjNjbFJYWXNKaU81RWpPenRqSXdBak8yQVRMd0FqT3dBak93QURWNEVUTHhBVEwyRURNeUlpTzFJ\nak96dGpJbFJYWWtsSGRwUkdiaFpYWjBGR1p3Vm5JNmNUTTZNWGY3cERNNkUyT2lNbmJ2bEdkdzkyWnBa\nbWJ2Tm1JNk1UTTZNWGY3cERNNkUyT2lNbmJ2UkdaaEppTzJvemM5dG5Pd29UWTdJeWNreFdacFpXYnZS\nM2MxTm1JNklUTTZNM09pTTNZdGgyZHZ3V2IwaDJYamxHYmlWSGN2OFdidGQzYm01V2F2VVdidmgyTGlv\nak16b3pjN0l5Y3lsR1prbEdiaFpuSTZrak96dGpJd0FUTXVrVE94NFNNNTRDT3dJakk2UVRNNk0zT2lN\nSGNwUldhc0ZtZGlvRE82TTNPaTRXYXVFV2FrNVdhNUYyZHZabWJwNXlkM2RITHVsbUxobEdadWxXZWhk\nM2JtNTI3ZDZiYTllY2E4NmZiOWNhMjc1OWJjZGJiZDRlYjM5ZDdlNDkwNmI=', '0000-00-00 00:00:00', '2015-12-18 21:14:02'),
('OrderFormTemplate', 'standard_cart', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AllowDomainsTwice', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AddLateFeeDays', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TaxEnabled', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DefaultCountry', 'IN', '0000-00-00 00:00:00', '2015-12-18 21:21:40'),
('OrderFormSidebarToggle', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoRedirectoInvoice', 'gateway', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('EnablePDFInvoices', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CaptchaSetting', 'offloggedin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SupportTicketOrder', 'ASC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SendFirstOverdueInvoiceReminder', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TaxType', 'Exclusive', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DefaultNameserver3', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainDNSManagement', '5.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainEmailForwarding', '5.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('InvoiceIncrement', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ContinuousInvoiceGeneration', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoCancellationRequests', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SystemEmailsFromName', 'Infoway India', '0000-00-00 00:00:00', '2015-12-18 21:29:03'),
('SystemEmailsFromEmail', 'noreply@infowayindia.in', '0000-00-00 00:00:00', '2015-12-18 21:29:03'),
('AllowClientRegister', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BulkCheckTLDs', '.com,.net', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('OrderDaysGrace', '7', '0000-00-00 00:00:00', '2015-12-18 21:22:41'),
('CreditOnDowngrade', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AcceptedCardTypes', 'Visa,MasterCard,Discover,American Express,JCB,EnRoute,Diners Club', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TaxDomains', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TaxLateFee', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AdminForceSSL', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ProductMonthlyPricingBreakdown', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LateFeeType', 'Percentage', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SendSecondOverdueInvoiceReminder', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SendThirdOverdueInvoiceReminder', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainIDProtection', '5.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainRenewalNotices', '30,7,-3,0,0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SequentialInvoiceNumbering', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SequentialInvoiceNumberFormat', '{NUMBER}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SequentialInvoiceNumberValue', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DefaultNameserver4', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AffiliatesDelayCommission', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SupportModule', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AddFundsEnabled', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AddFundsMinimum', '10.00', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('AddFundsMaximum', '100.00', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('AddFundsMaximumBalance', '300.00', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('ModuleHooks', '', '2015-12-18 21:11:48', '2015-12-18 21:11:48'),
('CCProcessDaysBefore', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CCAttemptOnlyOnce', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CCDaySendExpiryNotices', '25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('BulkDomainSearchEnabled', '1', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('AutoRenewDomainsonPayment', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainAutoRenewDefault', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CCRetryEveryWeekFor', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SupportTicketKBSuggestions', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DailyEmailBackup', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('FTPBackupHostname', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('FTPBackupUsername', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('FTPBackupPassword', '0inx95meaLfgF9NjUudCUHclic4=', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('FTPBackupDestination', '/', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TaxL2Compound', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SEOFriendlyUrls', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ShowCCIssueStart', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ClientDropdownFormat', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TicketRatingEnabled', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NetworkIssuesRequireLogin', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ShowNotesFieldonCheckout', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RequireLoginforClientTickets', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('EmailCSS', 'body,td { font-family: verdana; font-size: 11px; font-weight: normal; }\r\na { color: #0000ff; }', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('CurrencyAutoUpdateExchangeRates', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CurrencyAutoUpdateProductPrices', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('RequiredPWStrength', '50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MaintenanceMode', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('MaintenanceModeMessage', 'We are currently performing maintenance and will be back shortly.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SkipFraudForExisting', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SMTPSSL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ContactFormDept', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ContactFormTo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TicketEscalationLastRun', '2009-01-01 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('APIAllowedIPs', 'a:1:{i:0;a:2:{s:2:"ip";s:0:"";s:4:"note";s:0:"";}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NOMD5', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DisableSupportTicketReplyEmailsLogging', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('OverageBillingMethod', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CCNeverStore', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CCAllowCustomerDelete', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateDomainInvoiceDaysBefore', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NoInvoiceEmailOnOrder', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TaxInclusiveDeduct', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LateFeeMinimum', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoProvisionExistingOnly', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('EnableDomainRenewalOrders', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('EnableMassPay', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NoAutoApplyCredit', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateInvoiceDaysBeforeMonthly', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateInvoiceDaysBeforeQuarterly', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateInvoiceDaysBeforeSemiAnnually', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateInvoiceDaysBeforeAnnually', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateInvoiceDaysBeforeBiennially', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CreateInvoiceDaysBeforeTriennially', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ClientsProfileUneditableFields', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ClientDisplayFormat', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CCDoNotRemoveOnExpiry', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('GenerateRandomUsername', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AddFundsRequireOrder', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('GroupSimilarLineItems', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('ProrataClientsAnniversaryDate', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('TCPDFFont', 'helvetica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CancelInvoiceOnCancellation', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AttachmentThumbnails', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('EmailGlobalHeader', '&lt;p&gt;&lt;a href=&quot;{$company_domain}&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;{$company_logo_url}&quot; alt=&quot;{$company_name}&quot; border=&quot;0&quot; /&gt;&lt;/a&gt;&lt;/p&gt;', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('EmailGlobalFooter', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainSyncEnabled', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainSyncNextDueDate', 'on', '0000-00-00 00:00:00', '2015-12-18 21:27:29'),
('DomainSyncNextDueDateDays', '10', '0000-00-00 00:00:00', '2015-12-18 21:27:29'),
('TicketMask', '%n%n%n%n%n%n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AutoClientStatusChange', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('AllowClientsEmailOptOut', '', '0000-00-00 00:00:00', '2015-12-18 21:20:35'),
('BannedSubdomainPrefixes', 'mail,mx,gapps,gmail,webmail,cpanel,whm,ftp,clients,billing,members,login,accounts,access', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('FreeDomainAutoRenewRequiresProduct', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('DomainToDoListEntries', 'on', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('Version', '6.2.0-rc.1', '0000-00-00 00:00:00', '2015-12-18 21:11:48'),
('AddonModulesHooks', '', '2015-12-18 21:11:48', '2015-12-18 21:11:48'),
('InstanceID', '68Mw0qOSxB8i', '2015-12-18 21:13:29', '2015-12-18 21:13:29'),
('token_namespaces', 'a:3:{s:13:"WHMCS.default";b:1;s:19:"WHMCS.admin.default";b:1;s:19:"WHMCS.domainchecker";b:0;}', '2015-12-18 21:13:29', '2015-12-18 21:13:29'),
('ToggleInfoPopup', 'a:1:{i:1;s:14:"20151209000000";}', '2015-12-18 21:15:22', '2015-12-18 21:15:22'),
('domainLookupProvider', 'WhmcsWhois', '2015-12-18 21:19:31', '2015-12-18 21:19:31'),
('MaintenanceModeURL', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('ClientDateFormat', 'full', '2015-12-18 21:20:35', '2015-12-18 21:21:40'),
('DomainSyncNotifyOnly', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('AllowIDNDomains', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('DefaultNameserver5', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('MailEncoding', '0', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('TicketEmailLimit', '10', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('ShowClientOnlyDepts', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('TicketFeedback', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('PreventEmailReopening', '0', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('UpdateLastReplyTimestamp', 'always', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('DownloadsIncludeProductLinked', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('PDFPaperSize', 'A4', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('StoreClientDataSnapshotOnInvoiceCreation', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('AutoCancelSubscriptions', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('EnableProformaInvoicing', '0', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('AffiliateDepartment', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('CaptchaType', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('ReCAPTCHAPublicKey', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('ReCAPTCHAPrivateKey', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('sendFailedLoginWhitelist', '0', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('DisableAdminPWReset', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('AllowSmartyPhpTags', '0', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('proxyHeader', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('LogAPIAuthentication', '0', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('TwitterUsername', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('AnnouncementsTweet', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('AnnouncementsFBRecommend', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('AnnouncementsFBComments', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('GooglePlus1', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('DefaultToClientArea', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('ClientsProfileOptionalFields', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('DisplayErrors', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('SQLErrorReporting', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35'),
('HooksDebugMode', '', '2015-12-18 21:20:35', '2015-12-18 21:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE IF NOT EXISTS `tblcontacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `subaccount` int(1) NOT NULL DEFAULT '0',
  `password` text NOT NULL,
  `permissions` text NOT NULL,
  `domainemails` int(1) NOT NULL,
  `generalemails` int(1) NOT NULL,
  `invoiceemails` int(1) NOT NULL,
  `productemails` int(1) NOT NULL,
  `supportemails` int(1) NOT NULL,
  `affiliateemails` int(1) NOT NULL,
  `pwresetkey` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pwresetexpiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid_firstname_lastname` (`userid`,`firstname`(32),`lastname`(32)),
  KEY `email` (`email`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcredit`
--

CREATE TABLE IF NOT EXISTS `tblcredit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `clientid` int(10) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `relid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies`
--

CREATE TABLE IF NOT EXISTS `tblcurrencies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` text NOT NULL,
  `prefix` text NOT NULL,
  `suffix` text NOT NULL,
  `format` int(1) NOT NULL,
  `rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `default` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `code`, `prefix`, `suffix`, `format`, `rate`, `default`) VALUES
(1, 'USD', '$', ' USD', 1, '1.00000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfields`
--

CREATE TABLE IF NOT EXISTS `tblcustomfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL DEFAULT '0',
  `fieldname` text NOT NULL,
  `fieldtype` text NOT NULL,
  `description` text NOT NULL,
  `fieldoptions` text NOT NULL,
  `regexpr` text NOT NULL,
  `adminonly` text NOT NULL,
  `required` text NOT NULL,
  `showorder` text NOT NULL,
  `showinvoice` text NOT NULL,
  `sortorder` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfieldsvalues`
--

CREATE TABLE IF NOT EXISTS `tblcustomfieldsvalues` (
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `value` text NOT NULL,
  KEY `fieldid_relid` (`fieldid`,`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldomainpricing`
--

CREATE TABLE IF NOT EXISTS `tbldomainpricing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `extension` text NOT NULL,
  `dnsmanagement` text NOT NULL,
  `emailforwarding` text NOT NULL,
  `idprotection` text NOT NULL,
  `eppcode` text NOT NULL,
  `autoreg` text NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extension_registrationperiod` (`extension`(32)),
  KEY `order` (`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldomainreminders`
--

CREATE TABLE IF NOT EXISTS `tbldomainreminders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `recipients` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  `days_before_expiry` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldomains`
--

CREATE TABLE IF NOT EXISTS `tbldomains` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(1) NOT NULL,
  `type` enum('Register','Transfer') NOT NULL,
  `registrationdate` date NOT NULL,
  `domain` text NOT NULL,
  `firstpaymentamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `recurringamount` decimal(10,2) NOT NULL,
  `registrar` text NOT NULL,
  `registrationperiod` int(1) NOT NULL DEFAULT '1',
  `expirydate` date DEFAULT NULL,
  `subscriptionid` text NOT NULL,
  `promoid` int(10) NOT NULL,
  `status` enum('Pending','Pending Transfer','Active','Expired','Cancelled','Fraud') NOT NULL DEFAULT 'Pending',
  `nextduedate` date NOT NULL DEFAULT '0000-00-00',
  `nextinvoicedate` date NOT NULL,
  `additionalnotes` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `dnsmanagement` tinyint(1) NOT NULL,
  `emailforwarding` tinyint(1) NOT NULL,
  `idprotection` tinyint(1) NOT NULL,
  `donotrenew` tinyint(1) NOT NULL,
  `reminders` text NOT NULL,
  `synced` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`),
  KEY `domain` (`domain`(64)),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldomainsadditionalfields`
--

CREATE TABLE IF NOT EXISTS `tbldomainsadditionalfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domainid` int(10) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `domainid` (`domainid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldownloadcats`
--

CREATE TABLE IF NOT EXISTS `tbldownloadcats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `description` text NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldownloads`
--

CREATE TABLE IF NOT EXISTS `tbldownloads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` int(10) NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `downloads` int(10) NOT NULL DEFAULT '0',
  `location` text NOT NULL,
  `clientsonly` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `productdownload` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `title` (`title`(32)),
  KEY `downloads` (`downloads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailmarketer`
--

CREATE TABLE IF NOT EXISTS `tblemailmarketer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `settings` text NOT NULL,
  `disable` int(1) NOT NULL,
  `marketing` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblemails`
--

CREATE TABLE IF NOT EXISTS `tblemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `to` text,
  `cc` text,
  `bcc` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailtemplates`
--

CREATE TABLE IF NOT EXISTS `tblemailtemplates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `name` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `attachments` text NOT NULL,
  `fromname` text NOT NULL,
  `fromemail` text NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `custom` tinyint(1) NOT NULL,
  `language` text NOT NULL,
  `copyto` text NOT NULL,
  `plaintext` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `type` (`type`(32)),
  KEY `name` (`name`(64))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`id`, `type`, `name`, `subject`, `message`, `attachments`, `fromname`, `fromemail`, `disabled`, `custom`, `language`, `copyto`, `plaintext`, `created_at`, `updated_at`) VALUES
(1, 'product', 'Hosting Account Welcome Email', 'New Account Information', '<p>Dear {$client_name},</p><p align="center"><strong>PLEASE READ THIS EMAIL IN FULL AND PRINT IT FOR YOUR RECORDS</strong></p><p>Thank you for your order from us! Your hosting account has now been setup and this email contains all the information you will need in order to begin using your account.</p><p>If you have requested a domain name during sign up, please keep in mind that your domain name will not be visible on the internet instantly. This process is called propagation and can take up to 48 hours. Until your domain has propagated, your website and email will not function, we have provided a temporary url which you may use to view your website and upload files in the meantime.</p><p><strong>New Account Information</strong></p><p>Hosting Package: {$service_product_name}<br />Domain: {$service_domain}<br />First Payment Amount: {$service_first_payment_amount}<br />Recurring Amount: {$service_recurring_amount}<br />Billing Cycle: {$service_billing_cycle}<br />Next Due Date: {$service_next_due_date}</p><p><strong>Login Details</strong></p><p>Username: {$service_username}<br />Password: {$service_password}</p><p>Control Panel URL: <a href="http://{$service_server_ip}:2082/">http://{$service_server_ip}:2082/</a><br />Once your domain has propogated, you may also use <a href="http://www.{$service_domain}:2082/">http://www.{$service_domain}:2082/</a></p><p><strong>Server Information</strong></p><p>Server Name: {$service_server_name}<br />Server IP: {$service_server_ip}</p><p>If you are using an existing domain with your new hosting account, you will need to update the nameservers to point to the nameservers listed below.</p><p>Nameserver 1: {$service_ns1} ({$service_ns1_ip})<br />Nameserver 2: {$service_ns2} ({$service_ns2_ip}){if $service_ns3}<br />Nameserver 3: {$service_ns3} ({$service_ns3_ip}){/if}{if $service_ns4}<br />Nameserver 4: {$service_ns4} ({$service_ns4_ip}){/if}</p><p><strong>Uploading Your Website</strong></p><p>Temporarily you may use one of the addresses given below to manage your web site:</p><p>Temporary FTP Hostname: {$service_server_ip}<br />Temporary Webpage URL: <a href="http://{$service_server_ip}/~{$service_username}/">http://{$service_server_ip}/~{$service_username}/</a></p><p>And once your domain has propagated you may use the details below:</p><p>FTP Hostname: {$service_domain}<br />Webpage URL: <a href="http://www.{$service_domain}">http://www.{$service_domain}</a></p><p><strong>Email Settings</strong></p><p>For email accounts that you setup, you should use the following connection details in your email program:</p><p>POP3 Host Address: mail.{$service_domain}<br />SMTP Host Address: mail.{$service_domain}<br />Username: The email address you are checking email for<br />Password: As specified in your control panel</p><p>Thank you for choosing us.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'domain', 'Domain Renewal Confirmation', 'Domain Renewal Confirmation', '<p>Dear {$client_name}, </p><p>Thank you for your domain renewal order. Your domain renewal request for the domain listed below has now been completed.</p><p>Domain: {$domain_name}<br />Renewal Length: {$domain_reg_period}<br />Renewal Price: {$domain_recurring_amount}<br />Next Due Date: {$domain_next_due_date} </p><p>You may login to your client area at {$whmcs_url} to manage your domain. </p><p>{$signature} </p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'domain', 'Domain Registration Confirmation', 'Domain Registration Confirmation', '<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis message is to confirm that your domain purchase has been successful. The details of the domain purchase are below: \r\n</p>\r\n<p>\r\nRegistration Date: {$domain_reg_date}<br />\r\nDomain: {$domain_name}<br />\r\nRegistration Period: {$domain_reg_period}<br />\r\nAmount: {$domain_first_payment_amount}<br />\r\nNext Due Date: {$domain_next_due_date} \r\n</p>\r\n<p>\r\nYou may login to your client area at {$whmcs_url} to manage your new domain. \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'product', 'Reseller Account Welcome Email', 'Reseller Account Information', '<p align="center">\r\n<strong>PLEASE PRINT THIS MESSAGE FOR YOUR RECORDS - PLEASE READ THIS EMAIL IN FULL.</strong>\r\n</p>\r\n<p>\r\nIf you have requested a domain name during sign up then this will not be visible on the internet for between 24 and 72 hours. This process is called Propagation. Until your domain has Propagated your website and email will not function, we have provided a temporary url which you may use to view your website and upload files in the meantime.\r\n</p>\r\n<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nThe reseller hosting account for {$service_domain} has been set up. The username and password below are for both cPanel to manage the website at {$service_domain} and WebHostManager to manage your Reseller Account.\r\n</p>\r\n<p>\r\n<strong>New Account Info</strong>\r\n</p>\r\n<p>\r\nDomain: {$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password}<br />\r\nHosting Package: {$service_product_name}\r\n</p>\r\n<p>\r\nControl Panel: <a href="http://{$service_server_ip}:2082/">http://{$service_server_ip}:2082/</a><br />\r\nWeb Host Manager: <a href="http://{$service_server_ip}:2086/">http://{$service_server_ip}:2086/</a>\r\n</p>\r\n<p>\r\n-------------------------------------------------------------------------------------------- <br />\r\n<strong>Web Host Manager Quick Start</strong> <br />\r\n-------------------------------------------------------------------------------------------- <br />\r\n<br />\r\nTo access your Web Host Manager, use the following address:<br />\r\n<br />\r\n<a href="http://{$service_server_ip}:2086/">http://{$service_server_ip}:2086/</a><br />\r\n<br />\r\nThe <strong>http://</strong> must be in the address line to connect to port :2086 <br />\r\nPlease use the username/password given above. <br />\r\n<br />\r\n<strong><em>To Create a New Account <br />\r\n</em></strong><br />\r\nThe first thing you need to do is scroll down on the left and click on &#39Add Package&#39 so that you can create your own hosting packages. You cannot install a domain onto your account without first creating packages.<br />\r\n<br />\r\n1. Click on &#39Create a New Account&#39 from the left hand side menu <br />\r\n2. Put the domain in the &#39Domain&#39 box (no www or http or spaces ? just domainname.com). After putting in the domain, hit TAB and it will automatically create a username. Also, enter a password for the account.<br />\r\n3. Your package selection should be one that you created earlier <br />\r\n4. Then press the create button <br />\r\n<br />\r\nThis will give you a confirmation page (you should print this for your records)\r\n</p>\r\n<p>\r\nPlease do not click on anything that you are not sure what it does. Please do not try to alter the WHM Theme from the selection box - fatal errors may occur. \r\n</p>\r\n<p>\r\n-------------------------------------------------------------------------------------------- \r\n</p>\r\n<p>\r\nTemporarily you may use one of the addresses given below manage your web site\r\n</p>\r\n<p>\r\nTemporary FTP Hostname: {$service_server_ip}<br />\r\nTemporary Webpage URL: <a href="http://{$service_server_ip}/~{$service_username}/">http://{$service_server_ip}/~{$service_username}/</a><br />\r\nTemporary Control Panel: <a href="http://{$service_server_ip}/cpanel">http://{$service_server_ip}/cpanel</a>\r\n</p>\r\n<p>\r\nOnce your domain has Propagated\r\n</p>\r\n<p>\r\nFTP Hostname: www.{$service_domain}<br />\r\nWebpage URL: <a href="http://www.{$service_domain}">http://www.{$service_domain}</a><br />\r\nControl Panel: <a href="http://www.{$service_domain}/cpanel">http://www.{$service_domain}/cpanel</a><br />\r\nWeb Host Manager: <a href="http://www.{$service_domain}/whm">http://www.{$service_domain}/whm</a>\r\n</p>\r\n<p>\r\n<strong>Mail settings</strong>\r\n</p>\r\n<p>\r\nCatch all email with your default email account\r\n</p>\r\n<p>\r\nPOP3 Host Address : mail.{$service_domain}<br />\r\nSMTP Host Address: mail.{$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password}\r\n</p>\r\n<p>\r\nAdditional mail accounts that you add\r\n</p>\r\n<p>\r\nPOP3 Host Address : mail.{$service_domain}<br />\r\nSMTP Host Address: mail.{$service_domain}<br />\r\nUsername : The FULL email address that you are picking up from (e.g. info@yourdomain.com). <br />\r\nIf your email client cannot accept a @ symbol, then you may replace this with a backslash .<br />\r\nPassword : As specified in your control panel \r\n</p>\r\n<p>\r\nThank you for choosing us.\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'domain', 'Upcoming Domain Renewal Notice', 'Upcoming Domain Renewal Notice', '<p>Dear {$client_name},</p>\n<p>{if $days_until_expiry}The domain(s) listed below are due to expire within the next {$days_until_expiry} days.{else}The domain(s) listed below are going to expire in {$domain_days_until_expiry} days. Renew now before it''s too late...{/if}</p>\n<p>{if $expiring_domains}{foreach from=$expiring_domains item=domain}{$domain.name} - {$domain.nextduedate} <strong>({$domain.days} Days)</strong><br />{/foreach}{elseif $domains}{foreach from=$domains item=domain}{$domain.name} - {$domain.nextduedate}<br />{/foreach}{else}{$domain_name} - {$domain_next_due_date} <strong>({$domain_days_until_nextdue} Days)</strong>{/if}</p>\n<p>To ensure the domain does not expire, you should renew it now. You can do this from the domains management section of our client area here: {$whmcs_link}</p>\n<p>Should you allow the domain to expire, you will be able to renew it for up to 30 days after the renewal date. During this time, the domain will not be accessible so any web site or email services associated with it will stop working.</p>\n<p>{$signature}</p>\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'domain', 'Domain Transfer Initiated', 'Domain Transfer Initiated', '<p>Dear {$client_name}, </p><p>Thank you for your domain transfer order. Your order has been received and we have now initiated the transfer process. The details of the domain purchase are below: </p><p>Domain: {$domain_name}<br />Registration Length: {$domain_reg_period}<br />Transfer Price: {$domain_first_payment_amount}<br />Renewal Price: {$domain_recurring_amount}<br />Next Due Date: {$domain_next_due_date} </p><p>You may login to your client area at {$whmcs_url} to manage your domain. </p><p>{$signature} </p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'support', 'Support Ticket Opened', 'New Support Ticket Opened', '<p>\r\n{$client_name},\r\n</p>\r\n<p>\r\nThank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. The details of your ticket are shown below.\r\n</p>\r\n<p>\r\nSubject: {$ticket_subject}<br />\r\nPriority: {$ticket_priority}<br />\r\nStatus: {$ticket_status}\r\n</p>\r\n<p>\r\nYou can view the ticket at any time at {$ticket_link}\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'support', 'Support Ticket Reply', 'Support Ticket Response', '<p>\r\n{$ticket_message}\r\n</p>\r\n<p>\r\n----------------------------------------------<br />\r\nTicket ID: #{$ticket_id}<br />\r\nSubject: {$ticket_subject}<br />\r\nStatus: {$ticket_status}<br />\r\nTicket URL: {$ticket_link}<br />\r\n----------------------------------------------\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'general', 'Client Signup Email', 'Welcome', '<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThank you for signing up with us. Your new account has been setup and you can now login to our client area using the details below. \r\n</p>\r\n<p>\r\nEmail Address: {$client_email}<br />\r\nPassword: {$client_password} \r\n</p>\r\n<p>\r\nTo login, visit {$whmcs_url} \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'product', 'Service Suspension Notification', 'Service Suspension Notification', '<p>Dear {$client_name},</p><p>This is a notification that your service has now been suspended.  The details of this suspension are below:</p><p>Product/Service: {$service_product_name}<br />{if $service_domain}Domain: {$service_domain}<br />{/if}Amount: {$service_recurring_amount}<br />Due Date: {$service_next_due_date}<br />Suspension Reason: <strong>{$service_suspension_reason}</strong></p><p>Please contact us as soon as possible to get your service reactivated.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'general', 'Credit Card Expiring Soon', 'Credit Card Expiring Soon', '<p>Dear {$client_name}, </p><p>This is a notice to inform you that your {$client_cc_type} credit card ending with {$client_cc_number} will be expiring next month on {$client_cc_expiry}. Please login to update your credit card information as soon as possible and prevent any interuptions in service at {$whmcs_url}<br /><br />If you have any questions regarding your account, please open a support ticket from the client area.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'support', 'Clients Only Bounce Message', 'Support Ticket Not Opened', '<p>{$client_name},</p><p>Your email to our support system could not be accepted because it was not recognized as coming from an email address belonging to one of our customers.  If you need assistance, please email from the address you registered with us that you use to login to our client area.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'invoice', 'Invoice Payment Confirmation', 'Invoice Payment Confirmation', '<p>Dear {$client_name},</p>\r\n<p>This is a payment receipt for Invoice {$invoice_num} sent on {$invoice_date_created}</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount: {$invoice_last_payment_amount}<br />Transaction #: {$invoice_last_payment_transid}<br />Total Paid: {$invoice_amount_paid}<br />Remaining Balance: {$invoice_balance}<br />Status: {$invoice_status}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>Note: This email will serve as an official receipt for this payment.</p>\r\n<p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'invoice', 'Invoice Created', 'Customer Invoice', '<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a notice that an invoice has been generated on {$invoice_date_created}. \r\n</p>\r\n<p>\r\nYour payment method is: {$invoice_payment_method} \r\n</p>\r\n<p>\r\nInvoice #{$invoice_num}<br />\r\nAmount Due: {$invoice_total}<br />\r\nDue Date: {$invoice_date_due} \r\n</p>\r\n<p>\r\n<strong>Invoice Items</strong> \r\n</p>\r\n<p>\r\n{$invoice_html_contents} <br />\r\n------------------------------------------------------ \r\n</p>\r\n<p>\r\nYou can login to your client area to view and pay the invoice at {$invoice_link} \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'invoice', 'Invoice Payment Reminder', 'Invoice Payment Reminder', '<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nThis is a billing reminder that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is due on {$invoice_date_due}.\r\n</p>\r\n<p>\r\nYour payment method is: {$invoice_payment_method}\r\n</p>\r\n<p>\r\nInvoice: {$invoice_num}<br />\r\nBalance Due: {$invoice_balance}<br />\r\nDue Date: {$invoice_date_due}\r\n</p>\r\n<p>\r\nYou can login to your client area to view and pay the invoice at {$invoice_link}\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'general', 'Order Confirmation', 'Order Confirmation', '<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nWe have received your order and will be processing it shortly. The details of the order are below: \r\n</p>\r\n<p>\r\nOrder Number: <b>{$order_number}</b></p>\r\n<p>\r\n{$order_details} \r\n</p>\r\n<p>\r\nYou will receive an email from us shortly once your account has been setup. Please quote your order reference number if you wish to contact us about this order. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'product', 'Dedicated/VPS Server Welcome Email', 'New Dedicated Server Information', '<p>\r\nDear {$client_name},<br />\r\n<br />\r\n<strong>PLEASE PRINT THIS MESSAGE FOR YOUR RECORDS - PLEASE READ THIS EMAIL IN FULL.</strong>\r\n</p>\r\n<p>\r\nWe are pleased to tell you that the server you ordered has now been set up and is operational.\r\n</p>\r\n<p>\r\n<strong>Server Details<br />\r\n</strong>=============================\r\n</p>\r\n<p>\r\n{$service_product_name}\r\n</p>\r\n<p>\r\nMain IP: {$service_dedicated_ip}<br />\r\nRoot pass: {$service_password}\r\n</p>\r\n<p>\r\nIP address allocation: <br />\r\n{$service_assigned_ips}\r\n</p>\r\n<p>\r\nServerName: {$service_domain}\r\n</p>\r\n<p>\r\n<strong>WHM Access<br />\r\n</strong>=============================<br />\r\n<a href="http://xxxxx:2086/">http://xxxxx:2086</a><br />\r\nUsername: root<br />\r\nPassword: {$service_password}\r\n</p>\r\n<p>\r\n<strong>Custom DNS Server Addresses</strong><br />\r\n=============================<br />\r\nThe custom DNS addresses you should set for your domain to use are: <br />\r\nPrimary DNS: {$service_ns1}<br />\r\nSecondary DNS: {$service_ns2}\r\n</p>\r\n<p>\r\nYou will have to login to your registrar and find the area where you can specify both of your custom name server addresses.\r\n</p>\r\n<p>\r\nAfter adding these custom nameservers to your domain registrar control panel, it will take 24 to 48 hours for your domain to delegate authority to your DNS server. Once this has taken effect, your DNS server has control over the DNS records for the domains which use your custom name server addresses. \r\n</p>\r\n<p>\r\n<strong>SSH Access Information<br />\r\n</strong>=============================<br />\r\nMain IP Address: xxxxxxxx<br />\r\nServer Name: {$service_domain}<br />\r\nRoot Password: xxxxxxxx\r\n</p>\r\n<p>\r\nYou can access your server using a free simple SSH client program called Putty located at:<br />\r\n<a href="http://www.securitytools.net/mirrors/putty/">http://www.securitytools.net/mirrors/putty/</a>\r\n</p>\r\n<p>\r\n<strong>Support</strong><br />\r\n=============================<br />\r\nFor any support needs, please open a ticket at {$whmcs_url}\r\n</p>\r\n<p>\r\nPlease include any necessary information to provide you with faster service, such as root password, domain names, and a description of the problem / or assistance needed. This will speed up the support time by allowing our administrators to immediately begin diagnosing the problem.\r\n</p>\r\n<p>\r\nThe manual for cPanel can be found here: <a href="http://www.cpanel.net/docs/cp/">http://www.cpanel.net/docs/cp/</a> <br />\r\nFor documentation on using WHM please see the following link: <a href="http://www.cpanel.net/docs/whm/index.html">http://www.cpanel.net/docs/whm/index.html</a>\r\n</p>\r\n<p>\r\n=============================\r\n</p>\r\n<p>\r\nIf you need to move accounts to the server use: Transfers Copy an account from another server with account password\r\n</p>\r\n<p>\r\n<a href="http://xxxxxxx:2086/scripts2/norootcopy">http://xxxxxxx:2086/scripts2/norootcopy</a>\r\n</p>\r\n<p>\r\nNote the other server must use cpanel to move it.\r\n</p>\r\n<p>\r\n=============================\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'product', 'Other Product/Service Welcome Email', 'New Product Information', '<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nYour order for {$service_product_name} has now been activated. Please keep this message for your records.\r\n</p>\r\n<p>\r\nProduct/Service: {$service_product_name}<br />\r\nPayment Method: {$service_payment_method}<br />\r\nAmount: {$service_recurring_amount}<br />\r\nBilling Cycle: {$service_billing_cycle}<br />\r\nNext Due Date: {$service_next_due_date}\r\n</p>\r\n<p>\r\nThank you for choosing us.\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'invoice', 'Credit Card Payment Confirmation', 'Credit Card Payment Confirmation', '<p>Dear {$client_name},</p>\r\n<p>This is a payment receipt for Invoice {$invoice_num} sent on {$invoice_date_created}</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount: {$invoice_last_payment_amount}<br />Transaction #: {$invoice_last_payment_transid}<br />Total Paid: {$invoice_amount_paid}<br />Remaining Balance: {$invoice_balance}<br />Status: {$invoice_status}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>Note: This email will serve as an official receipt for this payment.</p>\r\n<p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'invoice', 'Credit Card Payment Failed', 'Credit Card Payment Failed', '<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a notice that a recent credit card payment we attempted on the card we have registered for you failed. \r\n</p>\r\n<p>\r\nInvoice Date: {$invoice_date_created}<br />\r\nInvoice No: {$invoice_num}<br />\r\nAmount: {$invoice_total}<br />\r\nStatus: {$invoice_status} \r\n</p>\r\n<p>\r\nYou now need to login to your client area to pay the invoice manually. During the payment process you will be given the opportunity to change the card on record with us.<br />\r\n{$invoice_link} \r\n</p>\r\n<p>\r\nNote: This email will serve as an official receipt for this payment. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'invoice', 'Credit Card Invoice Created', 'Customer Invoice', '<p> Dear {$client_name}, </p> <p> This is a notice that an invoice has been generated on {$invoice_date_created}. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice #{$invoice_num}<br /> Amount Due: {$invoice_total}<br /> Due Date: {$invoice_date_due} </p> <p> <strong>Invoice Items</strong> </p> <p> {$invoice_html_contents} <br /> ------------------------------------------------------ </p> <p> Payment will be taken automatically on {$invoice_date_due} from your credit card on record with us. To update or change the credit card details we hold for your account please login at {$invoice_link} and click Pay Now then following the instructions on screen. </p> <p> {$signature} </p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'affiliate', 'Affiliate Monthly Referrals Report', 'Affiliate Monthly Referrals Report', '<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is your monthly affiliate referrals report. You can view your referral statistics at any time by logging in to the client area. \r\n</p>\r\n<p>\r\nTotal Visitors Referred: {$affiliate_total_visits}<br />\r\nCurrent Earnings: {$affiliate_balance}<br />\r\nAmount Withdrawn: {$affiliate_withdrawn} \r\n</p>\r\n<p>\r\n<strong>Your New Signups this Month</strong> \r\n</p>\r\n<p>\r\n{$affiliate_referrals_table} \r\n</p>\r\n<p>\r\nRemember, you can refer new customers using your unique affiliate link: {$affiliate_referral_url} \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'support', 'Support Ticket Opened by Admin', '{$ticket_subject}', '{$ticket_message}', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'invoice', 'First Invoice Overdue Notice', 'First Invoice Overdue Notice', '<p> Dear {$client_name}, </p> <p> This is a billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'product', 'SHOUTcast Welcome Email', 'SHOUTcast New Account Information', '<p align="center">\r\n<strong>PLEASE READ THIS EMAIL IN FULL AND PRINT IT FOR YOUR RECORDS</strong> \r\n</p>\r\n<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThank you for your order from us! Your shoutcast account has now been setup and this email contains all the information you will need in order to begin using your account. \r\n</p>\r\n<p>\r\n<strong>New Account Information</strong> \r\n</p>\r\n<p>\r\nDomain: {$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password} \r\n</p>\r\n<p>\r\n<strong>Server Information</strong> \r\n</p>\r\n<p>\r\nServer Name: {$service_server_name}<br />\r\nServer IP: {$service_server_ip}<br />\r\nNameserver 1: {$service_ns1}<br />\r\nNameserver 1 IP: {$service_ns1_ip}<br />\r\nNameserver 2: {$service_ns2} <br />\r\nNameserver 2 IP: {$service_ns2_ip} \r\n</p>\r\n<p>\r\nThank you for choosing us. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'invoice', 'Second Invoice Overdue Notice', 'Second Invoice Overdue Notice', '<p> Dear {$client_name}, </p> <p> This is the second billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'invoice', 'Third Invoice Overdue Notice', 'Third Invoice Overdue Notice', '<p> Dear {$client_name}, </p> <p> This is the third and final billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. Failure to make payment will result in account suspension.</p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'support', 'Replies Only Bounce Message', 'Online Submission Required', '<p>{$client_name},</p><p>Your email to our support system could not be accepted because we require you to submit all tickets via our online client support portal. You can do this at the URL below.</p><p><a href="{$whmcs_url}/submitticket.php">{$whmcs_url}/submitticket.php</a></p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'support', 'Support Ticket Auto Close Notification', 'Support Ticket Resolved', '<p>{$client_name},</p><p>This is a notification to let you know that we are changing the status of your ticket #{$ticket_id} to Closed as we have not received a response from you in over {$ticket_auto_close_time} hours.</p><p>Subject: {$ticket_subject}<br>Department: {$ticket_department}<br>Priority: {$ticket_priority}<br>Status: {$ticket_status}</p><p>If you have any further questions then please just reply to re-open the ticket.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'invoice', 'Credit Card Payment Due', 'Credit Card Payment Due', '<p>Dear {$client_name},</p><p>This is a notice to remind you that you have an invoice due on {$invoice_date_due}. We tried to bill you automatically but were unable to because we don''t have your credit card details on file.</p><p>Invoice Date: {$invoice_date_created}<br>Invoice #{$invoice_num}<br>Amount Due: {$invoice_total}<br>Due Date: {$invoice_date_due}</p><p>Please login to our client area at the link below to submit your card details or make payment using a different method.</p><p>{$invoice_link}</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'product', 'Cancellation Request Confirmation', 'Cancellation Request Confirmation', '<p>Dear {$client_name},</p><p>This email is to confirm that we have received your cancellation request for the service listed below.</p><p>Product/Service: {$service_product_name}<br />Domain: {$service_domain}</p><p>{if $service_cancellation_type=="Immediate"}The service will be terminated within the next 24 hours.{else}The service will be cancelled at the end of your current billing period on {$service_next_due_date}.{/if}</p><p>Thank you for using {$company_name} and we hope to see you again in the future.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'general', 'Quote Delivery with PDF', 'Quote #{$quote_number} - {$quote_subject}', '<p>Dear {$client_name},</p><p>Here is the quote you requested for {$quote_subject}. The quote is valid until {$quote_valid_until}. You may {if $client_id}view the quote at any time at {$quote_link} and {/if}simply reply to this email with any further questions or requirement.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'general', 'Password Reset Validation', 'Your login details for {$company_name}', '<p>Dear {$client_name},</p><p>Recently a request was submitted to reset your password for our client area. If you did not request this, please ignore this email. It will expire and become useless in 2 hours time.</p><p>To reset your password, please visit the url below:<br /><a href="{$pw_reset_url}">{$pw_reset_url}</a></p><p>When you visit the link above, you will have the opportunity to choose a new password.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'general', 'Automated Password Reset', 'Your new password for {$company_name}', '<p>Dear {$client_name},</p><p>As you requested, your password for our client area has now been reset.  Your new login details are as follows:</p><p>{$whmcs_link}<br />Email: {$client_email}<br />Password: {$client_password}</p><p>To change your password to something more memorable, after logging in go to My Details > Change Password.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'admin', 'Automatic Setup Failed', 'WHMCS Automatic Setup Failed', '<p>An order has received its first payment but the automatic provisioning has failed and requires you to manually check & resolve.</p>\r\n<p>Client ID: {$client_id}<br />{if $service_id}Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}{else}Domain ID: {$domain_id}<br />Registration Type: {$domain_type}<br />Domain: {$domain_name}{/if}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'admin', 'Automatic Setup Successful', 'WHMCS Automatic Setup Successful', '<p>An order has received its first payment and the product/service has been automatically provisioned successfully.</p>\r\n<p>Client ID: {$client_id}<br />{if $service_id}Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}{else}Domain ID: {$domain_id}<br />Registration Type: {$domain_type}<br />Domain: {$domain_name}{/if}</p>\r\n<p>{$whmcs_admin_link}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'admin', 'Domain Renewal Failed', 'WHMCS Automatic Domain Renewal Failed', '<p>An invoice for the renewal of a domain has been paid but the renewal request submitted to the registrar failed.</p>\r\n<p>Client ID: {$client_id}<br />Domain ID: {$domain_id}<br />Domain Name: {$domain_name}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'admin', 'Domain Renewal Successful', 'WHMCS Automatic Domain Renewal Successful', '<p>An invoice for the renewal of a domain has been paid and the renewal request was submitted to the registrar successfully.</p>\r\n<p>Client ID: {$client_id}<br />Domain ID: {$domain_id}<br />Domain Name: {$domain_name}</p>\r\n<p>{$whmcs_admin_link}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'admin', 'New Order Notification', 'WHMCS New Order Notification', '<p><strong>Order Information</strong></p>\r\n<p>Order ID: {$order_id}<br />\r\nOrder Number: {$order_number}<br />\r\nDate/Time: {$order_date}<br />\r\nInvoice Number: {$invoice_id}<br />\r\nPayment Method: {$order_payment_method}</p>\r\n<p><strong>Customer Information</strong></p>\r\n<p>Customer ID: {$client_id}<br />\r\nName: {$client_first_name} {$client_last_name}<br />\r\nEmail: {$client_email}<br />\r\nCompany: {$client_company_name}<br />\r\nAddress 1: {$client_address1}<br />\r\nAddress 2: {$client_address2}<br />\r\nCity: {$client_city}<br />\r\nState: {$client_state}<br />\r\nPostcode: {$client_postcode}<br />\r\nCountry: {$client_country}<br />\r\nPhone Number: {$client_phonenumber}</p>\r\n<p><strong>Order Items</strong></p>\r\n<p>{$order_items}</p>\r\n{if $order_notes}<p><strong>Order Notes</strong></p>\r\n<p>{$order_notes}</p>{/if}\r\n<p><strong>ISP Information</strong></p>\r\n<p>IP: {$client_ip}<br />\r\nHost: {$client_hostname}</p><p><a href="{$whmcs_admin_url}orders.php?action=view&id={$order_id}">{$whmcs_admin_url}orders.php?action=view&id={$order_id}</a></p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'admin', 'Service Unsuspension Failed', 'WHMCS Service Unsuspension Failed', '<p>This product/service has received its next payment but the automatic reactivation has failed.</p>\r\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'admin', 'Service Unsuspension Successful', 'WHMCS Service Unsuspension Successful', '<p>This product/service has received its next payment and has been reactivated successfully.</p>\r\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}</p>\r\n<p>{$whmcs_admin_link}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'admin', 'Support Ticket Created', '[Ticket ID: {$ticket_tid}] New Support Ticket Opened', '<p>A new support ticket has been opened.</p>\r\n<p>Client: {$client_name}{if $client_id} #{$client_id}{/if}<br />Department: {$ticket_department}<br />Subject: {$ticket_subject}<br />Priority: {$ticket_priority}</p>\r\n<p>---<br />{$ticket_message}<br />---</p>\r\n<p>You can respond to this ticket by simply replying to this email or through the admin area at the url below.</p>\r\n<p><a href="{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}">{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}</a></p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'admin', 'Support Ticket Response', '[Ticket ID: {$ticket_tid}] New Support Ticket Response', '<p>A new support ticket response has been made.</p>\r\n<p>Client: {$client_name}{if $client_id} #{$client_id}{/if} <br />Department: {$ticket_department} <br />Subject: {$ticket_subject} <br />Priority: {$ticket_priority}</p>\r\n<p>--- <br />{$ticket_message} <br />---</p>\r\n<p>You can respond to this ticket by simply replying to this email or through the admin area at the url below.</p>\r\n<p><a href="{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}">{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}</a></p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'admin', 'Escalation Rule Notification', '[Ticket ID: {$tickettid}] Escalation Rule Notification', '<p>The escalation rule {$rule_name} has just been applied to this ticket.</p><p>Client: {$client_name}{if $client_id} #{$client_id}{/if} <br />Department: {$ticket_department} <br />Subject: {$ticket_subject} <br />Priority: {$ticket_priority}</p><p>---<br />{$ticket_message}<br />---</p><p>You can respond to this ticket by simply replying to this email or through the admin area at the url below.</p><p><a href="{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}">{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}</a></p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'admin', 'Support Ticket Department Reassigned', '[Ticket ID: {$ticket_tid}] Support Ticket Department Reassigned', '<p>The department this ticket is assigned to has been changed to a department you are a member of.</p><p>Client: {$client_name}{if $client_id} #{$client_id}{/if}<br />Department: {$ticket_department}<br />Subject: {$ticket_subject}<br />Priority: {$ticket_priority}</p><p>---<br />{$ticket_message}<br />---</p><p>You can respond to this ticket by simply replying to this email or through the admin area at the url below.</p><p><a href="{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}">{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}</a></p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'invoice', 'Invoice Refund Confirmation', 'Invoice Refund Confirmation', '<p>Dear {$client_name},</p>\r\n<p>This is confirmation that a {if $invoice_status eq "Refunded"}full{else}partial{/if} refund has been processed for Invoice #{$invoice_num}</p>\r\n<p>The refund has been {if $invoice_refund_type eq "credit"}credited to your account balance with us{else}returned via the payment method you originally paid with{/if}.</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount Refunded: {$invoice_last_payment_amount}{if $invoice_last_payment_transid}<br />Transaction #: {$invoice_last_payment_transid}{/if}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'admin', 'New Cancellation Request', 'New Cancellation Request', '<p>A new cancellation request has been submitted.</p><p>Client ID: {$client_id}<br>Client Name: {$clientname}<br>Service ID: {$service_id}<br>Product Name: {$product_name}<br>Cancellation Type: {$service_cancellation_type}<br>Cancellation Reason: {$service_cancellation_reason}</p><p>{$whmcs_admin_link}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'admin', 'Support Ticket Flagged', 'New Support Ticket Flagged to You', '<p>A new support ticket has been flagged to you.</p><p>Ticket #: {$ticket_tid}<br>Client Name: {$client_name} (ID {$client_id})<br>Department: {$ticket_department}<br>Subject: {$ticket_subject}<br>Priority: {$ticket_priority}</p><p>----------------------<br />{$ticket_message}<br />----------------------</p><p><a href="{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}">{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}</a></p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'domain', 'Domain Transfer Failed', 'Domain Transfer Failed: {$domain_name}', '<p>Dear {$client_name},</p><p>Recently you placed a domain transfer order with us but unfortunately it has failed. The reason for the failure if available is shown below so once this has been resolved, please contact us to re-attempt the transfer.</p><p>Domain: {$domain_name}<br>Failure Reason: {$domain_transfer_failure_reason}</p><p>If you have any questions, please open a support ticket from our client area @ {$whmcs_link}</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'general', 'Quote Accepted', 'Quote #{$quote_number} Accepted - {$quote_subject}', '<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a confirmation that quote generated on {$quote_date_created} has been accepted by you and invoice # {$invoice_num} is generated.\r\n<p>\r\n{$signature} \r\n</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'general', 'Quote Accepted Notification', 'Quote #{$quote_number} Accepted - {$quote_subject}', '<p>A quote has been accepted by the following customer.</p><p><strong>Customer Information</strong></p>\r\n<p>Customer ID: {$client_id}<br />\r\nName: {$clientname}<br />\r\nEmail: {$client_email}<br />\r\nCompany: {$client_company_name}<br />\r\nAddress 1: {$client_address1}<br />\r\nAddress 2: {$client_address2}<br />\r\nCity: {$client_city}<br />\r\nState: {$client_state}<br />\r\nPostcode: {$client_postcode}<br />\r\nCountry: {$client_country}<br />\r\nPhone Number: {$client_phonenumber}</p>\r\n<p><strong>Quote Information</strong></p>\r\n<p>Quote #: {$quote_number}<br />\r\nQuote Subject: {$quote_subject}</p><p><a href="{$whmcs_admin_url}quotes.php?action=manage&id={$quote_number}">{$whmcs_admin_url}quotes.php?action=manage&id={$quote_number}</a></p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'general', 'Password Reset Confirmation', 'Your password has been reset for {$company_name}', '<p>Dear {$client_name},</p><p>As you requested, your password for our client area has now been reset. </p><p>If it was not at your request, then please contact support immediately.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'support', 'Support Ticket Feedback Request', 'Your Feedback is Requested for Ticket #{$ticket_id}', '<p>This support request has been marked as completed.</p><p>We would really appreciate it if you would just take a moment to let us know about the quality of your experience.</p><p><a href="{$ticket_url}&feedback=1">{$ticket_url}&feedback=1</a></p><p>Your feedback is very important to us.</p><p>Thank you for your business.</p><p>{$signature}</p>', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'general', 'Unsubscribe Confirmation', 'Unsubscribe Confirmation', 'Dear {$client_name},<br /><br />We have now removed your email address from our mailing list.<br /><br />If this was a mistake or you change your mind, you can re-subscribe at any time from the My Details section of our client area.<br /><br /><a href="{$whmcs_url}/clientarea.php?action=details">{$whmcs_url}/clientarea.php?action=details</a><br /><br />{$signature}', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'support', 'Closed Ticket Bounce Message', 'Closed Ticket Bounce Message', '&lt;p&gt;{$client_name},&lt;/p&gt;\n&lt;p&gt;Your email to our ticket system could not be accepted because the ticket being responded to has already been closed.&lt;/p&gt;\n&lt;p&gt;{if $client_id}If you wish to reopen this ticket, you can do so from our client area:\n{$ticket_link}{else}To open a new ticket, please visit:&lt;/p&gt;\n&lt;p&gt;&lt;a href="{$whmcs_url}/submitticket.php"&gt;{$whmcs_url}/submitticket.php&lt;/a&gt;{/if}&lt;/p&gt;\n&lt;p&gt;This is an automated response from our support system.&lt;/p&gt;\n&lt;p&gt;{$signature}&lt;/p&gt;', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'domain', 'Expired Domain Notice', 'Expired Domain Notice', '&lt;p&gt;Dear {$client_name},&lt;/p&gt;\n&lt;p&gt;The domain name listed below expired {$domain_days_after_expiry} days ago.&lt;/p&gt;\n&lt;p&gt;{$domain_name}&lt;/p&gt;\n&lt;p&gt;To ensure that the domain isn&#39;t registered by someone else, you should renew it now. To renew the domain, please visit the following page and follow the steps shown: &lt;a title=&quot;{$whmcs_url}/cart.php?gid=renewals&quot; href=&quot;{$whmcs_url}/cart.php?gid=renewals&quot;&gt;{$whmcs_url}/cart.php?gid=renewals&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Due to the domain expiring, the domain will not be accessible so any web site or email services associated with it will stop working. You may be able to renew it for up to 30 days after the renewal date.&lt;/p&gt;\n&lt;p&gt;{$signature}&lt;/p&gt;', '', '', '', 0, 0, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'product', 'Service Unsuspension Notification', 'Service Unsuspension Notification', '&lt;p&gt;Dear {$client_name},&lt;/p&gt;\n&lt;p&gt;This is a notification that your service has now been unsuspended. The details of this unsuspension are below:&lt;/p&gt;\n&lt;p&gt;Product/Service: {$service_product_name}&lt;br /&gt;{if $service_domain}Domain: {$service_domain}&lt;br /&gt;{/if}Amount: {$service_recurring_amount}&lt;br /&gt;Due Date: {$service_next_due_date}&lt;/p&gt;\n&lt;p&gt;{$signature}&lt;/p&gt;', '', '', '', 0, 0, '', '', 0, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(63, 'admin', 'Manual Upgrade Required', 'Manual Upgrade Required', '<p>An upgrade order has received its payment, but does not support automatic upgrades and requires manually processing.</p>\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Order ID: {$order_id}</p>\n<p>{if $upgrade_type eq ''package''}New Package ID: {$new_package_id}<br />Existing Billing Cycle: {$billing_cycle}<br />New Billing Cycle: {$new_billing_cycle}{else}Configurable Option: {$config_id}<br />Option Type: {$option_type}<br />Current Value: {$current_value}<br />New Value: {$new_value}{/if}</p>\n<p><a href="{$whmcs_admin_url}orders.php?action=view&id={$order_id}">\n{$whmcs_admin_url}orders.php?action=view&id={$order_id}</a></p>', '', '', '', 0, 0, '', '', 0, '2015-12-18 21:11:41', '2015-12-18 21:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblfraud`
--

CREATE TABLE IF NOT EXISTS `tblfraud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fraud` text NOT NULL,
  `setting` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fraud` (`fraud`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblgatewaylog`
--

CREATE TABLE IF NOT EXISTS `tblgatewaylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gateway` text NOT NULL,
  `data` text NOT NULL,
  `result` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblhosting`
--

CREATE TABLE IF NOT EXISTS `tblhosting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  `packageid` int(10) NOT NULL,
  `server` int(10) NOT NULL,
  `regdate` date NOT NULL,
  `domain` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `firstpaymentamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `billingcycle` text NOT NULL,
  `nextduedate` date DEFAULT NULL,
  `nextinvoicedate` date NOT NULL,
  `termination_date` date NOT NULL DEFAULT '0000-00-00',
  `domainstatus` enum('Pending','Active','Suspended','Terminated','Cancelled','Fraud') NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `notes` text NOT NULL,
  `subscriptionid` text NOT NULL,
  `promoid` int(10) NOT NULL,
  `suspendreason` text NOT NULL,
  `overideautosuspend` tinyint(1) NOT NULL,
  `overidesuspenduntil` date NOT NULL,
  `dedicatedip` text NOT NULL,
  `assignedips` text NOT NULL,
  `ns1` text NOT NULL,
  `ns2` text NOT NULL,
  `diskusage` int(10) NOT NULL DEFAULT '0',
  `disklimit` int(10) NOT NULL DEFAULT '0',
  `bwusage` int(10) NOT NULL DEFAULT '0',
  `bwlimit` int(10) NOT NULL DEFAULT '0',
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`id`),
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`),
  KEY `productid` (`packageid`),
  KEY `serverid` (`server`),
  KEY `domain` (`domain`(64)),
  KEY `domainstatus` (`domainstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblhostingaddons`
--

CREATE TABLE IF NOT EXISTS `tblhostingaddons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL,
  `hostingid` int(10) NOT NULL,
  `addonid` int(10) NOT NULL,
  `name` text NOT NULL,
  `setupfee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `recurring` decimal(10,2) NOT NULL DEFAULT '0.00',
  `billingcycle` text NOT NULL,
  `tax` text NOT NULL,
  `status` enum('Pending','Active','Suspended','Terminated','Cancelled','Fraud') NOT NULL DEFAULT 'Pending',
  `regdate` date NOT NULL DEFAULT '0000-00-00',
  `nextduedate` date DEFAULT NULL,
  `nextinvoicedate` date NOT NULL,
  `termination_date` date NOT NULL DEFAULT '0000-00-00',
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `serviceid` (`hostingid`),
  KEY `name` (`name`(32)),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblhostingconfigoptions`
--

CREATE TABLE IF NOT EXISTS `tblhostingconfigoptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `relid` int(10) NOT NULL,
  `configid` int(10) NOT NULL,
  `optionid` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid_configid` (`relid`,`configid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoiceitems`
--

CREATE TABLE IF NOT EXISTS `tblinvoiceitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `relid` int(10) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `userid` (`userid`,`type`,`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoices`
--

CREATE TABLE IF NOT EXISTS `tblinvoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subtotal` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`(3))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledgebase`
--

CREATE TABLE IF NOT EXISTS `tblknowledgebase` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `article` text NOT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  `useful` int(10) NOT NULL DEFAULT '0',
  `votes` int(10) NOT NULL DEFAULT '0',
  `private` text NOT NULL,
  `order` int(3) NOT NULL,
  `parentid` int(10) NOT NULL,
  `language` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledgebasecats`
--

CREATE TABLE IF NOT EXISTS `tblknowledgebasecats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `description` text NOT NULL,
  `hidden` text NOT NULL,
  `catid` int(10) NOT NULL,
  `language` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledgebaselinks`
--

CREATE TABLE IF NOT EXISTS `tblknowledgebaselinks` (
  `categoryid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledgebasetags`
--

CREATE TABLE IF NOT EXISTS `tblknowledgebasetags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `tag` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbllinks`
--

CREATE TABLE IF NOT EXISTS `tbllinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `clicks` int(10) NOT NULL,
  `conversions` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblmodulelog`
--

CREATE TABLE IF NOT EXISTS `tblmodulelog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `module` text NOT NULL,
  `action` text NOT NULL,
  `request` text NOT NULL,
  `response` text NOT NULL,
  `arrdata` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblnetworkissues`
--

CREATE TABLE IF NOT EXISTS `tblnetworkissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `type` enum('Server','System','Other') NOT NULL,
  `affecting` varchar(100) DEFAULT NULL,
  `server` int(10) unsigned DEFAULT NULL,
  `priority` enum('Critical','Low','Medium','High') NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `status` enum('Reported','Investigating','In Progress','Outage','Scheduled','Resolved') NOT NULL,
  `lastupdate` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE IF NOT EXISTS `tblnotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `adminid` int(10) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `note` text NOT NULL,
  `sticky` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_access_tokens`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_access_tokens_access_token_unique` (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_access_token_scopes`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_access_token_scopes` (
  `access_token_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_access_token_scopes_scope_id_index` (`access_token_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_authcode_scopes`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_authcode_scopes` (
  `authorization_code_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_authcode_scopes_scope_id_index` (`authorization_code_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_auth_codes`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_auth_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorization_code` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_token` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_auth_codes_authorization_code_unique` (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_clients`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grant_types` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rsa_key_pair_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_clients_identifier_unique` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_client_scopes`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_client_scopes` (
  `client_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_client_scopes_scope_id_index` (`client_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_scopes`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_scopes_scope_unique` (`scope`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbloauthserver_scopes`
--

INSERT INTO `tbloauthserver_scopes` (`id`, `scope`, `description`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'clientarea:sso', 'Single Sign-on for Client Area', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'clientarea:profile', 'Account Profile', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'clientarea:billing_info', 'Manage Billing Information', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'clientarea:emails', 'Email History', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'clientarea:announcements', 'Announcements', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'clientarea:downloads', 'Downloads', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'clientarea:knowledgebase', 'Knowledgebase', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'clientarea:network_status', 'Network Status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'clientarea:services', 'Products/Services', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'clientarea:product_details', 'Product Info/Details (requires associated serviceId)', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'clientarea:domains', 'Domains', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'clientarea:domain_details', 'Domain Info/Details (requires associated domainId)', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'clientarea:invoices', 'Invoices', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'clientarea:tickets', 'Support Tickets', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'clientarea:submit_ticket', 'Submit New Ticket', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'clientarea:shopping_cart', 'Shopping Cart Default Product Group', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'clientarea:shopping_cart_addons', 'Shopping Cart Product Addons', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'clientarea:shopping_cart_domain_register', 'Shopping Cart Register New Domain', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'clientarea:shopping_cart_domain_transfer', 'Shopping Cart Transfer Existing Domain', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'openid', 'Scope required for OpenID Connect ID tokens', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'email', 'Scope used for Email Claim', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'profile', 'Scope used for Profile Claim', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_user_authz`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_user_authz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbloauthserver_user_authz_scopes`
--

CREATE TABLE IF NOT EXISTS `tbloauthserver_user_authz_scopes` (
  `user_authz_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_user_authz_scopes_scope_id_index` (`user_authz_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE IF NOT EXISTS `tblorders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ordernum` bigint(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `nameservers` text NOT NULL,
  `transfersecret` text NOT NULL,
  `renewals` text NOT NULL,
  `promocode` text NOT NULL,
  `promotype` text NOT NULL,
  `promovalue` text NOT NULL,
  `orderdata` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paymentmethod` text NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `status` text NOT NULL,
  `ipaddress` text NOT NULL,
  `fraudmodule` text NOT NULL,
  `fraudoutput` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ordernum` (`ordernum`),
  KEY `userid` (`userid`),
  KEY `contactid` (`contactid`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblorderstatuses`
--

CREATE TABLE IF NOT EXISTS `tblorderstatuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `color` text NOT NULL,
  `showpending` int(1) NOT NULL,
  `showactive` int(1) NOT NULL,
  `showcancelled` int(1) NOT NULL,
  `sortorder` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblorderstatuses`
--

INSERT INTO `tblorderstatuses` (`id`, `title`, `color`, `showpending`, `showactive`, `showcancelled`, `sortorder`) VALUES
(1, 'Pending', '#cc0000', 1, 0, 0, 10),
(2, 'Active', '#779500', 0, 1, 0, 20),
(3, 'Cancelled', '#888888', 0, 0, 1, 30),
(4, 'Fraud', '#000000', 0, 0, 0, 40);

-- --------------------------------------------------------

--
-- Table structure for table `tblpaymentgateways`
--

CREATE TABLE IF NOT EXISTS `tblpaymentgateways` (
  `gateway` text NOT NULL,
  `setting` text NOT NULL,
  `value` text NOT NULL,
  `order` int(1) NOT NULL,
  KEY `gateway_setting` (`gateway`(32),`setting`(32)),
  KEY `setting_value` (`setting`(32),`value`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpaymentgateways`
--

INSERT INTO `tblpaymentgateways` (`gateway`, `setting`, `value`, `order`) VALUES
('paypal', 'forcesubscriptions', '', 0),
('paypal', 'forceonetime', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpricing`
--

CREATE TABLE IF NOT EXISTS `tblpricing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('product','addon','configoptions','domainregister','domaintransfer','domainrenew','domainaddons') NOT NULL,
  `currency` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `msetupfee` decimal(10,2) NOT NULL,
  `qsetupfee` decimal(10,2) NOT NULL,
  `ssetupfee` decimal(10,2) NOT NULL,
  `asetupfee` decimal(10,2) NOT NULL,
  `bsetupfee` decimal(10,2) NOT NULL,
  `tsetupfee` decimal(10,2) NOT NULL,
  `monthly` decimal(10,2) NOT NULL,
  `quarterly` decimal(10,2) NOT NULL,
  `semiannually` decimal(10,2) NOT NULL,
  `annually` decimal(10,2) NOT NULL,
  `biennially` decimal(10,2) NOT NULL,
  `triennially` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproductconfiggroups`
--

CREATE TABLE IF NOT EXISTS `tblproductconfiggroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproductconfiglinks`
--

CREATE TABLE IF NOT EXISTS `tblproductconfiglinks` (
  `gid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproductconfigoptions`
--

CREATE TABLE IF NOT EXISTS `tblproductconfigoptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL DEFAULT '0',
  `optionname` text NOT NULL,
  `optiontype` text NOT NULL,
  `qtyminimum` int(10) NOT NULL,
  `qtymaximum` int(10) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproductconfigoptionssub`
--

CREATE TABLE IF NOT EXISTS `tblproductconfigoptionssub` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `configid` int(10) NOT NULL,
  `optionname` text NOT NULL,
  `sortorder` int(10) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configid` (`configid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproductgroups`
--

CREATE TABLE IF NOT EXISTS `tblproductgroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `headline` text,
  `tagline` text,
  `orderfrmtpl` text NOT NULL,
  `disabledgateways` text NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE IF NOT EXISTS `tblproducts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `gid` int(10) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `showdomainoptions` tinyint(1) NOT NULL,
  `welcomeemail` int(10) NOT NULL DEFAULT '0',
  `stockcontrol` tinyint(1) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT '0',
  `proratabilling` tinyint(1) NOT NULL,
  `proratadate` int(2) NOT NULL,
  `proratachargenextmonth` int(2) NOT NULL,
  `paytype` text NOT NULL,
  `allowqty` int(1) NOT NULL,
  `subdomain` text NOT NULL,
  `autosetup` text NOT NULL,
  `servertype` text NOT NULL,
  `servergroup` int(10) NOT NULL,
  `configoption1` text NOT NULL,
  `configoption2` text NOT NULL,
  `configoption3` text NOT NULL,
  `configoption4` text NOT NULL,
  `configoption5` text NOT NULL,
  `configoption6` text NOT NULL,
  `configoption7` text NOT NULL,
  `configoption8` text NOT NULL,
  `configoption9` text NOT NULL,
  `configoption10` text NOT NULL,
  `configoption11` text NOT NULL,
  `configoption12` text NOT NULL,
  `configoption13` text NOT NULL,
  `configoption14` text NOT NULL,
  `configoption15` text NOT NULL,
  `configoption16` text NOT NULL,
  `configoption17` text NOT NULL,
  `configoption18` text NOT NULL,
  `configoption19` text NOT NULL,
  `configoption20` text NOT NULL,
  `configoption21` text NOT NULL,
  `configoption22` text NOT NULL,
  `configoption23` text NOT NULL,
  `configoption24` text NOT NULL,
  `freedomain` text NOT NULL,
  `freedomainpaymentterms` text NOT NULL,
  `freedomaintlds` text NOT NULL,
  `recurringcycles` int(2) NOT NULL,
  `autoterminatedays` int(4) NOT NULL,
  `autoterminateemail` int(10) NOT NULL DEFAULT '0',
  `configoptionsupgrade` tinyint(1) NOT NULL,
  `billingcycleupgrade` text NOT NULL,
  `upgradeemail` int(10) NOT NULL DEFAULT '0',
  `overagesenabled` varchar(10) NOT NULL,
  `overagesdisklimit` int(10) NOT NULL,
  `overagesbwlimit` int(10) NOT NULL,
  `overagesdiskprice` decimal(6,4) NOT NULL,
  `overagesbwprice` decimal(6,4) NOT NULL,
  `tax` tinyint(1) NOT NULL,
  `affiliateonetime` tinyint(1) NOT NULL,
  `affiliatepaytype` text NOT NULL,
  `affiliatepayamount` decimal(10,2) NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  `retired` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct_downloads`
--

CREATE TABLE IF NOT EXISTS `tblproduct_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `download_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_downloads_product_id_index` (`product_id`),
  KEY `tblproduct_downloads_download_id_index` (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct_group_features`
--

CREATE TABLE IF NOT EXISTS `tblproduct_group_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_group_id` int(10) NOT NULL,
  `feature` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_group_features_product_group_id_index` (`product_group_id`),
  KEY `tblproduct_group_features_id_product_group_id_index` (`id`,`product_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct_upgrade_products`
--

CREATE TABLE IF NOT EXISTS `tblproduct_upgrade_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `upgrade_product_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_upgrade_products_product_id_index` (`product_id`),
  KEY `tblproduct_upgrade_products_upgrade_product_id_index` (`upgrade_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblpromotions`
--

CREATE TABLE IF NOT EXISTS `tblpromotions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` text NOT NULL,
  `type` text NOT NULL,
  `recurring` int(1) DEFAULT NULL,
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cycles` text NOT NULL,
  `appliesto` text NOT NULL,
  `requires` text NOT NULL,
  `requiresexisting` int(1) NOT NULL,
  `startdate` date NOT NULL,
  `expirationdate` date DEFAULT NULL,
  `maxuses` int(10) NOT NULL DEFAULT '0',
  `uses` int(10) NOT NULL DEFAULT '0',
  `lifetimepromo` int(1) NOT NULL,
  `applyonce` int(1) NOT NULL,
  `newsignups` int(1) NOT NULL,
  `existingclient` int(11) NOT NULL,
  `onceperclient` int(11) NOT NULL,
  `recurfor` int(3) NOT NULL,
  `upgrades` int(1) NOT NULL,
  `upgradeconfig` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblquoteitems`
--

CREATE TABLE IF NOT EXISTS `tblquoteitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `quoteid` int(10) NOT NULL,
  `description` text NOT NULL,
  `quantity` text NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxable` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblquotes`
--

CREATE TABLE IF NOT EXISTS `tblquotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblquotes`
--

INSERT INTO `tblquotes` (`id`, `subject`, `stage`, `validuntil`, `userid`, `firstname`, `lastname`, `companyname`, `email`, `address1`, `address2`, `city`, `state`, `postcode`, `country`, `phonenumber`, `currency`, `subtotal`, `tax1`, `tax2`, `total`, `proposal`, `customernotes`, `adminnotes`, `datecreated`, `lastmodified`, `datesent`, `dateaccepted`) VALUES
(1, '', 'Delivered', '2016-01-18', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '0.00', '0.00', '0.00', '0.00', '', '', '', '2015-12-18', '2015-12-18', '2015-12-18', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tblregistrars`
--

CREATE TABLE IF NOT EXISTS `tblregistrars` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `registrar` text NOT NULL,
  `setting` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registrar_setting` (`registrar`(32),`setting`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblregistrars`
--

INSERT INTO `tblregistrars` (`id`, `registrar`, `setting`, `value`) VALUES
(1, 'enom', 'Username', 'pL0jpSjTAjqXUWcnVL5DG5D9AOK2spY='),
(2, 'enom', 'Password', 'cD+3OrA5OLEJll+XNmgwwPQ7Pt1jMQM=');

-- --------------------------------------------------------

--
-- Table structure for table `tblrsakeypairs`
--

CREATE TABLE IF NOT EXISTS `tblrsakeypairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(96) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `private_key` text COLLATE utf8_unicode_ci NOT NULL,
  `public_key` text COLLATE utf8_unicode_ci NOT NULL,
  `algorithm` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'RS256',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblservergroups`
--

CREATE TABLE IF NOT EXISTS `tblservergroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `filltype` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblservergroupsrel`
--

CREATE TABLE IF NOT EXISTS `tblservergroupsrel` (
  `groupid` int(10) NOT NULL,
  `serverid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblservers`
--

CREATE TABLE IF NOT EXISTS `tblservers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ipaddress` text NOT NULL,
  `assignedips` text NOT NULL,
  `hostname` text NOT NULL,
  `monthlycost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `noc` text NOT NULL,
  `statusaddress` text NOT NULL,
  `nameserver1` text NOT NULL,
  `nameserver1ip` text NOT NULL,
  `nameserver2` text NOT NULL,
  `nameserver2ip` text NOT NULL,
  `nameserver3` text NOT NULL,
  `nameserver3ip` text NOT NULL,
  `nameserver4` text NOT NULL,
  `nameserver4ip` text NOT NULL,
  `nameserver5` text NOT NULL,
  `nameserver5ip` text NOT NULL,
  `maxaccounts` int(10) NOT NULL DEFAULT '0',
  `type` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `accesshash` text NOT NULL,
  `secure` text NOT NULL,
  `port` int(8) DEFAULT NULL,
  `active` int(1) NOT NULL,
  `disabled` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblserversssoperms`
--

CREATE TABLE IF NOT EXISTS `tblserversssoperms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblsslorders`
--

CREATE TABLE IF NOT EXISTS `tblsslorders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `serviceid` int(10) NOT NULL,
  `remoteid` text NOT NULL,
  `module` text NOT NULL,
  `certtype` text NOT NULL,
  `configdata` text NOT NULL,
  `completiondate` datetime NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbltax`
--

CREATE TABLE IF NOT EXISTS `tbltax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `level` int(1) NOT NULL,
  `name` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_country` (`state`(32),`country`(2))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketbreaklines`
--

CREATE TABLE IF NOT EXISTS `tblticketbreaklines` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `breakline` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblticketbreaklines`
--

INSERT INTO `tblticketbreaklines` (`id`, `breakline`) VALUES
(1, '> -----Original Message-----'),
(2, '----- Original Message -----'),
(3, '-----Original Message-----'),
(4, '<!-- Break Line -->'),
(5, '====== Please reply above this line ======'),
(6, '_____');

-- --------------------------------------------------------

--
-- Table structure for table `tblticketdepartments`
--

CREATE TABLE IF NOT EXISTS `tblticketdepartments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `email` text NOT NULL,
  `clientsonly` text NOT NULL,
  `piperepliesonly` text NOT NULL,
  `noautoresponder` text NOT NULL,
  `hidden` text NOT NULL,
  `order` int(1) NOT NULL,
  `host` text NOT NULL,
  `port` text NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketescalations`
--

CREATE TABLE IF NOT EXISTS `tblticketescalations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `departments` text NOT NULL,
  `statuses` text NOT NULL,
  `priorities` text NOT NULL,
  `timeelapsed` int(5) NOT NULL,
  `newdepartment` text NOT NULL,
  `newpriority` text NOT NULL,
  `newstatus` text NOT NULL,
  `flagto` text NOT NULL,
  `notify` text NOT NULL,
  `addreply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketfeedback`
--

CREATE TABLE IF NOT EXISTS `tblticketfeedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `adminid` int(10) NOT NULL,
  `rating` int(2) NOT NULL,
  `comments` text NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketlog`
--

CREATE TABLE IF NOT EXISTS `tblticketlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `tid` int(10) NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketmaillog`
--

CREATE TABLE IF NOT EXISTS `tblticketmaillog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `to` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketnotes`
--

CREATE TABLE IF NOT EXISTS `tblticketnotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `admin` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketid_date` (`ticketid`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketpredefinedcats`
--

CREATE TABLE IF NOT EXISTS `tblticketpredefinedcats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid_name` (`parentid`,`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketpredefinedreplies`
--

CREATE TABLE IF NOT EXISTS `tblticketpredefinedreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL,
  `name` text NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketreplies`
--

CREATE TABLE IF NOT EXISTS `tblticketreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL,
  `admin` text NOT NULL,
  `attachment` text NOT NULL,
  `rating` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tid_date` (`tid`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

CREATE TABLE IF NOT EXISTS `tbltickets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` varchar(128) DEFAULT NULL,
  `did` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `cc` text NOT NULL,
  `c` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text NOT NULL,
  `message` text NOT NULL,
  `status` varchar(64) NOT NULL,
  `urgency` text NOT NULL,
  `admin` text NOT NULL,
  `attachment` text NOT NULL,
  `lastreply` datetime NOT NULL,
  `flag` int(1) NOT NULL,
  `clientunread` int(1) NOT NULL,
  `adminunread` text NOT NULL,
  `replyingadmin` int(1) NOT NULL,
  `replyingtime` datetime NOT NULL,
  `service` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tid_c` (`tid`,`c`(64)),
  KEY `userid` (`userid`),
  KEY `status` (`status`(10)),
  KEY `date` (`date`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketspamfilters`
--

CREATE TABLE IF NOT EXISTS `tblticketspamfilters` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('sender','subject','phrase') NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblticketstatuses`
--

CREATE TABLE IF NOT EXISTS `tblticketstatuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `color` text NOT NULL,
  `sortorder` int(2) NOT NULL,
  `showactive` int(1) NOT NULL,
  `showawaiting` int(1) NOT NULL,
  `autoclose` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblticketstatuses`
--

INSERT INTO `tblticketstatuses` (`id`, `title`, `color`, `sortorder`, `showactive`, `showawaiting`, `autoclose`) VALUES
(1, 'Open', '#779500', 1, 1, 1, 0),
(2, 'Answered', '#000000', 2, 1, 0, 1),
(3, 'Customer-Reply', '#ff6600', 3, 1, 1, 1),
(4, 'Closed', '#888888', 10, 0, 0, 0),
(5, 'On Hold', '#224488', 5, 1, 0, 0),
(6, 'In Progress', '#cc0000', 6, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbltickettags`
--

CREATE TABLE IF NOT EXISTS `tbltickettags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbltlds`
--

CREATE TABLE IF NOT EXISTS `tbltlds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tld` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=927 ;

--
-- Dumping data for table `tbltlds`
--

INSERT INTO `tbltlds` (`id`, `tld`, `created_at`, `updated_at`) VALUES
(1, 'aaa.pro', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(2, 'ab.ca', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(3, 'abogado', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(4, 'abudhabi', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(5, 'ac', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(6, 'aca.pro', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(7, 'academy', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(8, 'accountant', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(9, 'accountants', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(10, 'acct.pro', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(11, 'aco', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(12, 'active', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(13, 'actor', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(14, 'adac', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(15, 'ads', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(16, 'adult', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(17, 'ae.org', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(18, 'africa', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(19, 'ag', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(20, 'agency', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(21, 'ah.cn', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(22, 'airforce', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(23, 'alsace', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(24, 'am', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(25, 'amsterdam', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(26, 'analytics', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(27, 'and', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(28, 'apartments', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(29, 'app', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(30, 'aquitaine', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(31, 'ar.com', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(32, 'arab', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(33, 'archi', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(34, 'architect', '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(35, 'are', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(36, 'army', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(37, 'art', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(38, 'asia', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(39, 'associates', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(40, 'at', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(41, 'attorney', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(42, 'au', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(43, 'auction', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(44, 'audi', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(45, 'audible', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(46, 'audio', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(47, 'auto', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(48, 'autos', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(49, 'avocat.pro', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(50, 'baby', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(51, 'band', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(52, 'bank', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(53, 'banque', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(54, 'bar', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(55, 'bar.pro', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(56, 'barcelona', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(57, 'bargains', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(58, 'baseball', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(59, 'basketball', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(60, 'bauhaus', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(61, 'bayern', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(62, 'bbb', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(63, 'bc.ca', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(64, 'be', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(65, 'beauty', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(66, 'beer', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(67, 'beknown', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(68, 'berlin', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(69, 'best', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(70, 'bet', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(71, 'bible', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(72, 'bid', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(73, 'bike', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(74, 'bingo', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(75, 'bio', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(76, 'biz', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(77, 'bj.cn', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(78, 'black', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(79, 'blackfriday', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(80, 'blog', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(81, 'blue', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(82, 'boats', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(83, 'bond', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(84, 'boo', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(85, 'book', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(86, 'booking', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(87, 'boston', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(88, 'boutique', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(89, 'box', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(90, 'br.com', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(91, 'broadway', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(92, 'broker', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(93, 'brother', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(94, 'brussels', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(95, 'budapest', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(96, 'bugatti', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(97, 'build', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(98, 'builders', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(99, 'business', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(100, 'buy', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(101, 'buzz', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(102, 'bway', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(103, 'bz', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(104, 'bzh', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(105, 'ca', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(106, 'cab', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(107, 'cafe', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(108, 'cam', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(109, 'camera', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(110, 'camp', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(111, 'capetown', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(112, 'capital', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(113, 'car', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(114, 'cards', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(115, 'care', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(116, 'career', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(117, 'careers', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(118, 'cars', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(119, 'casa', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(120, 'cash', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(121, 'casino', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(122, 'catalonia', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(123, 'catering', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(124, 'catholic', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(125, 'cc', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(126, 'center', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(127, 'ceo', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(128, 'cfd', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(129, 'ch', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(130, 'charity', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(131, 'chat', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(132, 'cheap', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(133, 'chesapeake', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(134, 'chk', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(135, 'christmas', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(136, 'church', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(137, 'city', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(138, 'cityeats', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(139, 'claims', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(140, 'cleaning', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(141, 'click', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(142, 'clinic', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(143, 'clothing', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(144, 'cloud', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(145, 'club', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(146, 'cm', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(147, 'cn', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(148, 'cn.com', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(149, 'co', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(150, 'co.com', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(151, 'co.in', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(152, 'co.nz', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(153, 'co.uk', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(154, 'coach', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(155, 'codes', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(156, 'coffee', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(157, 'college', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(158, 'cologne', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(159, 'com', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(160, 'com.ag', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(161, 'com.au', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(162, 'com.cn', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(163, 'com.co', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(164, 'com.de', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(165, 'com.es', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(166, 'com.mx', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(167, 'com.pe', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(168, 'com.pl', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(169, 'com.sc', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(170, 'com.sg', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(171, 'com.tw', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(172, 'community', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(173, 'company', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(174, 'compare', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(175, 'computer', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(176, 'comsec', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(177, 'condos', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(178, 'construction', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(179, 'consulting', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(180, 'contact', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(181, 'contractors', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(182, 'cooking', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(183, 'cookingchannel', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(184, 'cool', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(185, 'corp', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(186, 'corsica', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(187, 'country', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(188, 'coupon', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(189, 'coupons', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(190, 'courses', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(191, 'cpa', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(192, 'cpa.pro', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(193, 'cq.cn', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(194, 'credit', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(195, 'creditcard', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(196, 'creditunion', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(197, 'cricket', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(198, 'cruise', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(199, 'cruises', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(200, 'cymru', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(201, 'cyou', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(202, 'dad', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(203, 'dance', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(204, 'data', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(205, 'date', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(206, 'dating', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(207, 'day', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(208, 'dds', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(209, 'de', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(210, 'de.com', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(211, 'deal', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(212, 'deals', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(213, 'degree', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(214, 'delivery', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(215, 'democrat', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(216, 'dental', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(217, 'dentist', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(218, 'desi', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(219, 'design', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(220, 'diamonds', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(221, 'diet', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(222, 'digital', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(223, 'direct', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(224, 'directory', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(225, 'discount', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(226, 'diy', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(227, 'docs', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(228, 'doctor', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(229, 'dog', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(230, 'doha', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(231, 'domains', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(232, 'dot', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(233, 'dotafrica', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(234, 'download', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(235, 'dubai', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(236, 'durban', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(237, 'dvr', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(238, 'earth', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(239, 'eat', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(240, 'eco', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(241, 'ecom', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(242, 'edeka', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(243, 'education', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(244, 'email', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(245, 'energy', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(246, 'eng.pro', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(247, 'engineer', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(248, 'engineering', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(249, 'enterprises', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(250, 'epost', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(251, 'equipment', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(252, 'es', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(253, 'esq', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(254, 'est', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(255, 'estate', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(256, 'eu', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(257, 'eu.com', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(258, 'eus', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(259, 'events', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(260, 'exchange', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(261, 'expert', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(262, 'exposed', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(263, 'express', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(264, 'fail', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(265, 'faith', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(266, 'family', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(267, 'fan', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(268, 'fans', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(269, 'farm', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(270, 'fashion', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(271, 'feedback', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(272, 'film', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(273, 'final', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(274, 'finance', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(275, 'financial', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(276, 'financialaid', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(277, 'firm.in', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(278, 'fish', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(279, 'fishing', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(280, 'fit', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(281, 'fitness', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(282, 'fj.cn', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(283, 'flights', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(284, 'florist', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(285, 'flowers', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(286, 'fly', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(287, 'fm', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(288, 'foo', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(289, 'food', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(290, 'football', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(291, 'forsale', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(292, 'forum', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(293, 'foundation', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(294, 'fr', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(295, 'free', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(296, 'frl', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(297, 'fun', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(298, 'fund', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(299, 'furniture', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(300, 'futbol', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(301, 'fyi', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(302, 'gal', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(303, 'gallery', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(304, 'game', '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(305, 'games', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(306, 'garden', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(307, 'gay', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(308, 'gb.com', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(309, 'gb.net', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(310, 'gd.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(311, 'gea', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(312, 'gen.in', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(313, 'gent', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(314, 'gift', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(315, 'gifts', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(316, 'gives', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(317, 'giving', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(318, 'glass', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(319, 'glean', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(320, 'global', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(321, 'gmbh', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(322, 'gold', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(323, 'golf', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(324, 'goo', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(325, 'gop', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(326, 'gr.com', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(327, 'graphics', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(328, 'gratis', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(329, 'gree', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(330, 'green', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(331, 'gripe', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(332, 'grocery', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(333, 'group', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(334, 'gs', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(335, 'gs.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(336, 'guide', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(337, 'guitars', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(338, 'guru', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(339, 'gx.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(340, 'gz.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(341, 'ha.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(342, 'hair', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(343, 'halal', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(344, 'hamburg', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(345, 'haus', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(346, 'hb.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(347, 'he.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(348, 'health', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(349, 'healthcare', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(350, 'heart', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(351, 'help', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(352, 'helsinki', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(353, 'here', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(354, 'hi.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(355, 'hiphop', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(356, 'hiv', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(357, 'hk.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(358, 'hl.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(359, 'hn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(360, 'hn.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(361, 'hockey', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(362, 'holdings', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(363, 'holiday', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(364, 'home', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(365, 'homes', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(366, 'horse', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(367, 'hospital', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(368, 'host', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(369, 'hosting', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(370, 'hot', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(371, 'hotel', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(372, 'hotels', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(373, 'house', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(374, 'how', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(375, 'hu.com', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(376, 'icu', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(377, 'idn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(378, 'idv.tw', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(379, 'ieee', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(380, 'ikano', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(381, 'immo', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(382, 'immobilien', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(383, 'in', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(384, 'inc', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(385, 'ind.in', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(386, 'indians', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(387, 'industries', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(388, 'info', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(389, 'info.pl', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(390, 'ing', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(391, 'ink', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(392, 'institute', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(393, 'insurance', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(394, 'insure', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(395, 'international', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(396, 'investments', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(397, 'io', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(398, 'ira', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(399, 'irish', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(400, 'islam', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(401, 'ismaili', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(402, 'ist', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(403, 'istanbul', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(404, 'it', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(405, 'jetzt', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(406, 'jewelry', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(407, 'jobs', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(408, 'joburg', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(409, 'jp', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(410, 'jpn.com', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(411, 'js.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(412, 'juegos', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(413, 'jur.pro', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(414, 'justforu', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(415, 'jx.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(416, 'kaufen', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(417, 'kid', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(418, 'kids', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(419, 'kids.us', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(420, 'kim', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(421, 'kitchen', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(422, 'kiwi', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(423, 'koeln', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(424, 'kosher', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(425, 'kr.com', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(426, 'kyoto', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(427, 'la', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(428, 'lamborghini', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(429, 'land', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(430, 'lat', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(431, 'latino', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(432, 'law', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(433, 'law.pro', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(434, 'lawyer', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(435, 'lds', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(436, 'lease', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(437, 'leclerc', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(438, 'legal', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(439, 'lgbt', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(440, 'li', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(441, 'life', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(442, 'lifeinsurance', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(443, 'lifestyle', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(444, 'lighting', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(445, 'limited', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(446, 'limo', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(447, 'link', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(448, 'live', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(449, 'living', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(450, 'llc', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(451, 'llp', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(452, 'ln.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(453, 'loan', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(454, 'loans', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(455, 'lol', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(456, 'london', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(457, 'lotto', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(458, 'love', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(459, 'ltd', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(460, 'ltd.uk', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(461, 'luxe', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(462, 'luxury', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(463, 'madrid', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(464, 'mail', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(465, 'maison', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(466, 'management', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(467, 'map', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(468, 'market', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(469, 'marketing', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(470, 'markets', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(471, 'mb.ca', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(472, 'mba', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(473, 'me', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(474, 'me.uk', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(475, 'med', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(476, 'med.pro', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(477, 'media', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(478, 'medical', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(479, 'meet', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(480, 'melbourne', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(481, 'meme', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(482, 'memorial', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(483, 'men', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(484, 'menu', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(485, 'merck', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(486, 'miami', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(487, 'mls', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(488, 'mma', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(489, 'mn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(490, 'mo.cn', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(491, 'mobi', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(492, 'mobile', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(493, 'mobily', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(494, 'moda', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(495, 'moe', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(496, 'mom', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(497, 'money', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(498, 'mormon', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(499, 'mortgage', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(500, 'moscow', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(501, 'moto', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(502, 'motorcycles', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(503, 'mov', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(504, 'movie', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(505, 'mozaic', '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(506, 'ms', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(507, 'msd', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(508, 'music', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(509, 'mutual', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(510, 'mutualfunds', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(511, 'nagoya', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(512, 'name', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(513, 'navy', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(514, 'nb.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(515, 'nba', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(516, 'net', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(517, 'net.ag', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(518, 'net.au', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(519, 'net.cn', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(520, 'net.co', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(521, 'net.in', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(522, 'net.nz', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(523, 'net.pe', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(524, 'net.pl', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(525, 'net.sc', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(526, 'network', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(527, 'new', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(528, 'news', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(529, 'nf.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(530, 'ngo', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(531, 'ninja', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(532, 'nl', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(533, 'nl.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(534, 'nm.cn', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(535, 'no.com', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(536, 'nom.co', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(537, 'nom.es', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(538, 'nom.pe', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(539, 'notes:', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(540, 'now', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(541, 'nowruz', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(542, 'nrw', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(543, 'ns.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(544, 'nt.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(545, 'nu', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(546, 'nu.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(547, 'nx.cn', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(548, 'nyc', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(549, 'okinawa', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(550, 'on.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(551, 'one', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(552, 'ong', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(553, 'onl', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(554, 'online', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(555, 'ooo', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(556, 'org', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(557, 'org.ag', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(558, 'org.au', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(559, 'org.cn', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(560, 'org.es', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(561, 'org.in', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(562, 'org.nz', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(563, 'org.pe', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(564, 'org.pl', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(565, 'org.sc', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(566, 'org.tw', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(567, 'org.uk', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(568, 'organic', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(569, 'origins', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(570, 'osaka', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(571, 'ovh', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(572, 'paris', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(573, 'pars', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(574, 'partners', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(575, 'parts', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(576, 'party', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(577, 'patagonia', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(578, 'pay', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(579, 'pe', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(580, 'pe.ca', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(581, 'persiangulf', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(582, 'pet', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(583, 'pets', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(584, 'pharmacy', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(585, 'phd', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(586, 'phone', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(587, 'photo', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(588, 'photography', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(589, 'photos', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(590, 'physio', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(591, 'pics', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(592, 'pictures', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(593, 'pid', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(594, 'pink', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(595, 'pizza', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(596, 'pl', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(597, 'place', '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(598, 'play', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(599, 'plc.uk', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(600, 'plumbing', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(601, 'plus', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(602, 'poker', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(603, 'porn', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(604, 'press', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(605, 'pro', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(606, 'productions', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(607, 'prof', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(608, 'promo', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(609, 'properties', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(610, 'property', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(611, 'pub', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(612, 'pw', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(613, 'qc.ca', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(614, 'qc.com', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(615, 'qh.cn', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(616, 'qpon', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(617, 'quebec', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(618, 'racing', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(619, 'radio', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(620, 'realestate', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(621, 'realtor', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(622, 'realty', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(623, 'recht.pro', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(624, 'recipes', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(625, 'red', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(626, 'rehab', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(627, 'reise', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(628, 'reisen', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(629, 'reit', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(630, 'ren', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(631, 'rent', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(632, 'rentals', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(633, 'repair', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(634, 'report', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(635, 'republican', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(636, 'rest', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(637, 'restaurant', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(638, 'review', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(639, 'reviews', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(640, 'rich', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(641, 'rio', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(642, 'rip', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(643, 'rocks', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(644, 'rodeo', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(645, 'roma', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(646, 'rsvp', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(647, 'ru.com', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(648, 'rugby', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(649, 'ruhr', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(650, 'run', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(651, 'ryukyu', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(652, 'sa.com', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(653, 'saarland', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(654, 'safe', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(655, 'safety', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(656, 'sale', '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(657, 'salon', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(658, 'sarl', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(659, 'sas', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(660, 'save', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(661, 'sc', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(662, 'sc.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(663, 'scholarships', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(664, 'school', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(665, 'schule', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(666, 'science', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(667, 'scot', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(668, 'sd.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(669, 'se.com', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(670, 'se.net', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(671, 'search', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(672, 'secure', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(673, 'security', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(674, 'seek', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(675, 'services', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(676, 'sex', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(677, 'sexy', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(678, 'sg', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(679, 'sh', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(680, 'sh.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(681, 'shia', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(682, 'shiksha', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(683, 'shoes', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(684, 'shop', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(685, 'shopping', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(686, 'shopyourway', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(687, 'show', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(688, 'singles', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(689, 'site', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(690, 'sk.ca', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(691, 'ski', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(692, 'skin', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(693, 'sn.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(694, 'soccer', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(695, 'social', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(696, 'software', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(697, 'solar', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(698, 'solutions', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(699, 'soy', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(700, 'spa', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(701, 'space', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(702, 'sport', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(703, 'sports', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(704, 'spot', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(705, 'spreadbetting', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(706, 'srl', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(707, 'stada', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(708, 'stockholm', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(709, 'storage', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(710, 'store', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(711, 'stroke', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(712, 'studio', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(713, 'study', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(714, 'style', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(715, 'sucks', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(716, 'supplies', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(717, 'supply', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(718, 'support', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(719, 'surf', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(720, 'surgery', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(721, 'swiss', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(722, 'sx.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(723, 'sydney', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(724, 'systems', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(725, 'taipei', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(726, 'tatar', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(727, 'tattoo', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(728, 'tax', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(729, 'taxi', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(730, 'tc', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(731, 'team', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(732, 'tech', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(733, 'technology', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(734, 'tel', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(735, 'tennis', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(736, 'thai', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(737, 'theater', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(738, 'theatre', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(739, 'tickets', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(740, 'tienda', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(741, 'tips', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(742, 'tires', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(743, 'tirol', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(744, 'tj.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(745, 'tk', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(746, 'tm', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(747, 'today', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(748, 'tokyo', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(749, 'tools', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(750, 'top', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(751, 'tour', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(752, 'tours', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(753, 'town', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(754, 'toys', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(755, 'trade', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(756, 'trading', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(757, 'training', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(758, 'translations', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(759, 'trust', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(760, 'tube', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(761, 'tv', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(762, 'tw', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(763, 'tw.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(764, 'uk', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(765, 'uk.com', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(766, 'uk.net', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(767, 'university', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(768, 'uno', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(769, 'us', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(770, 'us.com', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(771, 'us.org', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(772, 'uy.com', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(773, 'vacations', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(774, 'vana', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(775, 'vc', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(776, 'vegas', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(777, 'ventures', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(778, 'versicherung', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(779, 'vet', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(780, 'vg', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(781, 'viajes', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(782, 'video', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(783, 'villas', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(784, 'vin', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(785, 'vip', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(786, 'vision', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(787, 'vlaanderen', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(788, 'vodka', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(789, 'vote', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(790, 'voting', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(791, 'voto', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(792, 'voyage', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(793, 'wales', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(794, 'wang', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(795, 'watch', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(796, 'watches', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(797, 'weather', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(798, 'web', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(799, 'web.com', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(800, 'webcam', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(801, 'webs', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(802, 'website', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(803, 'wed', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(804, 'wedding', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(805, 'weibo', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(806, 'whoswho', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(807, 'wien', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(808, 'wiki', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(809, 'win', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(810, 'wine', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(811, 'winners', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(812, 'work', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(813, 'works', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(814, 'world', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(815, 'wow', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(816, 'ws', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(817, 'wtf', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(818, 'xin', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(819, 'xj.cn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(820, 'xn--11b4c3d', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(821, 'xn--1ck2e1b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(822, 'xn--1qqw23a', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(823, 'xn--30rr7y', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(824, 'xn--3bst00m', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(825, 'xn--3ds443g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(826, 'xn--3pxu8k', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(827, 'xn--42c2d9a', '2015-12-18 21:11:46', '2015-12-18 21:11:46');
INSERT INTO `tbltlds` (`id`, `tld`, `created_at`, `updated_at`) VALUES
(828, 'xn--45q11c', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(829, 'xn--4gbrim', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(830, 'xn--4gq48lf9j', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(831, 'xn--55qw42g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(832, 'xn--55qx5d', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(833, 'xn--5tzm5g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(834, 'xn--6frz82g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(835, 'xn--6qq986b3xl', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(836, 'xn--6rtwn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(837, 'xn--80adxhks', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(838, 'xn--80aqecdr1a', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(839, 'xn--80asehdb', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(840, 'xn--80aswg', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(841, 'xn--8y0a063a', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(842, 'xn--9et52u', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(843, 'xn--9krt00a', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(844, 'xn--b4w605ferd', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(845, 'xn--c1avg', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(846, 'xn--c1yn36f', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(847, 'xn--c2br7g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(848, 'xn--cck2b3b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(849, 'xn--cckwcxetd', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(850, 'xn--cg4bki', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(851, 'xn--czr694b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(852, 'xn--czrs0t', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(853, 'xn--czru2d', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(854, 'xn--d1acj3b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(855, 'xn--dkwm73cwpn', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(856, 'xn--eckvdtc9d', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(857, 'xn--efvy88h', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(858, 'xn--estv75g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(859, 'xn--fct429k', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(860, 'xn--fes124c', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(861, 'xn--fhbei', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(862, 'xn--fiq228c5hs', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(863, 'xn--fiq64b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(864, 'xn--fjq720a', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(865, 'xn--flw351e', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(866, 'xn--g2xx48c', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(867, 'xn--gckr3f0f', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(868, 'xn--gk3at1e', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(869, 'xn--hdb9cza1b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(870, 'xn--hxt814e', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(871, 'xn--i1b6b1a6a2e', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(872, 'xn--imr513n', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(873, 'xn--io0a7i', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(874, 'xn--j1aef', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(875, 'xn--jlq480n2rg', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(876, 'xn--jlq61u9w7b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(877, 'xn--jvr189m', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(878, 'xn--kpu716f', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(879, 'xn--kput3i', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(880, 'xn--mgba3a3ejt', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(881, 'xn--mgbaakc7dvf', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(882, 'xn--mgbab2bd', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(883, 'xn--mgbb9fbpob', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(884, 'xn--mgbca7dzdo', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(885, 'xn--mgbi4ecexp', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(886, 'xn--mgbt3dhd', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(887, 'xn--mgbv6cfpo', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(888, 'xn--mk1bu44c', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(889, 'xn--mxtq1m', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(890, 'xn--ngbc5azd', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(891, 'xn--ngbe9e0a', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(892, 'xn--ngbrx', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(893, 'xn--nqv7f', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(894, 'xn--nyqy26a', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(895, 'xn--otu796d', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(896, 'xn--p1acf', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(897, 'xn--pbt977c', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(898, 'xn--pgb3ceoj', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(899, 'xn--pssy2u', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(900, 'xn--q9jyb4c', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(901, 'xn--qcka1pmc', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(902, 'xn--rhqv96g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(903, 'xn--rovu88b', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(904, 'xn--ses554g', '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(905, 'xn--t60b56a', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(906, 'xn--tckwe', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(907, 'xn--tiq49xqyj', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(908, 'xn--unup4y', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(909, 'xn--vhquv', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(910, 'xn--vuq861b', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(911, 'xn--w4rs40l', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(912, 'xn--xhq521b', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(913, 'xn--zfr164b', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(914, 'xxx', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(915, 'xyz', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(916, 'xz.cn', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(917, 'yachts', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(918, 'yk.ca', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(919, 'yoga', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(920, 'yokohama', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(921, 'you', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(922, 'za.com', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(923, 'zip', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(924, 'zone', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(925, 'zuerich', '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(926, 'zulu', '2015-12-18 21:11:47', '2015-12-18 21:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbltld_categories`
--

CREATE TABLE IF NOT EXISTS `tbltld_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbltld_categories`
--

INSERT INTO `tbltld_categories` (`id`, `category`, `is_primary`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'gTLD', 1, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(2, 'Specialty', 1, 3, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(3, 'Sponsored', 1, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(4, 'ccTLD', 1, 2, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(5, 'Services', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(6, 'Geographic', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(7, 'Geography', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(8, 'Education', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(9, 'Popular', 1, 0, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(10, 'Money and Finance', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(11, 'Featured', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(12, 'Community', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(13, 'Identity and Lifestyle', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(14, 'Arts and Entertainment', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(15, 'Business', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(16, 'Adult', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(17, 'Novelty', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(18, 'Real Estate', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(19, 'Technology', 0, NULL, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(20, 'Other', 1, 7, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(21, 'Shopping', 0, NULL, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(22, 'Interest', 0, NULL, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(23, 'Food and Drink', 0, NULL, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(24, 'Sports', 0, NULL, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(25, 'Leisure and Recreation', 0, NULL, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(26, 'WatchList', 1, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(27, 'IDN', 1, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbltld_category_pivot`
--

CREATE TABLE IF NOT EXISTS `tbltld_category_pivot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tld_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tbltld_category_pivot_tld_id_index` (`tld_id`),
  KEY `tbltld_category_pivot_category_id_index` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1937 ;

--
-- Dumping data for table `tbltld_category_pivot`
--

INSERT INTO `tbltld_category_pivot` (`id`, `tld_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(2, 1, 2, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(3, 1, 3, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(4, 2, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(5, 3, 5, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(6, 4, 6, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(7, 5, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(8, 5, 7, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(9, 6, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(10, 6, 2, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(11, 6, 3, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(12, 7, 8, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(13, 7, 9, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(14, 7, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(15, 8, 10, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(16, 8, 5, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(17, 9, 11, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(18, 9, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(19, 9, 10, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(20, 9, 5, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(21, 10, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(22, 10, 2, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(23, 10, 3, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(24, 11, 12, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(25, 12, 13, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(26, 13, 14, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(27, 13, 11, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(28, 13, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(29, 13, 13, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(30, 14, 12, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(31, 15, 15, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(32, 16, 16, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(33, 17, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(34, 18, 6, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(35, 19, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(36, 20, 15, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(37, 20, 9, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(38, 20, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(39, 21, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(40, 22, 11, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(41, 22, 13, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(42, 23, 6, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(43, 24, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(44, 24, 7, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(45, 24, 2, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(46, 25, 6, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(47, 26, 15, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(48, 27, 17, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(49, 28, 11, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(50, 28, 18, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(51, 28, 5, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(52, 29, 11, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(53, 29, 5, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(54, 29, 19, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(55, 30, 6, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(56, 31, 4, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(57, 31, 20, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(58, 32, 13, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(59, 33, 9, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(60, 33, 1, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(61, 33, 5, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(62, 34, 11, '2015-12-18 21:11:41', '2015-12-18 21:11:41'),
(63, 34, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(64, 35, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(65, 36, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(66, 36, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(67, 37, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(68, 37, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(69, 37, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(70, 38, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(71, 38, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(72, 38, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(73, 38, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(74, 39, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(75, 39, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(76, 39, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(77, 39, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(78, 40, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(79, 40, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(80, 41, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(81, 41, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(82, 42, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(83, 43, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(84, 43, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(85, 44, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(86, 45, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(87, 46, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(88, 46, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(89, 46, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(90, 47, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(91, 47, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(92, 47, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(93, 48, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(94, 48, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(95, 49, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(96, 49, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(97, 49, 3, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(98, 50, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(99, 50, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(100, 51, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(101, 51, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(102, 51, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(103, 52, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(104, 52, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(105, 52, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(106, 53, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(107, 53, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(108, 54, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(109, 54, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(110, 54, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(111, 54, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(112, 54, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(113, 55, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(114, 55, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(115, 55, 3, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(116, 56, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(117, 56, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(118, 57, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(119, 57, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(120, 57, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(121, 58, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(122, 58, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(123, 58, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(124, 59, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(125, 59, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(126, 59, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(127, 60, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(128, 61, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(129, 62, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(130, 63, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(131, 64, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(132, 64, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(133, 65, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(134, 65, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(135, 66, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(136, 67, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(137, 68, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(138, 68, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(139, 69, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(140, 69, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(141, 69, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(142, 70, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(143, 70, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(144, 71, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(145, 72, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(146, 72, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(147, 72, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(148, 72, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(149, 73, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(150, 73, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(151, 73, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(152, 74, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(153, 74, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(154, 75, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(155, 76, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(156, 76, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(157, 77, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(158, 78, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(159, 78, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(160, 79, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(161, 79, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(162, 79, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(163, 80, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(164, 80, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(165, 80, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(166, 81, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(167, 81, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(168, 81, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(169, 82, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(170, 82, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(171, 83, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(172, 84, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(173, 85, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(174, 85, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(175, 85, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(176, 86, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(177, 87, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(178, 88, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(179, 88, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(180, 88, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(181, 89, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(182, 90, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(183, 90, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(184, 91, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(185, 91, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(186, 91, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(187, 91, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(188, 92, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(189, 92, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(190, 92, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(191, 93, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(192, 94, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(193, 95, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(194, 96, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(195, 97, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(196, 97, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(197, 97, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(198, 97, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(199, 98, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(200, 98, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(201, 98, 18, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(202, 98, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(203, 99, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(204, 99, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(205, 100, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(206, 100, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(207, 101, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(208, 101, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(209, 101, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(210, 102, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(211, 103, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(212, 103, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(213, 104, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(214, 104, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(215, 105, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(216, 105, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(217, 106, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(218, 106, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(219, 106, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(220, 107, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(221, 107, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(222, 108, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(223, 108, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(224, 109, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(225, 109, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(226, 109, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(227, 110, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(228, 110, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(229, 110, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(230, 110, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(231, 111, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(232, 112, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(233, 112, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(234, 112, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(235, 112, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(236, 113, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(237, 114, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(238, 114, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(239, 114, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(240, 114, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(241, 115, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(242, 115, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(243, 115, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(244, 116, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(245, 116, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(246, 117, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(247, 117, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(248, 117, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(249, 117, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(250, 118, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(251, 118, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(252, 119, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(253, 119, 18, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(254, 120, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(255, 120, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(256, 120, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(257, 121, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(258, 121, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(259, 122, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(260, 123, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(261, 123, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(262, 123, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(263, 123, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(264, 123, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(265, 124, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(266, 125, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(267, 125, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(268, 125, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(269, 126, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(270, 126, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(271, 126, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(272, 127, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(273, 127, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(274, 127, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(275, 128, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(276, 129, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(277, 129, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(278, 130, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(279, 130, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(280, 131, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(281, 131, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(282, 132, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(283, 132, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(284, 132, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(285, 133, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(286, 134, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(287, 135, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(288, 135, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(289, 135, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(290, 136, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(291, 136, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(292, 136, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(293, 137, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(294, 137, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(295, 138, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(296, 138, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(297, 139, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(298, 139, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(299, 139, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(300, 140, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(301, 140, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(302, 140, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(303, 140, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(304, 141, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(305, 142, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(306, 142, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(307, 142, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(308, 143, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(309, 143, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(310, 143, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(311, 144, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(312, 144, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(313, 145, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(314, 145, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(315, 145, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(316, 146, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(317, 146, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(318, 146, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(319, 147, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(320, 147, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(321, 148, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(322, 148, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(323, 149, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(324, 149, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(325, 149, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(326, 150, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(327, 150, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(328, 150, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(329, 151, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(330, 152, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(331, 152, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(332, 153, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(333, 153, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(334, 154, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(335, 154, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(336, 155, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(337, 155, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(338, 155, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(339, 156, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(340, 156, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(341, 156, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(342, 157, 8, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(343, 157, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(344, 158, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(345, 159, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(346, 159, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(347, 160, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(348, 161, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(349, 161, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(350, 162, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(351, 162, 20, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(352, 163, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(353, 163, 20, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(354, 164, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(355, 164, 20, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(356, 165, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(357, 165, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(358, 166, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(359, 166, 20, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(360, 167, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(361, 167, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(362, 168, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(363, 169, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(364, 170, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(365, 170, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(366, 170, 20, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(367, 171, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(368, 171, 20, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(369, 172, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(370, 172, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(371, 172, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(372, 172, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(373, 173, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(374, 173, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(375, 173, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(376, 174, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(377, 175, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(378, 175, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(379, 175, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(380, 175, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(381, 176, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(382, 177, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(383, 177, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(384, 177, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(385, 177, 18, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(386, 178, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(387, 178, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(388, 178, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(389, 179, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(390, 179, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(391, 179, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(392, 180, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(393, 181, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(394, 181, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(395, 181, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(396, 182, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(397, 182, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(398, 182, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(399, 182, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(400, 183, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(401, 184, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(402, 184, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(403, 184, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(404, 184, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(405, 185, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(406, 185, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(407, 185, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(408, 186, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(409, 187, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(410, 187, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(411, 187, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(412, 188, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(413, 189, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(414, 189, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(415, 190, 8, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(416, 191, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(417, 191, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(418, 191, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(419, 191, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(420, 192, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(421, 192, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(422, 192, 3, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(423, 193, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(424, 194, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(425, 194, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(426, 194, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(427, 195, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(428, 195, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(429, 195, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(430, 196, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(431, 196, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(432, 197, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(433, 197, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(434, 197, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(435, 198, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(436, 199, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(437, 199, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(438, 199, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(439, 200, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(440, 201, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(441, 202, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(442, 203, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(443, 203, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(444, 203, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(445, 204, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(446, 204, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(447, 205, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(448, 206, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(449, 206, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(450, 206, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(451, 206, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(452, 207, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(453, 208, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(454, 209, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(455, 209, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(456, 210, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(457, 210, 20, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(458, 211, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(459, 212, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(460, 212, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(461, 213, 8, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(462, 213, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(463, 214, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(464, 214, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(465, 215, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(466, 215, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(467, 215, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(468, 216, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(469, 216, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(470, 216, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(471, 217, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(472, 217, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(473, 218, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(474, 219, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(475, 219, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(476, 220, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(477, 220, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(478, 220, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(479, 221, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(480, 221, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(481, 222, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(482, 222, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(483, 222, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(484, 223, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(485, 223, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(486, 223, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(487, 224, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(488, 224, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(489, 224, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(490, 225, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(491, 225, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(492, 225, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(493, 226, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(494, 227, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(495, 227, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(496, 228, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(497, 228, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(498, 229, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(499, 229, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(500, 230, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(501, 231, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(502, 231, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(503, 231, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(504, 232, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(505, 233, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(506, 234, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(507, 234, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(508, 235, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(509, 236, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(510, 237, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(511, 238, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(512, 239, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(513, 239, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(514, 240, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(515, 240, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(516, 240, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(517, 241, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(518, 241, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(519, 242, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(520, 243, 8, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(521, 243, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(522, 243, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(523, 244, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(524, 244, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(525, 244, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(526, 244, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(527, 245, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(528, 245, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(529, 245, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(530, 246, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(531, 246, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(532, 246, 3, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(533, 247, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(534, 247, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(535, 248, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(536, 248, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(537, 248, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(538, 248, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(539, 249, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(540, 249, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(541, 249, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(542, 250, 19, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(543, 251, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(544, 251, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(545, 251, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(546, 252, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(547, 252, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(548, 253, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(549, 254, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(550, 255, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(551, 255, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(552, 255, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(553, 256, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(554, 256, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(555, 257, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(556, 257, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(557, 258, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(558, 258, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(559, 259, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(560, 259, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(561, 259, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(562, 259, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(563, 259, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(564, 260, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(565, 260, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(566, 260, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(567, 260, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(568, 260, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(569, 261, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(570, 261, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(571, 261, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(572, 261, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(573, 262, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(574, 262, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(575, 262, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(576, 263, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(577, 263, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(578, 263, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(579, 264, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(580, 264, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(581, 264, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(582, 265, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(583, 266, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(584, 266, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(585, 267, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(586, 267, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(587, 267, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(588, 268, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(589, 268, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(590, 269, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(591, 269, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(592, 269, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(593, 269, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(594, 269, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(595, 270, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(596, 270, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(597, 270, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(598, 271, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(599, 272, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(600, 272, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(601, 273, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(602, 274, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(603, 274, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(604, 274, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(605, 274, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(606, 275, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(607, 275, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(608, 275, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(609, 275, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(610, 276, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(611, 276, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(612, 277, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(613, 278, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(614, 278, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(615, 278, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(616, 278, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(617, 279, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(618, 279, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(619, 279, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(620, 279, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(621, 280, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(622, 280, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(623, 281, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(624, 281, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(625, 281, 13, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(626, 281, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(627, 282, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(628, 283, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(629, 283, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(630, 283, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(631, 283, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(632, 284, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(633, 284, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(634, 284, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(635, 285, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(636, 285, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(637, 286, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(638, 286, 5, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(639, 287, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(640, 287, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(641, 287, 2, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(642, 288, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(643, 289, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(644, 289, 23, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(645, 289, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(646, 290, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(647, 290, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(648, 290, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(649, 291, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(650, 291, 18, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(651, 291, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(652, 292, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(653, 292, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(654, 292, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(655, 293, 15, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(656, 293, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(657, 293, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(658, 294, 4, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(659, 294, 7, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(660, 295, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(661, 295, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(662, 295, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(663, 296, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(664, 297, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(665, 298, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(666, 298, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(667, 298, 10, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(668, 299, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(669, 299, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(670, 299, 21, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(671, 300, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(672, 300, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(673, 300, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(674, 300, 22, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(675, 300, 24, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(676, 301, 11, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(677, 301, 17, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(678, 302, 12, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(679, 302, 6, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(680, 303, 14, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(681, 303, 9, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(682, 303, 1, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(683, 304, 25, '2015-12-18 21:11:42', '2015-12-18 21:11:42'),
(684, 305, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(685, 305, 25, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(686, 306, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(687, 306, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(688, 307, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(689, 307, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(690, 307, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(691, 308, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(692, 309, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(693, 310, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(694, 311, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(695, 312, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(696, 313, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(697, 313, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(698, 314, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(699, 314, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(700, 314, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(701, 314, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(702, 315, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(703, 315, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(704, 316, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(705, 316, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(706, 316, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(707, 317, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(708, 317, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(709, 318, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(710, 318, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(711, 318, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(712, 319, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(713, 320, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(714, 320, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(715, 321, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(716, 321, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(717, 321, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(718, 322, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(719, 322, 10, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(720, 323, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(721, 323, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(722, 323, 24, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(723, 324, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(724, 325, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(725, 326, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(726, 326, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(727, 327, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(728, 327, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(729, 327, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(730, 327, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(731, 328, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(732, 328, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(733, 328, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(734, 329, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(735, 330, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(736, 330, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(737, 331, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(738, 331, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(739, 331, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(740, 331, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(741, 332, 23, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(742, 332, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(743, 333, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(744, 333, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(745, 333, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(746, 334, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(747, 334, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(748, 335, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(749, 336, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(750, 336, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(751, 336, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(752, 337, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(753, 337, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(754, 337, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(755, 337, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(756, 338, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(757, 338, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(758, 338, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(759, 339, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(760, 340, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(761, 341, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(762, 342, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(763, 343, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(764, 343, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(765, 344, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(766, 344, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(767, 345, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(768, 345, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(769, 345, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(770, 346, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(771, 347, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(772, 348, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(773, 348, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(774, 348, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(775, 349, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(776, 349, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(777, 350, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(778, 351, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(779, 351, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(780, 352, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(781, 353, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(782, 354, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(783, 355, 14, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(784, 356, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(785, 357, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(786, 358, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(787, 359, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(788, 360, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(789, 361, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(790, 361, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(791, 361, 24, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(792, 362, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(793, 362, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(794, 362, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(795, 363, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(796, 363, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(797, 363, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(798, 363, 25, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(799, 364, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(800, 364, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(801, 365, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(802, 366, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(803, 366, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(804, 366, 25, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(805, 367, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(806, 367, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(807, 368, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(808, 369, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(809, 369, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(810, 369, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(811, 370, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(812, 370, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(813, 371, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(814, 371, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(815, 371, 25, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(816, 371, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(817, 372, 25, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(818, 372, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(819, 373, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(820, 373, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(821, 373, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(822, 374, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(823, 375, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(824, 375, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(825, 376, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(826, 377, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(827, 378, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(828, 378, 20, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(829, 378, 2, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(830, 379, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(831, 380, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(832, 381, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(833, 381, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(834, 381, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(835, 382, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(836, 382, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(837, 382, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(838, 382, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(839, 383, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(840, 383, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(841, 384, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(842, 384, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(843, 384, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(844, 385, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43');
INSERT INTO `tbltld_category_pivot` (`id`, `tld_id`, `category_id`, `created_at`, `updated_at`) VALUES
(845, 386, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(846, 387, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(847, 387, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(848, 387, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(849, 387, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(850, 388, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(851, 388, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(852, 389, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(853, 390, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(854, 391, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(855, 391, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(856, 391, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(857, 392, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(858, 392, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(859, 392, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(860, 393, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(861, 393, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(862, 393, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(863, 394, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(864, 394, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(865, 394, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(866, 395, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(867, 395, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(868, 395, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(869, 396, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(870, 396, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(871, 396, 10, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(872, 396, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(873, 397, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(874, 397, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(875, 398, 10, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(876, 399, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(877, 400, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(878, 400, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(879, 401, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(880, 402, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(881, 403, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(882, 404, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(883, 404, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(884, 405, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(885, 406, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(886, 406, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(887, 407, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(888, 407, 3, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(889, 408, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(890, 409, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(891, 409, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(892, 410, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(893, 410, 20, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(894, 411, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(895, 412, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(896, 412, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(897, 413, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(898, 413, 2, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(899, 413, 3, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(900, 414, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(901, 415, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(902, 416, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(903, 416, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(904, 416, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(905, 417, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(906, 418, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(907, 418, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(908, 419, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(909, 420, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(910, 420, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(911, 420, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(912, 420, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(913, 421, 23, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(914, 421, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(915, 421, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(916, 422, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(917, 422, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(918, 422, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(919, 422, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(920, 423, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(921, 424, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(922, 425, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(923, 426, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(924, 427, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(925, 427, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(926, 427, 2, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(927, 428, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(928, 429, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(929, 429, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(930, 429, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(931, 430, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(932, 431, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(933, 432, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(934, 432, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(935, 433, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(936, 433, 2, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(937, 433, 3, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(938, 434, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(939, 434, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(940, 435, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(941, 435, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(942, 436, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(943, 436, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(944, 436, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(945, 436, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(946, 437, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(947, 438, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(948, 438, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(949, 439, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(950, 440, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(951, 440, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(952, 441, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(953, 441, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(954, 441, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(955, 442, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(956, 443, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(957, 444, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(958, 444, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(959, 444, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(960, 445, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(961, 445, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(962, 445, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(963, 446, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(964, 446, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(965, 446, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(966, 447, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(967, 447, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(968, 447, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(969, 447, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(970, 448, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(971, 448, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(972, 449, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(973, 449, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(974, 450, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(975, 450, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(976, 450, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(977, 451, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(978, 451, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(979, 452, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(980, 453, 10, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(981, 453, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(982, 454, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(983, 454, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(984, 454, 10, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(985, 454, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(986, 455, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(987, 456, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(988, 456, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(989, 457, 25, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(990, 458, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(991, 458, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(992, 459, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(993, 459, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(994, 460, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(995, 461, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(996, 462, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(997, 462, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(998, 462, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(999, 463, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1000, 463, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1001, 464, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1002, 464, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1003, 464, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1004, 465, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1005, 465, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1006, 465, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1007, 465, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1008, 466, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1009, 466, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1010, 466, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1011, 466, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1012, 467, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1013, 467, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1014, 468, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1015, 468, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1016, 469, 15, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1017, 469, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1018, 469, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1019, 469, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1020, 469, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1021, 470, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1022, 471, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1023, 472, 8, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1024, 472, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1025, 472, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1026, 473, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1027, 473, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1028, 473, 2, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1029, 474, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1030, 474, 7, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1031, 475, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1032, 475, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1033, 476, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1034, 476, 2, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1035, 476, 3, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1036, 477, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1037, 477, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1038, 477, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1039, 477, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1040, 478, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1041, 478, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1042, 479, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1043, 479, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1044, 480, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1045, 481, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1046, 482, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1047, 482, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1048, 483, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1049, 484, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1050, 484, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1051, 484, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1052, 485, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1053, 486, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1054, 487, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1055, 487, 18, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1056, 487, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1057, 488, 12, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1058, 489, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1059, 490, 4, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1060, 491, 9, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1061, 491, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1062, 491, 2, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1063, 491, 3, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1064, 492, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1065, 492, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1066, 492, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1067, 493, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1068, 494, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1069, 494, 1, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1070, 494, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1071, 494, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1072, 495, 17, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1073, 496, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1074, 496, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1075, 497, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1076, 497, 10, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1077, 497, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1078, 498, 13, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1079, 499, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1080, 499, 10, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1081, 499, 5, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1082, 500, 6, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1083, 501, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1084, 501, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1085, 501, 24, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1086, 502, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1087, 503, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1088, 504, 14, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1089, 504, 11, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1090, 504, 22, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1091, 504, 21, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1092, 505, 19, '2015-12-18 21:11:43', '2015-12-18 21:11:43'),
(1093, 506, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1094, 506, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1095, 507, 19, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1096, 508, 14, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1097, 508, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1098, 508, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1099, 508, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1100, 508, 21, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1101, 509, 10, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1102, 510, 10, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1103, 510, 5, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1104, 511, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1105, 511, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1106, 511, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1107, 512, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1108, 512, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1109, 512, 2, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1110, 512, 3, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1111, 513, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1112, 513, 13, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1113, 514, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1114, 515, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1115, 515, 24, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1116, 516, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1117, 516, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1118, 517, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1119, 518, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1120, 518, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1121, 519, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1122, 519, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1123, 520, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1124, 520, 20, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1125, 521, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1126, 522, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1127, 522, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1128, 523, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1129, 523, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1130, 524, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1131, 525, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1132, 526, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1133, 526, 19, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1134, 527, 17, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1135, 528, 14, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1136, 528, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1137, 528, 5, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1138, 529, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1139, 530, 15, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1140, 530, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1141, 531, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1142, 531, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1143, 531, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1144, 531, 25, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1145, 531, 17, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1146, 532, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1147, 532, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1148, 533, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1149, 534, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1150, 535, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1151, 535, 20, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1152, 536, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1153, 536, 20, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1154, 537, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1155, 537, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1156, 538, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1157, 538, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1158, 539, 26, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1159, 540, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1160, 540, 17, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1161, 541, 13, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1162, 542, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1163, 543, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1164, 544, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1165, 545, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1166, 545, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1167, 546, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1168, 547, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1169, 548, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1170, 548, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1171, 549, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1172, 550, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1173, 551, 17, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1174, 552, 15, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1175, 552, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1176, 553, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1177, 553, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1178, 554, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1179, 554, 19, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1180, 555, 17, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1181, 556, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1182, 556, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1183, 557, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1184, 558, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1185, 558, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1186, 559, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1187, 559, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1188, 560, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1189, 560, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1190, 561, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1191, 562, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1192, 562, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1193, 563, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1194, 563, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1195, 564, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1196, 565, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1197, 566, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1198, 566, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1199, 567, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1200, 567, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1201, 568, 13, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1202, 568, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1203, 569, 13, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1204, 570, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1205, 570, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1206, 571, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1207, 572, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1208, 572, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1209, 573, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1210, 573, 13, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1211, 574, 15, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1212, 574, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1213, 574, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1214, 574, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1215, 575, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1216, 575, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1217, 575, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1218, 575, 21, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1219, 576, 25, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1220, 577, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1221, 578, 10, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1222, 579, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1223, 579, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1224, 580, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1225, 581, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1226, 581, 13, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1227, 582, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1228, 583, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1229, 583, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1230, 584, 12, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1231, 584, 5, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1232, 585, 8, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1233, 585, 13, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1234, 586, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1235, 586, 19, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1236, 587, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1237, 587, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1238, 587, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1239, 587, 5, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1240, 588, 14, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1241, 588, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1242, 588, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1243, 588, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1244, 588, 5, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1245, 589, 14, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1246, 589, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1247, 589, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1248, 590, 5, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1249, 591, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1250, 591, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1251, 591, 22, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1252, 591, 5, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1253, 592, 14, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1254, 592, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1255, 592, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1256, 592, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1257, 593, 17, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1258, 594, 9, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1259, 594, 1, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1260, 594, 17, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1261, 595, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1262, 595, 23, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1263, 596, 4, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1264, 596, 7, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1265, 597, 11, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1266, 597, 6, '2015-12-18 21:11:44', '2015-12-18 21:11:44'),
(1267, 597, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1268, 598, 25, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1269, 599, 4, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1270, 600, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1271, 600, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1272, 600, 21, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1273, 601, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1274, 601, 17, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1275, 602, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1276, 602, 25, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1277, 603, 16, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1278, 604, 15, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1279, 605, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1280, 605, 2, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1281, 605, 3, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1282, 606, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1283, 606, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1284, 606, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1285, 606, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1286, 607, 8, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1287, 608, 21, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1288, 609, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1289, 609, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1290, 609, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1291, 609, 18, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1292, 610, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1293, 610, 18, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1294, 611, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1295, 611, 23, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1296, 611, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1297, 611, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1298, 611, 25, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1299, 612, 15, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1300, 612, 4, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1301, 612, 2, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1302, 613, 4, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1303, 614, 4, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1304, 614, 7, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1305, 615, 4, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1306, 616, 21, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1307, 617, 12, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1308, 617, 6, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1309, 618, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1310, 618, 22, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1311, 618, 24, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1312, 619, 14, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1313, 619, 12, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1314, 619, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1315, 620, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1316, 620, 18, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1317, 621, 18, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1318, 621, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1319, 622, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1320, 622, 18, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1321, 623, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1322, 623, 2, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1323, 623, 3, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1324, 624, 23, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1325, 624, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1326, 624, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1327, 625, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1328, 625, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1329, 625, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1330, 625, 17, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1331, 626, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1332, 626, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1333, 627, 25, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1334, 628, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1335, 628, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1336, 628, 25, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1337, 629, 12, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1338, 629, 10, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1339, 630, 13, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1340, 631, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1341, 631, 18, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1342, 632, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1343, 632, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1344, 632, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1345, 633, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1346, 633, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1347, 633, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1348, 634, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1349, 634, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1350, 634, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1351, 634, 22, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1352, 635, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1353, 635, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1354, 635, 13, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1355, 636, 23, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1356, 636, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1357, 636, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1358, 636, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1359, 637, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1360, 637, 23, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1361, 638, 22, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1362, 639, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1363, 639, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1364, 639, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1365, 639, 22, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1366, 640, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1367, 640, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1368, 640, 10, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1369, 641, 6, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1370, 642, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1371, 642, 17, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1372, 643, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1373, 643, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1374, 643, 17, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1375, 644, 9, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1376, 644, 1, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1377, 644, 22, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1378, 644, 24, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1379, 645, 6, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1380, 646, 17, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1381, 647, 4, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1382, 647, 20, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1383, 648, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1384, 648, 22, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1385, 648, 24, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1386, 649, 6, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1387, 650, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1388, 650, 22, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1389, 650, 24, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1390, 651, 6, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1391, 652, 4, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1392, 652, 20, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1393, 653, 6, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1394, 654, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1395, 655, 5, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1396, 656, 11, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1397, 656, 21, '2015-12-18 21:11:45', '2015-12-18 21:11:45'),
(1398, 657, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1399, 657, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1400, 658, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1401, 658, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1402, 659, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1403, 660, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1404, 661, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1405, 662, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1406, 663, 8, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1407, 664, 8, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1408, 664, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1409, 665, 8, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1410, 665, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1411, 665, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1412, 666, 8, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1413, 666, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1414, 667, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1415, 667, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1416, 667, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1417, 668, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1418, 669, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1419, 669, 20, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1420, 670, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1421, 670, 20, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1422, 671, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1423, 671, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1424, 672, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1425, 673, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1426, 673, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1427, 674, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1428, 675, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1429, 675, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1430, 675, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1431, 675, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1432, 676, 16, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1433, 677, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1434, 677, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1435, 677, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1436, 677, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1437, 678, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1438, 678, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1439, 679, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1440, 679, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1441, 680, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1442, 681, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1443, 681, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1444, 682, 8, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1445, 682, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1446, 682, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1447, 683, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1448, 683, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1449, 683, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1450, 684, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1451, 684, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1452, 684, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1453, 685, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1454, 685, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1455, 686, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1456, 687, 14, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1457, 687, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1458, 688, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1459, 688, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1460, 688, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1461, 689, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1462, 689, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1463, 690, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1464, 691, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1465, 691, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1466, 691, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1467, 691, 24, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1468, 692, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1469, 693, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1470, 694, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1471, 694, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1472, 694, 24, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1473, 695, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1474, 695, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1475, 695, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1476, 695, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1477, 696, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1478, 696, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1479, 697, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1480, 697, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1481, 697, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1482, 698, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1483, 698, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1484, 698, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1485, 699, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1486, 699, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1487, 700, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1488, 700, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1489, 700, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1490, 701, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1491, 702, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1492, 702, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1493, 702, 24, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1494, 703, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1495, 703, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1496, 703, 24, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1497, 704, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1498, 705, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1499, 706, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1500, 707, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1501, 708, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1502, 709, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1503, 709, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1504, 710, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1505, 710, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1506, 711, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1507, 712, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1508, 712, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1509, 712, 18, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1510, 713, 8, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1511, 714, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1512, 714, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1513, 715, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1514, 715, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1515, 716, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1516, 716, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1517, 716, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1518, 716, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1519, 717, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1520, 717, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1521, 717, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1522, 717, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1523, 718, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1524, 718, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1525, 718, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1526, 719, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1527, 720, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1528, 720, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1529, 720, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1530, 721, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1531, 721, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1532, 722, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1533, 723, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1534, 724, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1535, 724, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1536, 724, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1537, 725, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1538, 726, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1539, 726, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1540, 727, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1541, 727, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1542, 727, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1543, 727, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1544, 728, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1545, 728, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1546, 728, 10, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1547, 729, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1548, 729, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1549, 729, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1550, 730, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1551, 730, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1552, 731, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1553, 731, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1554, 731, 24, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1555, 732, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1556, 732, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1557, 733, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1558, 733, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1559, 733, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1560, 734, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1561, 734, 2, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1562, 734, 3, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1563, 735, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1564, 735, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1565, 735, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1566, 735, 24, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1567, 736, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1568, 736, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1569, 737, 14, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1570, 737, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1571, 737, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1572, 738, 14, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1573, 738, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1574, 739, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1575, 739, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1576, 740, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1577, 740, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1578, 740, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1579, 740, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1580, 741, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1581, 741, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1582, 741, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1583, 742, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1584, 742, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1585, 743, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1586, 743, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1587, 744, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1588, 745, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1589, 746, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1590, 746, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1591, 746, 2, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1592, 747, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1593, 747, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1594, 747, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1595, 748, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1596, 748, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1597, 749, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1598, 749, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1599, 749, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1600, 749, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1601, 750, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1602, 751, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1603, 752, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1604, 752, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1605, 752, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1606, 753, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1607, 753, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1608, 753, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1609, 754, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1610, 754, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1611, 754, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1612, 755, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1613, 755, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1614, 755, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1615, 756, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1616, 756, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1617, 757, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1618, 757, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1619, 757, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1620, 758, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1621, 759, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1622, 760, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1623, 760, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1624, 761, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1625, 761, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1626, 761, 2, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1627, 762, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1628, 762, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1629, 763, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1630, 764, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1631, 764, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1632, 764, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1633, 765, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1634, 765, 20, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1635, 766, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1636, 766, 20, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1637, 767, 8, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1638, 767, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1639, 767, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1640, 768, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1641, 768, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1642, 768, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1643, 769, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1644, 769, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1645, 769, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1646, 770, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1647, 770, 20, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1648, 771, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1649, 771, 20, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1650, 772, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1651, 772, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1652, 773, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1653, 773, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1654, 773, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1655, 774, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1656, 775, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1657, 776, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1658, 776, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1659, 776, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1660, 777, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1661, 777, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1662, 777, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1663, 778, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1664, 778, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1665, 779, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1666, 779, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1667, 779, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1668, 780, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1669, 780, 7, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1670, 781, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1671, 781, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46');
INSERT INTO `tbltld_category_pivot` (`id`, `tld_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1672, 781, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1673, 781, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1674, 782, 14, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1675, 782, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1676, 783, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1677, 783, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1678, 783, 18, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1679, 784, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1680, 784, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1681, 785, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1682, 785, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1683, 786, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1684, 786, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1685, 786, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1686, 786, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1687, 787, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1688, 788, 23, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1689, 788, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1690, 788, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1691, 789, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1692, 789, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1693, 790, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1694, 790, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1695, 791, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1696, 792, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1697, 792, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1698, 792, 25, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1699, 793, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1700, 794, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1701, 795, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1702, 795, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1703, 795, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1704, 795, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1705, 796, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1706, 797, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1707, 797, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1708, 798, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1709, 798, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1710, 799, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1711, 800, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1712, 800, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1713, 800, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1714, 801, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1715, 802, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1716, 802, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1717, 803, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1718, 804, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1719, 804, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1720, 805, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1721, 806, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1722, 807, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1723, 807, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1724, 808, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1725, 808, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1726, 808, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1727, 809, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1728, 810, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1729, 810, 23, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1730, 811, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1731, 812, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1732, 813, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1733, 813, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1734, 813, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1735, 813, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1736, 814, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1737, 814, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1738, 815, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1739, 815, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1740, 816, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1741, 816, 2, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1742, 817, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1743, 817, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1744, 817, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1745, 818, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1746, 819, 4, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1747, 820, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1748, 821, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1749, 822, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1750, 822, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1751, 823, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1752, 824, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1753, 825, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1754, 825, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1755, 825, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1756, 825, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1757, 826, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1758, 827, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1759, 828, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1760, 828, 22, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1761, 829, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1762, 829, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1763, 830, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1764, 831, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1765, 832, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1766, 832, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1767, 833, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1768, 833, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1769, 834, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1770, 834, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1771, 834, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1772, 834, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1773, 835, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1774, 835, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1775, 836, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1776, 836, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1777, 837, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1778, 837, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1779, 838, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1780, 838, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1781, 838, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1782, 839, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1783, 839, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1784, 839, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1785, 839, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1786, 840, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1787, 840, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1788, 840, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1789, 840, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1790, 841, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1791, 842, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1792, 842, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1793, 842, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1794, 843, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1795, 843, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1796, 844, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1797, 845, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1798, 845, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1799, 845, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1800, 846, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1801, 847, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1802, 848, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1803, 849, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1804, 850, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1805, 851, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1806, 852, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1807, 852, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1808, 852, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1809, 853, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1810, 853, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1811, 854, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1812, 854, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1813, 855, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1814, 856, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1815, 857, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1816, 857, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1817, 858, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1818, 858, 10, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1819, 859, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1820, 860, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1821, 860, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1822, 861, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1823, 862, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1824, 862, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1825, 862, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1826, 862, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1827, 863, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1828, 864, 14, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1829, 864, 11, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1830, 864, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1831, 865, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1832, 866, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1833, 866, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1834, 867, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1835, 868, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1836, 869, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1837, 870, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1838, 870, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1839, 871, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1840, 872, 23, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1841, 872, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1842, 873, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1843, 873, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1844, 874, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1845, 875, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1846, 876, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1847, 877, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1848, 878, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1849, 879, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1850, 879, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1851, 880, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1852, 881, 15, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1853, 881, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1854, 881, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1855, 882, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1856, 882, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1857, 882, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1858, 883, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1859, 884, 6, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1860, 884, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1861, 885, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1862, 885, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1863, 885, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1864, 886, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1865, 887, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1866, 888, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1867, 889, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1868, 890, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1869, 890, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1870, 890, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1871, 890, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1872, 891, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1873, 892, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1874, 893, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1875, 893, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1876, 893, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1877, 894, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1878, 894, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1879, 895, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1880, 895, 5, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1881, 896, 12, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1882, 896, 13, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1883, 896, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1884, 897, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1885, 897, 21, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1886, 898, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1887, 899, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1888, 900, 9, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1889, 900, 1, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1890, 900, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1891, 900, 17, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1892, 901, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1893, 902, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1894, 903, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1895, 904, 27, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1896, 904, 19, '2015-12-18 21:11:46', '2015-12-18 21:11:46'),
(1897, 905, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1898, 906, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1899, 907, 12, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1900, 907, 13, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1901, 907, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1902, 908, 11, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1903, 908, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1904, 908, 25, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1905, 909, 15, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1906, 909, 11, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1907, 909, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1908, 910, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1909, 911, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1910, 912, 12, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1911, 912, 6, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1912, 912, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1913, 913, 12, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1914, 913, 27, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1915, 914, 1, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1916, 914, 2, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1917, 914, 3, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1918, 915, 9, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1919, 915, 1, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1920, 915, 17, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1921, 916, 4, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1922, 917, 25, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1923, 918, 4, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1924, 919, 11, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1925, 919, 22, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1926, 919, 24, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1927, 920, 6, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1928, 921, 17, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1929, 922, 4, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1930, 922, 20, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1931, 923, 19, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1932, 924, 9, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1933, 924, 1, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1934, 924, 17, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1935, 925, 6, '2015-12-18 21:11:47', '2015-12-18 21:11:47'),
(1936, 926, 13, '2015-12-18 21:11:47', '2015-12-18 21:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbltodolist`
--

CREATE TABLE IF NOT EXISTS `tbltodolist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `admin` int(10) NOT NULL DEFAULT '0',
  `status` text NOT NULL,
  `duedate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `duedate` (`duedate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbltransientdata`
--

CREATE TABLE IF NOT EXISTS `tbltransientdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL,
  `data` text NOT NULL,
  `expires` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(255))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbltransientdata`
--

INSERT INTO `tbltransientdata` (`id`, `name`, `data`, `expires`) VALUES
(1, 'cronComplete', '1', 1450559509);

-- --------------------------------------------------------

--
-- Table structure for table `tblupdatehistory`
--

CREATE TABLE IF NOT EXISTS `tblupdatehistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `original_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` tinyint(1) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblupgrades`
--

CREATE TABLE IF NOT EXISTS `tblupgrades` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL,
  `type` text NOT NULL,
  `date` date NOT NULL,
  `relid` int(10) NOT NULL,
  `originalvalue` text NOT NULL,
  `newvalue` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `recurringchange` decimal(10,2) NOT NULL,
  `status` enum('Pending','Completed') NOT NULL DEFAULT 'Pending',
  `paid` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `serviceid` (`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblwhoislog`
--

CREATE TABLE IF NOT EXISTS `tblwhoislog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `domain` text NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblwhoislog`
--

INSERT INTO `tblwhoislog` (`id`, `date`, `domain`, `ip`) VALUES
(1, '2015-12-18 21:37:14', 'infowayindia.in', '115.247.12.16'),
(2, '2015-12-18 21:37:41', 'caroldata.com', '115.247.12.16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
